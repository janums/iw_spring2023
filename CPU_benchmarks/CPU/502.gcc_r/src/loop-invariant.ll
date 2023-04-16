; ModuleID = 'loop-invariant.bc'
source_filename = "loop-invariant.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.gimple_seq_d = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.invariant = type { i32, i32, %struct.rtx_def*, i32, %struct.def*, %struct.rtx_def*, i8, i8, i8, i32, %struct.bitmap_head_def*, i32 }
%struct.def = type { %struct.use*, i32, i32, i32 }
%struct.use = type { %struct.rtx_def**, %struct.rtx_def*, i32, %struct.use* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.df = type { [8 x %struct.dataflow*], [8 x %struct.dataflow*], %struct.bitmap_head_def*, %struct.df_ref_info, %struct.df_ref_info, %struct.df_reg_info**, %struct.df_reg_info**, %struct.df_reg_info**, i32, i32, %struct.df_insn_info**, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32*, i32*, i32, i32, i32*, i32, i8, i8, i8 }
%struct.dataflow = type { %struct.df_problem*, i8**, i32, %struct.alloc_pool_def*, %struct.bitmap_head_def*, i8*, i32, i8, i8, i8 }
%struct.df_problem = type { i32, i32, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.basic_block_def*, i8*)*, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.basic_block_def*)*, void (%struct.edge_def*)*, i8 (i32)*, void (%struct.bitmap_head_def*)*, void ()*, void ()*, void (%struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void ()*, void ()*, %struct.df_problem*, i32, i8 }
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
%struct.VEC_invariant_p_heap = type { %struct.VEC_invariant_p_base }
%struct.VEC_invariant_p_base = type { i32, i32, [1 x %struct.invariant*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.loop_data = type { %struct.loop*, i8, [27 x i32], %struct.bitmap_head_def, %struct.bitmap_head_def }
%struct.df_lr_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.invariant_expr_entry = type { %struct.invariant*, %struct.rtx_def*, i32, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_ira_loop_pressure = external dso_local local_unnamed_addr global i32, align 4
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@curr_loop = internal unnamed_addr global %struct.loop* null, align 8, !dbg !0
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@invariant_table = internal unnamed_addr global %struct.invariant** null, align 8, !dbg !1929
@invariant_table_size = internal unnamed_addr global i32 0, align 4, !dbg !1946
@reg_obstack = external dso_local global %struct.bitmap_obstack, align 8
@curr_regs_live = internal global %struct.bitmap_head_def zeroinitializer, align 8, !dbg !1931
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@ira_reg_class_cover_size = external dso_local local_unnamed_addr global i32, align 4
@curr_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16, !dbg !1933
@ira_reg_class_cover = external dso_local local_unnamed_addr global [27 x i32], align 16
@n_regs_set = internal unnamed_addr global i32 0, align 4, !dbg !1935
@regs_set = internal unnamed_addr global [106 x %struct.rtx_def*] zeroinitializer, align 16, !dbg !1937
@flag_ira_region = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [47 x i8] c"\0A  Loop %d (parent %d, header bb%d, depth %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A    ref. regnos:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A    live regnos:\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A    Pressure:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %s=%d\00", align 1
@reg_class_names = external dso_local local_unnamed_addr global [0 x i8*], align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@ira_reg_class_nregs = external dso_local local_unnamed_addr global [27 x [87 x i32]], align 16
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@ira_no_alloc_regs = external dso_local local_unnamed_addr global i64, align 8
@eliminable_regset = external dso_local local_unnamed_addr global i64, align 8
@ira_class_translate = external dso_local local_unnamed_addr global [27 x i32], align 16
@regclass_map = external dso_local local_unnamed_addr constant [53 x i32], align 16
@actual_stamp = internal unnamed_addr global i32 0, align 4, !dbg !1942
@invariants = internal global %struct.VEC_invariant_p_heap* null, align 8, !dbg !1944
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"*****starting processing of loop  ******\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"*****ending processing of loop  ******\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"loop-invariant.c\00", align 1
@word_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"Set in insn %d is invariant (%d), cost %d, depends on \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Invariant %d is equivalent to invariant %d.\0A\00", align 1
@ira_available_class_regs = external dso_local local_unnamed_addr global [27 x i32], align 16
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@ix86_fpmath = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"Decided to move invariant %d -- gain %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Decided to move dependent invariant %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to move invariant %d\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1952 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1966, metadata !DIExpression()), !dbg !1967
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1968
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1969
  ret i32 %call, !dbg !1970
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1971 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1975
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1976
  ret i32 %call, !dbg !1977
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2033, metadata !DIExpression()), !dbg !2034
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2035
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2035
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2035
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2035
  %cmp = icmp uge i8* %0, %1, !dbg !2035
  %conv1 = zext i1 %cmp to i64, !dbg !2035
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2035
  %tobool = icmp eq i64 %expval, 0, !dbg !2035
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2035

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2035
  br label %cond.end, !dbg !2035

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2035
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2035
  %2 = load i8, i8* %0, align 1, !dbg !2035
  %conv3 = zext i8 %2 to i32, !dbg !2035
  br label %cond.end, !dbg !2035

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2035
  ret i32 %cond, !dbg !2036
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2037 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2039, metadata !DIExpression()), !dbg !2040
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2041
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2041
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2041
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2041
  %cmp = icmp uge i8* %0, %1, !dbg !2041
  %conv1 = zext i1 %cmp to i64, !dbg !2041
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2041
  %tobool = icmp eq i64 %expval, 0, !dbg !2041
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2041

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2041
  br label %cond.end, !dbg !2041

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2041
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2041
  %2 = load i8, i8* %0, align 1, !dbg !2041
  %conv3 = zext i8 %2 to i32, !dbg !2041
  br label %cond.end, !dbg !2041

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2041
  ret i32 %cond, !dbg !2042
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2043 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2044
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2044
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2044
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2044
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2044
  %cmp = icmp uge i8* %1, %2, !dbg !2044
  %conv1 = zext i1 %cmp to i64, !dbg !2044
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2044
  %tobool = icmp eq i64 %expval, 0, !dbg !2044
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2044

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2044
  br label %cond.end, !dbg !2044

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2044
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2044
  %3 = load i8, i8* %1, align 1, !dbg !2044
  %conv3 = zext i8 %3 to i32, !dbg !2044
  br label %cond.end, !dbg !2044

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2044
  ret i32 %cond, !dbg !2045
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2046 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2050, metadata !DIExpression()), !dbg !2051
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2052
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2053
  ret i32 %call, !dbg !2054
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2060, metadata !DIExpression()), !dbg !2061
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2062
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2062
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2062
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2062
  %cmp = icmp uge i8* %0, %1, !dbg !2062
  %conv1 = zext i1 %cmp to i64, !dbg !2062
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2062
  %tobool = icmp eq i64 %expval, 0, !dbg !2062
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2062

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2062
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2062
  br label %cond.end, !dbg !2062

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2062
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2062
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2062
  store i8 %conv2, i8* %0, align 1, !dbg !2062
  %conv6 = and i32 %__c, 255, !dbg !2062
  br label %cond.end, !dbg !2062

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2062
  ret i32 %cond, !dbg !2063
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2064 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2067, metadata !DIExpression()), !dbg !2068
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2069
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2069
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2069
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2069
  %cmp = icmp uge i8* %0, %1, !dbg !2069
  %conv1 = zext i1 %cmp to i64, !dbg !2069
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2069
  %tobool = icmp eq i64 %expval, 0, !dbg !2069
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2069

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2069
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2069
  br label %cond.end, !dbg !2069

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2069
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2069
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2069
  store i8 %conv2, i8* %0, align 1, !dbg !2069
  %conv6 = and i32 %__c, 255, !dbg !2069
  br label %cond.end, !dbg !2069

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2069
  ret i32 %cond, !dbg !2070
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2073, metadata !DIExpression()), !dbg !2074
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2075
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2075
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2075
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2075
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2075
  %cmp = icmp uge i8* %1, %2, !dbg !2075
  %conv1 = zext i1 %cmp to i64, !dbg !2075
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2075
  %tobool = icmp eq i64 %expval, 0, !dbg !2075
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2075

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2075
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2075
  br label %cond.end, !dbg !2075

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2075
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2075
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2075
  store i8 %conv4, i8* %1, align 1, !dbg !2075
  %conv6 = and i32 %__c, 255, !dbg !2075
  br label %cond.end, !dbg !2075

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2075
  ret i32 %cond, !dbg !2076
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2083, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2085, metadata !DIExpression()), !dbg !2086
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2087
  ret i64 %call, !dbg !2088
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2091, metadata !DIExpression()), !dbg !2092
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2093
  %0 = load i32, i32* %_flags, align 8, !dbg !2093
  %and = lshr i32 %0, 4, !dbg !2093
  %and.lobit = and i32 %and, 1, !dbg !2093
  ret i32 %and.lobit, !dbg !2094
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2097, metadata !DIExpression()), !dbg !2098
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2099
  %0 = load i32, i32* %_flags, align 8, !dbg !2099
  %and = lshr i32 %0, 5, !dbg !2099
  %and.lobit = and i32 %and, 1, !dbg !2099
  ret i32 %and.lobit, !dbg !2100
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2104, metadata !DIExpression()), !dbg !2105
  %__c.off = add i32 %__c, 128, !dbg !2106
  %0 = icmp ult i32 %__c.off, 384, !dbg !2106
  br i1 %0, label %cond.true, label %cond.end, !dbg !2106

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2107
  %1 = load i32*, i32** %call, align 8, !dbg !2108
  %idxprom = sext i32 %__c to i64, !dbg !2109
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2109
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2109
  br label %cond.end, !dbg !2110

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2110
  ret i32 %cond, !dbg !2111
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2112 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2114, metadata !DIExpression()), !dbg !2115
  %__c.off = add i32 %__c, 128, !dbg !2116
  %0 = icmp ult i32 %__c.off, 384, !dbg !2116
  br i1 %0, label %cond.true, label %cond.end, !dbg !2116

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2117
  %1 = load i32*, i32** %call, align 8, !dbg !2118
  %idxprom = sext i32 %__c to i64, !dbg !2119
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2119
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2119
  br label %cond.end, !dbg !2120

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2120
  ret i32 %cond, !dbg !2121
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2127, metadata !DIExpression()), !dbg !2128
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2129
  %conv = trunc i64 %call to i32, !dbg !2130
  ret i32 %conv, !dbg !2131
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2136, metadata !DIExpression()), !dbg !2137
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2138
  ret i64 %call, !dbg !2139
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2140 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2145, metadata !DIExpression()), !dbg !2146
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2147
  ret i64 %call, !dbg !2148
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2149 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2155, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2156, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2157, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2158, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2159, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 0, metadata !2160, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2161, metadata !DIExpression()), !dbg !2165
  br label %while.cond, !dbg !2166

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2167
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2160, metadata !DIExpression()), !dbg !2165
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2168
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2166

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2169
  %div = lshr i64 %add, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %div, metadata !2162, metadata !DIExpression()), !dbg !2165
  %mul = mul i64 %div, %__size, !dbg !2172
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2173
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2163, metadata !DIExpression()), !dbg !2165
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %call, metadata !2164, metadata !DIExpression()), !dbg !2165
  %cmp1 = icmp slt i32 %call, 0, !dbg !2175
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2177

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2178
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2180

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2160, metadata !DIExpression()), !dbg !2165
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2165
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2160, metadata !DIExpression()), !dbg !2165
  br label %while.cond, !dbg !2166, !llvm.loop !2182

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2165
  ret i8* %retval.0, !dbg !2184
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2185 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2191, metadata !DIExpression()), !dbg !2192
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2193
  ret double %call, !dbg !2194
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %base, metadata !2206, metadata !DIExpression()), !dbg !2207
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2208
  ret i64 %call, !dbg !2209
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2210 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %base, metadata !2218, metadata !DIExpression()), !dbg !2219
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2220
  ret i64 %call, !dbg !2221
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2222 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %base, metadata !2235, metadata !DIExpression()), !dbg !2236
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2237
  ret i64 %call, !dbg !2238
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2239 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %base, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2247
  ret i64 %call, !dbg !2248
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2290, metadata !DIExpression()), !dbg !2291
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2292
  ret i32 %call, !dbg !2293
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2297, metadata !DIExpression()), !dbg !2298
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2299
  ret i32 %call, !dbg !2300
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2301 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2308
  ret i32 %call, !dbg !2309
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2310 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2314, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2315, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2317, metadata !DIExpression()), !dbg !2318
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2319
  ret i32 %call, !dbg !2320
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2321 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2327, metadata !DIExpression()), !dbg !2328
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2327, metadata !DIExpression(DW_OP_deref)), !dbg !2328
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2329
  ret i32 %call, !dbg !2330
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2331 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2335, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2337, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2338, metadata !DIExpression()), !dbg !2339
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2338, metadata !DIExpression(DW_OP_deref)), !dbg !2339
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2340
  ret i32 %call, !dbg !2341
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2342 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2367, metadata !DIExpression()), !dbg !2368
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2369
  ret i32 %call, !dbg !2370
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2374, metadata !DIExpression()), !dbg !2375
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2376
  ret i32 %call, !dbg !2377
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2378 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2382, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2383, metadata !DIExpression()), !dbg !2384
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2385
  ret i32 %call, !dbg !2386
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2387 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2391, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2392, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2394, metadata !DIExpression()), !dbg !2395
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2396
  ret i32 %call, !dbg !2397
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @move_loop_invariants() local_unnamed_addr #5 !dbg !2398 {
entry:
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2409
  %1 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2410
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2410
  %2 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !2411
  %tobool = icmp eq i32 %2, 0, !dbg !2411
  br i1 %tobool, label %if.end, label %if.then, !dbg !2413

if.then:                                          ; preds = %entry
  tail call void @df_analyze() #6, !dbg !2414
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2416
  tail call void @ira_set_pseudo_classes(%struct._IO_FILE* %3) #6, !dbg !2417
  tail call fastcc void @calculate_loop_reg_pressure() #8, !dbg !2418
  br label %if.end, !dbg !2419

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i32 @df_set_flags(i32 36) #6, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2402, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 2) #8, !dbg !2422
  br label %for.cond, !dbg !2422

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2402, metadata !DIExpression()), !dbg !2421
  %tobool1 = icmp eq %struct.loop* %4, null, !dbg !2422
  br i1 %tobool1, label %for.end, label %for.body, !dbg !2422

for.body:                                         ; preds = %for.cond
  %5 = ptrtoint %struct.loop* %4 to i64, !dbg !2422
  store i64 %5, i64* bitcast (%struct.loop** @curr_loop to i64*), align 8, !dbg !2426
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2402, metadata !DIExpression()), !dbg !2421
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %4, i64 0, i32 6, !dbg !2428
  %6 = load i32, i32* %num_nodes, align 4, !dbg !2428
  %7 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2430
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %7, i64 112, i32 1, !dbg !2430
  %8 = load i32, i32* %value, align 8, !dbg !2430
  %cmp = icmp ugt i32 %6, %8, !dbg !2431
  br i1 %cmp, label %for.inc, label %if.then2, !dbg !2432

if.then2:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2402, metadata !DIExpression()), !dbg !2421
  call fastcc void @move_single_loop_invariants(%struct.loop* nonnull %4) #8, !dbg !2433
  br label %for.inc, !dbg !2433

for.inc:                                          ; preds = %for.body, %if.then2
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2402, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2424
  br label %for.cond, !dbg !2424, !llvm.loop !2434

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2402, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !2436
  br label %for.cond4, !dbg !2436

for.cond4:                                        ; preds = %for.body6, %for.end
  %9 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2402, metadata !DIExpression()), !dbg !2421
  %tobool5 = icmp eq %struct.loop* %9, null, !dbg !2436
  br i1 %tobool5, label %for.end8, label %for.body6, !dbg !2436

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2402, metadata !DIExpression()), !dbg !2421
  call fastcc void @free_loop_data(%struct.loop* nonnull %9) #8, !dbg !2440
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2402, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2438
  br label %for.cond4, !dbg !2438, !llvm.loop !2442

for.end8:                                         ; preds = %for.cond4
  %10 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !2444
  %tobool9 = icmp eq i32 %10, 0, !dbg !2444
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2446

if.then10:                                        ; preds = %for.end8
  call void @free_reg_info() #6, !dbg !2447
  br label %if.end11, !dbg !2447

if.end11:                                         ; preds = %for.end8, %if.then10
  %11 = load i8*, i8** bitcast (%struct.invariant*** @invariant_table to i8**), align 8, !dbg !2448
  call void @free(i8* %11) #6, !dbg !2449
  store %struct.invariant** null, %struct.invariant*** @invariant_table, align 8, !dbg !2450
  store i32 0, i32* @invariant_table_size, align 4, !dbg !2451
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2452
  ret void, !dbg !2452
}

declare dso_local void @df_analyze() local_unnamed_addr #2

declare dso_local void @ira_set_pseudo_classes(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @calculate_loop_reg_pressure() unnamed_addr #5 !dbg !2453 {
entry:
  %j = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  %nregs = alloca i32, align 4
  %0 = bitcast i32* %j to i8*, !dbg !2496
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2496
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2497
  %2 = bitcast %struct.loop** %loop to i8*, !dbg !2498
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2498
  %3 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !2501
  br label %for.cond, !dbg !2501

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2503
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2468, metadata !DIExpression()), !dbg !2500
  %tobool = icmp eq %struct.loop* %4, null, !dbg !2501
  br i1 %tobool, label %for.end, label %for.body, !dbg !2501

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %4, i64 0, i32 10, !dbg !2505
  %5 = load i8*, i8** %aux, align 8, !dbg !2505
  %cmp = icmp eq i8* %5, null, !dbg !2507
  br i1 %cmp, label %if.then, label %for.inc, !dbg !2508

if.then:                                          ; preds = %for.body
  %call = call i8* @xcalloc(i64 1, i64 184) #6, !dbg !2509
  %6 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2511
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux1 = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 10, !dbg !2512
  store i8* %call, i8** %aux1, align 8, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2468, metadata !DIExpression()), !dbg !2500
  %regs_ref = getelementptr inbounds i8, i8* %call, i64 120, !dbg !2514
  %7 = bitcast i8* %regs_ref to %struct.bitmap_head_def*, !dbg !2514
  call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull %7, %struct.bitmap_obstack* nonnull @reg_obstack) #8, !dbg !2514
  %8 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2515
  call void @llvm.dbg.value(metadata %struct.loop* %8, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux3 = getelementptr inbounds %struct.loop, %struct.loop* %8, i64 0, i32 10, !dbg !2515
  %9 = bitcast i8** %aux3 to %struct.loop_data**, !dbg !2515
  %10 = load %struct.loop_data*, %struct.loop_data** %9, align 8, !dbg !2515
  %regs_live = getelementptr inbounds %struct.loop_data, %struct.loop_data* %10, i64 0, i32 4, !dbg !2515
  call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull %regs_live, %struct.bitmap_obstack* nonnull @reg_obstack) #8, !dbg !2515
  br label %for.inc, !dbg !2516

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2503
  br label %for.cond, !dbg !2503, !llvm.loop !2517

for.end:                                          ; preds = %for.cond
  call void @ira_setup_eliminable_regset() #6, !dbg !2519
  call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull @curr_regs_live, %struct.bitmap_obstack* nonnull @reg_obstack) #8, !dbg !2520
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2521
  %cfg = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !2521
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2521
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !2521
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2521
  %14 = bitcast %struct.loop** %loop to i64*, !dbg !2522
  br label %for.cond4, !dbg !2521

for.cond4:                                        ; preds = %for.inc118, %for.end
  %.pre8 = phi %struct.function* [ %11, %for.end ], [ %.pre, %for.inc118 ]
  %15 = phi %struct.control_flow_graph* [ %12, %for.end ], [ %.pre4, %for.inc118 ], !dbg !2524
  %16 = phi %struct.function* [ %11, %for.end ], [ %.pre, %for.inc118 ], !dbg !2524
  %.pn = phi %struct.basic_block_def* [ %13, %for.end ], [ %bb.0, %for.inc118 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2525
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2525
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2465, metadata !DIExpression()), !dbg !2500
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 1, !dbg !2524
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2524
  %cmp7 = icmp eq %struct.basic_block_def* %bb.0, %17, !dbg !2524
  br i1 %cmp7, label %for.end120, label %for.body8, !dbg !2521

for.body8:                                        ; preds = %for.cond4
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 3, !dbg !2526
  %18 = bitcast %struct.loop** %loop_father to i64*, !dbg !2526
  %19 = load i64, i64* %18, align 8, !dbg !2526
  store i64 %19, i64* bitcast (%struct.loop** @curr_loop to i64*), align 8, !dbg !2527
  %.cast = inttoptr i64 %19 to %struct.loop*, !dbg !2528
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 4, !dbg !2530
  %20 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2530
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %20, i64 0, i32 3, !dbg !2531
  %21 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2531
  %cmp10 = icmp eq %struct.loop* %21, %.cast, !dbg !2532
  br i1 %cmp10, label %for.inc118, label %if.end12, !dbg !2533

if.end12:                                         ; preds = %for.body8
  store i64 %19, i64* %14, align 8, !dbg !2534
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2535
  br label %for.cond13, !dbg !2537

for.cond13:                                       ; preds = %for.body18, %if.end12
  %22 = phi %struct.loop* [ %call24, %for.body18 ], [ %.cast, %if.end12 ]
  %23 = phi %struct.loop* [ %.pre7, %for.body18 ], [ %21, %if.end12 ], !dbg !2538
  %24 = phi %struct.loop* [ %call24, %for.body18 ], [ %.cast, %if.end12 ], !dbg !2539
  call void @llvm.dbg.value(metadata %struct.loop* %24, metadata !2468, metadata !DIExpression()), !dbg !2500
  %cmp17 = icmp eq %struct.loop* %24, %23, !dbg !2540
  br i1 %cmp17, label %for.end25, label %for.body18, !dbg !2541

for.body18:                                       ; preds = %for.cond13
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux19 = getelementptr inbounds %struct.loop, %struct.loop* %22, i64 0, i32 10, !dbg !2542
  %25 = bitcast i8** %aux19 to %struct.loop_data**, !dbg !2542
  %26 = load %struct.loop_data*, %struct.loop_data** %25, align 8, !dbg !2542
  %regs_live20 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %26, i64 0, i32 4, !dbg !2543
  %27 = load i32, i32* %index, align 8, !dbg !2544
  %call21 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %27) #8, !dbg !2544
  %in = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call21, i64 0, i32 2, !dbg !2544
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in, align 8, !dbg !2544
  %call22 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* nonnull %regs_live20, %struct.bitmap_head_def* %28) #6, !dbg !2545
  %29 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.loop* %29, metadata !2468, metadata !DIExpression()), !dbg !2500
  %call24 = call fastcc %struct.loop* @loop_outer(%struct.loop* %29) #8, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.loop* %call24, metadata !2468, metadata !DIExpression()), !dbg !2500
  store %struct.loop* %call24, %struct.loop** %loop, align 8, !dbg !2548
  %.pre5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2549
  %x_current_loops15.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre5, i64 0, i32 4, !dbg !2535
  %.pre6 = load %struct.loops*, %struct.loops** %x_current_loops15.phi.trans.insert, align 8, !dbg !2549
  %tree_root16.phi.trans.insert = getelementptr inbounds %struct.loops, %struct.loops* %.pre6, i64 0, i32 3, !dbg !2535
  %.pre7 = load %struct.loop*, %struct.loop** %tree_root16.phi.trans.insert, align 8, !dbg !2538
  br label %for.cond13, !dbg !2550, !llvm.loop !2551

for.end25:                                        ; preds = %for.cond13
  %30 = load i32, i32* %index, align 8, !dbg !2553
  %call27 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %30) #8, !dbg !2553
  %in28 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call27, i64 0, i32 2, !dbg !2553
  %31 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in28, align 8, !dbg !2553
  call void @bitmap_copy(%struct.bitmap_head_def* nonnull @curr_regs_live, %struct.bitmap_head_def* %31) #6, !dbg !2554
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()), !dbg !2500
  %32 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !2555
  %33 = sext i32 %32 to i64, !dbg !2558
  br label %for.cond29, !dbg !2558

for.cond29:                                       ; preds = %for.body31, %for.end25
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body31 ], [ 0, %for.end25 ], !dbg !2559
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2455, metadata !DIExpression()), !dbg !2500
  %cmp30 = icmp slt i64 %indvars.iv11, %33, !dbg !2560
  br i1 %cmp30, label %for.body31, label %for.end35, !dbg !2561

for.body31:                                       ; preds = %for.cond29
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv11, !dbg !2562
  %34 = load i32, i32* %arrayidx, align 4, !dbg !2562
  %idxprom32 = zext i32 %34 to i64, !dbg !2563
  %arrayidx33 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom32, !dbg !2563
  store i32 0, i32* %arrayidx33, align 4, !dbg !2564
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i32 undef, metadata !2455, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2500
  br label %for.cond29, !dbg !2566, !llvm.loop !2567

for.end35:                                        ; preds = %for.cond29
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull @curr_regs_live, i32 0, i32* nonnull %j) #8, !dbg !2569
  br label %for.cond36, !dbg !2569

for.cond36:                                       ; preds = %for.body39, %for.end35
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  %call37 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2571
  %tobool38 = icmp eq i8 %call37, 0, !dbg !2569
  br i1 %tobool38, label %for.end41, label %for.body39, !dbg !2569

for.body39:                                       ; preds = %for.cond36
  %35 = load i32, i32* %j, align 4, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %35, metadata !2456, metadata !DIExpression()), !dbg !2500
  call fastcc void @change_pressure(i32 %35, i8 zeroext 1) #8, !dbg !2574
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2571
  br label %for.cond36, !dbg !2571, !llvm.loop !2575

for.end41:                                        ; preds = %for.cond36
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2577
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2577
  %36 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2577
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %36, i64 0, i32 0, !dbg !2577
  br label %for.cond42, !dbg !2577

for.cond42:                                       ; preds = %for.inc112, %for.end41
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.end41 ], [ %rt_rtx116, %for.inc112 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2466, metadata !DIExpression()), !dbg !2500
  %tobool43 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2579
  br i1 %tobool43, label %for.inc118.loopexit, label %land.rhs, !dbg !2579

land.rhs:                                         ; preds = %for.cond42
  %37 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2579
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %37, i64 0, i32 1, !dbg !2579
  %38 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2579
  %39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2579
  %rt_rtx = bitcast %union.rtunion_def* %39 to %struct.rtx_def**, !dbg !2579
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2579
  %cmp47 = icmp eq %struct.rtx_def* %insn.0, %40, !dbg !2579
  br i1 %cmp47, label %for.inc118.loopexit, label %for.body48, !dbg !2577

for.body48:                                       ; preds = %land.rhs
  %41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2580
  %bf.load = load i32, i32* %41, align 8, !dbg !2580
  %bf.clear = and i32 %bf.load, 65535, !dbg !2580
  %cmp49 = icmp eq i32 %bf.clear, 8, !dbg !2580
  br i1 %cmp49, label %land.lhs.true, label %lor.lhs.false, !dbg !2580

lor.lhs.false:                                    ; preds = %for.body48
  %cmp52 = icmp eq i32 %bf.clear, 7, !dbg !2580
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false53, !dbg !2580

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %cmp56 = icmp eq i32 %bf.clear, 9, !dbg !2580
  br i1 %cmp56, label %land.lhs.true, label %lor.lhs.false57, !dbg !2580

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %cmp60 = icmp eq i32 %bf.clear, 10, !dbg !2580
  br i1 %cmp60, label %land.lhs.true, label %for.inc112, !dbg !2580

land.lhs.true:                                    ; preds = %lor.lhs.false57, %lor.lhs.false53, %lor.lhs.false, %for.body48
  %cmp63 = icmp eq i32 %bf.clear, 7, !dbg !2580
  br i1 %cmp63, label %for.inc112, label %if.end65, !dbg !2582

if.end65:                                         ; preds = %land.lhs.true
  %u66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2583
  %42 = getelementptr inbounds %union.u, %union.u* %u66, i64 1, i32 0, i32 0, i64 0, !dbg !2583
  %rt_rtx69 = bitcast %union.rtunion_def* %42 to %struct.rtx_def**, !dbg !2583
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx69, align 8, !dbg !2583
  call fastcc void @mark_ref_regs(%struct.rtx_def* %43) #8, !dbg !2584
  store i32 0, i32* @n_regs_set, align 4, !dbg !2585
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx69, align 8, !dbg !2586
  call void @note_stores(%struct.rtx_def* %44, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_reg_clobber, i8* null) #6, !dbg !2587
  %45 = getelementptr inbounds %union.u, %union.u* %u66, i64 1, i32 0, i32 0, i64 2, !dbg !2588
  br label %for.cond78, !dbg !2590

for.cond78:                                       ; preds = %for.inc90, %if.end65
  %link.0.in.in = phi %union.rtunion_def* [ %45, %if.end65 ], [ %48, %for.inc90 ]
  %link.0.in = bitcast %union.rtunion_def* %link.0.in.in to %struct.rtx_def**, !dbg !2591
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !2467, metadata !DIExpression()), !dbg !2500
  %tobool79 = icmp eq %struct.rtx_def* %link.0, null, !dbg !2592
  br i1 %tobool79, label %for.end95, label %for.body80, !dbg !2592

for.body80:                                       ; preds = %for.cond78
  %46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 0, !dbg !2593
  %bf.load81 = load i32, i32* %46, align 8, !dbg !2593
  %bf.clear82 = and i32 %bf.load81, 16711680, !dbg !2593
  %cmp83 = icmp eq i32 %bf.clear82, 65536, !dbg !2596
  br i1 %cmp83, label %if.then84, label %for.inc90, !dbg !2597

if.then84:                                        ; preds = %for.body80
  %arrayidx87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2598
  %rt_rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**, !dbg !2598
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx88, align 8, !dbg !2598
  call fastcc void @mark_reg_death(%struct.rtx_def* %47) #8, !dbg !2599
  br label %for.inc90, !dbg !2599

for.inc90:                                        ; preds = %for.body80, %if.then84
  %48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2600
  br label %for.cond78, !dbg !2601, !llvm.loop !2602

for.end95:                                        ; preds = %for.cond78
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx69, align 8, !dbg !2604
  call void @note_stores(%struct.rtx_def* %49, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_reg_store, i8* null) #6, !dbg !2605
  br label %while.cond, !dbg !2606

while.cond:                                       ; preds = %cleanup, %for.end95
  %50 = load i32, i32* @n_regs_set, align 4, !dbg !2607
  %dec = add nsw i32 %50, -1, !dbg !2607
  store i32 %dec, i32* @n_regs_set, align 4, !dbg !2607
  %cmp100 = icmp sgt i32 %50, 0, !dbg !2608
  br i1 %cmp100, label %while.body, label %for.inc112.loopexit, !dbg !2606

while.body:                                       ; preds = %while.cond
  %idxprom101 = sext i32 %dec to i64, !dbg !2609
  %arrayidx102 = getelementptr inbounds [106 x %struct.rtx_def*], [106 x %struct.rtx_def*]* @regs_set, i64 0, i64 %idxprom101, !dbg !2609
  %51 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx102, align 8, !dbg !2609
  %call103 = call fastcc i32 @rhs_regno(%struct.rtx_def* %51) #8, !dbg !2609
  %call104 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* nonnull %insn.0, i32 6, i32 %call103) #6, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call104, metadata !2471, metadata !DIExpression()), !dbg !2611
  %tobool105 = icmp eq %struct.rtx_def* %call104, null, !dbg !2612
  br i1 %tobool105, label %cleanup, label %if.end107, !dbg !2614, !llvm.loop !2615

if.end107:                                        ; preds = %while.body
  %arrayidx110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call104, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2617
  %rt_rtx111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtx_def**, !dbg !2617
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx111, align 8, !dbg !2617
  call fastcc void @mark_reg_death(%struct.rtx_def* %52) #8, !dbg !2618
  br label %cleanup, !dbg !2616

cleanup:                                          ; preds = %while.body, %if.end107
  br label %while.cond

for.inc112.loopexit:                              ; preds = %while.cond
  br label %for.inc112, !dbg !2579

for.inc112:                                       ; preds = %for.inc112.loopexit, %lor.lhs.false57, %land.lhs.true
  %53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2579
  %rt_rtx116 = bitcast %union.rtunion_def* %53 to %struct.rtx_def**, !dbg !2579
  br label %for.cond42, !dbg !2579, !llvm.loop !2619

for.inc118.loopexit:                              ; preds = %for.cond42, %land.rhs
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2524
  br label %for.inc118, !dbg !2524

for.inc118:                                       ; preds = %for.inc118.loopexit, %for.body8
  %.pre = phi %struct.function* [ %.pre.pre, %for.inc118.loopexit ], [ %.pre8, %for.body8 ], !dbg !2524
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2621
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !2524
  br label %for.cond4, !dbg !2524, !llvm.loop !2622

for.end120:                                       ; preds = %for.cond4
  call void @bitmap_clear(%struct.bitmap_head_def* nonnull @curr_regs_live) #6, !dbg !2624
  %54 = load i32, i32* @flag_ira_region, align 4, !dbg !2625
  %55 = add i32 %54, -1, !dbg !2626
  %56 = icmp ult i32 %55, 2, !dbg !2626
  br i1 %56, label %if.then124, label %if.end148, !dbg !2626

if.then124:                                       ; preds = %for.end120
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !2627
  %57 = bitcast i32* %nregs to i8*, !dbg !2628
  br label %for.cond125, !dbg !2627

for.cond125:                                      ; preds = %for.inc146, %if.then124
  %58 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2629
  call void @llvm.dbg.value(metadata %struct.loop* %58, metadata !2468, metadata !DIExpression()), !dbg !2500
  %tobool126 = icmp eq %struct.loop* %58, null, !dbg !2627
  br i1 %tobool126, label %if.end148.loopexit, label %for.body127, !dbg !2627

for.body127:                                      ; preds = %for.cond125
  call void @llvm.dbg.value(metadata %struct.loop* %58, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux128 = getelementptr inbounds %struct.loop, %struct.loop* %58, i64 0, i32 10, !dbg !2630
  %59 = bitcast i8** %aux128 to %struct.loop_data**, !dbg !2630
  %60 = load %struct.loop_data*, %struct.loop_data** %59, align 8, !dbg !2630
  %regs_live129 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %60, i64 0, i32 4, !dbg !2630
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %regs_live129, i32 0, i32* nonnull %j) #8, !dbg !2630
  br label %for.cond130, !dbg !2630

for.cond130:                                      ; preds = %for.inc144, %for.body127
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  %call131 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2631
  %tobool132 = icmp eq i8 %call131, 0, !dbg !2630
  br i1 %tobool132, label %for.inc146, label %for.body133, !dbg !2630

for.body133:                                      ; preds = %for.cond130
  %61 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.loop* %61, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux134 = getelementptr inbounds %struct.loop, %struct.loop* %61, i64 0, i32 10, !dbg !2632
  %62 = bitcast i8** %aux134 to %struct.loop_data**, !dbg !2632
  %63 = load %struct.loop_data*, %struct.loop_data** %62, align 8, !dbg !2632
  %regs_ref135 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %63, i64 0, i32 3, !dbg !2633
  %64 = load i32, i32* %j, align 4, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %64, metadata !2456, metadata !DIExpression()), !dbg !2500
  %call136 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %regs_ref135, i32 %64) #6, !dbg !2635
  %tobool137 = icmp eq i32 %call136, 0, !dbg !2635
  br i1 %tobool137, label %if.then138, label %for.inc144, !dbg !2636

if.then138:                                       ; preds = %for.body133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57) #7, !dbg !2637
  %65 = load i32, i32* %j, align 4, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %65, metadata !2456, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32* %nregs, metadata !2488, metadata !DIExpression(DW_OP_deref)), !dbg !2628
  %call139 = call fastcc i32 @get_regno_cover_class(i32 %65, i32* nonnull %nregs) #8, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %call139, metadata !2479, metadata !DIExpression()), !dbg !2628
  %66 = load i32, i32* %nregs, align 4, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %66, metadata !2488, metadata !DIExpression()), !dbg !2628
  %67 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2641
  call void @llvm.dbg.value(metadata %struct.loop* %67, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux140 = getelementptr inbounds %struct.loop, %struct.loop* %67, i64 0, i32 10, !dbg !2641
  %68 = bitcast i8** %aux140 to %struct.loop_data**, !dbg !2641
  %69 = load %struct.loop_data*, %struct.loop_data** %68, align 8, !dbg !2641
  %idxprom141 = zext i32 %call139 to i64, !dbg !2641
  %arrayidx142 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %69, i64 0, i32 2, i64 %idxprom141, !dbg !2641
  %70 = load i32, i32* %arrayidx142, align 4, !dbg !2642
  %sub = sub nsw i32 %70, %66, !dbg !2642
  store i32 %sub, i32* %arrayidx142, align 4, !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57) #7, !dbg !2643
  br label %for.inc144, !dbg !2644

for.inc144:                                       ; preds = %for.body133, %if.then138
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2631
  br label %for.cond130, !dbg !2631, !llvm.loop !2645

for.inc146:                                       ; preds = %for.cond130
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2629
  br label %for.cond125, !dbg !2629, !llvm.loop !2647

if.end148.loopexit:                               ; preds = %for.cond125
  br label %if.end148, !dbg !2649

if.end148:                                        ; preds = %if.end148.loopexit, %for.end120
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2649
  %cmp149 = icmp eq %struct._IO_FILE* %71, null, !dbg !2651
  br i1 %cmp149, label %cleanup211, label %if.end151, !dbg !2652

if.end151:                                        ; preds = %if.end148
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !2653
  br label %for.cond152, !dbg !2653

for.cond152:                                      ; preds = %for.end207, %if.end151
  %72 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.loop* %72, metadata !2468, metadata !DIExpression()), !dbg !2500
  %tobool153 = icmp eq %struct.loop* %72, null, !dbg !2653
  br i1 %tobool153, label %cleanup211.loopexit, label %for.body154, !dbg !2653

for.body154:                                      ; preds = %for.cond152
  call void @llvm.dbg.value(metadata %struct.loop* %72, metadata !2468, metadata !DIExpression()), !dbg !2500
  %call155 = call fastcc %struct.loop* @loop_outer(%struct.loop* nonnull %72) #8, !dbg !2655
  call void @llvm.dbg.value(metadata %struct.loop* %call155, metadata !2469, metadata !DIExpression()), !dbg !2500
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2656
  %74 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata %struct.loop* %74, metadata !2468, metadata !DIExpression()), !dbg !2500
  %num = getelementptr inbounds %struct.loop, %struct.loop* %74, i64 0, i32 0, !dbg !2658
  %75 = load i32, i32* %num, align 8, !dbg !2658
  %cmp156 = icmp eq %struct.loop* %call155, null, !dbg !2659
  br i1 %cmp156, label %cond.end, label %cond.false, !dbg !2660

cond.false:                                       ; preds = %for.body154
  %num157 = getelementptr inbounds %struct.loop, %struct.loop* %call155, i64 0, i32 0, !dbg !2661
  %76 = load i32, i32* %num157, align 8, !dbg !2661
  br label %cond.end, !dbg !2660

cond.end:                                         ; preds = %for.body154, %cond.false
  %cond = phi i32 [ %76, %cond.false ], [ -1, %for.body154 ], !dbg !2660
  call void @llvm.dbg.value(metadata %struct.loop* %74, metadata !2468, metadata !DIExpression()), !dbg !2500
  %header = getelementptr inbounds %struct.loop, %struct.loop* %74, i64 0, i32 2, !dbg !2662
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2662
  %index158 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i64 0, i32 9, !dbg !2663
  %78 = load i32, i32* %index158, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.loop* %74, metadata !2468, metadata !DIExpression()), !dbg !2500
  %call159 = call fastcc i32 @loop_depth(%struct.loop* %74) #8, !dbg !2664
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %cond, i32 %78, i32 %call159) #6, !dbg !2665
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2666
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2667
  %80 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2668
  call void @llvm.dbg.value(metadata %struct.loop* %80, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux162 = getelementptr inbounds %struct.loop, %struct.loop* %80, i64 0, i32 10, !dbg !2668
  %81 = bitcast i8** %aux162 to %struct.loop_data**, !dbg !2668
  %82 = load %struct.loop_data*, %struct.loop_data** %81, align 8, !dbg !2668
  %regs_ref163 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %82, i64 0, i32 3, !dbg !2668
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %regs_ref163, i32 0, i32* nonnull %j) #8, !dbg !2668
  br label %for.cond164, !dbg !2668

for.cond164:                                      ; preds = %for.body167, %cond.end
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  %call165 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2670
  %tobool166 = icmp eq i8 %call165, 0, !dbg !2668
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2672
  br i1 %tobool166, label %for.end170, label %for.body167, !dbg !2668

for.body167:                                      ; preds = %for.cond164
  %84 = load i32, i32* %j, align 4, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %84, metadata !2456, metadata !DIExpression()), !dbg !2500
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %84) #6, !dbg !2674
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2670
  br label %for.cond164, !dbg !2670, !llvm.loop !2675

for.end170:                                       ; preds = %for.cond164
  %.lcssa = phi %struct._IO_FILE* [ %83, %for.cond164 ], !dbg !2672
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2677
  %85 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.loop* %85, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux172 = getelementptr inbounds %struct.loop, %struct.loop* %85, i64 0, i32 10, !dbg !2678
  %86 = bitcast i8** %aux172 to %struct.loop_data**, !dbg !2678
  %87 = load %struct.loop_data*, %struct.loop_data** %86, align 8, !dbg !2678
  %regs_live173 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %87, i64 0, i32 4, !dbg !2678
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %regs_live173, i32 0, i32* nonnull %j) #8, !dbg !2678
  br label %for.cond174, !dbg !2678

for.cond174:                                      ; preds = %for.body177, %for.end170
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  %call175 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2680
  %tobool176 = icmp eq i8 %call175, 0, !dbg !2678
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2672
  br i1 %tobool176, label %for.end180, label %for.body177, !dbg !2678

for.body177:                                      ; preds = %for.cond174
  %89 = load i32, i32* %j, align 4, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %89, metadata !2456, metadata !DIExpression()), !dbg !2500
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %89) #6, !dbg !2683
  call void @llvm.dbg.value(metadata i32* %j, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #8, !dbg !2680
  br label %for.cond174, !dbg !2680, !llvm.loop !2684

for.end180:                                       ; preds = %for.cond174
  %.lcssa13 = phi %struct._IO_FILE* [ %88, %for.cond174 ], !dbg !2672
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2686
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()), !dbg !2500
  br label %for.cond182, !dbg !2687

for.cond182:                                      ; preds = %cleanup202, %for.end180
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup202 ], [ 0, %for.end180 ], !dbg !2688
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2455, metadata !DIExpression()), !dbg !2500
  %90 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !2689
  %91 = sext i32 %90 to i64, !dbg !2690
  %cmp183 = icmp slt i64 %indvars.iv, %91, !dbg !2690
  br i1 %cmp183, label %for.body184, label %for.end207, !dbg !2691

for.body184:                                      ; preds = %for.cond182
  %arrayidx187 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv, !dbg !2692
  %92 = load i32, i32* %arrayidx187, align 4, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %92, metadata !2489, metadata !DIExpression()), !dbg !2693
  %93 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.loop* %93, metadata !2468, metadata !DIExpression()), !dbg !2500
  %aux188 = getelementptr inbounds %struct.loop, %struct.loop* %93, i64 0, i32 10, !dbg !2694
  %94 = bitcast i8** %aux188 to %struct.loop_data**, !dbg !2694
  %95 = load %struct.loop_data*, %struct.loop_data** %94, align 8, !dbg !2694
  %idxprom190 = zext i32 %92 to i64, !dbg !2694
  %arrayidx191 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %95, i64 0, i32 2, i64 %idxprom190, !dbg !2694
  %96 = load i32, i32* %arrayidx191, align 4, !dbg !2694
  %cmp192 = icmp eq i32 %96, 0, !dbg !2696
  br i1 %cmp192, label %cleanup202, label %if.end194, !dbg !2697

if.end194:                                        ; preds = %for.body184
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2698
  %arrayidx196 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom190, !dbg !2699
  %98 = load i8*, i8** %arrayidx196, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.loop* %93, metadata !2468, metadata !DIExpression()), !dbg !2500
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %98, i32 %96) #6, !dbg !2700
  br label %cleanup202, !dbg !2701

cleanup202:                                       ; preds = %for.body184, %if.end194
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i32 undef, metadata !2455, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2500
  br label %for.cond182, !dbg !2703, !llvm.loop !2704

for.end207:                                       ; preds = %for.cond182
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2706
  %call208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2654
  br label %for.cond152, !dbg !2654, !llvm.loop !2708

cleanup211.loopexit:                              ; preds = %for.cond152
  br label %cleanup211, !dbg !2710

cleanup211:                                       ; preds = %cleanup211.loopexit, %if.end148
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2710
  ret void, !dbg !2710
}

declare dso_local i32 @df_set_flags(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2711 {
entry:
  %aloop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2717, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2718, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2719, metadata !DIExpression()), !dbg !2723
  %0 = bitcast %struct.loop** %aloop to i8*, !dbg !2724
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2724
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2725
  store i32 0, i32* %idx, align 8, !dbg !2726
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2727
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 4, !dbg !2727
  %2 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2727
  %tobool = icmp eq %struct.loops* %2, null, !dbg !2727
  br i1 %tobool, label %if.then, label %if.end, !dbg !2729

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2730
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2732
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2733
  br label %cleanup, !dbg !2734

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2735
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2735
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2736
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2737
  %and = and i32 %flags, 1, !dbg !2738
  %3 = xor i32 %and, 1, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %3, metadata !2722, metadata !DIExpression()), !dbg !2723
  %and4 = and i32 %flags, 4, !dbg !2740
  %tobool5 = icmp eq i32 %and4, 0, !dbg !2740
  br i1 %tobool5, label %if.else, label %for.cond.preheader, !dbg !2742

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !2743

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2746
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2721, metadata !DIExpression()), !dbg !2723
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2747
  %x_current_loops8 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !2747
  %5 = load %struct.loops*, %struct.loops** %x_current_loops8, align 8, !dbg !2747
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %5, i64 0, i32 1, !dbg !2747
  %6 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2747
  %tobool9 = icmp eq %struct.VEC_loop_p_gc* %6, null, !dbg !2747
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !2747

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %6, i64 0, i32 0, !dbg !2747
  br label %cond.end, !dbg !2747

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond13 = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2747
  call void @llvm.dbg.value(metadata %struct.loop** %aloop, metadata !2720, metadata !DIExpression(DW_OP_deref)), !dbg !2723
  %call14 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond13, i32 %i.0, %struct.loop** nonnull %aloop) #8, !dbg !2747
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2743
  br i1 %tobool15, label %if.end114.loopexit2, label %for.body, !dbg !2743

for.body:                                         ; preds = %cond.end
  %7 = load %struct.loop*, %struct.loop** %aloop, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2720, metadata !DIExpression()), !dbg !2723
  %cmp = icmp eq %struct.loop* %7, null, !dbg !2751
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !2752

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2720, metadata !DIExpression()), !dbg !2723
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 8, !dbg !2753
  %8 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2753
  %cmp16 = icmp eq %struct.loop* %8, null, !dbg !2754
  br i1 %cmp16, label %land.lhs.true17, label %for.inc, !dbg !2755

land.lhs.true17:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2720, metadata !DIExpression()), !dbg !2723
  %num = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 0, !dbg !2756
  %9 = load i32, i32* %num, align 8, !dbg !2756
  %cmp18 = icmp slt i32 %9, %3, !dbg !2757
  br i1 %cmp18, label %for.inc, label %if.then19, !dbg !2758

if.then19:                                        ; preds = %land.lhs.true17
  %10 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2759
  %tobool21 = icmp eq %struct.VEC_int_heap* %10, null, !dbg !2759
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !2759

cond.true22:                                      ; preds = %if.then19
  %base24 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %10, i64 0, i32 0, !dbg !2759
  br label %cond.end26, !dbg !2759

cond.end26:                                       ; preds = %if.then19, %cond.true22
  %cond27 = phi %struct.VEC_int_base* [ %base24, %cond.true22 ], [ null, %if.then19 ], !dbg !2759
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2720, metadata !DIExpression()), !dbg !2723
  %call29 = call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond27, i32 %9) #8, !dbg !2759
  br label %for.inc, !dbg !2759

for.inc:                                          ; preds = %land.lhs.true17, %for.body, %land.lhs.true, %cond.end26
  %inc = add i32 %i.0, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2721, metadata !DIExpression()), !dbg !2723
  br label %for.cond, !dbg !2761, !llvm.loop !2762

if.else:                                          ; preds = %if.end
  %and31 = and i32 %flags, 2, !dbg !2764
  %tobool32 = icmp eq i32 %and31, 0, !dbg !2764
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2766
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 4, !dbg !2766
  %12 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2766
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %12, i64 0, i32 3, !dbg !2766
  %13 = bitcast %struct.loop** %tree_root to i64*, !dbg !2766
  %14 = load i64, i64* %13, align 8, !dbg !2766
  %15 = bitcast %struct.loop** %aloop to i64*, !dbg !2766
  store i64 %14, i64* %15, align 8, !dbg !2766
  %16 = inttoptr i64 %14 to %struct.loop*, !dbg !2767
  br i1 %tobool32, label %while.cond79.preheader, label %for.cond36.preheader, !dbg !2767

for.cond36.preheader:                             ; preds = %if.else
  br label %for.cond36, !dbg !2768

while.cond79.preheader:                           ; preds = %if.else
  br label %while.cond79, !dbg !2771

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc40
  %17 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %18 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %19 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %20 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %21 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %22 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ], !dbg !2773
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !2720, metadata !DIExpression()), !dbg !2723
  %inner37 = getelementptr inbounds %struct.loop, %struct.loop* %22, i64 0, i32 8, !dbg !2775
  %23 = load %struct.loop*, %struct.loop** %inner37, align 8, !dbg !2775
  %cmp38 = icmp eq %struct.loop* %23, null, !dbg !2776
  br i1 %cmp38, label %while.cond.preheader, label %for.inc40, !dbg !2768

while.cond.preheader:                             ; preds = %for.cond36
  %.lcssa16 = phi %struct.loop* [ %17, %for.cond36 ]
  %.lcssa15 = phi %struct.loop* [ %18, %for.cond36 ]
  %.lcssa14 = phi %struct.loop* [ %19, %for.cond36 ]
  %.lcssa13 = phi %struct.loop* [ %20, %for.cond36 ]
  br label %while.cond, !dbg !2777

for.inc40:                                        ; preds = %for.cond36
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2720, metadata !DIExpression()), !dbg !2723
  %inner41 = getelementptr inbounds %struct.loop, %struct.loop* %21, i64 0, i32 8, !dbg !2778
  %24 = bitcast %struct.loop** %inner41 to i64*, !dbg !2778
  %25 = load i64, i64* %24, align 8, !dbg !2778
  store i64 %25, i64* %15, align 8, !dbg !2779
  %26 = inttoptr i64 %25 to %struct.loop*, !dbg !2780
  br label %for.cond36, !dbg !2780, !llvm.loop !2781

while.cond:                                       ; preds = %while.cond.preheader, %if.end74
  %27 = phi %struct.loop* [ %.lcssa16, %while.cond.preheader ], [ %43, %if.end74 ]
  %28 = phi %struct.loop* [ %.lcssa15, %while.cond.preheader ], [ %44, %if.end74 ]
  %29 = phi %struct.loop* [ %.lcssa14, %while.cond.preheader ], [ %44, %if.end74 ]
  %30 = phi %struct.loop* [ %.lcssa13, %while.cond.preheader ], [ %44, %if.end74 ], !dbg !2783
  call void @llvm.dbg.value(metadata %struct.loop* %30, metadata !2720, metadata !DIExpression()), !dbg !2723
  %num43 = getelementptr inbounds %struct.loop, %struct.loop* %30, i64 0, i32 0, !dbg !2786
  %31 = load i32, i32* %num43, align 8, !dbg !2786
  %cmp44 = icmp slt i32 %31, %3, !dbg !2787
  br i1 %cmp44, label %if.end56, label %if.then45, !dbg !2788

if.then45:                                        ; preds = %while.cond
  %32 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2789
  %tobool47 = icmp eq %struct.VEC_int_heap* %32, null, !dbg !2789
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !2789

cond.true48:                                      ; preds = %if.then45
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %32, i64 0, i32 0, !dbg !2789
  br label %cond.end52, !dbg !2789

cond.end52:                                       ; preds = %if.then45, %cond.true48
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true48 ], [ null, %if.then45 ], !dbg !2789
  call void @llvm.dbg.value(metadata %struct.loop* %29, metadata !2720, metadata !DIExpression()), !dbg !2723
  %num54 = getelementptr inbounds %struct.loop, %struct.loop* %29, i64 0, i32 0, !dbg !2789
  %33 = load i32, i32* %num54, align 8, !dbg !2789
  %call55 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond53, i32 %33) #8, !dbg !2789
  br label %if.end56, !dbg !2789

if.end56:                                         ; preds = %while.cond, %cond.end52
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !2720, metadata !DIExpression()), !dbg !2723
  %next = getelementptr inbounds %struct.loop, %struct.loop* %28, i64 0, i32 9, !dbg !2790
  %34 = load %struct.loop*, %struct.loop** %next, align 8, !dbg !2790
  %tobool57 = icmp eq %struct.loop* %34, null, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !2720, metadata !DIExpression()), !dbg !2723
  br i1 %tobool57, label %if.else67, label %if.then58, !dbg !2793

if.then58:                                        ; preds = %if.end56
  %35 = ptrtoint %struct.loop* %34 to i64, !dbg !2793
  store i64 %35, i64* %15, align 8, !dbg !2794
  br label %for.cond60, !dbg !2797

for.cond60:                                       ; preds = %for.inc64, %if.then58
  %36 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %37 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %38 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ], !dbg !2798
  call void @llvm.dbg.value(metadata %struct.loop* %38, metadata !2720, metadata !DIExpression()), !dbg !2723
  %inner61 = getelementptr inbounds %struct.loop, %struct.loop* %38, i64 0, i32 8, !dbg !2800
  %39 = load %struct.loop*, %struct.loop** %inner61, align 8, !dbg !2800
  %cmp62 = icmp eq %struct.loop* %39, null, !dbg !2801
  br i1 %cmp62, label %if.end74.loopexit, label %for.inc64, !dbg !2802

for.inc64:                                        ; preds = %for.cond60
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !2720, metadata !DIExpression()), !dbg !2723
  %inner65 = getelementptr inbounds %struct.loop, %struct.loop* %37, i64 0, i32 8, !dbg !2803
  %40 = bitcast %struct.loop** %inner65 to i64*, !dbg !2803
  %41 = load i64, i64* %40, align 8, !dbg !2803
  store i64 %41, i64* %15, align 8, !dbg !2804
  %42 = inttoptr i64 %41 to %struct.loop*, !dbg !2805
  br label %for.cond60, !dbg !2805, !llvm.loop !2806

if.else67:                                        ; preds = %if.end56
  %call68 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %28) #8, !dbg !2808
  %tobool69 = icmp eq %struct.loop* %call68, null, !dbg !2808
  br i1 %tobool69, label %if.end114.loopexit1, label %if.else71, !dbg !2810

if.else71:                                        ; preds = %if.else67
  call void @llvm.dbg.value(metadata %struct.loop* %27, metadata !2720, metadata !DIExpression()), !dbg !2723
  %call72 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %27) #8, !dbg !2811
  call void @llvm.dbg.value(metadata %struct.loop* %call72, metadata !2720, metadata !DIExpression()), !dbg !2723
  store %struct.loop* %call72, %struct.loop** %aloop, align 8, !dbg !2812
  br label %if.end74

if.end74.loopexit:                                ; preds = %for.cond60
  %.lcssa12 = phi %struct.loop* [ %36, %for.cond60 ]
  %.lcssa11 = phi %struct.loop* [ %38, %for.cond60 ], !dbg !2798
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !2720, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !2720, metadata !DIExpression()), !dbg !2723
  br label %if.end74, !dbg !2777

if.end74:                                         ; preds = %if.end74.loopexit, %if.else71
  %43 = phi %struct.loop* [ %.lcssa12, %if.end74.loopexit ], [ %call72, %if.else71 ]
  %44 = phi %struct.loop* [ %.lcssa11, %if.end74.loopexit ], [ %call72, %if.else71 ]
  br label %while.cond, !dbg !2777, !llvm.loop !2813

while.cond79:                                     ; preds = %while.cond79.preheader, %if.end111
  %45 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %69, %if.end111 ]
  %46 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %70, %if.end111 ]
  %47 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %71, %if.end111 ]
  %48 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %72, %if.end111 ]
  %49 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %73, %if.end111 ]
  %50 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %74, %if.end111 ]
  %51 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %75, %if.end111 ]
  %52 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %76, %if.end111 ], !dbg !2815
  call void @llvm.dbg.value(metadata %struct.loop* %52, metadata !2720, metadata !DIExpression()), !dbg !2723
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %52, i64 0, i32 0, !dbg !2818
  %53 = load i32, i32* %num81, align 8, !dbg !2818
  %cmp82 = icmp slt i32 %53, %3, !dbg !2819
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2820

if.then83:                                        ; preds = %while.cond79
  %54 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2821
  %tobool85 = icmp eq %struct.VEC_int_heap* %54, null, !dbg !2821
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2821

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %54, i64 0, i32 0, !dbg !2821
  br label %cond.end90, !dbg !2821

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2821
  call void @llvm.dbg.value(metadata %struct.loop* %51, metadata !2720, metadata !DIExpression()), !dbg !2723
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %51, i64 0, i32 0, !dbg !2821
  %55 = load i32, i32* %num92, align 8, !dbg !2821
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %55) #8, !dbg !2821
  br label %if.end94, !dbg !2821

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %50, metadata !2720, metadata !DIExpression()), !dbg !2723
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %50, i64 0, i32 8, !dbg !2822
  %56 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2822
  %cmp96 = icmp eq %struct.loop* %56, null, !dbg !2824
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2825

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2826

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %49, metadata !2720, metadata !DIExpression()), !dbg !2723
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %49, i64 0, i32 8, !dbg !2828
  %57 = bitcast %struct.loop** %inner98 to i64*, !dbg !2828
  %58 = load i64, i64* %57, align 8, !dbg !2828
  store i64 %58, i64* %15, align 8, !dbg !2829
  %59 = inttoptr i64 %58 to %struct.loop*, !dbg !2830
  br label %if.end111, !dbg !2830

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %60 = phi %struct.loop* [ %45, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %61 = phi %struct.loop* [ %46, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %62 = phi %struct.loop* [ %47, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %63 = phi %struct.loop* [ %48, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2831
  call void @llvm.dbg.value(metadata %struct.loop* %63, metadata !2720, metadata !DIExpression()), !dbg !2723
  %cmp101 = icmp eq %struct.loop* %63, null, !dbg !2832
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2833

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %62, metadata !2720, metadata !DIExpression()), !dbg !2723
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %62, i64 0, i32 9, !dbg !2834
  %64 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2834
  %cmp103 = icmp eq %struct.loop* %64, null, !dbg !2835
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %65 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2836
  call void @llvm.dbg.value(metadata %struct.loop* %61, metadata !2720, metadata !DIExpression()), !dbg !2723
  br i1 %65, label %while.body104, label %while.end106, !dbg !2826

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %61) #8, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2720, metadata !DIExpression()), !dbg !2723
  store %struct.loop* %call105, %struct.loop** %aloop, align 8, !dbg !2838
  br label %while.cond100, !dbg !2826, !llvm.loop !2839

while.end106:                                     ; preds = %land.end
  %.lcssa10 = phi %struct.loop* [ %60, %land.end ]
  %.lcssa = phi %struct.loop* [ %61, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2841
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2843

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa10, metadata !2720, metadata !DIExpression()), !dbg !2723
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa10, i64 0, i32 9, !dbg !2844
  %66 = bitcast %struct.loop** %next110 to i64*, !dbg !2844
  %67 = load i64, i64* %66, align 8, !dbg !2844
  store i64 %67, i64* %15, align 8, !dbg !2845
  %68 = inttoptr i64 %67 to %struct.loop*
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.then97
  %69 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %70 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %71 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %72 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %73 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %74 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %75 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %76 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  br label %while.cond79, !dbg !2771, !llvm.loop !2846

if.end114.loopexit:                               ; preds = %while.end106
  br label %if.end114, !dbg !2848

if.end114.loopexit1:                              ; preds = %if.else67
  br label %if.end114, !dbg !2848

if.end114.loopexit2:                              ; preds = %cond.end
  br label %if.end114, !dbg !2848

if.end114:                                        ; preds = %if.end114.loopexit2, %if.end114.loopexit1, %if.end114.loopexit
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2848
  br label %cleanup, !dbg !2849

cleanup:                                          ; preds = %if.end114, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2849
  ret void, !dbg !2849
}

; Function Attrs: nounwind uwtable
define internal fastcc void @move_single_loop_invariants(%struct.loop* %loop) unnamed_addr #5 !dbg !2850 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2854, metadata !DIExpression()), !dbg !2855
  tail call fastcc void @init_inv_motion_data() #8, !dbg !2856
  tail call fastcc void @find_invariants(%struct.loop* %loop) #8, !dbg !2857
  %call = tail call zeroext i8 @optimize_loop_for_speed_p(%struct.loop* %loop) #6, !dbg !2858
  tail call fastcc void @find_invariants_to_move(i8 zeroext %call) #8, !dbg !2859
  tail call fastcc void @move_invariants(%struct.loop* %loop) #8, !dbg !2860
  tail call fastcc void @free_inv_motion_data() #8, !dbg !2861
  ret void, !dbg !2862
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2863 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2868, metadata !DIExpression()), !dbg !2870
  %0 = bitcast i32* %anum to i8*, !dbg !2871
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2871
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2870
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2870
  br label %while.cond, !dbg !2872

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2873
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2873
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2873

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2873
  br label %cond.end, !dbg !2873

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2873
  %2 = load i32, i32* %idx, align 8, !dbg !2873
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2869, metadata !DIExpression(DW_OP_deref)), !dbg !2870
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !2873
  %tobool2 = icmp eq i32 %call, 0, !dbg !2872
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2872

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2874
  %inc = add i32 %3, 1, !dbg !2874
  store i32 %inc, i32* %idx, align 8, !dbg !2874
  %4 = load i32, i32* %anum, align 4, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %4, metadata !2869, metadata !DIExpression()), !dbg !2870
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !2877
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2878
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2879
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2881, !llvm.loop !2882

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !2884
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2885
  br label %cleanup, !dbg !2886

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2886

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2886
  ret void, !dbg !2886
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_loop_data(%struct.loop* %loop) unnamed_addr #5 !dbg !2887 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2889, metadata !DIExpression()), !dbg !2891
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 10, !dbg !2892
  %0 = bitcast i8** %aux to %struct.loop_data**, !dbg !2892
  %1 = load %struct.loop_data*, %struct.loop_data** %0, align 8, !dbg !2892
  call void @llvm.dbg.value(metadata %struct.loop_data* %1, metadata !2890, metadata !DIExpression()), !dbg !2891
  %tobool = icmp eq %struct.loop_data* %1, null, !dbg !2893
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !2895

if.end:                                           ; preds = %entry
  %regs_ref = getelementptr inbounds %struct.loop_data, %struct.loop_data* %1, i64 0, i32 3, !dbg !2896
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %regs_ref) #6, !dbg !2897
  %2 = load %struct.loop_data*, %struct.loop_data** %0, align 8, !dbg !2898
  %regs_live = getelementptr inbounds %struct.loop_data, %struct.loop_data* %2, i64 0, i32 4, !dbg !2899
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %regs_live) #6, !dbg !2900
  %3 = bitcast %struct.loop_data* %1 to i8*, !dbg !2901
  tail call void @free(i8* nonnull %3) #6, !dbg !2902
  store i8* null, i8** %aux, align 8, !dbg !2903
  br label %cleanup.cont, !dbg !2904

cleanup.cont:                                     ; preds = %entry, %if.end
  ret void, !dbg !2904
}

declare dso_local void @free_reg_info() local_unnamed_addr #2

declare dso_local void @free(i8*) #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* %head, %struct.bitmap_obstack* %obstack) unnamed_addr #0 !dbg !2905 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* @reg_obstack, metadata !2910, metadata !DIExpression()), !dbg !2911
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !2912
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8, !dbg !2913
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !2914
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8, !dbg !2915
  %obstack1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 3, !dbg !2916
  store %struct.bitmap_obstack* @reg_obstack, %struct.bitmap_obstack** %obstack1, align 8, !dbg !2917
  ret void, !dbg !2918
}

declare dso_local void @ira_setup_eliminable_regset() local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %index) unnamed_addr #0 !dbg !2919 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !2923, metadata !DIExpression()), !dbg !2924
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2925
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 1, !dbg !2925
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2925
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !2927
  %2 = load i32, i32* %block_info_size, align 8, !dbg !2927
  %cmp = icmp ugt i32 %2, %index, !dbg !2928
  br i1 %cmp, label %if.then, label %return, !dbg !2929

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !2930
  %3 = load i8**, i8*** %block_info, align 8, !dbg !2930
  %idxprom = zext i32 %index to i64, !dbg !2931
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !2931
  %4 = bitcast i8** %arrayidx3 to %struct.df_lr_bb_info**, !dbg !2931
  %5 = load %struct.df_lr_bb_info*, %struct.df_lr_bb_info** %4, align 8, !dbg !2931
  br label %return, !dbg !2932

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_lr_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !2933
  ret %struct.df_lr_bb_info* %retval.0, !dbg !2934
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2935 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2941, metadata !DIExpression()), !dbg !2943
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2944
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2944
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2944
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2944

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2944
  br label %cond.end, !dbg !2944

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2944
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2944
  call void @llvm.dbg.value(metadata i32 %call, metadata !2942, metadata !DIExpression()), !dbg !2943
  %cmp = icmp eq i32 %call, 0, !dbg !2945
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2947

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2948
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2948
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2948

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2948
  br label %cond.end8, !dbg !2948

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2948
  %sub = add i32 %call, -1, !dbg !2948
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !2948
  br label %cleanup, !dbg !2949

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2943
  ret %struct.loop* %retval.0, !dbg !2950
}

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2951 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2960, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 0, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2963, metadata !DIExpression()), !dbg !2964
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2965
  %1 = load i64, i64* %0, align 8, !dbg !2965
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2966
  store i64 %1, i64* %2, align 8, !dbg !2966
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2967
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2968
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2969
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2972
  br label %while.body, !dbg !2972

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !2973
  br i1 %tobool, label %if.then, label %if.end, !dbg !2974

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2975
  br label %while.end, !dbg !2977

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !2978

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !2972, !llvm.loop !2979

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !2981

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2981
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !2983
  %7 = load i32, i32* %indx9, align 8, !dbg !2983
  %cmp11 = icmp eq i32 %7, 0, !dbg !2984
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2985

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !2986
  %8 = load i32, i32* %indx14, align 8, !dbg !2986
  %mul = shl i32 %8, 7, !dbg !2987
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2962, metadata !DIExpression()), !dbg !2964
  br label %if.end15, !dbg !2988

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2962, metadata !DIExpression()), !dbg !2964
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2989
  store i32 0, i32* %word_no, align 8, !dbg !2990
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !2991
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2991
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2992
  store i64 %9, i64* %bits21, align 8, !dbg !2993
  %tobool23 = icmp eq i64 %9, 0, !dbg !2994
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2994
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %add, metadata !2962, metadata !DIExpression()), !dbg !2964
  store i32 %add, i32* %bit_no, align 4, !dbg !2996
  ret void, !dbg !2997
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2998 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3002, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3003, metadata !DIExpression()), !dbg !3007
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3008
  %0 = load i64, i64* %bits, align 8, !dbg !3008
  %tobool = icmp eq i64 %0, 0, !dbg !3009
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3010

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3011
  br label %next_bit, !dbg !3014

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3004), !dbg !3015
  br label %while.cond, !dbg !3014

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3016
  %and = and i64 %2, 1, !dbg !3017
  %tobool2 = icmp eq i64 %and, 0, !dbg !3018
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3014

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3019
  store i64 %shr, i64* %bits, align 8, !dbg !3019
  %3 = load i32, i32* %bit_no, align 4, !dbg !3021
  %add = add i32 %3, 1, !dbg !3021
  store i32 %add, i32* %bit_no, align 4, !dbg !3021
  %.pre = load i64, i64* %bits, align 8, !dbg !3016
  br label %while.cond, !dbg !3014, !llvm.loop !3022

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3024
  %sub = add i32 %4, 63, !dbg !3025
  %div = and i32 %sub, -64, !dbg !3026
  store i32 %div, i32* %bit_no, align 4, !dbg !3027
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3028
  %5 = load i32, i32* %word_no, align 8, !dbg !3029
  %inc = add i32 %5, 1, !dbg !3029
  store i32 %inc, i32* %word_no, align 8, !dbg !3029
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3030
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3030
  br label %while.body6, !dbg !3031

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3032

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3033
  %cmp = icmp eq i32 %8, 2, !dbg !3034
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3030
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3032

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3011
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3011
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3011
  store i64 %10, i64* %bits, align 8, !dbg !3035
  %tobool14 = icmp eq i64 %10, 0, !dbg !3036
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3038

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3039
  %add17 = add i32 %11, 64, !dbg !3039
  store i32 %add17, i32* %bit_no, align 4, !dbg !3039
  %12 = load i32, i32* %word_no, align 8, !dbg !3040
  %inc19 = add i32 %12, 1, !dbg !3040
  store i32 %inc19, i32* %word_no, align 8, !dbg !3040
  br label %while.cond7, !dbg !3032, !llvm.loop !3041

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3030
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3043
  %14 = load i64, i64* %13, align 8, !dbg !3043
  store i64 %14, i64* %6, align 8, !dbg !3044
  %tobool24 = icmp eq i64 %14, 0, !dbg !3045
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3047

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3047
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3048
  %16 = load i32, i32* %indx, align 8, !dbg !3048
  %mul28 = shl i32 %16, 7, !dbg !3049
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3050
  store i32 0, i32* %word_no, align 8, !dbg !3051
  br label %while.body6, !dbg !3031, !llvm.loop !3052

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3054

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3054

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3007
  ret i8 %retval.0, !dbg !3054
}

; Function Attrs: nounwind uwtable
define internal fastcc void @change_pressure(i32 %regno, i8 zeroext %incr_p) unnamed_addr #5 !dbg !3055 {
entry:
  %nregs = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3059, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8 %incr_p, metadata !3060, metadata !DIExpression()), !dbg !3063
  %0 = bitcast i32* %nregs to i8*, !dbg !3064
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3064
  call void @llvm.dbg.value(metadata i32* %nregs, metadata !3061, metadata !DIExpression(DW_OP_deref)), !dbg !3063
  %call = call fastcc i32 @get_regno_cover_class(i32 %regno, i32* nonnull %nregs) #8, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %call, metadata !3062, metadata !DIExpression()), !dbg !3063
  %tobool = icmp eq i8 %incr_p, 0, !dbg !3066
  %1 = load i32, i32* %nregs, align 4, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %1, metadata !3061, metadata !DIExpression()), !dbg !3063
  %idxprom1 = zext i32 %call to i64, !dbg !3068
  %arrayidx2 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom1, !dbg !3068
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !3068
  br i1 %tobool, label %if.then, label %if.else, !dbg !3069

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %2, %1, !dbg !3070
  store i32 %sub, i32* %arrayidx2, align 4, !dbg !3070
  br label %if.end14, !dbg !3071

if.else:                                          ; preds = %entry
  %add = add nsw i32 %2, %1, !dbg !3072
  store i32 %add, i32* %arrayidx2, align 4, !dbg !3072
  %3 = load %struct.loop*, %struct.loop** @curr_loop, align 8, !dbg !3074
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %3, i64 0, i32 10, !dbg !3074
  %4 = bitcast i8** %aux to %struct.loop_data**, !dbg !3074
  %5 = load %struct.loop_data*, %struct.loop_data** %4, align 8, !dbg !3074
  %arrayidx4 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %5, i64 0, i32 2, i64 %idxprom1, !dbg !3074
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !3074
  %cmp = icmp slt i32 %6, %add, !dbg !3076
  br i1 %cmp, label %if.then7, label %if.end14, !dbg !3077

if.then7:                                         ; preds = %if.else
  store i32 %add, i32* %arrayidx4, align 4, !dbg !3078
  br label %if.end14, !dbg !3079

if.end14:                                         ; preds = %if.else, %if.then7, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3080
  ret void, !dbg !3080
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3081 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3085, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3086, metadata !DIExpression()), !dbg !3087
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3088
  %0 = load i64, i64* %bits, align 8, !dbg !3089
  %shr = lshr i64 %0, 1, !dbg !3089
  store i64 %shr, i64* %bits, align 8, !dbg !3089
  %1 = load i32, i32* %bit_no, align 4, !dbg !3090
  %add = add i32 %1, 1, !dbg !3090
  store i32 %add, i32* %bit_no, align 4, !dbg !3090
  ret void, !dbg !3091
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_ref_regs(%struct.rtx_def* %x) unnamed_addr #5 !dbg !3092 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3096, metadata !DIExpression()), !dbg !3109
  %tobool = icmp eq %struct.rtx_def* %x, null, !dbg !3110
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3112

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3113
  %bf.load = load i32, i32* %0, align 8, !dbg !3113
  %bf.clear = and i32 %bf.load, 65535, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3097, metadata !DIExpression()), !dbg !3109
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3114
  br i1 %cmp, label %if.then1, label %if.end5, !dbg !3115

if.then1:                                         ; preds = %if.end
  %1 = load %struct.loop*, %struct.loop** @curr_loop, align 8, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.loop* %1, metadata !3100, metadata !DIExpression()), !dbg !3118
  br label %for.cond, !dbg !3119

for.cond:                                         ; preds = %for.body, %if.then1
  %loop.0 = phi %struct.loop* [ %1, %if.then1 ], [ %call4, %for.body ], !dbg !3120
  call void @llvm.dbg.value(metadata %struct.loop* %loop.0, metadata !3100, metadata !DIExpression()), !dbg !3118
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3121
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !3121
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3121
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !3123
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !3123
  %cmp2 = icmp eq %struct.loop* %loop.0, %4, !dbg !3124
  br i1 %cmp2, label %cleanup.cont.loopexit, label %for.body, !dbg !3125

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %loop.0, i64 0, i32 10, !dbg !3126
  %5 = bitcast i8** %aux to %struct.loop_data**, !dbg !3126
  %6 = load %struct.loop_data*, %struct.loop_data** %5, align 8, !dbg !3126
  %regs_ref = getelementptr inbounds %struct.loop_data, %struct.loop_data* %6, i64 0, i32 3, !dbg !3127
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %x) #8, !dbg !3128
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %regs_ref, i32 %call) #6, !dbg !3129
  %call4 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop.0) #8, !dbg !3130
  call void @llvm.dbg.value(metadata %struct.loop* %call4, metadata !3100, metadata !DIExpression()), !dbg !3118
  br label %for.cond, !dbg !3131, !llvm.loop !3132

if.end5:                                          ; preds = %if.end
  %idxprom = zext i32 %bf.clear to i64, !dbg !3134
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !3134
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %7, metadata !3099, metadata !DIExpression()), !dbg !3109
  %arrayidx7 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !3135
  %8 = load i8, i8* %arrayidx7, align 1, !dbg !3135
  call void @llvm.dbg.value(metadata i8 %8, metadata !3098, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3109
  %u27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !3136
  %fld28 = bitcast %union.u* %u27 to [1 x %union.rtunion_def]*, !dbg !3136
  %9 = zext i8 %8 to i64, !dbg !3139
  br label %for.cond8, !dbg !3139

for.cond8:                                        ; preds = %for.inc45, %if.end5
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc45 ], [ %9, %if.end5 ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1, !dbg !3140
  call void @llvm.dbg.value(metadata i32 undef, metadata !3098, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3109
  %cmp9 = icmp sgt i64 %indvars.iv2, 0, !dbg !3141
  br i1 %cmp9, label %for.body11, label %cleanup.cont.loopexit1, !dbg !3142

for.body11:                                       ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds i8, i8* %7, i64 %indvars.iv.next3, !dbg !3143
  %10 = load i8, i8* %arrayidx13, align 1, !dbg !3143
  %cmp15 = icmp eq i8 %10, 101, !dbg !3144
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !3145

if.then17:                                        ; preds = %for.body11
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i64 0, i64 %indvars.iv.next3, !dbg !3146
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**, !dbg !3146
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3146
  tail call fastcc void @mark_ref_regs(%struct.rtx_def* %11) #8, !dbg !3147
  br label %for.inc45, !dbg !3147

if.else:                                          ; preds = %for.body11
  %cmp23 = icmp eq i8 %10, 69, !dbg !3148
  br i1 %cmp23, label %for.cond26.preheader, label %for.inc45, !dbg !3149

for.cond26.preheader:                             ; preds = %if.else
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i64 0, i64 %indvars.iv.next3, !dbg !3136
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtvec_def**, !dbg !3136
  br label %for.cond26, !dbg !3150

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body33
  %indvars.iv = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next, %for.body33 ], !dbg !3151
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3103, metadata !DIExpression()), !dbg !3152
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3153
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i64 0, i32 0, !dbg !3153
  %13 = load i32, i32* %num_elem, align 8, !dbg !3153
  %14 = sext i32 %13 to i64, !dbg !3154
  %cmp31 = icmp slt i64 %indvars.iv, %14, !dbg !3154
  br i1 %cmp31, label %for.body33, label %for.inc45.loopexit, !dbg !3150

for.body33:                                       ; preds = %for.cond26
  %arrayidx40 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i64 0, i32 1, i64 %indvars.iv, !dbg !3155
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx40, align 8, !dbg !3155
  tail call fastcc void @mark_ref_regs(%struct.rtx_def* %15) #8, !dbg !3156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3157
  call void @llvm.dbg.value(metadata i32 undef, metadata !3103, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3152
  br label %for.cond26, !dbg !3158, !llvm.loop !3159

for.inc45.loopexit:                               ; preds = %for.cond26
  br label %for.inc45, !dbg !3161

for.inc45:                                        ; preds = %for.inc45.loopexit, %if.then17, %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !3098, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3109
  br label %for.cond8, !dbg !3161, !llvm.loop !3162

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3164

cleanup.cont.loopexit1:                           ; preds = %for.cond8
  br label %cleanup.cont, !dbg !3164

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit1, %cleanup.cont.loopexit, %entry
  ret void, !dbg !3164
}

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mark_reg_clobber(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #5 !dbg !3165 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3172, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !3173, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8* %data, metadata !3174, metadata !DIExpression()), !dbg !3175
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %setter, i64 0, i32 0, !dbg !3176
  %bf.load = load i32, i32* %0, align 8, !dbg !3176
  %bf.clear = and i32 %bf.load, 65535, !dbg !3176
  %cmp = icmp eq i32 %bf.clear, 25, !dbg !3178
  br i1 %cmp, label %if.then, label %if.end, !dbg !3179

if.then:                                          ; preds = %entry
  tail call void @mark_reg_store(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #8, !dbg !3180
  br label %if.end, !dbg !3180

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3181
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_reg_death(%struct.rtx_def* %reg) unnamed_addr #5 !dbg !3182 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3184, metadata !DIExpression()), !dbg !3189
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #8, !dbg !3190
  call void @llvm.dbg.value(metadata i32 %call, metadata !3185, metadata !DIExpression()), !dbg !3189
  %cmp = icmp sgt i32 %call, 52, !dbg !3191
  br i1 %cmp, label %if.then, label %if.else, !dbg !3192

if.then:                                          ; preds = %entry
  tail call fastcc void @mark_regno_death(i32 %call) #8, !dbg !3193
  br label %if.end, !dbg !3193

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %call to i64, !dbg !3194
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !3195
  %bf.load = load i32, i32* %0, align 8, !dbg !3195
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3195
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3195
  %idxprom1 = zext i32 %bf.clear to i64, !dbg !3194
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3194
  %1 = load i8, i8* %arrayidx2, align 1, !dbg !3194
  %conv = zext i8 %1 to i32, !dbg !3194
  %add = add nsw i32 %call, %conv, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %add, metadata !3186, metadata !DIExpression()), !dbg !3197
  br label %while.cond, !dbg !3198

while.cond:                                       ; preds = %while.body, %if.else
  %regno.0 = phi i32 [ %call, %if.else ], [ %inc, %while.body ], !dbg !3189
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3185, metadata !DIExpression()), !dbg !3189
  %cmp3 = icmp slt i32 %regno.0, %add, !dbg !3199
  br i1 %cmp3, label %while.body, label %if.end.loopexit, !dbg !3198

while.body:                                       ; preds = %while.cond
  tail call fastcc void @mark_regno_death(i32 %regno.0) #8, !dbg !3200
  %inc = add nsw i32 %regno.0, 1, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3185, metadata !DIExpression()), !dbg !3189
  br label %while.cond, !dbg !3198, !llvm.loop !3203

if.end.loopexit:                                  ; preds = %while.cond
  br label %if.end, !dbg !3205

if.end:                                           ; preds = %if.end.loopexit, %if.then
  ret void, !dbg !3205
}

; Function Attrs: nounwind uwtable
define internal void @mark_reg_store(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #5 !dbg !3206 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3208, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !3209, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %data, metadata !3210, metadata !DIExpression()), !dbg !3215
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !3216
  %bf.load = load i32, i32* %0, align 8, !dbg !3216
  %bf.clear = and i32 %bf.load, 65535, !dbg !3216
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3218
  br i1 %cmp, label %if.then, label %if.end, !dbg !3219

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3220
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3220
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3208, metadata !DIExpression()), !dbg !3215
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3221
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3223
  br label %if.end, !dbg !3224

if.end:                                           ; preds = %if.then, %entry
  %bf.load1 = phi i32 [ %bf.load1.pre, %if.then ], [ %bf.load, %entry ], !dbg !3223
  %reg.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %reg, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.addr.0, metadata !3208, metadata !DIExpression()), !dbg !3215
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg.addr.0, i64 0, i32 0, !dbg !3223
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3223
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !3223
  br i1 %cmp3, label %if.end5, label %cleanup.cont, !dbg !3225

if.end5:                                          ; preds = %if.end
  %3 = load i32, i32* @n_regs_set, align 4, !dbg !3226
  %inc = add nsw i32 %3, 1, !dbg !3226
  store i32 %inc, i32* @n_regs_set, align 4, !dbg !3226
  %idxprom = sext i32 %3 to i64, !dbg !3227
  %arrayidx6 = getelementptr inbounds [106 x %struct.rtx_def*], [106 x %struct.rtx_def*]* @regs_set, i64 0, i64 %idxprom, !dbg !3227
  store %struct.rtx_def* %reg.addr.0, %struct.rtx_def** %arrayidx6, align 8, !dbg !3228
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.addr.0) #8, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %call, metadata !3211, metadata !DIExpression()), !dbg !3215
  %cmp7 = icmp sgt i32 %call, 52, !dbg !3230
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !3231

if.then8:                                         ; preds = %if.end5
  tail call fastcc void @mark_regno_live(i32 %call) #8, !dbg !3232
  br label %cleanup.cont, !dbg !3232

if.else:                                          ; preds = %if.end5
  %idxprom9 = sext i32 %call to i64, !dbg !3233
  %bf.load11 = load i32, i32* %2, align 8, !dbg !3234
  %bf.lshr = lshr i32 %bf.load11, 16, !dbg !3234
  %bf.clear12 = and i32 %bf.lshr, 255, !dbg !3234
  %idxprom13 = zext i32 %bf.clear12 to i64, !dbg !3233
  %arrayidx14 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom9, i64 %idxprom13, !dbg !3233
  %4 = load i8, i8* %arrayidx14, align 1, !dbg !3233
  %conv = zext i8 %4 to i32, !dbg !3233
  %add = add nsw i32 %call, %conv, !dbg !3235
  call void @llvm.dbg.value(metadata i32 %add, metadata !3212, metadata !DIExpression()), !dbg !3236
  br label %while.cond, !dbg !3237

while.cond:                                       ; preds = %while.body, %if.else
  %regno.0 = phi i32 [ %call, %if.else ], [ %inc17, %while.body ], !dbg !3215
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3211, metadata !DIExpression()), !dbg !3215
  %cmp15 = icmp slt i32 %regno.0, %add, !dbg !3238
  br i1 %cmp15, label %while.body, label %cleanup.cont.loopexit, !dbg !3237

while.body:                                       ; preds = %while.cond
  tail call fastcc void @mark_regno_live(i32 %regno.0) #8, !dbg !3239
  %inc17 = add nsw i32 %regno.0, 1, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %inc17, metadata !3211, metadata !DIExpression()), !dbg !3215
  br label %while.cond, !dbg !3237, !llvm.loop !3242

cleanup.cont.loopexit:                            ; preds = %while.cond
  br label %cleanup.cont, !dbg !3244

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.end, %if.then8
  ret void, !dbg !3244
}

declare dso_local %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3245 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3249, metadata !DIExpression()), !dbg !3250
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3251
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3251
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3251
  ret i32 %0, !dbg !3252
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_regno_cover_class(i32 %regno, i32* %nregs) unnamed_addr #5 !dbg !3253 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3258, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32* %nregs, metadata !3259, metadata !DIExpression()), !dbg !3263
  %cmp = icmp sgt i32 %regno, 52, !dbg !3264
  br i1 %cmp, label %if.then, label %if.else, !dbg !3265

if.then:                                          ; preds = %entry
  %call = tail call i32 @reg_cover_class(i32 %regno) #6, !dbg !3266
  call void @llvm.dbg.value(metadata i32 %call, metadata !3260, metadata !DIExpression()), !dbg !3267
  %idxprom = zext i32 %call to i64, !dbg !3268
  %0 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3269
  %idxprom1 = sext i32 %regno to i64, !dbg !3269
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %0, i64 %idxprom1, !dbg !3269
  %1 = bitcast %struct.rtx_def** %arrayidx2 to i32**, !dbg !3269
  %2 = load i32*, i32** %1, align 8, !dbg !3269
  %bf.load = load i32, i32* %2, align 8, !dbg !3269
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3269
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3269
  %idxprom3 = zext i32 %bf.clear to i64, !dbg !3268
  %arrayidx4 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom, i64 %idxprom3, !dbg !3268
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !3268
  store i32 %3, i32* %nregs, align 4, !dbg !3270
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i64, i64* @ira_no_alloc_regs, align 8, !dbg !3271
  %sh_prom = zext i32 %regno to i64, !dbg !3271
  %shl = shl i64 1, %sh_prom, !dbg !3271
  %and = and i64 %4, %shl, !dbg !3271
  %tobool = icmp eq i64 %and, 0, !dbg !3271
  br i1 %tobool, label %land.lhs.true, label %if.else14, !dbg !3273

land.lhs.true:                                    ; preds = %if.else
  %5 = load i64, i64* @eliminable_regset, align 8, !dbg !3274
  %and7 = and i64 %5, %shl, !dbg !3274
  %tobool8 = icmp eq i64 %and7, 0, !dbg !3274
  br i1 %tobool8, label %if.then9, label %if.else14, !dbg !3275

if.then9:                                         ; preds = %land.lhs.true
  store i32 1, i32* %nregs, align 4, !dbg !3276
  %idxprom10 = sext i32 %regno to i64, !dbg !3278
  %arrayidx11 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom10, !dbg !3278
  %6 = load i32, i32* %arrayidx11, align 4, !dbg !3278
  %idxprom12 = zext i32 %6 to i64, !dbg !3279
  %arrayidx13 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_translate, i64 0, i64 %idxprom12, !dbg !3279
  %7 = load i32, i32* %arrayidx13, align 4, !dbg !3279
  br label %return, !dbg !3280

if.else14:                                        ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %nregs, align 4, !dbg !3281
  br label %return, !dbg !3283

return:                                           ; preds = %if.else14, %if.then9, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.else14 ], [ %7, %if.then9 ], !dbg !3284
  ret i32 %retval.0, !dbg !3285
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @loop_depth(%struct.loop* %loop) unnamed_addr #0 !dbg !3286 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3290, metadata !DIExpression()), !dbg !3291
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3292
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3292
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3292
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3292

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3292
  br label %cond.end, !dbg !3292

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3292
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3292
  ret i32 %call, !dbg !3293
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3294 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3300, metadata !DIExpression()), !dbg !3301
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3302
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3302

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3302
  %0 = load i32, i32* %num, align 8, !dbg !3302
  br label %cond.end, !dbg !3302

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3302
  ret i32 %cond, !dbg !3302
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3303 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3308, metadata !DIExpression()), !dbg !3309
  br label %land.end, !dbg !3310

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3310
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3310
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3310
  ret %struct.loop* %0, !dbg !3310
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_regno_death(i32 %regno) unnamed_addr #5 !dbg !3311 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3315, metadata !DIExpression()), !dbg !3316
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull @curr_regs_live, i32 %regno) #6, !dbg !3317
  %tobool = icmp eq i32 %call, 0, !dbg !3317
  br i1 %tobool, label %return, label %if.end, !dbg !3319

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* nonnull @curr_regs_live, i32 %regno) #6, !dbg !3320
  tail call fastcc void @change_pressure(i32 %regno, i8 zeroext 0) #8, !dbg !3321
  br label %return, !dbg !3322

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3322
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_regno_live(i32 %regno) unnamed_addr #5 !dbg !3323 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3325, metadata !DIExpression()), !dbg !3327
  %0 = load %struct.loop*, %struct.loop** @curr_loop, align 8, !dbg !3328
  call void @llvm.dbg.value(metadata %struct.loop* %0, metadata !3326, metadata !DIExpression()), !dbg !3327
  br label %for.cond, !dbg !3330

for.cond:                                         ; preds = %for.body, %entry
  %loop.0 = phi %struct.loop* [ %0, %entry ], [ %call1, %for.body ], !dbg !3331
  call void @llvm.dbg.value(metadata %struct.loop* %loop.0, metadata !3326, metadata !DIExpression()), !dbg !3327
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3332
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 4, !dbg !3332
  %2 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3332
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %2, i64 0, i32 3, !dbg !3334
  %3 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !3334
  %cmp = icmp eq %struct.loop* %loop.0, %3, !dbg !3335
  br i1 %cmp, label %for.end, label %for.body, !dbg !3336

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %loop.0, i64 0, i32 10, !dbg !3337
  %4 = bitcast i8** %aux to %struct.loop_data**, !dbg !3337
  %5 = load %struct.loop_data*, %struct.loop_data** %4, align 8, !dbg !3337
  %regs_live = getelementptr inbounds %struct.loop_data, %struct.loop_data* %5, i64 0, i32 4, !dbg !3338
  %call = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %regs_live, i32 %regno) #6, !dbg !3339
  %call1 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop.0) #8, !dbg !3340
  call void @llvm.dbg.value(metadata %struct.loop* %call1, metadata !3326, metadata !DIExpression()), !dbg !3327
  br label %for.cond, !dbg !3341, !llvm.loop !3342

for.end:                                          ; preds = %for.cond
  %call2 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull @curr_regs_live, i32 %regno) #6, !dbg !3344
  %tobool = icmp eq i32 %call2, 0, !dbg !3344
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !3346

if.end:                                           ; preds = %for.end
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull @curr_regs_live, i32 %regno) #6, !dbg !3347
  tail call fastcc void @change_pressure(i32 %regno, i8 zeroext 1) #8, !dbg !3348
  br label %cleanup.cont, !dbg !3349

cleanup.cont:                                     ; preds = %for.end, %if.end
  ret void, !dbg !3349
}

declare dso_local i32 @reg_cover_class(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3350 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3354, metadata !DIExpression()), !dbg !3355
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !3356
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !3356
  ret %struct.VEC_int_heap* %0, !dbg !3356
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !3357 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3360
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3360
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3360
  %tobool = icmp eq %struct.loops* %1, null, !dbg !3360
  br i1 %tobool, label %return, label %if.end, !dbg !3362

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3363
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3363
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3363
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !3363

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3363
  br label %cond.end, !dbg !3363

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3363
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3363
  br label %return, !dbg !3364

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !3365
  ret i32 %retval.0, !dbg !3366
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !3367 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !3373, metadata !DIExpression()), !dbg !3374
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3375
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3375

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3375
  %0 = load i32, i32* %num, align 8, !dbg !3375
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3375
  br i1 %cmp, label %if.then, label %if.else, !dbg !3377

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3378
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3378
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3378
  br label %return, !dbg !3378

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3380

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !3382
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3382
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !3382
  ret i32 %retval.0, !dbg !3377
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3383 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3389, metadata !DIExpression()), !dbg !3391
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3392
  %0 = load i32, i32* %num1, align 4, !dbg !3392
  %inc = add i32 %0, 1, !dbg !3392
  store i32 %inc, i32* %num1, align 4, !dbg !3392
  %idxprom = zext i32 %0 to i64, !dbg !3392
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3392
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3390, metadata !DIExpression()), !dbg !3391
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3392
  ret i32* %arrayidx, !dbg !3392
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @init_inv_motion_data() unnamed_addr #5 !dbg !3393 {
entry:
  store i32 1, i32* @actual_stamp, align 4, !dbg !3394
  %call = tail call fastcc %struct.VEC_invariant_p_heap* @VEC_invariant_p_heap_alloc(i32 100) #8, !dbg !3395
  store %struct.VEC_invariant_p_heap* %call, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !3396
  ret void, !dbg !3397
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_invariants(%struct.loop* %loop) unnamed_addr #5 !dbg !3398 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3400, metadata !DIExpression()), !dbg !3407
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3401, metadata !DIExpression()), !dbg !3407
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !3402, metadata !DIExpression()), !dbg !3407
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call2, metadata !3403, metadata !DIExpression()), !dbg !3407
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3411
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call3, metadata !3404, metadata !DIExpression()), !dbg !3407
  %call4 = tail call %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop* %loop) #6, !dbg !3412
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call4, metadata !3405, metadata !DIExpression()), !dbg !3407
  tail call fastcc void @find_exits(%struct.loop* %loop, %struct.basic_block_def** %call4, %struct.bitmap_head_def* %call, %struct.bitmap_head_def* %call2) #8, !dbg !3413
  tail call fastcc void @compute_always_reached(%struct.loop* %loop, %struct.basic_block_def** %call4, %struct.bitmap_head_def* %call, %struct.bitmap_head_def* %call1) #8, !dbg !3414
  tail call fastcc void @compute_always_reached(%struct.loop* %loop, %struct.basic_block_def** %call4, %struct.bitmap_head_def* %call2, %struct.bitmap_head_def* %call3) #8, !dbg !3415
  tail call fastcc void @find_defs(%struct.loop* %loop, %struct.basic_block_def** %call4) #8, !dbg !3416
  tail call fastcc void @find_invariants_body(%struct.loop* %loop, %struct.basic_block_def** %call4, %struct.bitmap_head_def* %call1, %struct.bitmap_head_def* %call3) #8, !dbg !3417
  tail call fastcc void @merge_identical_invariants() #8, !dbg !3418
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !3419
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3402, metadata !DIExpression()), !dbg !3407
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call3) #6, !dbg !3420
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3404, metadata !DIExpression()), !dbg !3407
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3421
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3401, metadata !DIExpression()), !dbg !3407
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call2) #6, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3403, metadata !DIExpression()), !dbg !3407
  %0 = bitcast %struct.basic_block_def** %call4 to i8*, !dbg !3423
  tail call void @free(i8* %0) #6, !dbg !3424
  ret void, !dbg !3425
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_invariants_to_move(i8 zeroext %speed) unnamed_addr #5 !dbg !3426 {
entry:
  %regs_needed = alloca [27 x i32], align 16
  %new_regs = alloca [27 x i32], align 16
  %inv = alloca %struct.invariant*, align 8
  call void @llvm.dbg.value(metadata i8 %speed, metadata !3430, metadata !DIExpression()), !dbg !3441
  %0 = bitcast [27 x i32]* %regs_needed to i8*, !dbg !3442
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %0) #7, !dbg !3442
  call void @llvm.dbg.declare(metadata [27 x i32]* %regs_needed, metadata !3434, metadata !DIExpression()), !dbg !3443
  %1 = bitcast [27 x i32]* %new_regs to i8*, !dbg !3442
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %1) #7, !dbg !3442
  call void @llvm.dbg.declare(metadata [27 x i32]* %new_regs, metadata !3436, metadata !DIExpression()), !dbg !3444
  %2 = bitcast %struct.invariant** %inv to i8*, !dbg !3445
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3445
  call void @llvm.dbg.value(metadata %struct.invariant* null, metadata !3437, metadata !DIExpression()), !dbg !3441
  store %struct.invariant* null, %struct.invariant** %inv, align 8, !dbg !3446
  %3 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !3447
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %3, i64 0, i32 0, !dbg !3447
  %call = tail call fastcc i32 @VEC_invariant_p_base_length(%struct.VEC_invariant_p_base* %base) #8, !dbg !3447
  %tobool1 = icmp eq i32 %call, 0, !dbg !3447
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !3449

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !3450
  %tobool2 = icmp eq i32 %4, 0, !dbg !3450
  br i1 %tobool2, label %if.else, label %if.end23, !dbg !3451

if.else:                                          ; preds = %if.end
  %5 = load %struct.df*, %struct.df** @df, align 8, !dbg !3452
  %regs_inited = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 9, !dbg !3452
  %6 = load i32, i32* %regs_inited, align 4, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %6, metadata !3438, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 2, metadata !3433, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 0, metadata !3432, metadata !DIExpression()), !dbg !3441
  %def_regs = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 5, !dbg !3454
  %use_regs = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 6, !dbg !3454
  %wide.trip.count = zext i32 %6 to i64, !dbg !3459
  br label %for.cond, !dbg !3460

for.cond:                                         ; preds = %for.inc, %if.else
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc ], [ 0, %if.else ], !dbg !3461
  %regs_used.0 = phi i32 [ %regs_used.1, %for.inc ], [ 2, %if.else ], !dbg !3462
  call void @llvm.dbg.value(metadata i32 %regs_used.0, metadata !3433, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3432, metadata !DIExpression()), !dbg !3441
  %exitcond = icmp eq i64 %indvars.iv3, %wide.trip.count, !dbg !3459
  br i1 %exitcond, label %if.end23.loopexit, label %for.body, !dbg !3463

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs, align 8, !dbg !3464
  %arrayidx = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %7, i64 %indvars.iv3, !dbg !3464
  %8 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx, align 8, !dbg !3464
  %tobool4 = icmp eq %struct.df_reg_info* %8, null, !dbg !3464
  br i1 %tobool4, label %for.body.land.lhs.true_crit_edge, label %cond.true5, !dbg !3465

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  br label %land.lhs.true, !dbg !3465

cond.true5:                                       ; preds = %for.body
  br i1 false, label %cond.true5.land.lhs.true_crit_edge, label %for.inc, !dbg !3464

cond.true5.land.lhs.true_crit_edge:               ; preds = %cond.true5
  br label %land.lhs.true, !dbg !3464

land.lhs.true:                                    ; preds = %for.body.land.lhs.true_crit_edge, %cond.true5.land.lhs.true_crit_edge
  %9 = load %struct.df_reg_info**, %struct.df_reg_info*** %use_regs, align 8, !dbg !3466
  %arrayidx12 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %9, i64 %indvars.iv3, !dbg !3466
  %10 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx12, align 8, !dbg !3466
  %tobool13 = icmp eq %struct.df_reg_info* %10, null, !dbg !3466
  br i1 %tobool13, label %for.inc, label %cond.true14, !dbg !3467

cond.true14:                                      ; preds = %land.lhs.true
  %spec.select = add i32 %regs_used.0, 1, !dbg !3466
  br label %for.inc, !dbg !3466

for.inc:                                          ; preds = %cond.true5, %land.lhs.true, %cond.true14
  %regs_used.1 = phi i32 [ %regs_used.0, %cond.true5 ], [ %regs_used.0, %land.lhs.true ], [ %spec.select, %cond.true14 ], !dbg !3453
  call void @llvm.dbg.value(metadata i32 %regs_used.1, metadata !3433, metadata !DIExpression()), !dbg !3441
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3468
  br label %for.cond, !dbg !3469, !llvm.loop !3470

if.end23.loopexit:                                ; preds = %for.cond
  %regs_used.0.lcssa = phi i32 [ %regs_used.0, %for.cond ], !dbg !3462
  call void @llvm.dbg.value(metadata i32 %regs_used.0.lcssa, metadata !3433, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 %regs_used.0.lcssa, metadata !3433, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 %regs_used.0.lcssa, metadata !3433, metadata !DIExpression()), !dbg !3441
  br label %if.end23, !dbg !3472

if.end23:                                         ; preds = %if.end23.loopexit, %if.end
  %regs_used.2 = phi i32 [ 0, %if.end ], [ %regs_used.0.lcssa, %if.end23.loopexit ], !dbg !3474
  call void @llvm.dbg.value(metadata i32 %regs_used.2, metadata !3433, metadata !DIExpression()), !dbg !3441
  br i1 %tobool2, label %if.then25, label %for.cond29.preheader, !dbg !3475

for.cond29.preheader:                             ; preds = %if.end23
  %11 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !3476
  %12 = sext i32 %11 to i64, !dbg !3480
  br label %for.cond29, !dbg !3480

if.then25:                                        ; preds = %if.end23
  %arrayidx26 = getelementptr inbounds [27 x i32], [27 x i32]* %regs_needed, i64 0, i64 0, !dbg !3481
  store i32 0, i32* %arrayidx26, align 16, !dbg !3482
  %arrayidx27 = getelementptr inbounds [27 x i32], [27 x i32]* %new_regs, i64 0, i64 0, !dbg !3483
  store i32 0, i32* %arrayidx27, align 16, !dbg !3484
  br label %if.end39, !dbg !3483

for.cond29:                                       ; preds = %for.cond29.preheader, %for.body31
  %indvars.iv1 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next2, %for.body31 ], !dbg !3485
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3432, metadata !DIExpression()), !dbg !3441
  %cmp30 = icmp slt i64 %indvars.iv1, %12, !dbg !3486
  br i1 %cmp30, label %for.body31, label %if.end39.loopexit, !dbg !3480

for.body31:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv1, !dbg !3487
  %13 = load i32, i32* %arrayidx33, align 4, !dbg !3487
  %idxprom34 = zext i32 %13 to i64, !dbg !3488
  %arrayidx35 = getelementptr inbounds [27 x i32], [27 x i32]* %new_regs, i64 0, i64 %idxprom34, !dbg !3488
  store i32 0, i32* %arrayidx35, align 4, !dbg !3489
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i32 undef, metadata !3432, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3441
  br label %for.cond29, !dbg !3491, !llvm.loop !3492

if.end39.loopexit:                                ; preds = %for.cond29
  br label %if.end39, !dbg !3494

if.end39:                                         ; preds = %if.end39.loopexit, %if.then25
  %arraydecay = getelementptr inbounds [27 x i32], [27 x i32]* %regs_needed, i64 0, i64 0, !dbg !3441
  %arraydecay40 = getelementptr inbounds [27 x i32], [27 x i32]* %new_regs, i64 0, i64 0, !dbg !3441
  br label %while.cond, !dbg !3494

while.cond:                                       ; preds = %if.end63, %if.end39
  call void @llvm.dbg.value(metadata %struct.invariant** %inv, metadata !3437, metadata !DIExpression(DW_OP_deref)), !dbg !3441
  %call41 = call fastcc i32 @best_gain_for_invariant(%struct.invariant** nonnull %inv, i32* nonnull %arraydecay, i32* nonnull %arraydecay40, i32 %regs_used.2, i8 zeroext %speed) #8, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %call41, metadata !3431, metadata !DIExpression()), !dbg !3441
  %cmp42 = icmp sgt i32 %call41, 0, !dbg !3496
  br i1 %cmp42, label %while.body, label %cleanup.loopexit, !dbg !3494

while.body:                                       ; preds = %while.cond
  %14 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.invariant* %14, metadata !3437, metadata !DIExpression()), !dbg !3441
  %invno = getelementptr inbounds %struct.invariant, %struct.invariant* %14, i64 0, i32 0, !dbg !3499
  %15 = load i32, i32* %invno, align 8, !dbg !3499
  call fastcc void @set_move_mark(i32 %15, i32 %call41) #8, !dbg !3500
  %16 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !3501
  %tobool43 = icmp eq i32 %16, 0, !dbg !3501
  br i1 %tobool43, label %if.then44, label %for.cond48.preheader, !dbg !3503

for.cond48.preheader:                             ; preds = %while.body
  %17 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !3504
  %18 = sext i32 %17 to i64, !dbg !3508
  br label %for.cond48, !dbg !3508

if.then44:                                        ; preds = %while.body
  %19 = load i32, i32* %arraydecay, align 16, !dbg !3509
  %20 = load i32, i32* %arraydecay40, align 16, !dbg !3510
  %add = add i32 %20, %19, !dbg !3510
  store i32 %add, i32* %arraydecay40, align 16, !dbg !3510
  br label %if.end63, !dbg !3511

for.cond48:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next, %for.body50 ], !dbg !3512
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3432, metadata !DIExpression()), !dbg !3441
  %cmp49 = icmp slt i64 %indvars.iv, %18, !dbg !3513
  br i1 %cmp49, label %for.body50, label %if.end63.loopexit, !dbg !3508

for.body50:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv, !dbg !3514
  %21 = load i32, i32* %arrayidx52, align 4, !dbg !3514
  %idxprom53 = zext i32 %21 to i64, !dbg !3515
  %arrayidx54 = getelementptr inbounds [27 x i32], [27 x i32]* %regs_needed, i64 0, i64 %idxprom53, !dbg !3515
  %22 = load i32, i32* %arrayidx54, align 4, !dbg !3515
  %arrayidx58 = getelementptr inbounds [27 x i32], [27 x i32]* %new_regs, i64 0, i64 %idxprom53, !dbg !3516
  %23 = load i32, i32* %arrayidx58, align 4, !dbg !3517
  %add59 = add i32 %23, %22, !dbg !3517
  store i32 %add59, i32* %arrayidx58, align 4, !dbg !3517
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3518
  call void @llvm.dbg.value(metadata i32 undef, metadata !3432, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3441
  br label %for.cond48, !dbg !3519, !llvm.loop !3520

if.end63.loopexit:                                ; preds = %for.cond48
  br label %if.end63, !dbg !3494

if.end63:                                         ; preds = %if.end63.loopexit, %if.then44
  br label %while.cond, !dbg !3494, !llvm.loop !3522

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup, !dbg !3524

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %1) #7, !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %0) #7, !dbg !3524
  ret void, !dbg !3524
}

declare dso_local zeroext i8 @optimize_loop_for_speed_p(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @move_invariants(%struct.loop* %loop) unnamed_addr #5 !dbg !3525 {
entry:
  %inv = alloca %struct.invariant*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3527, metadata !DIExpression()), !dbg !3530
  %0 = bitcast %struct.invariant** %inv to i8*, !dbg !3531
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3531
  call void @llvm.dbg.value(metadata i32 0, metadata !3529, metadata !DIExpression()), !dbg !3530
  br label %for.cond, !dbg !3532

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3534
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3529, metadata !DIExpression()), !dbg !3530
  %1 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !3535
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %1, i64 0, i32 0, !dbg !3535
  call void @llvm.dbg.value(metadata %struct.invariant** %inv, metadata !3528, metadata !DIExpression(DW_OP_deref)), !dbg !3530
  %call = call fastcc i32 @VEC_invariant_p_base_iterate(%struct.VEC_invariant_p_base* %base, i32 %i.0, %struct.invariant** nonnull %inv) #8, !dbg !3535
  %tobool1 = icmp eq i32 %call, 0, !dbg !3537
  br i1 %tobool1, label %for.end, label %for.body, !dbg !3537

for.body:                                         ; preds = %for.cond
  %call2 = call fastcc zeroext i8 @move_invariant_reg(%struct.loop* %loop, i32 %i.0) #8, !dbg !3538
  %inc = add i32 %i.0, 1, !dbg !3539
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3529, metadata !DIExpression()), !dbg !3530
  br label %for.cond, !dbg !3540, !llvm.loop !3541

for.end:                                          ; preds = %for.cond
  %2 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !3543
  %tobool3 = icmp eq i32 %2, 0, !dbg !3543
  br i1 %tobool3, label %if.end35, label %land.lhs.true, !dbg !3545

land.lhs.true:                                    ; preds = %for.end
  %call4 = call zeroext i8 @resize_reg_info() #6, !dbg !3546
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3546
  br i1 %tobool5, label %if.end35, label %for.cond6.preheader, !dbg !3547

for.cond6.preheader:                              ; preds = %land.lhs.true
  br label %for.cond6, !dbg !3548

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc32
  %i.1 = phi i32 [ %inc33, %for.inc32 ], [ 0, %for.cond6.preheader ], !dbg !3551
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3529, metadata !DIExpression()), !dbg !3530
  %3 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !3552
  %base9 = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %3, i64 0, i32 0, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.invariant** %inv, metadata !3528, metadata !DIExpression(DW_OP_deref)), !dbg !3530
  %call13 = call fastcc i32 @VEC_invariant_p_base_iterate(%struct.VEC_invariant_p_base* %base9, i32 %i.1, %struct.invariant** nonnull %inv) #8, !dbg !3552
  %tobool14 = icmp eq i32 %call13, 0, !dbg !3548
  br i1 %tobool14, label %if.end35.loopexit, label %for.body15, !dbg !3548

for.body15:                                       ; preds = %for.cond6
  %4 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3554
  call void @llvm.dbg.value(metadata %struct.invariant* %4, metadata !3528, metadata !DIExpression()), !dbg !3530
  %reg = getelementptr inbounds %struct.invariant, %struct.invariant* %4, i64 0, i32 2, !dbg !3556
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !3556
  %cmp = icmp eq %struct.rtx_def* %5, null, !dbg !3557
  br i1 %cmp, label %for.inc32, label %if.then17, !dbg !3558

if.then17:                                        ; preds = %for.body15
  call void @llvm.dbg.value(metadata %struct.invariant* %4, metadata !3528, metadata !DIExpression()), !dbg !3530
  %orig_regno = getelementptr inbounds %struct.invariant, %struct.invariant* %4, i64 0, i32 3, !dbg !3559
  %6 = load i32, i32* %orig_regno, align 8, !dbg !3559
  %cmp18 = icmp sgt i32 %6, -1, !dbg !3562
  call void @llvm.dbg.value(metadata %struct.invariant* %4, metadata !3528, metadata !DIExpression()), !dbg !3530
  %call22 = call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %5) #8, !dbg !3563
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !3564

if.then20:                                        ; preds = %if.then17
  %7 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3565
  call void @llvm.dbg.value(metadata %struct.invariant* %7, metadata !3528, metadata !DIExpression()), !dbg !3530
  %orig_regno23 = getelementptr inbounds %struct.invariant, %struct.invariant* %7, i64 0, i32 3, !dbg !3566
  %8 = load i32, i32* %orig_regno23, align 8, !dbg !3566
  %call24 = call i32 @reg_preferred_class(i32 %8) #6, !dbg !3567
  %9 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3568
  call void @llvm.dbg.value(metadata %struct.invariant* %9, metadata !3528, metadata !DIExpression()), !dbg !3530
  %orig_regno25 = getelementptr inbounds %struct.invariant, %struct.invariant* %9, i64 0, i32 3, !dbg !3569
  %10 = load i32, i32* %orig_regno25, align 8, !dbg !3569
  %call26 = call i32 @reg_alternate_class(i32 %10) #6, !dbg !3570
  %11 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.invariant* %11, metadata !3528, metadata !DIExpression()), !dbg !3530
  %orig_regno27 = getelementptr inbounds %struct.invariant, %struct.invariant* %11, i64 0, i32 3, !dbg !3572
  %12 = load i32, i32* %orig_regno27, align 8, !dbg !3572
  %call28 = call i32 @reg_cover_class(i32 %12) #6, !dbg !3573
  call void @setup_reg_classes(i32 %call22, i32 %call24, i32 %call26, i32 %call28) #6, !dbg !3574
  br label %for.inc32, !dbg !3574

if.else:                                          ; preds = %if.then17
  call void @setup_reg_classes(i32 %call22, i32 13, i32 0, i32 13) #6, !dbg !3575
  br label %for.inc32

for.inc32:                                        ; preds = %for.body15, %if.else, %if.then20
  %inc33 = add i32 %i.1, 1, !dbg !3576
  call void @llvm.dbg.value(metadata i32 %inc33, metadata !3529, metadata !DIExpression()), !dbg !3530
  br label %for.cond6, !dbg !3577, !llvm.loop !3578

if.end35.loopexit:                                ; preds = %for.cond6
  br label %if.end35, !dbg !3580

if.end35:                                         ; preds = %if.end35.loopexit, %land.lhs.true, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3580
  ret void, !dbg !3580
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_inv_motion_data() unnamed_addr #5 !dbg !3581 {
entry:
  %inv = alloca %struct.invariant*, align 8
  %0 = bitcast %struct.invariant** %inv to i8*, !dbg !3586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3586
  tail call fastcc void @check_invariant_table_size() #8, !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3588
  %1 = bitcast %struct.invariant** %inv to i64*, !dbg !3589
  br label %for.cond, !dbg !3593

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3594
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3583, metadata !DIExpression()), !dbg !3588
  %2 = load %struct.df*, %struct.df** @df, align 8, !dbg !3595
  %table_size = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 3, i32 4, !dbg !3595
  %3 = load i32, i32* %table_size, align 4, !dbg !3595
  %4 = zext i32 %3 to i64, !dbg !3596
  %cmp = icmp ult i64 %indvars.iv, %4, !dbg !3596
  br i1 %cmp, label %for.body, label %for.cond5.preheader, !dbg !3597

for.cond5.preheader:                              ; preds = %for.cond
  br label %for.cond5, !dbg !3598

for.body:                                         ; preds = %for.cond
  %5 = load %struct.invariant**, %struct.invariant*** @invariant_table, align 8, !dbg !3600
  %arrayidx = getelementptr inbounds %struct.invariant*, %struct.invariant** %5, i64 %indvars.iv, !dbg !3600
  %6 = bitcast %struct.invariant** %arrayidx to i64*, !dbg !3600
  %7 = load i64, i64* %6, align 8, !dbg !3600
  store i64 %7, i64* %1, align 8, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %7, metadata !3585, metadata !DIExpression()), !dbg !3588
  %tobool = icmp eq i64 %7, 0, !dbg !3602
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3604

if.then:                                          ; preds = %for.body
  %8 = inttoptr i64 %7 to %struct.invariant*, !dbg !3604
  call void @llvm.dbg.value(metadata %struct.invariant* %8, metadata !3585, metadata !DIExpression()), !dbg !3588
  %def1 = getelementptr inbounds %struct.invariant, %struct.invariant* %8, i64 0, i32 4, !dbg !3605
  %9 = load %struct.def*, %struct.def** %def1, align 8, !dbg !3605
  call void @llvm.dbg.value(metadata %struct.def* %9, metadata !3584, metadata !DIExpression()), !dbg !3588
  %cmp2 = icmp eq %struct.def* %9, null, !dbg !3607
  br i1 %cmp2, label %cond.true, label %cond.end, !dbg !3607

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 1533, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3607
  br label %cond.end, !dbg !3607

cond.end:                                         ; preds = %if.then, %cond.true
  %uses = getelementptr inbounds %struct.def, %struct.def* %9, i64 0, i32 0, !dbg !3608
  %10 = load %struct.use*, %struct.use** %uses, align 8, !dbg !3608
  tail call fastcc void @free_use_list(%struct.use* %10) #8, !dbg !3609
  %11 = bitcast %struct.def* %9 to i8*, !dbg !3610
  tail call void @free(i8* %11) #6, !dbg !3611
  %12 = load %struct.invariant**, %struct.invariant*** @invariant_table, align 8, !dbg !3612
  %arrayidx4 = getelementptr inbounds %struct.invariant*, %struct.invariant** %12, i64 %indvars.iv, !dbg !3612
  store %struct.invariant* null, %struct.invariant** %arrayidx4, align 8, !dbg !3613
  br label %for.inc, !dbg !3614

for.inc:                                          ; preds = %for.body, %cond.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3615
  br label %for.cond, !dbg !3616, !llvm.loop !3617

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body12
  %i.1 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond5.preheader ], !dbg !3619
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3583, metadata !DIExpression()), !dbg !3588
  %13 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !3620
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %13, i64 0, i32 0, !dbg !3620
  call void @llvm.dbg.value(metadata %struct.invariant** %inv, metadata !3585, metadata !DIExpression(DW_OP_deref)), !dbg !3588
  %call = call fastcc i32 @VEC_invariant_p_base_iterate(%struct.VEC_invariant_p_base* %base, i32 %i.1, %struct.invariant** nonnull %inv) #8, !dbg !3620
  %tobool11 = icmp eq i32 %call, 0, !dbg !3598
  br i1 %tobool11, label %for.end16, label %for.body12, !dbg !3598

for.body12:                                       ; preds = %for.cond5
  %14 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3622
  call void @llvm.dbg.value(metadata %struct.invariant* %14, metadata !3585, metadata !DIExpression()), !dbg !3588
  %depends_on = getelementptr inbounds %struct.invariant, %struct.invariant* %14, i64 0, i32 10, !dbg !3622
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %depends_on, align 8, !dbg !3622
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %15) #6, !dbg !3622
  %16 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3622
  call void @llvm.dbg.value(metadata %struct.invariant* %16, metadata !3585, metadata !DIExpression()), !dbg !3588
  %depends_on13 = getelementptr inbounds %struct.invariant, %struct.invariant* %16, i64 0, i32 10, !dbg !3622
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %depends_on13, align 8, !dbg !3622
  %.cast = bitcast %struct.invariant* %16 to i8*, !dbg !3624
  call void @free(i8* %.cast) #6, !dbg !3625
  %inc15 = add i32 %i.1, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !3583, metadata !DIExpression()), !dbg !3588
  br label %for.cond5, !dbg !3627, !llvm.loop !3628

for.end16:                                        ; preds = %for.cond5
  call fastcc void @VEC_invariant_p_heap_free(%struct.VEC_invariant_p_heap** nonnull @invariants) #8, !dbg !3630
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3631
  ret void, !dbg !3631
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_invariant_p_heap* @VEC_invariant_p_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3632 {
entry:
  call void @llvm.dbg.value(metadata i32 100, metadata !3636, metadata !DIExpression()), !dbg !3637
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 100) #6, !dbg !3638
  %0 = bitcast i8* %call to %struct.VEC_invariant_p_heap*, !dbg !3638
  ret %struct.VEC_invariant_p_heap* %0, !dbg !3638
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_exits(%struct.loop* %loop, %struct.basic_block_def** %body, %struct.bitmap_head_def* %may_exit, %struct.bitmap_head_def* %has_exit) unnamed_addr #5 !dbg !3639 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3643, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %body, metadata !3644, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %may_exit, metadata !3645, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %has_exit, metadata !3646, metadata !DIExpression()), !dbg !3660
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3661
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3661
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3662
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3662
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8 0, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 0, metadata !3647, metadata !DIExpression()), !dbg !3660
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3663
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3666
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3666
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3666
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3671
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3671
  br label %for.cond, !dbg !3673

for.cond:                                         ; preds = %for.inc78, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc78 ], [ 0, %entry ], !dbg !3674
  %outermost_exit.0 = phi %struct.loop* [ %outermost_exit.5, %for.inc78 ], [ %loop, %entry ], !dbg !3675
  %has_call.0 = phi i8 [ %has_call.3, %for.inc78 ], [ 0, %entry ], !dbg !3660
  call void @llvm.dbg.value(metadata i8 %has_call.0, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.0, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3647, metadata !DIExpression()), !dbg !3660
  %7 = load i32, i32* %num_nodes, align 4, !dbg !3676
  %8 = zext i32 %7 to i64, !dbg !3677
  %cmp = icmp ult i64 %indvars.iv, %8, !dbg !3677
  br i1 %cmp, label %for.body, label %for.end79, !dbg !3678

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %body, i64 %indvars.iv, !dbg !3679
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3679
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 3, !dbg !3680
  %10 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3680
  %cmp1 = icmp eq %struct.loop* %10, %loop, !dbg !3681
  br i1 %cmp1, label %if.then, label %if.end47, !dbg !3682

if.then:                                          ; preds = %for.body
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 7, !dbg !3683
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3683
  %11 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3683
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %11, i64 0, i32 0, !dbg !3683
  br label %for.cond4, !dbg !3683

for.cond4:                                        ; preds = %for.inc, %if.then
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.then ], [ %rt_rtx28, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3659, metadata !DIExpression()), !dbg !3660
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3686
  br i1 %tobool, label %for.end.loopexit, label %land.rhs, !dbg !3686

land.rhs:                                         ; preds = %for.cond4
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %11, i64 0, i32 1, !dbg !3686
  %12 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3686
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3686
  %rt_rtx = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !3686
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3686
  %cmp10 = icmp eq %struct.rtx_def* %insn.0, %14, !dbg !3686
  br i1 %cmp10, label %for.end.loopexit, label %for.body11, !dbg !3683

for.body11:                                       ; preds = %land.rhs
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3688
  %bf.load = load i32, i32* %15, align 8, !dbg !3688
  %bf.clear = and i32 %bf.load, 65535, !dbg !3688
  %cmp12 = icmp eq i32 %bf.clear, 10, !dbg !3688
  br i1 %cmp12, label %land.lhs.true, label %for.inc, !dbg !3691

land.lhs.true:                                    ; preds = %for.body11
  %bf.clear14 = and i32 %bf.load, 33554432, !dbg !3692
  %tobool15 = icmp eq i32 %bf.clear14, 0, !dbg !3692
  br i1 %tobool15, label %lor.lhs.false, label %if.then24, !dbg !3693

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bf.clear18 = and i32 %bf.load, 67108864, !dbg !3694
  %tobool19 = icmp eq i32 %bf.clear18, 0, !dbg !3694
  br i1 %tobool19, label %lor.lhs.false20, label %for.inc, !dbg !3694

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %tobool23 = icmp slt i32 %bf.load, 0, !dbg !3694
  br i1 %tobool23, label %for.inc, label %if.then24, !dbg !3695

if.then24:                                        ; preds = %land.lhs.true, %lor.lhs.false20
  call void @llvm.dbg.value(metadata i8 1, metadata !3658, metadata !DIExpression()), !dbg !3660
  %16 = trunc i64 %indvars.iv to i32, !dbg !3696
  %call = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %may_exit, i32 %16) #6, !dbg !3696
  %.pre5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3698
  br label %for.end, !dbg !3699

for.inc:                                          ; preds = %lor.lhs.false, %for.body11, %lor.lhs.false20
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3686
  %rt_rtx28 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**, !dbg !3686
  br label %for.cond4, !dbg !3686, !llvm.loop !3700

for.end.loopexit:                                 ; preds = %for.cond4, %land.rhs
  br label %for.end, !dbg !3698

for.end:                                          ; preds = %for.end.loopexit, %if.then24
  %18 = phi %struct.basic_block_def* [ %.pre5, %if.then24 ], [ %9, %for.end.loopexit ], !dbg !3698
  %has_call.1 = phi i8 [ 1, %if.then24 ], [ %has_call.0, %for.end.loopexit ], !dbg !3660
  call void @llvm.dbg.value(metadata i8 %has_call.1, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3698
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 1, !dbg !3698
  %call31 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3698
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call31, 0, !dbg !3698
  store i32 %19, i32* %3, align 8, !dbg !3698
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call31, 1, !dbg !3698
  store %struct.VEC_edge_gc** %20, %struct.VEC_edge_gc*** %4, align 8, !dbg !3698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3698
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3698
  br label %for.cond32, !dbg !3698

for.cond32:                                       ; preds = %for.inc45, %for.end
  %outermost_exit.1 = phi %struct.loop* [ %outermost_exit.0, %for.end ], [ %outermost_exit.2, %for.inc45 ], !dbg !3675
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.1, metadata !3656, metadata !DIExpression()), !dbg !3660
  %21 = load i32, i32* %5, align 8, !dbg !3702
  %22 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3702
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3655, metadata !DIExpression(DW_OP_deref)), !dbg !3660
  %call33 = call fastcc zeroext i8 @ei_cond(i32 %21, %struct.VEC_edge_gc** %22, %struct.edge_def** nonnull %e) #8, !dbg !3702
  %tobool34 = icmp eq i8 %call33, 0, !dbg !3698
  br i1 %tobool34, label %for.inc78.loopexit, label %for.body35, !dbg !3698

for.body35:                                       ; preds = %for.cond32
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3703
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3655, metadata !DIExpression()), !dbg !3660
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 1, !dbg !3706
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3706
  %call36 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %24) #6, !dbg !3707
  %tobool37 = icmp eq i8 %call36, 0, !dbg !3707
  br i1 %tobool37, label %if.end39, label %for.inc45, !dbg !3708

if.end39:                                         ; preds = %for.body35
  %25 = trunc i64 %indvars.iv to i32, !dbg !3709
  %call40 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %may_exit, i32 %25) #6, !dbg !3709
  %26 = trunc i64 %indvars.iv to i32, !dbg !3710
  %call41 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %has_exit, i32 %26) #6, !dbg !3710
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3711
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3655, metadata !DIExpression()), !dbg !3660
  %dest42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i64 0, i32 1, !dbg !3712
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest42, align 8, !dbg !3712
  %loop_father43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 3, !dbg !3713
  %29 = load %struct.loop*, %struct.loop** %loop_father43, align 8, !dbg !3713
  %call44 = call %struct.loop* @find_common_loop(%struct.loop* %outermost_exit.1, %struct.loop* %29) #6, !dbg !3714
  call void @llvm.dbg.value(metadata %struct.loop* %call44, metadata !3656, metadata !DIExpression()), !dbg !3660
  br label %for.inc45, !dbg !3715

for.inc45:                                        ; preds = %for.body35, %if.end39
  %outermost_exit.2 = phi %struct.loop* [ %call44, %if.end39 ], [ %outermost_exit.1, %for.body35 ], !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.2, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3648, metadata !DIExpression(DW_OP_deref)), !dbg !3660
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3702
  br label %for.cond32, !dbg !3702, !llvm.loop !3716

if.end47:                                         ; preds = %for.body
  %header = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 2, !dbg !3718
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3718
  %cmp53 = icmp eq %struct.basic_block_def* %30, %9, !dbg !3720
  br i1 %cmp53, label %if.end55, label %for.inc78, !dbg !3721

if.end55:                                         ; preds = %if.end47
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 10, !dbg !3722
  %31 = bitcast i8** %aux to %struct.loop_data**, !dbg !3722
  %32 = load %struct.loop_data*, %struct.loop_data** %31, align 8, !dbg !3722
  %has_call59 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %32, i64 0, i32 1, !dbg !3724
  %33 = load i8, i8* %has_call59, align 8, !dbg !3724
  %tobool60 = icmp eq i8 %33, 0, !dbg !3722
  br i1 %tobool60, label %if.end63, label %if.then61, !dbg !3725

if.then61:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata i8 1, metadata !3658, metadata !DIExpression()), !dbg !3660
  %34 = trunc i64 %indvars.iv to i32, !dbg !3726
  %call62 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %may_exit, i32 %34) #6, !dbg !3726
  %.pre1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3728
  %loop_father66.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pre1, i64 0, i32 3, !dbg !3729
  %.pre2 = load %struct.loop*, %struct.loop** %loop_father66.phi.trans.insert, align 8, !dbg !3728
  %aux67.phi.trans.insert = getelementptr inbounds %struct.loop, %struct.loop* %.pre2, i64 0, i32 10, !dbg !3729
  %.phi.trans.insert3 = bitcast i8** %aux67.phi.trans.insert to %struct.loop_data**, !dbg !3729
  %.pre4 = load %struct.loop_data*, %struct.loop_data** %.phi.trans.insert3, align 8, !dbg !3728
  br label %if.end63, !dbg !3730

if.end63:                                         ; preds = %if.end55, %if.then61
  %35 = phi %struct.loop_data* [ %.pre4, %if.then61 ], [ %32, %if.end55 ], !dbg !3728
  %has_call.2 = phi i8 [ 1, %if.then61 ], [ %has_call.0, %if.end55 ], !dbg !3660
  call void @llvm.dbg.value(metadata i8 %has_call.2, metadata !3658, metadata !DIExpression()), !dbg !3660
  %outermost_exit68 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %35, i64 0, i32 0, !dbg !3731
  %36 = load %struct.loop*, %struct.loop** %outermost_exit68, align 8, !dbg !3731
  call void @llvm.dbg.value(metadata %struct.loop* %36, metadata !3657, metadata !DIExpression()), !dbg !3660
  %cmp69 = icmp eq %struct.loop* %36, %loop, !dbg !3732
  br i1 %cmp69, label %for.inc78, label %if.then70, !dbg !3734

if.then70:                                        ; preds = %if.end63
  %37 = trunc i64 %indvars.iv to i32, !dbg !3735
  %call71 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %may_exit, i32 %37) #6, !dbg !3735
  %38 = trunc i64 %indvars.iv to i32, !dbg !3737
  %call72 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %has_exit, i32 %38) #6, !dbg !3737
  %call73 = call zeroext i8 @flow_loop_nested_p(%struct.loop* %36, %struct.loop* %outermost_exit.0) #6, !dbg !3738
  %tobool74 = icmp eq i8 %call73, 0, !dbg !3738
  %spec.select = select i1 %tobool74, %struct.loop* %outermost_exit.0, %struct.loop* %36, !dbg !3740
  call void @llvm.dbg.value(metadata %struct.loop* %spec.select, metadata !3656, metadata !DIExpression()), !dbg !3660
  br label %for.inc78, !dbg !3741

for.inc78.loopexit:                               ; preds = %for.cond32
  %outermost_exit.1.lcssa = phi %struct.loop* [ %outermost_exit.1, %for.cond32 ], !dbg !3675
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.1.lcssa, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.1.lcssa, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.1.lcssa, metadata !3656, metadata !DIExpression()), !dbg !3660
  br label %for.inc78, !dbg !3742

for.inc78:                                        ; preds = %for.inc78.loopexit, %if.end63, %if.end47, %if.then70
  %outermost_exit.5 = phi %struct.loop* [ %outermost_exit.0, %if.end47 ], [ %spec.select, %if.then70 ], [ %outermost_exit.0, %if.end63 ], [ %outermost_exit.1.lcssa, %for.inc78.loopexit ], !dbg !3660
  %has_call.3 = phi i8 [ %has_call.0, %if.end47 ], [ %has_call.2, %if.then70 ], [ %has_call.2, %if.end63 ], [ %has_call.1, %for.inc78.loopexit ], !dbg !3660
  call void @llvm.dbg.value(metadata i8 %has_call.3, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.5, metadata !3656, metadata !DIExpression()), !dbg !3660
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3742
  br label %for.cond, !dbg !3743, !llvm.loop !3744

for.end79:                                        ; preds = %for.cond
  %outermost_exit.0.lcssa = phi %struct.loop* [ %outermost_exit.0, %for.cond ], !dbg !3675
  %has_call.0.lcssa = phi i8 [ %has_call.0, %for.cond ], !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.0.lcssa, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8 %has_call.0.lcssa, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.0.lcssa, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8 %has_call.0.lcssa, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata %struct.loop* %outermost_exit.0.lcssa, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8 %has_call.0.lcssa, metadata !3658, metadata !DIExpression()), !dbg !3660
  %aux80 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 10, !dbg !3746
  %39 = load i8*, i8** %aux80, align 8, !dbg !3746
  %cmp81 = icmp eq i8* %39, null, !dbg !3748
  br i1 %cmp81, label %if.then82, label %for.end79.if.end87_crit_edge, !dbg !3749

for.end79.if.end87_crit_edge:                     ; preds = %for.end79
  %40 = bitcast i8* %39 to %struct.loop_data*, !dbg !3749
  %.pre6 = bitcast i8** %aux80 to %struct.loop_data**, !dbg !3750
  br label %if.end87, !dbg !3749

if.then82:                                        ; preds = %for.end79
  %call83 = call i8* @xcalloc(i64 1, i64 184) #6, !dbg !3751
  store i8* %call83, i8** %aux80, align 8, !dbg !3753
  %regs_ref = getelementptr inbounds i8, i8* %call83, i64 120, !dbg !3754
  %41 = bitcast i8* %regs_ref to %struct.bitmap_head_def*, !dbg !3754
  call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull %41, %struct.bitmap_obstack* nonnull @reg_obstack) #8, !dbg !3754
  %42 = bitcast i8** %aux80 to %struct.loop_data**, !dbg !3755
  %43 = load %struct.loop_data*, %struct.loop_data** %42, align 8, !dbg !3755
  %regs_live = getelementptr inbounds %struct.loop_data, %struct.loop_data* %43, i64 0, i32 4, !dbg !3755
  call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull %regs_live, %struct.bitmap_obstack* nonnull @reg_obstack) #8, !dbg !3755
  %.pre = load %struct.loop_data*, %struct.loop_data** %42, align 8, !dbg !3750
  br label %if.end87, !dbg !3756

if.end87:                                         ; preds = %for.end79.if.end87_crit_edge, %if.then82
  %.pre-phi7 = phi %struct.loop_data** [ %.pre6, %for.end79.if.end87_crit_edge ], [ %42, %if.then82 ], !dbg !3750
  %44 = phi %struct.loop_data* [ %40, %for.end79.if.end87_crit_edge ], [ %.pre, %if.then82 ], !dbg !3750
  %outermost_exit89 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %44, i64 0, i32 0, !dbg !3757
  store %struct.loop* %outermost_exit.0.lcssa, %struct.loop** %outermost_exit89, align 8, !dbg !3758
  %45 = load %struct.loop_data*, %struct.loop_data** %.pre-phi7, align 8, !dbg !3759
  %has_call91 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %45, i64 0, i32 1, !dbg !3760
  store i8 %has_call.0.lcssa, i8* %has_call91, align 8, !dbg !3761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3762
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3762
  ret void, !dbg !3762
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_always_reached(%struct.loop* %loop, %struct.basic_block_def** %body, %struct.bitmap_head_def* %may_exit, %struct.bitmap_head_def* %always_reached) unnamed_addr #5 !dbg !3763 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3765, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %body, metadata !3766, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %may_exit, metadata !3767, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %always_reached, metadata !3768, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i32 0, metadata !3769, metadata !DIExpression()), !dbg !3770
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3771
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3774
  br label %for.cond, !dbg !3777

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3778
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3769, metadata !DIExpression()), !dbg !3770
  %0 = load i32, i32* %num_nodes, align 4, !dbg !3779
  %1 = zext i32 %0 to i64, !dbg !3780
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3780
  br i1 %cmp, label %for.body, label %cleanup.cont, !dbg !3781

for.body:                                         ; preds = %for.cond
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3782
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %body, i64 %indvars.iv, !dbg !3783
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3783
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %2, %struct.basic_block_def* %3) #6, !dbg !3784
  %tobool = icmp eq i8 %call, 0, !dbg !3784
  br i1 %tobool, label %if.end, label %if.then, !dbg !3785

if.then:                                          ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32, !dbg !3786
  %call1 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %always_reached, i32 %4) #6, !dbg !3786
  br label %if.end, !dbg !3786

if.end:                                           ; preds = %for.body, %if.then
  %5 = trunc i64 %indvars.iv to i32, !dbg !3787
  %call2 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %may_exit, i32 %5) #6, !dbg !3787
  %tobool3 = icmp eq i32 %call2, 0, !dbg !3787
  br i1 %tobool3, label %for.inc, label %cleanup.cont, !dbg !3789

for.inc:                                          ; preds = %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3790
  br label %for.cond, !dbg !3791, !llvm.loop !3792

cleanup.cont:                                     ; preds = %if.end, %for.cond
  ret void, !dbg !3794
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_defs(%struct.loop* %loop, %struct.basic_block_def** %body) unnamed_addr #5 !dbg !3795 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3799, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %body, metadata !3800, metadata !DIExpression()), !dbg !3803
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3804
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 0, metadata !3801, metadata !DIExpression()), !dbg !3803
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3805
  br label %for.cond, !dbg !3808

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3809
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3801, metadata !DIExpression()), !dbg !3803
  %0 = load i32, i32* %num_nodes, align 4, !dbg !3810
  %1 = zext i32 %0 to i64, !dbg !3811
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3811
  br i1 %cmp, label %for.body, label %for.end, !dbg !3812

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %body, i64 %indvars.iv, !dbg !3813
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3813
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !3814
  %3 = load i32, i32* %index, align 8, !dbg !3814
  %call1 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %3) #6, !dbg !3815
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3816
  br label %for.cond, !dbg !3817, !llvm.loop !3818

for.end:                                          ; preds = %for.cond
  %4 = load %struct.df*, %struct.df** @df, align 8, !dbg !3820
  %arrayidx2 = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 1, i64 4, !dbg !3820
  %5 = load %struct.dataflow*, %struct.dataflow** %arrayidx2, align 8, !dbg !3820
  tail call void @df_remove_problem(%struct.dataflow* %5) #6, !dbg !3821
  tail call void @df_process_deferred_rescans() #6, !dbg !3822
  tail call void @df_chain_add_problem(i32 2) #6, !dbg !3823
  tail call void @df_set_blocks(%struct.bitmap_head_def* %call) #6, !dbg !3824
  tail call void @df_analyze() #6, !dbg !3825
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3826
  %tobool = icmp eq %struct._IO_FILE* %6, null, !dbg !3826
  br i1 %tobool, label %if.end, label %if.then, !dbg !3828

if.then:                                          ; preds = %for.end
  tail call void @df_dump_region(%struct._IO_FILE* nonnull %6) #6, !dbg !3829
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3831
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3832
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3833
  %call4 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3834
  tail call void @print_rtl_with_bb(%struct._IO_FILE* %8, %struct.rtx_def* %call4) #6, !dbg !3835
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3836
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3837
  br label %if.end, !dbg !3838

if.end:                                           ; preds = %for.end, %if.then
  tail call fastcc void @check_invariant_table_size() #8, !dbg !3839
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3840
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3802, metadata !DIExpression()), !dbg !3803
  ret void, !dbg !3841
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_invariants_body(%struct.loop* %loop, %struct.basic_block_def** %body, %struct.bitmap_head_def* %always_reached, %struct.bitmap_head_def* %always_executed) unnamed_addr #5 !dbg !3842 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3844, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %body, metadata !3845, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %always_reached, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %always_executed, metadata !3847, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i32 0, metadata !3848, metadata !DIExpression()), !dbg !3849
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3850
  br label %for.cond, !dbg !3853

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3854
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3848, metadata !DIExpression()), !dbg !3849
  %0 = load i32, i32* %num_nodes, align 4, !dbg !3855
  %1 = zext i32 %0 to i64, !dbg !3856
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3856
  br i1 %cmp, label %for.body, label %for.end, !dbg !3857

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %body, i64 %indvars.iv, !dbg !3858
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3858
  %3 = trunc i64 %indvars.iv to i32, !dbg !3859
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %always_reached, i32 %3) #6, !dbg !3859
  %conv = trunc i32 %call to i8, !dbg !3859
  %4 = trunc i64 %indvars.iv to i32, !dbg !3860
  %call1 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %always_executed, i32 %4) #6, !dbg !3860
  %conv2 = trunc i32 %call1 to i8, !dbg !3860
  tail call fastcc void @find_invariants_bb(%struct.basic_block_def* %2, i8 zeroext %conv, i8 zeroext %conv2) #8, !dbg !3861
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3862
  br label %for.cond, !dbg !3863, !llvm.loop !3864

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3866
}

; Function Attrs: nounwind uwtable
define internal fastcc void @merge_identical_invariants() unnamed_addr #5 !dbg !3867 {
entry:
  %inv = alloca %struct.invariant*, align 8
  %0 = bitcast %struct.invariant** %inv to i8*, !dbg !3872
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3872
  %1 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !3873
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %1, i64 0, i32 0, !dbg !3873
  %call = tail call fastcc i32 @VEC_invariant_p_base_length(%struct.VEC_invariant_p_base* %base) #8, !dbg !3873
  %conv = zext i32 %call to i64, !dbg !3873
  %call1 = tail call %struct.htab* @htab_create(i64 %conv, i32 (i8*)* nonnull @hash_invariant_expr, i32 (i8*, i8*)* nonnull @eq_invariant_expr, void (i8*)* nonnull @free) #6, !dbg !3874
  call void @llvm.dbg.value(metadata %struct.htab* %call1, metadata !3871, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()), !dbg !3875
  br label %for.cond, !dbg !3876

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3878
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3869, metadata !DIExpression()), !dbg !3875
  %2 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !3879
  %base4 = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %2, i64 0, i32 0, !dbg !3879
  call void @llvm.dbg.value(metadata %struct.invariant** %inv, metadata !3870, metadata !DIExpression(DW_OP_deref)), !dbg !3875
  %call8 = call fastcc i32 @VEC_invariant_p_base_iterate(%struct.VEC_invariant_p_base* %base4, i32 %i.0, %struct.invariant** nonnull %inv) #8, !dbg !3879
  %tobool9 = icmp eq i32 %call8, 0, !dbg !3881
  br i1 %tobool9, label %for.end, label %for.body, !dbg !3881

for.body:                                         ; preds = %for.cond
  %3 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !3882
  call void @llvm.dbg.value(metadata %struct.invariant* %3, metadata !3870, metadata !DIExpression()), !dbg !3875
  call fastcc void @find_identical_invariants(%struct.htab* %call1, %struct.invariant* %3) #8, !dbg !3883
  %inc = add i32 %i.0, 1, !dbg !3884
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3869, metadata !DIExpression()), !dbg !3875
  br label %for.cond, !dbg !3885, !llvm.loop !3886

for.end:                                          ; preds = %for.cond
  call void @htab_delete(%struct.htab* %call1) #6, !dbg !3888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3889
  ret void, !dbg !3889
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3890 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3894, metadata !DIExpression()), !dbg !3896
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3897
  store i32 0, i32* %index, align 8, !dbg !3898
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3899
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3900
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3901
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3901
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3901
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3902 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3908, metadata !DIExpression()), !dbg !3909
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3910
  %tobool = icmp eq i8 %call, 0, !dbg !3910
  br i1 %tobool, label %if.then, label %if.else, !dbg !3912

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3913
  br label %return, !dbg !3915

if.else:                                          ; preds = %entry
  br label %return, !dbg !3916

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3918
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3918
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3918
  ret i8 %retval.0, !dbg !3919
}

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, %struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3920 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3925, metadata !DIExpression()), !dbg !3926
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3927
  %0 = load i32, i32* %index, align 8, !dbg !3927
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3927
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3927
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3927
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3927
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3927

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3927
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3927
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3927
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3927
  br label %cond.end, !dbg !3927

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3927
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3927
  %cmp = icmp ult i32 %0, %call2, !dbg !3927
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3927

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3927
  br label %cond.end5, !dbg !3927

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3928
  %inc = add i32 %5, 1, !dbg !3928
  store i32 %inc, i32* %index, align 8, !dbg !3928
  ret void, !dbg !3929
}

declare dso_local zeroext i8 @flow_loop_nested_p(%struct.loop*, %struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3930 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3935
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3935
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3935

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3935
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3935
  br label %cond.end, !dbg !3935

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3935
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3935
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3936
  %conv3 = zext i1 %cmp to i8, !dbg !3937
  ret i8 %conv3, !dbg !3938
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3939 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3944
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3944
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3944

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3944
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3944
  br label %cond.end, !dbg !3944

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3944
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3944
  ret %struct.edge_def* %call2, !dbg !3945
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3946 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3952, metadata !DIExpression()), !dbg !3953
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3954
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3954

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3954
  %0 = load i32, i32* %num, align 8, !dbg !3954
  br label %cond.end, !dbg !3954

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3954
  ret i32 %cond, !dbg !3954
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3955 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3960
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3960

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3960
  br label %cond.end, !dbg !3960

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3961
  ret %struct.VEC_edge_gc* %0, !dbg !3962
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3963 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3967, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3968, metadata !DIExpression()), !dbg !3969
  br label %land.end, !dbg !3970

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3970
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3970
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3970
  ret %struct.edge_def* %0, !dbg !3970
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @df_remove_problem(%struct.dataflow*) local_unnamed_addr #2

declare dso_local void @df_process_deferred_rescans() local_unnamed_addr #2

declare dso_local void @df_chain_add_problem(i32) local_unnamed_addr #2

declare dso_local void @df_set_blocks(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @df_dump_region(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @print_rtl_with_bb(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @check_invariant_table_size() unnamed_addr #5 !dbg !3971 {
entry:
  %0 = load i32, i32* @invariant_table_size, align 4, !dbg !3976
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !3977
  %table_size = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 3, i32 4, !dbg !3977
  %2 = load i32, i32* %table_size, align 4, !dbg !3977
  %cmp = icmp ult i32 %0, %2, !dbg !3978
  br i1 %cmp, label %if.then, label %if.end, !dbg !3979

if.then:                                          ; preds = %entry
  %div = lshr i32 %2, 2, !dbg !3980
  %add = add i32 %2, %div, !dbg !3981
  call void @llvm.dbg.value(metadata i32 %add, metadata !3973, metadata !DIExpression()), !dbg !3982
  %3 = load i8*, i8** bitcast (%struct.invariant*** @invariant_table to i8**), align 8, !dbg !3983
  %conv = zext i32 %add to i64, !dbg !3983
  %mul = shl nuw nsw i64 %conv, 3, !dbg !3983
  %call = tail call i8* @xrealloc(i8* %3, i64 %mul) #6, !dbg !3983
  store i8* %call, i8** bitcast (%struct.invariant*** @invariant_table to i8**), align 8, !dbg !3984
  %.cast = bitcast i8* %call to %struct.invariant**, !dbg !3985
  %4 = load i32, i32* @invariant_table_size, align 4, !dbg !3986
  %idxprom = zext i32 %4 to i64, !dbg !3985
  %arrayidx = getelementptr inbounds %struct.invariant*, %struct.invariant** %.cast, i64 %idxprom, !dbg !3985
  %5 = bitcast %struct.invariant** %arrayidx to i8*, !dbg !3987
  %sub = sub i32 %add, %4, !dbg !3988
  %conv5 = zext i32 %sub to i64, !dbg !3989
  %mul6 = shl nuw nsw i64 %conv5, 3, !dbg !3990
  %call7 = tail call i8* @memset(i8* %5, i32 0, i64 %mul6) #6, !dbg !3991
  store i32 %add, i32* @invariant_table_size, align 4, !dbg !3992
  br label %if.end, !dbg !3993

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3994
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_invariants_bb(%struct.basic_block_def* %bb, i8 zeroext %always_reached, i8 zeroext %always_executed) unnamed_addr #5 !dbg !3995 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3999, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8 %always_reached, metadata !4000, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8 %always_executed, metadata !4001, metadata !DIExpression()), !dbg !4003
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4004
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4004
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4004
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !4004
  br label %for.cond, !dbg !4004

for.cond:                                         ; preds = %for.inc, %entry
  %always_reached.addr.0 = phi i8 [ %always_reached, %entry ], [ %always_reached.addr.2, %for.inc ]
  %insn.0.in = phi %struct.rtx_def** [ %head_, %entry ], [ %rt_rtx42, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4006
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8 %always_reached.addr.0, metadata !4000, metadata !DIExpression()), !dbg !4003
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4007
  br i1 %tobool, label %for.end, label %land.rhs, !dbg !4007

land.rhs:                                         ; preds = %for.cond
  %1 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4007
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %1, i64 0, i32 1, !dbg !4007
  %2 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4007
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4007
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !4007
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4007
  %cmp = icmp eq %struct.rtx_def* %insn.0, %4, !dbg !4007
  br i1 %cmp, label %for.end, label %for.body, !dbg !4004

for.body:                                         ; preds = %land.rhs
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4009
  %bf.load = load i32, i32* %5, align 8, !dbg !4009
  %bf.clear = and i32 %bf.load, 65535, !dbg !4009
  %cmp3 = icmp eq i32 %bf.clear, 8, !dbg !4009
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !4009

lor.lhs.false:                                    ; preds = %for.body
  %cmp6 = icmp eq i32 %bf.clear, 7, !dbg !4009
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false7, !dbg !4009

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %bf.clear, 9, !dbg !4009
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11, !dbg !4009

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %cmp14 = icmp eq i32 %bf.clear, 10, !dbg !4009
  br i1 %cmp14, label %land.lhs.true, label %for.inc, !dbg !4009

land.lhs.true:                                    ; preds = %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false, %for.body
  %cmp17 = icmp eq i32 %bf.clear, 7, !dbg !4009
  br i1 %cmp17, label %for.inc, label %if.end, !dbg !4012

if.end:                                           ; preds = %land.lhs.true
  tail call fastcc void @find_invariants_insn(%struct.rtx_def* nonnull %insn.0, i8 zeroext %always_reached.addr.0, i8 zeroext %always_executed) #8, !dbg !4013
  %tobool18 = icmp eq i8 %always_reached.addr.0, 0, !dbg !4014
  br i1 %tobool18, label %for.inc, label %land.lhs.true19, !dbg !4016

land.lhs.true19:                                  ; preds = %if.end
  %bf.load20 = load i32, i32* %5, align 8, !dbg !4017
  %bf.clear21 = and i32 %bf.load20, 65535, !dbg !4017
  %cmp22 = icmp eq i32 %bf.clear21, 10, !dbg !4017
  br i1 %cmp22, label %land.lhs.true24, label %for.inc, !dbg !4018

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %bf.clear26 = and i32 %bf.load20, 33554432, !dbg !4019
  %tobool27 = icmp eq i32 %bf.clear26, 0, !dbg !4019
  br i1 %tobool27, label %lor.lhs.false28, label %if.then37, !dbg !4020

lor.lhs.false28:                                  ; preds = %land.lhs.true24
  %bf.clear31 = and i32 %bf.load20, 67108864, !dbg !4021
  %tobool32 = icmp eq i32 %bf.clear31, 0, !dbg !4021
  br i1 %tobool32, label %lor.lhs.false33, label %for.inc, !dbg !4021

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %tobool36 = icmp slt i32 %bf.load20, 0, !dbg !4021
  br i1 %tobool36, label %for.inc, label %if.then37, !dbg !4022

if.then37:                                        ; preds = %land.lhs.true24, %lor.lhs.false33
  call void @llvm.dbg.value(metadata i8 0, metadata !4000, metadata !DIExpression()), !dbg !4003
  br label %for.inc, !dbg !4023

for.inc:                                          ; preds = %lor.lhs.false28, %if.end, %land.lhs.true19, %lor.lhs.false33, %if.then37, %lor.lhs.false11, %land.lhs.true
  %always_reached.addr.2 = phi i8 [ %always_reached.addr.0, %land.lhs.true ], [ %always_reached.addr.0, %lor.lhs.false11 ], [ 0, %if.then37 ], [ %always_reached.addr.0, %lor.lhs.false28 ], [ %always_reached.addr.0, %lor.lhs.false33 ], [ %always_reached.addr.0, %land.lhs.true19 ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i8 %always_reached.addr.2, metadata !4000, metadata !DIExpression()), !dbg !4003
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4007
  %rt_rtx42 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !4007
  br label %for.cond, !dbg !4007, !llvm.loop !4024

for.end:                                          ; preds = %land.rhs, %for.cond
  ret void, !dbg !4026
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_invariants_insn(%struct.rtx_def* %insn, i8 zeroext %always_reached, i8 zeroext %always_executed) unnamed_addr #5 !dbg !4027 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4031, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i8 %always_reached, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i8 %always_executed, metadata !4033, metadata !DIExpression()), !dbg !4034
  tail call fastcc void @find_invariant_insn(%struct.rtx_def* %insn, i8 zeroext %always_reached, i8 zeroext %always_executed) #8, !dbg !4035
  tail call fastcc void @record_uses(%struct.rtx_def* %insn) #8, !dbg !4036
  ret void, !dbg !4037
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_invariant_insn(%struct.rtx_def* %insn, i8 zeroext %always_reached, i8 zeroext %always_executed) unnamed_addr #5 !dbg !4038 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4040, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8 %always_reached, metadata !4041, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8 %always_executed, metadata !4042, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8 1, metadata !4108, metadata !DIExpression()), !dbg !4110
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4111
  %bf.load = load i32, i32* %0, align 8, !dbg !4111
  %bf.clear = and i32 %bf.load, 65535, !dbg !4111
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !4111
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4111

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !4111
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !4111

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !4111
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !4111

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !4111
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !4111

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4111
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4111
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !4111
  %3 = load i32*, i32** %2, align 8, !dbg !4111
  %bf.load12 = load i32, i32* %3, align 8, !dbg !4111
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4111
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !4111
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !4111
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !4111

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !4111
  br label %cond.end25, !dbg !4111

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !4111
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !4106, metadata !DIExpression()), !dbg !4110
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !4112
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !4114

if.end:                                           ; preds = %cond.end25
  %arrayidx29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4115
  %rt_rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**, !dbg !4115
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !4115
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !4107, metadata !DIExpression()), !dbg !4110
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !4116
  %bf.load31 = load i32, i32* %6, align 8, !dbg !4116
  %bf.clear32 = and i32 %bf.load31, 65535, !dbg !4116
  %cmp33 = icmp eq i32 %bf.clear32, 37, !dbg !4116
  br i1 %cmp33, label %lor.lhs.false34, label %if.then37, !dbg !4118

lor.lhs.false34:                                  ; preds = %if.end
  %call35 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %5) #8, !dbg !4119
  %cmp36 = icmp ult i32 %call35, 53, !dbg !4119
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4120

if.then37:                                        ; preds = %lor.lhs.false34, %if.end
  call void @llvm.dbg.value(metadata i8 0, metadata !4108, metadata !DIExpression()), !dbg !4110
  br label %if.end38, !dbg !4121

if.end38:                                         ; preds = %if.then37, %lor.lhs.false34
  %simple.0 = phi i8 [ 0, %if.then37 ], [ 1, %lor.lhs.false34 ], !dbg !4110
  call void @llvm.dbg.value(metadata i8 %simple.0, metadata !4108, metadata !DIExpression()), !dbg !4110
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !4122
  %call43 = tail call fastcc zeroext i8 @may_assign_reg_p(%struct.rtx_def* %7) #8, !dbg !4124
  %tobool44 = icmp eq i8 %call43, 0, !dbg !4124
  br i1 %tobool44, label %cleanup.cont, label %lor.lhs.false45, !dbg !4125

lor.lhs.false45:                                  ; preds = %if.end38
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4126
  %rt_rtx49 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !4126
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx49, align 8, !dbg !4126
  %call50 = tail call fastcc zeroext i8 @check_maybe_invariant(%struct.rtx_def* %9) #8, !dbg !4127
  %tobool51 = icmp eq i8 %call50, 0, !dbg !4127
  br i1 %tobool51, label %cleanup.cont, label %if.end53, !dbg !4128

if.end53:                                         ; preds = %lor.lhs.false45
  %call54 = tail call zeroext i8 @can_throw_internal(%struct.rtx_def* %insn) #6, !dbg !4129
  %tobool55 = icmp eq i8 %call54, 0, !dbg !4129
  br i1 %tobool55, label %if.end57, label %cleanup.cont, !dbg !4131

if.end57:                                         ; preds = %if.end53
  %u58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4132
  %10 = getelementptr inbounds %union.u, %union.u* %u58, i64 1, i32 0, i32 0, i64 0, !dbg !4132
  %rt_rtx61 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !4132
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx61, align 8, !dbg !4132
  %call62 = tail call i32 @may_trap_or_fault_p(%struct.rtx_def* %11) #6, !dbg !4134
  %tobool63 = icmp eq i32 %call62, 0, !dbg !4134
  %tobool64 = icmp ne i8 %always_reached, 0, !dbg !4135
  %or.cond = or i1 %tobool63, %tobool64, !dbg !4136
  br i1 %or.cond, label %if.end66, label %cleanup.cont, !dbg !4136

if.end66:                                         ; preds = %if.end57
  %call67 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4137
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call67, metadata !4105, metadata !DIExpression()), !dbg !4110
  %call68 = tail call fastcc zeroext i8 @check_dependencies(%struct.rtx_def* %insn, %struct.bitmap_head_def* %call67) #8, !dbg !4138
  %tobool69 = icmp eq i8 %call68, 0, !dbg !4138
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !4140

if.then70:                                        ; preds = %if.end66
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call67) #6, !dbg !4141
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !4105, metadata !DIExpression()), !dbg !4110
  br label %cleanup.cont, !dbg !4143

if.end71:                                         ; preds = %if.end66
  %tobool72 = icmp eq i8 %simple.0, 0, !dbg !4144
  br i1 %tobool72, label %if.end75, label %if.then73, !dbg !4146

if.then73:                                        ; preds = %if.end71
  %call74 = tail call i8* @xcalloc(i64 1, i64 24) #6, !dbg !4147
  %12 = bitcast i8* %call74 to %struct.def*, !dbg !4147
  call void @llvm.dbg.value(metadata %struct.def* %12, metadata !4104, metadata !DIExpression()), !dbg !4110
  br label %if.end75, !dbg !4148

if.end75:                                         ; preds = %if.end71, %if.then73
  %def.0 = phi %struct.def* [ %12, %if.then73 ], [ null, %if.end71 ], !dbg !4149
  call void @llvm.dbg.value(metadata %struct.def* %def.0, metadata !4104, metadata !DIExpression()), !dbg !4110
  %call76 = tail call fastcc %struct.invariant* @create_new_invariant(%struct.def* %def.0, %struct.rtx_def* %insn, %struct.bitmap_head_def* %call67, i8 zeroext %always_executed) #8, !dbg !4150
  call void @llvm.dbg.value(metadata %struct.invariant* %call76, metadata !4109, metadata !DIExpression()), !dbg !4110
  br i1 %tobool72, label %cleanup.cont, label %if.then78, !dbg !4151

if.then78:                                        ; preds = %if.end75
  %call79 = tail call %union.df_ref_d* @df_find_def(%struct.rtx_def* %insn, %struct.rtx_def* %5) #6, !dbg !4152
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call79, metadata !4043, metadata !DIExpression()), !dbg !4110
  tail call fastcc void @check_invariant_table_size() #8, !dbg !4155
  %13 = load %struct.invariant**, %struct.invariant*** @invariant_table, align 8, !dbg !4156
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call79, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4157
  %14 = load i32, i32* %id, align 4, !dbg !4157
  %idxprom = sext i32 %14 to i64, !dbg !4156
  %arrayidx80 = getelementptr inbounds %struct.invariant*, %struct.invariant** %13, i64 %idxprom, !dbg !4156
  store %struct.invariant* %call76, %struct.invariant** %arrayidx80, align 8, !dbg !4158
  br label %cleanup.cont, !dbg !4159

cleanup.cont:                                     ; preds = %if.end75, %if.end53, %lor.lhs.false45, %if.end38, %cond.end25, %if.then70, %if.end57, %if.then78
  ret void, !dbg !4160
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_uses(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !4161 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4163, metadata !DIExpression()), !dbg !4175
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4176
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !4176
  %1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4176
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4176
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4176
  %2 = load i32, i32* %rt_int, align 8, !dbg !4176
  %idxprom = sext i32 %2 to i64, !dbg !4176
  %arrayidx1 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %1, i64 %idxprom, !dbg !4176
  %3 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx1, align 8, !dbg !4176
  call void @llvm.dbg.value(metadata %struct.df_insn_info* %3, metadata !4164, metadata !DIExpression()), !dbg !4175
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 2, !dbg !4177
  %4 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !4177
  call void @llvm.dbg.value(metadata %union.df_ref_d** %4, metadata !4165, metadata !DIExpression()), !dbg !4175
  br label %for.cond, !dbg !4178

for.cond:                                         ; preds = %for.inc, %entry
  %use_rec.0 = phi %union.df_ref_d** [ %4, %entry ], [ %incdec.ptr, %for.inc ], !dbg !4179
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !4165, metadata !DIExpression()), !dbg !4175
  %5 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !4180
  %tobool = icmp eq %union.df_ref_d* %5, null, !dbg !4181
  br i1 %tobool, label %for.end, label %for.body, !dbg !4181

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %5, metadata !4167, metadata !DIExpression()), !dbg !4182
  %call = tail call fastcc %struct.invariant* @invariant_for_use(%union.df_ref_d* nonnull %5) #8, !dbg !4183
  call void @llvm.dbg.value(metadata %struct.invariant* %call, metadata !4166, metadata !DIExpression()), !dbg !4175
  %tobool2 = icmp eq %struct.invariant* %call, null, !dbg !4184
  br i1 %tobool2, label %for.inc, label %if.then, !dbg !4186

if.then:                                          ; preds = %for.body
  %def = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 4, !dbg !4187
  %6 = load %struct.def*, %struct.def** %def, align 8, !dbg !4187
  tail call fastcc void @record_use(%struct.def* %6, %union.df_ref_d* nonnull %5) #8, !dbg !4188
  br label %for.inc, !dbg !4188

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !4189
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4165, metadata !DIExpression()), !dbg !4175
  br label %for.cond, !dbg !4190, !llvm.loop !4191

for.end:                                          ; preds = %for.cond
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 3, !dbg !4193
  %7 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !4193
  call void @llvm.dbg.value(metadata %union.df_ref_d** %7, metadata !4165, metadata !DIExpression()), !dbg !4175
  br label %for.cond3, !dbg !4194

for.cond3:                                        ; preds = %for.inc12, %for.end
  %use_rec.1 = phi %union.df_ref_d** [ %7, %for.end ], [ %incdec.ptr13, %for.inc12 ], !dbg !4195
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.1, metadata !4165, metadata !DIExpression()), !dbg !4175
  %8 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.1, align 8, !dbg !4196
  %tobool4 = icmp eq %union.df_ref_d* %8, null, !dbg !4197
  br i1 %tobool4, label %for.end14, label %for.body5, !dbg !4197

for.body5:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %union.df_ref_d* %8, metadata !4171, metadata !DIExpression()), !dbg !4198
  %call7 = tail call fastcc %struct.invariant* @invariant_for_use(%union.df_ref_d* nonnull %8) #8, !dbg !4199
  call void @llvm.dbg.value(metadata %struct.invariant* %call7, metadata !4166, metadata !DIExpression()), !dbg !4175
  %tobool8 = icmp eq %struct.invariant* %call7, null, !dbg !4200
  br i1 %tobool8, label %for.inc12, label %if.then9, !dbg !4202

if.then9:                                         ; preds = %for.body5
  %def10 = getelementptr inbounds %struct.invariant, %struct.invariant* %call7, i64 0, i32 4, !dbg !4203
  %9 = load %struct.def*, %struct.def** %def10, align 8, !dbg !4203
  tail call fastcc void @record_use(%struct.def* %9, %union.df_ref_d* nonnull %8) #8, !dbg !4204
  br label %for.inc12, !dbg !4204

for.inc12:                                        ; preds = %for.body5, %if.then9
  %incdec.ptr13 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.1, i64 1, !dbg !4205
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr13, metadata !4165, metadata !DIExpression()), !dbg !4175
  br label %for.cond3, !dbg !4206, !llvm.loop !4207

for.end14:                                        ; preds = %for.cond3
  ret void, !dbg !4209
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @may_assign_reg_p(%struct.rtx_def* %x) unnamed_addr #5 !dbg !4210 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4214, metadata !DIExpression()), !dbg !4215
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4216
  %bf.load = load i32, i32* %0, align 8, !dbg !4216
  %bf.clear = and i32 %bf.load, 16711680, !dbg !4216
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !4217
  br i1 %cmp, label %land.end, label %land.lhs.true, !dbg !4218

land.lhs.true:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %bf.clear, 65536, !dbg !4219
  br i1 %cmp4, label %land.end, label %land.lhs.true5, !dbg !4220

land.lhs.true5:                                   ; preds = %land.lhs.true
  %bf.lshr7 = lshr i32 %bf.load, 16, !dbg !4221
  %bf.clear8 = and i32 %bf.lshr7, 255, !dbg !4221
  %call = tail call zeroext i8 @can_copy_p(i32 %bf.clear8) #6, !dbg !4222
  %tobool = icmp eq i8 %call, 0, !dbg !4222
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4223

land.rhs:                                         ; preds = %land.lhs.true5
  %bf.load9 = load i32, i32* %0, align 8, !dbg !4224
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !4224
  %cmp11 = icmp eq i32 %bf.clear10, 37, !dbg !4224
  br i1 %cmp11, label %lor.lhs.false, label %land.end, !dbg !4225

lor.lhs.false:                                    ; preds = %land.rhs
  %call13 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #8, !dbg !4226
  %cmp14 = icmp ult i32 %call13, 53, !dbg !4226
  br i1 %cmp14, label %lor.rhs, label %land.end, !dbg !4227

lor.rhs:                                          ; preds = %lor.lhs.false
  %call16 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #8, !dbg !4228
  %idxprom = zext i32 %call16 to i64, !dbg !4228
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom, !dbg !4228
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4228
  %cmp17 = icmp ne i32 %1, 0, !dbg !4229
  %phitmp = zext i1 %cmp17 to i8, !dbg !4227
  br label %land.end, !dbg !4227

land.end:                                         ; preds = %land.lhs.true5, %land.lhs.true, %entry, %land.rhs, %lor.lhs.false, %lor.rhs
  %2 = phi i8 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %lor.lhs.false ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i8 %2, !dbg !4230
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_maybe_invariant(%struct.rtx_def* %x) unnamed_addr #5 !dbg !4231 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4233, metadata !DIExpression()), !dbg !4238
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4239
  %bf.load = load i32, i32* %0, align 8, !dbg !4239
  %bf.clear = and i32 %bf.load, 65535, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4234, metadata !DIExpression()), !dbg !4238
  %trunc = trunc i32 %bf.load to i16, !dbg !4240
  switch i16 %trunc, label %sw.epilog [
    i16 30, label %cleanup
    i16 32, label %cleanup
    i16 31, label %cleanup
    i16 45, label %cleanup
    i16 35, label %cleanup
    i16 44, label %cleanup
    i16 36, label %sw.bb1
    i16 46, label %sw.bb1
    i16 19, label %sw.bb1
    i16 26, label %sw.bb1
    i16 37, label %cleanup
    i16 43, label %sw.bb3
    i16 17, label %sw.bb10
  ], !dbg !4240

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry
  br label %cleanup, !dbg !4241

sw.bb3:                                           ; preds = %entry
  %bf.clear5 = and i32 %bf.load, 67108864, !dbg !4243
  %tobool = icmp eq i32 %bf.clear5, 0, !dbg !4243
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !4245

land.lhs.true:                                    ; preds = %sw.bb3
  %bf.clear8 = and i32 %bf.load, 134217728, !dbg !4246
  %tobool9 = icmp eq i32 %bf.clear8, 0, !dbg !4246
  br i1 %tobool9, label %sw.epilog, label %cleanup, !dbg !4247

sw.bb10:                                          ; preds = %entry
  %bf.clear13 = and i32 %bf.load, 134217728, !dbg !4248
  %tobool14 = icmp eq i32 %bf.clear13, 0, !dbg !4248
  br i1 %tobool14, label %sw.epilog, label %cleanup, !dbg !4250

sw.epilog:                                        ; preds = %land.lhs.true, %sw.bb10, %entry
  %idxprom = zext i32 %bf.clear to i64, !dbg !4251
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !4251
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !4251
  call void @llvm.dbg.value(metadata i8* %1, metadata !4237, metadata !DIExpression()), !dbg !4238
  %arrayidx18 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !4252
  %2 = load i8, i8* %arrayidx18, align 1, !dbg !4252
  call void @llvm.dbg.value(metadata i8 %2, metadata !4235, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4238
  %u38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !4254
  %fld39 = bitcast %union.u* %u38 to [1 x %union.rtunion_def]*, !dbg !4254
  %3 = zext i8 %2 to i64, !dbg !4262
  br label %for.cond, !dbg !4262

for.cond:                                         ; preds = %for.inc58, %sw.epilog
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc58 ], [ %3, %sw.epilog ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1, !dbg !4263
  call void @llvm.dbg.value(metadata i32 undef, metadata !4235, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4238
  %cmp = icmp sgt i64 %indvars.iv2, 0, !dbg !4264
  br i1 %cmp, label %for.body, label %cleanup.loopexit1, !dbg !4265

for.body:                                         ; preds = %for.cond
  %arrayidx21 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next3, !dbg !4266
  %4 = load i8, i8* %arrayidx21, align 1, !dbg !4266
  %cmp23 = icmp eq i8 %4, 101, !dbg !4267
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !4268

if.then25:                                        ; preds = %for.body
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i64 0, i64 %indvars.iv.next3, !dbg !4269
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**, !dbg !4269
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4269
  %call = tail call fastcc zeroext i8 @check_maybe_invariant(%struct.rtx_def* %5) #8, !dbg !4272
  %tobool28 = icmp eq i8 %call, 0, !dbg !4272
  br i1 %tobool28, label %cleanup.loopexit1, label %for.inc58, !dbg !4273

if.else:                                          ; preds = %for.body
  %cmp34 = icmp eq i8 %4, 69, !dbg !4274
  br i1 %cmp34, label %for.cond37.preheader, label %for.inc58, !dbg !4275

for.cond37.preheader:                             ; preds = %if.else
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i64 0, i64 %indvars.iv.next3, !dbg !4254
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtvec_def**, !dbg !4254
  br label %for.cond37, !dbg !4276

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !4277
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4236, metadata !DIExpression()), !dbg !4238
  %6 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4278
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i64 0, i32 0, !dbg !4278
  %7 = load i32, i32* %num_elem, align 8, !dbg !4278
  %8 = sext i32 %7 to i64, !dbg !4279
  %cmp42 = icmp slt i64 %indvars.iv, %8, !dbg !4279
  br i1 %cmp42, label %for.body44, label %for.inc58.loopexit, !dbg !4276

for.body44:                                       ; preds = %for.cond37
  %arrayidx51 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i64 0, i32 1, i64 %indvars.iv, !dbg !4280
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx51, align 8, !dbg !4280
  %call52 = tail call fastcc zeroext i8 @check_maybe_invariant(%struct.rtx_def* %9) #8, !dbg !4282
  %tobool53 = icmp eq i8 %call52, 0, !dbg !4282
  br i1 %tobool53, label %cleanup.loopexit, label %for.inc, !dbg !4283

for.inc:                                          ; preds = %for.body44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4284
  call void @llvm.dbg.value(metadata i32 undef, metadata !4236, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4238
  br label %for.cond37, !dbg !4285, !llvm.loop !4286

for.inc58.loopexit:                               ; preds = %for.cond37
  br label %for.inc58, !dbg !4288

for.inc58:                                        ; preds = %for.inc58.loopexit, %if.then25, %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !4235, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4238
  br label %for.cond, !dbg !4288, !llvm.loop !4289

cleanup.loopexit:                                 ; preds = %for.body44
  br label %cleanup, !dbg !4291

cleanup.loopexit1:                                ; preds = %for.cond, %if.then25
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %if.then25 ]
  br label %cleanup, !dbg !4291

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %land.lhs.true, %sw.bb3, %sw.bb10, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb1
  %retval.0 = phi i8 [ 0, %sw.bb1 ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 0, %land.lhs.true ], [ 0, %sw.bb3 ], [ 0, %sw.bb10 ], [ 0, %cleanup.loopexit ], [ %retval.0.ph, %cleanup.loopexit1 ], !dbg !4238
  ret i8 %retval.0, !dbg !4291
}

declare dso_local zeroext i8 @can_throw_internal(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @may_trap_or_fault_p(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_dependencies(%struct.rtx_def* %insn, %struct.bitmap_head_def* %depends_on) unnamed_addr #5 !dbg !4292 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4296, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %depends_on, metadata !4297, metadata !DIExpression()), !dbg !4301
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4302
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !4302
  %1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4302
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4302
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4302
  %2 = load i32, i32* %rt_int, align 8, !dbg !4302
  %idxprom = sext i32 %2 to i64, !dbg !4302
  %arrayidx1 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %1, i64 %idxprom, !dbg !4302
  %3 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx1, align 8, !dbg !4302
  call void @llvm.dbg.value(metadata %struct.df_insn_info* %3, metadata !4298, metadata !DIExpression()), !dbg !4301
  %arrayidx4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !4303
  %rt_bb = bitcast %struct.object_block** %arrayidx4 to %struct.basic_block_def**, !dbg !4303
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !4303
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !4300, metadata !DIExpression()), !dbg !4301
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 2, !dbg !4304
  %5 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !4304
  call void @llvm.dbg.value(metadata %union.df_ref_d** %5, metadata !4299, metadata !DIExpression()), !dbg !4301
  br label %for.cond, !dbg !4306

for.cond:                                         ; preds = %for.inc, %entry
  %use_rec.0 = phi %union.df_ref_d** [ %5, %entry ], [ %incdec.ptr, %for.inc ], !dbg !4307
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !4299, metadata !DIExpression()), !dbg !4301
  %6 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !4308
  %tobool = icmp eq %union.df_ref_d* %6, null, !dbg !4310
  br i1 %tobool, label %for.end, label %for.body, !dbg !4310

for.body:                                         ; preds = %for.cond
  %call = tail call fastcc zeroext i8 @check_dependency(%struct.basic_block_def* %4, %union.df_ref_d* nonnull %6, %struct.bitmap_head_def* %depends_on) #8, !dbg !4311
  %tobool5 = icmp eq i8 %call, 0, !dbg !4311
  br i1 %tobool5, label %cleanup.loopexit1, label %for.inc, !dbg !4313

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !4314
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4299, metadata !DIExpression()), !dbg !4301
  br label %for.cond, !dbg !4315, !llvm.loop !4316

for.end:                                          ; preds = %for.cond
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 3, !dbg !4318
  %7 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !4318
  call void @llvm.dbg.value(metadata %union.df_ref_d** %7, metadata !4299, metadata !DIExpression()), !dbg !4301
  br label %for.cond6, !dbg !4320

for.cond6:                                        ; preds = %for.inc13, %for.end
  %use_rec.1 = phi %union.df_ref_d** [ %7, %for.end ], [ %incdec.ptr14, %for.inc13 ], !dbg !4321
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.1, metadata !4299, metadata !DIExpression()), !dbg !4301
  %8 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.1, align 8, !dbg !4322
  %tobool7 = icmp eq %union.df_ref_d* %8, null, !dbg !4324
  br i1 %tobool7, label %cleanup.loopexit, label %for.body8, !dbg !4324

for.body8:                                        ; preds = %for.cond6
  %call9 = tail call fastcc zeroext i8 @check_dependency(%struct.basic_block_def* %4, %union.df_ref_d* nonnull %8, %struct.bitmap_head_def* %depends_on) #8, !dbg !4325
  %tobool10 = icmp eq i8 %call9, 0, !dbg !4325
  br i1 %tobool10, label %cleanup.loopexit, label %for.inc13, !dbg !4327

for.inc13:                                        ; preds = %for.body8
  %incdec.ptr14 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.1, i64 1, !dbg !4328
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr14, metadata !4299, metadata !DIExpression()), !dbg !4301
  br label %for.cond6, !dbg !4329, !llvm.loop !4330

cleanup.loopexit:                                 ; preds = %for.cond6, %for.body8
  %retval.0.ph = phi i8 [ 1, %for.cond6 ], [ 0, %for.body8 ]
  br label %cleanup, !dbg !4332

cleanup.loopexit1:                                ; preds = %for.body
  br label %cleanup, !dbg !4332

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit
  %retval.0 = phi i8 [ %retval.0.ph, %cleanup.loopexit ], [ 0, %cleanup.loopexit1 ], !dbg !4301
  ret i8 %retval.0, !dbg !4332
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.invariant* @create_new_invariant(%struct.def* %def, %struct.rtx_def* %insn, %struct.bitmap_head_def* %depends_on, i8 zeroext %always_executed) unnamed_addr #5 !dbg !4333 {
entry:
  call void @llvm.dbg.value(metadata %struct.def* %def, metadata !4337, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4338, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %depends_on, metadata !4339, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i8 %always_executed, metadata !4340, metadata !DIExpression()), !dbg !4344
  %call = tail call i8* @xmalloc(i64 64) #6, !dbg !4345
  %0 = bitcast i8* %call to %struct.invariant*, !dbg !4345
  call void @llvm.dbg.value(metadata %struct.invariant* %0, metadata !4341, metadata !DIExpression()), !dbg !4344
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4346
  %bf.load = load i32, i32* %1, align 8, !dbg !4346
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
  br i1 %cmp11, label %cond.true, label %cond.end26, !dbg !4346

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4346
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4346
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !4346
  %4 = load i32*, i32** %3, align 8, !dbg !4346
  %bf.load12 = load i32, i32* %4, align 8, !dbg !4346
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4346
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !4346
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !4346
  br i1 %cmp14, label %cond.end26, label %cond.false, !dbg !4346

cond.false:                                       ; preds = %cond.true
  %call24 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %5) #6, !dbg !4346
  br label %cond.end26, !dbg !4346

cond.end26:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond27 = phi %struct.rtx_def* [ %call24, %cond.false ], [ %5, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !4346
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond27, metadata !4342, metadata !DIExpression()), !dbg !4344
  %arrayidx30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !4347
  %rt_bb = bitcast %struct.object_block** %arrayidx30 to %struct.basic_block_def**, !dbg !4347
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !4347
  %call31 = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %6) #6, !dbg !4348
  call void @llvm.dbg.value(metadata i8 %call31, metadata !4343, metadata !DIExpression()), !dbg !4344
  %def32 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !4349
  %7 = bitcast i8* %def32 to %struct.def**, !dbg !4349
  store %struct.def* %def, %struct.def** %7, align 8, !dbg !4350
  %8 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !4351
  store i8 %always_executed, i8* %8, align 8, !dbg !4352
  %depends_on34 = getelementptr inbounds i8, i8* %call, i64 48, !dbg !4353
  %9 = bitcast i8* %depends_on34 to %struct.bitmap_head_def**, !dbg !4353
  store %struct.bitmap_head_def* %depends_on, %struct.bitmap_head_def** %9, align 8, !dbg !4354
  %tobool = icmp eq %struct.def* %def, null, !dbg !4355
  br i1 %tobool, label %if.else, label %if.then, !dbg !4357

if.then:                                          ; preds = %cond.end26
  %call35 = tail call i32 @rtx_cost(%struct.rtx_def* %cond27, i32 23, i8 zeroext %call31) #6, !dbg !4358
  %cost = getelementptr inbounds i8, i8* %call, i64 44, !dbg !4360
  %10 = bitcast i8* %cost to i32*, !dbg !4360
  store i32 %call35, i32* %10, align 4, !dbg !4361
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond27, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4362
  %rt_rtx39 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !4362
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx39, align 8, !dbg !4362
  %13 = load i32, i32* @word_mode, align 4, !dbg !4363
  %call40 = tail call i32 @address_cost(%struct.rtx_def* %12, i32 %13, i8 zeroext 0, i8 zeroext %call31) #6, !dbg !4364
  %cmp41 = icmp slt i32 %call40, 3, !dbg !4365
  %conv42 = zext i1 %cmp41 to i8, !dbg !4364
  %14 = getelementptr inbounds i8, i8* %call, i64 42, !dbg !4366
  store i8 %conv42, i8* %14, align 2, !dbg !4367
  br label %if.end, !dbg !4368

if.else:                                          ; preds = %cond.end26
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond27, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4369
  %rt_rtx46 = bitcast %union.rtunion_def* %15 to %struct.rtx_def**, !dbg !4369
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx46, align 8, !dbg !4369
  %call47 = tail call i32 @rtx_cost(%struct.rtx_def* %16, i32 23, i8 zeroext %call31) #6, !dbg !4371
  %cost48 = getelementptr inbounds i8, i8* %call, i64 44, !dbg !4372
  %17 = bitcast i8* %cost48 to i32*, !dbg !4372
  store i32 %call47, i32* %17, align 4, !dbg !4373
  %18 = getelementptr inbounds i8, i8* %call, i64 42, !dbg !4374
  store i8 0, i8* %18, align 2, !dbg !4375
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = getelementptr inbounds i8, i8* %call, i64 41, !dbg !4376
  store i8 0, i8* %19, align 1, !dbg !4377
  %reg = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4378
  %20 = bitcast i8* %reg to %struct.rtx_def**, !dbg !4378
  store %struct.rtx_def* null, %struct.rtx_def** %20, align 8, !dbg !4379
  %orig_regno = getelementptr inbounds i8, i8* %call, i64 16, !dbg !4380
  %21 = bitcast i8* %orig_regno to i32*, !dbg !4380
  store i32 -1, i32* %21, align 8, !dbg !4381
  %stamp = getelementptr inbounds i8, i8* %call, i64 56, !dbg !4382
  %22 = bitcast i8* %stamp to i32*, !dbg !4382
  store i32 0, i32* %22, align 8, !dbg !4383
  %insn50 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !4384
  %23 = bitcast i8* %insn50 to %struct.rtx_def**, !dbg !4384
  store %struct.rtx_def* %insn, %struct.rtx_def** %23, align 8, !dbg !4385
  %24 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !4386
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %24, i64 0, i32 0, !dbg !4386
  %call56 = tail call fastcc i32 @VEC_invariant_p_base_length(%struct.VEC_invariant_p_base* %base) #8, !dbg !4386
  %invno = bitcast i8* %call to i32*, !dbg !4387
  store i32 %call56, i32* %invno, align 8, !dbg !4388
  %eqto = getelementptr inbounds i8, i8* %call, i64 4, !dbg !4389
  %25 = bitcast i8* %eqto to i32*, !dbg !4389
  store i32 -1, i32* %25, align 4, !dbg !4390
  br i1 %tobool, label %if.end61, label %if.then58, !dbg !4391

if.then58:                                        ; preds = %if.end
  %invno60 = getelementptr inbounds %struct.def, %struct.def* %def, i64 0, i32 3, !dbg !4392
  store i32 %call56, i32* %invno60, align 8, !dbg !4394
  br label %if.end61, !dbg !4395

if.end61:                                         ; preds = %if.end, %if.then58
  %call62 = tail call fastcc %struct.invariant** @VEC_invariant_p_heap_safe_push(%struct.VEC_invariant_p_heap** nonnull @invariants, %struct.invariant* %0) #8, !dbg !4396
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4397
  %tobool63 = icmp eq %struct._IO_FILE* %26, null, !dbg !4397
  br i1 %tobool63, label %if.end72, label %if.then64, !dbg !4399

if.then64:                                        ; preds = %if.end61
  %arrayidx67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4400
  %rt_int = bitcast %union.rtunion_def* %arrayidx67 to i32*, !dbg !4400
  %27 = load i32, i32* %rt_int, align 8, !dbg !4400
  %28 = load i32, i32* %invno, align 8, !dbg !4402
  %cost69 = getelementptr inbounds i8, i8* %call, i64 44, !dbg !4403
  %29 = bitcast i8* %cost69 to i32*, !dbg !4403
  %30 = load i32, i32* %29, align 4, !dbg !4403
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %27, i32 %28, i32 %30) #6, !dbg !4404
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4405
  %32 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %9, align 8, !dbg !4405
  tail call void @bitmap_print(%struct._IO_FILE* %31, %struct.bitmap_head_def* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4405
  br label %if.end72, !dbg !4406

if.end72:                                         ; preds = %if.end61, %if.then64
  ret %struct.invariant* %0, !dbg !4407
}

declare dso_local %union.df_ref_d* @df_find_def(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @can_copy_p(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_dependency(%struct.basic_block_def* %bb, %union.df_ref_d* %use, %struct.bitmap_head_def* %depends_on) unnamed_addr #5 !dbg !4408 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4412, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !4413, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %depends_on, metadata !4414, metadata !DIExpression()), !dbg !4420
  %0 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4421
  %bf.load = load i32, i32* %0, align 8, !dbg !4421
  %and = and i32 %bf.load, 2097152, !dbg !4423
  %tobool = icmp eq i32 %and, 0, !dbg !4423
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4424

if.end:                                           ; preds = %entry
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4425
  %1 = load %struct.df_link*, %struct.df_link** %chain, align 8, !dbg !4425
  call void @llvm.dbg.value(metadata %struct.df_link* %1, metadata !4417, metadata !DIExpression()), !dbg !4420
  %tobool2 = icmp eq %struct.df_link* %1, null, !dbg !4426
  br i1 %tobool2, label %cleanup, label %if.end4, !dbg !4428

if.end4:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %1, i64 0, i32 1, !dbg !4429
  %2 = load %struct.df_link*, %struct.df_link** %next, align 8, !dbg !4429
  %tobool5 = icmp eq %struct.df_link* %2, null, !dbg !4431
  br i1 %tobool5, label %if.end7, label %cleanup, !dbg !4432

if.end7:                                          ; preds = %if.end4
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %1, i64 0, i32 0, !dbg !4433
  %3 = load %union.df_ref_d*, %union.df_ref_d** %ref, align 8, !dbg !4433
  call void @llvm.dbg.value(metadata %union.df_ref_d* %3, metadata !4415, metadata !DIExpression()), !dbg !4420
  tail call fastcc void @check_invariant_table_size() #8, !dbg !4434
  %4 = load %struct.invariant**, %struct.invariant*** @invariant_table, align 8, !dbg !4435
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %3, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4436
  %5 = load i32, i32* %id, align 4, !dbg !4436
  %idxprom = sext i32 %5 to i64, !dbg !4435
  %arrayidx = getelementptr inbounds %struct.invariant*, %struct.invariant** %4, i64 %idxprom, !dbg !4435
  %6 = load %struct.invariant*, %struct.invariant** %arrayidx, align 8, !dbg !4435
  call void @llvm.dbg.value(metadata %struct.invariant* %6, metadata !4419, metadata !DIExpression()), !dbg !4420
  %tobool9 = icmp eq %struct.invariant* %6, null, !dbg !4437
  br i1 %tobool9, label %cleanup, label %if.end11, !dbg !4439

if.end11:                                         ; preds = %if.end7
  %def12 = getelementptr inbounds %struct.invariant, %struct.invariant* %6, i64 0, i32 4, !dbg !4440
  %7 = load %struct.def*, %struct.def** %def12, align 8, !dbg !4440
  call void @llvm.dbg.value(metadata %struct.def* %7, metadata !4418, metadata !DIExpression()), !dbg !4420
  %cmp = icmp eq %struct.def* %7, null, !dbg !4441
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4441

cond.true:                                        ; preds = %if.end11
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 797, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4441
  br label %cond.end, !dbg !4441

cond.end:                                         ; preds = %if.end11, %cond.true
  %8 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %3, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4442
  %bf.load14 = load i32, i32* %8, align 8, !dbg !4442
  %bf.clear = and i32 %bf.load14, 255, !dbg !4442
  %cmp15 = icmp eq i32 %bf.clear, 1, !dbg !4442
  br i1 %cmp15, label %cond.true16, label %cond.false18, !dbg !4442

cond.true16:                                      ; preds = %cond.end
  %bb17 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %3, i64 0, i32 0, i32 0, i32 1, !dbg !4442
  %9 = bitcast %struct.rtx_def*** %bb17 to %struct.basic_block_def**, !dbg !4442
  br label %cond.end21, !dbg !4442

cond.false18:                                     ; preds = %cond.end
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %3, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4442
  %10 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !4442
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %10, i64 0, i32 0, !dbg !4442
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4442
  %arrayidx20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, i32 0, i32 1, !dbg !4442
  %rt_bb = bitcast %struct.object_block** %arrayidx20 to %struct.basic_block_def**, !dbg !4442
  br label %cond.end21, !dbg !4442

cond.end21:                                       ; preds = %cond.false18, %cond.true16
  %cond22.in = phi %struct.basic_block_def** [ %9, %cond.true16 ], [ %rt_bb, %cond.false18 ]
  %cond22 = load %struct.basic_block_def*, %struct.basic_block_def** %cond22.in, align 8, !dbg !4442
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond22, metadata !4416, metadata !DIExpression()), !dbg !4420
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %bb, %struct.basic_block_def* %cond22) #6, !dbg !4443
  %tobool23 = icmp eq i8 %call, 0, !dbg !4443
  br i1 %tobool23, label %cleanup, label %if.end25, !dbg !4445

if.end25:                                         ; preds = %cond.end21
  %invno = getelementptr inbounds %struct.def, %struct.def* %7, i64 0, i32 3, !dbg !4446
  %12 = load i32, i32* %invno, align 8, !dbg !4446
  %call26 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %depends_on, i32 %12) #6, !dbg !4447
  br label %cleanup, !dbg !4448

cleanup:                                          ; preds = %cond.end21, %if.end7, %if.end4, %if.end, %entry, %if.end25
  %retval.0 = phi i8 [ 1, %if.end25 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end4 ], [ 0, %if.end7 ], [ 0, %cond.end21 ], !dbg !4420
  ret i8 %retval.0, !dbg !4449
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @rtx_cost(%struct.rtx_def*, i32, i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @address_cost(%struct.rtx_def*, i32, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_invariant_p_base_length(%struct.VEC_invariant_p_base* %vec_) unnamed_addr #0 !dbg !4450 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_base* %vec_, metadata !4456, metadata !DIExpression()), !dbg !4457
  %tobool = icmp eq %struct.VEC_invariant_p_base* %vec_, null, !dbg !4458
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4458

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 0, !dbg !4458
  %0 = load i32, i32* %num, align 8, !dbg !4458
  br label %cond.end, !dbg !4458

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4458
  ret i32 %cond, !dbg !4458
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.invariant** @VEC_invariant_p_heap_safe_push(%struct.VEC_invariant_p_heap** %vec_, %struct.invariant* %obj_) unnamed_addr #0 !dbg !4459 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_heap** @invariants, metadata !4465, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata %struct.invariant* %obj_, metadata !4466, metadata !DIExpression()), !dbg !4467
  %call = tail call fastcc i32 @VEC_invariant_p_heap_reserve(%struct.VEC_invariant_p_heap** nonnull @invariants, i32 1) #8, !dbg !4468
  %0 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !4468
  %tobool = icmp eq %struct.VEC_invariant_p_heap* %0, null, !dbg !4468
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4468

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %0, i64 0, i32 0, !dbg !4468
  br label %cond.end, !dbg !4468

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_invariant_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4468
  %call1 = tail call fastcc %struct.invariant** @VEC_invariant_p_base_quick_push(%struct.VEC_invariant_p_base* %cond, %struct.invariant* %obj_) #8, !dbg !4468
  ret %struct.invariant** %call1, !dbg !4468
}

declare dso_local void @bitmap_print(%struct._IO_FILE*, %struct.bitmap_head_def*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_invariant_p_heap_reserve(%struct.VEC_invariant_p_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4469 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_heap** @invariants, metadata !4473, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i32 1, metadata !4474, metadata !DIExpression()), !dbg !4476
  %0 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !4477
  %tobool = icmp eq %struct.VEC_invariant_p_heap* %0, null, !dbg !4477
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4477

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %0, i64 0, i32 0, !dbg !4477
  br label %cond.end, !dbg !4477

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_invariant_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4477
  %call = tail call fastcc i32 @VEC_invariant_p_base_space(%struct.VEC_invariant_p_base* %cond, i32 1) #8, !dbg !4477
  %tobool1 = icmp eq i32 %call, 0, !dbg !4477
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4477
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4475, metadata !DIExpression()), !dbg !4476
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4477

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_invariant_p_heap** @invariants to i8**), align 8, !dbg !4478
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !4478
  store i8* %call3, i8** bitcast (%struct.VEC_invariant_p_heap** @invariants to i8**), align 8, !dbg !4478
  br label %if.end, !dbg !4478

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4477
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.invariant** @VEC_invariant_p_base_quick_push(%struct.VEC_invariant_p_base* %vec_, %struct.invariant* %obj_) unnamed_addr #0 !dbg !4480 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_base* %vec_, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata %struct.invariant* %obj_, metadata !4486, metadata !DIExpression()), !dbg !4488
  %num1 = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 0, !dbg !4489
  %0 = load i32, i32* %num1, align 8, !dbg !4489
  %inc = add i32 %0, 1, !dbg !4489
  store i32 %inc, i32* %num1, align 8, !dbg !4489
  %idxprom = zext i32 %0 to i64, !dbg !4489
  %arrayidx = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4489
  call void @llvm.dbg.value(metadata %struct.invariant** %arrayidx, metadata !4487, metadata !DIExpression()), !dbg !4488
  store %struct.invariant* %obj_, %struct.invariant** %arrayidx, align 8, !dbg !4489
  ret %struct.invariant** %arrayidx, !dbg !4489
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_invariant_p_base_space(%struct.VEC_invariant_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4490 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_base* %vec_, metadata !4494, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 1, metadata !4495, metadata !DIExpression()), !dbg !4496
  %tobool = icmp eq %struct.VEC_invariant_p_base* %vec_, null, !dbg !4497
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4497

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 1, !dbg !4497
  %0 = load i32, i32* %alloc, align 4, !dbg !4497
  %num = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 0, !dbg !4497
  %1 = load i32, i32* %num, align 8, !dbg !4497
  %cmp1 = icmp ne i32 %0, %1, !dbg !4497
  %phitmp = zext i1 %cmp1 to i32, !dbg !4497
  br label %cond.end, !dbg !4497

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4497

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4497
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.invariant* @invariant_for_use(%union.df_ref_d* %use) unnamed_addr #5 !dbg !4498 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !4502, metadata !DIExpression()), !dbg !4507
  %0 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4508
  %bf.load = load i32, i32* %0, align 8, !dbg !4508
  %bf.clear = and i32 %bf.load, 255, !dbg !4508
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !4508
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4508

cond.true:                                        ; preds = %entry
  %bb1 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 1, !dbg !4508
  %1 = bitcast %struct.rtx_def*** %bb1 to %struct.basic_block_def**, !dbg !4508
  br label %cond.end, !dbg !4508

cond.false:                                       ; preds = %entry
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4508
  %2 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !4508
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %2, i64 0, i32 0, !dbg !4508
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4508
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 1, !dbg !4508
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !4508
  br label %cond.end, !dbg !4508

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.basic_block_def** [ %1, %cond.true ], [ %rt_bb, %cond.false ]
  %cond = load %struct.basic_block_def*, %struct.basic_block_def** %cond.in, align 8, !dbg !4508
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond, metadata !4505, metadata !DIExpression()), !dbg !4507
  %and = and i32 %bf.load, 2097152, !dbg !4509
  %tobool = icmp eq i32 %and, 0, !dbg !4509
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4511

if.end:                                           ; preds = %cond.end
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4512
  %4 = load %struct.df_link*, %struct.df_link** %chain, align 8, !dbg !4512
  call void @llvm.dbg.value(metadata %struct.df_link* %4, metadata !4503, metadata !DIExpression()), !dbg !4507
  %tobool6 = icmp eq %struct.df_link* %4, null, !dbg !4513
  br i1 %tobool6, label %cleanup, label %lor.lhs.false, !dbg !4515

lor.lhs.false:                                    ; preds = %if.end
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %4, i64 0, i32 1, !dbg !4516
  %5 = load %struct.df_link*, %struct.df_link** %next, align 8, !dbg !4516
  %tobool7 = icmp eq %struct.df_link* %5, null, !dbg !4517
  br i1 %tobool7, label %if.end9, label %cleanup, !dbg !4518

if.end9:                                          ; preds = %lor.lhs.false
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %4, i64 0, i32 0, !dbg !4519
  %6 = load %union.df_ref_d*, %union.df_ref_d** %ref, align 8, !dbg !4519
  call void @llvm.dbg.value(metadata %union.df_ref_d* %6, metadata !4504, metadata !DIExpression()), !dbg !4507
  tail call fastcc void @check_invariant_table_size() #8, !dbg !4520
  %7 = load %struct.invariant**, %struct.invariant*** @invariant_table, align 8, !dbg !4521
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4523
  %8 = load i32, i32* %id, align 4, !dbg !4523
  %idxprom = sext i32 %8 to i64, !dbg !4521
  %arrayidx11 = getelementptr inbounds %struct.invariant*, %struct.invariant** %7, i64 %idxprom, !dbg !4521
  %9 = load %struct.invariant*, %struct.invariant** %arrayidx11, align 8, !dbg !4521
  %tobool12 = icmp eq %struct.invariant* %9, null, !dbg !4521
  br i1 %tobool12, label %cleanup, label %if.end14, !dbg !4524

if.end14:                                         ; preds = %if.end9
  %10 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4525
  %bf.load16 = load i32, i32* %10, align 8, !dbg !4525
  %bf.clear17 = and i32 %bf.load16, 255, !dbg !4525
  %cmp18 = icmp eq i32 %bf.clear17, 1, !dbg !4525
  br i1 %cmp18, label %cond.true19, label %cond.false22, !dbg !4525

cond.true19:                                      ; preds = %if.end14
  %bb21 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 1, !dbg !4525
  %11 = bitcast %struct.rtx_def*** %bb21 to %struct.basic_block_def**, !dbg !4525
  br label %cond.end30, !dbg !4525

cond.false22:                                     ; preds = %if.end14
  %insn_info24 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4525
  %12 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info24, align 8, !dbg !4525
  %insn25 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %12, i64 0, i32 0, !dbg !4525
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn25, align 8, !dbg !4525
  %arrayidx28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 1, i32 0, i32 1, !dbg !4525
  %rt_bb29 = bitcast %struct.object_block** %arrayidx28 to %struct.basic_block_def**, !dbg !4525
  br label %cond.end30, !dbg !4525

cond.end30:                                       ; preds = %cond.false22, %cond.true19
  %cond31.in = phi %struct.basic_block_def** [ %11, %cond.true19 ], [ %rt_bb29, %cond.false22 ]
  %cond31 = load %struct.basic_block_def*, %struct.basic_block_def** %cond31.in, align 8, !dbg !4525
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond31, metadata !4506, metadata !DIExpression()), !dbg !4507
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %cond, %struct.basic_block_def* %cond31) #6, !dbg !4526
  %tobool32 = icmp eq i8 %call, 0, !dbg !4526
  br i1 %tobool32, label %cleanup, label %if.end34, !dbg !4528

if.end34:                                         ; preds = %cond.end30
  %14 = load %struct.invariant**, %struct.invariant*** @invariant_table, align 8, !dbg !4529
  %15 = load i32, i32* %id, align 4, !dbg !4530
  %idxprom37 = sext i32 %15 to i64, !dbg !4529
  %arrayidx38 = getelementptr inbounds %struct.invariant*, %struct.invariant** %14, i64 %idxprom37, !dbg !4529
  %16 = load %struct.invariant*, %struct.invariant** %arrayidx38, align 8, !dbg !4529
  br label %cleanup, !dbg !4531

cleanup:                                          ; preds = %cond.end30, %if.end9, %lor.lhs.false, %if.end, %cond.end, %if.end34
  %retval.0 = phi %struct.invariant* [ %16, %if.end34 ], [ null, %cond.end ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %if.end9 ], [ null, %cond.end30 ], !dbg !4507
  ret %struct.invariant* %retval.0, !dbg !4532
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_use(%struct.def* %def, %union.df_ref_d* %use) unnamed_addr #5 !dbg !4533 {
entry:
  call void @llvm.dbg.value(metadata %struct.def* %def, metadata !4537, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !4538, metadata !DIExpression()), !dbg !4540
  %call = tail call i8* @xmalloc(i64 32) #6, !dbg !4541
  call void @llvm.dbg.value(metadata i8* %call, metadata !4539, metadata !DIExpression()), !dbg !4540
  %loc = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 1, !dbg !4542
  %0 = bitcast %struct.rtx_def*** %loc to i32***, !dbg !4542
  %1 = load i32**, i32*** %0, align 8, !dbg !4542
  %2 = load i32*, i32** %1, align 8, !dbg !4542
  %bf.load = load i32, i32* %2, align 8, !dbg !4542
  %bf.clear = and i32 %bf.load, 65535, !dbg !4542
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !4542
  %.cast = bitcast i32** %1 to %struct.rtx_def**, !dbg !4542
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4542

cond.true:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 2, !dbg !4542
  %rt_rtx = bitcast i32* %arrayidx to %struct.rtx_def**, !dbg !4542
  br label %cond.end, !dbg !4542

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.rtx_def** [ %rt_rtx, %cond.true ], [ %.cast, %entry ], !dbg !4542
  %pos = bitcast i8* %call to %struct.rtx_def***, !dbg !4543
  store %struct.rtx_def** %cond, %struct.rtx_def*** %pos, align 8, !dbg !4544
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4545
  %3 = bitcast %struct.df_insn_info** %insn_info to i64**, !dbg !4545
  %4 = load i64*, i64** %3, align 8, !dbg !4545
  %5 = load i64, i64* %4, align 8, !dbg !4545
  %insn6 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4546
  %6 = bitcast i8* %insn6 to i64*, !dbg !4547
  store i64 %5, i64* %6, align 8, !dbg !4547
  %7 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4548
  %bf.load8 = load i32, i32* %7, align 8, !dbg !4548
  %bf.clear9 = and i32 %bf.load8, 65280, !dbg !4548
  %cmp10 = icmp eq i32 %bf.clear9, 512, !dbg !4549
  br i1 %cmp10, label %lor.end, label %lor.rhs, !dbg !4550

lor.rhs:                                          ; preds = %cond.end
  %cmp15 = icmp eq i32 %bf.clear9, 768, !dbg !4551
  %phitmp = zext i1 %cmp15 to i32, !dbg !4550
  br label %lor.end, !dbg !4550

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %8 = phi i32 [ 1, %cond.end ], [ %phitmp, %lor.rhs ]
  %addr_use_p = getelementptr inbounds i8, i8* %call, i64 16, !dbg !4552
  %9 = bitcast i8* %addr_use_p to i32*, !dbg !4552
  store i32 %8, i32* %9, align 8, !dbg !4553
  %10 = bitcast %struct.def* %def to i64*, !dbg !4554
  %11 = load i64, i64* %10, align 8, !dbg !4554
  %next = getelementptr inbounds i8, i8* %call, i64 24, !dbg !4555
  %12 = bitcast i8* %next to i64*, !dbg !4556
  store i64 %11, i64* %12, align 8, !dbg !4556
  %13 = bitcast %struct.def* %def to i8**, !dbg !4557
  store i8* %call, i8** %13, align 8, !dbg !4557
  %n_uses = getelementptr inbounds %struct.def, %struct.def* %def, i64 0, i32 1, !dbg !4558
  %14 = load i32, i32* %n_uses, align 8, !dbg !4559
  %inc = add i32 %14, 1, !dbg !4559
  store i32 %inc, i32* %n_uses, align 8, !dbg !4559
  %15 = load i32, i32* %9, align 8, !dbg !4560
  %tobool = icmp eq i32 %15, 0, !dbg !4562
  br i1 %tobool, label %if.end, label %if.then, !dbg !4563

if.then:                                          ; preds = %lor.end
  %n_addr_uses = getelementptr inbounds %struct.def, %struct.def* %def, i64 0, i32 2, !dbg !4564
  %16 = load i32, i32* %n_addr_uses, align 4, !dbg !4565
  %inc18 = add i32 %16, 1, !dbg !4565
  store i32 %inc18, i32* %n_addr_uses, align 4, !dbg !4565
  br label %if.end, !dbg !4566

if.end:                                           ; preds = %lor.end, %if.then
  ret void, !dbg !4567
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @hash_invariant_expr(i8* %e) #5 !dbg !4568 {
entry:
  call void @llvm.dbg.value(metadata i8* %e, metadata !4570, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i8* %e, metadata !4571, metadata !DIExpression()), !dbg !4573
  %hash = getelementptr inbounds i8, i8* %e, i64 20, !dbg !4574
  %0 = bitcast i8* %hash to i32*, !dbg !4574
  %1 = load i32, i32* %0, align 4, !dbg !4574
  ret i32 %1, !dbg !4575
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_invariant_expr(i8* %e1, i8* %e2) #5 !dbg !4576 {
entry:
  call void @llvm.dbg.value(metadata i8* %e1, metadata !4578, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i8* %e2, metadata !4579, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i8* %e1, metadata !4580, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i8* %e2, metadata !4581, metadata !DIExpression()), !dbg !4582
  %mode = getelementptr inbounds i8, i8* %e1, i64 16, !dbg !4583
  %0 = bitcast i8* %mode to i32*, !dbg !4583
  %1 = load i32, i32* %0, align 8, !dbg !4583
  %mode1 = getelementptr inbounds i8, i8* %e2, i64 16, !dbg !4585
  %2 = bitcast i8* %mode1 to i32*, !dbg !4585
  %3 = load i32, i32* %2, align 8, !dbg !4585
  %cmp = icmp eq i32 %1, %3, !dbg !4586
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4587

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %e2, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i8* %e1, metadata !4580, metadata !DIExpression()), !dbg !4582
  %inv = bitcast i8* %e1 to %struct.invariant**, !dbg !4588
  %4 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !4588
  %insn = getelementptr inbounds %struct.invariant, %struct.invariant* %4, i64 0, i32 5, !dbg !4589
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4589
  %expr = getelementptr inbounds i8, i8* %e1, i64 8, !dbg !4590
  %6 = bitcast i8* %expr to %struct.rtx_def**, !dbg !4590
  %7 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8, !dbg !4590
  %inv2 = bitcast i8* %e2 to %struct.invariant**, !dbg !4591
  %8 = load %struct.invariant*, %struct.invariant** %inv2, align 8, !dbg !4591
  %insn3 = getelementptr inbounds %struct.invariant, %struct.invariant* %8, i64 0, i32 5, !dbg !4592
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn3, align 8, !dbg !4592
  %expr4 = getelementptr inbounds i8, i8* %e2, i64 8, !dbg !4593
  %10 = bitcast i8* %expr4 to %struct.rtx_def**, !dbg !4593
  %11 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8, !dbg !4593
  %call = tail call fastcc zeroext i8 @invariant_expr_equal_p(%struct.rtx_def* %5, %struct.rtx_def* %7, %struct.rtx_def* %9, %struct.rtx_def* %11) #8, !dbg !4594
  %conv = zext i8 %call to i32, !dbg !4594
  br label %cleanup, !dbg !4595

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ], !dbg !4582
  ret i32 %retval.0, !dbg !4596
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_invariant_p_base_iterate(%struct.VEC_invariant_p_base* %vec_, i32 %ix_, %struct.invariant** %ptr) unnamed_addr #0 !dbg !4597 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_base* %vec_, metadata !4601, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4602, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata %struct.invariant** %ptr, metadata !4603, metadata !DIExpression()), !dbg !4604
  %tobool = icmp eq %struct.VEC_invariant_p_base* %vec_, null, !dbg !4605
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4605

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 0, !dbg !4605
  %0 = load i32, i32* %num, align 8, !dbg !4605
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4605
  br i1 %cmp, label %if.then, label %if.else, !dbg !4607

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4608
  %arrayidx = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4608
  %1 = load %struct.invariant*, %struct.invariant** %arrayidx, align 8, !dbg !4608
  br label %return, !dbg !4608

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4610

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.invariant* [ null, %if.else ], [ %1, %if.then ], !dbg !4612
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4612
  store %struct.invariant* %storemerge, %struct.invariant** %ptr, align 8, !dbg !4612
  ret i32 %retval.0, !dbg !4607
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_identical_invariants(%struct.htab* %eq, %struct.invariant* %inv) unnamed_addr #5 !dbg !4613 {
entry:
  %depno = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.htab* %eq, metadata !4617, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata %struct.invariant* %inv, metadata !4618, metadata !DIExpression()), !dbg !4625
  %0 = bitcast i32* %depno to i8*, !dbg !4626
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4626
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4627
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !4627
  %eqto = getelementptr inbounds %struct.invariant, %struct.invariant* %inv, i64 0, i32 1, !dbg !4628
  %2 = load i32, i32* %eqto, align 4, !dbg !4628
  %cmp = icmp eq i32 %2, -1, !dbg !4630
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4631

if.end:                                           ; preds = %entry
  %depends_on = getelementptr inbounds %struct.invariant, %struct.invariant* %inv, i64 0, i32 10, !dbg !4632
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %depends_on, align 8, !dbg !4632
  call void @llvm.dbg.value(metadata i32* %depno, metadata !4619, metadata !DIExpression(DW_OP_deref)), !dbg !4625
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4620, metadata !DIExpression(DW_OP_deref)), !dbg !4625
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %3, i32 0, i32* nonnull %depno) #8, !dbg !4632
  br label %for.cond, !dbg !4632

for.cond:                                         ; preds = %for.body, %if.end
  call void @llvm.dbg.value(metadata i32* %depno, metadata !4619, metadata !DIExpression(DW_OP_deref)), !dbg !4625
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4620, metadata !DIExpression(DW_OP_deref)), !dbg !4625
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %depno) #8, !dbg !4634
  %tobool = icmp eq i8 %call, 0, !dbg !4632
  br i1 %tobool, label %for.end, label %for.body, !dbg !4632

for.body:                                         ; preds = %for.cond
  %4 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !4636
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %4, i64 0, i32 0, !dbg !4636
  %5 = load i32, i32* %depno, align 4, !dbg !4636
  call void @llvm.dbg.value(metadata i32 %5, metadata !4619, metadata !DIExpression()), !dbg !4625
  %call2 = call fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %base, i32 %5) #8, !dbg !4636
  call void @llvm.dbg.value(metadata %struct.invariant* %call2, metadata !4621, metadata !DIExpression()), !dbg !4625
  call fastcc void @find_identical_invariants(%struct.htab* %eq, %struct.invariant* %call2) #8, !dbg !4638
  call void @llvm.dbg.value(metadata i32* %depno, metadata !4619, metadata !DIExpression(DW_OP_deref)), !dbg !4625
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4620, metadata !DIExpression(DW_OP_deref)), !dbg !4625
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %depno) #8, !dbg !4634
  br label %for.cond, !dbg !4634, !llvm.loop !4639

for.end:                                          ; preds = %for.cond
  %insn = getelementptr inbounds %struct.invariant, %struct.invariant* %inv, i64 0, i32 5, !dbg !4641
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4641
  br label %cond.true18, !dbg !4641

lor.lhs.false:                                    ; No predecessors!
  br label %cond.true18, !dbg !4641

lor.lhs.false8:                                   ; No predecessors!
  br label %cond.true18, !dbg !4641

lor.lhs.false13:                                  ; No predecessors!
  br label %cond.true18, !dbg !4641

cond.true18:                                      ; preds = %lor.lhs.false8, %lor.lhs.false, %for.end, %lor.lhs.false13
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, !dbg !4641
  %7 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4641
  %8 = bitcast %union.rtunion_def* %7 to i32**, !dbg !4641
  %9 = load i32*, i32** %8, align 8, !dbg !4641
  %bf.load20 = load i32, i32* %9, align 8, !dbg !4641
  %bf.clear21 = and i32 %bf.load20, 65535, !dbg !4641
  %cmp22 = icmp eq i32 %bf.clear21, 23, !dbg !4641
  %10 = bitcast i32* %9 to %struct.rtx_def*, !dbg !4641
  br i1 %cmp22, label %cond.true23, label %cond.false29, !dbg !4641

cond.true23:                                      ; preds = %cond.true18
  br label %cond.end40, !dbg !4641

cond.false29:                                     ; preds = %cond.true18
  %call36 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %6, %struct.rtx_def* %10) #6, !dbg !4641
  br label %cond.end40, !dbg !4641

cond.end40:                                       ; preds = %cond.true23, %cond.false29
  %cond41 = phi %struct.rtx_def* [ %10, %cond.true23 ], [ %call36, %cond.false29 ], !dbg !4641
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond41, metadata !4623, metadata !DIExpression()), !dbg !4625
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond41, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4642
  %rt_rtx45 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !4642
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx45, align 8, !dbg !4642
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !4622, metadata !DIExpression()), !dbg !4625
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 0, !dbg !4643
  %bf.load46 = load i32, i32* %13, align 8, !dbg !4643
  %bf.lshr = lshr i32 %bf.load46, 16, !dbg !4643
  %bf.clear47 = and i32 %bf.lshr, 255, !dbg !4643
  call void @llvm.dbg.value(metadata i32 %bf.clear47, metadata !4624, metadata !DIExpression()), !dbg !4625
  %cmp48 = icmp eq i32 %bf.clear47, 0, !dbg !4644
  br i1 %cmp48, label %if.then49, label %if.end57, !dbg !4646

if.then49:                                        ; preds = %cond.end40
  %arrayidx52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond41, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4647
  %14 = bitcast %union.rtunion_def* %arrayidx52 to i32**, !dbg !4647
  %15 = load i32*, i32** %14, align 8, !dbg !4647
  %bf.load54 = load i32, i32* %15, align 8, !dbg !4647
  %bf.lshr55 = lshr i32 %bf.load54, 16, !dbg !4647
  %bf.clear56 = and i32 %bf.lshr55, 255, !dbg !4647
  call void @llvm.dbg.value(metadata i32 %bf.clear56, metadata !4624, metadata !DIExpression()), !dbg !4625
  br label %if.end57, !dbg !4648

if.end57:                                         ; preds = %if.then49, %cond.end40
  %mode.0 = phi i32 [ %bf.clear56, %if.then49 ], [ %bf.clear47, %cond.end40 ], !dbg !4625
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !4624, metadata !DIExpression()), !dbg !4625
  %call58 = call fastcc %struct.invariant* @find_or_insert_inv(%struct.htab* %eq, %struct.rtx_def* %12, i32 %mode.0, %struct.invariant* %inv) #8, !dbg !4649
  %invno = getelementptr inbounds %struct.invariant, %struct.invariant* %call58, i64 0, i32 0, !dbg !4650
  %16 = load i32, i32* %invno, align 8, !dbg !4650
  store i32 %16, i32* %eqto, align 4, !dbg !4651
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4652
  %tobool60 = icmp eq %struct._IO_FILE* %17, null, !dbg !4652
  br i1 %tobool60, label %cleanup, label %land.lhs.true, !dbg !4654

land.lhs.true:                                    ; preds = %if.end57
  %invno62 = getelementptr inbounds %struct.invariant, %struct.invariant* %inv, i64 0, i32 0, !dbg !4655
  %18 = load i32, i32* %invno62, align 8, !dbg !4655
  %cmp63 = icmp eq i32 %16, %18, !dbg !4656
  br i1 %cmp63, label %cleanup, label %if.then64, !dbg !4657

if.then64:                                        ; preds = %land.lhs.true
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %18, i32 %16) #6, !dbg !4658
  br label %cleanup, !dbg !4658

cleanup:                                          ; preds = %land.lhs.true, %if.end57, %entry, %if.then64
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !4659
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4659
  ret void, !dbg !4659
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @invariant_expr_equal_p(%struct.rtx_def* %insn1, %struct.rtx_def* %e1, %struct.rtx_def* %insn2, %struct.rtx_def* %e2) unnamed_addr #5 !dbg !4660 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn1, metadata !4664, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata %struct.rtx_def* %e1, metadata !4665, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn2, metadata !4666, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata %struct.rtx_def* %e2, metadata !4667, metadata !DIExpression()), !dbg !4678
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %e1, i64 0, i32 0, !dbg !4679
  %bf.load = load i32, i32* %0, align 8, !dbg !4679
  %bf.clear = and i32 %bf.load, 65535, !dbg !4679
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4668, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata %struct.invariant* null, metadata !4674, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata %struct.invariant* null, metadata !4675, metadata !DIExpression()), !dbg !4678
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %e2, i64 0, i32 0, !dbg !4680
  %bf.load1 = load i32, i32* %1, align 8, !dbg !4680
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !4680
  %cmp = icmp eq i32 %bf.clear, %bf.clear2, !dbg !4682
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !4683

lor.lhs.false:                                    ; preds = %entry
  %bf.lshr2 = xor i32 %bf.load, %bf.load1, !dbg !4684
  %2 = and i32 %bf.lshr2, 16711680, !dbg !4684
  %cmp8 = icmp eq i32 %2, 0, !dbg !4684
  br i1 %cmp8, label %if.end, label %cleanup, !dbg !4685

if.end:                                           ; preds = %lor.lhs.false
  %trunc = trunc i32 %bf.load to i16, !dbg !4686
  switch i16 %trunc, label %sw.epilog [
    i16 30, label %sw.bb
    i16 32, label %sw.bb
    i16 31, label %sw.bb
    i16 45, label %sw.bb
    i16 35, label %sw.bb
    i16 44, label %sw.bb
    i16 37, label %sw.bb9
  ], !dbg !4686

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call = tail call i32 @rtx_equal_p(%struct.rtx_def* %e1, %struct.rtx_def* %e2) #6, !dbg !4687
  %conv = trunc i32 %call to i8, !dbg !4687
  br label %cleanup, !dbg !4689

sw.bb9:                                           ; preds = %if.end
  %call10 = tail call %union.df_ref_d* @df_find_use(%struct.rtx_def* %insn1, %struct.rtx_def* %e1) #6, !dbg !4690
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call10, metadata !4672, metadata !DIExpression()), !dbg !4678
  %call11 = tail call %union.df_ref_d* @df_find_use(%struct.rtx_def* %insn2, %struct.rtx_def* %e2) #6, !dbg !4691
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call11, metadata !4673, metadata !DIExpression()), !dbg !4678
  %tobool = icmp eq %union.df_ref_d* %call10, null, !dbg !4692
  br i1 %tobool, label %if.end14, label %if.then12, !dbg !4694

if.then12:                                        ; preds = %sw.bb9
  %call13 = tail call fastcc %struct.invariant* @invariant_for_use(%union.df_ref_d* nonnull %call10) #8, !dbg !4695
  call void @llvm.dbg.value(metadata %struct.invariant* %call13, metadata !4674, metadata !DIExpression()), !dbg !4678
  br label %if.end14, !dbg !4696

if.end14:                                         ; preds = %sw.bb9, %if.then12
  %inv1.0 = phi %struct.invariant* [ %call13, %if.then12 ], [ null, %sw.bb9 ], !dbg !4678
  call void @llvm.dbg.value(metadata %struct.invariant* %inv1.0, metadata !4674, metadata !DIExpression()), !dbg !4678
  %tobool15 = icmp eq %union.df_ref_d* %call11, null, !dbg !4697
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !4699

if.then16:                                        ; preds = %if.end14
  %call17 = tail call fastcc %struct.invariant* @invariant_for_use(%union.df_ref_d* nonnull %call11) #8, !dbg !4700
  call void @llvm.dbg.value(metadata %struct.invariant* %call17, metadata !4675, metadata !DIExpression()), !dbg !4678
  br label %if.end18, !dbg !4701

if.end18:                                         ; preds = %if.end14, %if.then16
  %inv2.0 = phi %struct.invariant* [ %call17, %if.then16 ], [ null, %if.end14 ], !dbg !4678
  call void @llvm.dbg.value(metadata %struct.invariant* %inv2.0, metadata !4675, metadata !DIExpression()), !dbg !4678
  %tobool19 = icmp ne %struct.invariant* %inv1.0, null, !dbg !4702
  %tobool20 = icmp ne %struct.invariant* %inv2.0, null, !dbg !4704
  %or.cond = or i1 %tobool19, %tobool20, !dbg !4705
  br i1 %or.cond, label %if.end24, label %if.then21, !dbg !4705

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @rtx_equal_p(%struct.rtx_def* %e1, %struct.rtx_def* %e2) #6, !dbg !4706
  %conv23 = trunc i32 %call22 to i8, !dbg !4706
  br label %cleanup, !dbg !4707

if.end24:                                         ; preds = %if.end18
  %or.cond1 = and i1 %tobool19, %tobool20, !dbg !4708
  br i1 %or.cond1, label %if.end29, label %cleanup, !dbg !4708

if.end29:                                         ; preds = %if.end24
  %eqto = getelementptr inbounds %struct.invariant, %struct.invariant* %inv1.0, i64 0, i32 1, !dbg !4710
  %3 = load i32, i32* %eqto, align 4, !dbg !4710
  %cmp30 = icmp eq i32 %3, -1, !dbg !4710
  br i1 %cmp30, label %cond.true, label %cond.end, !dbg !4710

cond.true:                                        ; preds = %if.end29
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 388, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4710
  br label %cond.end, !dbg !4710

cond.end:                                         ; preds = %if.end29, %cond.true
  %eqto32 = getelementptr inbounds %struct.invariant, %struct.invariant* %inv2.0, i64 0, i32 1, !dbg !4711
  %4 = load i32, i32* %eqto32, align 4, !dbg !4711
  %cmp33 = icmp eq i32 %4, -1, !dbg !4711
  br i1 %cmp33, label %cond.true35, label %cond.end37, !dbg !4711

cond.true35:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 389, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4711
  %.pre = load i32, i32* %eqto32, align 4, !dbg !4712
  br label %cond.end37, !dbg !4711

cond.end37:                                       ; preds = %cond.end, %cond.true35
  %5 = phi i32 [ %4, %cond.end ], [ %.pre, %cond.true35 ], !dbg !4712
  %6 = load i32, i32* %eqto, align 4, !dbg !4713
  %cmp41 = icmp eq i32 %6, %5, !dbg !4714
  %conv43 = zext i1 %cmp41 to i8, !dbg !4715
  br label %cleanup, !dbg !4716

sw.epilog:                                        ; preds = %if.end
  %idxprom = zext i32 %bf.clear to i64, !dbg !4717
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !4717
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !4717
  call void @llvm.dbg.value(metadata i8* %7, metadata !4671, metadata !DIExpression()), !dbg !4678
  %arrayidx45 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !4718
  %8 = load i8, i8* %arrayidx45, align 1, !dbg !4718
  call void @llvm.dbg.value(metadata i8 %8, metadata !4669, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4678
  %u128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %e1, i64 0, i32 1, !dbg !4720
  %fld129 = bitcast %union.u* %u128 to [1 x %union.rtunion_def]*, !dbg !4720
  %u132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %e2, i64 0, i32 1, !dbg !4720
  %fld133 = bitcast %union.u* %u132 to [1 x %union.rtunion_def]*, !dbg !4720
  %9 = zext i8 %8 to i64, !dbg !4728
  br label %for.cond, !dbg !4728

for.cond:                                         ; preds = %for.inc145, %sw.epilog
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc145 ], [ %9, %sw.epilog ]
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, -1, !dbg !4729
  call void @llvm.dbg.value(metadata i32 undef, metadata !4669, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4678
  %cmp47 = icmp sgt i64 %indvars.iv6, 0, !dbg !4730
  br i1 %cmp47, label %for.body, label %cleanup.loopexit3, !dbg !4731

for.body:                                         ; preds = %for.cond
  %arrayidx50 = getelementptr inbounds i8, i8* %7, i64 %indvars.iv.next7, !dbg !4732
  %10 = load i8, i8* %arrayidx50, align 1, !dbg !4732
  %cmp52 = icmp eq i8 %10, 101, !dbg !4733
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !4734

if.then54:                                        ; preds = %for.body
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i64 0, i64 %indvars.iv.next7, !dbg !4735
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**, !dbg !4735
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4735
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !4676, metadata !DIExpression()), !dbg !4678
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i64 0, i64 %indvars.iv.next7, !dbg !4737
  %rt_rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**, !dbg !4737
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx61, align 8, !dbg !4737
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !4677, metadata !DIExpression()), !dbg !4678
  %call62 = tail call fastcc zeroext i8 @invariant_expr_equal_p(%struct.rtx_def* %insn1, %struct.rtx_def* %11, %struct.rtx_def* %insn2, %struct.rtx_def* %12) #8, !dbg !4738
  %tobool63 = icmp eq i8 %call62, 0, !dbg !4738
  br i1 %tobool63, label %cleanup.loopexit3, label %for.inc145, !dbg !4740

if.else:                                          ; preds = %for.body
  %cmp69 = icmp eq i8 %10, 69, !dbg !4741
  br i1 %cmp69, label %if.then71, label %if.else115, !dbg !4742

if.then71:                                        ; preds = %if.else
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i64 0, i64 %indvars.iv.next7, !dbg !4743
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtvec_def**, !dbg !4743
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4743
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %13, i64 0, i32 0, !dbg !4743
  %14 = load i32, i32* %num_elem, align 8, !dbg !4743
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i64 0, i64 %indvars.iv.next7, !dbg !4746
  %rt_rtvec80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtvec_def**, !dbg !4746
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec80, align 8, !dbg !4746
  %num_elem81 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i64 0, i32 0, !dbg !4746
  %16 = load i32, i32* %num_elem81, align 8, !dbg !4746
  %cmp82 = icmp eq i32 %14, %16, !dbg !4747
  br i1 %cmp82, label %for.cond86.preheader, label %cleanup.loopexit3, !dbg !4748

for.cond86.preheader:                             ; preds = %if.then71
  br label %for.cond86, !dbg !4749

for.cond86:                                       ; preds = %for.cond86.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond86.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !4751
  %17 = phi i32 [ %14, %for.cond86.preheader ], [ %.pre5, %for.inc ], !dbg !4751
  %18 = phi %struct.rtvec_def* [ %13, %for.cond86.preheader ], [ %.pre4, %for.inc ], !dbg !4751
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4670, metadata !DIExpression()), !dbg !4678
  %19 = sext i32 %17 to i64, !dbg !4753
  %cmp93 = icmp slt i64 %indvars.iv, %19, !dbg !4753
  br i1 %cmp93, label %for.body95, label %for.inc145.loopexit, !dbg !4749

for.body95:                                       ; preds = %for.cond86
  %arrayidx102 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i64 0, i32 1, i64 %indvars.iv, !dbg !4754
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx102, align 8, !dbg !4754
  call void @llvm.dbg.value(metadata %struct.rtx_def* %20, metadata !4676, metadata !DIExpression()), !dbg !4678
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec80, align 8, !dbg !4756
  %arrayidx110 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 1, i64 %indvars.iv, !dbg !4756
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx110, align 8, !dbg !4756
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !4677, metadata !DIExpression()), !dbg !4678
  %call111 = tail call fastcc zeroext i8 @invariant_expr_equal_p(%struct.rtx_def* %insn1, %struct.rtx_def* %20, %struct.rtx_def* %insn2, %struct.rtx_def* %22) #8, !dbg !4757
  %tobool112 = icmp eq i8 %call111, 0, !dbg !4757
  br i1 %tobool112, label %cleanup.loopexit, label %for.inc, !dbg !4759

for.inc:                                          ; preds = %for.body95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4760
  call void @llvm.dbg.value(metadata i32 undef, metadata !4670, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4678
  %.pre4 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4751
  %num_elem92.phi.trans.insert = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %.pre4, i64 0, i32 0, !dbg !4761
  %.pre5 = load i32, i32* %num_elem92.phi.trans.insert, align 8, !dbg !4751
  br label %for.cond86, !dbg !4762, !llvm.loop !4763

if.else115:                                       ; preds = %if.else
  %cmp119 = icmp eq i8 %10, 105, !dbg !4765
  br i1 %cmp119, label %if.then127, label %lor.lhs.false121, !dbg !4766

lor.lhs.false121:                                 ; preds = %if.else115
  %cmp125 = icmp eq i8 %10, 110, !dbg !4767
  br i1 %cmp125, label %if.then127, label %cleanup.loopexit3, !dbg !4768

if.then127:                                       ; preds = %lor.lhs.false121, %if.else115
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i64 0, i64 %indvars.iv.next7, !dbg !4769
  %rt_int = bitcast %union.rtunion_def* %arrayidx131 to i32*, !dbg !4769
  %23 = load i32, i32* %rt_int, align 8, !dbg !4769
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i64 0, i64 %indvars.iv.next7, !dbg !4770
  %rt_int136 = bitcast %union.rtunion_def* %arrayidx135 to i32*, !dbg !4770
  %24 = load i32, i32* %rt_int136, align 8, !dbg !4770
  %cmp137 = icmp eq i32 %23, %24, !dbg !4771
  br i1 %cmp137, label %for.inc145, label %cleanup.loopexit3, !dbg !4772

for.inc145.loopexit:                              ; preds = %for.cond86
  br label %for.inc145, !dbg !4773

for.inc145:                                       ; preds = %for.inc145.loopexit, %if.then54, %if.then127
  call void @llvm.dbg.value(metadata i32 undef, metadata !4669, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4678
  br label %for.cond, !dbg !4773, !llvm.loop !4774

cleanup.loopexit:                                 ; preds = %for.body95
  br label %cleanup, !dbg !4776

cleanup.loopexit3:                                ; preds = %lor.lhs.false121, %for.cond, %if.then127, %if.then71, %if.then54
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %lor.lhs.false121 ], [ 0, %if.then127 ], [ 0, %if.then71 ], [ 0, %if.then54 ]
  br label %cleanup, !dbg !4776

cleanup:                                          ; preds = %cleanup.loopexit3, %cleanup.loopexit, %lor.lhs.false, %entry, %if.end24, %cond.end37, %if.then21, %sw.bb
  %retval.0 = phi i8 [ %conv43, %cond.end37 ], [ %conv23, %if.then21 ], [ %conv, %sw.bb ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end24 ], [ 0, %cleanup.loopexit ], [ %retval.0.ph, %cleanup.loopexit3 ], !dbg !4678
  ret i8 %retval.0, !dbg !4776
}

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %union.df_ref_d* @df_find_use(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4777 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_base* %vec_, metadata !4781, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4782, metadata !DIExpression()), !dbg !4783
  br label %land.end, !dbg !4784

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4784
  %arrayidx = getelementptr inbounds %struct.VEC_invariant_p_base, %struct.VEC_invariant_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4784
  %0 = load %struct.invariant*, %struct.invariant** %arrayidx, align 8, !dbg !4784
  ret %struct.invariant* %0, !dbg !4784
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.invariant* @find_or_insert_inv(%struct.htab* %eq, %struct.rtx_def* %expr, i32 %mode, %struct.invariant* %inv) unnamed_addr #5 !dbg !4785 {
entry:
  %pentry = alloca %struct.invariant_expr_entry, align 8
  call void @llvm.dbg.value(metadata %struct.htab* %eq, metadata !4789, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata %struct.rtx_def* %expr, metadata !4790, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4791, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata %struct.invariant* %inv, metadata !4792, metadata !DIExpression()), !dbg !4797
  %insn = getelementptr inbounds %struct.invariant, %struct.invariant* %inv, i64 0, i32 5, !dbg !4798
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4798
  %call = tail call fastcc i32 @hash_invariant_expr_1(%struct.rtx_def* %0, %struct.rtx_def* %expr) #8, !dbg !4799
  call void @llvm.dbg.value(metadata i32 %call, metadata !4793, metadata !DIExpression()), !dbg !4797
  %1 = bitcast %struct.invariant_expr_entry* %pentry to i8*, !dbg !4800
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !4800
  %expr2 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %pentry, i64 0, i32 1, !dbg !4801
  store %struct.rtx_def* %expr, %struct.rtx_def** %expr2, align 8, !dbg !4802
  %inv3 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %pentry, i64 0, i32 0, !dbg !4803
  store %struct.invariant* %inv, %struct.invariant** %inv3, align 8, !dbg !4804
  %mode4 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %pentry, i64 0, i32 2, !dbg !4805
  store i32 %mode, i32* %mode4, align 8, !dbg !4806
  %call5 = call i8** @htab_find_slot_with_hash(%struct.htab* %eq, i8* nonnull %1, i32 %call, i32 1) #6, !dbg !4807
  call void @llvm.dbg.value(metadata i8** %call5, metadata !4796, metadata !DIExpression()), !dbg !4797
  %2 = bitcast i8** %call5 to %struct.invariant_expr_entry**, !dbg !4808
  %3 = load %struct.invariant_expr_entry*, %struct.invariant_expr_entry** %2, align 8, !dbg !4808
  call void @llvm.dbg.value(metadata %struct.invariant_expr_entry* %3, metadata !4794, metadata !DIExpression()), !dbg !4797
  %tobool = icmp eq %struct.invariant_expr_entry* %3, null, !dbg !4809
  br i1 %tobool, label %if.end, label %if.then, !dbg !4811

if.then:                                          ; preds = %entry
  %inv6 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %3, i64 0, i32 0, !dbg !4812
  %4 = load %struct.invariant*, %struct.invariant** %inv6, align 8, !dbg !4812
  br label %cleanup, !dbg !4813

if.end:                                           ; preds = %entry
  %call7 = call i8* @xmalloc(i64 24) #6, !dbg !4814
  call void @llvm.dbg.value(metadata i8* %call7, metadata !4794, metadata !DIExpression()), !dbg !4797
  %inv8 = bitcast i8* %call7 to %struct.invariant**, !dbg !4815
  store %struct.invariant* %inv, %struct.invariant** %inv8, align 8, !dbg !4816
  %expr9 = getelementptr inbounds i8, i8* %call7, i64 8, !dbg !4817
  %5 = bitcast i8* %expr9 to %struct.rtx_def**, !dbg !4817
  store %struct.rtx_def* %expr, %struct.rtx_def** %5, align 8, !dbg !4818
  %mode10 = getelementptr inbounds i8, i8* %call7, i64 16, !dbg !4819
  %6 = bitcast i8* %mode10 to i32*, !dbg !4819
  store i32 %mode, i32* %6, align 8, !dbg !4820
  %hash11 = getelementptr inbounds i8, i8* %call7, i64 20, !dbg !4821
  %7 = bitcast i8* %hash11 to i32*, !dbg !4821
  store i32 %call, i32* %7, align 4, !dbg !4822
  store i8* %call7, i8** %call5, align 8, !dbg !4823
  br label %cleanup, !dbg !4824

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.invariant* [ %4, %if.then ], [ %inv, %if.end ], !dbg !4797
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !4825
  ret %struct.invariant* %retval.0, !dbg !4825
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hash_invariant_expr_1(%struct.rtx_def* %insn, %struct.rtx_def* %x) unnamed_addr #5 !dbg !4826 {
entry:
  %do_not_record_p = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4830, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4831, metadata !DIExpression()), !dbg !4840
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4841
  %bf.load = load i32, i32* %0, align 8, !dbg !4841
  %bf.clear = and i32 %bf.load, 65535, !dbg !4841
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4832, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4836, metadata !DIExpression()), !dbg !4840
  %1 = bitcast i32* %do_not_record_p to i8*, !dbg !4842
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !4842
  %trunc = trunc i32 %bf.load to i16, !dbg !4843
  switch i16 %trunc, label %sw.epilog [
    i16 30, label %sw.bb
    i16 32, label %sw.bb
    i16 31, label %sw.bb
    i16 45, label %sw.bb
    i16 35, label %sw.bb
    i16 44, label %sw.bb
    i16 37, label %sw.bb3
  ], !dbg !4843

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4844
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !4844
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !4837, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  %call = call i32 @hash_rtx(%struct.rtx_def* %x, i32 %bf.clear2, i32* nonnull %do_not_record_p, i32* null, i8 zeroext 0) #6, !dbg !4846
  br label %cleanup, !dbg !4847

sw.bb3:                                           ; preds = %entry
  %call4 = tail call %union.df_ref_d* @df_find_use(%struct.rtx_def* %insn, %struct.rtx_def* %x) #6, !dbg !4848
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call4, metadata !4838, metadata !DIExpression()), !dbg !4840
  %tobool = icmp eq %union.df_ref_d* %call4, null, !dbg !4849
  br i1 %tobool, label %if.then, label %if.end, !dbg !4851

if.then:                                          ; preds = %sw.bb3
  %bf.load5 = load i32, i32* %0, align 8, !dbg !4852
  %bf.lshr6 = lshr i32 %bf.load5, 16, !dbg !4852
  %bf.clear7 = and i32 %bf.lshr6, 255, !dbg !4852
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !4837, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  %call8 = call i32 @hash_rtx(%struct.rtx_def* %x, i32 %bf.clear7, i32* nonnull %do_not_record_p, i32* null, i8 zeroext 0) #6, !dbg !4853
  br label %cleanup, !dbg !4854

if.end:                                           ; preds = %sw.bb3
  %call9 = tail call fastcc %struct.invariant* @invariant_for_use(%union.df_ref_d* nonnull %call4) #8, !dbg !4855
  call void @llvm.dbg.value(metadata %struct.invariant* %call9, metadata !4839, metadata !DIExpression()), !dbg !4840
  %tobool10 = icmp eq %struct.invariant* %call9, null, !dbg !4856
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !4858

if.then11:                                        ; preds = %if.end
  %bf.load12 = load i32, i32* %0, align 8, !dbg !4859
  %bf.lshr13 = lshr i32 %bf.load12, 16, !dbg !4859
  %bf.clear14 = and i32 %bf.lshr13, 255, !dbg !4859
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !4837, metadata !DIExpression(DW_OP_deref)), !dbg !4840
  %call15 = call i32 @hash_rtx(%struct.rtx_def* %x, i32 %bf.clear14, i32* nonnull %do_not_record_p, i32* null, i8 zeroext 0) #6, !dbg !4860
  br label %cleanup, !dbg !4861

if.end16:                                         ; preds = %if.end
  %eqto = getelementptr inbounds %struct.invariant, %struct.invariant* %call9, i64 0, i32 1, !dbg !4862
  %2 = load i32, i32* %eqto, align 4, !dbg !4862
  %cmp = icmp eq i32 %2, -1, !dbg !4862
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4862

cond.true:                                        ; preds = %if.end16
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4862
  %.pre = load i32, i32* %eqto, align 4, !dbg !4863
  br label %cond.end, !dbg !4862

cond.end:                                         ; preds = %if.end16, %cond.true
  %3 = phi i32 [ %2, %if.end16 ], [ %.pre, %cond.true ], !dbg !4863
  br label %cleanup, !dbg !4864

sw.epilog:                                        ; preds = %entry
  %idxprom = zext i32 %bf.clear to i64, !dbg !4865
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !4865
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !4865
  call void @llvm.dbg.value(metadata i8* %4, metadata !4835, metadata !DIExpression()), !dbg !4840
  %arrayidx19 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !4866
  %5 = load i8, i8* %arrayidx19, align 1, !dbg !4866
  call void @llvm.dbg.value(metadata i8 %5, metadata !4833, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  %u66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !4868
  %fld67 = bitcast %union.u* %u66 to [1 x %union.rtunion_def]*, !dbg !4868
  %6 = zext i8 %5 to i64, !dbg !4874
  br label %for.cond, !dbg !4874

for.cond:                                         ; preds = %for.inc74, %sw.epilog
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc74 ], [ %6, %sw.epilog ]
  %val.0 = phi i32 [ %val.4, %for.inc74 ], [ %bf.clear, %sw.epilog ], !dbg !4840
  %indvars.iv.next2 = add nsw i64 %indvars.iv1, -1, !dbg !4875
  call void @llvm.dbg.value(metadata i32 %val.0, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 undef, metadata !4833, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  %cmp20 = icmp sgt i64 %indvars.iv1, 0, !dbg !4876
  br i1 %cmp20, label %for.body, label %cleanup.loopexit, !dbg !4877

for.body:                                         ; preds = %for.cond
  %arrayidx23 = getelementptr inbounds i8, i8* %4, i64 %indvars.iv.next2, !dbg !4878
  %7 = load i8, i8* %arrayidx23, align 1, !dbg !4878
  %cmp25 = icmp eq i8 %7, 101, !dbg !4879
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !4880

if.then27:                                        ; preds = %for.body
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i64 0, i64 %indvars.iv.next2, !dbg !4881
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**, !dbg !4881
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4881
  %call30 = tail call fastcc i32 @hash_invariant_expr_1(%struct.rtx_def* %insn, %struct.rtx_def* %8) #8, !dbg !4882
  %xor = xor i32 %val.0, %call30, !dbg !4883
  call void @llvm.dbg.value(metadata i32 %xor, metadata !4836, metadata !DIExpression()), !dbg !4840
  br label %for.inc74, !dbg !4884

if.else:                                          ; preds = %for.body
  %cmp34 = icmp eq i8 %7, 69, !dbg !4885
  br i1 %cmp34, label %for.cond37.preheader, label %if.else54, !dbg !4886

for.cond37.preheader:                             ; preds = %if.else
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i64 0, i64 %indvars.iv.next2, !dbg !4887
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtvec_def**, !dbg !4887
  br label %for.cond37, !dbg !4891

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body44
  %indvars.iv = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next, %for.body44 ], !dbg !4892
  %val.1 = phi i32 [ %val.0, %for.cond37.preheader ], [ %xor53, %for.body44 ], !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.1, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4834, metadata !DIExpression()), !dbg !4840
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4893
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i64 0, i32 0, !dbg !4893
  %10 = load i32, i32* %num_elem, align 8, !dbg !4893
  %11 = sext i32 %10 to i64, !dbg !4894
  %cmp42 = icmp slt i64 %indvars.iv, %11, !dbg !4894
  br i1 %cmp42, label %for.body44, label %for.inc74.loopexit, !dbg !4891

for.body44:                                       ; preds = %for.cond37
  %arrayidx51 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i64 0, i32 1, i64 %indvars.iv, !dbg !4895
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx51, align 8, !dbg !4895
  %call52 = tail call fastcc i32 @hash_invariant_expr_1(%struct.rtx_def* %insn, %struct.rtx_def* %12) #8, !dbg !4896
  %xor53 = xor i32 %val.1, %call52, !dbg !4897
  call void @llvm.dbg.value(metadata i32 %xor53, metadata !4836, metadata !DIExpression()), !dbg !4840
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4898
  call void @llvm.dbg.value(metadata i32 undef, metadata !4834, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4840
  br label %for.cond37, !dbg !4899, !llvm.loop !4900

if.else54:                                        ; preds = %if.else
  %cmp58 = icmp eq i8 %7, 105, !dbg !4902
  br i1 %cmp58, label %if.then65, label %lor.lhs.false, !dbg !4903

lor.lhs.false:                                    ; preds = %if.else54
  %cmp63 = icmp eq i8 %7, 110, !dbg !4904
  br i1 %cmp63, label %if.then65, label %for.inc74, !dbg !4905

if.then65:                                        ; preds = %lor.lhs.false, %if.else54
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i64 0, i64 %indvars.iv.next2, !dbg !4906
  %rt_int = bitcast %union.rtunion_def* %arrayidx69 to i32*, !dbg !4906
  %13 = load i32, i32* %rt_int, align 8, !dbg !4906
  %xor70 = xor i32 %val.0, %13, !dbg !4907
  call void @llvm.dbg.value(metadata i32 %xor70, metadata !4836, metadata !DIExpression()), !dbg !4840
  br label %for.inc74, !dbg !4908

for.inc74.loopexit:                               ; preds = %for.cond37
  %val.1.lcssa = phi i32 [ %val.1, %for.cond37 ], !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.1.lcssa, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.1.lcssa, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.1.lcssa, metadata !4836, metadata !DIExpression()), !dbg !4840
  br label %for.inc74, !dbg !4909

for.inc74:                                        ; preds = %for.inc74.loopexit, %if.then27, %lor.lhs.false, %if.then65
  %val.4 = phi i32 [ %xor, %if.then27 ], [ %xor70, %if.then65 ], [ %val.0, %lor.lhs.false ], [ %val.1.lcssa, %for.inc74.loopexit ], !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.4, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 undef, metadata !4833, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  br label %for.cond, !dbg !4909, !llvm.loop !4910

cleanup.loopexit:                                 ; preds = %for.cond
  %val.0.lcssa = phi i32 [ %val.0, %for.cond ], !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.0.lcssa, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.0.lcssa, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %val.0.lcssa, metadata !4836, metadata !DIExpression()), !dbg !4840
  br label %cleanup, !dbg !4912

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end, %if.then11, %if.then, %sw.bb
  %retval.0 = phi i32 [ %3, %cond.end ], [ %call15, %if.then11 ], [ %call8, %if.then ], [ %call, %sw.bb ], [ %val.0.lcssa, %cleanup.loopexit ], !dbg !4840
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !4912
  ret i32 %retval.0, !dbg !4912
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @hash_rtx(%struct.rtx_def*, i32, i32*, i32*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @best_gain_for_invariant(%struct.invariant** %best, i32* %regs_needed, i32* %new_regs, i32 %regs_used, i8 zeroext %speed) unnamed_addr #5 !dbg !4913 {
entry:
  %inv = alloca %struct.invariant*, align 8
  %aregs_needed = alloca [27 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.invariant** %best, metadata !4917, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32* %regs_needed, metadata !4918, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32* %new_regs, metadata !4919, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 %regs_used, metadata !4920, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i8 %speed, metadata !4921, metadata !DIExpression()), !dbg !4928
  %0 = bitcast %struct.invariant** %inv to i8*, !dbg !4929
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4929
  call void @llvm.dbg.value(metadata i32 0, metadata !4924, metadata !DIExpression()), !dbg !4928
  %1 = bitcast [27 x i32]* %aregs_needed to i8*, !dbg !4930
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %1) #7, !dbg !4930
  call void @llvm.dbg.declare(metadata [27 x i32]* %aregs_needed, metadata !4926, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.value(metadata i32 0, metadata !4927, metadata !DIExpression()), !dbg !4928
  %arraydecay = getelementptr inbounds [27 x i32], [27 x i32]* %aregs_needed, i64 0, i64 0, !dbg !4932
  %2 = bitcast %struct.invariant** %inv to i64*, !dbg !4936
  %3 = bitcast %struct.invariant** %best to i64*, !dbg !4936
  br label %for.cond, !dbg !4939

for.cond:                                         ; preds = %for.inc24, %entry
  %gain.0 = phi i32 [ 0, %entry ], [ %gain.2, %for.inc24 ], !dbg !4940
  %invno.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !dbg !4941
  call void @llvm.dbg.value(metadata i32 %invno.0, metadata !4927, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 %gain.0, metadata !4924, metadata !DIExpression()), !dbg !4928
  %4 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !4942
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %4, i64 0, i32 0, !dbg !4942
  call void @llvm.dbg.value(metadata %struct.invariant** %inv, metadata !4922, metadata !DIExpression(DW_OP_deref)), !dbg !4928
  %call = call fastcc i32 @VEC_invariant_p_base_iterate(%struct.VEC_invariant_p_base* %base, i32 %invno.0, %struct.invariant** nonnull %inv) #8, !dbg !4942
  %tobool1 = icmp eq i32 %call, 0, !dbg !4943
  br i1 %tobool1, label %for.end26, label %for.body, !dbg !4943

for.body:                                         ; preds = %for.cond
  %5 = load %struct.invariant*, %struct.invariant** %inv, align 8, !dbg !4944
  call void @llvm.dbg.value(metadata %struct.invariant* %5, metadata !4922, metadata !DIExpression()), !dbg !4928
  %move = getelementptr inbounds %struct.invariant, %struct.invariant* %5, i64 0, i32 7, !dbg !4946
  %6 = load i8, i8* %move, align 1, !dbg !4946
  %tobool2 = icmp eq i8 %6, 0, !dbg !4944
  br i1 %tobool2, label %if.end, label %for.inc24, !dbg !4947

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.invariant* %5, metadata !4922, metadata !DIExpression()), !dbg !4928
  %eqto = getelementptr inbounds %struct.invariant, %struct.invariant* %5, i64 0, i32 1, !dbg !4948
  %7 = load i32, i32* %eqto, align 4, !dbg !4948
  call void @llvm.dbg.value(metadata %struct.invariant* %5, metadata !4922, metadata !DIExpression()), !dbg !4928
  %invno3 = getelementptr inbounds %struct.invariant, %struct.invariant* %5, i64 0, i32 0, !dbg !4950
  %8 = load i32, i32* %invno3, align 8, !dbg !4950
  %cmp = icmp eq i32 %7, %8, !dbg !4951
  br i1 %cmp, label %if.end5, label %for.inc24, !dbg !4952

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.invariant* %5, metadata !4922, metadata !DIExpression()), !dbg !4928
  %call6 = call fastcc i32 @gain_for_invariant(%struct.invariant* %5, i32* nonnull %arraydecay, i32* %new_regs, i32 %regs_used, i8 zeroext %speed) #8, !dbg !4953
  call void @llvm.dbg.value(metadata i32 %call6, metadata !4925, metadata !DIExpression()), !dbg !4928
  %cmp7 = icmp sgt i32 %call6, %gain.0, !dbg !4954
  br i1 %cmp7, label %if.then8, label %for.inc24, !dbg !4955

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata i32 %call6, metadata !4924, metadata !DIExpression()), !dbg !4928
  %9 = load i64, i64* %2, align 8, !dbg !4956
  store i64 %9, i64* %3, align 8, !dbg !4957
  %10 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !4958
  %tobool9 = icmp eq i32 %10, 0, !dbg !4958
  br i1 %tobool9, label %if.then10, label %for.cond12.preheader, !dbg !4960

for.cond12.preheader:                             ; preds = %if.then8
  br label %for.cond12, !dbg !4961

if.then10:                                        ; preds = %if.then8
  %11 = load i32, i32* %arraydecay, align 16, !dbg !4964
  store i32 %11, i32* %regs_needed, align 4, !dbg !4965
  br label %for.inc24, !dbg !4966

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body14
  %indvars.iv = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next, %for.body14 ], !dbg !4967
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4923, metadata !DIExpression()), !dbg !4928
  %12 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !4968
  %13 = sext i32 %12 to i64, !dbg !4970
  %cmp13 = icmp slt i64 %indvars.iv, %13, !dbg !4970
  br i1 %cmp13, label %for.body14, label %for.inc24.loopexit, !dbg !4961

for.body14:                                       ; preds = %for.cond12
  %arrayidx15 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv, !dbg !4971
  %14 = load i32, i32* %arrayidx15, align 4, !dbg !4971
  %idxprom16 = zext i32 %14 to i64, !dbg !4972
  %arrayidx17 = getelementptr inbounds [27 x i32], [27 x i32]* %aregs_needed, i64 0, i64 %idxprom16, !dbg !4972
  %15 = load i32, i32* %arrayidx17, align 4, !dbg !4972
  %arrayidx21 = getelementptr inbounds i32, i32* %regs_needed, i64 %idxprom16, !dbg !4973
  store i32 %15, i32* %arrayidx21, align 4, !dbg !4974
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4975
  call void @llvm.dbg.value(metadata i32 undef, metadata !4923, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4928
  br label %for.cond12, !dbg !4976, !llvm.loop !4977

for.inc24.loopexit:                               ; preds = %for.cond12
  br label %for.inc24, !dbg !4979

for.inc24:                                        ; preds = %for.inc24.loopexit, %if.end, %for.body, %if.end5, %if.then10
  %gain.2 = phi i32 [ %gain.0, %for.body ], [ %gain.0, %if.end ], [ %gain.0, %if.end5 ], [ %call6, %if.then10 ], [ %call6, %for.inc24.loopexit ], !dbg !4928
  call void @llvm.dbg.value(metadata i32 %gain.2, metadata !4924, metadata !DIExpression()), !dbg !4928
  %inc25 = add i32 %invno.0, 1, !dbg !4979
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !4927, metadata !DIExpression()), !dbg !4928
  br label %for.cond, !dbg !4980, !llvm.loop !4981

for.end26:                                        ; preds = %for.cond
  %gain.0.lcssa = phi i32 [ %gain.0, %for.cond ], !dbg !4940
  call void @llvm.dbg.value(metadata i32 %gain.0.lcssa, metadata !4924, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 %gain.0.lcssa, metadata !4924, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 %gain.0.lcssa, metadata !4924, metadata !DIExpression()), !dbg !4928
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %1) #7, !dbg !4983
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4983
  ret i32 %gain.0.lcssa, !dbg !4984
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_move_mark(i32 %invno, i32 %gain) unnamed_addr #5 !dbg !4985 {
entry:
  %invno.addr = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %invno, metadata !4989, metadata !DIExpression()), !dbg !4993
  store i32 %invno, i32* %invno.addr, align 4
  call void @llvm.dbg.value(metadata i32 %gain, metadata !4990, metadata !DIExpression()), !dbg !4993
  %0 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !4994
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %0, i64 0, i32 0, !dbg !4994
  call void @llvm.dbg.value(metadata i32 %invno, metadata !4989, metadata !DIExpression()), !dbg !4993
  %call = tail call fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %base, i32 %invno) #8, !dbg !4994
  call void @llvm.dbg.value(metadata %struct.invariant* %call, metadata !4991, metadata !DIExpression()), !dbg !4993
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4995
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !4995
  %2 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !4996
  %base3 = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %2, i64 0, i32 0, !dbg !4996
  %eqto = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 1, !dbg !4996
  %3 = load i32, i32* %eqto, align 4, !dbg !4996
  %call7 = tail call fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %base3, i32 %3) #8, !dbg !4996
  call void @llvm.dbg.value(metadata %struct.invariant* %call7, metadata !4991, metadata !DIExpression()), !dbg !4993
  %move = getelementptr inbounds %struct.invariant, %struct.invariant* %call7, i64 0, i32 7, !dbg !4997
  %4 = load i8, i8* %move, align 1, !dbg !4997
  %tobool8 = icmp eq i8 %4, 0, !dbg !4999
  br i1 %tobool8, label %if.end, label %cleanup, !dbg !5000

if.end:                                           ; preds = %entry
  store i8 1, i8* %move, align 1, !dbg !5001
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5002
  %tobool10 = icmp eq %struct._IO_FILE* %5, null, !dbg !5002
  br i1 %tobool10, label %if.end16, label %if.then11, !dbg !5004

if.then11:                                        ; preds = %if.end
  %cmp = icmp sgt i32 %gain, -1, !dbg !5005
  call void @llvm.dbg.value(metadata i32 %invno, metadata !4989, metadata !DIExpression()), !dbg !4993
  br i1 %cmp, label %if.then12, label %if.else, !dbg !5008

if.then12:                                        ; preds = %if.then11
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %invno, i32 %gain) #6, !dbg !5009
  br label %if.end16, !dbg !5009

if.else:                                          ; preds = %if.then11
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %invno) #6, !dbg !5010
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then12, %if.else
  %depends_on = getelementptr inbounds %struct.invariant, %struct.invariant* %call7, i64 0, i32 10, !dbg !5011
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %depends_on, align 8, !dbg !5011
  call void @llvm.dbg.value(metadata i32* %invno.addr, metadata !4989, metadata !DIExpression(DW_OP_deref)), !dbg !4993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4992, metadata !DIExpression(DW_OP_deref)), !dbg !4993
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %6, i32 0, i32* nonnull %invno.addr) #8, !dbg !5011
  br label %for.cond, !dbg !5011

for.cond:                                         ; preds = %for.body, %if.end16
  call void @llvm.dbg.value(metadata i32* %invno.addr, metadata !4989, metadata !DIExpression(DW_OP_deref)), !dbg !4993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4992, metadata !DIExpression(DW_OP_deref)), !dbg !4993
  %call17 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %invno.addr) #8, !dbg !5013
  %tobool18 = icmp eq i8 %call17, 0, !dbg !5011
  br i1 %tobool18, label %cleanup.loopexit, label %for.body, !dbg !5011

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %invno.addr, align 4, !dbg !5015
  call void @llvm.dbg.value(metadata i32 %7, metadata !4989, metadata !DIExpression()), !dbg !4993
  call fastcc void @set_move_mark(i32 %7, i32 -1) #8, !dbg !5017
  call void @llvm.dbg.value(metadata i32* %invno.addr, metadata !4989, metadata !DIExpression(DW_OP_deref)), !dbg !4993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4992, metadata !DIExpression(DW_OP_deref)), !dbg !4993
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %invno.addr) #8, !dbg !5013
  br label %for.cond, !dbg !5013, !llvm.loop !5018

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !5020

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !5020
  ret void, !dbg !5020
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gain_for_invariant(%struct.invariant* %inv, i32* %regs_needed, i32* %new_regs, i32 %regs_used, i8 zeroext %speed) unnamed_addr #5 !dbg !5021 {
entry:
  %comp_cost = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.invariant* %inv, metadata !5025, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata i32* %regs_needed, metadata !5026, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata i32* %new_regs, metadata !5027, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata i32 %regs_used, metadata !5028, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata i8 %speed, metadata !5029, metadata !DIExpression()), !dbg !5036
  %0 = bitcast i32* %comp_cost to i8*, !dbg !5037
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !5037
  %1 = load i32, i32* @actual_stamp, align 4, !dbg !5038
  %inc = add i32 %1, 1, !dbg !5038
  store i32 %inc, i32* @actual_stamp, align 4, !dbg !5038
  call void @llvm.dbg.value(metadata i32* %comp_cost, metadata !5030, metadata !DIExpression(DW_OP_deref)), !dbg !5036
  call fastcc void @get_inv_cost(%struct.invariant* %inv, i32* nonnull %comp_cost, i32* %regs_needed) #8, !dbg !5039
  %2 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !5040
  %tobool = icmp eq i32 %2, 0, !dbg !5040
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !5041

for.cond.preheader:                               ; preds = %entry
  %3 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !5042
  %4 = load %struct.loop*, %struct.loop** @curr_loop, align 8, !dbg !5045
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %4, i64 0, i32 10, !dbg !5045
  %5 = bitcast i8** %aux to %struct.loop_data**, !dbg !5045
  %6 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !5045
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %6, i64 107, i32 1, !dbg !5045
  %7 = sext i32 %3 to i64, !dbg !5048
  br label %for.cond, !dbg !5048

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %new_regs, align 4, !dbg !5049
  %9 = load i32, i32* %regs_needed, align 4, !dbg !5051
  %add = add i32 %8, %9, !dbg !5052
  %call = call i32 @estimate_reg_pressure_cost(i32 %add, i32 %regs_used, i8 zeroext %speed) #6, !dbg !5053
  %10 = load i32, i32* %new_regs, align 4, !dbg !5054
  %call3 = call i32 @estimate_reg_pressure_cost(i32 %10, i32 %regs_used, i8 zeroext %speed) #6, !dbg !5055
  %sub = sub i32 %call, %call3, !dbg !5056
  call void @llvm.dbg.value(metadata i32 %sub, metadata !5031, metadata !DIExpression()), !dbg !5036
  br label %if.end25, !dbg !5057

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !5058
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5032, metadata !DIExpression()), !dbg !5059
  %cmp = icmp slt i64 %indvars.iv, %7, !dbg !5060
  br i1 %cmp, label %for.body, label %for.end, !dbg !5048

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv, !dbg !5061
  %11 = load i32, i32* %arrayidx4, align 4, !dbg !5061
  call void @llvm.dbg.value(metadata i32 %11, metadata !5035, metadata !DIExpression()), !dbg !5059
  %idxprom5 = zext i32 %11 to i64, !dbg !5062
  %arrayidx6 = getelementptr inbounds i32, i32* %new_regs, i64 %idxprom5, !dbg !5062
  %12 = load i32, i32* %arrayidx6, align 4, !dbg !5062
  %arrayidx8 = getelementptr inbounds i32, i32* %regs_needed, i64 %idxprom5, !dbg !5063
  %13 = load i32, i32* %arrayidx8, align 4, !dbg !5063
  %add9 = add nsw i32 %12, %13, !dbg !5064
  %14 = load %struct.loop_data*, %struct.loop_data** %5, align 8, !dbg !5065
  %arrayidx11 = getelementptr inbounds %struct.loop_data, %struct.loop_data* %14, i64 0, i32 2, i64 %idxprom5, !dbg !5065
  %15 = load i32, i32* %arrayidx11, align 4, !dbg !5065
  %add12 = add nsw i32 %add9, %15, !dbg !5066
  %16 = load i32, i32* %value, align 8, !dbg !5067
  %add14 = add nsw i32 %add12, %16, !dbg !5068
  %arrayidx16 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom5, !dbg !5069
  %17 = load i32, i32* %arrayidx16, align 4, !dbg !5069
  %cmp17 = icmp sgt i32 %add14, %17, !dbg !5070
  br i1 %cmp17, label %for.end, label %for.inc, !dbg !5071

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5072
  call void @llvm.dbg.value(metadata i32 undef, metadata !5032, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5059
  br label %for.cond, !dbg !5073, !llvm.loop !5074

for.end:                                          ; preds = %for.body, %for.cond
  %cmp.lcssa = phi i1 [ %cmp, %for.body ], [ %cmp, %for.cond ], !dbg !5060
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5032, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5032, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 0, metadata !5031, metadata !DIExpression()), !dbg !5036
  br i1 %cmp.lcssa, label %cleanup27, label %if.end25

if.end25:                                         ; preds = %for.end, %if.then
  %size_cost.1 = phi i32 [ %sub, %if.then ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i32 %size_cost.1, metadata !5031, metadata !DIExpression()), !dbg !5036
  %18 = load i32, i32* %comp_cost, align 4, !dbg !5076
  call void @llvm.dbg.value(metadata i32 %18, metadata !5030, metadata !DIExpression()), !dbg !5036
  %sub26 = sub nsw i32 %18, %size_cost.1, !dbg !5077
  br label %cleanup27, !dbg !5078

cleanup27:                                        ; preds = %for.end, %if.end25
  %retval.1 = phi i32 [ -1, %for.end ], [ %sub26, %if.end25 ], !dbg !5036
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !5079
  ret i32 %retval.1, !dbg !5079
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_inv_cost(%struct.invariant* %inv, i32* %comp_cost, i32* %regs_needed) unnamed_addr #5 !dbg !5080 {
entry:
  %acomp_cost = alloca i32, align 4
  %aregs_needed = alloca [27 x i32], align 16
  %depno = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %nregs = alloca i32, align 4
  %nregs187 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.invariant* %inv, metadata !5084, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32* %comp_cost, metadata !5085, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32* %regs_needed, metadata !5086, metadata !DIExpression()), !dbg !5109
  %0 = bitcast i32* %acomp_cost to i8*, !dbg !5110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !5110
  %1 = bitcast [27 x i32]* %aregs_needed to i8*, !dbg !5111
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %1) #7, !dbg !5111
  call void @llvm.dbg.declare(metadata [27 x i32]* %aregs_needed, metadata !5089, metadata !DIExpression()), !dbg !5112
  %2 = bitcast i32* %depno to i8*, !dbg !5113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7, !dbg !5113
  %3 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !5114
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !5114
  %4 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !5115
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %4, i64 0, i32 0, !dbg !5115
  %eqto = getelementptr inbounds %struct.invariant, %struct.invariant* %inv, i64 0, i32 1, !dbg !5115
  %5 = load i32, i32* %eqto, align 4, !dbg !5115
  %call = tail call fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %base, i32 %5) #8, !dbg !5115
  call void @llvm.dbg.value(metadata %struct.invariant* %call, metadata !5084, metadata !DIExpression()), !dbg !5109
  store i32 0, i32* %comp_cost, align 4, !dbg !5116
  %6 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !5117
  %tobool1 = icmp eq i32 %6, 0, !dbg !5117
  br i1 %tobool1, label %if.then, label %for.cond.preheader, !dbg !5119

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !5120

if.then:                                          ; preds = %entry
  store i32 0, i32* %regs_needed, align 4, !dbg !5123
  br label %if.end, !dbg !5124

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv3 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next4, %for.body ], !dbg !5125
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !5087, metadata !DIExpression()), !dbg !5109
  %7 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !5126
  %8 = sext i32 %7 to i64, !dbg !5128
  %cmp = icmp slt i64 %indvars.iv3, %8, !dbg !5128
  br i1 %cmp, label %for.body, label %if.end.loopexit, !dbg !5120

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv3, !dbg !5129
  %9 = load i32, i32* %arrayidx2, align 4, !dbg !5129
  %idxprom3 = zext i32 %9 to i64, !dbg !5130
  %arrayidx4 = getelementptr inbounds i32, i32* %regs_needed, i64 %idxprom3, !dbg !5130
  store i32 0, i32* %arrayidx4, align 4, !dbg !5131
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !5132
  call void @llvm.dbg.value(metadata i32 undef, metadata !5087, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5109
  br label %for.cond, !dbg !5133, !llvm.loop !5134

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5136

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %move = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 7, !dbg !5136
  %10 = load i8, i8* %move, align 1, !dbg !5136
  %tobool5 = icmp eq i8 %10, 0, !dbg !5138
  br i1 %tobool5, label %lor.lhs.false, label %cleanup, !dbg !5139

lor.lhs.false:                                    ; preds = %if.end
  %stamp = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 11, !dbg !5140
  %11 = load i32, i32* %stamp, align 8, !dbg !5140
  %12 = load i32, i32* @actual_stamp, align 4, !dbg !5141
  %cmp6 = icmp eq i32 %11, %12, !dbg !5142
  br i1 %cmp6, label %cleanup, label %if.end9, !dbg !5143

if.end9:                                          ; preds = %lor.lhs.false
  store i32 %12, i32* %stamp, align 8, !dbg !5144
  %13 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !5145
  %tobool11 = icmp eq i32 %13, 0, !dbg !5145
  br i1 %tobool11, label %if.then12, label %if.else15, !dbg !5146

if.then12:                                        ; preds = %if.end9
  %14 = load i32, i32* %regs_needed, align 4, !dbg !5147
  %inc14 = add i32 %14, 1, !dbg !5147
  store i32 %inc14, i32* %regs_needed, align 4, !dbg !5147
  br label %if.end19, !dbg !5148

if.else15:                                        ; preds = %if.end9
  %15 = bitcast i32* %nregs to i8*, !dbg !5149
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #7, !dbg !5149
  %insn = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 5, !dbg !5150
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !5150
  call void @llvm.dbg.value(metadata i32* %nregs, metadata !5093, metadata !DIExpression(DW_OP_deref)), !dbg !5151
  %call16 = call fastcc i32 @get_cover_class_and_nregs(%struct.rtx_def* %16, i32* nonnull %nregs) #8, !dbg !5152
  call void @llvm.dbg.value(metadata i32 %call16, metadata !5096, metadata !DIExpression()), !dbg !5151
  %17 = load i32, i32* %nregs, align 4, !dbg !5153
  call void @llvm.dbg.value(metadata i32 %17, metadata !5093, metadata !DIExpression()), !dbg !5151
  %idxprom17 = zext i32 %call16 to i64, !dbg !5154
  %arrayidx18 = getelementptr inbounds i32, i32* %regs_needed, i64 %idxprom17, !dbg !5154
  %18 = load i32, i32* %arrayidx18, align 4, !dbg !5155
  %add = add i32 %18, %17, !dbg !5155
  store i32 %add, i32* %arrayidx18, align 4, !dbg !5155
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #7, !dbg !5156
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then12
  %cheap_address = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 8, !dbg !5157
  %19 = load i8, i8* %cheap_address, align 2, !dbg !5157
  %tobool20 = icmp eq i8 %19, 0, !dbg !5159
  br i1 %tobool20, label %if.then25, label %lor.lhs.false21, !dbg !5160

lor.lhs.false21:                                  ; preds = %if.end19
  %def = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 4, !dbg !5161
  %20 = load %struct.def*, %struct.def** %def, align 8, !dbg !5161
  %n_addr_uses = getelementptr inbounds %struct.def, %struct.def* %20, i64 0, i32 2, !dbg !5162
  %21 = load i32, i32* %n_addr_uses, align 4, !dbg !5162
  %n_uses = getelementptr inbounds %struct.def, %struct.def* %20, i64 0, i32 1, !dbg !5163
  %22 = load i32, i32* %n_uses, align 8, !dbg !5163
  %cmp23 = icmp ult i32 %21, %22, !dbg !5164
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !5165

if.then25:                                        ; preds = %if.end19, %lor.lhs.false21
  %cost = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 9, !dbg !5166
  %23 = load i32, i32* %cost, align 4, !dbg !5166
  %24 = load i32, i32* %comp_cost, align 4, !dbg !5167
  %add26 = add i32 %24, %23, !dbg !5167
  store i32 %add26, i32* %comp_cost, align 4, !dbg !5167
  br label %if.end27, !dbg !5168

if.end27:                                         ; preds = %if.then25, %lor.lhs.false21
  %insn28 = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 5, !dbg !5169
  %25 = bitcast %struct.rtx_def** %insn28 to i32**, !dbg !5169
  %26 = load i32*, i32** %25, align 8, !dbg !5169
  %bf.load = load i32, i32* %26, align 8, !dbg !5169
  %bf.clear = and i32 %bf.load, 65535, !dbg !5169
  %cmp29 = icmp eq i32 %bf.clear, 8, !dbg !5169
  %27 = bitcast i32* %26 to %struct.rtx_def*, !dbg !5169
  br i1 %cmp29, label %cond.true49, label %lor.lhs.false31, !dbg !5169

lor.lhs.false31:                                  ; preds = %if.end27
  %cmp35 = icmp eq i32 %bf.clear, 7, !dbg !5169
  br i1 %cmp35, label %cond.true49, label %lor.lhs.false37, !dbg !5169

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %cmp41 = icmp eq i32 %bf.clear, 9, !dbg !5169
  br i1 %cmp41, label %cond.true49, label %lor.lhs.false43, !dbg !5169

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %cmp47 = icmp eq i32 %bf.clear, 10, !dbg !5169
  br i1 %cmp47, label %cond.true49, label %cond.end73, !dbg !5169

cond.true49:                                      ; preds = %lor.lhs.false43, %lor.lhs.false37, %lor.lhs.false31, %if.end27
  %28 = getelementptr inbounds i32, i32* %26, i64 12, !dbg !5169
  %29 = bitcast i32* %28 to i32**, !dbg !5169
  %30 = load i32*, i32** %29, align 8, !dbg !5169
  %bf.load52 = load i32, i32* %30, align 8, !dbg !5169
  %bf.clear53 = and i32 %bf.load52, 65535, !dbg !5169
  %cmp54 = icmp eq i32 %bf.clear53, 23, !dbg !5169
  %31 = bitcast i32* %30 to %struct.rtx_def*, !dbg !5169
  br i1 %cmp54, label %cond.true56, label %cond.false62, !dbg !5169

cond.true56:                                      ; preds = %cond.true49
  br label %cond.end73, !dbg !5169

cond.false62:                                     ; preds = %cond.true49
  %call69 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %27, %struct.rtx_def* %31) #6, !dbg !5169
  br label %cond.end73, !dbg !5169

cond.end73:                                       ; preds = %lor.lhs.false43, %cond.true56, %cond.false62
  %cond74 = phi %struct.rtx_def* [ %31, %cond.true56 ], [ %call69, %cond.false62 ], [ null, %lor.lhs.false43 ], !dbg !5169
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond74, metadata !5097, metadata !DIExpression()), !dbg !5170
  %tobool75 = icmp eq %struct.rtx_def* %cond74, null, !dbg !5171
  br i1 %tobool75, label %if.end136, label %land.lhs.true, !dbg !5173

land.lhs.true:                                    ; preds = %cond.end73
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond74, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !5174
  %33 = bitcast %union.rtunion_def* %32 to i32**, !dbg !5174
  %34 = load i32*, i32** %33, align 8, !dbg !5174
  %bf.load80 = load i32, i32* %34, align 8, !dbg !5174
  %bf.clear81 = and i32 %bf.load80, 16711680, !dbg !5174
  %cmp82 = icmp eq i32 %bf.clear81, 2490368, !dbg !5174
  %35 = bitcast i32* %34 to %struct.rtx_def*, !dbg !5174
  br i1 %cmp82, label %land.lhs.true84, label %lor.lhs.false91, !dbg !5174

land.lhs.true84:                                  ; preds = %land.lhs.true
  %36 = load i32, i32* @ix86_isa_flags, align 4, !dbg !5174
  %and = and i32 %36, 65536, !dbg !5174
  %cmp85 = icmp eq i32 %and, 0, !dbg !5174
  br i1 %cmp85, label %land.lhs.true119, label %lor.lhs.false87, !dbg !5174

lor.lhs.false87:                                  ; preds = %land.lhs.true84
  %37 = load i32, i32* @ix86_fpmath, align 4, !dbg !5174
  %and88 = and i32 %37, 2, !dbg !5174
  %cmp89 = icmp eq i32 %and88, 0, !dbg !5174
  br i1 %cmp89, label %land.lhs.true119, label %lor.lhs.false91, !dbg !5174

lor.lhs.false91:                                  ; preds = %lor.lhs.false87, %land.lhs.true
  %cmp99 = icmp eq i32 %bf.clear81, 2555904, !dbg !5174
  br i1 %cmp99, label %land.lhs.true101, label %lor.lhs.false109, !dbg !5174

land.lhs.true101:                                 ; preds = %lor.lhs.false91
  %38 = load i32, i32* @ix86_isa_flags, align 4, !dbg !5174
  %and102 = and i32 %38, 131072, !dbg !5174
  %cmp103 = icmp eq i32 %and102, 0, !dbg !5174
  br i1 %cmp103, label %land.lhs.true119, label %lor.lhs.false105, !dbg !5174

lor.lhs.false105:                                 ; preds = %land.lhs.true101
  %39 = load i32, i32* @ix86_fpmath, align 4, !dbg !5174
  %and106 = and i32 %39, 2, !dbg !5174
  %cmp107 = icmp eq i32 %and106, 0, !dbg !5174
  br i1 %cmp107, label %land.lhs.true119, label %lor.lhs.false109, !dbg !5174

lor.lhs.false109:                                 ; preds = %lor.lhs.false105, %lor.lhs.false91
  %cmp117 = icmp eq i32 %bf.clear81, 2621440, !dbg !5174
  br i1 %cmp117, label %land.lhs.true119, label %if.end136, !dbg !5175

land.lhs.true119:                                 ; preds = %lor.lhs.false87, %land.lhs.true84, %lor.lhs.false105, %land.lhs.true101, %lor.lhs.false109
  %call124 = call zeroext i8 @constant_pool_constant_p(%struct.rtx_def* %35) #6, !dbg !5176
  %tobool126 = icmp eq i8 %call124, 0, !dbg !5176
  br i1 %tobool126, label %if.end136, label %if.then127, !dbg !5177

if.then127:                                       ; preds = %land.lhs.true119
  %40 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !5178
  %tobool128 = icmp eq i32 %40, 0, !dbg !5178
  br i1 %tobool128, label %if.else132, label %if.then129, !dbg !5181

if.then129:                                       ; preds = %if.then127
  %arrayidx130 = getelementptr inbounds i32, i32* %regs_needed, i64 16, !dbg !5182
  %41 = load i32, i32* %arrayidx130, align 4, !dbg !5183
  %add131 = add i32 %41, 2, !dbg !5183
  store i32 %add131, i32* %arrayidx130, align 4, !dbg !5183
  br label %if.end136, !dbg !5182

if.else132:                                       ; preds = %if.then127
  %42 = load i32, i32* %regs_needed, align 4, !dbg !5184
  %add134 = add i32 %42, 2, !dbg !5184
  store i32 %add134, i32* %regs_needed, align 4, !dbg !5184
  br label %if.end136

if.end136:                                        ; preds = %land.lhs.true119, %cond.end73, %if.then129, %if.else132, %lor.lhs.false109
  %depends_on = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 10, !dbg !5185
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %depends_on, align 8, !dbg !5185
  call void @llvm.dbg.value(metadata i32* %depno, metadata !5090, metadata !DIExpression(DW_OP_deref)), !dbg !5109
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !5092, metadata !DIExpression(DW_OP_deref)), !dbg !5109
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %43, i32 0, i32* nonnull %depno) #8, !dbg !5185
  %arraydecay = getelementptr inbounds [27 x i32], [27 x i32]* %aregs_needed, i64 0, i64 0, !dbg !5186
  %44 = bitcast i32* %nregs187 to i8*, !dbg !5187
  br label %for.cond137, !dbg !5185

for.cond137:                                      ; preds = %if.end217, %if.end136
  call void @llvm.dbg.value(metadata i32* %depno, metadata !5090, metadata !DIExpression(DW_OP_deref)), !dbg !5109
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !5092, metadata !DIExpression(DW_OP_deref)), !dbg !5109
  %call138 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %depno) #8, !dbg !5188
  %tobool139 = icmp eq i8 %call138, 0, !dbg !5185
  br i1 %tobool139, label %cleanup.loopexit, label %for.body140, !dbg !5185

for.body140:                                      ; preds = %for.cond137
  %45 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !5189
  %base143 = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %45, i64 0, i32 0, !dbg !5189
  %46 = load i32, i32* %depno, align 4, !dbg !5189
  call void @llvm.dbg.value(metadata i32 %46, metadata !5090, metadata !DIExpression()), !dbg !5109
  %call147 = call fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %base143, i32 %46) #8, !dbg !5189
  call void @llvm.dbg.value(metadata %struct.invariant* %call147, metadata !5091, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32* %acomp_cost, metadata !5088, metadata !DIExpression(DW_OP_deref)), !dbg !5109
  call fastcc void @get_inv_cost(%struct.invariant* %call147, i32* nonnull %acomp_cost, i32* nonnull %arraydecay) #8, !dbg !5190
  %47 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !5191
  %tobool148 = icmp eq i32 %47, 0, !dbg !5191
  br i1 %tobool148, label %if.then149, label %for.cond155.preheader, !dbg !5193

for.cond155.preheader:                            ; preds = %for.body140
  %48 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !5194
  %49 = sext i32 %48 to i64, !dbg !5198
  br label %for.cond155, !dbg !5198

if.then149:                                       ; preds = %for.body140
  %50 = load i32, i32* %arraydecay, align 16, !dbg !5199
  %cmp151 = icmp ne i32 %50, 0, !dbg !5200
  call void @llvm.dbg.value(metadata i1 %cmp151, metadata !5099, metadata !DIExpression()), !dbg !5186
  br label %if.end173, !dbg !5201

for.cond155:                                      ; preds = %for.cond155.preheader, %for.inc167
  %indvars.iv = phi i64 [ 0, %for.cond155.preheader ], [ %indvars.iv.next, %for.inc167 ], !dbg !5202
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5087, metadata !DIExpression()), !dbg !5109
  %cmp156 = icmp slt i64 %indvars.iv, %49, !dbg !5203
  br i1 %cmp156, label %for.body158, label %for.end169, !dbg !5198

for.body158:                                      ; preds = %for.cond155
  %arrayidx160 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv, !dbg !5204
  %51 = load i32, i32* %arrayidx160, align 4, !dbg !5204
  %idxprom161 = zext i32 %51 to i64, !dbg !5206
  %arrayidx162 = getelementptr inbounds [27 x i32], [27 x i32]* %aregs_needed, i64 0, i64 %idxprom161, !dbg !5206
  %52 = load i32, i32* %arrayidx162, align 4, !dbg !5206
  %cmp163 = icmp eq i32 %52, 0, !dbg !5207
  br i1 %cmp163, label %for.inc167, label %for.end169, !dbg !5208

for.inc167:                                       ; preds = %for.body158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5209
  call void @llvm.dbg.value(metadata i32 undef, metadata !5087, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5109
  br label %for.cond155, !dbg !5210, !llvm.loop !5211

for.end169:                                       ; preds = %for.body158, %for.cond155
  %cmp156.lcssa = phi i1 [ %cmp156, %for.body158 ], [ %cmp156, %for.cond155 ], !dbg !5203
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5087, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5087, metadata !DIExpression()), !dbg !5109
  br label %if.end173

if.end173:                                        ; preds = %for.end169, %if.then149
  %check_p.0.in = phi i1 [ %cmp156.lcssa, %for.end169 ], [ %cmp151, %if.then149 ]
  call void @llvm.dbg.value(metadata i1 %check_p.0.in, metadata !5099, metadata !DIExpression()), !dbg !5186
  br i1 %check_p.0.in, label %land.lhs.true176, label %if.end194, !dbg !5213

land.lhs.true176:                                 ; preds = %if.end173
  %always_executed = getelementptr inbounds %struct.invariant, %struct.invariant* %call147, i64 0, i32 6, !dbg !5214
  %53 = load i8, i8* %always_executed, align 8, !dbg !5214
  %tobool178 = icmp eq i8 %53, 0, !dbg !5215
  br i1 %tobool178, label %if.end194, label %land.lhs.true179, !dbg !5216

land.lhs.true179:                                 ; preds = %land.lhs.true176
  %def180 = getelementptr inbounds %struct.invariant, %struct.invariant* %call147, i64 0, i32 4, !dbg !5217
  %54 = load %struct.def*, %struct.def** %def180, align 8, !dbg !5217
  %uses = getelementptr inbounds %struct.def, %struct.def* %54, i64 0, i32 0, !dbg !5218
  %55 = load %struct.use*, %struct.use** %uses, align 8, !dbg !5218
  %next = getelementptr inbounds %struct.use, %struct.use* %55, i64 0, i32 3, !dbg !5219
  %56 = load %struct.use*, %struct.use** %next, align 8, !dbg !5219
  %tobool181 = icmp eq %struct.use* %56, null, !dbg !5220
  br i1 %tobool181, label %if.then182, label %if.end194, !dbg !5221

if.then182:                                       ; preds = %land.lhs.true179
  br i1 %tobool148, label %if.then184, label %if.else186, !dbg !5222

if.then184:                                       ; preds = %if.then182
  %57 = load i32, i32* %arraydecay, align 16, !dbg !5223
  %dec = add i32 %57, -1, !dbg !5223
  store i32 %dec, i32* %arraydecay, align 16, !dbg !5223
  br label %if.end194, !dbg !5224

if.else186:                                       ; preds = %if.then182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44) #7, !dbg !5225
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn28, align 8, !dbg !5226
  call void @llvm.dbg.value(metadata i32* %nregs187, metadata !5103, metadata !DIExpression(DW_OP_deref)), !dbg !5187
  %call190 = call fastcc i32 @get_cover_class_and_nregs(%struct.rtx_def* %58, i32* nonnull %nregs187) #8, !dbg !5227
  call void @llvm.dbg.value(metadata i32 %call190, metadata !5108, metadata !DIExpression()), !dbg !5187
  %59 = load i32, i32* %nregs187, align 4, !dbg !5228
  call void @llvm.dbg.value(metadata i32 %59, metadata !5103, metadata !DIExpression()), !dbg !5187
  %idxprom191 = zext i32 %call190 to i64, !dbg !5229
  %arrayidx192 = getelementptr inbounds [27 x i32], [27 x i32]* %aregs_needed, i64 0, i64 %idxprom191, !dbg !5229
  %60 = load i32, i32* %arrayidx192, align 4, !dbg !5230
  %sub = sub i32 %60, %59, !dbg !5230
  store i32 %sub, i32* %arrayidx192, align 4, !dbg !5230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #7, !dbg !5231
  %.pre = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !5232
  br label %if.end194

if.end194:                                        ; preds = %if.end173, %land.lhs.true179, %land.lhs.true176, %if.then184, %if.else186
  %61 = phi i32 [ %47, %if.end173 ], [ %47, %land.lhs.true179 ], [ %47, %land.lhs.true176 ], [ 0, %if.then184 ], [ %.pre, %if.else186 ], !dbg !5232
  %tobool195 = icmp eq i32 %61, 0, !dbg !5232
  br i1 %tobool195, label %if.then196, label %for.cond201.preheader, !dbg !5234

for.cond201.preheader:                            ; preds = %if.end194
  br label %for.cond201, !dbg !5235

if.then196:                                       ; preds = %if.end194
  %62 = load i32, i32* %arraydecay, align 16, !dbg !5238
  %63 = load i32, i32* %regs_needed, align 4, !dbg !5239
  %add199 = add i32 %63, %62, !dbg !5239
  store i32 %add199, i32* %regs_needed, align 4, !dbg !5239
  br label %if.end217, !dbg !5240

for.cond201:                                      ; preds = %for.cond201.preheader, %for.body204
  %indvars.iv1 = phi i64 [ 0, %for.cond201.preheader ], [ %indvars.iv.next2, %for.body204 ], !dbg !5241
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !5087, metadata !DIExpression()), !dbg !5109
  %64 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !5242
  %65 = sext i32 %64 to i64, !dbg !5244
  %cmp202 = icmp slt i64 %indvars.iv1, %65, !dbg !5244
  br i1 %cmp202, label %for.body204, label %if.end217.loopexit, !dbg !5235

for.body204:                                      ; preds = %for.cond201
  %arrayidx206 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv1, !dbg !5245
  %66 = load i32, i32* %arrayidx206, align 4, !dbg !5245
  %idxprom207 = zext i32 %66 to i64, !dbg !5246
  %arrayidx208 = getelementptr inbounds [27 x i32], [27 x i32]* %aregs_needed, i64 0, i64 %idxprom207, !dbg !5246
  %67 = load i32, i32* %arrayidx208, align 4, !dbg !5246
  %arrayidx212 = getelementptr inbounds i32, i32* %regs_needed, i64 %idxprom207, !dbg !5247
  %68 = load i32, i32* %arrayidx212, align 4, !dbg !5248
  %add213 = add i32 %68, %67, !dbg !5248
  store i32 %add213, i32* %arrayidx212, align 4, !dbg !5248
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !5249
  call void @llvm.dbg.value(metadata i32 undef, metadata !5087, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5109
  br label %for.cond201, !dbg !5250, !llvm.loop !5251

if.end217.loopexit:                               ; preds = %for.cond201
  br label %if.end217, !dbg !5253

if.end217:                                        ; preds = %if.end217.loopexit, %if.then196
  %69 = load i32, i32* %acomp_cost, align 4, !dbg !5253
  call void @llvm.dbg.value(metadata i32 %69, metadata !5088, metadata !DIExpression()), !dbg !5109
  %70 = load i32, i32* %comp_cost, align 4, !dbg !5254
  %add218 = add nsw i32 %70, %69, !dbg !5254
  store i32 %add218, i32* %comp_cost, align 4, !dbg !5254
  call void @llvm.dbg.value(metadata i32* %depno, metadata !5090, metadata !DIExpression(DW_OP_deref)), !dbg !5109
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !5092, metadata !DIExpression(DW_OP_deref)), !dbg !5109
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %depno) #8, !dbg !5188
  br label %for.cond137, !dbg !5188, !llvm.loop !5255

cleanup.loopexit:                                 ; preds = %for.cond137
  br label %cleanup, !dbg !5257

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !5257
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7, !dbg !5257
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %1) #7, !dbg !5257
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !5257
  ret void, !dbg !5257
}

declare dso_local i32 @estimate_reg_pressure_cost(i32, i32, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_cover_class_and_nregs(%struct.rtx_def* %insn, i32* %nregs) unnamed_addr #5 !dbg !5258 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i32* %nregs, metadata !5263, metadata !DIExpression()), !dbg !5267
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !5268
  %bf.load = load i32, i32* %0, align 8, !dbg !5268
  %bf.clear = and i32 %bf.load, 65535, !dbg !5268
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !5268
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5268

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !5268
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !5268

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !5268
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !5268

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !5268
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !5268

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !5268
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !5268
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !5268
  %3 = load i32*, i32** %2, align 8, !dbg !5268
  %bf.load12 = load i32, i32* %3, align 8, !dbg !5268
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !5268
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !5268
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !5268
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !5268

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !5268
  br label %cond.end25, !dbg !5268

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !5268
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !5266, metadata !DIExpression()), !dbg !5267
  %cmp27 = icmp eq %struct.rtx_def* %cond26, null, !dbg !5269
  br i1 %cmp27, label %cond.true28, label %cond.end30, !dbg !5269

cond.true28:                                      ; preds = %cond.end25
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 1025, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !5269
  br label %cond.end30, !dbg !5269

cond.end30:                                       ; preds = %cond.end25, %cond.true28
  %arrayidx34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !5270
  %rt_rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**, !dbg !5270
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx35, align 8, !dbg !5270
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !5264, metadata !DIExpression()), !dbg !5267
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !5271
  %bf.load36 = load i32, i32* %6, align 8, !dbg !5271
  %bf.clear37 = and i32 %bf.load36, 65535, !dbg !5271
  %cmp38 = icmp eq i32 %bf.clear37, 39, !dbg !5273
  br i1 %cmp38, label %if.then, label %if.end, !dbg !5274

if.then:                                          ; preds = %cond.end30
  %arrayidx41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !5275
  %rt_rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**, !dbg !5275
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx42, align 8, !dbg !5275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !5264, metadata !DIExpression()), !dbg !5267
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !5276
  %bf.load43.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !5278
  br label %if.end, !dbg !5279

if.end:                                           ; preds = %if.then, %cond.end30
  %bf.load47 = phi i32 [ %bf.load43.pre, %if.then ], [ %bf.load36, %cond.end30 ], !dbg !5278
  %reg.0 = phi %struct.rtx_def* [ %7, %if.then ], [ %5, %cond.end30 ], !dbg !5267
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !5264, metadata !DIExpression()), !dbg !5267
  %bf.clear44 = and i32 %bf.load47, 65535, !dbg !5278
  %cmp45 = icmp eq i32 %bf.clear44, 43, !dbg !5278
  br i1 %cmp45, label %if.then46, label %if.else, !dbg !5280

if.then46:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !5265, metadata !DIExpression()), !dbg !5267
  br label %if.end67, !dbg !5281

if.else:                                          ; preds = %if.end
  %cmp49 = icmp ne i32 %bf.clear44, 37, !dbg !5283
  %cmp521 = icmp eq %struct.rtx_def* %reg.0, null, !dbg !5286
  %cmp52 = or i1 %cmp521, %cmp49, !dbg !5286
  br i1 %cmp52, label %if.end57, label %if.else54, !dbg !5288

if.else54:                                        ; preds = %if.else
  %call55 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.0) #8, !dbg !5289
  %call56 = tail call i32 @reg_cover_class(i32 %call55) #6, !dbg !5290
  call void @llvm.dbg.value(metadata i32 %call56, metadata !5265, metadata !DIExpression()), !dbg !5267
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.else54
  %cover_class.0 = phi i32 [ %call56, %if.else54 ], [ 13, %if.else ], !dbg !5291
  call void @llvm.dbg.value(metadata i32 %cover_class.0, metadata !5265, metadata !DIExpression()), !dbg !5267
  %idxprom = zext i32 %cover_class.0 to i64, !dbg !5292
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !5293
  %9 = bitcast %union.rtunion_def* %8 to i32**, !dbg !5293
  %10 = load i32*, i32** %9, align 8, !dbg !5293
  %bf.load63 = load i32, i32* %10, align 8, !dbg !5293
  %bf.lshr = lshr i32 %bf.load63, 16, !dbg !5293
  %bf.clear64 = and i32 %bf.lshr, 255, !dbg !5293
  %idxprom65 = zext i32 %bf.clear64 to i64, !dbg !5292
  %arrayidx66 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom, i64 %idxprom65, !dbg !5292
  %11 = load i32, i32* %arrayidx66, align 4, !dbg !5292
  br label %if.end67

if.end67:                                         ; preds = %if.end57, %if.then46
  %storemerge = phi i32 [ %11, %if.end57 ], [ 0, %if.then46 ], !dbg !5276
  %cover_class.1 = phi i32 [ %cover_class.0, %if.end57 ], [ 0, %if.then46 ], !dbg !5276
  store i32 %storemerge, i32* %nregs, align 4, !dbg !5276
  call void @llvm.dbg.value(metadata i32 %cover_class.1, metadata !5265, metadata !DIExpression()), !dbg !5267
  ret i32 %cover_class.1, !dbg !5294
}

declare dso_local zeroext i8 @constant_pool_constant_p(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @move_invariant_reg(%struct.loop* %loop, i32 %invno) unnamed_addr #5 !dbg !5295 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5299, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata i32 %invno, metadata !5300, metadata !DIExpression()), !dbg !5313
  %0 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !5314
  %base = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %0, i64 0, i32 0, !dbg !5314
  %call = tail call fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %base, i32 %invno) #8, !dbg !5314
  call void @llvm.dbg.value(metadata %struct.invariant* %call, metadata !5301, metadata !DIExpression()), !dbg !5313
  %1 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !5315
  %base3 = getelementptr inbounds %struct.VEC_invariant_p_heap, %struct.VEC_invariant_p_heap* %1, i64 0, i32 0, !dbg !5315
  %eqto = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 1, !dbg !5315
  %2 = load i32, i32* %eqto, align 4, !dbg !5315
  %call7 = tail call fastcc %struct.invariant* @VEC_invariant_p_base_index(%struct.VEC_invariant_p_base* %base3, i32 %2) #8, !dbg !5315
  call void @llvm.dbg.value(metadata %struct.invariant* %call7, metadata !5302, metadata !DIExpression()), !dbg !5313
  %3 = bitcast i32* %i to i8*, !dbg !5316
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !5316
  %call8 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !5317
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call8, i64 0, i32 0, !dbg !5318
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !5318
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !5304, metadata !DIExpression()), !dbg !5313
  %5 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !5319
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !5319
  %reg9 = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 2, !dbg !5320
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg9, align 8, !dbg !5320
  %tobool10 = icmp eq %struct.rtx_def* %6, null, !dbg !5322
  br i1 %tobool10, label %if.end, label %cleanup, !dbg !5323

if.end:                                           ; preds = %entry
  %move = getelementptr inbounds %struct.invariant, %struct.invariant* %call7, i64 0, i32 7, !dbg !5324
  %7 = load i8, i8* %move, align 1, !dbg !5324
  %tobool11 = icmp eq i8 %7, 0, !dbg !5326
  br i1 %tobool11, label %cleanup, label %if.end13, !dbg !5327

if.end13:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 -1, metadata !5311, metadata !DIExpression()), !dbg !5313
  %cmp = icmp eq %struct.invariant* %call, %call7, !dbg !5328
  br i1 %cmp, label %if.then14, label %if.else, !dbg !5330

if.then14:                                        ; preds = %if.end13
  %depends_on = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 10, !dbg !5331
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %depends_on, align 8, !dbg !5331
  %tobool15 = icmp eq %struct.bitmap_head_def* %8, null, !dbg !5334
  br i1 %tobool15, label %if.end24, label %if.then16, !dbg !5335

if.then16:                                        ; preds = %if.then14
  call void @llvm.dbg.value(metadata i32* %i, metadata !5303, metadata !DIExpression(DW_OP_deref)), !dbg !5313
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !5310, metadata !DIExpression(DW_OP_deref)), !dbg !5313
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %8, i32 0, i32* nonnull %i) #8, !dbg !5336
  br label %for.cond, !dbg !5336

for.cond:                                         ; preds = %for.inc, %if.then16
  call void @llvm.dbg.value(metadata i32* %i, metadata !5303, metadata !DIExpression(DW_OP_deref)), !dbg !5313
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !5310, metadata !DIExpression(DW_OP_deref)), !dbg !5313
  %call18 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !5339
  %tobool19 = icmp eq i8 %call18, 0, !dbg !5336
  br i1 %tobool19, label %if.end24.loopexit, label %for.body, !dbg !5336

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !5341
  call void @llvm.dbg.value(metadata i32 %9, metadata !5303, metadata !DIExpression()), !dbg !5313
  %call20 = call fastcc zeroext i8 @move_invariant_reg(%struct.loop* %loop, i32 %9) #8, !dbg !5344
  %tobool21 = icmp eq i8 %call20, 0, !dbg !5344
  br i1 %tobool21, label %fail.loopexit, label %for.inc, !dbg !5345

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32* %i, metadata !5303, metadata !DIExpression(DW_OP_deref)), !dbg !5313
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !5310, metadata !DIExpression(DW_OP_deref)), !dbg !5313
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !5339
  br label %for.cond, !dbg !5339, !llvm.loop !5346

if.end24.loopexit:                                ; preds = %for.cond
  br label %if.end24, !dbg !5348

if.end24:                                         ; preds = %if.end24.loopexit, %if.then14
  %insn = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 5, !dbg !5348
  %10 = bitcast %struct.rtx_def** %insn to i32**, !dbg !5348
  %11 = load i32*, i32** %10, align 8, !dbg !5348
  %bf.load = load i32, i32* %11, align 8, !dbg !5348
  %bf.clear = and i32 %bf.load, 65535, !dbg !5348
  %cmp25 = icmp eq i32 %bf.clear, 8, !dbg !5348
  %12 = bitcast i32* %11 to %struct.rtx_def*, !dbg !5348
  br i1 %cmp25, label %cond.true40, label %lor.lhs.false, !dbg !5348

lor.lhs.false:                                    ; preds = %if.end24
  %cmp29 = icmp eq i32 %bf.clear, 7, !dbg !5348
  br i1 %cmp29, label %cond.true40, label %lor.lhs.false30, !dbg !5348

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %cmp34 = icmp eq i32 %bf.clear, 9, !dbg !5348
  br i1 %cmp34, label %cond.true40, label %lor.lhs.false35, !dbg !5348

lor.lhs.false35:                                  ; preds = %lor.lhs.false30
  %cmp39 = icmp eq i32 %bf.clear, 10, !dbg !5348
  br i1 %cmp39, label %cond.true40, label %cond.end62, !dbg !5348

cond.true40:                                      ; preds = %lor.lhs.false35, %lor.lhs.false30, %lor.lhs.false, %if.end24
  %13 = getelementptr inbounds i32, i32* %11, i64 12, !dbg !5348
  %14 = bitcast i32* %13 to i32**, !dbg !5348
  %15 = load i32*, i32** %14, align 8, !dbg !5348
  %bf.load42 = load i32, i32* %15, align 8, !dbg !5348
  %bf.clear43 = and i32 %bf.load42, 65535, !dbg !5348
  %cmp44 = icmp eq i32 %bf.clear43, 23, !dbg !5348
  %16 = bitcast i32* %15 to %struct.rtx_def*, !dbg !5348
  br i1 %cmp44, label %cond.true45, label %cond.false51, !dbg !5348

cond.true45:                                      ; preds = %cond.true40
  br label %cond.end62, !dbg !5348

cond.false51:                                     ; preds = %cond.true40
  %call58 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %12, %struct.rtx_def* %16) #6, !dbg !5348
  br label %cond.end62, !dbg !5348

cond.end62:                                       ; preds = %lor.lhs.false35, %cond.true45, %cond.false51
  %cond63 = phi %struct.rtx_def* [ %16, %cond.true45 ], [ %call58, %cond.false51 ], [ null, %lor.lhs.false35 ], !dbg !5348
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond63, metadata !5306, metadata !DIExpression()), !dbg !5313
  %arrayidx66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond63, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !5349
  %rt_rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**, !dbg !5349
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx67, align 8, !dbg !5349
  call void @llvm.dbg.value(metadata %struct.rtx_def* %17, metadata !5307, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata %struct.rtx_def* %17, metadata !5305, metadata !DIExpression()), !dbg !5313
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 0, !dbg !5350
  %bf.load68 = load i32, i32* %18, align 8, !dbg !5350
  %bf.clear69 = and i32 %bf.load68, 65535, !dbg !5350
  %cmp70 = icmp eq i32 %bf.clear69, 39, !dbg !5352
  br i1 %cmp70, label %if.then71, label %if.end76, !dbg !5353

if.then71:                                        ; preds = %cond.end62
  %arrayidx74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !5354
  %rt_rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**, !dbg !5354
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx75, align 8, !dbg !5354
  call void @llvm.dbg.value(metadata %struct.rtx_def* %19, metadata !5305, metadata !DIExpression()), !dbg !5313
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i64 0, i32 0, !dbg !5355
  %bf.load77.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !5357
  br label %if.end76, !dbg !5358

if.end76:                                         ; preds = %if.then71, %cond.end62
  %bf.load77 = phi i32 [ %bf.load77.pre, %if.then71 ], [ %bf.load68, %cond.end62 ], !dbg !5357
  %reg.0 = phi %struct.rtx_def* [ %19, %if.then71 ], [ %17, %cond.end62 ], !dbg !5359
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !5305, metadata !DIExpression()), !dbg !5313
  %bf.clear78 = and i32 %bf.load77, 65535, !dbg !5357
  %cmp79 = icmp eq i32 %bf.clear78, 37, !dbg !5357
  br i1 %cmp79, label %if.then80, label %if.end82, !dbg !5360

if.then80:                                        ; preds = %if.end76
  %call81 = call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.0) #8, !dbg !5361
  call void @llvm.dbg.value(metadata i32 %call81, metadata !5311, metadata !DIExpression()), !dbg !5313
  br label %if.end82, !dbg !5362

if.end82:                                         ; preds = %if.then80, %if.end76
  %regno.0 = phi i32 [ %call81, %if.then80 ], [ -1, %if.end76 ], !dbg !5313
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !5311, metadata !DIExpression()), !dbg !5313
  %call83 = call %struct.rtx_def* @gen_reg_rtx_and_attrs(%struct.rtx_def* %17) #6, !dbg !5363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call83, metadata !5305, metadata !DIExpression()), !dbg !5313
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !5364
  %call89 = call zeroext i8 @validate_change(%struct.rtx_def* %20, %struct.rtx_def** nonnull %rt_rtx67, %struct.rtx_def* %call83, i8 zeroext 0) #6, !dbg !5366
  %tobool90 = icmp eq i8 %call89, 0, !dbg !5366
  br i1 %tobool90, label %fail, label %if.end92, !dbg !5367

if.end92:                                         ; preds = %if.end82
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !5368
  %call94 = call zeroext i8 @df_insn_rescan(%struct.rtx_def* %21) #6, !dbg !5369
  %call95 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %17, %struct.rtx_def* %call83) #6, !dbg !5370
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !5371
  %call97 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call95, %struct.rtx_def* %22) #6, !dbg !5372
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !5373
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 7, !dbg !5374
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !5374
  %24 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !5374
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %24, i64 0, i32 1, !dbg !5374
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !5374
  call void @reorder_insns(%struct.rtx_def* %23, %struct.rtx_def* %23, %struct.rtx_def* %25) #6, !dbg !5375
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !5376
  %call101 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %26, i32 4, %struct.rtx_def* null) #6, !dbg !5378
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call101, metadata !5308, metadata !DIExpression()), !dbg !5313
  %tobool102 = icmp eq %struct.rtx_def* %call101, null, !dbg !5379
  br i1 %tobool102, label %if.end176, label %land.lhs.true, !dbg !5380

land.lhs.true:                                    ; preds = %if.end92
  %always_executed = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 6, !dbg !5381
  %27 = load i8, i8* %always_executed, align 8, !dbg !5381
  %tobool103 = icmp eq i8 %27, 0, !dbg !5382
  br i1 %tobool103, label %if.then111, label %lor.lhs.false104, !dbg !5383

lor.lhs.false104:                                 ; preds = %land.lhs.true
  %arrayidx107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call101, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !5384
  %rt_rtx108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtx_def**, !dbg !5384
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx108, align 8, !dbg !5384
  %call109 = call fastcc zeroext i8 @check_maybe_invariant(%struct.rtx_def* %28) #8, !dbg !5385
  %tobool110 = icmp eq i8 %call109, 0, !dbg !5385
  br i1 %tobool110, label %if.then111, label %if.end176, !dbg !5386

if.then111:                                       ; preds = %lor.lhs.false104, %land.lhs.true
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !5387
  call void @remove_note(%struct.rtx_def* %29, %struct.rtx_def* nonnull %call101) #6, !dbg !5388
  br label %if.end176, !dbg !5388

if.else:                                          ; preds = %if.end13
  %invno114 = getelementptr inbounds %struct.invariant, %struct.invariant* %call7, i64 0, i32 0, !dbg !5389
  %30 = load i32, i32* %invno114, align 8, !dbg !5389
  %call115 = tail call fastcc zeroext i8 @move_invariant_reg(%struct.loop* %loop, i32 %30) #8, !dbg !5392
  %tobool116 = icmp eq i8 %call115, 0, !dbg !5392
  br i1 %tobool116, label %fail, label %if.end118, !dbg !5393

if.end118:                                        ; preds = %if.else
  %reg119 = getelementptr inbounds %struct.invariant, %struct.invariant* %call7, i64 0, i32 2, !dbg !5394
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg119, align 8, !dbg !5394
  call void @llvm.dbg.value(metadata %struct.rtx_def* %31, metadata !5305, metadata !DIExpression()), !dbg !5313
  %orig_regno = getelementptr inbounds %struct.invariant, %struct.invariant* %call7, i64 0, i32 3, !dbg !5395
  %32 = load i32, i32* %orig_regno, align 8, !dbg !5395
  call void @llvm.dbg.value(metadata i32 %32, metadata !5311, metadata !DIExpression()), !dbg !5313
  %insn120 = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 5, !dbg !5396
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn120, align 8, !dbg !5396
  br label %cond.true139, !dbg !5396

lor.lhs.false124:                                 ; No predecessors!
  br label %cond.true139, !dbg !5396

lor.lhs.false129:                                 ; No predecessors!
  br label %cond.true139, !dbg !5396

lor.lhs.false134:                                 ; No predecessors!
  br label %cond.true139, !dbg !5396

cond.true139:                                     ; preds = %lor.lhs.false129, %lor.lhs.false124, %if.end118, %lor.lhs.false134
  %u141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i64 0, i32 1, !dbg !5396
  %34 = getelementptr inbounds %union.u, %union.u* %u141, i64 1, i32 0, i32 0, i64 0, !dbg !5396
  %35 = bitcast %union.rtunion_def* %34 to i32**, !dbg !5396
  %36 = load i32*, i32** %35, align 8, !dbg !5396
  %bf.load145 = load i32, i32* %36, align 8, !dbg !5396
  %bf.clear146 = and i32 %bf.load145, 65535, !dbg !5396
  %cmp147 = icmp eq i32 %bf.clear146, 23, !dbg !5396
  %37 = bitcast i32* %36 to %struct.rtx_def*, !dbg !5396
  br i1 %cmp147, label %cond.true148, label %cond.false154, !dbg !5396

cond.true148:                                     ; preds = %cond.true139
  br label %cond.end165, !dbg !5396

cond.false154:                                    ; preds = %cond.true139
  %call161 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %33, %struct.rtx_def* %37) #6, !dbg !5396
  br label %cond.end165, !dbg !5396

cond.end165:                                      ; preds = %cond.true148, %cond.false154
  %cond166 = phi %struct.rtx_def* [ %37, %cond.true148 ], [ %call161, %cond.false154 ], !dbg !5396
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond166, metadata !5306, metadata !DIExpression()), !dbg !5313
  %arrayidx169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond166, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !5397
  %rt_rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**, !dbg !5397
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx170, align 8, !dbg !5397
  %call171 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %38, %struct.rtx_def* %31) #6, !dbg !5398
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn120, align 8, !dbg !5399
  %call173 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call171, %struct.rtx_def* %39) #6, !dbg !5400
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn120, align 8, !dbg !5401
  %call175 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %40) #6, !dbg !5402
  br label %if.end176

if.end176:                                        ; preds = %lor.lhs.false104, %if.end92, %if.then111, %cond.end165
  %reg.1 = phi %struct.rtx_def* [ %31, %cond.end165 ], [ %call83, %if.then111 ], [ %call83, %lor.lhs.false104 ], [ %call83, %if.end92 ], !dbg !5403
  %regno.1 = phi i32 [ %32, %cond.end165 ], [ %regno.0, %if.then111 ], [ %regno.0, %lor.lhs.false104 ], [ %regno.0, %if.end92 ], !dbg !5403
  call void @llvm.dbg.value(metadata i32 %regno.1, metadata !5311, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.1, metadata !5305, metadata !DIExpression()), !dbg !5313
  store %struct.rtx_def* %reg.1, %struct.rtx_def** %reg9, align 8, !dbg !5404
  %orig_regno178 = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 3, !dbg !5405
  store i32 %regno.1, i32* %orig_regno178, align 8, !dbg !5406
  %def = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 4, !dbg !5407
  %41 = load %struct.def*, %struct.def** %def, align 8, !dbg !5407
  %tobool179 = icmp eq %struct.def* %41, null, !dbg !5409
  br i1 %tobool179, label %cleanup, label %if.then180, !dbg !5410

if.then180:                                       ; preds = %if.end176
  %uses = getelementptr inbounds %struct.def, %struct.def* %41, i64 0, i32 0, !dbg !5411
  br label %for.cond182, !dbg !5414

for.cond182:                                      ; preds = %for.body184, %if.then180
  %use.0.in = phi %struct.use** [ %uses, %if.then180 ], [ %next, %for.body184 ]
  %use.0 = load %struct.use*, %struct.use** %use.0.in, align 8, !dbg !5415
  call void @llvm.dbg.value(metadata %struct.use* %use.0, metadata !5309, metadata !DIExpression()), !dbg !5313
  %tobool183 = icmp eq %struct.use* %use.0, null, !dbg !5416
  br i1 %tobool183, label %cleanup.loopexit, label %for.body184, !dbg !5416

for.body184:                                      ; preds = %for.cond182
  %pos = getelementptr inbounds %struct.use, %struct.use* %use.0, i64 0, i32 0, !dbg !5417
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %pos, align 8, !dbg !5417
  store %struct.rtx_def* %reg.1, %struct.rtx_def** %42, align 8, !dbg !5420
  %insn185 = getelementptr inbounds %struct.use, %struct.use* %use.0, i64 0, i32 1, !dbg !5421
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn185, align 8, !dbg !5421
  %call186 = call zeroext i8 @df_insn_rescan(%struct.rtx_def* %43) #6, !dbg !5422
  %next = getelementptr inbounds %struct.use, %struct.use* %use.0, i64 0, i32 3, !dbg !5423
  br label %for.cond182, !dbg !5424, !llvm.loop !5425

fail.loopexit:                                    ; preds = %for.body
  br label %fail, !dbg !5427

fail:                                             ; preds = %fail.loopexit, %if.end82, %if.else
  call void @llvm.dbg.label(metadata !5312), !dbg !5429
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5427
  %tobool190 = icmp eq %struct._IO_FILE* %44, null, !dbg !5427
  br i1 %tobool190, label %if.end193, label %if.then191, !dbg !5430

if.then191:                                       ; preds = %fail
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %invno) #6, !dbg !5431
  br label %if.end193, !dbg !5431

if.end193:                                        ; preds = %fail, %if.then191
  %move194 = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 7, !dbg !5432
  store i8 0, i8* %move194, align 1, !dbg !5433
  store %struct.rtx_def* null, %struct.rtx_def** %reg9, align 8, !dbg !5434
  %orig_regno196 = getelementptr inbounds %struct.invariant, %struct.invariant* %call, i64 0, i32 3, !dbg !5435
  store i32 -1, i32* %orig_regno196, align 8, !dbg !5436
  br label %cleanup, !dbg !5437

cleanup.loopexit:                                 ; preds = %for.cond182
  br label %cleanup, !dbg !5438

cleanup:                                          ; preds = %cleanup.loopexit, %if.end176, %if.end, %entry, %if.end193
  %retval.0 = phi i8 [ 0, %if.end193 ], [ 1, %entry ], [ 0, %if.end ], [ 1, %if.end176 ], [ 1, %cleanup.loopexit ], !dbg !5313
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !5438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !5438
  ret i8 %retval.0, !dbg !5438
}

declare dso_local zeroext i8 @resize_reg_info() local_unnamed_addr #2

declare dso_local void @setup_reg_classes(i32, i32, i32, i32) local_unnamed_addr #2

declare dso_local i32 @reg_preferred_class(i32) local_unnamed_addr #2

declare dso_local i32 @reg_alternate_class(i32) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_reg_rtx_and_attrs(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local zeroext i8 @df_insn_rescan(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @reorder_insns(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @remove_note(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_use_list(%struct.use* %use) unnamed_addr #5 !dbg !5439 {
entry:
  call void @llvm.dbg.value(metadata %struct.use* %use, metadata !5443, metadata !DIExpression()), !dbg !5445
  br label %for.cond, !dbg !5446

for.cond:                                         ; preds = %for.body, %entry
  %use.addr.0 = phi %struct.use* [ %use, %entry ], [ %0, %for.body ]
  call void @llvm.dbg.value(metadata %struct.use* %use.addr.0, metadata !5443, metadata !DIExpression()), !dbg !5445
  %tobool = icmp eq %struct.use* %use.addr.0, null, !dbg !5447
  br i1 %tobool, label %for.end, label %for.body, !dbg !5447

for.body:                                         ; preds = %for.cond
  %next1 = getelementptr inbounds %struct.use, %struct.use* %use.addr.0, i64 0, i32 3, !dbg !5449
  %0 = load %struct.use*, %struct.use** %next1, align 8, !dbg !5449
  call void @llvm.dbg.value(metadata %struct.use* %0, metadata !5444, metadata !DIExpression()), !dbg !5445
  %1 = bitcast %struct.use* %use.addr.0 to i8*, !dbg !5452
  tail call void @free(i8* nonnull %1) #6, !dbg !5453
  call void @llvm.dbg.value(metadata %struct.use* %0, metadata !5443, metadata !DIExpression()), !dbg !5445
  br label %for.cond, !dbg !5454, !llvm.loop !5455

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5457
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_invariant_p_heap_free(%struct.VEC_invariant_p_heap** %vec_) unnamed_addr #0 !dbg !5458 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_invariant_p_heap** @invariants, metadata !5462, metadata !DIExpression()), !dbg !5463
  %0 = load %struct.VEC_invariant_p_heap*, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !5464
  %tobool = icmp eq %struct.VEC_invariant_p_heap* %0, null, !dbg !5464
  br i1 %tobool, label %if.end, label %if.then, !dbg !5466

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_invariant_p_heap* %0 to i8*, !dbg !5466
  tail call void @free(i8* nonnull %1) #6, !dbg !5464
  br label %if.end, !dbg !5464

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_invariant_p_heap* null, %struct.VEC_invariant_p_heap** @invariants, align 8, !dbg !5466
  ret void, !dbg !5466
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !5467 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !5473, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5474, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !5475, metadata !DIExpression()), !dbg !5476
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !5477
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5477

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !5477
  %0 = load i32, i32* %num, align 4, !dbg !5477
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5477
  br i1 %cmp, label %if.then, label %if.else, !dbg !5479

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5480
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5480
  %1 = load i32, i32* %arrayidx, align 4, !dbg !5480
  br label %return, !dbg !5480

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5482

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !5484
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5484
  store i32 %storemerge, i32* %ptr, align 4, !dbg !5484
  ret i32 %retval.0, !dbg !5479
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !5485 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !5489, metadata !DIExpression()), !dbg !5490
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5491
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !5491
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !5491
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !5491
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !5491
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !5491
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5491

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !5491
  br label %cond.end, !dbg !5491

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5491
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !5491
  ret %struct.loop* %call, !dbg !5492
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !5493 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !5498, metadata !DIExpression()), !dbg !5499
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !5500
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !5500
  br i1 %tobool, label %if.end, label %if.then, !dbg !5502

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !5502
  tail call void @free(i8* nonnull %1) #6, !dbg !5500
  br label %if.end, !dbg !5500

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !5502
  ret void, !dbg !5502
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
!llvm.module.flags = !{!1948, !1949, !1950}
!llvm.ident = !{!1951}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "curr_loop", scope: !2, file: !3, line: 142, type: !618, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !604, globals: !1928, nameTableKind: None)
!3 = !DIFile(filename: "loop-invariant.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !141, !147, !152, !157, !176, !183, !190, !384, !393, !397, !540, !574}
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
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !153, line: 474, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !158, line: 280, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!160 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !158, line: 1817, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !158, line: 1805, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !158, line: 39, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!192 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!281 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!287 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!288 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!289 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!290 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!291 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!292 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!293 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!294 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!295 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!296 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!297 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!298 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!299 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!300 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!301 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!302 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!303 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!304 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!305 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!307 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!308 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!309 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!310 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!311 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!312 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!313 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!314 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!315 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!316 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!317 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!318 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!319 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!320 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!321 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!322 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!323 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!324 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!325 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!326 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!327 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!328 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!329 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!330 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!331 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!332 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!333 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!334 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!335 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!336 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!337 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!338 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!339 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!340 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!341 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!342 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!343 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!344 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!357 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!358 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!359 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!360 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!361 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!377 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!378 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!379 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!380 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!381 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!382 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!383 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !385, line: 31, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390, !391, !392}
!387 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !385, line: 91, baseType: !7, size: 32, elements: !394)
!394 = !{!395, !396}
!395 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!396 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !398, line: 45, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!400 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!416 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!417 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!418 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!419 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!420 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!421 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!422 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!423 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!424 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!425 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!426 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!427 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!428 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!429 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!430 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!431 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!432 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!433 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!434 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!435 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!436 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!437 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!438 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!439 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!440 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!441 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!442 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!443 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!444 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!445 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!446 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!447 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!448 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!449 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!450 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!451 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!452 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!453 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!454 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!455 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!456 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!457 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!458 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!459 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!460 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!461 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!462 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!463 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!464 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!465 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!466 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!467 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!468 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!469 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!470 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!471 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!472 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!473 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!474 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!475 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!476 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!477 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!478 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!479 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!480 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!481 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!482 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!483 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!484 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!485 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!486 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!487 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!488 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!489 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!490 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!491 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!492 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!493 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!494 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!495 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!496 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!497 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!498 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!499 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!500 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!501 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!502 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!503 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!504 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!505 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!506 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!507 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!508 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!509 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!510 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!511 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!512 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!513 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!514 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!515 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!516 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!517 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!518 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!519 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!520 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!521 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!522 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!523 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!524 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!525 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!526 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!527 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!528 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!529 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!530 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!531 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!532 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!533 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!534 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!535 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!536 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!537 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!538 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!539 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!540 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !398, line: 836, baseType: !7, size: 32, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!542 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!543 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!544 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!545 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!546 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!547 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!548 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!549 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!550 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!551 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!552 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!553 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!554 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!555 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!556 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!557 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!558 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!559 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!560 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!561 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!562 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!563 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!564 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!565 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!566 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!567 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!568 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!569 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!570 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!571 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!572 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!573 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !153, line: 1188, baseType: !7, size: 32, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!576 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!580 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!581 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!582 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!583 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!584 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!585 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!586 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!587 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!588 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!589 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!590 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!591 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!592 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!593 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!594 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!595 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!596 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!597 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!598 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!599 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!600 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!601 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!602 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!603 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!604 = !{!605, !606, !607, !608, !611, !612, !7, !614, !397, !540, !5, !1852, !1861, !1863, !1236, !1875, !1857, !1918, !655, !1896, !1888, !1900, !1919, !1887, !1927}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!607 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_data", file: !3, line: 62, size: 1472, elements: !616)
!616 = !{!617, !1844, !1845, !1849, !1851}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "outermost_exit", scope: !615, file: !3, line: 64, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !385, line: 100, size: 1216, elements: !620)
!620 = !{!621, !622, !623, !1808, !1809, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1834, !1842, !1843}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !619, file: !385, line: 102, baseType: !607, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !619, file: !385, line: 105, baseType: !7, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !619, file: !385, line: 108, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !142, line: 217, size: 832, elements: !626)
!626 = !{!627, !1775, !1776, !1777, !1778, !1782, !1783, !1784, !1802, !1803, !1804, !1805, !1806, !1807}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !625, file: !142, line: 219, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !142, line: 151, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !142, line: 151, size: 128, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !630, file: !142, line: 151, baseType: !633, size: 128)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !142, line: 150, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !142, line: 150, size: 128, elements: !635)
!635 = !{!636, !637, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !634, file: !142, line: 150, baseType: !7, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !634, file: !142, line: 150, baseType: !7, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !634, file: !142, line: 150, baseType: !639, size: 64, offset: 64)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 64, elements: !689)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !641, line: 108, baseType: !642)
!641 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !142, line: 122, size: 512, elements: !644)
!644 = !{!645, !646, !647, !1767, !1768, !1769, !1770, !1771, !1772, !1773}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !643, file: !142, line: 124, baseType: !624, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !643, file: !142, line: 125, baseType: !624, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !643, file: !142, line: 131, baseType: !648, size: 64, offset: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !142, line: 128, size: 64, elements: !649)
!649 = !{!650, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !648, file: !142, line: 129, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !641, line: 66, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !641, line: 65, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !648, file: !142, line: 130, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !641, line: 50, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !398, line: 240, size: 384, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !657, file: !398, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !657, file: !398, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !657, file: !398, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !657, file: !398, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !657, file: !398, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !657, file: !398, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !657, file: !398, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !657, file: !398, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !657, file: !398, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !657, file: !398, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !657, file: !398, line: 321, baseType: !670, size: 320, offset: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !398, line: 315, size: 320, elements: !671)
!671 = !{!672, !1702, !1704, !1765, !1766}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !670, file: !398, line: 316, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 64, elements: !689)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !398, line: 183, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !398, line: 166, size: 64, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !691, !692, !704, !707, !769, !1680, !1681, !1692, !1699}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !675, file: !398, line: 168, baseType: !607, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !675, file: !398, line: 169, baseType: !7, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !675, file: !398, line: 170, baseType: !612, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !675, file: !398, line: 171, baseType: !655, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !675, file: !398, line: 172, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !641, line: 53, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !398, line: 359, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !684, file: !398, line: 360, baseType: !607, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !684, file: !398, line: 361, baseType: !688, size: 64, offset: 64)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 64, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 1)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !675, file: !398, line: 173, baseType: !5, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !675, file: !398, line: 174, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !398, line: 133, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 115, size: 32, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !694, file: !398, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !694, file: !398, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !694, file: !398, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !694, file: !398, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !694, file: !398, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !694, file: !398, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !694, file: !398, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !694, file: !398, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !675, file: !398, line: 175, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !398, line: 175, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !675, file: !398, line: 176, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !710, line: 75, size: 256, elements: !711)
!710 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!711 = !{!712, !727, !728, !729}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !709, file: !710, line: 76, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !710, line: 68, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !710, line: 63, size: 320, elements: !716)
!716 = !{!717, !719, !720, !721}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !710, line: 64, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !715, file: !710, line: 65, baseType: !718, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !715, file: !710, line: 66, baseType: !7, size: 32, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !715, file: !710, line: 67, baseType: !722, size: 128, offset: 192)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 128, elements: !725)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !710, line: 29, baseType: !724)
!724 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!725 = !{!726}
!726 = !DISubrange(count: 2)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !709, file: !710, line: 77, baseType: !713, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !709, file: !710, line: 78, baseType: !7, size: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !709, file: !710, line: 79, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !710, line: 49, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !710, line: 45, size: 832, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !732, file: !710, line: 46, baseType: !718, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !732, file: !710, line: 47, baseType: !708, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !732, file: !710, line: 48, baseType: !737, size: 704, offset: 128)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !738, line: 164, size: 704, elements: !739)
!738 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!739 = !{!740, !742, !752, !753, !754, !755, !756, !757, !761, !765, !766, !767, !768}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !737, file: !738, line: 166, baseType: !741, size: 64)
!741 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !737, file: !738, line: 167, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !738, line: 157, size: 192, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !744, file: !738, line: 159, baseType: !609, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !744, file: !738, line: 160, baseType: !743, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !744, file: !738, line: 161, baseType: !749, size: 32, offset: 128)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 32, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 4)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !737, file: !738, line: 168, baseType: !609, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !737, file: !738, line: 169, baseType: !609, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !737, file: !738, line: 170, baseType: !609, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !737, file: !738, line: 171, baseType: !741, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !737, file: !738, line: 172, baseType: !607, size: 32, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !737, file: !738, line: 176, baseType: !758, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!743, !611, !741}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !737, file: !738, line: 177, baseType: !762, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !611, !743}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !737, file: !738, line: 178, baseType: !611, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !737, file: !738, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !737, file: !738, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !737, file: !738, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !675, file: !398, line: 177, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !641, line: 56, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !158, line: 3371, size: 1792, elements: !773)
!773 = !{!774, !807, !813, !824, !843, !854, !859, !866, !872, !885, !897, !935, !940, !968, !976, !977, !982, !991, !997, !1002, !1006, !1010, !1316, !1365, !1371, !1377, !1384, !1410, !1424, !1441, !1453, !1475, !1490, !1662}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !772, file: !158, line: 3372, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !158, line: 360, size: 64, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !775, file: !158, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !775, file: !158, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !775, file: !158, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !775, file: !158, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !775, file: !158, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !775, file: !158, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !775, file: !158, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !775, file: !158, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !775, file: !158, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !775, file: !158, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !775, file: !158, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !775, file: !158, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !775, file: !158, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !775, file: !158, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !775, file: !158, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !775, file: !158, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !775, file: !158, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !775, file: !158, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !775, file: !158, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !775, file: !158, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !775, file: !158, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !775, file: !158, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !775, file: !158, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !775, file: !158, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !775, file: !158, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !775, file: !158, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !775, file: !158, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !775, file: !158, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !775, file: !158, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !775, file: !158, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !772, file: !158, line: 3373, baseType: !808, size: 192)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !158, line: 402, size: 192, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !808, file: !158, line: 403, baseType: !775, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !808, file: !158, line: 404, baseType: !770, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !158, line: 405, baseType: !770, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !772, file: !158, line: 3374, baseType: !814, size: 320)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !158, line: 1384, size: 320, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !158, line: 1385, baseType: !808, size: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !814, file: !158, line: 1386, baseType: !818, size: 128, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !819, line: 58, baseType: !820)
!819 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !819, line: 54, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !820, file: !819, line: 56, baseType: !724, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !820, file: !819, line: 57, baseType: !741, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !772, file: !158, line: 3375, baseType: !825, size: 256)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !158, line: 1397, size: 256, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !825, file: !158, line: 1398, baseType: !808, size: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !825, file: !158, line: 1399, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !831, line: 52, size: 256, elements: !832)
!831 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!832 = !{!833, !834, !835, !836, !837, !838, !839}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !830, file: !831, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !830, file: !831, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !830, file: !831, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !830, file: !831, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !830, file: !831, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !830, file: !831, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !830, file: !831, line: 62, baseType: !840, size: 192, offset: 64)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 192, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 3)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !772, file: !158, line: 3376, baseType: !844, size: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !158, line: 1408, size: 256, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !844, file: !158, line: 1409, baseType: !808, size: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !844, file: !158, line: 1410, baseType: !848, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !850, line: 27, size: 192, elements: !851)
!850 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !849, file: !850, line: 29, baseType: !818, size: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !849, file: !850, line: 30, baseType: !5, size: 32, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !772, file: !158, line: 3377, baseType: !855, size: 256)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !158, line: 1437, size: 256, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !855, file: !158, line: 1438, baseType: !808, size: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !855, file: !158, line: 1439, baseType: !770, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !772, file: !158, line: 3378, baseType: !860, size: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !158, line: 1418, size: 256, elements: !861)
!861 = !{!862, !863, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !860, file: !158, line: 1419, baseType: !808, size: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !860, file: !158, line: 1420, baseType: !607, size: 32, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !860, file: !158, line: 1421, baseType: !865, size: 8, offset: 224)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 8, elements: !689)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !772, file: !158, line: 3379, baseType: !867, size: 320)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !158, line: 1428, size: 320, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !867, file: !158, line: 1429, baseType: !808, size: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !867, file: !158, line: 1430, baseType: !770, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !867, file: !158, line: 1431, baseType: !770, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !772, file: !158, line: 3380, baseType: !873, size: 320)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !158, line: 1460, size: 320, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !873, file: !158, line: 1461, baseType: !808, size: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !873, file: !158, line: 1462, baseType: !877, size: 128, offset: 192)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !878, line: 31, size: 128, elements: !879)
!878 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!879 = !{!880, !883, !884}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !877, file: !878, line: 32, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !877, file: !878, line: 33, baseType: !7, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !877, file: !878, line: 34, baseType: !7, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !772, file: !158, line: 3381, baseType: !886, size: 384)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !158, line: 2507, size: 384, elements: !887)
!887 = !{!888, !889, !894, !895, !896}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !886, file: !158, line: 2508, baseType: !808, size: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !886, file: !158, line: 2509, baseType: !890, size: 32, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !891, line: 58, baseType: !892)
!891 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !893, line: 44, baseType: !7)
!893 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !886, file: !158, line: 2510, baseType: !7, size: 32, offset: 224)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !886, file: !158, line: 2511, baseType: !770, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !886, file: !158, line: 2512, baseType: !770, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !772, file: !158, line: 3382, baseType: !898, size: 896)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !158, line: 2652, size: 896, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !898, file: !158, line: 2653, baseType: !886, size: 384)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !898, file: !158, line: 2654, baseType: !770, size: 64, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !898, file: !158, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !898, file: !158, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !898, file: !158, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !898, file: !158, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !898, file: !158, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !898, file: !158, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !898, file: !158, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !898, file: !158, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !898, file: !158, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !898, file: !158, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !898, file: !158, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !898, file: !158, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !898, file: !158, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !898, file: !158, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !898, file: !158, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !898, file: !158, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !898, file: !158, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !898, file: !158, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !898, file: !158, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !898, file: !158, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !898, file: !158, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !898, file: !158, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !898, file: !158, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !898, file: !158, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !898, file: !158, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !898, file: !158, line: 2703, baseType: !7, size: 32, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !898, file: !158, line: 2705, baseType: !770, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !898, file: !158, line: 2706, baseType: !770, size: 64, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !898, file: !158, line: 2707, baseType: !770, size: 64, offset: 704)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !898, file: !158, line: 2708, baseType: !770, size: 64, offset: 768)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !898, file: !158, line: 2711, baseType: !933, size: 64, offset: 832)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !158, line: 2711, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !772, file: !158, line: 3383, baseType: !936, size: 960)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !158, line: 2756, size: 960, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !936, file: !158, line: 2757, baseType: !898, size: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !936, file: !158, line: 2758, baseType: !655, size: 64, offset: 896)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !772, file: !158, line: 3384, baseType: !941, size: 1472)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !158, line: 3114, size: 1472, elements: !942)
!942 = !{!943, !964, !965, !966, !967}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !941, file: !158, line: 3115, baseType: !944, size: 1216)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !158, line: 2984, size: 1216, elements: !945)
!945 = !{!946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !944, file: !158, line: 2985, baseType: !936, size: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !944, file: !158, line: 2986, baseType: !770, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !944, file: !158, line: 2987, baseType: !770, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !944, file: !158, line: 2988, baseType: !770, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !944, file: !158, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !944, file: !158, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !944, file: !158, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !944, file: !158, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !944, file: !158, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !944, file: !158, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !944, file: !158, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !944, file: !158, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !944, file: !158, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !944, file: !158, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !944, file: !158, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !944, file: !158, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !944, file: !158, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !944, file: !158, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !941, file: !158, line: 3117, baseType: !770, size: 64, offset: 1216)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !941, file: !158, line: 3119, baseType: !770, size: 64, offset: 1280)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !941, file: !158, line: 3121, baseType: !770, size: 64, offset: 1344)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !941, file: !158, line: 3123, baseType: !770, size: 64, offset: 1408)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !772, file: !158, line: 3385, baseType: !969, size: 1088)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !158, line: 2874, size: 1088, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !969, file: !158, line: 2875, baseType: !936, size: 960)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !969, file: !158, line: 2876, baseType: !655, size: 64, offset: 960)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !969, file: !158, line: 2877, baseType: !974, size: 64, offset: 1024)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !158, line: 2856, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !772, file: !158, line: 3386, baseType: !944, size: 1216)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !772, file: !158, line: 3387, baseType: !978, size: 1280)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !158, line: 3093, size: 1280, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !978, file: !158, line: 3094, baseType: !944, size: 1216)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !978, file: !158, line: 3095, baseType: !974, size: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !772, file: !158, line: 3388, baseType: !983, size: 1216)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !158, line: 2824, size: 1216, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !983, file: !158, line: 2825, baseType: !898, size: 896)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !983, file: !158, line: 2827, baseType: !770, size: 64, offset: 896)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !983, file: !158, line: 2828, baseType: !770, size: 64, offset: 960)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !983, file: !158, line: 2829, baseType: !770, size: 64, offset: 1024)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !983, file: !158, line: 2830, baseType: !770, size: 64, offset: 1088)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !983, file: !158, line: 2831, baseType: !770, size: 64, offset: 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !772, file: !158, line: 3389, baseType: !992, size: 1024)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !158, line: 2850, size: 1024, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !992, file: !158, line: 2851, baseType: !936, size: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !992, file: !158, line: 2852, baseType: !607, size: 32, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !992, file: !158, line: 2853, baseType: !607, size: 32, offset: 992)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !772, file: !158, line: 3390, baseType: !998, size: 1024)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !158, line: 2857, size: 1024, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !998, file: !158, line: 2858, baseType: !936, size: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !998, file: !158, line: 2859, baseType: !974, size: 64, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !772, file: !158, line: 3391, baseType: !1003, size: 960)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !158, line: 2862, size: 960, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1003, file: !158, line: 2863, baseType: !936, size: 960)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !772, file: !158, line: 3392, baseType: !1007, size: 1472)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !158, line: 3304, size: 1472, elements: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1007, file: !158, line: 3305, baseType: !941, size: 1472)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !772, file: !158, line: 3393, baseType: !1011, size: 1792)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !158, line: 3248, size: 1792, elements: !1012)
!1012 = !{!1013, !1014, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1011, file: !158, line: 3249, baseType: !941, size: 1472)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1011, file: !158, line: 3251, baseType: !1015, size: 64, offset: 1472)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1017, line: 463, size: 1152, elements: !1018)
!1017 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1018 = !{!1019, !1183, !1214, !1215, !1218, !1239, !1240, !1241, !1242, !1243, !1244, !1268, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1016, file: !1017, line: 464, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !135, line: 194, size: 384, elements: !1022)
!1022 = !{!1023, !1072, !1085, !1099, !1151, !1164}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1021, file: !135, line: 197, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !135, line: 182, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !135, line: 116, size: 704, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1060, !1069, !1070, !1071}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1026, file: !135, line: 119, baseType: !1025, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1026, file: !135, line: 122, baseType: !1025, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1026, file: !135, line: 123, baseType: !1025, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1026, file: !135, line: 126, baseType: !607, size: 32, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1026, file: !135, line: 129, baseType: !134, size: 32, offset: 224)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1026, file: !135, line: 165, baseType: !1034, size: 192, offset: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !135, line: 132, size: 192, elements: !1035)
!1035 = !{!1036, !1049, !1055}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1034, file: !135, line: 137, baseType: !1037, size: 128)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !135, line: 133, size: 128, elements: !1038)
!1038 = !{!1039, !1048}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1037, file: !135, line: 135, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !135, line: 93, size: 320, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1041, file: !135, line: 96, baseType: !1040, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1041, file: !135, line: 97, baseType: !1040, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1041, file: !135, line: 101, baseType: !770, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1041, file: !135, line: 106, baseType: !770, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1041, file: !135, line: 111, baseType: !770, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1037, file: !135, line: 136, baseType: !1040, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1034, file: !135, line: 151, baseType: !1050, size: 192)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !135, line: 139, size: 192, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1050, file: !135, line: 141, baseType: !770, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1050, file: !135, line: 145, baseType: !770, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1050, file: !135, line: 150, baseType: !607, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1034, file: !135, line: 164, baseType: !1056, size: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !135, line: 153, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1056, file: !135, line: 161, baseType: !770, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1056, file: !135, line: 163, baseType: !890, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1026, file: !135, line: 168, baseType: !1061, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !135, line: 67, size: 320, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1062, file: !135, line: 70, baseType: !1061, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1062, file: !135, line: 73, baseType: !1025, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1062, file: !135, line: 78, baseType: !770, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1062, file: !135, line: 85, baseType: !655, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1062, file: !135, line: 88, baseType: !607, size: 32, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1026, file: !135, line: 173, baseType: !655, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1026, file: !135, line: 173, baseType: !655, size: 64, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1026, file: !135, line: 177, baseType: !606, size: 8, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1021, file: !135, line: 200, baseType: !1073, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !135, line: 185, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !135, line: 185, size: 128, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1075, file: !135, line: 185, baseType: !1078, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !135, line: 184, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !135, line: 184, size: 128, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1079, file: !135, line: 184, baseType: !7, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1079, file: !135, line: 184, baseType: !7, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1079, file: !135, line: 184, baseType: !1084, size: 64, offset: 64)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1024, size: 64, elements: !689)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1021, file: !135, line: 203, baseType: !1086, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, size: 128, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1088, file: !135, line: 189, baseType: !1091, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !135, line: 188, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !135, line: 188, size: 128, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1092, file: !135, line: 188, baseType: !7, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1092, file: !135, line: 188, baseType: !7, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1092, file: !135, line: 188, baseType: !1097, size: 64, offset: 64)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 64, elements: !689)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !135, line: 180, baseType: !1061)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1021, file: !135, line: 207, baseType: !1100, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1101, line: 144, baseType: !1102)
!1101 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1101, line: 100, size: 896, elements: !1104)
!1104 = !{!1105, !1113, !1118, !1123, !1125, !1128, !1129, !1130, !1131, !1132, !1137, !1139, !1140, !1145, !1150}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1103, file: !1101, line: 102, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1101, line: 52, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1101, line: 47, baseType: !7)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1103, file: !1101, line: 105, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1101, line: 59, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!607, !1111, !1111}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1103, file: !1101, line: 108, baseType: !1119, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1101, line: 63, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !611}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1103, file: !1101, line: 111, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1103, file: !1101, line: 114, baseType: !1126, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1127, line: 46, baseType: !724)
!1127 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1103, file: !1101, line: 117, baseType: !1126, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1103, file: !1101, line: 120, baseType: !1126, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1103, file: !1101, line: 124, baseType: !7, size: 32, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1103, file: !1101, line: 128, baseType: !7, size: 32, offset: 480)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1103, file: !1101, line: 131, baseType: !1133, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1101, line: 75, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!611, !1126, !1126}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1103, file: !1101, line: 132, baseType: !1138, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1101, line: 78, baseType: !1120)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1103, file: !1101, line: 135, baseType: !611, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1103, file: !1101, line: 136, baseType: !1141, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1101, line: 82, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!611, !611, !1126, !1126}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1103, file: !1101, line: 137, baseType: !1146, size: 64, offset: 768)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1101, line: 83, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !611, !611}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1103, file: !1101, line: 141, baseType: !7, size: 32, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1021, file: !135, line: 211, baseType: !1152, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !158, line: 183, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !158, line: 183, size: 128, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1154, file: !158, line: 183, baseType: !1157, size: 128)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !158, line: 182, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !158, line: 182, size: 128, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1158, file: !158, line: 182, baseType: !7, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1158, file: !158, line: 182, baseType: !7, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1158, file: !158, line: 182, baseType: !1163, size: 64, offset: 64)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 64, elements: !689)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1021, file: !135, line: 220, baseType: !1165, size: 64, offset: 320)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !135, line: 217, size: 64, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1165, file: !135, line: 218, baseType: !1152, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1165, file: !135, line: 219, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1171, line: 29, baseType: !1172)
!1171 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1171, line: 29, size: 96, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1172, file: !1171, line: 29, baseType: !1175, size: 96)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1171, line: 27, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1171, line: 27, size: 96, elements: !1177)
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1176, file: !1171, line: 27, baseType: !7, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1176, file: !1171, line: 27, baseType: !7, size: 32, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1176, file: !1171, line: 27, baseType: !1181, size: 8, offset: 64)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 8, elements: !689)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1171, line: 26, baseType: !606)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1016, file: !1017, line: 467, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !142, line: 374, size: 640, elements: !1186)
!1186 = !{!1187, !1189, !1190, !1203, !1204, !1205, !1206, !1207, !1208, !1210, !1212, !1213}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1185, file: !142, line: 377, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !641, line: 111, baseType: !624)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1185, file: !142, line: 378, baseType: !1188, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1185, file: !142, line: 381, baseType: !1191, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !142, line: 282, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !142, line: 282, size: 128, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1193, file: !142, line: 282, baseType: !1196, size: 128)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !142, line: 281, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !142, line: 281, size: 128, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1197, file: !142, line: 281, baseType: !7, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1197, file: !142, line: 281, baseType: !7, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1197, file: !142, line: 281, baseType: !1202, size: 64, offset: 64)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1188, size: 64, elements: !689)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1185, file: !142, line: 384, baseType: !607, size: 32, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1185, file: !142, line: 387, baseType: !607, size: 32, offset: 224)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1185, file: !142, line: 390, baseType: !607, size: 32, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1185, file: !142, line: 394, baseType: !1191, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1185, file: !142, line: 396, baseType: !141, size: 32, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1185, file: !142, line: 399, baseType: !1209, size: 64, offset: 416)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !725)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1185, file: !142, line: 402, baseType: !1211, size: 64, offset: 480)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !725)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1185, file: !142, line: 406, baseType: !607, size: 32, offset: 544)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1185, file: !142, line: 409, baseType: !607, size: 32, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1016, file: !1017, line: 470, baseType: !652, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1016, file: !1017, line: 473, baseType: !1216, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1017, line: 166, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1016, file: !1017, line: 476, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !385, line: 187, size: 256, elements: !1221)
!1221 = !{!1222, !1223, !1237, !1238}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1220, file: !385, line: 189, baseType: !607, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1220, file: !385, line: 192, baseType: !1224, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !385, line: 87, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !385, line: 87, size: 128, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1226, file: !385, line: 87, baseType: !1229, size: 128)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !385, line: 85, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !385, line: 85, size: 128, elements: !1231)
!1231 = !{!1232, !1233, !1234}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1230, file: !385, line: 85, baseType: !7, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1230, file: !385, line: 85, baseType: !7, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1230, file: !385, line: 85, baseType: !1235, size: 64, offset: 64)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, size: 64, elements: !689)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !385, line: 84, baseType: !618)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1220, file: !385, line: 197, baseType: !1100, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1220, file: !385, line: 200, baseType: !618, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1016, file: !1017, line: 479, baseType: !1100, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1016, file: !1017, line: 484, baseType: !770, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1016, file: !1017, line: 488, baseType: !770, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1016, file: !1017, line: 493, baseType: !770, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1016, file: !1017, line: 496, baseType: !770, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1016, file: !1017, line: 501, baseType: !1245, size: 64, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !153, line: 2355, size: 576, elements: !1247)
!1247 = !{!1248, !1251, !1252, !1253, !1254, !1256, !1257, !1262, !1263, !1264, !1265, !1266, !1267}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1246, file: !153, line: 2356, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !153, line: 2356, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1246, file: !153, line: 2357, baseType: !612, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1246, file: !153, line: 2358, baseType: !607, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1246, file: !153, line: 2359, baseType: !607, size: 32, offset: 160)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1246, file: !153, line: 2360, baseType: !1255, size: 128, offset: 192)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !750)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1246, file: !153, line: 2364, baseType: !607, size: 32, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1246, file: !153, line: 2367, baseType: !1258, size: 128, offset: 384)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !153, line: 2349, size: 128, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1258, file: !153, line: 2351, baseType: !655, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1258, file: !153, line: 2352, baseType: !741, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1246, file: !153, line: 2371, baseType: !152, size: 32, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1246, file: !153, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1246, file: !153, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1246, file: !153, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1246, file: !153, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1246, file: !153, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1016, file: !1017, line: 504, baseType: !1269, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1017, line: 504, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1016, file: !1017, line: 507, baseType: !1100, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1016, file: !1017, line: 510, baseType: !607, size: 32, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1016, file: !1017, line: 513, baseType: !607, size: 32, offset: 864)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1016, file: !1017, line: 516, baseType: !890, size: 32, offset: 896)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1016, file: !1017, line: 519, baseType: !890, size: 32, offset: 928)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1016, file: !1017, line: 522, baseType: !7, size: 32, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1016, file: !1017, line: 523, baseType: !7, size: 32, offset: 992)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1016, file: !1017, line: 528, baseType: !612, size: 64, offset: 1024)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1016, file: !1017, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1016, file: !1017, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1016, file: !1017, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1016, file: !1017, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1016, file: !1017, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1016, file: !1017, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1016, file: !1017, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1016, file: !1017, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1016, file: !1017, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1016, file: !1017, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1016, file: !1017, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1016, file: !1017, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1016, file: !1017, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1016, file: !1017, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1016, file: !1017, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1016, file: !1017, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1011, file: !158, line: 3254, baseType: !770, size: 64, offset: 1536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1011, file: !158, line: 3257, baseType: !770, size: 64, offset: 1600)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1011, file: !158, line: 3258, baseType: !770, size: 64, offset: 1664)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1011, file: !158, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1011, file: !158, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1011, file: !158, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1011, file: !158, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1011, file: !158, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1011, file: !158, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1011, file: !158, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1011, file: !158, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1011, file: !158, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1011, file: !158, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1011, file: !158, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1011, file: !158, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1011, file: !158, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1011, file: !158, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1011, file: !158, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1011, file: !158, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1011, file: !158, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1011, file: !158, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !158, line: 3394, baseType: !1317, size: 1344)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !158, line: 2279, size: 1344, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1344, !1345, !1346, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1317, file: !158, line: 2280, baseType: !808, size: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1317, file: !158, line: 2281, baseType: !770, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1317, file: !158, line: 2282, baseType: !770, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1317, file: !158, line: 2283, baseType: !770, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1317, file: !158, line: 2284, baseType: !770, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1317, file: !158, line: 2285, baseType: !7, size: 32, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1317, file: !158, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1317, file: !158, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1317, file: !158, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1317, file: !158, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1317, file: !158, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1317, file: !158, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1317, file: !158, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1317, file: !158, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1317, file: !158, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1317, file: !158, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1317, file: !158, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1317, file: !158, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1317, file: !158, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1317, file: !158, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1317, file: !158, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1317, file: !158, line: 2305, baseType: !7, size: 32, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1317, file: !158, line: 2306, baseType: !1342, size: 32, offset: 544)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1343, line: 31, baseType: !607)
!1343 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1317, file: !158, line: 2307, baseType: !770, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1317, file: !158, line: 2308, baseType: !770, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1317, file: !158, line: 2314, baseType: !1347, size: 64, offset: 704)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !158, line: 2309, size: 64, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1347, file: !158, line: 2310, baseType: !607, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1347, file: !158, line: 2311, baseType: !612, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1347, file: !158, line: 2312, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !158, line: 2277, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1317, file: !158, line: 2315, baseType: !770, size: 64, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1317, file: !158, line: 2316, baseType: !770, size: 64, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1317, file: !158, line: 2317, baseType: !770, size: 64, offset: 896)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1317, file: !158, line: 2318, baseType: !770, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1317, file: !158, line: 2319, baseType: !770, size: 64, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1317, file: !158, line: 2320, baseType: !770, size: 64, offset: 1088)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1317, file: !158, line: 2321, baseType: !770, size: 64, offset: 1152)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1317, file: !158, line: 2322, baseType: !770, size: 64, offset: 1216)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1317, file: !158, line: 2324, baseType: !1363, size: 64, offset: 1280)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !158, line: 2324, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !772, file: !158, line: 3395, baseType: !1366, size: 320)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !158, line: 1469, size: 320, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1366, file: !158, line: 1470, baseType: !808, size: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1366, file: !158, line: 1471, baseType: !770, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1366, file: !158, line: 1472, baseType: !770, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !772, file: !158, line: 3396, baseType: !1372, size: 320)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !158, line: 1482, size: 320, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1372, file: !158, line: 1483, baseType: !808, size: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1372, file: !158, line: 1484, baseType: !607, size: 32, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1372, file: !158, line: 1485, baseType: !1163, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !772, file: !158, line: 3397, baseType: !1378, size: 384)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !158, line: 1829, size: 384, elements: !1379)
!1379 = !{!1380, !1381, !1382, !1383}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1378, file: !158, line: 1830, baseType: !808, size: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1378, file: !158, line: 1831, baseType: !890, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1378, file: !158, line: 1832, baseType: !770, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1378, file: !158, line: 1835, baseType: !1163, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !772, file: !158, line: 3398, baseType: !1385, size: 704)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !158, line: 1898, size: 704, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1393, !1394, !1397}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1385, file: !158, line: 1899, baseType: !808, size: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1385, file: !158, line: 1902, baseType: !770, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1385, file: !158, line: 1905, baseType: !1390, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !641, line: 58, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !641, line: 57, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1385, file: !158, line: 1908, baseType: !7, size: 32, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1385, file: !158, line: 1911, baseType: !1395, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !158, line: 1876, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1385, file: !158, line: 1914, baseType: !1398, size: 256, offset: 448)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !158, line: 1883, size: 256, elements: !1399)
!1399 = !{!1400, !1402, !1403, !1408}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1398, file: !158, line: 1884, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1398, file: !158, line: 1885, baseType: !1401, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1398, file: !158, line: 1891, baseType: !1404, size: 64, offset: 128)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !158, line: 1891, size: 64, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1404, file: !158, line: 1891, baseType: !1390, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1404, file: !158, line: 1891, baseType: !770, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1398, file: !158, line: 1892, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !772, file: !158, line: 3399, baseType: !1411, size: 704)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !158, line: 2008, size: 704, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !158, line: 2009, baseType: !808, size: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1411, file: !158, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1411, file: !158, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1411, file: !158, line: 2014, baseType: !890, size: 32, offset: 224)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1411, file: !158, line: 2016, baseType: !770, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1411, file: !158, line: 2017, baseType: !1152, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1411, file: !158, line: 2019, baseType: !770, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1411, file: !158, line: 2020, baseType: !770, size: 64, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1411, file: !158, line: 2021, baseType: !770, size: 64, offset: 512)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1411, file: !158, line: 2022, baseType: !770, size: 64, offset: 576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1411, file: !158, line: 2023, baseType: !770, size: 64, offset: 640)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !772, file: !158, line: 3400, baseType: !1425, size: 832)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !158, line: 2430, size: 832, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1425, file: !158, line: 2431, baseType: !808, size: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1425, file: !158, line: 2433, baseType: !770, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1425, file: !158, line: 2434, baseType: !770, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1425, file: !158, line: 2435, baseType: !770, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1425, file: !158, line: 2436, baseType: !770, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1425, file: !158, line: 2437, baseType: !1152, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1425, file: !158, line: 2438, baseType: !770, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1425, file: !158, line: 2440, baseType: !770, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1425, file: !158, line: 2441, baseType: !770, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1425, file: !158, line: 2443, baseType: !1437, size: 128, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !158, line: 182, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !158, line: 182, size: 128, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1438, file: !158, line: 182, baseType: !1157, size: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !772, file: !158, line: 3401, baseType: !1442, size: 320)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !158, line: 3327, size: 320, elements: !1443)
!1443 = !{!1444, !1445, !1452}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1442, file: !158, line: 3329, baseType: !808, size: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1442, file: !158, line: 3330, baseType: !1446, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !158, line: 3320, size: 192, elements: !1448)
!1448 = !{!1449, !1450, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1447, file: !158, line: 3322, baseType: !1446, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1447, file: !158, line: 3323, baseType: !1446, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1447, file: !158, line: 3324, baseType: !770, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1442, file: !158, line: 3331, baseType: !1446, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !772, file: !158, line: 3402, baseType: !1454, size: 256)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !158, line: 1540, size: 256, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1454, file: !158, line: 1541, baseType: !808, size: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1454, file: !158, line: 1542, baseType: !1458, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !158, line: 1538, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !158, line: 1538, size: 192, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1460, file: !158, line: 1538, baseType: !1463, size: 192)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !158, line: 1537, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !158, line: 1537, size: 192, elements: !1465)
!1465 = !{!1466, !1467, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1464, file: !158, line: 1537, baseType: !7, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1464, file: !158, line: 1537, baseType: !7, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1464, file: !158, line: 1537, baseType: !1469, size: 128, offset: 64)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 128, elements: !689)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !158, line: 1535, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !158, line: 1532, size: 128, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1471, file: !158, line: 1533, baseType: !770, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1471, file: !158, line: 1534, baseType: !770, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !772, file: !158, line: 3403, baseType: !1476, size: 512)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !158, line: 1938, size: 512, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1487, !1488, !1489}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1476, file: !158, line: 1939, baseType: !808, size: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1476, file: !158, line: 1940, baseType: !890, size: 32, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1476, file: !158, line: 1941, baseType: !157, size: 32, offset: 224)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1476, file: !158, line: 1946, baseType: !1482, size: 32, offset: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !158, line: 1942, size: 32, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1482, file: !158, line: 1943, baseType: !176, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1482, file: !158, line: 1944, baseType: !183, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1482, file: !158, line: 1945, baseType: !190, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1476, file: !158, line: 1950, baseType: !651, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1476, file: !158, line: 1951, baseType: !651, size: 64, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1476, file: !158, line: 1953, baseType: !1163, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !772, file: !158, line: 3404, baseType: !1491, size: 1664)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !158, line: 3337, size: 1664, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1491, file: !158, line: 3338, baseType: !808, size: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1491, file: !158, line: 3341, baseType: !1495, size: 1472, offset: 192)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1496, line: 410, size: 1472, elements: !1497)
!1496 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1495, file: !1496, line: 412, baseType: !607, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1495, file: !1496, line: 413, baseType: !607, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1495, file: !1496, line: 414, baseType: !607, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1495, file: !1496, line: 415, baseType: !607, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1495, file: !1496, line: 416, baseType: !607, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1495, file: !1496, line: 417, baseType: !607, size: 32, offset: 160)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1495, file: !1496, line: 418, baseType: !606, size: 8, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1495, file: !1496, line: 419, baseType: !606, size: 8, offset: 200)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1495, file: !1496, line: 420, baseType: !1507, size: 8, offset: 208)
!1507 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1495, file: !1496, line: 421, baseType: !1507, size: 8, offset: 216)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1495, file: !1496, line: 422, baseType: !1507, size: 8, offset: 224)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1495, file: !1496, line: 423, baseType: !1507, size: 8, offset: 232)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1495, file: !1496, line: 424, baseType: !1507, size: 8, offset: 240)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1495, file: !1496, line: 425, baseType: !1507, size: 8, offset: 248)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1495, file: !1496, line: 426, baseType: !1507, size: 8, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1495, file: !1496, line: 427, baseType: !1507, size: 8, offset: 264)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1495, file: !1496, line: 428, baseType: !1507, size: 8, offset: 272)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1495, file: !1496, line: 429, baseType: !1507, size: 8, offset: 280)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1495, file: !1496, line: 430, baseType: !1507, size: 8, offset: 288)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1495, file: !1496, line: 431, baseType: !1507, size: 8, offset: 296)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1495, file: !1496, line: 432, baseType: !1507, size: 8, offset: 304)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1495, file: !1496, line: 433, baseType: !1507, size: 8, offset: 312)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1495, file: !1496, line: 434, baseType: !1507, size: 8, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1495, file: !1496, line: 435, baseType: !1507, size: 8, offset: 328)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1495, file: !1496, line: 436, baseType: !1507, size: 8, offset: 336)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1495, file: !1496, line: 437, baseType: !1507, size: 8, offset: 344)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1495, file: !1496, line: 438, baseType: !1507, size: 8, offset: 352)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1495, file: !1496, line: 439, baseType: !1507, size: 8, offset: 360)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1495, file: !1496, line: 440, baseType: !1507, size: 8, offset: 368)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1495, file: !1496, line: 441, baseType: !1507, size: 8, offset: 376)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1495, file: !1496, line: 442, baseType: !1507, size: 8, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1495, file: !1496, line: 443, baseType: !1507, size: 8, offset: 392)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1495, file: !1496, line: 444, baseType: !1507, size: 8, offset: 400)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1495, file: !1496, line: 445, baseType: !1507, size: 8, offset: 408)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1495, file: !1496, line: 446, baseType: !1507, size: 8, offset: 416)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1495, file: !1496, line: 447, baseType: !1507, size: 8, offset: 424)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1495, file: !1496, line: 448, baseType: !1507, size: 8, offset: 432)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1495, file: !1496, line: 449, baseType: !1507, size: 8, offset: 440)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1495, file: !1496, line: 450, baseType: !1507, size: 8, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1495, file: !1496, line: 451, baseType: !1507, size: 8, offset: 456)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1495, file: !1496, line: 452, baseType: !1507, size: 8, offset: 464)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1495, file: !1496, line: 453, baseType: !1507, size: 8, offset: 472)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1495, file: !1496, line: 454, baseType: !1507, size: 8, offset: 480)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1495, file: !1496, line: 455, baseType: !1507, size: 8, offset: 488)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1495, file: !1496, line: 456, baseType: !1507, size: 8, offset: 496)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1495, file: !1496, line: 457, baseType: !1507, size: 8, offset: 504)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1495, file: !1496, line: 458, baseType: !1507, size: 8, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1495, file: !1496, line: 459, baseType: !1507, size: 8, offset: 520)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1495, file: !1496, line: 460, baseType: !1507, size: 8, offset: 528)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1495, file: !1496, line: 461, baseType: !1507, size: 8, offset: 536)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1495, file: !1496, line: 462, baseType: !1507, size: 8, offset: 544)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1495, file: !1496, line: 463, baseType: !1507, size: 8, offset: 552)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1495, file: !1496, line: 464, baseType: !1507, size: 8, offset: 560)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1495, file: !1496, line: 465, baseType: !1507, size: 8, offset: 568)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1495, file: !1496, line: 466, baseType: !1507, size: 8, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1495, file: !1496, line: 467, baseType: !1507, size: 8, offset: 584)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1495, file: !1496, line: 468, baseType: !1507, size: 8, offset: 592)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1495, file: !1496, line: 469, baseType: !1507, size: 8, offset: 600)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1495, file: !1496, line: 470, baseType: !1507, size: 8, offset: 608)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1495, file: !1496, line: 471, baseType: !1507, size: 8, offset: 616)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1495, file: !1496, line: 472, baseType: !1507, size: 8, offset: 624)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1495, file: !1496, line: 473, baseType: !1507, size: 8, offset: 632)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1495, file: !1496, line: 474, baseType: !1507, size: 8, offset: 640)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1495, file: !1496, line: 475, baseType: !1507, size: 8, offset: 648)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1495, file: !1496, line: 476, baseType: !1507, size: 8, offset: 656)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1495, file: !1496, line: 477, baseType: !1507, size: 8, offset: 664)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1495, file: !1496, line: 478, baseType: !1507, size: 8, offset: 672)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1495, file: !1496, line: 479, baseType: !1507, size: 8, offset: 680)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1495, file: !1496, line: 480, baseType: !1507, size: 8, offset: 688)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1495, file: !1496, line: 481, baseType: !1507, size: 8, offset: 696)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1495, file: !1496, line: 482, baseType: !1507, size: 8, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1495, file: !1496, line: 483, baseType: !1507, size: 8, offset: 712)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1495, file: !1496, line: 484, baseType: !1507, size: 8, offset: 720)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1495, file: !1496, line: 485, baseType: !1507, size: 8, offset: 728)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1495, file: !1496, line: 486, baseType: !1507, size: 8, offset: 736)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1495, file: !1496, line: 487, baseType: !1507, size: 8, offset: 744)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1495, file: !1496, line: 488, baseType: !1507, size: 8, offset: 752)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1495, file: !1496, line: 489, baseType: !1507, size: 8, offset: 760)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1495, file: !1496, line: 490, baseType: !1507, size: 8, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1495, file: !1496, line: 491, baseType: !1507, size: 8, offset: 776)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1495, file: !1496, line: 492, baseType: !1507, size: 8, offset: 784)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1495, file: !1496, line: 493, baseType: !1507, size: 8, offset: 792)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1495, file: !1496, line: 494, baseType: !1507, size: 8, offset: 800)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1495, file: !1496, line: 495, baseType: !1507, size: 8, offset: 808)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1495, file: !1496, line: 496, baseType: !1507, size: 8, offset: 816)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1495, file: !1496, line: 497, baseType: !1507, size: 8, offset: 824)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1495, file: !1496, line: 498, baseType: !1507, size: 8, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1495, file: !1496, line: 499, baseType: !1507, size: 8, offset: 840)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1495, file: !1496, line: 500, baseType: !1507, size: 8, offset: 848)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1495, file: !1496, line: 501, baseType: !1507, size: 8, offset: 856)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1495, file: !1496, line: 502, baseType: !1507, size: 8, offset: 864)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1495, file: !1496, line: 503, baseType: !1507, size: 8, offset: 872)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1495, file: !1496, line: 504, baseType: !1507, size: 8, offset: 880)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1495, file: !1496, line: 505, baseType: !1507, size: 8, offset: 888)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1495, file: !1496, line: 506, baseType: !1507, size: 8, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1495, file: !1496, line: 507, baseType: !1507, size: 8, offset: 904)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1495, file: !1496, line: 508, baseType: !1507, size: 8, offset: 912)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1495, file: !1496, line: 509, baseType: !1507, size: 8, offset: 920)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1495, file: !1496, line: 510, baseType: !1507, size: 8, offset: 928)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1495, file: !1496, line: 511, baseType: !1507, size: 8, offset: 936)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1495, file: !1496, line: 512, baseType: !1507, size: 8, offset: 944)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1495, file: !1496, line: 513, baseType: !1507, size: 8, offset: 952)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1495, file: !1496, line: 514, baseType: !1507, size: 8, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1495, file: !1496, line: 515, baseType: !1507, size: 8, offset: 968)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1495, file: !1496, line: 516, baseType: !1507, size: 8, offset: 976)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1495, file: !1496, line: 517, baseType: !1507, size: 8, offset: 984)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1495, file: !1496, line: 518, baseType: !1507, size: 8, offset: 992)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1495, file: !1496, line: 519, baseType: !1507, size: 8, offset: 1000)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1495, file: !1496, line: 520, baseType: !1507, size: 8, offset: 1008)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1495, file: !1496, line: 521, baseType: !1507, size: 8, offset: 1016)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1495, file: !1496, line: 522, baseType: !1507, size: 8, offset: 1024)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1495, file: !1496, line: 523, baseType: !1507, size: 8, offset: 1032)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1495, file: !1496, line: 524, baseType: !1507, size: 8, offset: 1040)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1495, file: !1496, line: 525, baseType: !1507, size: 8, offset: 1048)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1495, file: !1496, line: 526, baseType: !1507, size: 8, offset: 1056)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1495, file: !1496, line: 527, baseType: !1507, size: 8, offset: 1064)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1495, file: !1496, line: 528, baseType: !1507, size: 8, offset: 1072)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1495, file: !1496, line: 529, baseType: !1507, size: 8, offset: 1080)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1495, file: !1496, line: 530, baseType: !1507, size: 8, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1495, file: !1496, line: 531, baseType: !1507, size: 8, offset: 1096)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1495, file: !1496, line: 532, baseType: !1507, size: 8, offset: 1104)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1495, file: !1496, line: 533, baseType: !1507, size: 8, offset: 1112)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1495, file: !1496, line: 534, baseType: !1507, size: 8, offset: 1120)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1495, file: !1496, line: 535, baseType: !1507, size: 8, offset: 1128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1495, file: !1496, line: 536, baseType: !1507, size: 8, offset: 1136)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1495, file: !1496, line: 537, baseType: !1507, size: 8, offset: 1144)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1495, file: !1496, line: 538, baseType: !1507, size: 8, offset: 1152)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1495, file: !1496, line: 539, baseType: !1507, size: 8, offset: 1160)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1495, file: !1496, line: 540, baseType: !1507, size: 8, offset: 1168)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1495, file: !1496, line: 541, baseType: !1507, size: 8, offset: 1176)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1495, file: !1496, line: 542, baseType: !1507, size: 8, offset: 1184)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1495, file: !1496, line: 543, baseType: !1507, size: 8, offset: 1192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1495, file: !1496, line: 544, baseType: !1507, size: 8, offset: 1200)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1495, file: !1496, line: 545, baseType: !1507, size: 8, offset: 1208)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1495, file: !1496, line: 546, baseType: !1507, size: 8, offset: 1216)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1495, file: !1496, line: 547, baseType: !1507, size: 8, offset: 1224)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1495, file: !1496, line: 548, baseType: !1507, size: 8, offset: 1232)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1495, file: !1496, line: 549, baseType: !1507, size: 8, offset: 1240)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1495, file: !1496, line: 550, baseType: !1507, size: 8, offset: 1248)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1495, file: !1496, line: 551, baseType: !1507, size: 8, offset: 1256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1495, file: !1496, line: 552, baseType: !1507, size: 8, offset: 1264)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1495, file: !1496, line: 553, baseType: !1507, size: 8, offset: 1272)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1495, file: !1496, line: 554, baseType: !1507, size: 8, offset: 1280)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1495, file: !1496, line: 555, baseType: !1507, size: 8, offset: 1288)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1495, file: !1496, line: 556, baseType: !1507, size: 8, offset: 1296)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1495, file: !1496, line: 557, baseType: !1507, size: 8, offset: 1304)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1495, file: !1496, line: 558, baseType: !1507, size: 8, offset: 1312)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1495, file: !1496, line: 559, baseType: !1507, size: 8, offset: 1320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1495, file: !1496, line: 560, baseType: !1507, size: 8, offset: 1328)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1495, file: !1496, line: 561, baseType: !1507, size: 8, offset: 1336)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1495, file: !1496, line: 562, baseType: !1507, size: 8, offset: 1344)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1495, file: !1496, line: 563, baseType: !1507, size: 8, offset: 1352)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1495, file: !1496, line: 564, baseType: !1507, size: 8, offset: 1360)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1495, file: !1496, line: 565, baseType: !1507, size: 8, offset: 1368)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1495, file: !1496, line: 566, baseType: !1507, size: 8, offset: 1376)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1495, file: !1496, line: 567, baseType: !1507, size: 8, offset: 1384)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1495, file: !1496, line: 568, baseType: !1507, size: 8, offset: 1392)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1495, file: !1496, line: 569, baseType: !1507, size: 8, offset: 1400)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1495, file: !1496, line: 570, baseType: !1507, size: 8, offset: 1408)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1495, file: !1496, line: 571, baseType: !1507, size: 8, offset: 1416)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1495, file: !1496, line: 572, baseType: !1507, size: 8, offset: 1424)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1495, file: !1496, line: 573, baseType: !1507, size: 8, offset: 1432)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1495, file: !1496, line: 574, baseType: !1507, size: 8, offset: 1440)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !772, file: !158, line: 3405, baseType: !1663, size: 384)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !158, line: 3352, size: 384, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1663, file: !158, line: 3353, baseType: !808, size: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1663, file: !158, line: 3356, baseType: !1667, size: 192, offset: 192)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1496, line: 578, size: 192, elements: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1667, file: !1496, line: 580, baseType: !607, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1667, file: !1496, line: 581, baseType: !607, size: 32, offset: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1667, file: !1496, line: 582, baseType: !607, size: 32, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1667, file: !1496, line: 583, baseType: !607, size: 32, offset: 96)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1667, file: !1496, line: 584, baseType: !606, size: 8, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1667, file: !1496, line: 585, baseType: !606, size: 8, offset: 136)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1667, file: !1496, line: 586, baseType: !606, size: 8, offset: 144)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1667, file: !1496, line: 587, baseType: !606, size: 8, offset: 152)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1667, file: !1496, line: 588, baseType: !606, size: 8, offset: 160)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1667, file: !1496, line: 589, baseType: !606, size: 8, offset: 168)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1667, file: !1496, line: 590, baseType: !606, size: 8, offset: 176)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !675, file: !398, line: 178, baseType: !624, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !675, file: !398, line: 179, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !398, line: 150, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !398, line: 142, size: 320, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1684, file: !398, line: 144, baseType: !770, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1684, file: !398, line: 145, baseType: !655, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1684, file: !398, line: 146, baseType: !655, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1684, file: !398, line: 147, baseType: !1342, size: 32, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1684, file: !398, line: 148, baseType: !7, size: 32, offset: 224)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1684, file: !398, line: 149, baseType: !606, size: 8, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !675, file: !398, line: 180, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !398, line: 162, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !398, line: 159, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1695, file: !398, line: 160, baseType: !770, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1695, file: !398, line: 161, baseType: !741, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !675, file: !398, line: 181, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !398, line: 181, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !670, file: !398, line: 317, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 64, elements: !689)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !670, file: !398, line: 318, baseType: !1705, size: 320)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !398, line: 188, size: 320, elements: !1706)
!1706 = !{!1707, !1709, !1764}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1705, file: !398, line: 190, baseType: !1708, size: 192)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 192, elements: !841)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1705, file: !398, line: 193, baseType: !1710, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !398, line: 206, size: 320, elements: !1712)
!1712 = !{!1713, !1749, !1750, !1751, !1763}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1711, file: !398, line: 208, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !641, line: 62, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1717, line: 538, size: 256, elements: !1718)
!1717 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1718 = !{!1719, !1723, !1729, !1740}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1716, file: !1717, line: 539, baseType: !1720, size: 32)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1717, line: 482, size: 32, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !1717, line: 484, baseType: !7, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1716, file: !1717, line: 540, baseType: !1724, size: 192)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1717, line: 488, size: 192, elements: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1724, file: !1717, line: 489, baseType: !1720, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1724, file: !1717, line: 492, baseType: !612, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1724, file: !1717, line: 496, baseType: !770, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1716, file: !1717, line: 541, baseType: !1730, size: 256)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1717, line: 504, size: 256, elements: !1731)
!1731 = !{!1732, !1733, !1738, !1739}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1730, file: !1717, line: 505, baseType: !1720, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1730, file: !1717, line: 509, baseType: !1734, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1717, line: 501, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1111}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1730, file: !1717, line: 510, baseType: !1111, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1730, file: !1717, line: 513, baseType: !1714, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1716, file: !1717, line: 542, baseType: !1741, size: 128)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1717, line: 530, size: 128, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1741, file: !1717, line: 531, baseType: !1720, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1741, file: !1717, line: 534, baseType: !1745, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1717, line: 525, baseType: !1746)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!606, !770, !612, !724, !724}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1711, file: !398, line: 211, baseType: !7, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1711, file: !398, line: 214, baseType: !741, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1711, file: !398, line: 224, baseType: !1752, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !398, line: 202, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !398, line: 202, size: 128, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1754, file: !398, line: 202, baseType: !1757, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !398, line: 200, baseType: !1758)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !398, line: 200, size: 128, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1758, file: !398, line: 200, baseType: !7, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1758, file: !398, line: 200, baseType: !7, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1758, file: !398, line: 200, baseType: !688, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1711, file: !398, line: 234, baseType: !1752, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1705, file: !398, line: 197, baseType: !741, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !670, file: !398, line: 319, baseType: !830, size: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !670, file: !398, line: 320, baseType: !849, size: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !643, file: !142, line: 134, baseType: !611, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !643, file: !142, line: 137, baseType: !770, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !643, file: !142, line: 138, baseType: !890, size: 32, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !643, file: !142, line: 142, baseType: !7, size: 32, offset: 352)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !142, line: 144, baseType: !607, size: 32, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !643, file: !142, line: 145, baseType: !607, size: 32, offset: 416)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !643, file: !142, line: 146, baseType: !1774, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !142, line: 119, baseType: !741)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !625, file: !142, line: 220, baseType: !628, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !625, file: !142, line: 223, baseType: !611, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !625, file: !142, line: 226, baseType: !618, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !625, file: !142, line: 229, baseType: !1779, size: 128, offset: 256)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1780, size: 128, elements: !725)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !142, line: 229, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !625, file: !142, line: 232, baseType: !624, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !625, file: !142, line: 233, baseType: !624, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !625, file: !142, line: 238, baseType: !1785, size: 64, offset: 512)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !142, line: 235, size: 64, elements: !1786)
!1786 = !{!1787, !1793}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1785, file: !142, line: 236, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !142, line: 273, size: 128, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1789, file: !142, line: 275, baseType: !651, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1789, file: !142, line: 278, baseType: !651, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1785, file: !142, line: 237, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !142, line: 259, size: 320, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1800, !1801}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1795, file: !142, line: 261, baseType: !655, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1795, file: !142, line: 262, baseType: !655, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1795, file: !142, line: 266, baseType: !655, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1795, file: !142, line: 267, baseType: !655, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1795, file: !142, line: 270, baseType: !607, size: 32, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !625, file: !142, line: 241, baseType: !1774, size: 64, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !625, file: !142, line: 244, baseType: !607, size: 32, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !625, file: !142, line: 247, baseType: !607, size: 32, offset: 672)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !625, file: !142, line: 250, baseType: !607, size: 32, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !625, file: !142, line: 253, baseType: !607, size: 32, offset: 736)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !142, line: 256, baseType: !607, size: 32, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !619, file: !385, line: 111, baseType: !624, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !619, file: !385, line: 114, baseType: !1810, size: 64, offset: 192)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !385, line: 41, size: 64, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1810, file: !385, line: 42, baseType: !384, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1810, file: !385, line: 43, baseType: !7, size: 32, offset: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !619, file: !385, line: 117, baseType: !7, size: 32, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !619, file: !385, line: 120, baseType: !7, size: 32, offset: 288)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !619, file: !385, line: 123, baseType: !1224, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !619, file: !385, line: 126, baseType: !618, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !385, line: 129, baseType: !618, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !619, file: !385, line: 132, baseType: !611, size: 64, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !619, file: !385, line: 139, baseType: !770, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !619, file: !385, line: 143, baseType: !818, size: 128, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !619, file: !385, line: 146, baseType: !818, size: 128, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !619, file: !385, line: 148, baseType: !606, size: 8, offset: 896)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !619, file: !385, line: 149, baseType: !606, size: 8, offset: 904)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !619, file: !385, line: 153, baseType: !393, size: 32, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !619, file: !385, line: 156, baseType: !1827, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !385, line: 48, size: 320, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1828, file: !385, line: 50, baseType: !1390, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1828, file: !385, line: 59, baseType: !818, size: 128, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1828, file: !385, line: 64, baseType: !606, size: 8, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1828, file: !385, line: 67, baseType: !1827, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !619, file: !385, line: 159, baseType: !1835, size: 64, offset: 1024)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !385, line: 72, size: 256, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1836, file: !385, line: 74, baseType: !642, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1836, file: !385, line: 77, baseType: !1835, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1836, file: !385, line: 78, baseType: !1835, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1836, file: !385, line: 81, baseType: !1835, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !619, file: !385, line: 162, baseType: !606, size: 8, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !619, file: !385, line: 166, baseType: !770, size: 64, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "has_call", scope: !615, file: !3, line: 65, baseType: !606, size: 8, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "max_reg_pressure", scope: !615, file: !3, line: 68, baseType: !1846, size: 864, offset: 96)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 864, elements: !1847)
!1847 = !{!1848}
!1848 = !DISubrange(count: 27)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "regs_ref", scope: !615, file: !3, line: 70, baseType: !1850, size: 256, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_head", file: !710, line: 84, baseType: !709)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "regs_live", scope: !615, file: !3, line: 71, baseType: !1850, size: 256, offset: 1216)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_lr_bb_info", file: !1854, line: 826, size: 256, elements: !1855)
!1854 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1855 = !{!1856, !1858, !1859, !1860}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1853, file: !1854, line: 829, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !641, line: 47, baseType: !708)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1853, file: !1854, line: 831, baseType: !1857, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1853, file: !1854, line: 834, baseType: !1857, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1853, file: !1854, line: 835, baseType: !1857, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !1862, line: 42, baseType: !724)
!1862 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1171, line: 32, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1171, line: 32, size: 96, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1865, file: !1171, line: 32, baseType: !1868, size: 96)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1171, line: 31, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1171, line: 31, size: 96, elements: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1869, file: !1171, line: 31, baseType: !7, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1869, file: !1171, line: 31, baseType: !7, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1869, file: !1171, line: 31, baseType: !1874, size: 32, offset: 64)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 32, elements: !689)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_invariant_p_heap", file: !3, line: 174, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_invariant_p_heap", file: !3, line: 174, size: 128, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1877, file: !3, line: 174, baseType: !1880, size: 128)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_invariant_p_base", file: !3, line: 173, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_invariant_p_base", file: !3, line: 173, size: 128, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1881, file: !3, line: 173, baseType: !7, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1881, file: !3, line: 173, baseType: !7, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1881, file: !3, line: 173, baseType: !1886, size: 64, offset: 64)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1887, size: 64, elements: !689)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "invariant_p", file: !3, line: 171, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "invariant", file: !3, line: 99, size: 512, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "invno", scope: !1889, file: !3, line: 102, baseType: !7, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "eqto", scope: !1889, file: !3, line: 105, baseType: !7, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1889, file: !3, line: 109, baseType: !655, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "orig_regno", scope: !1889, file: !3, line: 113, baseType: !607, size: 32, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1889, file: !3, line: 116, baseType: !1896, size: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def", file: !3, line: 88, size: 192, elements: !1898)
!1898 = !{!1899, !1908, !1909, !1910}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !1897, file: !3, line: 90, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use", file: !3, line: 78, size: 256, elements: !1902)
!1902 = !{!1903, !1905, !1906, !1907}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1901, file: !3, line: 80, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1901, file: !3, line: 81, baseType: !655, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "addr_use_p", scope: !1901, file: !3, line: 82, baseType: !7, size: 32, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1901, file: !3, line: 83, baseType: !1900, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "n_uses", scope: !1897, file: !3, line: 92, baseType: !7, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "n_addr_uses", scope: !1897, file: !3, line: 93, baseType: !7, size: 32, offset: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "invno", scope: !1897, file: !3, line: 94, baseType: !7, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1889, file: !3, line: 119, baseType: !655, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "always_executed", scope: !1889, file: !3, line: 122, baseType: !606, size: 8, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !1889, file: !3, line: 125, baseType: !606, size: 8, offset: 328)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "cheap_address", scope: !1889, file: !3, line: 128, baseType: !606, size: 8, offset: 336)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !1889, file: !3, line: 131, baseType: !7, size: 32, offset: 352)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !1889, file: !3, line: 134, baseType: !1857, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1889, file: !3, line: 138, baseType: !7, size: 32, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "invariant_expr_entry", file: !3, line: 151, size: 192, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "inv", scope: !1921, file: !3, line: 154, baseType: !1888, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1921, file: !3, line: 157, baseType: !655, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1921, file: !3, line: 160, baseType: !5, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1921, file: !3, line: 163, baseType: !1110, size: 32, offset: 160)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1928 = !{!0, !1929, !1931, !1933, !1935, !1937, !1942, !1944, !1946}
!1929 = !DIGlobalVariableExpression(var: !1930, expr: !DIExpression())
!1930 = distinct !DIGlobalVariable(name: "invariant_table", scope: !2, file: !3, line: 147, type: !1918, isLocal: true, isDefinition: true)
!1931 = !DIGlobalVariableExpression(var: !1932, expr: !DIExpression())
!1932 = distinct !DIGlobalVariable(name: "curr_regs_live", scope: !2, file: !3, line: 1581, type: !1850, isLocal: true, isDefinition: true)
!1933 = !DIGlobalVariableExpression(var: !1934, expr: !DIExpression())
!1934 = distinct !DIGlobalVariable(name: "curr_reg_pressure", scope: !2, file: !3, line: 1584, type: !1846, isLocal: true, isDefinition: true)
!1935 = !DIGlobalVariableExpression(var: !1936, expr: !DIExpression())
!1936 = distinct !DIGlobalVariable(name: "n_regs_set", scope: !2, file: !3, line: 1592, type: !607, isLocal: true, isDefinition: true)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(name: "regs_set", scope: !2, file: !3, line: 1589, type: !1939, isLocal: true, isDefinition: true)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 6784, elements: !1940)
!1940 = !{!1941}
!1941 = !DISubrange(count: 106)
!1942 = !DIGlobalVariableExpression(var: !1943, expr: !DIExpression())
!1943 = distinct !DIGlobalVariable(name: "actual_stamp", scope: !2, file: !3, line: 169, type: !7, isLocal: true, isDefinition: true)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(name: "invariants", scope: !2, file: !3, line: 178, type: !1875, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "invariant_table_size", scope: !2, file: !3, line: 146, type: !7, isLocal: true, isDefinition: true)
!1948 = !{i32 2, !"Dwarf Version", i32 4}
!1949 = !{i32 2, !"Debug Info Version", i32 3}
!1950 = !{i32 1, !"wchar_size", i32 4}
!1951 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1952 = distinct !DISubprogram(name: "vprintf", scope: !1953, file: !1953, line: 39, type: !1954, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1964)
!1953 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!607, !1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !612)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1958, file: !3, baseType: !7, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1958, file: !3, baseType: !7, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1958, file: !3, baseType: !611, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1958, file: !3, baseType: !611, size: 64, offset: 128)
!1964 = !{!1965, !1966}
!1965 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1952, file: !1953, line: 39, type: !1956)
!1966 = !DILocalVariable(name: "__arg", arg: 2, scope: !1952, file: !1953, line: 39, type: !1957)
!1967 = !DILocation(line: 0, scope: !1952)
!1968 = !DILocation(line: 41, column: 20, scope: !1952)
!1969 = !DILocation(line: 41, column: 10, scope: !1952)
!1970 = !DILocation(line: 41, column: 3, scope: !1952)
!1971 = distinct !DISubprogram(name: "getchar", scope: !1953, file: !1953, line: 47, type: !1972, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!607}
!1974 = !{}
!1975 = !DILocation(line: 49, column: 16, scope: !1971)
!1976 = !DILocation(line: 49, column: 10, scope: !1971)
!1977 = !DILocation(line: 49, column: 3, scope: !1971)
!1978 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1953, file: !1953, line: 56, type: !1979, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!607, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1983, line: 7, baseType: !1984)
!1983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1985, line: 49, size: 1728, elements: !1986)
!1985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2002, !2004, !2005, !2006, !2009, !2011, !2012, !2013, !2016, !2018, !2021, !2024, !2025, !2026, !2027, !2028}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1984, file: !1985, line: 51, baseType: !607, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1984, file: !1985, line: 54, baseType: !609, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1984, file: !1985, line: 55, baseType: !609, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1984, file: !1985, line: 56, baseType: !609, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1984, file: !1985, line: 57, baseType: !609, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1984, file: !1985, line: 58, baseType: !609, size: 64, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1984, file: !1985, line: 59, baseType: !609, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1984, file: !1985, line: 60, baseType: !609, size: 64, offset: 448)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1984, file: !1985, line: 61, baseType: !609, size: 64, offset: 512)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1984, file: !1985, line: 64, baseType: !609, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1984, file: !1985, line: 65, baseType: !609, size: 64, offset: 640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1984, file: !1985, line: 66, baseType: !609, size: 64, offset: 704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1984, file: !1985, line: 68, baseType: !2000, size: 64, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1985, line: 36, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1984, file: !1985, line: 70, baseType: !2003, size: 64, offset: 832)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1984, file: !1985, line: 72, baseType: !607, size: 32, offset: 896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1984, file: !1985, line: 73, baseType: !607, size: 32, offset: 928)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1984, file: !1985, line: 74, baseType: !2007, size: 64, offset: 960)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2008, line: 152, baseType: !741)
!2008 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1984, file: !1985, line: 77, baseType: !2010, size: 16, offset: 1024)
!2010 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1984, file: !1985, line: 78, baseType: !1507, size: 8, offset: 1040)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1984, file: !1985, line: 79, baseType: !865, size: 8, offset: 1048)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1984, file: !1985, line: 81, baseType: !2014, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1985, line: 43, baseType: null)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1984, file: !1985, line: 89, baseType: !2017, size: 64, offset: 1152)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2008, line: 153, baseType: !741)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1984, file: !1985, line: 91, baseType: !2019, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1985, line: 37, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1984, file: !1985, line: 92, baseType: !2022, size: 64, offset: 1280)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1985, line: 38, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1984, file: !1985, line: 93, baseType: !2003, size: 64, offset: 1344)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1984, file: !1985, line: 94, baseType: !611, size: 64, offset: 1408)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1984, file: !1985, line: 95, baseType: !1126, size: 64, offset: 1472)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1984, file: !1985, line: 96, baseType: !607, size: 32, offset: 1536)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1984, file: !1985, line: 98, baseType: !2029, size: 160, offset: 1568)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 160, elements: !2030)
!2030 = !{!2031}
!2031 = !DISubrange(count: 20)
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "__fp", arg: 1, scope: !1978, file: !1953, line: 56, type: !1981)
!2034 = !DILocation(line: 0, scope: !1978)
!2035 = !DILocation(line: 58, column: 10, scope: !1978)
!2036 = !DILocation(line: 58, column: 3, scope: !1978)
!2037 = distinct !DISubprogram(name: "getc_unlocked", scope: !1953, file: !1953, line: 66, type: !1979, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2038 = !{!2039}
!2039 = !DILocalVariable(name: "__fp", arg: 1, scope: !2037, file: !1953, line: 66, type: !1981)
!2040 = !DILocation(line: 0, scope: !2037)
!2041 = !DILocation(line: 68, column: 10, scope: !2037)
!2042 = !DILocation(line: 68, column: 3, scope: !2037)
!2043 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1953, file: !1953, line: 73, type: !1972, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2044 = !DILocation(line: 75, column: 10, scope: !2043)
!2045 = !DILocation(line: 75, column: 3, scope: !2043)
!2046 = distinct !DISubprogram(name: "putchar", scope: !1953, file: !1953, line: 82, type: !2047, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!607, !607}
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "__c", arg: 1, scope: !2046, file: !1953, line: 82, type: !607)
!2051 = !DILocation(line: 0, scope: !2046)
!2052 = !DILocation(line: 84, column: 21, scope: !2046)
!2053 = !DILocation(line: 84, column: 10, scope: !2046)
!2054 = !DILocation(line: 84, column: 3, scope: !2046)
!2055 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1953, file: !1953, line: 91, type: !2056, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!607, !607, !1981}
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "__c", arg: 1, scope: !2055, file: !1953, line: 91, type: !607)
!2060 = !DILocalVariable(name: "__stream", arg: 2, scope: !2055, file: !1953, line: 91, type: !1981)
!2061 = !DILocation(line: 0, scope: !2055)
!2062 = !DILocation(line: 93, column: 10, scope: !2055)
!2063 = !DILocation(line: 93, column: 3, scope: !2055)
!2064 = distinct !DISubprogram(name: "putc_unlocked", scope: !1953, file: !1953, line: 101, type: !2056, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "__c", arg: 1, scope: !2064, file: !1953, line: 101, type: !607)
!2067 = !DILocalVariable(name: "__stream", arg: 2, scope: !2064, file: !1953, line: 101, type: !1981)
!2068 = !DILocation(line: 0, scope: !2064)
!2069 = !DILocation(line: 103, column: 10, scope: !2064)
!2070 = !DILocation(line: 103, column: 3, scope: !2064)
!2071 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1953, file: !1953, line: 108, type: !2047, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "__c", arg: 1, scope: !2071, file: !1953, line: 108, type: !607)
!2074 = !DILocation(line: 0, scope: !2071)
!2075 = !DILocation(line: 110, column: 10, scope: !2071)
!2076 = !DILocation(line: 110, column: 3, scope: !2071)
!2077 = distinct !DISubprogram(name: "getline", scope: !1953, file: !1953, line: 118, type: !2078, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2080, !608, !2081, !1981}
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2008, line: 193, baseType: !741)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!2082 = !{!2083, !2084, !2085}
!2083 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2077, file: !1953, line: 118, type: !608)
!2084 = !DILocalVariable(name: "__n", arg: 2, scope: !2077, file: !1953, line: 118, type: !2081)
!2085 = !DILocalVariable(name: "__stream", arg: 3, scope: !2077, file: !1953, line: 118, type: !1981)
!2086 = !DILocation(line: 0, scope: !2077)
!2087 = !DILocation(line: 120, column: 10, scope: !2077)
!2088 = !DILocation(line: 120, column: 3, scope: !2077)
!2089 = distinct !DISubprogram(name: "feof_unlocked", scope: !1953, file: !1953, line: 128, type: !1979, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "__stream", arg: 1, scope: !2089, file: !1953, line: 128, type: !1981)
!2092 = !DILocation(line: 0, scope: !2089)
!2093 = !DILocation(line: 130, column: 10, scope: !2089)
!2094 = !DILocation(line: 130, column: 3, scope: !2089)
!2095 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1953, file: !1953, line: 135, type: !1979, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "__stream", arg: 1, scope: !2095, file: !1953, line: 135, type: !1981)
!2098 = !DILocation(line: 0, scope: !2095)
!2099 = !DILocation(line: 137, column: 10, scope: !2095)
!2100 = !DILocation(line: 137, column: 3, scope: !2095)
!2101 = distinct !DISubprogram(name: "tolower", scope: !2102, file: !2102, line: 207, type: !2047, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2103)
!2102 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2103 = !{!2104}
!2104 = !DILocalVariable(name: "__c", arg: 1, scope: !2101, file: !2102, line: 207, type: !607)
!2105 = !DILocation(line: 0, scope: !2101)
!2106 = !DILocation(line: 209, column: 22, scope: !2101)
!2107 = !DILocation(line: 209, column: 39, scope: !2101)
!2108 = !DILocation(line: 209, column: 38, scope: !2101)
!2109 = !DILocation(line: 209, column: 37, scope: !2101)
!2110 = !DILocation(line: 209, column: 10, scope: !2101)
!2111 = !DILocation(line: 209, column: 3, scope: !2101)
!2112 = distinct !DISubprogram(name: "toupper", scope: !2102, file: !2102, line: 213, type: !2047, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "__c", arg: 1, scope: !2112, file: !2102, line: 213, type: !607)
!2115 = !DILocation(line: 0, scope: !2112)
!2116 = !DILocation(line: 215, column: 22, scope: !2112)
!2117 = !DILocation(line: 215, column: 39, scope: !2112)
!2118 = !DILocation(line: 215, column: 38, scope: !2112)
!2119 = !DILocation(line: 215, column: 37, scope: !2112)
!2120 = !DILocation(line: 215, column: 10, scope: !2112)
!2121 = !DILocation(line: 215, column: 3, scope: !2112)
!2122 = distinct !DISubprogram(name: "atoi", scope: !2123, file: !2123, line: 361, type: !2124, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2123 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!607, !612}
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2122, file: !2123, line: 361, type: !612)
!2128 = !DILocation(line: 0, scope: !2122)
!2129 = !DILocation(line: 363, column: 16, scope: !2122)
!2130 = !DILocation(line: 363, column: 10, scope: !2122)
!2131 = !DILocation(line: 363, column: 3, scope: !2122)
!2132 = distinct !DISubprogram(name: "atol", scope: !2123, file: !2123, line: 366, type: !2133, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!741, !612}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2132, file: !2123, line: 366, type: !612)
!2137 = !DILocation(line: 0, scope: !2132)
!2138 = !DILocation(line: 368, column: 10, scope: !2132)
!2139 = !DILocation(line: 368, column: 3, scope: !2132)
!2140 = distinct !DISubprogram(name: "atoll", scope: !2123, file: !2123, line: 373, type: !2141, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!2143, !612}
!2143 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2140, file: !2123, line: 373, type: !612)
!2146 = !DILocation(line: 0, scope: !2140)
!2147 = !DILocation(line: 375, column: 10, scope: !2140)
!2148 = !DILocation(line: 375, column: 3, scope: !2140)
!2149 = distinct !DISubprogram(name: "bsearch", scope: !2150, file: !2150, line: 20, type: !2151, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!611, !1111, !1111, !1126, !1126, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2123, line: 808, baseType: !1115)
!2154 = !{!2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!2155 = !DILocalVariable(name: "__key", arg: 1, scope: !2149, file: !2150, line: 20, type: !1111)
!2156 = !DILocalVariable(name: "__base", arg: 2, scope: !2149, file: !2150, line: 20, type: !1111)
!2157 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2149, file: !2150, line: 20, type: !1126)
!2158 = !DILocalVariable(name: "__size", arg: 4, scope: !2149, file: !2150, line: 20, type: !1126)
!2159 = !DILocalVariable(name: "__compar", arg: 5, scope: !2149, file: !2150, line: 21, type: !2153)
!2160 = !DILocalVariable(name: "__l", scope: !2149, file: !2150, line: 23, type: !1126)
!2161 = !DILocalVariable(name: "__u", scope: !2149, file: !2150, line: 23, type: !1126)
!2162 = !DILocalVariable(name: "__idx", scope: !2149, file: !2150, line: 23, type: !1126)
!2163 = !DILocalVariable(name: "__p", scope: !2149, file: !2150, line: 24, type: !1111)
!2164 = !DILocalVariable(name: "__comparison", scope: !2149, file: !2150, line: 25, type: !607)
!2165 = !DILocation(line: 0, scope: !2149)
!2166 = !DILocation(line: 29, column: 3, scope: !2149)
!2167 = !DILocation(line: 27, column: 7, scope: !2149)
!2168 = !DILocation(line: 29, column: 14, scope: !2149)
!2169 = !DILocation(line: 31, column: 20, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2149, file: !2150, line: 30, column: 5)
!2171 = !DILocation(line: 31, column: 27, scope: !2170)
!2172 = !DILocation(line: 32, column: 56, scope: !2170)
!2173 = !DILocation(line: 32, column: 47, scope: !2170)
!2174 = !DILocation(line: 33, column: 22, scope: !2170)
!2175 = !DILocation(line: 34, column: 24, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2170, file: !2150, line: 34, column: 11)
!2177 = !DILocation(line: 34, column: 11, scope: !2170)
!2178 = !DILocation(line: 36, column: 29, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !2150, line: 36, column: 16)
!2180 = !DILocation(line: 36, column: 16, scope: !2176)
!2181 = !DILocation(line: 37, column: 14, scope: !2179)
!2182 = distinct !{!2182, !2166, !2183}
!2183 = !DILocation(line: 40, column: 5, scope: !2149)
!2184 = !DILocation(line: 43, column: 1, scope: !2149)
!2185 = distinct !DISubprogram(name: "atof", scope: !2186, file: !2186, line: 25, type: !2187, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!2189, !612}
!2189 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2185, file: !2186, line: 25, type: !612)
!2192 = !DILocation(line: 0, scope: !2185)
!2193 = !DILocation(line: 27, column: 10, scope: !2185)
!2194 = !DILocation(line: 27, column: 3, scope: !2185)
!2195 = distinct !DISubprogram(name: "strtoimax", scope: !2196, file: !2196, line: 324, type: !2197, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2196 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !1956, !2202, !607}
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2200, line: 101, baseType: !2201)
!2200 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2008, line: 72, baseType: !741)
!2202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !608)
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "nptr", arg: 1, scope: !2195, file: !2196, line: 324, type: !1956)
!2205 = !DILocalVariable(name: "endptr", arg: 2, scope: !2195, file: !2196, line: 324, type: !2202)
!2206 = !DILocalVariable(name: "base", arg: 3, scope: !2195, file: !2196, line: 324, type: !607)
!2207 = !DILocation(line: 0, scope: !2195)
!2208 = !DILocation(line: 327, column: 10, scope: !2195)
!2209 = !DILocation(line: 327, column: 3, scope: !2195)
!2210 = distinct !DISubprogram(name: "strtoumax", scope: !2196, file: !2196, line: 336, type: !2211, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!2213, !1956, !2202, !607}
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2200, line: 102, baseType: !2214)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2008, line: 73, baseType: !724)
!2215 = !{!2216, !2217, !2218}
!2216 = !DILocalVariable(name: "nptr", arg: 1, scope: !2210, file: !2196, line: 336, type: !1956)
!2217 = !DILocalVariable(name: "endptr", arg: 2, scope: !2210, file: !2196, line: 336, type: !2202)
!2218 = !DILocalVariable(name: "base", arg: 3, scope: !2210, file: !2196, line: 336, type: !607)
!2219 = !DILocation(line: 0, scope: !2210)
!2220 = !DILocation(line: 339, column: 10, scope: !2210)
!2221 = !DILocation(line: 339, column: 3, scope: !2210)
!2222 = distinct !DISubprogram(name: "wcstoimax", scope: !2196, file: !2196, line: 348, type: !2223, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2199, !2225, !2229, !607}
!2225 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2226)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2228)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2196, line: 34, baseType: !607)
!2229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "nptr", arg: 1, scope: !2222, file: !2196, line: 348, type: !2225)
!2234 = !DILocalVariable(name: "endptr", arg: 2, scope: !2222, file: !2196, line: 348, type: !2229)
!2235 = !DILocalVariable(name: "base", arg: 3, scope: !2222, file: !2196, line: 348, type: !607)
!2236 = !DILocation(line: 0, scope: !2222)
!2237 = !DILocation(line: 351, column: 10, scope: !2222)
!2238 = !DILocation(line: 351, column: 3, scope: !2222)
!2239 = distinct !DISubprogram(name: "wcstoumax", scope: !2196, file: !2196, line: 362, type: !2240, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2213, !2225, !2229, !607}
!2242 = !{!2243, !2244, !2245}
!2243 = !DILocalVariable(name: "nptr", arg: 1, scope: !2239, file: !2196, line: 362, type: !2225)
!2244 = !DILocalVariable(name: "endptr", arg: 2, scope: !2239, file: !2196, line: 362, type: !2229)
!2245 = !DILocalVariable(name: "base", arg: 3, scope: !2239, file: !2196, line: 362, type: !607)
!2246 = !DILocation(line: 0, scope: !2239)
!2247 = !DILocation(line: 365, column: 10, scope: !2239)
!2248 = !DILocation(line: 365, column: 3, scope: !2239)
!2249 = distinct !DISubprogram(name: "stat", scope: !2250, file: !2250, line: 453, type: !2251, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!607, !612, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2255, line: 46, size: 1152, elements: !2256)
!2255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2256 = !{!2257, !2259, !2261, !2263, !2265, !2267, !2269, !2270, !2271, !2272, !2274, !2276, !2284, !2285, !2286}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2254, file: !2255, line: 48, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2008, line: 145, baseType: !724)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2254, file: !2255, line: 53, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2008, line: 148, baseType: !724)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2254, file: !2255, line: 61, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2008, line: 151, baseType: !724)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2254, file: !2255, line: 62, baseType: !2264, size: 32, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2008, line: 150, baseType: !7)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2254, file: !2255, line: 64, baseType: !2266, size: 32, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2008, line: 146, baseType: !7)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2254, file: !2255, line: 65, baseType: !2268, size: 32, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2008, line: 147, baseType: !7)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2254, file: !2255, line: 67, baseType: !607, size: 32, offset: 288)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2254, file: !2255, line: 69, baseType: !2258, size: 64, offset: 320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2254, file: !2255, line: 74, baseType: !2007, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2254, file: !2255, line: 78, baseType: !2273, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2008, line: 174, baseType: !741)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2254, file: !2255, line: 80, baseType: !2275, size: 64, offset: 512)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2008, line: 179, baseType: !741)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2254, file: !2255, line: 91, baseType: !2277, size: 128, offset: 576)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2278, line: 10, size: 128, elements: !2279)
!2278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2279 = !{!2280, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2277, file: !2278, line: 12, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2008, line: 160, baseType: !741)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2277, file: !2278, line: 16, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2008, line: 196, baseType: !741)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2254, file: !2255, line: 92, baseType: !2277, size: 128, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2254, file: !2255, line: 93, baseType: !2277, size: 128, offset: 832)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2254, file: !2255, line: 106, baseType: !2287, size: 192, offset: 960)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 192, elements: !841)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "__path", arg: 1, scope: !2249, file: !2250, line: 453, type: !612)
!2290 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2249, file: !2250, line: 453, type: !2253)
!2291 = !DILocation(line: 0, scope: !2249)
!2292 = !DILocation(line: 455, column: 10, scope: !2249)
!2293 = !DILocation(line: 455, column: 3, scope: !2249)
!2294 = distinct !DISubprogram(name: "lstat", scope: !2250, file: !2250, line: 460, type: !2251, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "__path", arg: 1, scope: !2294, file: !2250, line: 460, type: !612)
!2297 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2294, file: !2250, line: 460, type: !2253)
!2298 = !DILocation(line: 0, scope: !2294)
!2299 = !DILocation(line: 462, column: 10, scope: !2294)
!2300 = !DILocation(line: 462, column: 3, scope: !2294)
!2301 = distinct !DISubprogram(name: "fstat", scope: !2250, file: !2250, line: 467, type: !2302, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!607, !607, !2253}
!2304 = !{!2305, !2306}
!2305 = !DILocalVariable(name: "__fd", arg: 1, scope: !2301, file: !2250, line: 467, type: !607)
!2306 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2301, file: !2250, line: 467, type: !2253)
!2307 = !DILocation(line: 0, scope: !2301)
!2308 = !DILocation(line: 469, column: 10, scope: !2301)
!2309 = !DILocation(line: 469, column: 3, scope: !2301)
!2310 = distinct !DISubprogram(name: "fstatat", scope: !2250, file: !2250, line: 474, type: !2311, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!607, !607, !612, !2253, !607}
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DILocalVariable(name: "__fd", arg: 1, scope: !2310, file: !2250, line: 474, type: !607)
!2315 = !DILocalVariable(name: "__filename", arg: 2, scope: !2310, file: !2250, line: 474, type: !612)
!2316 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2310, file: !2250, line: 474, type: !2253)
!2317 = !DILocalVariable(name: "__flag", arg: 4, scope: !2310, file: !2250, line: 474, type: !607)
!2318 = !DILocation(line: 0, scope: !2310)
!2319 = !DILocation(line: 477, column: 10, scope: !2310)
!2320 = !DILocation(line: 477, column: 3, scope: !2310)
!2321 = distinct !DISubprogram(name: "mknod", scope: !2250, file: !2250, line: 483, type: !2322, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!607, !612, !2264, !2258}
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "__path", arg: 1, scope: !2321, file: !2250, line: 483, type: !612)
!2326 = !DILocalVariable(name: "__mode", arg: 2, scope: !2321, file: !2250, line: 483, type: !2264)
!2327 = !DILocalVariable(name: "__dev", arg: 3, scope: !2321, file: !2250, line: 483, type: !2258)
!2328 = !DILocation(line: 0, scope: !2321)
!2329 = !DILocation(line: 485, column: 10, scope: !2321)
!2330 = !DILocation(line: 485, column: 3, scope: !2321)
!2331 = distinct !DISubprogram(name: "mknodat", scope: !2250, file: !2250, line: 491, type: !2332, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!607, !607, !612, !2264, !2258}
!2334 = !{!2335, !2336, !2337, !2338}
!2335 = !DILocalVariable(name: "__fd", arg: 1, scope: !2331, file: !2250, line: 491, type: !607)
!2336 = !DILocalVariable(name: "__path", arg: 2, scope: !2331, file: !2250, line: 491, type: !612)
!2337 = !DILocalVariable(name: "__mode", arg: 3, scope: !2331, file: !2250, line: 491, type: !2264)
!2338 = !DILocalVariable(name: "__dev", arg: 4, scope: !2331, file: !2250, line: 491, type: !2258)
!2339 = !DILocation(line: 0, scope: !2331)
!2340 = !DILocation(line: 494, column: 10, scope: !2331)
!2341 = !DILocation(line: 494, column: 3, scope: !2331)
!2342 = distinct !DISubprogram(name: "stat64", scope: !2250, file: !2250, line: 502, type: !2343, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2365)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!607, !612, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2255, line: 119, size: 1152, elements: !2347)
!2347 = !{!2348, !2349, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2361, !2362, !2363, !2364}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2346, file: !2255, line: 121, baseType: !2258, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2346, file: !2255, line: 123, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2008, line: 149, baseType: !724)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2346, file: !2255, line: 124, baseType: !2262, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2346, file: !2255, line: 125, baseType: !2264, size: 32, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2346, file: !2255, line: 132, baseType: !2266, size: 32, offset: 224)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2346, file: !2255, line: 133, baseType: !2268, size: 32, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2346, file: !2255, line: 135, baseType: !607, size: 32, offset: 288)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2346, file: !2255, line: 136, baseType: !2258, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2346, file: !2255, line: 137, baseType: !2007, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2346, file: !2255, line: 143, baseType: !2273, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2346, file: !2255, line: 144, baseType: !2360, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2008, line: 180, baseType: !741)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2346, file: !2255, line: 152, baseType: !2277, size: 128, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2346, file: !2255, line: 153, baseType: !2277, size: 128, offset: 704)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2346, file: !2255, line: 154, baseType: !2277, size: 128, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2346, file: !2255, line: 164, baseType: !2287, size: 192, offset: 960)
!2365 = !{!2366, !2367}
!2366 = !DILocalVariable(name: "__path", arg: 1, scope: !2342, file: !2250, line: 502, type: !612)
!2367 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2342, file: !2250, line: 502, type: !2345)
!2368 = !DILocation(line: 0, scope: !2342)
!2369 = !DILocation(line: 504, column: 10, scope: !2342)
!2370 = !DILocation(line: 504, column: 3, scope: !2342)
!2371 = distinct !DISubprogram(name: "lstat64", scope: !2250, file: !2250, line: 509, type: !2343, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2372 = !{!2373, !2374}
!2373 = !DILocalVariable(name: "__path", arg: 1, scope: !2371, file: !2250, line: 509, type: !612)
!2374 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2371, file: !2250, line: 509, type: !2345)
!2375 = !DILocation(line: 0, scope: !2371)
!2376 = !DILocation(line: 511, column: 10, scope: !2371)
!2377 = !DILocation(line: 511, column: 3, scope: !2371)
!2378 = distinct !DISubprogram(name: "fstat64", scope: !2250, file: !2250, line: 516, type: !2379, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!607, !607, !2345}
!2381 = !{!2382, !2383}
!2382 = !DILocalVariable(name: "__fd", arg: 1, scope: !2378, file: !2250, line: 516, type: !607)
!2383 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2378, file: !2250, line: 516, type: !2345)
!2384 = !DILocation(line: 0, scope: !2378)
!2385 = !DILocation(line: 518, column: 10, scope: !2378)
!2386 = !DILocation(line: 518, column: 3, scope: !2378)
!2387 = distinct !DISubprogram(name: "fstatat64", scope: !2250, file: !2250, line: 523, type: !2388, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!607, !607, !612, !2345, !607}
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DILocalVariable(name: "__fd", arg: 1, scope: !2387, file: !2250, line: 523, type: !607)
!2392 = !DILocalVariable(name: "__filename", arg: 2, scope: !2387, file: !2250, line: 523, type: !612)
!2393 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2387, file: !2250, line: 523, type: !2345)
!2394 = !DILocalVariable(name: "__flag", arg: 4, scope: !2387, file: !2250, line: 523, type: !607)
!2395 = !DILocation(line: 0, scope: !2387)
!2396 = !DILocation(line: 526, column: 10, scope: !2387)
!2397 = !DILocation(line: 526, column: 3, scope: !2387)
!2398 = distinct !DISubprogram(name: "move_loop_invariants", scope: !3, file: !3, line: 1886, type: !2399, scopeLine: 1887, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null}
!2401 = !{!2402, !2403}
!2402 = !DILocalVariable(name: "loop", scope: !2398, file: !3, line: 1888, type: !618)
!2403 = !DILocalVariable(name: "li", scope: !2398, file: !3, line: 1889, type: !2404)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !385, line: 515, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 508, size: 128, elements: !2406)
!2406 = !{!2407, !2408}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2405, file: !385, line: 511, baseType: !1863, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2405, file: !385, line: 514, baseType: !7, size: 32, offset: 64)
!2409 = !DILocation(line: 1888, column: 3, scope: !2398)
!2410 = !DILocation(line: 1889, column: 3, scope: !2398)
!2411 = !DILocation(line: 1891, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1891, column: 7)
!2413 = !DILocation(line: 1891, column: 7, scope: !2398)
!2414 = !DILocation(line: 1893, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1892, column: 5)
!2416 = !DILocation(line: 1894, column: 31, scope: !2415)
!2417 = !DILocation(line: 1894, column: 7, scope: !2415)
!2418 = !DILocation(line: 1895, column: 7, scope: !2415)
!2419 = !DILocation(line: 1896, column: 5, scope: !2415)
!2420 = !DILocation(line: 1897, column: 3, scope: !2398)
!2421 = !DILocation(line: 0, scope: !2398)
!2422 = !DILocation(line: 1899, column: 3, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1899, column: 3)
!2424 = !DILocation(line: 1899, column: 3, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 1899, column: 3)
!2426 = !DILocation(line: 1901, column: 17, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1900, column: 5)
!2428 = !DILocation(line: 1904, column: 17, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 1904, column: 11)
!2430 = !DILocation(line: 1904, column: 41, scope: !2429)
!2431 = !DILocation(line: 1904, column: 27, scope: !2429)
!2432 = !DILocation(line: 1904, column: 11, scope: !2427)
!2433 = !DILocation(line: 1905, column: 2, scope: !2429)
!2434 = distinct !{!2434, !2422, !2435}
!2435 = !DILocation(line: 1906, column: 5, scope: !2423)
!2436 = !DILocation(line: 1908, column: 3, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1908, column: 3)
!2438 = !DILocation(line: 1908, column: 3, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1908, column: 3)
!2440 = !DILocation(line: 1910, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1909, column: 5)
!2442 = distinct !{!2442, !2436, !2443}
!2443 = !DILocation(line: 1911, column: 5, scope: !2437)
!2444 = !DILocation(line: 1913, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1913, column: 7)
!2446 = !DILocation(line: 1913, column: 7, scope: !2398)
!2447 = !DILocation(line: 1916, column: 5, scope: !2445)
!2448 = !DILocation(line: 1917, column: 9, scope: !2398)
!2449 = !DILocation(line: 1917, column: 3, scope: !2398)
!2450 = !DILocation(line: 1918, column: 19, scope: !2398)
!2451 = !DILocation(line: 1919, column: 24, scope: !2398)
!2452 = !DILocation(line: 1924, column: 1, scope: !2398)
!2453 = distinct !DISubprogram(name: "calculate_loop_reg_pressure", scope: !3, file: !3, line: 1763, type: !2399, scopeLine: 1764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2454 = !{!2455, !2456, !2457, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2479, !2488, !2489}
!2455 = !DILocalVariable(name: "i", scope: !2453, file: !3, line: 1765, type: !607)
!2456 = !DILocalVariable(name: "j", scope: !2453, file: !3, line: 1766, type: !7)
!2457 = !DILocalVariable(name: "bi", scope: !2453, file: !3, line: 1767, type: !2458)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !710, line: 218, baseType: !2459)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 203, size: 256, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2464}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2459, file: !710, line: 206, baseType: !713, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2459, file: !710, line: 209, baseType: !713, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2459, file: !710, line: 212, baseType: !7, size: 32, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2459, file: !710, line: 217, baseType: !723, size: 64, offset: 192)
!2465 = !DILocalVariable(name: "bb", scope: !2453, file: !3, line: 1768, type: !1188)
!2466 = !DILocalVariable(name: "insn", scope: !2453, file: !3, line: 1769, type: !655)
!2467 = !DILocalVariable(name: "link", scope: !2453, file: !3, line: 1769, type: !655)
!2468 = !DILocalVariable(name: "loop", scope: !2453, file: !3, line: 1770, type: !618)
!2469 = !DILocalVariable(name: "parent", scope: !2453, file: !3, line: 1770, type: !618)
!2470 = !DILocalVariable(name: "li", scope: !2453, file: !3, line: 1771, type: !2404)
!2471 = !DILocalVariable(name: "note", scope: !2472, file: !3, line: 1828, type: !655)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1827, column: 6)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1800, column: 2)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1799, column: 7)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1799, column: 7)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1783, column: 5)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1782, column: 3)
!2478 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1782, column: 3)
!2479 = !DILocalVariable(name: "cover_class", scope: !2480, file: !3, line: 1845, type: !574)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1844, column: 6)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1843, column: 8)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1842, column: 2)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1842, column: 2)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1841, column: 7)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1840, column: 5)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 1840, column: 5)
!2487 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1838, column: 7)
!2488 = !DILocalVariable(name: "nregs", scope: !2480, file: !3, line: 1846, type: !607)
!2489 = !DILocalVariable(name: "cover_class", scope: !2490, file: !3, line: 1869, type: !574)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1868, column: 2)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 1867, column: 7)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1867, column: 7)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1855, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1854, column: 3)
!2495 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1854, column: 3)
!2496 = !DILocation(line: 1766, column: 3, scope: !2453)
!2497 = !DILocation(line: 1767, column: 3, scope: !2453)
!2498 = !DILocation(line: 1770, column: 3, scope: !2453)
!2499 = !DILocation(line: 1771, column: 3, scope: !2453)
!2500 = !DILocation(line: 0, scope: !2453)
!2501 = !DILocation(line: 1773, column: 3, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1773, column: 3)
!2503 = !DILocation(line: 1773, column: 3, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1773, column: 3)
!2505 = !DILocation(line: 1774, column: 15, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1774, column: 9)
!2507 = !DILocation(line: 1774, column: 19, scope: !2506)
!2508 = !DILocation(line: 1774, column: 9, scope: !2504)
!2509 = !DILocation(line: 1776, column: 14, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1775, column: 7)
!2511 = !DILocation(line: 1776, column: 2, scope: !2510)
!2512 = !DILocation(line: 1776, column: 8, scope: !2510)
!2513 = !DILocation(line: 1776, column: 12, scope: !2510)
!2514 = !DILocation(line: 1777, column: 2, scope: !2510)
!2515 = !DILocation(line: 1778, column: 2, scope: !2510)
!2516 = !DILocation(line: 1779, column: 7, scope: !2510)
!2517 = distinct !{!2517, !2501, !2518}
!2518 = !DILocation(line: 1779, column: 7, scope: !2502)
!2519 = !DILocation(line: 1780, column: 3, scope: !2453)
!2520 = !DILocation(line: 1781, column: 3, scope: !2453)
!2521 = !DILocation(line: 1782, column: 3, scope: !2478)
!2522 = !DILocation(line: 0, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1788, column: 7)
!2524 = !DILocation(line: 1782, column: 3, scope: !2477)
!2525 = !DILocation(line: 0, scope: !2478)
!2526 = !DILocation(line: 1784, column: 23, scope: !2476)
!2527 = !DILocation(line: 1784, column: 17, scope: !2476)
!2528 = !DILocation(line: 1785, column: 11, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1785, column: 11)
!2530 = !DILocation(line: 1785, column: 24, scope: !2529)
!2531 = !DILocation(line: 1785, column: 39, scope: !2529)
!2532 = !DILocation(line: 1785, column: 21, scope: !2529)
!2533 = !DILocation(line: 1785, column: 11, scope: !2476)
!2534 = !DILocation(line: 1788, column: 17, scope: !2523)
!2535 = !DILocation(line: 0, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1788, column: 7)
!2537 = !DILocation(line: 1788, column: 12, scope: !2523)
!2538 = !DILocation(line: 1789, column: 28, scope: !2536)
!2539 = !DILocation(line: 1789, column: 5, scope: !2536)
!2540 = !DILocation(line: 1789, column: 10, scope: !2536)
!2541 = !DILocation(line: 1788, column: 7, scope: !2523)
!2542 = !DILocation(line: 1791, column: 20, scope: !2536)
!2543 = !DILocation(line: 1791, column: 38, scope: !2536)
!2544 = !DILocation(line: 1791, column: 49, scope: !2536)
!2545 = !DILocation(line: 1791, column: 2, scope: !2536)
!2546 = !DILocation(line: 1790, column: 24, scope: !2536)
!2547 = !DILocation(line: 1790, column: 12, scope: !2536)
!2548 = !DILocation(line: 1790, column: 10, scope: !2536)
!2549 = !DILocation(line: 1789, column: 13, scope: !2536)
!2550 = !DILocation(line: 1788, column: 7, scope: !2536)
!2551 = distinct !{!2551, !2541, !2552}
!2552 = !DILocation(line: 1791, column: 62, scope: !2523)
!2553 = !DILocation(line: 1793, column: 37, scope: !2476)
!2554 = !DILocation(line: 1793, column: 7, scope: !2476)
!2555 = !DILocation(line: 0, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1794, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1794, column: 7)
!2558 = !DILocation(line: 1794, column: 12, scope: !2557)
!2559 = !DILocation(line: 0, scope: !2557)
!2560 = !DILocation(line: 1794, column: 21, scope: !2556)
!2561 = !DILocation(line: 1794, column: 7, scope: !2557)
!2562 = !DILocation(line: 1795, column: 20, scope: !2556)
!2563 = !DILocation(line: 1795, column: 2, scope: !2556)
!2564 = !DILocation(line: 1795, column: 44, scope: !2556)
!2565 = !DILocation(line: 1794, column: 50, scope: !2556)
!2566 = !DILocation(line: 1794, column: 7, scope: !2556)
!2567 = distinct !{!2567, !2561, !2568}
!2568 = !DILocation(line: 1795, column: 46, scope: !2557)
!2569 = !DILocation(line: 1796, column: 7, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1796, column: 7)
!2571 = !DILocation(line: 1796, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1796, column: 7)
!2573 = !DILocation(line: 1797, column: 19, scope: !2572)
!2574 = !DILocation(line: 1797, column: 2, scope: !2572)
!2575 = distinct !{!2575, !2569, !2576}
!2576 = !DILocation(line: 1797, column: 26, scope: !2570)
!2577 = !DILocation(line: 1799, column: 7, scope: !2475)
!2578 = !DILocation(line: 0, scope: !2475)
!2579 = !DILocation(line: 1799, column: 7, scope: !2474)
!2580 = !DILocation(line: 1801, column: 10, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1801, column: 8)
!2582 = !DILocation(line: 1801, column: 8, scope: !2473)
!2583 = !DILocation(line: 1804, column: 19, scope: !2473)
!2584 = !DILocation(line: 1804, column: 4, scope: !2473)
!2585 = !DILocation(line: 1805, column: 15, scope: !2473)
!2586 = !DILocation(line: 1806, column: 17, scope: !2473)
!2587 = !DILocation(line: 1806, column: 4, scope: !2473)
!2588 = !DILocation(line: 1810, column: 16, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1810, column: 4)
!2590 = !DILocation(line: 1810, column: 9, scope: !2589)
!2591 = !DILocation(line: 0, scope: !2589)
!2592 = !DILocation(line: 1810, column: 4, scope: !2589)
!2593 = !DILocation(line: 1811, column: 10, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1811, column: 10)
!2595 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1810, column: 4)
!2596 = !DILocation(line: 1811, column: 31, scope: !2594)
!2597 = !DILocation(line: 1811, column: 10, scope: !2595)
!2598 = !DILocation(line: 1812, column: 24, scope: !2594)
!2599 = !DILocation(line: 1812, column: 8, scope: !2594)
!2600 = !DILocation(line: 1810, column: 47, scope: !2595)
!2601 = !DILocation(line: 1810, column: 4, scope: !2595)
!2602 = distinct !{!2602, !2592, !2603}
!2603 = !DILocation(line: 1812, column: 38, scope: !2589)
!2604 = !DILocation(line: 1819, column: 17, scope: !2473)
!2605 = !DILocation(line: 1819, column: 4, scope: !2473)
!2606 = !DILocation(line: 1826, column: 4, scope: !2473)
!2607 = !DILocation(line: 1826, column: 21, scope: !2473)
!2608 = !DILocation(line: 1826, column: 24, scope: !2473)
!2609 = !DILocation(line: 1829, column: 8, scope: !2472)
!2610 = !DILocation(line: 1828, column: 19, scope: !2472)
!2611 = !DILocation(line: 0, scope: !2472)
!2612 = !DILocation(line: 1830, column: 14, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1830, column: 12)
!2614 = !DILocation(line: 1830, column: 12, scope: !2472)
!2615 = distinct !{!2615, !2606, !2616}
!2616 = !DILocation(line: 1834, column: 6, scope: !2473)
!2617 = !DILocation(line: 1833, column: 24, scope: !2472)
!2618 = !DILocation(line: 1833, column: 8, scope: !2472)
!2619 = distinct !{!2619, !2577, !2620}
!2620 = !DILocation(line: 1835, column: 2, scope: !2475)
!2621 = !DILocation(line: 0, scope: !2477)
!2622 = distinct !{!2622, !2521, !2623}
!2623 = !DILocation(line: 1836, column: 5, scope: !2478)
!2624 = !DILocation(line: 1837, column: 3, scope: !2453)
!2625 = !DILocation(line: 1838, column: 7, scope: !2487)
!2626 = !DILocation(line: 1839, column: 7, scope: !2487)
!2627 = !DILocation(line: 1840, column: 5, scope: !2486)
!2628 = !DILocation(line: 0, scope: !2480)
!2629 = !DILocation(line: 1840, column: 5, scope: !2485)
!2630 = !DILocation(line: 1842, column: 2, scope: !2483)
!2631 = !DILocation(line: 1842, column: 2, scope: !2482)
!2632 = !DILocation(line: 1843, column: 25, scope: !2481)
!2633 = !DILocation(line: 1843, column: 43, scope: !2481)
!2634 = !DILocation(line: 1843, column: 53, scope: !2481)
!2635 = !DILocation(line: 1843, column: 10, scope: !2481)
!2636 = !DILocation(line: 1843, column: 8, scope: !2482)
!2637 = !DILocation(line: 1846, column: 8, scope: !2480)
!2638 = !DILocation(line: 1848, column: 45, scope: !2480)
!2639 = !DILocation(line: 1848, column: 22, scope: !2480)
!2640 = !DILocation(line: 1849, column: 59, scope: !2480)
!2641 = !DILocation(line: 1849, column: 8, scope: !2480)
!2642 = !DILocation(line: 1849, column: 56, scope: !2480)
!2643 = !DILocation(line: 1850, column: 6, scope: !2481)
!2644 = !DILocation(line: 1850, column: 6, scope: !2480)
!2645 = distinct !{!2645, !2630, !2646}
!2646 = !DILocation(line: 1850, column: 6, scope: !2483)
!2647 = distinct !{!2647, !2627, !2648}
!2648 = !DILocation(line: 1851, column: 7, scope: !2486)
!2649 = !DILocation(line: 1852, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1852, column: 7)
!2651 = !DILocation(line: 1852, column: 17, scope: !2650)
!2652 = !DILocation(line: 1852, column: 7, scope: !2453)
!2653 = !DILocation(line: 1854, column: 3, scope: !2495)
!2654 = !DILocation(line: 1854, column: 3, scope: !2494)
!2655 = !DILocation(line: 1856, column: 16, scope: !2493)
!2656 = !DILocation(line: 1857, column: 16, scope: !2493)
!2657 = !DILocation(line: 1858, column: 9, scope: !2493)
!2658 = !DILocation(line: 1858, column: 15, scope: !2493)
!2659 = !DILocation(line: 1858, column: 28, scope: !2493)
!2660 = !DILocation(line: 1858, column: 21, scope: !2493)
!2661 = !DILocation(line: 1858, column: 51, scope: !2493)
!2662 = !DILocation(line: 1859, column: 15, scope: !2493)
!2663 = !DILocation(line: 1859, column: 23, scope: !2493)
!2664 = !DILocation(line: 1859, column: 30, scope: !2493)
!2665 = !DILocation(line: 1857, column: 7, scope: !2493)
!2666 = !DILocation(line: 1860, column: 16, scope: !2493)
!2667 = !DILocation(line: 1860, column: 7, scope: !2493)
!2668 = !DILocation(line: 1861, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1861, column: 7)
!2670 = !DILocation(line: 1861, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1861, column: 7)
!2672 = !DILocation(line: 0, scope: !2493)
!2673 = !DILocation(line: 1862, column: 29, scope: !2671)
!2674 = !DILocation(line: 1862, column: 2, scope: !2671)
!2675 = distinct !{!2675, !2668, !2676}
!2676 = !DILocation(line: 1862, column: 30, scope: !2669)
!2677 = !DILocation(line: 1863, column: 7, scope: !2493)
!2678 = !DILocation(line: 1864, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1864, column: 7)
!2680 = !DILocation(line: 1864, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 1864, column: 7)
!2682 = !DILocation(line: 1865, column: 29, scope: !2681)
!2683 = !DILocation(line: 1865, column: 2, scope: !2681)
!2684 = distinct !{!2684, !2678, !2685}
!2685 = !DILocation(line: 1865, column: 30, scope: !2679)
!2686 = !DILocation(line: 1866, column: 7, scope: !2493)
!2687 = !DILocation(line: 1867, column: 12, scope: !2492)
!2688 = !DILocation(line: 0, scope: !2492)
!2689 = !DILocation(line: 1867, column: 29, scope: !2491)
!2690 = !DILocation(line: 1867, column: 27, scope: !2491)
!2691 = !DILocation(line: 1867, column: 7, scope: !2492)
!2692 = !DILocation(line: 1871, column: 18, scope: !2490)
!2693 = !DILocation(line: 0, scope: !2490)
!2694 = !DILocation(line: 1872, column: 8, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1872, column: 8)
!2696 = !DILocation(line: 1872, column: 56, scope: !2695)
!2697 = !DILocation(line: 1872, column: 8, scope: !2490)
!2698 = !DILocation(line: 1874, column: 13, scope: !2490)
!2699 = !DILocation(line: 1874, column: 34, scope: !2490)
!2700 = !DILocation(line: 1874, column: 4, scope: !2490)
!2701 = !DILocation(line: 1876, column: 2, scope: !2491)
!2702 = !DILocation(line: 1867, column: 56, scope: !2491)
!2703 = !DILocation(line: 1867, column: 7, scope: !2491)
!2704 = distinct !{!2704, !2691, !2705}
!2705 = !DILocation(line: 1876, column: 2, scope: !2492)
!2706 = !DILocation(line: 1877, column: 16, scope: !2493)
!2707 = !DILocation(line: 1877, column: 7, scope: !2493)
!2708 = distinct !{!2708, !2653, !2709}
!2709 = !DILocation(line: 1878, column: 5, scope: !2495)
!2710 = !DILocation(line: 1879, column: 1, scope: !2453)
!2711 = distinct !DISubprogram(name: "fel_init", scope: !385, file: !385, line: 535, type: !2712, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2716)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !2714, !2715, !7}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722}
!2717 = !DILocalVariable(name: "li", arg: 1, scope: !2711, file: !385, line: 535, type: !2714)
!2718 = !DILocalVariable(name: "loop", arg: 2, scope: !2711, file: !385, line: 535, type: !2715)
!2719 = !DILocalVariable(name: "flags", arg: 3, scope: !2711, file: !385, line: 535, type: !7)
!2720 = !DILocalVariable(name: "aloop", scope: !2711, file: !385, line: 537, type: !618)
!2721 = !DILocalVariable(name: "i", scope: !2711, file: !385, line: 538, type: !7)
!2722 = !DILocalVariable(name: "mn", scope: !2711, file: !385, line: 539, type: !607)
!2723 = !DILocation(line: 0, scope: !2711)
!2724 = !DILocation(line: 537, column: 3, scope: !2711)
!2725 = !DILocation(line: 541, column: 7, scope: !2711)
!2726 = !DILocation(line: 541, column: 11, scope: !2711)
!2727 = !DILocation(line: 542, column: 8, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2711, file: !385, line: 542, column: 7)
!2729 = !DILocation(line: 542, column: 7, scope: !2711)
!2730 = !DILocation(line: 544, column: 11, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !385, line: 543, column: 5)
!2732 = !DILocation(line: 544, column: 20, scope: !2731)
!2733 = !DILocation(line: 545, column: 13, scope: !2731)
!2734 = !DILocation(line: 546, column: 7, scope: !2731)
!2735 = !DILocation(line: 549, column: 18, scope: !2711)
!2736 = !DILocation(line: 549, column: 7, scope: !2711)
!2737 = !DILocation(line: 549, column: 16, scope: !2711)
!2738 = !DILocation(line: 550, column: 15, scope: !2711)
!2739 = !DILocation(line: 550, column: 8, scope: !2711)
!2740 = !DILocation(line: 552, column: 13, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2711, file: !385, line: 552, column: 7)
!2742 = !DILocation(line: 552, column: 7, scope: !2711)
!2743 = !DILocation(line: 554, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !385, line: 554, column: 7)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !385, line: 553, column: 5)
!2746 = !DILocation(line: 0, scope: !2744)
!2747 = !DILocation(line: 554, column: 19, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !385, line: 554, column: 7)
!2749 = !DILocation(line: 555, column: 6, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2748, file: !385, line: 555, column: 6)
!2751 = !DILocation(line: 555, column: 12, scope: !2750)
!2752 = !DILocation(line: 556, column: 6, scope: !2750)
!2753 = !DILocation(line: 556, column: 16, scope: !2750)
!2754 = !DILocation(line: 556, column: 22, scope: !2750)
!2755 = !DILocation(line: 557, column: 6, scope: !2750)
!2756 = !DILocation(line: 557, column: 16, scope: !2750)
!2757 = !DILocation(line: 557, column: 20, scope: !2750)
!2758 = !DILocation(line: 555, column: 6, scope: !2748)
!2759 = !DILocation(line: 558, column: 4, scope: !2750)
!2760 = !DILocation(line: 554, column: 75, scope: !2748)
!2761 = !DILocation(line: 554, column: 7, scope: !2748)
!2762 = distinct !{!2762, !2743, !2763}
!2763 = !DILocation(line: 558, column: 4, scope: !2744)
!2764 = !DILocation(line: 560, column: 18, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2741, file: !385, line: 560, column: 12)
!2766 = !DILocation(line: 0, scope: !2765)
!2767 = !DILocation(line: 560, column: 12, scope: !2741)
!2768 = !DILocation(line: 563, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !385, line: 563, column: 7)
!2770 = distinct !DILexicalBlock(scope: !2765, file: !385, line: 561, column: 5)
!2771 = !DILocation(line: 590, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2765, file: !385, line: 587, column: 5)
!2773 = !DILocation(line: 564, column: 5, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2769, file: !385, line: 563, column: 7)
!2775 = !DILocation(line: 564, column: 12, scope: !2774)
!2776 = !DILocation(line: 564, column: 18, scope: !2774)
!2777 = !DILocation(line: 568, column: 7, scope: !2770)
!2778 = !DILocation(line: 565, column: 20, scope: !2774)
!2779 = !DILocation(line: 565, column: 11, scope: !2774)
!2780 = !DILocation(line: 563, column: 7, scope: !2774)
!2781 = distinct !{!2781, !2768, !2782}
!2782 = !DILocation(line: 566, column: 2, scope: !2769)
!2783 = !DILocation(line: 570, column: 8, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !385, line: 570, column: 8)
!2785 = distinct !DILexicalBlock(scope: !2770, file: !385, line: 569, column: 2)
!2786 = !DILocation(line: 570, column: 15, scope: !2784)
!2787 = !DILocation(line: 570, column: 19, scope: !2784)
!2788 = !DILocation(line: 570, column: 8, scope: !2785)
!2789 = !DILocation(line: 571, column: 6, scope: !2784)
!2790 = !DILocation(line: 573, column: 15, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2785, file: !385, line: 573, column: 8)
!2792 = !DILocation(line: 573, column: 8, scope: !2791)
!2793 = !DILocation(line: 573, column: 8, scope: !2785)
!2794 = !DILocation(line: 575, column: 19, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !385, line: 575, column: 8)
!2796 = distinct !DILexicalBlock(scope: !2791, file: !385, line: 574, column: 6)
!2797 = !DILocation(line: 575, column: 13, scope: !2795)
!2798 = !DILocation(line: 576, column: 6, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !385, line: 575, column: 8)
!2800 = !DILocation(line: 576, column: 13, scope: !2799)
!2801 = !DILocation(line: 576, column: 19, scope: !2799)
!2802 = !DILocation(line: 575, column: 8, scope: !2795)
!2803 = !DILocation(line: 577, column: 21, scope: !2799)
!2804 = !DILocation(line: 577, column: 12, scope: !2799)
!2805 = !DILocation(line: 575, column: 8, scope: !2799)
!2806 = distinct !{!2806, !2802, !2807}
!2807 = !DILocation(line: 578, column: 3, scope: !2795)
!2808 = !DILocation(line: 580, column: 14, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2791, file: !385, line: 580, column: 13)
!2810 = !DILocation(line: 580, column: 13, scope: !2791)
!2811 = !DILocation(line: 583, column: 14, scope: !2809)
!2812 = !DILocation(line: 583, column: 12, scope: !2809)
!2813 = distinct !{!2813, !2777, !2814}
!2814 = !DILocation(line: 584, column: 2, scope: !2770)
!2815 = !DILocation(line: 592, column: 8, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !385, line: 592, column: 8)
!2817 = distinct !DILexicalBlock(scope: !2772, file: !385, line: 591, column: 2)
!2818 = !DILocation(line: 592, column: 15, scope: !2816)
!2819 = !DILocation(line: 592, column: 19, scope: !2816)
!2820 = !DILocation(line: 592, column: 8, scope: !2817)
!2821 = !DILocation(line: 593, column: 6, scope: !2816)
!2822 = !DILocation(line: 595, column: 15, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2817, file: !385, line: 595, column: 8)
!2824 = !DILocation(line: 595, column: 21, scope: !2823)
!2825 = !DILocation(line: 595, column: 8, scope: !2817)
!2826 = !DILocation(line: 599, column: 8, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !385, line: 598, column: 6)
!2828 = !DILocation(line: 596, column: 21, scope: !2823)
!2829 = !DILocation(line: 596, column: 12, scope: !2823)
!2830 = !DILocation(line: 596, column: 6, scope: !2823)
!2831 = !DILocation(line: 599, column: 15, scope: !2827)
!2832 = !DILocation(line: 599, column: 21, scope: !2827)
!2833 = !DILocation(line: 599, column: 29, scope: !2827)
!2834 = !DILocation(line: 599, column: 39, scope: !2827)
!2835 = !DILocation(line: 599, column: 44, scope: !2827)
!2836 = !DILocation(line: 0, scope: !2827)
!2837 = !DILocation(line: 600, column: 11, scope: !2827)
!2838 = !DILocation(line: 600, column: 9, scope: !2827)
!2839 = distinct !{!2839, !2826, !2840}
!2840 = !DILocation(line: 600, column: 28, scope: !2827)
!2841 = !DILocation(line: 601, column: 18, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2827, file: !385, line: 601, column: 12)
!2843 = !DILocation(line: 601, column: 12, scope: !2827)
!2844 = !DILocation(line: 603, column: 23, scope: !2827)
!2845 = !DILocation(line: 603, column: 14, scope: !2827)
!2846 = distinct !{!2846, !2771, !2847}
!2847 = !DILocation(line: 605, column: 2, scope: !2772)
!2848 = !DILocation(line: 608, column: 3, scope: !2711)
!2849 = !DILocation(line: 609, column: 1, scope: !2711)
!2850 = distinct !DISubprogram(name: "move_single_loop_invariants", scope: !3, file: !3, line: 1552, type: !2851, scopeLine: 1553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !618}
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "loop", arg: 1, scope: !2850, file: !3, line: 1552, type: !618)
!2855 = !DILocation(line: 0, scope: !2850)
!2856 = !DILocation(line: 1554, column: 3, scope: !2850)
!2857 = !DILocation(line: 1556, column: 3, scope: !2850)
!2858 = !DILocation(line: 1557, column: 28, scope: !2850)
!2859 = !DILocation(line: 1557, column: 3, scope: !2850)
!2860 = !DILocation(line: 1558, column: 3, scope: !2850)
!2861 = !DILocation(line: 1560, column: 3, scope: !2850)
!2862 = !DILocation(line: 1561, column: 1, scope: !2850)
!2863 = distinct !DISubprogram(name: "fel_next", scope: !385, file: !385, line: 518, type: !2864, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{null, !2714, !2715}
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "li", arg: 1, scope: !2863, file: !385, line: 518, type: !2714)
!2868 = !DILocalVariable(name: "loop", arg: 2, scope: !2863, file: !385, line: 518, type: !2715)
!2869 = !DILocalVariable(name: "anum", scope: !2863, file: !385, line: 520, type: !607)
!2870 = !DILocation(line: 0, scope: !2863)
!2871 = !DILocation(line: 520, column: 3, scope: !2863)
!2872 = !DILocation(line: 522, column: 3, scope: !2863)
!2873 = !DILocation(line: 522, column: 10, scope: !2863)
!2874 = !DILocation(line: 524, column: 14, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2863, file: !385, line: 523, column: 5)
!2876 = !DILocation(line: 525, column: 25, scope: !2875)
!2877 = !DILocation(line: 525, column: 15, scope: !2875)
!2878 = !DILocation(line: 525, column: 13, scope: !2875)
!2879 = !DILocation(line: 526, column: 11, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2875, file: !385, line: 526, column: 11)
!2881 = !DILocation(line: 526, column: 11, scope: !2875)
!2882 = distinct !{!2882, !2872, !2883}
!2883 = !DILocation(line: 528, column: 5, scope: !2863)
!2884 = !DILocation(line: 530, column: 3, scope: !2863)
!2885 = !DILocation(line: 531, column: 9, scope: !2863)
!2886 = !DILocation(line: 532, column: 1, scope: !2863)
!2887 = distinct !DISubprogram(name: "free_loop_data", scope: !3, file: !3, line: 1566, type: !2851, scopeLine: 1567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2888)
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "loop", arg: 1, scope: !2887, file: !3, line: 1566, type: !618)
!2890 = !DILocalVariable(name: "data", scope: !2887, file: !3, line: 1568, type: !614)
!2891 = !DILocation(line: 0, scope: !2887)
!2892 = !DILocation(line: 1568, column: 28, scope: !2887)
!2893 = !DILocation(line: 1569, column: 8, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1569, column: 7)
!2895 = !DILocation(line: 1569, column: 7, scope: !2887)
!2896 = !DILocation(line: 1572, column: 36, scope: !2887)
!2897 = !DILocation(line: 1572, column: 3, scope: !2887)
!2898 = !DILocation(line: 1573, column: 18, scope: !2887)
!2899 = !DILocation(line: 1573, column: 36, scope: !2887)
!2900 = !DILocation(line: 1573, column: 3, scope: !2887)
!2901 = !DILocation(line: 1574, column: 9, scope: !2887)
!2902 = !DILocation(line: 1574, column: 3, scope: !2887)
!2903 = !DILocation(line: 1575, column: 13, scope: !2887)
!2904 = !DILocation(line: 1576, column: 1, scope: !2887)
!2905 = distinct !DISubprogram(name: "bitmap_initialize_stat", scope: !710, file: !710, line: 165, type: !2906, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !1857, !730}
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "head", arg: 1, scope: !2905, file: !710, line: 165, type: !1857)
!2910 = !DILocalVariable(name: "obstack", arg: 2, scope: !2905, file: !710, line: 165, type: !730)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocation(line: 167, column: 23, scope: !2905)
!2913 = !DILocation(line: 167, column: 31, scope: !2905)
!2914 = !DILocation(line: 167, column: 9, scope: !2905)
!2915 = !DILocation(line: 167, column: 15, scope: !2905)
!2916 = !DILocation(line: 168, column: 9, scope: !2905)
!2917 = !DILocation(line: 168, column: 17, scope: !2905)
!2918 = !DILocation(line: 172, column: 1, scope: !2905)
!2919 = distinct !DISubprogram(name: "df_lr_get_bb_info", scope: !1854, file: !1854, line: 1052, type: !2920, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!1852, !7}
!2922 = !{!2923}
!2923 = !DILocalVariable(name: "index", arg: 1, scope: !2919, file: !1854, line: 1052, type: !7)
!2924 = !DILocation(line: 0, scope: !2919)
!2925 = !DILocation(line: 1054, column: 15, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2919, file: !1854, line: 1054, column: 7)
!2927 = !DILocation(line: 1054, column: 22, scope: !2926)
!2928 = !DILocation(line: 1054, column: 13, scope: !2926)
!2929 = !DILocation(line: 1054, column: 7, scope: !2919)
!2930 = !DILocation(line: 1055, column: 44, scope: !2926)
!2931 = !DILocation(line: 1055, column: 37, scope: !2926)
!2932 = !DILocation(line: 1055, column: 5, scope: !2926)
!2933 = !DILocation(line: 0, scope: !2926)
!2934 = !DILocation(line: 1058, column: 1, scope: !2919)
!2935 = distinct !DISubprogram(name: "loop_outer", scope: !385, file: !385, line: 434, type: !2936, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2940)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!618, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "loop", arg: 1, scope: !2935, file: !385, line: 434, type: !2938)
!2942 = !DILocalVariable(name: "n", scope: !2935, file: !385, line: 436, type: !7)
!2943 = !DILocation(line: 0, scope: !2935)
!2944 = !DILocation(line: 436, column: 16, scope: !2935)
!2945 = !DILocation(line: 438, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2935, file: !385, line: 438, column: 7)
!2947 = !DILocation(line: 438, column: 7, scope: !2935)
!2948 = !DILocation(line: 441, column: 10, scope: !2935)
!2949 = !DILocation(line: 441, column: 3, scope: !2935)
!2950 = !DILocation(line: 442, column: 1, scope: !2935)
!2951 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !710, file: !710, line: 224, type: !2952, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2959)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2954, !2955, !7, !2958}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !641, line: 48, baseType: !2956)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2959 = !{!2960, !2961, !2962, !2963}
!2960 = !DILocalVariable(name: "bi", arg: 1, scope: !2951, file: !710, line: 224, type: !2954)
!2961 = !DILocalVariable(name: "map", arg: 2, scope: !2951, file: !710, line: 224, type: !2955)
!2962 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2951, file: !710, line: 225, type: !7)
!2963 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2951, file: !710, line: 225, type: !2958)
!2964 = !DILocation(line: 0, scope: !2951)
!2965 = !DILocation(line: 227, column: 19, scope: !2951)
!2966 = !DILocation(line: 227, column: 12, scope: !2951)
!2967 = !DILocation(line: 228, column: 7, scope: !2951)
!2968 = !DILocation(line: 228, column: 12, scope: !2951)
!2969 = !DILocation(line: 0, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !710, line: 233, column: 11)
!2971 = distinct !DILexicalBlock(scope: !2951, file: !710, line: 232, column: 5)
!2972 = !DILocation(line: 231, column: 3, scope: !2951)
!2973 = !DILocation(line: 233, column: 12, scope: !2970)
!2974 = !DILocation(line: 233, column: 11, scope: !2971)
!2975 = !DILocation(line: 235, column: 13, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2970, file: !710, line: 234, column: 2)
!2977 = !DILocation(line: 236, column: 4, scope: !2976)
!2978 = !DILocation(line: 239, column: 11, scope: !2971)
!2979 = distinct !{!2979, !2972, !2980}
!2980 = !DILocation(line: 242, column: 5, scope: !2951)
!2981 = !DILocation(line: 245, column: 11, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2951, file: !710, line: 245, column: 7)
!2983 = !DILocation(line: 245, column: 17, scope: !2982)
!2984 = !DILocation(line: 245, column: 22, scope: !2982)
!2985 = !DILocation(line: 245, column: 7, scope: !2951)
!2986 = !DILocation(line: 246, column: 27, scope: !2982)
!2987 = !DILocation(line: 246, column: 32, scope: !2982)
!2988 = !DILocation(line: 246, column: 5, scope: !2982)
!2989 = !DILocation(line: 249, column: 7, scope: !2951)
!2990 = !DILocation(line: 249, column: 15, scope: !2951)
!2991 = !DILocation(line: 250, column: 14, scope: !2951)
!2992 = !DILocation(line: 251, column: 7, scope: !2951)
!2993 = !DILocation(line: 251, column: 12, scope: !2951)
!2994 = !DILocation(line: 257, column: 16, scope: !2951)
!2995 = !DILocation(line: 257, column: 13, scope: !2951)
!2996 = !DILocation(line: 259, column: 11, scope: !2951)
!2997 = !DILocation(line: 260, column: 1, scope: !2951)
!2998 = distinct !DISubprogram(name: "bmp_iter_set", scope: !710, file: !710, line: 393, type: !2999, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!606, !2954, !2958}
!3001 = !{!3002, !3003, !3004}
!3002 = !DILocalVariable(name: "bi", arg: 1, scope: !2998, file: !710, line: 393, type: !2954)
!3003 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2998, file: !710, line: 393, type: !2958)
!3004 = !DILabel(scope: !3005, name: "next_bit", file: !710, line: 398)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !710, line: 397, column: 5)
!3006 = distinct !DILexicalBlock(scope: !2998, file: !710, line: 396, column: 7)
!3007 = !DILocation(line: 0, scope: !2998)
!3008 = !DILocation(line: 396, column: 11, scope: !3006)
!3009 = !DILocation(line: 396, column: 7, scope: !3006)
!3010 = !DILocation(line: 396, column: 7, scope: !2998)
!3011 = !DILocation(line: 419, column: 15, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !710, line: 418, column: 2)
!3013 = distinct !DILexicalBlock(scope: !2998, file: !710, line: 415, column: 5)
!3014 = !DILocation(line: 399, column: 7, scope: !3005)
!3015 = !DILocation(line: 398, column: 5, scope: !3005)
!3016 = !DILocation(line: 399, column: 20, scope: !3005)
!3017 = !DILocation(line: 399, column: 25, scope: !3005)
!3018 = !DILocation(line: 399, column: 14, scope: !3005)
!3019 = !DILocation(line: 401, column: 13, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3005, file: !710, line: 400, column: 2)
!3021 = !DILocation(line: 402, column: 12, scope: !3020)
!3022 = distinct !{!3022, !3014, !3023}
!3023 = !DILocation(line: 403, column: 2, scope: !3005)
!3024 = !DILocation(line: 410, column: 15, scope: !2998)
!3025 = !DILocation(line: 410, column: 42, scope: !2998)
!3026 = !DILocation(line: 411, column: 26, scope: !2998)
!3027 = !DILocation(line: 410, column: 11, scope: !2998)
!3028 = !DILocation(line: 412, column: 7, scope: !2998)
!3029 = !DILocation(line: 412, column: 14, scope: !2998)
!3030 = !DILocation(line: 0, scope: !3013)
!3031 = !DILocation(line: 414, column: 3, scope: !2998)
!3032 = !DILocation(line: 417, column: 7, scope: !3013)
!3033 = !DILocation(line: 417, column: 18, scope: !3013)
!3034 = !DILocation(line: 417, column: 26, scope: !3013)
!3035 = !DILocation(line: 419, column: 13, scope: !3012)
!3036 = !DILocation(line: 420, column: 8, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3012, file: !710, line: 420, column: 8)
!3038 = !DILocation(line: 420, column: 8, scope: !3012)
!3039 = !DILocation(line: 422, column: 12, scope: !3012)
!3040 = !DILocation(line: 423, column: 15, scope: !3012)
!3041 = distinct !{!3041, !3032, !3042}
!3042 = !DILocation(line: 424, column: 2, scope: !3013)
!3043 = !DILocation(line: 427, column: 28, scope: !3013)
!3044 = !DILocation(line: 427, column: 16, scope: !3013)
!3045 = !DILocation(line: 428, column: 12, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3013, file: !710, line: 428, column: 11)
!3047 = !DILocation(line: 428, column: 11, scope: !3013)
!3048 = !DILocation(line: 430, column: 27, scope: !3013)
!3049 = !DILocation(line: 430, column: 32, scope: !3013)
!3050 = !DILocation(line: 430, column: 15, scope: !3013)
!3051 = !DILocation(line: 431, column: 19, scope: !3013)
!3052 = distinct !{!3052, !3031, !3053}
!3053 = !DILocation(line: 432, column: 5, scope: !2998)
!3054 = !DILocation(line: 433, column: 1, scope: !2998)
!3055 = distinct !DISubprogram(name: "change_pressure", scope: !3, file: !3, line: 1622, type: !3056, scopeLine: 1623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !607, !606}
!3058 = !{!3059, !3060, !3061, !3062}
!3059 = !DILocalVariable(name: "regno", arg: 1, scope: !3055, file: !3, line: 1622, type: !607)
!3060 = !DILocalVariable(name: "incr_p", arg: 2, scope: !3055, file: !3, line: 1622, type: !606)
!3061 = !DILocalVariable(name: "nregs", scope: !3055, file: !3, line: 1624, type: !607)
!3062 = !DILocalVariable(name: "cover_class", scope: !3055, file: !3, line: 1625, type: !574)
!3063 = !DILocation(line: 0, scope: !3055)
!3064 = !DILocation(line: 1624, column: 3, scope: !3055)
!3065 = !DILocation(line: 1627, column: 17, scope: !3055)
!3066 = !DILocation(line: 1628, column: 9, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 1628, column: 7)
!3068 = !DILocation(line: 0, scope: !3067)
!3069 = !DILocation(line: 1628, column: 7, scope: !3055)
!3070 = !DILocation(line: 1629, column: 36, scope: !3067)
!3071 = !DILocation(line: 1629, column: 5, scope: !3067)
!3072 = !DILocation(line: 1632, column: 38, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1631, column: 5)
!3074 = !DILocation(line: 1633, column: 11, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 1633, column: 11)
!3076 = !DILocation(line: 1634, column: 4, scope: !3075)
!3077 = !DILocation(line: 1633, column: 11, scope: !3073)
!3078 = !DILocation(line: 1636, column: 4, scope: !3075)
!3079 = !DILocation(line: 1635, column: 2, scope: !3075)
!3080 = !DILocation(line: 1638, column: 1, scope: !3055)
!3081 = distinct !DISubprogram(name: "bmp_iter_next", scope: !710, file: !710, line: 382, type: !3082, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !2954, !2958}
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "bi", arg: 1, scope: !3081, file: !710, line: 382, type: !2954)
!3086 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3081, file: !710, line: 382, type: !2958)
!3087 = !DILocation(line: 0, scope: !3081)
!3088 = !DILocation(line: 384, column: 7, scope: !3081)
!3089 = !DILocation(line: 384, column: 12, scope: !3081)
!3090 = !DILocation(line: 385, column: 11, scope: !3081)
!3091 = !DILocation(line: 386, column: 1, scope: !3081)
!3092 = distinct !DISubprogram(name: "mark_ref_regs", scope: !3, file: !3, line: 1727, type: !3093, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !655}
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3103}
!3096 = !DILocalVariable(name: "x", arg: 1, scope: !3092, file: !3, line: 1727, type: !655)
!3097 = !DILocalVariable(name: "code", scope: !3092, file: !3, line: 1729, type: !397)
!3098 = !DILocalVariable(name: "i", scope: !3092, file: !3, line: 1730, type: !607)
!3099 = !DILocalVariable(name: "fmt", scope: !3092, file: !3, line: 1731, type: !612)
!3100 = !DILocalVariable(name: "loop", scope: !3101, file: !3, line: 1739, type: !618)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 1738, column: 5)
!3102 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 1737, column: 7)
!3103 = !DILocalVariable(name: "j", scope: !3104, file: !3, line: 1754, type: !607)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1753, column: 7)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1752, column: 14)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1750, column: 9)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1749, column: 3)
!3108 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 1749, column: 3)
!3109 = !DILocation(line: 0, scope: !3092)
!3110 = !DILocation(line: 1733, column: 8, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 1733, column: 7)
!3112 = !DILocation(line: 1733, column: 7, scope: !3092)
!3113 = !DILocation(line: 1736, column: 10, scope: !3092)
!3114 = !DILocation(line: 1737, column: 12, scope: !3102)
!3115 = !DILocation(line: 1737, column: 7, scope: !3092)
!3116 = !DILocation(line: 1741, column: 19, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1741, column: 7)
!3118 = !DILocation(line: 0, scope: !3101)
!3119 = !DILocation(line: 1741, column: 12, scope: !3117)
!3120 = !DILocation(line: 0, scope: !3117)
!3121 = !DILocation(line: 1742, column: 13, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1741, column: 7)
!3123 = !DILocation(line: 1742, column: 28, scope: !3122)
!3124 = !DILocation(line: 1742, column: 10, scope: !3122)
!3125 = !DILocation(line: 1741, column: 7, scope: !3117)
!3126 = !DILocation(line: 1744, column: 19, scope: !3122)
!3127 = !DILocation(line: 1744, column: 37, scope: !3122)
!3128 = !DILocation(line: 1744, column: 47, scope: !3122)
!3129 = !DILocation(line: 1744, column: 2, scope: !3122)
!3130 = !DILocation(line: 1743, column: 12, scope: !3122)
!3131 = !DILocation(line: 1741, column: 7, scope: !3122)
!3132 = distinct !{!3132, !3125, !3133}
!3133 = !DILocation(line: 1744, column: 56, scope: !3117)
!3134 = !DILocation(line: 1748, column: 9, scope: !3092)
!3135 = !DILocation(line: 1749, column: 12, scope: !3108)
!3136 = !DILocation(line: 0, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 1756, column: 2)
!3138 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 1756, column: 2)
!3139 = !DILocation(line: 1749, column: 8, scope: !3108)
!3140 = !DILocation(line: 0, scope: !3108)
!3141 = !DILocation(line: 1749, column: 41, scope: !3107)
!3142 = !DILocation(line: 1749, column: 3, scope: !3108)
!3143 = !DILocation(line: 1750, column: 9, scope: !3106)
!3144 = !DILocation(line: 1750, column: 16, scope: !3106)
!3145 = !DILocation(line: 1750, column: 9, scope: !3107)
!3146 = !DILocation(line: 1751, column: 22, scope: !3106)
!3147 = !DILocation(line: 1751, column: 7, scope: !3106)
!3148 = !DILocation(line: 1752, column: 21, scope: !3105)
!3149 = !DILocation(line: 1752, column: 14, scope: !3106)
!3150 = !DILocation(line: 1756, column: 2, scope: !3138)
!3151 = !DILocation(line: 0, scope: !3138)
!3152 = !DILocation(line: 0, scope: !3104)
!3153 = !DILocation(line: 1756, column: 18, scope: !3137)
!3154 = !DILocation(line: 1756, column: 16, scope: !3137)
!3155 = !DILocation(line: 1757, column: 19, scope: !3137)
!3156 = !DILocation(line: 1757, column: 4, scope: !3137)
!3157 = !DILocation(line: 1756, column: 35, scope: !3137)
!3158 = !DILocation(line: 1756, column: 2, scope: !3137)
!3159 = distinct !{!3159, !3150, !3160}
!3160 = !DILocation(line: 1757, column: 36, scope: !3138)
!3161 = !DILocation(line: 1749, column: 3, scope: !3107)
!3162 = distinct !{!3162, !3142, !3163}
!3163 = !DILocation(line: 1758, column: 7, scope: !3108)
!3164 = !DILocation(line: 1759, column: 1, scope: !3092)
!3165 = distinct !DISubprogram(name: "mark_reg_clobber", scope: !3, file: !3, line: 1699, type: !3166, scopeLine: 1700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3171)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !655, !3168, !611}
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !641, line: 51, baseType: !3169)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!3171 = !{!3172, !3173, !3174}
!3172 = !DILocalVariable(name: "reg", arg: 1, scope: !3165, file: !3, line: 1699, type: !655)
!3173 = !DILocalVariable(name: "setter", arg: 2, scope: !3165, file: !3, line: 1699, type: !3168)
!3174 = !DILocalVariable(name: "data", arg: 3, scope: !3165, file: !3, line: 1699, type: !611)
!3175 = !DILocation(line: 0, scope: !3165)
!3176 = !DILocation(line: 1701, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 1701, column: 7)
!3178 = !DILocation(line: 1701, column: 25, scope: !3177)
!3179 = !DILocation(line: 1701, column: 7, scope: !3165)
!3180 = !DILocation(line: 1702, column: 5, scope: !3177)
!3181 = !DILocation(line: 1703, column: 1, scope: !3165)
!3182 = distinct !DISubprogram(name: "mark_reg_death", scope: !3, file: !3, line: 1707, type: !3093, scopeLine: 1708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3183)
!3183 = !{!3184, !3185, !3186}
!3184 = !DILocalVariable(name: "reg", arg: 1, scope: !3182, file: !3, line: 1707, type: !655)
!3185 = !DILocalVariable(name: "regno", scope: !3182, file: !3, line: 1709, type: !607)
!3186 = !DILocalVariable(name: "last", scope: !3187, file: !3, line: 1715, type: !607)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 1714, column: 5)
!3188 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1711, column: 7)
!3189 = !DILocation(line: 0, scope: !3182)
!3190 = !DILocation(line: 1709, column: 15, scope: !3182)
!3191 = !DILocation(line: 1711, column: 13, scope: !3188)
!3192 = !DILocation(line: 1711, column: 7, scope: !3182)
!3193 = !DILocation(line: 1712, column: 5, scope: !3188)
!3194 = !DILocation(line: 1715, column: 26, scope: !3187)
!3195 = !DILocation(line: 1715, column: 50, scope: !3187)
!3196 = !DILocation(line: 1715, column: 24, scope: !3187)
!3197 = !DILocation(line: 0, scope: !3187)
!3198 = !DILocation(line: 1717, column: 7, scope: !3187)
!3199 = !DILocation(line: 1717, column: 20, scope: !3187)
!3200 = !DILocation(line: 1719, column: 4, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1718, column: 2)
!3202 = !DILocation(line: 1720, column: 9, scope: !3201)
!3203 = distinct !{!3203, !3198, !3204}
!3204 = !DILocation(line: 1721, column: 2, scope: !3187)
!3205 = !DILocation(line: 1723, column: 1, scope: !3182)
!3206 = distinct !DISubprogram(name: "mark_reg_store", scope: !3, file: !3, line: 1668, type: !3166, scopeLine: 1670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212}
!3208 = !DILocalVariable(name: "reg", arg: 1, scope: !3206, file: !3, line: 1668, type: !655)
!3209 = !DILocalVariable(name: "setter", arg: 2, scope: !3206, file: !3, line: 1668, type: !3168)
!3210 = !DILocalVariable(name: "data", arg: 3, scope: !3206, file: !3, line: 1669, type: !611)
!3211 = !DILocalVariable(name: "regno", scope: !3206, file: !3, line: 1671, type: !607)
!3212 = !DILocalVariable(name: "last", scope: !3213, file: !3, line: 1687, type: !607)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1686, column: 5)
!3214 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1683, column: 7)
!3215 = !DILocation(line: 0, scope: !3206)
!3216 = !DILocation(line: 1673, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1673, column: 7)
!3218 = !DILocation(line: 1673, column: 22, scope: !3217)
!3219 = !DILocation(line: 1673, column: 7, scope: !3206)
!3220 = !DILocation(line: 1674, column: 11, scope: !3217)
!3221 = !DILocation(line: 0, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1676, column: 7)
!3223 = !DILocation(line: 1676, column: 9, scope: !3222)
!3224 = !DILocation(line: 1674, column: 5, scope: !3217)
!3225 = !DILocation(line: 1676, column: 7, scope: !3206)
!3226 = !DILocation(line: 1679, column: 22, scope: !3206)
!3227 = !DILocation(line: 1679, column: 3, scope: !3206)
!3228 = !DILocation(line: 1679, column: 26, scope: !3206)
!3229 = !DILocation(line: 1681, column: 11, scope: !3206)
!3230 = !DILocation(line: 1683, column: 13, scope: !3214)
!3231 = !DILocation(line: 1683, column: 7, scope: !3206)
!3232 = !DILocation(line: 1684, column: 5, scope: !3214)
!3233 = !DILocation(line: 1687, column: 26, scope: !3213)
!3234 = !DILocation(line: 1687, column: 50, scope: !3213)
!3235 = !DILocation(line: 1687, column: 24, scope: !3213)
!3236 = !DILocation(line: 0, scope: !3213)
!3237 = !DILocation(line: 1689, column: 7, scope: !3213)
!3238 = !DILocation(line: 1689, column: 20, scope: !3213)
!3239 = !DILocation(line: 1691, column: 4, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 1690, column: 2)
!3241 = !DILocation(line: 1692, column: 9, scope: !3240)
!3242 = distinct !{!3242, !3237, !3243}
!3243 = !DILocation(line: 1693, column: 2, scope: !3213)
!3244 = !DILocation(line: 1695, column: 1, scope: !3206)
!3245 = distinct !DISubprogram(name: "rhs_regno", scope: !398, file: !398, line: 1051, type: !3246, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!7, !3168}
!3248 = !{!3249}
!3249 = !DILocalVariable(name: "x", arg: 1, scope: !3245, file: !398, line: 1051, type: !3168)
!3250 = !DILocation(line: 0, scope: !3245)
!3251 = !DILocation(line: 1053, column: 10, scope: !3245)
!3252 = !DILocation(line: 1053, column: 3, scope: !3245)
!3253 = distinct !DISubprogram(name: "get_regno_cover_class", scope: !3, file: !3, line: 1597, type: !3254, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3257)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!574, !607, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!3257 = !{!3258, !3259, !3260}
!3258 = !DILocalVariable(name: "regno", arg: 1, scope: !3253, file: !3, line: 1597, type: !607)
!3259 = !DILocalVariable(name: "nregs", arg: 2, scope: !3253, file: !3, line: 1597, type: !3256)
!3260 = !DILocalVariable(name: "cover_class", scope: !3261, file: !3, line: 1601, type: !574)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1600, column: 5)
!3262 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 1599, column: 7)
!3263 = !DILocation(line: 0, scope: !3253)
!3264 = !DILocation(line: 1599, column: 13, scope: !3262)
!3265 = !DILocation(line: 1599, column: 7, scope: !3253)
!3266 = !DILocation(line: 1601, column: 36, scope: !3261)
!3267 = !DILocation(line: 0, scope: !3261)
!3268 = !DILocation(line: 1603, column: 16, scope: !3261)
!3269 = !DILocation(line: 1603, column: 49, scope: !3261)
!3270 = !DILocation(line: 1603, column: 14, scope: !3261)
!3271 = !DILocation(line: 1606, column: 14, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1606, column: 12)
!3273 = !DILocation(line: 1607, column: 5, scope: !3272)
!3274 = !DILocation(line: 1607, column: 10, scope: !3272)
!3275 = !DILocation(line: 1606, column: 12, scope: !3262)
!3276 = !DILocation(line: 1609, column: 14, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1608, column: 5)
!3278 = !DILocation(line: 1610, column: 34, scope: !3277)
!3279 = !DILocation(line: 1610, column: 14, scope: !3277)
!3280 = !DILocation(line: 1610, column: 7, scope: !3277)
!3281 = !DILocation(line: 1614, column: 14, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1613, column: 5)
!3283 = !DILocation(line: 1615, column: 7, scope: !3282)
!3284 = !DILocation(line: 0, scope: !3262)
!3285 = !DILocation(line: 1617, column: 1, scope: !3253)
!3286 = distinct !DISubprogram(name: "loop_depth", scope: !385, file: !385, line: 425, type: !3287, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!7, !2938}
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "loop", arg: 1, scope: !3286, file: !385, line: 425, type: !2938)
!3291 = !DILocation(line: 0, scope: !3286)
!3292 = !DILocation(line: 427, column: 10, scope: !3286)
!3293 = !DILocation(line: 427, column: 3, scope: !3286)
!3294 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !385, file: !385, line: 85, type: !3295, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3299)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!7, !3297}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "vec_", arg: 1, scope: !3294, file: !385, line: 85, type: !3297)
!3301 = !DILocation(line: 0, scope: !3294)
!3302 = !DILocation(line: 85, column: 1, scope: !3294)
!3303 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !385, file: !385, line: 85, type: !3304, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!1236, !3297, !7}
!3306 = !{!3307, !3308}
!3307 = !DILocalVariable(name: "vec_", arg: 1, scope: !3303, file: !385, line: 85, type: !3297)
!3308 = !DILocalVariable(name: "ix_", arg: 2, scope: !3303, file: !385, line: 85, type: !7)
!3309 = !DILocation(line: 0, scope: !3303)
!3310 = !DILocation(line: 85, column: 1, scope: !3303)
!3311 = distinct !DISubprogram(name: "mark_regno_death", scope: !3, file: !3, line: 1658, type: !3312, scopeLine: 1659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !607}
!3314 = !{!3315}
!3315 = !DILocalVariable(name: "regno", arg: 1, scope: !3311, file: !3, line: 1658, type: !607)
!3316 = !DILocation(line: 0, scope: !3311)
!3317 = !DILocation(line: 1660, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1660, column: 7)
!3319 = !DILocation(line: 1660, column: 7, scope: !3311)
!3320 = !DILocation(line: 1662, column: 3, scope: !3311)
!3321 = !DILocation(line: 1663, column: 3, scope: !3311)
!3322 = !DILocation(line: 1664, column: 1, scope: !3311)
!3323 = distinct !DISubprogram(name: "mark_regno_live", scope: !3, file: !3, line: 1642, type: !3312, scopeLine: 1643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3324)
!3324 = !{!3325, !3326}
!3325 = !DILocalVariable(name: "regno", arg: 1, scope: !3323, file: !3, line: 1642, type: !607)
!3326 = !DILocalVariable(name: "loop", scope: !3323, file: !3, line: 1644, type: !618)
!3327 = !DILocation(line: 0, scope: !3323)
!3328 = !DILocation(line: 1646, column: 15, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1646, column: 3)
!3330 = !DILocation(line: 1646, column: 8, scope: !3329)
!3331 = !DILocation(line: 0, scope: !3329)
!3332 = !DILocation(line: 1647, column: 16, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1646, column: 3)
!3334 = !DILocation(line: 1647, column: 31, scope: !3333)
!3335 = !DILocation(line: 1647, column: 13, scope: !3333)
!3336 = !DILocation(line: 1646, column: 3, scope: !3329)
!3337 = !DILocation(line: 1649, column: 22, scope: !3333)
!3338 = !DILocation(line: 1649, column: 40, scope: !3333)
!3339 = !DILocation(line: 1649, column: 5, scope: !3333)
!3340 = !DILocation(line: 1648, column: 15, scope: !3333)
!3341 = !DILocation(line: 1646, column: 3, scope: !3333)
!3342 = distinct !{!3342, !3336, !3343}
!3343 = !DILocation(line: 1649, column: 56, scope: !3329)
!3344 = !DILocation(line: 1650, column: 7, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1650, column: 7)
!3346 = !DILocation(line: 1650, column: 7, scope: !3323)
!3347 = !DILocation(line: 1652, column: 3, scope: !3323)
!3348 = !DILocation(line: 1653, column: 3, scope: !3323)
!3349 = !DILocation(line: 1654, column: 1, scope: !3323)
!3350 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1171, file: !1171, line: 32, type: !3351, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!1863, !607}
!3353 = !{!3354}
!3354 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3350, file: !1171, line: 32, type: !607)
!3355 = !DILocation(line: 0, scope: !3350)
!3356 = !DILocation(line: 32, column: 1, scope: !3350)
!3357 = distinct !DISubprogram(name: "number_of_loops", scope: !385, file: !385, line: 459, type: !3358, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!7}
!3360 = !DILocation(line: 461, column: 8, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !385, line: 461, column: 7)
!3362 = !DILocation(line: 461, column: 7, scope: !3357)
!3363 = !DILocation(line: 464, column: 10, scope: !3357)
!3364 = !DILocation(line: 464, column: 3, scope: !3357)
!3365 = !DILocation(line: 0, scope: !3357)
!3366 = !DILocation(line: 465, column: 1, scope: !3357)
!3367 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !385, file: !385, line: 85, type: !3368, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!607, !3297, !7, !2715}
!3370 = !{!3371, !3372, !3373}
!3371 = !DILocalVariable(name: "vec_", arg: 1, scope: !3367, file: !385, line: 85, type: !3297)
!3372 = !DILocalVariable(name: "ix_", arg: 2, scope: !3367, file: !385, line: 85, type: !7)
!3373 = !DILocalVariable(name: "ptr", arg: 3, scope: !3367, file: !385, line: 85, type: !2715)
!3374 = !DILocation(line: 0, scope: !3367)
!3375 = !DILocation(line: 85, column: 1, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3367, file: !385, line: 85, column: 1)
!3377 = !DILocation(line: 85, column: 1, scope: !3367)
!3378 = !DILocation(line: 85, column: 1, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !385, line: 85, column: 1)
!3380 = !DILocation(line: 85, column: 1, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !385, line: 85, column: 1)
!3382 = !DILocation(line: 0, scope: !3376)
!3383 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1171, file: !1171, line: 31, type: !3384, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3387)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!3256, !3386, !607}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!3387 = !{!3388, !3389, !3390}
!3388 = !DILocalVariable(name: "vec_", arg: 1, scope: !3383, file: !1171, line: 31, type: !3386)
!3389 = !DILocalVariable(name: "obj_", arg: 2, scope: !3383, file: !1171, line: 31, type: !607)
!3390 = !DILocalVariable(name: "slot_", scope: !3383, file: !1171, line: 31, type: !3256)
!3391 = !DILocation(line: 0, scope: !3383)
!3392 = !DILocation(line: 31, column: 1, scope: !3383)
!3393 = distinct !DISubprogram(name: "init_inv_motion_data", scope: !3, file: !3, line: 1510, type: !2399, scopeLine: 1511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!3394 = !DILocation(line: 1512, column: 16, scope: !3393)
!3395 = !DILocation(line: 1514, column: 16, scope: !3393)
!3396 = !DILocation(line: 1514, column: 14, scope: !3393)
!3397 = !DILocation(line: 1515, column: 1, scope: !3393)
!3398 = distinct !DISubprogram(name: "find_invariants", scope: !3, file: !3, line: 978, type: !2851, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405}
!3400 = !DILocalVariable(name: "loop", arg: 1, scope: !3398, file: !3, line: 978, type: !618)
!3401 = !DILocalVariable(name: "may_exit", scope: !3398, file: !3, line: 980, type: !1857)
!3402 = !DILocalVariable(name: "always_reached", scope: !3398, file: !3, line: 981, type: !1857)
!3403 = !DILocalVariable(name: "has_exit", scope: !3398, file: !3, line: 982, type: !1857)
!3404 = !DILocalVariable(name: "always_executed", scope: !3398, file: !3, line: 983, type: !1857)
!3405 = !DILocalVariable(name: "body", scope: !3398, file: !3, line: 984, type: !3406)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!3407 = !DILocation(line: 0, scope: !3398)
!3408 = !DILocation(line: 980, column: 21, scope: !3398)
!3409 = !DILocation(line: 981, column: 27, scope: !3398)
!3410 = !DILocation(line: 982, column: 21, scope: !3398)
!3411 = !DILocation(line: 983, column: 28, scope: !3398)
!3412 = !DILocation(line: 984, column: 23, scope: !3398)
!3413 = !DILocation(line: 986, column: 3, scope: !3398)
!3414 = !DILocation(line: 987, column: 3, scope: !3398)
!3415 = !DILocation(line: 988, column: 3, scope: !3398)
!3416 = !DILocation(line: 990, column: 3, scope: !3398)
!3417 = !DILocation(line: 991, column: 3, scope: !3398)
!3418 = !DILocation(line: 992, column: 3, scope: !3398)
!3419 = !DILocation(line: 994, column: 3, scope: !3398)
!3420 = !DILocation(line: 995, column: 3, scope: !3398)
!3421 = !DILocation(line: 996, column: 3, scope: !3398)
!3422 = !DILocation(line: 997, column: 3, scope: !3398)
!3423 = !DILocation(line: 998, column: 9, scope: !3398)
!3424 = !DILocation(line: 998, column: 3, scope: !3398)
!3425 = !DILocation(line: 999, column: 1, scope: !3398)
!3426 = distinct !DISubprogram(name: "find_invariants_to_move", scope: !3, file: !3, line: 1317, type: !3427, scopeLine: 1318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !606}
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3436, !3437, !3438}
!3430 = !DILocalVariable(name: "speed", arg: 1, scope: !3426, file: !3, line: 1317, type: !606)
!3431 = !DILocalVariable(name: "gain", scope: !3426, file: !3, line: 1319, type: !607)
!3432 = !DILocalVariable(name: "i", scope: !3426, file: !3, line: 1320, type: !7)
!3433 = !DILocalVariable(name: "regs_used", scope: !3426, file: !3, line: 1320, type: !7)
!3434 = !DILocalVariable(name: "regs_needed", scope: !3426, file: !3, line: 1320, type: !3435)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 864, elements: !1847)
!3436 = !DILocalVariable(name: "new_regs", scope: !3426, file: !3, line: 1320, type: !3435)
!3437 = !DILocalVariable(name: "inv", scope: !3426, file: !3, line: 1321, type: !1888)
!3438 = !DILocalVariable(name: "n_regs", scope: !3439, file: !3, line: 1334, type: !7)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 1333, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1326, column: 7)
!3441 = !DILocation(line: 0, scope: !3426)
!3442 = !DILocation(line: 1320, column: 3, scope: !3426)
!3443 = !DILocation(line: 1320, column: 26, scope: !3426)
!3444 = !DILocation(line: 1320, column: 54, scope: !3426)
!3445 = !DILocation(line: 1321, column: 3, scope: !3426)
!3446 = !DILocation(line: 1321, column: 21, scope: !3426)
!3447 = !DILocation(line: 1323, column: 8, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1323, column: 7)
!3449 = !DILocation(line: 1323, column: 7, scope: !3426)
!3450 = !DILocation(line: 1326, column: 7, scope: !3440)
!3451 = !DILocation(line: 1326, column: 7, scope: !3426)
!3452 = !DILocation(line: 1334, column: 29, scope: !3439)
!3453 = !DILocation(line: 0, scope: !3439)
!3454 = !DILocation(line: 0, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 1340, column: 8)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1339, column: 2)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 1338, column: 7)
!3458 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1338, column: 7)
!3459 = !DILocation(line: 1338, column: 21, scope: !3457)
!3460 = !DILocation(line: 1338, column: 12, scope: !3458)
!3461 = !DILocation(line: 0, scope: !3458)
!3462 = !DILocation(line: 1336, column: 17, scope: !3439)
!3463 = !DILocation(line: 1338, column: 7, scope: !3458)
!3464 = !DILocation(line: 1340, column: 9, scope: !3455)
!3465 = !DILocation(line: 1340, column: 32, scope: !3455)
!3466 = !DILocation(line: 1340, column: 35, scope: !3455)
!3467 = !DILocation(line: 1340, column: 8, scope: !3456)
!3468 = !DILocation(line: 1338, column: 32, scope: !3457)
!3469 = !DILocation(line: 1338, column: 7, scope: !3457)
!3470 = distinct !{!3470, !3463, !3471}
!3471 = !DILocation(line: 1345, column: 2, scope: !3458)
!3472 = !DILocation(line: 1348, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1348, column: 7)
!3474 = !DILocation(line: 0, scope: !3440)
!3475 = !DILocation(line: 1348, column: 7, scope: !3426)
!3476 = !DILocation(line: 0, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1352, column: 7)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 1352, column: 7)
!3479 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1351, column: 5)
!3480 = !DILocation(line: 1352, column: 7, scope: !3478)
!3481 = !DILocation(line: 1349, column: 19, scope: !3473)
!3482 = !DILocation(line: 1349, column: 34, scope: !3473)
!3483 = !DILocation(line: 1349, column: 5, scope: !3473)
!3484 = !DILocation(line: 1349, column: 17, scope: !3473)
!3485 = !DILocation(line: 0, scope: !3478)
!3486 = !DILocation(line: 1352, column: 27, scope: !3477)
!3487 = !DILocation(line: 1353, column: 11, scope: !3477)
!3488 = !DILocation(line: 1353, column: 2, scope: !3477)
!3489 = !DILocation(line: 1353, column: 35, scope: !3477)
!3490 = !DILocation(line: 1352, column: 56, scope: !3477)
!3491 = !DILocation(line: 1352, column: 7, scope: !3477)
!3492 = distinct !{!3492, !3480, !3493}
!3493 = !DILocation(line: 1353, column: 37, scope: !3478)
!3494 = !DILocation(line: 1355, column: 3, scope: !3426)
!3495 = !DILocation(line: 1355, column: 18, scope: !3426)
!3496 = !DILocation(line: 1356, column: 37, scope: !3426)
!3497 = !DILocation(line: 1358, column: 22, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1357, column: 5)
!3499 = !DILocation(line: 1358, column: 27, scope: !3498)
!3500 = !DILocation(line: 1358, column: 7, scope: !3498)
!3501 = !DILocation(line: 1359, column: 13, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1359, column: 11)
!3503 = !DILocation(line: 1359, column: 11, scope: !3498)
!3504 = !DILocation(line: 0, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 1363, column: 4)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1363, column: 4)
!3507 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 1362, column: 2)
!3508 = !DILocation(line: 1363, column: 4, scope: !3506)
!3509 = !DILocation(line: 1360, column: 17, scope: !3502)
!3510 = !DILocation(line: 1360, column: 14, scope: !3502)
!3511 = !DILocation(line: 1360, column: 2, scope: !3502)
!3512 = !DILocation(line: 0, scope: !3506)
!3513 = !DILocation(line: 1363, column: 24, scope: !3505)
!3514 = !DILocation(line: 1365, column: 23, scope: !3505)
!3515 = !DILocation(line: 1365, column: 11, scope: !3505)
!3516 = !DILocation(line: 1364, column: 6, scope: !3505)
!3517 = !DILocation(line: 1365, column: 8, scope: !3505)
!3518 = !DILocation(line: 1363, column: 53, scope: !3505)
!3519 = !DILocation(line: 1363, column: 4, scope: !3505)
!3520 = distinct !{!3520, !3508, !3521}
!3521 = !DILocation(line: 1365, column: 45, scope: !3506)
!3522 = distinct !{!3522, !3494, !3523}
!3523 = !DILocation(line: 1367, column: 5, scope: !3426)
!3524 = !DILocation(line: 1368, column: 1, scope: !3426)
!3525 = distinct !DISubprogram(name: "move_invariants", scope: !3, file: !3, line: 1483, type: !2851, scopeLine: 1484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DILocalVariable(name: "loop", arg: 1, scope: !3525, file: !3, line: 1483, type: !618)
!3528 = !DILocalVariable(name: "inv", scope: !3525, file: !3, line: 1485, type: !1888)
!3529 = !DILocalVariable(name: "i", scope: !3525, file: !3, line: 1486, type: !7)
!3530 = !DILocation(line: 0, scope: !3525)
!3531 = !DILocation(line: 1485, column: 3, scope: !3525)
!3532 = !DILocation(line: 1488, column: 8, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1488, column: 3)
!3534 = !DILocation(line: 0, scope: !3533)
!3535 = !DILocation(line: 1488, column: 15, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1488, column: 3)
!3537 = !DILocation(line: 1488, column: 3, scope: !3533)
!3538 = !DILocation(line: 1489, column: 5, scope: !3536)
!3539 = !DILocation(line: 1488, column: 63, scope: !3536)
!3540 = !DILocation(line: 1488, column: 3, scope: !3536)
!3541 = distinct !{!3541, !3537, !3542}
!3542 = !DILocation(line: 1489, column: 32, scope: !3533)
!3543 = !DILocation(line: 1490, column: 7, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1490, column: 7)
!3545 = !DILocation(line: 1490, column: 30, scope: !3544)
!3546 = !DILocation(line: 1490, column: 33, scope: !3544)
!3547 = !DILocation(line: 1490, column: 7, scope: !3525)
!3548 = !DILocation(line: 1492, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 1492, column: 7)
!3550 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1491, column: 5)
!3551 = !DILocation(line: 0, scope: !3549)
!3552 = !DILocation(line: 1492, column: 19, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1492, column: 7)
!3554 = !DILocation(line: 1493, column: 6, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 1493, column: 6)
!3556 = !DILocation(line: 1493, column: 11, scope: !3555)
!3557 = !DILocation(line: 1493, column: 15, scope: !3555)
!3558 = !DILocation(line: 1493, column: 6, scope: !3553)
!3559 = !DILocation(line: 1495, column: 15, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1495, column: 10)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1494, column: 4)
!3562 = !DILocation(line: 1495, column: 26, scope: !3560)
!3563 = !DILocation(line: 0, scope: !3560)
!3564 = !DILocation(line: 1495, column: 10, scope: !3561)
!3565 = !DILocation(line: 1497, column: 27, scope: !3560)
!3566 = !DILocation(line: 1497, column: 32, scope: !3560)
!3567 = !DILocation(line: 1497, column: 6, scope: !3560)
!3568 = !DILocation(line: 1498, column: 27, scope: !3560)
!3569 = !DILocation(line: 1498, column: 32, scope: !3560)
!3570 = !DILocation(line: 1498, column: 6, scope: !3560)
!3571 = !DILocation(line: 1499, column: 23, scope: !3560)
!3572 = !DILocation(line: 1499, column: 28, scope: !3560)
!3573 = !DILocation(line: 1499, column: 6, scope: !3560)
!3574 = !DILocation(line: 1496, column: 8, scope: !3560)
!3575 = !DILocation(line: 1501, column: 8, scope: !3560)
!3576 = !DILocation(line: 1492, column: 67, scope: !3553)
!3577 = !DILocation(line: 1492, column: 7, scope: !3553)
!3578 = distinct !{!3578, !3548, !3579}
!3579 = !DILocation(line: 1503, column: 4, scope: !3549)
!3580 = !DILocation(line: 1505, column: 1, scope: !3525)
!3581 = distinct !DISubprogram(name: "free_inv_motion_data", scope: !3, file: !3, line: 1520, type: !2399, scopeLine: 1521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3582)
!3582 = !{!3583, !3584, !3585}
!3583 = !DILocalVariable(name: "i", scope: !3581, file: !3, line: 1522, type: !7)
!3584 = !DILocalVariable(name: "def", scope: !3581, file: !3, line: 1523, type: !1896)
!3585 = !DILocalVariable(name: "inv", scope: !3581, file: !3, line: 1524, type: !1888)
!3586 = !DILocation(line: 1524, column: 3, scope: !3581)
!3587 = !DILocation(line: 1526, column: 3, scope: !3581)
!3588 = !DILocation(line: 0, scope: !3581)
!3589 = !DILocation(line: 0, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 1528, column: 5)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 1527, column: 3)
!3592 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 1527, column: 3)
!3593 = !DILocation(line: 1527, column: 8, scope: !3592)
!3594 = !DILocation(line: 0, scope: !3592)
!3595 = !DILocation(line: 1527, column: 19, scope: !3591)
!3596 = !DILocation(line: 1527, column: 17, scope: !3591)
!3597 = !DILocation(line: 1527, column: 3, scope: !3592)
!3598 = !DILocation(line: 1541, column: 3, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 1541, column: 3)
!3600 = !DILocation(line: 1529, column: 13, scope: !3590)
!3601 = !DILocation(line: 1529, column: 11, scope: !3590)
!3602 = !DILocation(line: 1530, column: 11, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1530, column: 11)
!3604 = !DILocation(line: 1530, column: 11, scope: !3590)
!3605 = !DILocation(line: 1532, column: 15, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 1531, column: 2)
!3607 = !DILocation(line: 1533, column: 4, scope: !3606)
!3608 = !DILocation(line: 1535, column: 24, scope: !3606)
!3609 = !DILocation(line: 1535, column: 4, scope: !3606)
!3610 = !DILocation(line: 1536, column: 10, scope: !3606)
!3611 = !DILocation(line: 1536, column: 4, scope: !3606)
!3612 = !DILocation(line: 1537, column: 4, scope: !3606)
!3613 = !DILocation(line: 1537, column: 23, scope: !3606)
!3614 = !DILocation(line: 1538, column: 2, scope: !3606)
!3615 = !DILocation(line: 1527, column: 43, scope: !3591)
!3616 = !DILocation(line: 1527, column: 3, scope: !3591)
!3617 = distinct !{!3617, !3597, !3618}
!3618 = !DILocation(line: 1539, column: 5, scope: !3592)
!3619 = !DILocation(line: 0, scope: !3599)
!3620 = !DILocation(line: 1541, column: 15, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 1541, column: 3)
!3622 = !DILocation(line: 1543, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1542, column: 5)
!3624 = !DILocation(line: 1544, column: 13, scope: !3623)
!3625 = !DILocation(line: 1544, column: 7, scope: !3623)
!3626 = !DILocation(line: 1541, column: 63, scope: !3621)
!3627 = !DILocation(line: 1541, column: 3, scope: !3621)
!3628 = distinct !{!3628, !3598, !3629}
!3629 = !DILocation(line: 1545, column: 5, scope: !3599)
!3630 = !DILocation(line: 1546, column: 3, scope: !3581)
!3631 = !DILocation(line: 1547, column: 1, scope: !3581)
!3632 = distinct !DISubprogram(name: "VEC_invariant_p_heap_alloc", scope: !3, file: !3, line: 174, type: !3633, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!1875, !607}
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3632, file: !3, line: 174, type: !607)
!3637 = !DILocation(line: 0, scope: !3632)
!3638 = !DILocation(line: 174, column: 1, scope: !3632)
!3639 = distinct !DISubprogram(name: "find_exits", scope: !3, file: !3, line: 572, type: !3640, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !618, !3406, !1857, !1857}
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3655, !3656, !3657, !3658, !3659}
!3643 = !DILocalVariable(name: "loop", arg: 1, scope: !3639, file: !3, line: 572, type: !618)
!3644 = !DILocalVariable(name: "body", arg: 2, scope: !3639, file: !3, line: 572, type: !3406)
!3645 = !DILocalVariable(name: "may_exit", arg: 3, scope: !3639, file: !3, line: 573, type: !1857)
!3646 = !DILocalVariable(name: "has_exit", arg: 4, scope: !3639, file: !3, line: 573, type: !1857)
!3647 = !DILocalVariable(name: "i", scope: !3639, file: !3, line: 575, type: !7)
!3648 = !DILocalVariable(name: "ei", scope: !3639, file: !3, line: 576, type: !3649)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !142, line: 682, baseType: !3650)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 679, size: 128, elements: !3651)
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3650, file: !142, line: 680, baseType: !7, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3650, file: !142, line: 681, baseType: !3654, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!3655 = !DILocalVariable(name: "e", scope: !3639, file: !3, line: 577, type: !640)
!3656 = !DILocalVariable(name: "outermost_exit", scope: !3639, file: !3, line: 578, type: !618)
!3657 = !DILocalVariable(name: "aexit", scope: !3639, file: !3, line: 578, type: !618)
!3658 = !DILocalVariable(name: "has_call", scope: !3639, file: !3, line: 579, type: !606)
!3659 = !DILocalVariable(name: "insn", scope: !3639, file: !3, line: 580, type: !655)
!3660 = !DILocation(line: 0, scope: !3639)
!3661 = !DILocation(line: 576, column: 3, scope: !3639)
!3662 = !DILocation(line: 577, column: 3, scope: !3639)
!3663 = !DILocation(line: 0, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 582, column: 3)
!3665 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 582, column: 3)
!3666 = !DILocation(line: 0, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 598, column: 4)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 585, column: 2)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 584, column: 11)
!3670 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 583, column: 5)
!3671 = !DILocation(line: 0, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 598, column: 4)
!3673 = !DILocation(line: 582, column: 8, scope: !3665)
!3674 = !DILocation(line: 0, scope: !3665)
!3675 = !DILocation(line: 578, column: 16, scope: !3639)
!3676 = !DILocation(line: 582, column: 25, scope: !3664)
!3677 = !DILocation(line: 582, column: 17, scope: !3664)
!3678 = !DILocation(line: 582, column: 3, scope: !3665)
!3679 = !DILocation(line: 584, column: 11, scope: !3669)
!3680 = !DILocation(line: 584, column: 20, scope: !3669)
!3681 = !DILocation(line: 584, column: 32, scope: !3669)
!3682 = !DILocation(line: 584, column: 11, scope: !3670)
!3683 = !DILocation(line: 586, column: 4, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 586, column: 4)
!3685 = !DILocation(line: 0, scope: !3684)
!3686 = !DILocation(line: 586, column: 4, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 586, column: 4)
!3688 = !DILocation(line: 588, column: 12, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 588, column: 12)
!3690 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 587, column: 6)
!3691 = !DILocation(line: 589, column: 5, scope: !3689)
!3692 = !DILocation(line: 589, column: 9, scope: !3689)
!3693 = !DILocation(line: 590, column: 9, scope: !3689)
!3694 = !DILocation(line: 590, column: 13, scope: !3689)
!3695 = !DILocation(line: 588, column: 12, scope: !3690)
!3696 = !DILocation(line: 593, column: 5, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 591, column: 3)
!3698 = !DILocation(line: 598, column: 4, scope: !3667)
!3699 = !DILocation(line: 594, column: 5, scope: !3697)
!3700 = distinct !{!3700, !3683, !3701}
!3701 = !DILocation(line: 596, column: 6, scope: !3684)
!3702 = !DILocation(line: 598, column: 4, scope: !3672)
!3703 = !DILocation(line: 600, column: 41, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 600, column: 12)
!3705 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 599, column: 6)
!3706 = !DILocation(line: 600, column: 44, scope: !3704)
!3707 = !DILocation(line: 600, column: 12, scope: !3704)
!3708 = !DILocation(line: 600, column: 12, scope: !3705)
!3709 = !DILocation(line: 603, column: 8, scope: !3705)
!3710 = !DILocation(line: 604, column: 8, scope: !3705)
!3711 = !DILocation(line: 606, column: 8, scope: !3705)
!3712 = !DILocation(line: 606, column: 11, scope: !3705)
!3713 = !DILocation(line: 606, column: 17, scope: !3705)
!3714 = !DILocation(line: 605, column: 25, scope: !3705)
!3715 = !DILocation(line: 607, column: 6, scope: !3705)
!3716 = distinct !{!3716, !3698, !3717}
!3717 = !DILocation(line: 607, column: 6, scope: !3667)
!3718 = !DILocation(line: 614, column: 33, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 614, column: 11)
!3720 = !DILocation(line: 614, column: 40, scope: !3719)
!3721 = !DILocation(line: 614, column: 11, scope: !3670)
!3722 = !DILocation(line: 617, column: 11, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 617, column: 11)
!3724 = !DILocation(line: 617, column: 45, scope: !3723)
!3725 = !DILocation(line: 617, column: 11, scope: !3670)
!3726 = !DILocation(line: 620, column: 4, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 618, column: 2)
!3728 = !DILocation(line: 622, column: 15, scope: !3670)
!3729 = !DILocation(line: 0, scope: !3670)
!3730 = !DILocation(line: 621, column: 2, scope: !3727)
!3731 = !DILocation(line: 622, column: 49, scope: !3670)
!3732 = !DILocation(line: 623, column: 17, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 623, column: 11)
!3734 = !DILocation(line: 623, column: 11, scope: !3670)
!3735 = !DILocation(line: 625, column: 4, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 624, column: 2)
!3737 = !DILocation(line: 626, column: 4, scope: !3736)
!3738 = !DILocation(line: 628, column: 8, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 628, column: 8)
!3740 = !DILocation(line: 628, column: 8, scope: !3736)
!3741 = !DILocation(line: 630, column: 2, scope: !3736)
!3742 = !DILocation(line: 582, column: 37, scope: !3664)
!3743 = !DILocation(line: 582, column: 3, scope: !3664)
!3744 = distinct !{!3744, !3678, !3745}
!3745 = !DILocation(line: 631, column: 5, scope: !3665)
!3746 = !DILocation(line: 633, column: 13, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 633, column: 7)
!3748 = !DILocation(line: 633, column: 17, scope: !3747)
!3749 = !DILocation(line: 633, column: 7, scope: !3639)
!3750 = !DILocation(line: 639, column: 3, scope: !3639)
!3751 = !DILocation(line: 635, column: 19, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 634, column: 5)
!3753 = !DILocation(line: 635, column: 17, scope: !3752)
!3754 = !DILocation(line: 636, column: 7, scope: !3752)
!3755 = !DILocation(line: 637, column: 7, scope: !3752)
!3756 = !DILocation(line: 638, column: 5, scope: !3752)
!3757 = !DILocation(line: 639, column: 21, scope: !3639)
!3758 = !DILocation(line: 639, column: 36, scope: !3639)
!3759 = !DILocation(line: 640, column: 3, scope: !3639)
!3760 = !DILocation(line: 640, column: 21, scope: !3639)
!3761 = !DILocation(line: 640, column: 30, scope: !3639)
!3762 = !DILocation(line: 641, column: 1, scope: !3639)
!3763 = distinct !DISubprogram(name: "compute_always_reached", scope: !3, file: !3, line: 552, type: !3640, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769}
!3765 = !DILocalVariable(name: "loop", arg: 1, scope: !3763, file: !3, line: 552, type: !618)
!3766 = !DILocalVariable(name: "body", arg: 2, scope: !3763, file: !3, line: 552, type: !3406)
!3767 = !DILocalVariable(name: "may_exit", arg: 3, scope: !3763, file: !3, line: 553, type: !1857)
!3768 = !DILocalVariable(name: "always_reached", arg: 4, scope: !3763, file: !3, line: 553, type: !1857)
!3769 = !DILocalVariable(name: "i", scope: !3763, file: !3, line: 555, type: !7)
!3770 = !DILocation(line: 0, scope: !3763)
!3771 = !DILocation(line: 0, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 557, column: 3)
!3773 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 557, column: 3)
!3774 = !DILocation(line: 0, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 559, column: 11)
!3776 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 558, column: 5)
!3777 = !DILocation(line: 557, column: 8, scope: !3773)
!3778 = !DILocation(line: 0, scope: !3773)
!3779 = !DILocation(line: 557, column: 25, scope: !3772)
!3780 = !DILocation(line: 557, column: 17, scope: !3772)
!3781 = !DILocation(line: 557, column: 3, scope: !3773)
!3782 = !DILocation(line: 559, column: 49, scope: !3775)
!3783 = !DILocation(line: 559, column: 56, scope: !3775)
!3784 = !DILocation(line: 559, column: 11, scope: !3775)
!3785 = !DILocation(line: 559, column: 11, scope: !3776)
!3786 = !DILocation(line: 560, column: 2, scope: !3775)
!3787 = !DILocation(line: 562, column: 11, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 562, column: 11)
!3789 = !DILocation(line: 562, column: 11, scope: !3776)
!3790 = !DILocation(line: 557, column: 37, scope: !3772)
!3791 = !DILocation(line: 557, column: 3, scope: !3772)
!3792 = distinct !{!3792, !3781, !3793}
!3793 = !DILocation(line: 564, column: 5, scope: !3773)
!3794 = !DILocation(line: 565, column: 1, scope: !3763)
!3795 = distinct !DISubprogram(name: "find_defs", scope: !3, file: !3, line: 660, type: !3796, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !618, !3406}
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "loop", arg: 1, scope: !3795, file: !3, line: 660, type: !618)
!3800 = !DILocalVariable(name: "body", arg: 2, scope: !3795, file: !3, line: 660, type: !3406)
!3801 = !DILocalVariable(name: "i", scope: !3795, file: !3, line: 662, type: !7)
!3802 = !DILocalVariable(name: "blocks", scope: !3795, file: !3, line: 663, type: !1857)
!3803 = !DILocation(line: 0, scope: !3795)
!3804 = !DILocation(line: 663, column: 19, scope: !3795)
!3805 = !DILocation(line: 0, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 665, column: 3)
!3807 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 665, column: 3)
!3808 = !DILocation(line: 665, column: 8, scope: !3807)
!3809 = !DILocation(line: 0, scope: !3807)
!3810 = !DILocation(line: 665, column: 25, scope: !3806)
!3811 = !DILocation(line: 665, column: 17, scope: !3806)
!3812 = !DILocation(line: 665, column: 3, scope: !3807)
!3813 = !DILocation(line: 666, column: 29, scope: !3806)
!3814 = !DILocation(line: 666, column: 38, scope: !3806)
!3815 = !DILocation(line: 666, column: 5, scope: !3806)
!3816 = !DILocation(line: 665, column: 37, scope: !3806)
!3817 = !DILocation(line: 665, column: 3, scope: !3806)
!3818 = distinct !{!3818, !3812, !3819}
!3819 = !DILocation(line: 666, column: 43, scope: !3807)
!3820 = !DILocation(line: 668, column: 22, scope: !3795)
!3821 = !DILocation(line: 668, column: 3, scope: !3795)
!3822 = !DILocation(line: 669, column: 3, scope: !3795)
!3823 = !DILocation(line: 670, column: 3, scope: !3795)
!3824 = !DILocation(line: 671, column: 3, scope: !3795)
!3825 = !DILocation(line: 672, column: 3, scope: !3795)
!3826 = !DILocation(line: 674, column: 7, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 674, column: 7)
!3828 = !DILocation(line: 674, column: 7, scope: !3795)
!3829 = !DILocation(line: 676, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 675, column: 5)
!3831 = !DILocation(line: 677, column: 16, scope: !3830)
!3832 = !DILocation(line: 677, column: 7, scope: !3830)
!3833 = !DILocation(line: 678, column: 26, scope: !3830)
!3834 = !DILocation(line: 678, column: 37, scope: !3830)
!3835 = !DILocation(line: 678, column: 7, scope: !3830)
!3836 = !DILocation(line: 679, column: 16, scope: !3830)
!3837 = !DILocation(line: 679, column: 7, scope: !3830)
!3838 = !DILocation(line: 680, column: 5, scope: !3830)
!3839 = !DILocation(line: 681, column: 3, scope: !3795)
!3840 = !DILocation(line: 683, column: 3, scope: !3795)
!3841 = !DILocation(line: 684, column: 1, scope: !3795)
!3842 = distinct !DISubprogram(name: "find_invariants_body", scope: !3, file: !3, line: 964, type: !3640, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3843)
!3843 = !{!3844, !3845, !3846, !3847, !3848}
!3844 = !DILocalVariable(name: "loop", arg: 1, scope: !3842, file: !3, line: 964, type: !618)
!3845 = !DILocalVariable(name: "body", arg: 2, scope: !3842, file: !3, line: 964, type: !3406)
!3846 = !DILocalVariable(name: "always_reached", arg: 3, scope: !3842, file: !3, line: 965, type: !1857)
!3847 = !DILocalVariable(name: "always_executed", arg: 4, scope: !3842, file: !3, line: 965, type: !1857)
!3848 = !DILocalVariable(name: "i", scope: !3842, file: !3, line: 967, type: !7)
!3849 = !DILocation(line: 0, scope: !3842)
!3850 = !DILocation(line: 0, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 969, column: 3)
!3852 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 969, column: 3)
!3853 = !DILocation(line: 969, column: 8, scope: !3852)
!3854 = !DILocation(line: 0, scope: !3852)
!3855 = !DILocation(line: 969, column: 25, scope: !3851)
!3856 = !DILocation(line: 969, column: 17, scope: !3851)
!3857 = !DILocation(line: 969, column: 3, scope: !3852)
!3858 = !DILocation(line: 970, column: 25, scope: !3851)
!3859 = !DILocation(line: 971, column: 4, scope: !3851)
!3860 = !DILocation(line: 972, column: 4, scope: !3851)
!3861 = !DILocation(line: 970, column: 5, scope: !3851)
!3862 = !DILocation(line: 969, column: 37, scope: !3851)
!3863 = !DILocation(line: 969, column: 3, scope: !3851)
!3864 = distinct !{!3864, !3857, !3865}
!3865 = !DILocation(line: 972, column: 37, scope: !3852)
!3866 = !DILocation(line: 973, column: 1, scope: !3842)
!3867 = distinct !DISubprogram(name: "merge_identical_invariants", scope: !3, file: !3, line: 532, type: !2399, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3868 = !{!3869, !3870, !3871}
!3869 = !DILocalVariable(name: "i", scope: !3867, file: !3, line: 534, type: !7)
!3870 = !DILocalVariable(name: "inv", scope: !3867, file: !3, line: 535, type: !1888)
!3871 = !DILocalVariable(name: "eq", scope: !3867, file: !3, line: 536, type: !1100)
!3872 = !DILocation(line: 535, column: 3, scope: !3867)
!3873 = !DILocation(line: 536, column: 28, scope: !3867)
!3874 = !DILocation(line: 536, column: 15, scope: !3867)
!3875 = !DILocation(line: 0, scope: !3867)
!3876 = !DILocation(line: 539, column: 8, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 539, column: 3)
!3878 = !DILocation(line: 0, scope: !3877)
!3879 = !DILocation(line: 539, column: 15, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 539, column: 3)
!3881 = !DILocation(line: 539, column: 3, scope: !3877)
!3882 = !DILocation(line: 540, column: 36, scope: !3880)
!3883 = !DILocation(line: 540, column: 5, scope: !3880)
!3884 = !DILocation(line: 539, column: 63, scope: !3880)
!3885 = !DILocation(line: 539, column: 3, scope: !3880)
!3886 = distinct !{!3886, !3881, !3887}
!3887 = !DILocation(line: 540, column: 39, scope: !3877)
!3888 = !DILocation(line: 542, column: 3, scope: !3867)
!3889 = !DILocation(line: 543, column: 1, scope: !3867)
!3890 = distinct !DISubprogram(name: "ei_start_1", scope: !142, file: !142, line: 696, type: !3891, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!3649, !3654}
!3893 = !{!3894, !3895}
!3894 = !DILocalVariable(name: "ev", arg: 1, scope: !3890, file: !142, line: 696, type: !3654)
!3895 = !DILocalVariable(name: "i", scope: !3890, file: !142, line: 698, type: !3649)
!3896 = !DILocation(line: 0, scope: !3890)
!3897 = !DILocation(line: 700, column: 5, scope: !3890)
!3898 = !DILocation(line: 700, column: 11, scope: !3890)
!3899 = !DILocation(line: 701, column: 5, scope: !3890)
!3900 = !DILocation(line: 701, column: 15, scope: !3890)
!3901 = !DILocation(line: 703, column: 3, scope: !3890)
!3902 = distinct !DISubprogram(name: "ei_cond", scope: !142, file: !142, line: 771, type: !3903, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!606, !3649, !3905}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!3906 = !{!3907, !3908}
!3907 = !DILocalVariable(name: "ei", arg: 1, scope: !3902, file: !142, line: 771, type: !3649)
!3908 = !DILocalVariable(name: "p", arg: 2, scope: !3902, file: !142, line: 771, type: !3905)
!3909 = !DILocation(line: 0, scope: !3902)
!3910 = !DILocation(line: 773, column: 8, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3902, file: !142, line: 773, column: 7)
!3912 = !DILocation(line: 773, column: 7, scope: !3902)
!3913 = !DILocation(line: 775, column: 12, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3911, file: !142, line: 774, column: 5)
!3915 = !DILocation(line: 776, column: 7, scope: !3914)
!3916 = !DILocation(line: 781, column: 7, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3911, file: !142, line: 779, column: 5)
!3918 = !DILocation(line: 0, scope: !3911)
!3919 = !DILocation(line: 783, column: 1, scope: !3902)
!3920 = distinct !DISubprogram(name: "ei_next", scope: !142, file: !142, line: 736, type: !3921, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3924)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3924 = !{!3925}
!3925 = !DILocalVariable(name: "i", arg: 1, scope: !3920, file: !142, line: 736, type: !3923)
!3926 = !DILocation(line: 0, scope: !3920)
!3927 = !DILocation(line: 738, column: 3, scope: !3920)
!3928 = !DILocation(line: 739, column: 11, scope: !3920)
!3929 = !DILocation(line: 740, column: 1, scope: !3920)
!3930 = distinct !DISubprogram(name: "ei_end_p", scope: !142, file: !142, line: 721, type: !3931, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!606, !3649}
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "i", arg: 1, scope: !3930, file: !142, line: 721, type: !3649)
!3935 = !DILocation(line: 723, column: 22, scope: !3930)
!3936 = !DILocation(line: 723, column: 19, scope: !3930)
!3937 = !DILocation(line: 723, column: 10, scope: !3930)
!3938 = !DILocation(line: 723, column: 3, scope: !3930)
!3939 = distinct !DISubprogram(name: "ei_edge", scope: !142, file: !142, line: 752, type: !3940, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3942)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!640, !3649}
!3942 = !{!3943}
!3943 = !DILocalVariable(name: "i", arg: 1, scope: !3939, file: !142, line: 752, type: !3649)
!3944 = !DILocation(line: 754, column: 10, scope: !3939)
!3945 = !DILocation(line: 754, column: 3, scope: !3939)
!3946 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !142, file: !142, line: 150, type: !3947, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3951)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!7, !3949}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "vec_", arg: 1, scope: !3946, file: !142, line: 150, type: !3949)
!3953 = !DILocation(line: 0, scope: !3946)
!3954 = !DILocation(line: 150, column: 1, scope: !3946)
!3955 = distinct !DISubprogram(name: "ei_container", scope: !142, file: !142, line: 685, type: !3956, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!628, !3649}
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "i", arg: 1, scope: !3955, file: !142, line: 685, type: !3649)
!3960 = !DILocation(line: 687, column: 3, scope: !3955)
!3961 = !DILocation(line: 688, column: 10, scope: !3955)
!3962 = !DILocation(line: 688, column: 3, scope: !3955)
!3963 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !142, file: !142, line: 150, type: !3964, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!640, !3949, !7}
!3966 = !{!3967, !3968}
!3967 = !DILocalVariable(name: "vec_", arg: 1, scope: !3963, file: !142, line: 150, type: !3949)
!3968 = !DILocalVariable(name: "ix_", arg: 2, scope: !3963, file: !142, line: 150, type: !7)
!3969 = !DILocation(line: 0, scope: !3963)
!3970 = !DILocation(line: 150, column: 1, scope: !3963)
!3971 = distinct !DISubprogram(name: "check_invariant_table_size", scope: !3, file: !3, line: 183, type: !2399, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3972)
!3972 = !{!3973}
!3973 = !DILocalVariable(name: "new_size", scope: !3974, file: !3, line: 187, type: !7)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 186, column: 5)
!3975 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 185, column: 7)
!3976 = !DILocation(line: 185, column: 7, scope: !3975)
!3977 = !DILocation(line: 185, column: 30, scope: !3975)
!3978 = !DILocation(line: 185, column: 28, scope: !3975)
!3979 = !DILocation(line: 185, column: 7, scope: !3971)
!3980 = !DILocation(line: 187, column: 78, scope: !3974)
!3981 = !DILocation(line: 187, column: 53, scope: !3974)
!3982 = !DILocation(line: 0, scope: !3974)
!3983 = !DILocation(line: 188, column: 25, scope: !3974)
!3984 = !DILocation(line: 188, column: 23, scope: !3974)
!3985 = !DILocation(line: 189, column: 16, scope: !3974)
!3986 = !DILocation(line: 189, column: 32, scope: !3974)
!3987 = !DILocation(line: 189, column: 15, scope: !3974)
!3988 = !DILocation(line: 190, column: 18, scope: !3974)
!3989 = !DILocation(line: 190, column: 8, scope: !3974)
!3990 = !DILocation(line: 190, column: 42, scope: !3974)
!3991 = !DILocation(line: 189, column: 7, scope: !3974)
!3992 = !DILocation(line: 191, column: 28, scope: !3974)
!3993 = !DILocation(line: 192, column: 5, scope: !3974)
!3994 = !DILocation(line: 193, column: 1, scope: !3971)
!3995 = distinct !DISubprogram(name: "find_invariants_bb", scope: !3, file: !3, line: 939, type: !3996, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !1188, !606, !606}
!3998 = !{!3999, !4000, !4001, !4002}
!3999 = !DILocalVariable(name: "bb", arg: 1, scope: !3995, file: !3, line: 939, type: !1188)
!4000 = !DILocalVariable(name: "always_reached", arg: 2, scope: !3995, file: !3, line: 939, type: !606)
!4001 = !DILocalVariable(name: "always_executed", arg: 3, scope: !3995, file: !3, line: 939, type: !606)
!4002 = !DILocalVariable(name: "insn", scope: !3995, file: !3, line: 941, type: !655)
!4003 = !DILocation(line: 0, scope: !3995)
!4004 = !DILocation(line: 943, column: 3, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 943, column: 3)
!4006 = !DILocation(line: 0, scope: !4005)
!4007 = !DILocation(line: 943, column: 3, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 943, column: 3)
!4009 = !DILocation(line: 945, column: 12, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 945, column: 11)
!4011 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 944, column: 5)
!4012 = !DILocation(line: 945, column: 11, scope: !4011)
!4013 = !DILocation(line: 948, column: 7, scope: !4011)
!4014 = !DILocation(line: 950, column: 11, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 950, column: 11)
!4016 = !DILocation(line: 951, column: 4, scope: !4015)
!4017 = !DILocation(line: 951, column: 7, scope: !4015)
!4018 = !DILocation(line: 952, column: 4, scope: !4015)
!4019 = !DILocation(line: 952, column: 8, scope: !4015)
!4020 = !DILocation(line: 953, column: 8, scope: !4015)
!4021 = !DILocation(line: 953, column: 13, scope: !4015)
!4022 = !DILocation(line: 950, column: 11, scope: !4011)
!4023 = !DILocation(line: 954, column: 2, scope: !4015)
!4024 = distinct !{!4024, !4004, !4025}
!4025 = !DILocation(line: 955, column: 5, scope: !4005)
!4026 = !DILocation(line: 956, column: 1, scope: !3995)
!4027 = distinct !DISubprogram(name: "find_invariants_insn", scope: !3, file: !3, line: 927, type: !4028, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4030)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{null, !655, !606, !606}
!4030 = !{!4031, !4032, !4033}
!4031 = !DILocalVariable(name: "insn", arg: 1, scope: !4027, file: !3, line: 927, type: !655)
!4032 = !DILocalVariable(name: "always_reached", arg: 2, scope: !4027, file: !3, line: 927, type: !606)
!4033 = !DILocalVariable(name: "always_executed", arg: 3, scope: !4027, file: !3, line: 927, type: !606)
!4034 = !DILocation(line: 0, scope: !4027)
!4035 = !DILocation(line: 929, column: 3, scope: !4027)
!4036 = !DILocation(line: 930, column: 3, scope: !4027)
!4037 = !DILocation(line: 931, column: 1, scope: !4027)
!4038 = distinct !DISubprogram(name: "find_invariant_insn", scope: !3, file: !3, line: 838, type: !4028, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4104, !4105, !4106, !4107, !4108, !4109}
!4040 = !DILocalVariable(name: "insn", arg: 1, scope: !4038, file: !3, line: 838, type: !655)
!4041 = !DILocalVariable(name: "always_reached", arg: 2, scope: !4038, file: !3, line: 838, type: !606)
!4042 = !DILocalVariable(name: "always_executed", arg: 3, scope: !4038, file: !3, line: 838, type: !606)
!4043 = !DILocalVariable(name: "ref", scope: !4038, file: !3, line: 840, type: !4044)
!4044 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !1854, line: 429, baseType: !4045)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !1854, line: 422, size: 704, elements: !4047)
!4047 = !{!4048, !4087, !4092, !4097}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4046, file: !1854, line: 424, baseType: !4049, size: 512)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !1854, line: 356, size: 512, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4061, !4082, !4083, !4084, !4085, !4086}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !4049, file: !1854, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4049, file: !1854, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4049, file: !1854, line: 364, baseType: !607, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4049, file: !1854, line: 365, baseType: !655, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !4049, file: !1854, line: 366, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !1854, line: 449, size: 128, elements: !4058)
!4058 = !{!4059, !4060}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4057, file: !1854, line: 451, baseType: !4044, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4057, file: !1854, line: 452, baseType: !4056, size: 64, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !4049, file: !1854, line: 370, baseType: !4062, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !1854, line: 433, size: 384, elements: !4064)
!4064 = !{!4065, !4066, !4068, !4069, !4070, !4081}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4063, file: !1854, line: 435, baseType: !655, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !4063, file: !1854, line: 436, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !4063, file: !1854, line: 437, baseType: !4067, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !4063, file: !1854, line: 439, baseType: !4067, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !4063, file: !1854, line: 440, baseType: !4071, size: 64, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !1854, line: 339, size: 192, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !4073, file: !1854, line: 341, baseType: !655, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4073, file: !1854, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !1854, line: 346, baseType: !607, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !4073, file: !1854, line: 347, baseType: !7, size: 32, offset: 96)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !4073, file: !1854, line: 348, baseType: !7, size: 32, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !4073, file: !1854, line: 349, baseType: !7, size: 32, offset: 160)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !4063, file: !1854, line: 444, baseType: !607, size: 32, offset: 320)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !4049, file: !1854, line: 374, baseType: !4045, size: 64, offset: 256)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !4049, file: !1854, line: 375, baseType: !4045, size: 64, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !4049, file: !1854, line: 376, baseType: !7, size: 32, offset: 384)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4049, file: !1854, line: 379, baseType: !607, size: 32, offset: 416)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !4049, file: !1854, line: 382, baseType: !7, size: 32, offset: 448)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !4046, file: !1854, line: 425, baseType: !4088, size: 576)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !1854, line: 398, size: 576, elements: !4089)
!4089 = !{!4090, !4091}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4088, file: !1854, line: 400, baseType: !4049, size: 512)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !4088, file: !1854, line: 405, baseType: !1904, size: 64, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !4046, file: !1854, line: 426, baseType: !4093, size: 576)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !1854, line: 388, size: 576, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4093, file: !1854, line: 390, baseType: !4049, size: 512)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !4093, file: !1854, line: 394, baseType: !1188, size: 64, offset: 512)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !4046, file: !1854, line: 427, baseType: !4098, size: 704)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !1854, line: 413, size: 704, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4103}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4098, file: !1854, line: 415, baseType: !4088, size: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4098, file: !1854, line: 416, baseType: !607, size: 32, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4098, file: !1854, line: 417, baseType: !607, size: 32, offset: 608)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4098, file: !1854, line: 418, baseType: !5, size: 32, offset: 640)
!4104 = !DILocalVariable(name: "def", scope: !4038, file: !3, line: 841, type: !1896)
!4105 = !DILocalVariable(name: "depends_on", scope: !4038, file: !3, line: 842, type: !1857)
!4106 = !DILocalVariable(name: "set", scope: !4038, file: !3, line: 843, type: !655)
!4107 = !DILocalVariable(name: "dest", scope: !4038, file: !3, line: 843, type: !655)
!4108 = !DILocalVariable(name: "simple", scope: !4038, file: !3, line: 844, type: !606)
!4109 = !DILocalVariable(name: "inv", scope: !4038, file: !3, line: 845, type: !1888)
!4110 = !DILocation(line: 0, scope: !4038)
!4111 = !DILocation(line: 853, column: 9, scope: !4038)
!4112 = !DILocation(line: 854, column: 8, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 854, column: 7)
!4114 = !DILocation(line: 854, column: 7, scope: !4038)
!4115 = !DILocation(line: 856, column: 10, scope: !4038)
!4116 = !DILocation(line: 858, column: 8, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 858, column: 7)
!4118 = !DILocation(line: 859, column: 7, scope: !4117)
!4119 = !DILocation(line: 859, column: 10, scope: !4117)
!4120 = !DILocation(line: 858, column: 7, scope: !4038)
!4121 = !DILocation(line: 860, column: 5, scope: !4117)
!4122 = !DILocation(line: 862, column: 26, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 862, column: 7)
!4124 = !DILocation(line: 862, column: 8, scope: !4123)
!4125 = !DILocation(line: 863, column: 7, scope: !4123)
!4126 = !DILocation(line: 863, column: 34, scope: !4123)
!4127 = !DILocation(line: 863, column: 11, scope: !4123)
!4128 = !DILocation(line: 862, column: 7, scope: !4038)
!4129 = !DILocation(line: 868, column: 7, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 868, column: 7)
!4131 = !DILocation(line: 868, column: 7, scope: !4038)
!4132 = !DILocation(line: 872, column: 28, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 872, column: 7)
!4134 = !DILocation(line: 872, column: 7, scope: !4133)
!4135 = !DILocation(line: 872, column: 48, scope: !4133)
!4136 = !DILocation(line: 872, column: 44, scope: !4133)
!4137 = !DILocation(line: 875, column: 16, scope: !4038)
!4138 = !DILocation(line: 876, column: 8, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 876, column: 7)
!4140 = !DILocation(line: 876, column: 7, scope: !4038)
!4141 = !DILocation(line: 878, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 877, column: 5)
!4143 = !DILocation(line: 879, column: 7, scope: !4142)
!4144 = !DILocation(line: 882, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 882, column: 7)
!4146 = !DILocation(line: 882, column: 7, scope: !4038)
!4147 = !DILocation(line: 883, column: 11, scope: !4145)
!4148 = !DILocation(line: 883, column: 5, scope: !4145)
!4149 = !DILocation(line: 0, scope: !4145)
!4150 = !DILocation(line: 887, column: 9, scope: !4038)
!4151 = !DILocation(line: 889, column: 7, scope: !4038)
!4152 = !DILocation(line: 891, column: 13, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 890, column: 5)
!4154 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 889, column: 7)
!4155 = !DILocation(line: 892, column: 7, scope: !4153)
!4156 = !DILocation(line: 893, column: 7, scope: !4153)
!4157 = !DILocation(line: 893, column: 23, scope: !4153)
!4158 = !DILocation(line: 893, column: 39, scope: !4153)
!4159 = !DILocation(line: 894, column: 5, scope: !4153)
!4160 = !DILocation(line: 895, column: 1, scope: !4038)
!4161 = distinct !DISubprogram(name: "record_uses", scope: !3, file: !3, line: 900, type: !3093, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4162)
!4162 = !{!4163, !4164, !4165, !4166, !4167, !4171}
!4163 = !DILocalVariable(name: "insn", arg: 1, scope: !4161, file: !3, line: 900, type: !655)
!4164 = !DILocalVariable(name: "insn_info", scope: !4161, file: !3, line: 902, type: !4062)
!4165 = !DILocalVariable(name: "use_rec", scope: !4161, file: !3, line: 903, type: !4067)
!4166 = !DILocalVariable(name: "inv", scope: !4161, file: !3, line: 904, type: !1888)
!4167 = !DILocalVariable(name: "use", scope: !4168, file: !3, line: 908, type: !4044)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 907, column: 5)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 906, column: 3)
!4170 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 906, column: 3)
!4171 = !DILocalVariable(name: "use", scope: !4172, file: !3, line: 915, type: !4044)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 914, column: 5)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 913, column: 3)
!4174 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 913, column: 3)
!4175 = !DILocation(line: 0, scope: !4161)
!4176 = !DILocation(line: 902, column: 36, scope: !4161)
!4177 = !DILocation(line: 906, column: 18, scope: !4170)
!4178 = !DILocation(line: 906, column: 8, scope: !4170)
!4179 = !DILocation(line: 0, scope: !4170)
!4180 = !DILocation(line: 906, column: 49, scope: !4169)
!4181 = !DILocation(line: 906, column: 3, scope: !4170)
!4182 = !DILocation(line: 0, scope: !4168)
!4183 = !DILocation(line: 909, column: 13, scope: !4168)
!4184 = !DILocation(line: 910, column: 11, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 910, column: 11)
!4186 = !DILocation(line: 910, column: 11, scope: !4168)
!4187 = !DILocation(line: 911, column: 19, scope: !4185)
!4188 = !DILocation(line: 911, column: 2, scope: !4185)
!4189 = !DILocation(line: 906, column: 66, scope: !4169)
!4190 = !DILocation(line: 906, column: 3, scope: !4169)
!4191 = distinct !{!4191, !4181, !4192}
!4192 = !DILocation(line: 912, column: 5, scope: !4170)
!4193 = !DILocation(line: 913, column: 18, scope: !4174)
!4194 = !DILocation(line: 913, column: 8, scope: !4174)
!4195 = !DILocation(line: 0, scope: !4174)
!4196 = !DILocation(line: 913, column: 52, scope: !4173)
!4197 = !DILocation(line: 913, column: 3, scope: !4174)
!4198 = !DILocation(line: 0, scope: !4172)
!4199 = !DILocation(line: 916, column: 13, scope: !4172)
!4200 = !DILocation(line: 917, column: 11, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 917, column: 11)
!4202 = !DILocation(line: 917, column: 11, scope: !4172)
!4203 = !DILocation(line: 918, column: 19, scope: !4201)
!4204 = !DILocation(line: 918, column: 2, scope: !4201)
!4205 = !DILocation(line: 913, column: 69, scope: !4173)
!4206 = !DILocation(line: 913, column: 3, scope: !4173)
!4207 = distinct !{!4207, !4197, !4208}
!4208 = !DILocation(line: 919, column: 5, scope: !4174)
!4209 = !DILocation(line: 920, column: 1, scope: !4161)
!4210 = distinct !DISubprogram(name: "may_assign_reg_p", scope: !3, file: !3, line: 646, type: !4211, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!606, !655}
!4213 = !{!4214}
!4214 = !DILocalVariable(name: "x", arg: 1, scope: !4210, file: !3, line: 646, type: !655)
!4215 = !DILocation(line: 0, scope: !4210)
!4216 = !DILocation(line: 648, column: 11, scope: !4210)
!4217 = !DILocation(line: 648, column: 24, scope: !4210)
!4218 = !DILocation(line: 649, column: 4, scope: !4210)
!4219 = !DILocation(line: 649, column: 20, scope: !4210)
!4220 = !DILocation(line: 650, column: 4, scope: !4210)
!4221 = !DILocation(line: 650, column: 19, scope: !4210)
!4222 = !DILocation(line: 650, column: 7, scope: !4210)
!4223 = !DILocation(line: 651, column: 4, scope: !4210)
!4224 = !DILocation(line: 651, column: 9, scope: !4210)
!4225 = !DILocation(line: 652, column: 8, scope: !4210)
!4226 = !DILocation(line: 652, column: 12, scope: !4210)
!4227 = !DILocation(line: 653, column: 8, scope: !4210)
!4228 = !DILocation(line: 653, column: 11, scope: !4210)
!4229 = !DILocation(line: 653, column: 39, scope: !4210)
!4230 = !DILocation(line: 648, column: 3, scope: !4210)
!4231 = distinct !DISubprogram(name: "check_maybe_invariant", scope: !3, file: !3, line: 198, type: !4211, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4232)
!4232 = !{!4233, !4234, !4235, !4236, !4237}
!4233 = !DILocalVariable(name: "x", arg: 1, scope: !4231, file: !3, line: 198, type: !655)
!4234 = !DILocalVariable(name: "code", scope: !4231, file: !3, line: 200, type: !397)
!4235 = !DILocalVariable(name: "i", scope: !4231, file: !3, line: 201, type: !607)
!4236 = !DILocalVariable(name: "j", scope: !4231, file: !3, line: 201, type: !607)
!4237 = !DILocalVariable(name: "fmt", scope: !4231, file: !3, line: 202, type: !612)
!4238 = !DILocation(line: 0, scope: !4231)
!4239 = !DILocation(line: 200, column: 24, scope: !4231)
!4240 = !DILocation(line: 204, column: 3, scope: !4231)
!4241 = !DILocation(line: 218, column: 7, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 205, column: 5)
!4243 = !DILocation(line: 229, column: 11, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 229, column: 11)
!4245 = !DILocation(line: 229, column: 30, scope: !4244)
!4246 = !DILocation(line: 229, column: 34, scope: !4244)
!4247 = !DILocation(line: 229, column: 11, scope: !4242)
!4248 = !DILocation(line: 236, column: 11, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 236, column: 11)
!4250 = !DILocation(line: 236, column: 11, scope: !4242)
!4251 = !DILocation(line: 244, column: 9, scope: !4231)
!4252 = !DILocation(line: 245, column: 12, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 245, column: 3)
!4254 = !DILocation(line: 0, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 254, column: 4)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 254, column: 4)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 253, column: 2)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 252, column: 16)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 247, column: 11)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 246, column: 5)
!4261 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 245, column: 3)
!4262 = !DILocation(line: 245, column: 8, scope: !4253)
!4263 = !DILocation(line: 0, scope: !4253)
!4264 = !DILocation(line: 245, column: 41, scope: !4261)
!4265 = !DILocation(line: 245, column: 3, scope: !4253)
!4266 = !DILocation(line: 247, column: 11, scope: !4259)
!4267 = !DILocation(line: 247, column: 18, scope: !4259)
!4268 = !DILocation(line: 247, column: 11, scope: !4260)
!4269 = !DILocation(line: 249, column: 32, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 249, column: 8)
!4271 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 248, column: 2)
!4272 = !DILocation(line: 249, column: 9, scope: !4270)
!4273 = !DILocation(line: 249, column: 8, scope: !4271)
!4274 = !DILocation(line: 252, column: 23, scope: !4258)
!4275 = !DILocation(line: 252, column: 16, scope: !4259)
!4276 = !DILocation(line: 254, column: 4, scope: !4256)
!4277 = !DILocation(line: 0, scope: !4256)
!4278 = !DILocation(line: 254, column: 20, scope: !4255)
!4279 = !DILocation(line: 254, column: 18, scope: !4255)
!4280 = !DILocation(line: 255, column: 34, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 255, column: 10)
!4282 = !DILocation(line: 255, column: 11, scope: !4281)
!4283 = !DILocation(line: 255, column: 10, scope: !4255)
!4284 = !DILocation(line: 254, column: 37, scope: !4255)
!4285 = !DILocation(line: 254, column: 4, scope: !4255)
!4286 = distinct !{!4286, !4276, !4287}
!4287 = !DILocation(line: 256, column: 15, scope: !4256)
!4288 = !DILocation(line: 245, column: 3, scope: !4261)
!4289 = distinct !{!4289, !4265, !4290}
!4290 = !DILocation(line: 258, column: 5, scope: !4253)
!4291 = !DILocation(line: 261, column: 1, scope: !4231)
!4292 = distinct !DISubprogram(name: "check_dependencies", scope: !3, file: !3, line: 817, type: !4293, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!606, !655, !1857}
!4295 = !{!4296, !4297, !4298, !4299, !4300}
!4296 = !DILocalVariable(name: "insn", arg: 1, scope: !4292, file: !3, line: 817, type: !655)
!4297 = !DILocalVariable(name: "depends_on", arg: 2, scope: !4292, file: !3, line: 817, type: !1857)
!4298 = !DILocalVariable(name: "insn_info", scope: !4292, file: !3, line: 819, type: !4062)
!4299 = !DILocalVariable(name: "use_rec", scope: !4292, file: !3, line: 820, type: !4067)
!4300 = !DILocalVariable(name: "bb", scope: !4292, file: !3, line: 821, type: !1188)
!4301 = !DILocation(line: 0, scope: !4292)
!4302 = !DILocation(line: 819, column: 36, scope: !4292)
!4303 = !DILocation(line: 821, column: 20, scope: !4292)
!4304 = !DILocation(line: 823, column: 18, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 823, column: 3)
!4306 = !DILocation(line: 823, column: 8, scope: !4305)
!4307 = !DILocation(line: 0, scope: !4305)
!4308 = !DILocation(line: 823, column: 49, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 823, column: 3)
!4310 = !DILocation(line: 823, column: 3, scope: !4305)
!4311 = !DILocation(line: 824, column: 10, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 824, column: 9)
!4313 = !DILocation(line: 824, column: 9, scope: !4309)
!4314 = !DILocation(line: 823, column: 66, scope: !4309)
!4315 = !DILocation(line: 823, column: 3, scope: !4309)
!4316 = distinct !{!4316, !4310, !4317}
!4317 = !DILocation(line: 825, column: 14, scope: !4305)
!4318 = !DILocation(line: 826, column: 18, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 826, column: 3)
!4320 = !DILocation(line: 826, column: 8, scope: !4319)
!4321 = !DILocation(line: 0, scope: !4319)
!4322 = !DILocation(line: 826, column: 52, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 826, column: 3)
!4324 = !DILocation(line: 826, column: 3, scope: !4319)
!4325 = !DILocation(line: 827, column: 10, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 827, column: 9)
!4327 = !DILocation(line: 827, column: 9, scope: !4323)
!4328 = !DILocation(line: 826, column: 69, scope: !4323)
!4329 = !DILocation(line: 826, column: 3, scope: !4323)
!4330 = distinct !{!4330, !4324, !4331}
!4331 = !DILocation(line: 828, column: 14, scope: !4319)
!4332 = !DILocation(line: 831, column: 1, scope: !4292)
!4333 = distinct !DISubprogram(name: "create_new_invariant", scope: !3, file: !3, line: 692, type: !4334, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4336)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!1888, !1896, !655, !1857, !606}
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342, !4343}
!4337 = !DILocalVariable(name: "def", arg: 1, scope: !4333, file: !3, line: 692, type: !1896)
!4338 = !DILocalVariable(name: "insn", arg: 2, scope: !4333, file: !3, line: 692, type: !655)
!4339 = !DILocalVariable(name: "depends_on", arg: 3, scope: !4333, file: !3, line: 692, type: !1857)
!4340 = !DILocalVariable(name: "always_executed", arg: 4, scope: !4333, file: !3, line: 693, type: !606)
!4341 = !DILocalVariable(name: "inv", scope: !4333, file: !3, line: 695, type: !1888)
!4342 = !DILocalVariable(name: "set", scope: !4333, file: !3, line: 696, type: !655)
!4343 = !DILocalVariable(name: "speed", scope: !4333, file: !3, line: 697, type: !606)
!4344 = !DILocation(line: 0, scope: !4333)
!4345 = !DILocation(line: 695, column: 27, scope: !4333)
!4346 = !DILocation(line: 696, column: 13, scope: !4333)
!4347 = !DILocation(line: 697, column: 41, scope: !4333)
!4348 = !DILocation(line: 697, column: 16, scope: !4333)
!4349 = !DILocation(line: 699, column: 8, scope: !4333)
!4350 = !DILocation(line: 699, column: 12, scope: !4333)
!4351 = !DILocation(line: 700, column: 8, scope: !4333)
!4352 = !DILocation(line: 700, column: 24, scope: !4333)
!4353 = !DILocation(line: 701, column: 8, scope: !4333)
!4354 = !DILocation(line: 701, column: 19, scope: !4333)
!4355 = !DILocation(line: 705, column: 7, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 705, column: 7)
!4357 = !DILocation(line: 705, column: 7, scope: !4333)
!4358 = !DILocation(line: 707, column: 19, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 706, column: 5)
!4360 = !DILocation(line: 707, column: 12, scope: !4359)
!4361 = !DILocation(line: 707, column: 17, scope: !4359)
!4362 = !DILocation(line: 717, column: 42, scope: !4359)
!4363 = !DILocation(line: 717, column: 57, scope: !4359)
!4364 = !DILocation(line: 717, column: 28, scope: !4359)
!4365 = !DILocation(line: 718, column: 34, scope: !4359)
!4366 = !DILocation(line: 717, column: 12, scope: !4359)
!4367 = !DILocation(line: 717, column: 26, scope: !4359)
!4368 = !DILocation(line: 719, column: 5, scope: !4359)
!4369 = !DILocation(line: 722, column: 29, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 721, column: 5)
!4371 = !DILocation(line: 722, column: 19, scope: !4370)
!4372 = !DILocation(line: 722, column: 12, scope: !4370)
!4373 = !DILocation(line: 722, column: 17, scope: !4370)
!4374 = !DILocation(line: 723, column: 12, scope: !4370)
!4375 = !DILocation(line: 723, column: 26, scope: !4370)
!4376 = !DILocation(line: 726, column: 8, scope: !4333)
!4377 = !DILocation(line: 726, column: 13, scope: !4333)
!4378 = !DILocation(line: 727, column: 8, scope: !4333)
!4379 = !DILocation(line: 727, column: 12, scope: !4333)
!4380 = !DILocation(line: 728, column: 8, scope: !4333)
!4381 = !DILocation(line: 728, column: 19, scope: !4333)
!4382 = !DILocation(line: 729, column: 8, scope: !4333)
!4383 = !DILocation(line: 729, column: 14, scope: !4333)
!4384 = !DILocation(line: 730, column: 8, scope: !4333)
!4385 = !DILocation(line: 730, column: 13, scope: !4333)
!4386 = !DILocation(line: 732, column: 16, scope: !4333)
!4387 = !DILocation(line: 732, column: 8, scope: !4333)
!4388 = !DILocation(line: 732, column: 14, scope: !4333)
!4389 = !DILocation(line: 733, column: 8, scope: !4333)
!4390 = !DILocation(line: 733, column: 13, scope: !4333)
!4391 = !DILocation(line: 734, column: 7, scope: !4333)
!4392 = !DILocation(line: 735, column: 10, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 734, column: 7)
!4394 = !DILocation(line: 735, column: 16, scope: !4393)
!4395 = !DILocation(line: 735, column: 5, scope: !4393)
!4396 = !DILocation(line: 736, column: 3, scope: !4333)
!4397 = !DILocation(line: 738, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 738, column: 7)
!4399 = !DILocation(line: 738, column: 7, scope: !4333)
!4400 = !DILocation(line: 742, column: 9, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 739, column: 5)
!4402 = !DILocation(line: 742, column: 31, scope: !4401)
!4403 = !DILocation(line: 742, column: 43, scope: !4401)
!4404 = !DILocation(line: 740, column: 7, scope: !4401)
!4405 = !DILocation(line: 743, column: 7, scope: !4401)
!4406 = !DILocation(line: 744, column: 5, scope: !4401)
!4407 = !DILocation(line: 746, column: 3, scope: !4333)
!4408 = distinct !DISubprogram(name: "check_dependency", scope: !3, file: !3, line: 772, type: !4409, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!606, !1188, !4044, !1857}
!4411 = !{!4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419}
!4412 = !DILocalVariable(name: "bb", arg: 1, scope: !4408, file: !3, line: 772, type: !1188)
!4413 = !DILocalVariable(name: "use", arg: 2, scope: !4408, file: !3, line: 772, type: !4044)
!4414 = !DILocalVariable(name: "depends_on", arg: 3, scope: !4408, file: !3, line: 772, type: !1857)
!4415 = !DILocalVariable(name: "def", scope: !4408, file: !3, line: 774, type: !4044)
!4416 = !DILocalVariable(name: "def_bb", scope: !4408, file: !3, line: 775, type: !1188)
!4417 = !DILocalVariable(name: "defs", scope: !4408, file: !3, line: 776, type: !4056)
!4418 = !DILocalVariable(name: "def_data", scope: !4408, file: !3, line: 777, type: !1896)
!4419 = !DILocalVariable(name: "inv", scope: !4408, file: !3, line: 778, type: !1888)
!4420 = !DILocation(line: 0, scope: !4408)
!4421 = !DILocation(line: 780, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 780, column: 7)
!4423 = !DILocation(line: 780, column: 26, scope: !4422)
!4424 = !DILocation(line: 780, column: 7, scope: !4408)
!4425 = !DILocation(line: 783, column: 10, scope: !4408)
!4426 = !DILocation(line: 784, column: 8, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 784, column: 7)
!4428 = !DILocation(line: 784, column: 7, scope: !4408)
!4429 = !DILocation(line: 787, column: 13, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 787, column: 7)
!4431 = !DILocation(line: 787, column: 7, scope: !4430)
!4432 = !DILocation(line: 787, column: 7, scope: !4408)
!4433 = !DILocation(line: 790, column: 15, scope: !4408)
!4434 = !DILocation(line: 791, column: 3, scope: !4408)
!4435 = !DILocation(line: 792, column: 9, scope: !4408)
!4436 = !DILocation(line: 792, column: 25, scope: !4408)
!4437 = !DILocation(line: 793, column: 8, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 793, column: 7)
!4439 = !DILocation(line: 793, column: 7, scope: !4408)
!4440 = !DILocation(line: 796, column: 19, scope: !4408)
!4441 = !DILocation(line: 797, column: 3, scope: !4408)
!4442 = !DILocation(line: 799, column: 12, scope: !4408)
!4443 = !DILocation(line: 804, column: 8, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 804, column: 7)
!4445 = !DILocation(line: 804, column: 7, scope: !4408)
!4446 = !DILocation(line: 807, column: 41, scope: !4408)
!4447 = !DILocation(line: 807, column: 3, scope: !4408)
!4448 = !DILocation(line: 808, column: 3, scope: !4408)
!4449 = !DILocation(line: 809, column: 1, scope: !4408)
!4450 = distinct !DISubprogram(name: "VEC_invariant_p_base_length", scope: !3, file: !3, line: 173, type: !4451, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4455)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!7, !4453}
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!4455 = !{!4456}
!4456 = !DILocalVariable(name: "vec_", arg: 1, scope: !4450, file: !3, line: 173, type: !4453)
!4457 = !DILocation(line: 0, scope: !4450)
!4458 = !DILocation(line: 173, column: 1, scope: !4450)
!4459 = distinct !DISubprogram(name: "VEC_invariant_p_heap_safe_push", scope: !3, file: !3, line: 174, type: !4460, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4464)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!4462, !4463, !1887}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!4464 = !{!4465, !4466}
!4465 = !DILocalVariable(name: "vec_", arg: 1, scope: !4459, file: !3, line: 174, type: !4463)
!4466 = !DILocalVariable(name: "obj_", arg: 2, scope: !4459, file: !3, line: 174, type: !1887)
!4467 = !DILocation(line: 0, scope: !4459)
!4468 = !DILocation(line: 174, column: 1, scope: !4459)
!4469 = distinct !DISubprogram(name: "VEC_invariant_p_heap_reserve", scope: !3, file: !3, line: 174, type: !4470, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!607, !4463, !607}
!4472 = !{!4473, !4474, !4475}
!4473 = !DILocalVariable(name: "vec_", arg: 1, scope: !4469, file: !3, line: 174, type: !4463)
!4474 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4469, file: !3, line: 174, type: !607)
!4475 = !DILocalVariable(name: "extend", scope: !4469, file: !3, line: 174, type: !607)
!4476 = !DILocation(line: 0, scope: !4469)
!4477 = !DILocation(line: 174, column: 1, scope: !4469)
!4478 = !DILocation(line: 174, column: 1, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 174, column: 1)
!4480 = distinct !DISubprogram(name: "VEC_invariant_p_base_quick_push", scope: !3, file: !3, line: 173, type: !4481, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4484)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!4462, !4483, !1887}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!4484 = !{!4485, !4486, !4487}
!4485 = !DILocalVariable(name: "vec_", arg: 1, scope: !4480, file: !3, line: 173, type: !4483)
!4486 = !DILocalVariable(name: "obj_", arg: 2, scope: !4480, file: !3, line: 173, type: !1887)
!4487 = !DILocalVariable(name: "slot_", scope: !4480, file: !3, line: 173, type: !4462)
!4488 = !DILocation(line: 0, scope: !4480)
!4489 = !DILocation(line: 173, column: 1, scope: !4480)
!4490 = distinct !DISubprogram(name: "VEC_invariant_p_base_space", scope: !3, file: !3, line: 173, type: !4491, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!607, !4483, !607}
!4493 = !{!4494, !4495}
!4494 = !DILocalVariable(name: "vec_", arg: 1, scope: !4490, file: !3, line: 173, type: !4483)
!4495 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4490, file: !3, line: 173, type: !607)
!4496 = !DILocation(line: 0, scope: !4490)
!4497 = !DILocation(line: 173, column: 1, scope: !4490)
!4498 = distinct !DISubprogram(name: "invariant_for_use", scope: !3, file: !3, line: 267, type: !4499, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4501)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!1888, !4044}
!4501 = !{!4502, !4503, !4504, !4505, !4506}
!4502 = !DILocalVariable(name: "use", arg: 1, scope: !4498, file: !3, line: 267, type: !4044)
!4503 = !DILocalVariable(name: "defs", scope: !4498, file: !3, line: 269, type: !4056)
!4504 = !DILocalVariable(name: "def", scope: !4498, file: !3, line: 270, type: !4044)
!4505 = !DILocalVariable(name: "bb", scope: !4498, file: !3, line: 271, type: !1188)
!4506 = !DILocalVariable(name: "def_bb", scope: !4498, file: !3, line: 271, type: !1188)
!4507 = !DILocation(line: 0, scope: !4498)
!4508 = !DILocation(line: 271, column: 20, scope: !4498)
!4509 = !DILocation(line: 273, column: 26, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 273, column: 7)
!4511 = !DILocation(line: 273, column: 7, scope: !4498)
!4512 = !DILocation(line: 276, column: 10, scope: !4498)
!4513 = !DILocation(line: 277, column: 8, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 277, column: 7)
!4515 = !DILocation(line: 277, column: 13, scope: !4514)
!4516 = !DILocation(line: 277, column: 22, scope: !4514)
!4517 = !DILocation(line: 277, column: 16, scope: !4514)
!4518 = !DILocation(line: 277, column: 7, scope: !4498)
!4519 = !DILocation(line: 279, column: 15, scope: !4498)
!4520 = !DILocation(line: 280, column: 3, scope: !4498)
!4521 = !DILocation(line: 281, column: 8, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 281, column: 7)
!4523 = !DILocation(line: 281, column: 24, scope: !4522)
!4524 = !DILocation(line: 281, column: 7, scope: !4498)
!4525 = !DILocation(line: 284, column: 12, scope: !4498)
!4526 = !DILocation(line: 285, column: 8, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 285, column: 7)
!4528 = !DILocation(line: 285, column: 7, scope: !4498)
!4529 = !DILocation(line: 287, column: 10, scope: !4498)
!4530 = !DILocation(line: 287, column: 26, scope: !4498)
!4531 = !DILocation(line: 287, column: 3, scope: !4498)
!4532 = !DILocation(line: 288, column: 1, scope: !4498)
!4533 = distinct !DISubprogram(name: "record_use", scope: !3, file: !3, line: 752, type: !4534, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4536)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{null, !1896, !4044}
!4536 = !{!4537, !4538, !4539}
!4537 = !DILocalVariable(name: "def", arg: 1, scope: !4533, file: !3, line: 752, type: !1896)
!4538 = !DILocalVariable(name: "use", arg: 2, scope: !4533, file: !3, line: 752, type: !4044)
!4539 = !DILocalVariable(name: "u", scope: !4533, file: !3, line: 754, type: !1900)
!4540 = !DILocation(line: 0, scope: !4533)
!4541 = !DILocation(line: 754, column: 19, scope: !4533)
!4542 = !DILocation(line: 756, column: 12, scope: !4533)
!4543 = !DILocation(line: 756, column: 6, scope: !4533)
!4544 = !DILocation(line: 756, column: 10, scope: !4533)
!4545 = !DILocation(line: 757, column: 13, scope: !4533)
!4546 = !DILocation(line: 757, column: 6, scope: !4533)
!4547 = !DILocation(line: 757, column: 11, scope: !4533)
!4548 = !DILocation(line: 758, column: 20, scope: !4533)
!4549 = !DILocation(line: 758, column: 38, scope: !4533)
!4550 = !DILocation(line: 759, column: 6, scope: !4533)
!4551 = !DILocation(line: 759, column: 27, scope: !4533)
!4552 = !DILocation(line: 758, column: 6, scope: !4533)
!4553 = !DILocation(line: 758, column: 17, scope: !4533)
!4554 = !DILocation(line: 760, column: 18, scope: !4533)
!4555 = !DILocation(line: 760, column: 6, scope: !4533)
!4556 = !DILocation(line: 760, column: 11, scope: !4533)
!4557 = !DILocation(line: 761, column: 13, scope: !4533)
!4558 = !DILocation(line: 762, column: 8, scope: !4533)
!4559 = !DILocation(line: 762, column: 14, scope: !4533)
!4560 = !DILocation(line: 763, column: 10, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 763, column: 7)
!4562 = !DILocation(line: 763, column: 7, scope: !4561)
!4563 = !DILocation(line: 763, column: 7, scope: !4533)
!4564 = !DILocation(line: 764, column: 10, scope: !4561)
!4565 = !DILocation(line: 764, column: 21, scope: !4561)
!4566 = !DILocation(line: 764, column: 5, scope: !4561)
!4567 = !DILocation(line: 765, column: 1, scope: !4533)
!4568 = distinct !DISubprogram(name: "hash_invariant_expr", scope: !3, file: !3, line: 438, type: !1108, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4569)
!4569 = !{!4570, !4571}
!4570 = !DILocalVariable(name: "e", arg: 1, scope: !4568, file: !3, line: 438, type: !1111)
!4571 = !DILocalVariable(name: "entry", scope: !4568, file: !3, line: 440, type: !4572)
!4572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1919)
!4573 = !DILocation(line: 0, scope: !4568)
!4574 = !DILocation(line: 443, column: 17, scope: !4568)
!4575 = !DILocation(line: 443, column: 3, scope: !4568)
!4576 = distinct !DISubprogram(name: "eq_invariant_expr", scope: !3, file: !3, line: 449, type: !1116, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4577)
!4577 = !{!4578, !4579, !4580, !4581}
!4578 = !DILocalVariable(name: "e1", arg: 1, scope: !4576, file: !3, line: 449, type: !1111)
!4579 = !DILocalVariable(name: "e2", arg: 2, scope: !4576, file: !3, line: 449, type: !1111)
!4580 = !DILocalVariable(name: "entry1", scope: !4576, file: !3, line: 451, type: !4572)
!4581 = !DILocalVariable(name: "entry2", scope: !4576, file: !3, line: 453, type: !4572)
!4582 = !DILocation(line: 0, scope: !4576)
!4583 = !DILocation(line: 456, column: 15, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 456, column: 7)
!4585 = !DILocation(line: 456, column: 31, scope: !4584)
!4586 = !DILocation(line: 456, column: 20, scope: !4584)
!4587 = !DILocation(line: 456, column: 7, scope: !4576)
!4588 = !DILocation(line: 459, column: 42, scope: !4576)
!4589 = !DILocation(line: 459, column: 47, scope: !4576)
!4590 = !DILocation(line: 459, column: 61, scope: !4576)
!4591 = !DILocation(line: 460, column: 14, scope: !4576)
!4592 = !DILocation(line: 460, column: 19, scope: !4576)
!4593 = !DILocation(line: 460, column: 33, scope: !4576)
!4594 = !DILocation(line: 459, column: 10, scope: !4576)
!4595 = !DILocation(line: 459, column: 3, scope: !4576)
!4596 = !DILocation(line: 461, column: 1, scope: !4576)
!4597 = distinct !DISubprogram(name: "VEC_invariant_p_base_iterate", scope: !3, file: !3, line: 173, type: !4598, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!607, !4453, !7, !4462}
!4600 = !{!4601, !4602, !4603}
!4601 = !DILocalVariable(name: "vec_", arg: 1, scope: !4597, file: !3, line: 173, type: !4453)
!4602 = !DILocalVariable(name: "ix_", arg: 2, scope: !4597, file: !3, line: 173, type: !7)
!4603 = !DILocalVariable(name: "ptr", arg: 3, scope: !4597, file: !3, line: 173, type: !4462)
!4604 = !DILocation(line: 0, scope: !4597)
!4605 = !DILocation(line: 173, column: 1, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 173, column: 1)
!4607 = !DILocation(line: 173, column: 1, scope: !4597)
!4608 = !DILocation(line: 173, column: 1, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 173, column: 1)
!4610 = !DILocation(line: 173, column: 1, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 173, column: 1)
!4612 = !DILocation(line: 0, scope: !4606)
!4613 = distinct !DISubprogram(name: "find_identical_invariants", scope: !3, file: !3, line: 499, type: !4614, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !1100, !1888}
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624}
!4617 = !DILocalVariable(name: "eq", arg: 1, scope: !4613, file: !3, line: 499, type: !1100)
!4618 = !DILocalVariable(name: "inv", arg: 2, scope: !4613, file: !3, line: 499, type: !1888)
!4619 = !DILocalVariable(name: "depno", scope: !4613, file: !3, line: 501, type: !7)
!4620 = !DILocalVariable(name: "bi", scope: !4613, file: !3, line: 502, type: !2458)
!4621 = !DILocalVariable(name: "dep", scope: !4613, file: !3, line: 503, type: !1888)
!4622 = !DILocalVariable(name: "expr", scope: !4613, file: !3, line: 504, type: !655)
!4623 = !DILocalVariable(name: "set", scope: !4613, file: !3, line: 504, type: !655)
!4624 = !DILocalVariable(name: "mode", scope: !4613, file: !3, line: 505, type: !5)
!4625 = !DILocation(line: 0, scope: !4613)
!4626 = !DILocation(line: 501, column: 3, scope: !4613)
!4627 = !DILocation(line: 502, column: 3, scope: !4613)
!4628 = !DILocation(line: 507, column: 12, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 507, column: 7)
!4630 = !DILocation(line: 507, column: 17, scope: !4629)
!4631 = !DILocation(line: 507, column: 7, scope: !4613)
!4632 = !DILocation(line: 510, column: 3, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 510, column: 3)
!4634 = !DILocation(line: 510, column: 3, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 510, column: 3)
!4636 = !DILocation(line: 512, column: 13, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 511, column: 5)
!4638 = !DILocation(line: 513, column: 7, scope: !4637)
!4639 = distinct !{!4639, !4632, !4640}
!4640 = !DILocation(line: 514, column: 5, scope: !4633)
!4641 = !DILocation(line: 516, column: 9, scope: !4613)
!4642 = !DILocation(line: 517, column: 10, scope: !4613)
!4643 = !DILocation(line: 518, column: 10, scope: !4613)
!4644 = !DILocation(line: 519, column: 12, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 519, column: 7)
!4646 = !DILocation(line: 519, column: 7, scope: !4613)
!4647 = !DILocation(line: 520, column: 12, scope: !4645)
!4648 = !DILocation(line: 520, column: 5, scope: !4645)
!4649 = !DILocation(line: 521, column: 15, scope: !4613)
!4650 = !DILocation(line: 521, column: 57, scope: !4613)
!4651 = !DILocation(line: 521, column: 13, scope: !4613)
!4652 = !DILocation(line: 523, column: 7, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 523, column: 7)
!4654 = !DILocation(line: 523, column: 17, scope: !4653)
!4655 = !DILocation(line: 523, column: 38, scope: !4653)
!4656 = !DILocation(line: 523, column: 30, scope: !4653)
!4657 = !DILocation(line: 523, column: 7, scope: !4613)
!4658 = !DILocation(line: 524, column: 5, scope: !4653)
!4659 = !DILocation(line: 527, column: 1, scope: !4613)
!4660 = distinct !DISubprogram(name: "invariant_expr_equal_p", scope: !3, file: !3, line: 349, type: !4661, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!606, !655, !655, !655, !655}
!4663 = !{!4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677}
!4664 = !DILocalVariable(name: "insn1", arg: 1, scope: !4660, file: !3, line: 349, type: !655)
!4665 = !DILocalVariable(name: "e1", arg: 2, scope: !4660, file: !3, line: 349, type: !655)
!4666 = !DILocalVariable(name: "insn2", arg: 3, scope: !4660, file: !3, line: 349, type: !655)
!4667 = !DILocalVariable(name: "e2", arg: 4, scope: !4660, file: !3, line: 349, type: !655)
!4668 = !DILocalVariable(name: "code", scope: !4660, file: !3, line: 351, type: !397)
!4669 = !DILocalVariable(name: "i", scope: !4660, file: !3, line: 352, type: !607)
!4670 = !DILocalVariable(name: "j", scope: !4660, file: !3, line: 352, type: !607)
!4671 = !DILocalVariable(name: "fmt", scope: !4660, file: !3, line: 353, type: !612)
!4672 = !DILocalVariable(name: "use1", scope: !4660, file: !3, line: 354, type: !4044)
!4673 = !DILocalVariable(name: "use2", scope: !4660, file: !3, line: 354, type: !4044)
!4674 = !DILocalVariable(name: "inv1", scope: !4660, file: !3, line: 355, type: !1888)
!4675 = !DILocalVariable(name: "inv2", scope: !4660, file: !3, line: 355, type: !1888)
!4676 = !DILocalVariable(name: "sub1", scope: !4660, file: !3, line: 356, type: !655)
!4677 = !DILocalVariable(name: "sub2", scope: !4660, file: !3, line: 356, type: !655)
!4678 = !DILocation(line: 0, scope: !4660)
!4679 = !DILocation(line: 351, column: 24, scope: !4660)
!4680 = !DILocation(line: 361, column: 15, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 361, column: 7)
!4682 = !DILocation(line: 361, column: 12, scope: !4681)
!4683 = !DILocation(line: 361, column: 29, scope: !4681)
!4684 = !DILocation(line: 361, column: 46, scope: !4681)
!4685 = !DILocation(line: 361, column: 7, scope: !4660)
!4686 = !DILocation(line: 364, column: 3, scope: !4660)
!4687 = !DILocation(line: 372, column: 14, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 365, column: 5)
!4689 = !DILocation(line: 372, column: 7, scope: !4688)
!4690 = !DILocation(line: 375, column: 14, scope: !4688)
!4691 = !DILocation(line: 376, column: 14, scope: !4688)
!4692 = !DILocation(line: 377, column: 11, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 377, column: 11)
!4694 = !DILocation(line: 377, column: 11, scope: !4688)
!4695 = !DILocation(line: 378, column: 9, scope: !4693)
!4696 = !DILocation(line: 378, column: 2, scope: !4693)
!4697 = !DILocation(line: 379, column: 11, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 379, column: 11)
!4699 = !DILocation(line: 379, column: 11, scope: !4688)
!4700 = !DILocation(line: 380, column: 9, scope: !4698)
!4701 = !DILocation(line: 380, column: 2, scope: !4698)
!4702 = !DILocation(line: 382, column: 12, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 382, column: 11)
!4704 = !DILocation(line: 382, column: 21, scope: !4703)
!4705 = !DILocation(line: 382, column: 17, scope: !4703)
!4706 = !DILocation(line: 383, column: 9, scope: !4703)
!4707 = !DILocation(line: 383, column: 2, scope: !4703)
!4708 = !DILocation(line: 385, column: 17, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 385, column: 11)
!4710 = !DILocation(line: 388, column: 7, scope: !4688)
!4711 = !DILocation(line: 389, column: 7, scope: !4688)
!4712 = !DILocation(line: 390, column: 34, scope: !4688)
!4713 = !DILocation(line: 390, column: 20, scope: !4688)
!4714 = !DILocation(line: 390, column: 25, scope: !4688)
!4715 = !DILocation(line: 390, column: 14, scope: !4688)
!4716 = !DILocation(line: 390, column: 7, scope: !4688)
!4717 = !DILocation(line: 396, column: 9, scope: !4660)
!4718 = !DILocation(line: 397, column: 12, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 397, column: 3)
!4720 = !DILocation(line: 0, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 424, column: 8)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 423, column: 2)
!4723 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 422, column: 16)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 408, column: 16)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 399, column: 11)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 398, column: 5)
!4727 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 397, column: 3)
!4728 = !DILocation(line: 397, column: 8, scope: !4719)
!4729 = !DILocation(line: 0, scope: !4719)
!4730 = !DILocation(line: 397, column: 41, scope: !4727)
!4731 = !DILocation(line: 397, column: 3, scope: !4719)
!4732 = !DILocation(line: 399, column: 11, scope: !4725)
!4733 = !DILocation(line: 399, column: 18, scope: !4725)
!4734 = !DILocation(line: 399, column: 11, scope: !4726)
!4735 = !DILocation(line: 401, column: 11, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 400, column: 2)
!4737 = !DILocation(line: 402, column: 11, scope: !4736)
!4738 = !DILocation(line: 404, column: 9, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 404, column: 8)
!4740 = !DILocation(line: 404, column: 8, scope: !4736)
!4741 = !DILocation(line: 408, column: 23, scope: !4724)
!4742 = !DILocation(line: 408, column: 16, scope: !4725)
!4743 = !DILocation(line: 410, column: 8, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 410, column: 8)
!4745 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 409, column: 2)
!4746 = !DILocation(line: 410, column: 27, scope: !4744)
!4747 = !DILocation(line: 410, column: 24, scope: !4744)
!4748 = !DILocation(line: 410, column: 8, scope: !4745)
!4749 = !DILocation(line: 413, column: 4, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 413, column: 4)
!4751 = !DILocation(line: 413, column: 20, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 413, column: 4)
!4753 = !DILocation(line: 413, column: 18, scope: !4752)
!4754 = !DILocation(line: 415, column: 15, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 414, column: 6)
!4756 = !DILocation(line: 416, column: 15, scope: !4755)
!4757 = !DILocation(line: 418, column: 13, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 418, column: 12)
!4759 = !DILocation(line: 418, column: 12, scope: !4755)
!4760 = !DILocation(line: 413, column: 38, scope: !4752)
!4761 = !DILocation(line: 0, scope: !4752)
!4762 = !DILocation(line: 413, column: 4, scope: !4752)
!4763 = distinct !{!4763, !4749, !4764}
!4764 = !DILocation(line: 420, column: 6, scope: !4750)
!4765 = !DILocation(line: 422, column: 23, scope: !4723)
!4766 = !DILocation(line: 422, column: 30, scope: !4723)
!4767 = !DILocation(line: 422, column: 40, scope: !4723)
!4768 = !DILocation(line: 422, column: 16, scope: !4724)
!4769 = !DILocation(line: 424, column: 8, scope: !4721)
!4770 = !DILocation(line: 424, column: 24, scope: !4721)
!4771 = !DILocation(line: 424, column: 21, scope: !4721)
!4772 = !DILocation(line: 424, column: 8, scope: !4722)
!4773 = !DILocation(line: 397, column: 3, scope: !4727)
!4774 = distinct !{!4774, !4731, !4775}
!4775 = !DILocation(line: 430, column: 5, scope: !4719)
!4776 = !DILocation(line: 433, column: 1, scope: !4660)
!4777 = distinct !DISubprogram(name: "VEC_invariant_p_base_index", scope: !3, file: !3, line: 173, type: !4778, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!1887, !4453, !7}
!4780 = !{!4781, !4782}
!4781 = !DILocalVariable(name: "vec_", arg: 1, scope: !4777, file: !3, line: 173, type: !4453)
!4782 = !DILocalVariable(name: "ix_", arg: 2, scope: !4777, file: !3, line: 173, type: !7)
!4783 = !DILocation(line: 0, scope: !4777)
!4784 = !DILocation(line: 173, column: 1, scope: !4777)
!4785 = distinct !DISubprogram(name: "find_or_insert_inv", scope: !3, file: !3, line: 468, type: !4786, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4788)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!1888, !1100, !655, !5, !1888}
!4788 = !{!4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796}
!4789 = !DILocalVariable(name: "eq", arg: 1, scope: !4785, file: !3, line: 468, type: !1100)
!4790 = !DILocalVariable(name: "expr", arg: 2, scope: !4785, file: !3, line: 468, type: !655)
!4791 = !DILocalVariable(name: "mode", arg: 3, scope: !4785, file: !3, line: 468, type: !5)
!4792 = !DILocalVariable(name: "inv", arg: 4, scope: !4785, file: !3, line: 469, type: !1888)
!4793 = !DILocalVariable(name: "hash", scope: !4785, file: !3, line: 471, type: !1110)
!4794 = !DILocalVariable(name: "entry", scope: !4785, file: !3, line: 472, type: !1927)
!4795 = !DILocalVariable(name: "pentry", scope: !4785, file: !3, line: 473, type: !1921)
!4796 = !DILocalVariable(name: "slot", scope: !4785, file: !3, line: 474, type: !1124)
!4797 = !DILocation(line: 0, scope: !4785)
!4798 = !DILocation(line: 471, column: 48, scope: !4785)
!4799 = !DILocation(line: 471, column: 20, scope: !4785)
!4800 = !DILocation(line: 473, column: 3, scope: !4785)
!4801 = !DILocation(line: 476, column: 10, scope: !4785)
!4802 = !DILocation(line: 476, column: 15, scope: !4785)
!4803 = !DILocation(line: 477, column: 10, scope: !4785)
!4804 = !DILocation(line: 477, column: 14, scope: !4785)
!4805 = !DILocation(line: 478, column: 10, scope: !4785)
!4806 = !DILocation(line: 478, column: 15, scope: !4785)
!4807 = !DILocation(line: 479, column: 10, scope: !4785)
!4808 = !DILocation(line: 480, column: 43, scope: !4785)
!4809 = !DILocation(line: 482, column: 7, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 482, column: 7)
!4811 = !DILocation(line: 482, column: 7, scope: !4785)
!4812 = !DILocation(line: 483, column: 19, scope: !4810)
!4813 = !DILocation(line: 483, column: 5, scope: !4810)
!4814 = !DILocation(line: 485, column: 11, scope: !4785)
!4815 = !DILocation(line: 486, column: 10, scope: !4785)
!4816 = !DILocation(line: 486, column: 14, scope: !4785)
!4817 = !DILocation(line: 487, column: 10, scope: !4785)
!4818 = !DILocation(line: 487, column: 15, scope: !4785)
!4819 = !DILocation(line: 488, column: 10, scope: !4785)
!4820 = !DILocation(line: 488, column: 15, scope: !4785)
!4821 = !DILocation(line: 489, column: 10, scope: !4785)
!4822 = !DILocation(line: 489, column: 15, scope: !4785)
!4823 = !DILocation(line: 490, column: 9, scope: !4785)
!4824 = !DILocation(line: 492, column: 3, scope: !4785)
!4825 = !DILocation(line: 493, column: 1, scope: !4785)
!4826 = distinct !DISubprogram(name: "hash_invariant_expr_1", scope: !3, file: !3, line: 293, type: !4827, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4829)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!1110, !655, !655}
!4829 = !{!4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839}
!4830 = !DILocalVariable(name: "insn", arg: 1, scope: !4826, file: !3, line: 293, type: !655)
!4831 = !DILocalVariable(name: "x", arg: 2, scope: !4826, file: !3, line: 293, type: !655)
!4832 = !DILocalVariable(name: "code", scope: !4826, file: !3, line: 295, type: !397)
!4833 = !DILocalVariable(name: "i", scope: !4826, file: !3, line: 296, type: !607)
!4834 = !DILocalVariable(name: "j", scope: !4826, file: !3, line: 296, type: !607)
!4835 = !DILocalVariable(name: "fmt", scope: !4826, file: !3, line: 297, type: !612)
!4836 = !DILocalVariable(name: "val", scope: !4826, file: !3, line: 298, type: !1110)
!4837 = !DILocalVariable(name: "do_not_record_p", scope: !4826, file: !3, line: 299, type: !607)
!4838 = !DILocalVariable(name: "use", scope: !4826, file: !3, line: 300, type: !4044)
!4839 = !DILocalVariable(name: "inv", scope: !4826, file: !3, line: 301, type: !1888)
!4840 = !DILocation(line: 0, scope: !4826)
!4841 = !DILocation(line: 295, column: 24, scope: !4826)
!4842 = !DILocation(line: 299, column: 3, scope: !4826)
!4843 = !DILocation(line: 303, column: 3, scope: !4826)
!4844 = !DILocation(line: 311, column: 27, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 304, column: 5)
!4846 = !DILocation(line: 311, column: 14, scope: !4845)
!4847 = !DILocation(line: 311, column: 7, scope: !4845)
!4848 = !DILocation(line: 314, column: 13, scope: !4845)
!4849 = !DILocation(line: 315, column: 12, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 315, column: 11)
!4851 = !DILocation(line: 315, column: 11, scope: !4845)
!4852 = !DILocation(line: 316, column: 22, scope: !4850)
!4853 = !DILocation(line: 316, column: 9, scope: !4850)
!4854 = !DILocation(line: 316, column: 2, scope: !4850)
!4855 = !DILocation(line: 317, column: 13, scope: !4845)
!4856 = !DILocation(line: 318, column: 12, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 318, column: 11)
!4858 = !DILocation(line: 318, column: 11, scope: !4845)
!4859 = !DILocation(line: 319, column: 22, scope: !4857)
!4860 = !DILocation(line: 319, column: 9, scope: !4857)
!4861 = !DILocation(line: 319, column: 2, scope: !4857)
!4862 = !DILocation(line: 321, column: 7, scope: !4845)
!4863 = !DILocation(line: 322, column: 19, scope: !4845)
!4864 = !DILocation(line: 322, column: 7, scope: !4845)
!4865 = !DILocation(line: 328, column: 9, scope: !4826)
!4866 = !DILocation(line: 329, column: 12, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 329, column: 3)
!4868 = !DILocation(line: 0, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 338, column: 16)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 333, column: 16)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 331, column: 11)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 330, column: 5)
!4873 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 329, column: 3)
!4874 = !DILocation(line: 329, column: 8, scope: !4867)
!4875 = !DILocation(line: 0, scope: !4867)
!4876 = !DILocation(line: 329, column: 41, scope: !4873)
!4877 = !DILocation(line: 329, column: 3, scope: !4867)
!4878 = !DILocation(line: 331, column: 11, scope: !4871)
!4879 = !DILocation(line: 331, column: 18, scope: !4871)
!4880 = !DILocation(line: 331, column: 11, scope: !4872)
!4881 = !DILocation(line: 332, column: 38, scope: !4871)
!4882 = !DILocation(line: 332, column: 9, scope: !4871)
!4883 = !DILocation(line: 332, column: 6, scope: !4871)
!4884 = !DILocation(line: 332, column: 2, scope: !4871)
!4885 = !DILocation(line: 333, column: 23, scope: !4870)
!4886 = !DILocation(line: 333, column: 16, scope: !4871)
!4887 = !DILocation(line: 0, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 335, column: 4)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 335, column: 4)
!4890 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 334, column: 2)
!4891 = !DILocation(line: 335, column: 4, scope: !4889)
!4892 = !DILocation(line: 0, scope: !4889)
!4893 = !DILocation(line: 335, column: 20, scope: !4888)
!4894 = !DILocation(line: 335, column: 18, scope: !4888)
!4895 = !DILocation(line: 336, column: 42, scope: !4888)
!4896 = !DILocation(line: 336, column: 13, scope: !4888)
!4897 = !DILocation(line: 336, column: 10, scope: !4888)
!4898 = !DILocation(line: 335, column: 37, scope: !4888)
!4899 = !DILocation(line: 335, column: 4, scope: !4888)
!4900 = distinct !{!4900, !4891, !4901}
!4901 = !DILocation(line: 336, column: 59, scope: !4889)
!4902 = !DILocation(line: 338, column: 23, scope: !4869)
!4903 = !DILocation(line: 338, column: 30, scope: !4869)
!4904 = !DILocation(line: 338, column: 40, scope: !4869)
!4905 = !DILocation(line: 338, column: 16, scope: !4870)
!4906 = !DILocation(line: 339, column: 9, scope: !4869)
!4907 = !DILocation(line: 339, column: 6, scope: !4869)
!4908 = !DILocation(line: 339, column: 2, scope: !4869)
!4909 = !DILocation(line: 329, column: 3, scope: !4873)
!4910 = distinct !{!4910, !4877, !4911}
!4911 = !DILocation(line: 340, column: 5, scope: !4867)
!4912 = !DILocation(line: 343, column: 1, scope: !4826)
!4913 = distinct !DISubprogram(name: "best_gain_for_invariant", scope: !3, file: !3, line: 1247, type: !4914, scopeLine: 1249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4916)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!607, !1918, !2958, !2958, !7, !606}
!4916 = !{!4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927}
!4917 = !DILocalVariable(name: "best", arg: 1, scope: !4913, file: !3, line: 1247, type: !1918)
!4918 = !DILocalVariable(name: "regs_needed", arg: 2, scope: !4913, file: !3, line: 1247, type: !2958)
!4919 = !DILocalVariable(name: "new_regs", arg: 3, scope: !4913, file: !3, line: 1248, type: !2958)
!4920 = !DILocalVariable(name: "regs_used", arg: 4, scope: !4913, file: !3, line: 1248, type: !7)
!4921 = !DILocalVariable(name: "speed", arg: 5, scope: !4913, file: !3, line: 1248, type: !606)
!4922 = !DILocalVariable(name: "inv", scope: !4913, file: !3, line: 1250, type: !1888)
!4923 = !DILocalVariable(name: "i", scope: !4913, file: !3, line: 1251, type: !607)
!4924 = !DILocalVariable(name: "gain", scope: !4913, file: !3, line: 1251, type: !607)
!4925 = !DILocalVariable(name: "again", scope: !4913, file: !3, line: 1251, type: !607)
!4926 = !DILocalVariable(name: "aregs_needed", scope: !4913, file: !3, line: 1252, type: !3435)
!4927 = !DILocalVariable(name: "invno", scope: !4913, file: !3, line: 1252, type: !7)
!4928 = !DILocation(line: 0, scope: !4913)
!4929 = !DILocation(line: 1250, column: 3, scope: !4913)
!4930 = !DILocation(line: 1252, column: 3, scope: !4913)
!4931 = !DILocation(line: 1252, column: 12, scope: !4913)
!4932 = !DILocation(line: 0, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 1255, column: 5)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 1254, column: 3)
!4935 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 1254, column: 3)
!4936 = !DILocation(line: 0, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 1266, column: 2)
!4938 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 1265, column: 11)
!4939 = !DILocation(line: 1254, column: 8, scope: !4935)
!4940 = !DILocation(line: 1251, column: 10, scope: !4913)
!4941 = !DILocation(line: 0, scope: !4935)
!4942 = !DILocation(line: 1254, column: 19, scope: !4934)
!4943 = !DILocation(line: 1254, column: 3, scope: !4935)
!4944 = !DILocation(line: 1256, column: 11, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 1256, column: 11)
!4946 = !DILocation(line: 1256, column: 16, scope: !4945)
!4947 = !DILocation(line: 1256, column: 11, scope: !4933)
!4948 = !DILocation(line: 1260, column: 16, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 1260, column: 11)
!4950 = !DILocation(line: 1260, column: 29, scope: !4949)
!4951 = !DILocation(line: 1260, column: 21, scope: !4949)
!4952 = !DILocation(line: 1260, column: 11, scope: !4933)
!4953 = !DILocation(line: 1263, column: 15, scope: !4933)
!4954 = !DILocation(line: 1265, column: 17, scope: !4938)
!4955 = !DILocation(line: 1265, column: 11, scope: !4933)
!4956 = !DILocation(line: 1268, column: 12, scope: !4937)
!4957 = !DILocation(line: 1268, column: 10, scope: !4937)
!4958 = !DILocation(line: 1269, column: 10, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 1269, column: 8)
!4960 = !DILocation(line: 1269, column: 8, scope: !4937)
!4961 = !DILocation(line: 1273, column: 8, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 1273, column: 8)
!4963 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 1272, column: 6)
!4964 = !DILocation(line: 1270, column: 23, scope: !4959)
!4965 = !DILocation(line: 1270, column: 21, scope: !4959)
!4966 = !DILocation(line: 1270, column: 6, scope: !4959)
!4967 = !DILocation(line: 0, scope: !4962)
!4968 = !DILocation(line: 1273, column: 24, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 1273, column: 8)
!4970 = !DILocation(line: 1273, column: 22, scope: !4969)
!4971 = !DILocation(line: 1275, column: 20, scope: !4969)
!4972 = !DILocation(line: 1275, column: 7, scope: !4969)
!4973 = !DILocation(line: 1274, column: 3, scope: !4969)
!4974 = !DILocation(line: 1275, column: 5, scope: !4969)
!4975 = !DILocation(line: 1273, column: 51, scope: !4969)
!4976 = !DILocation(line: 1273, column: 8, scope: !4969)
!4977 = distinct !{!4977, !4961, !4978}
!4978 = !DILocation(line: 1275, column: 42, scope: !4962)
!4979 = !DILocation(line: 1254, column: 75, scope: !4934)
!4980 = !DILocation(line: 1254, column: 3, scope: !4934)
!4981 = distinct !{!4981, !4943, !4982}
!4982 = !DILocation(line: 1278, column: 5, scope: !4935)
!4983 = !DILocation(line: 1281, column: 1, scope: !4913)
!4984 = !DILocation(line: 1280, column: 3, scope: !4913)
!4985 = distinct !DISubprogram(name: "set_move_mark", scope: !3, file: !3, line: 1286, type: !4986, scopeLine: 1287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4988)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{null, !7, !607}
!4988 = !{!4989, !4990, !4991, !4992}
!4989 = !DILocalVariable(name: "invno", arg: 1, scope: !4985, file: !3, line: 1286, type: !7)
!4990 = !DILocalVariable(name: "gain", arg: 2, scope: !4985, file: !3, line: 1286, type: !607)
!4991 = !DILocalVariable(name: "inv", scope: !4985, file: !3, line: 1288, type: !1888)
!4992 = !DILocalVariable(name: "bi", scope: !4985, file: !3, line: 1289, type: !2458)
!4993 = !DILocation(line: 0, scope: !4985)
!4994 = !DILocation(line: 1288, column: 27, scope: !4985)
!4995 = !DILocation(line: 1289, column: 3, scope: !4985)
!4996 = !DILocation(line: 1292, column: 9, scope: !4985)
!4997 = !DILocation(line: 1294, column: 12, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 1294, column: 7)
!4999 = !DILocation(line: 1294, column: 7, scope: !4998)
!5000 = !DILocation(line: 1294, column: 7, scope: !4985)
!5001 = !DILocation(line: 1296, column: 13, scope: !4985)
!5002 = !DILocation(line: 1298, column: 7, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 1298, column: 7)
!5004 = !DILocation(line: 1298, column: 7, scope: !4985)
!5005 = !DILocation(line: 1300, column: 16, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 1300, column: 11)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 1299, column: 5)
!5008 = !DILocation(line: 1300, column: 11, scope: !5007)
!5009 = !DILocation(line: 1301, column: 2, scope: !5006)
!5010 = !DILocation(line: 1304, column: 2, scope: !5006)
!5011 = !DILocation(line: 1308, column: 3, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 1308, column: 3)
!5013 = !DILocation(line: 1308, column: 3, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 1308, column: 3)
!5015 = !DILocation(line: 1310, column: 22, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 1309, column: 5)
!5017 = !DILocation(line: 1310, column: 7, scope: !5016)
!5018 = distinct !{!5018, !5011, !5019}
!5019 = !DILocation(line: 1311, column: 5, scope: !5012)
!5020 = !DILocation(line: 1312, column: 1, scope: !4985)
!5021 = distinct !DISubprogram(name: "gain_for_invariant", scope: !3, file: !3, line: 1179, type: !5022, scopeLine: 1181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5024)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!607, !1888, !2958, !2958, !7, !606}
!5024 = !{!5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5035}
!5025 = !DILocalVariable(name: "inv", arg: 1, scope: !5021, file: !3, line: 1179, type: !1888)
!5026 = !DILocalVariable(name: "regs_needed", arg: 2, scope: !5021, file: !3, line: 1179, type: !2958)
!5027 = !DILocalVariable(name: "new_regs", arg: 3, scope: !5021, file: !3, line: 1180, type: !2958)
!5028 = !DILocalVariable(name: "regs_used", arg: 4, scope: !5021, file: !3, line: 1180, type: !7)
!5029 = !DILocalVariable(name: "speed", arg: 5, scope: !5021, file: !3, line: 1180, type: !606)
!5030 = !DILocalVariable(name: "comp_cost", scope: !5021, file: !3, line: 1182, type: !607)
!5031 = !DILocalVariable(name: "size_cost", scope: !5021, file: !3, line: 1182, type: !607)
!5032 = !DILocalVariable(name: "i", scope: !5033, file: !3, line: 1197, type: !607)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 1196, column: 5)
!5034 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 1188, column: 7)
!5035 = !DILocalVariable(name: "cover_class", scope: !5033, file: !3, line: 1198, type: !574)
!5036 = !DILocation(line: 0, scope: !5021)
!5037 = !DILocation(line: 1182, column: 3, scope: !5021)
!5038 = !DILocation(line: 1184, column: 15, scope: !5021)
!5039 = !DILocation(line: 1186, column: 3, scope: !5021)
!5040 = !DILocation(line: 1188, column: 9, scope: !5034)
!5041 = !DILocation(line: 1188, column: 7, scope: !5021)
!5042 = !DILocation(line: 0, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 1200, column: 7)
!5044 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 1200, column: 7)
!5045 = !DILocation(line: 0, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 1203, column: 8)
!5047 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 1201, column: 2)
!5048 = !DILocation(line: 1200, column: 7, scope: !5044)
!5049 = !DILocation(line: 1190, column: 48, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 1189, column: 5)
!5051 = !DILocation(line: 1190, column: 62, scope: !5050)
!5052 = !DILocation(line: 1190, column: 60, scope: !5050)
!5053 = !DILocation(line: 1190, column: 20, scope: !5050)
!5054 = !DILocation(line: 1192, column: 36, scope: !5050)
!5055 = !DILocation(line: 1192, column: 8, scope: !5050)
!5056 = !DILocation(line: 1192, column: 6, scope: !5050)
!5057 = !DILocation(line: 1194, column: 5, scope: !5050)
!5058 = !DILocation(line: 0, scope: !5044)
!5059 = !DILocation(line: 0, scope: !5033)
!5060 = !DILocation(line: 1200, column: 21, scope: !5043)
!5061 = !DILocation(line: 1202, column: 18, scope: !5047)
!5062 = !DILocation(line: 1203, column: 14, scope: !5046)
!5063 = !DILocation(line: 1204, column: 16, scope: !5046)
!5064 = !DILocation(line: 1204, column: 8, scope: !5046)
!5065 = !DILocation(line: 1205, column: 10, scope: !5046)
!5066 = !DILocation(line: 1205, column: 8, scope: !5046)
!5067 = !DILocation(line: 1206, column: 10, scope: !5046)
!5068 = !DILocation(line: 1206, column: 8, scope: !5046)
!5069 = !DILocation(line: 1207, column: 10, scope: !5046)
!5070 = !DILocation(line: 1207, column: 8, scope: !5046)
!5071 = !DILocation(line: 1203, column: 8, scope: !5047)
!5072 = !DILocation(line: 1200, column: 50, scope: !5043)
!5073 = !DILocation(line: 1200, column: 7, scope: !5043)
!5074 = distinct !{!5074, !5048, !5075}
!5075 = !DILocation(line: 1209, column: 2, scope: !5044)
!5076 = !DILocation(line: 1237, column: 10, scope: !5021)
!5077 = !DILocation(line: 1237, column: 20, scope: !5021)
!5078 = !DILocation(line: 1237, column: 3, scope: !5021)
!5079 = !DILocation(line: 1238, column: 1, scope: !5021)
!5080 = distinct !DISubprogram(name: "get_inv_cost", scope: !3, file: !3, line: 1051, type: !5081, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5083)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{null, !1888, !3256, !2958}
!5083 = !{!5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5096, !5097, !5099, !5103, !5108}
!5084 = !DILocalVariable(name: "inv", arg: 1, scope: !5080, file: !3, line: 1051, type: !1888)
!5085 = !DILocalVariable(name: "comp_cost", arg: 2, scope: !5080, file: !3, line: 1051, type: !3256)
!5086 = !DILocalVariable(name: "regs_needed", arg: 3, scope: !5080, file: !3, line: 1051, type: !2958)
!5087 = !DILocalVariable(name: "i", scope: !5080, file: !3, line: 1053, type: !607)
!5088 = !DILocalVariable(name: "acomp_cost", scope: !5080, file: !3, line: 1053, type: !607)
!5089 = !DILocalVariable(name: "aregs_needed", scope: !5080, file: !3, line: 1054, type: !3435)
!5090 = !DILocalVariable(name: "depno", scope: !5080, file: !3, line: 1055, type: !7)
!5091 = !DILocalVariable(name: "dep", scope: !5080, file: !3, line: 1056, type: !1888)
!5092 = !DILocalVariable(name: "bi", scope: !5080, file: !3, line: 1057, type: !2458)
!5093 = !DILocalVariable(name: "nregs", scope: !5094, file: !3, line: 1080, type: !607)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 1079, column: 5)
!5095 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 1076, column: 7)
!5096 = !DILocalVariable(name: "cover_class", scope: !5094, file: !3, line: 1081, type: !574)
!5097 = !DILocalVariable(name: "set", scope: !5098, file: !3, line: 1109, type: !655)
!5098 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 1092, column: 3)
!5099 = !DILocalVariable(name: "check_p", scope: !5100, file: !3, line: 1124, type: !606)
!5100 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 1123, column: 5)
!5101 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 1122, column: 3)
!5102 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 1122, column: 3)
!5103 = !DILocalVariable(name: "nregs", scope: !5104, file: !3, line: 1153, type: !607)
!5104 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 1152, column: 6)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 1149, column: 8)
!5106 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 1146, column: 2)
!5107 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 1139, column: 11)
!5108 = !DILocalVariable(name: "cover_class", scope: !5104, file: !3, line: 1154, type: !574)
!5109 = !DILocation(line: 0, scope: !5080)
!5110 = !DILocation(line: 1053, column: 3, scope: !5080)
!5111 = !DILocation(line: 1054, column: 3, scope: !5080)
!5112 = !DILocation(line: 1054, column: 12, scope: !5080)
!5113 = !DILocation(line: 1055, column: 3, scope: !5080)
!5114 = !DILocation(line: 1057, column: 3, scope: !5080)
!5115 = !DILocation(line: 1060, column: 9, scope: !5080)
!5116 = !DILocation(line: 1062, column: 14, scope: !5080)
!5117 = !DILocation(line: 1063, column: 9, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 1063, column: 7)
!5119 = !DILocation(line: 1063, column: 7, scope: !5080)
!5120 = !DILocation(line: 1067, column: 7, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 1067, column: 7)
!5122 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 1066, column: 5)
!5123 = !DILocation(line: 1064, column: 20, scope: !5118)
!5124 = !DILocation(line: 1064, column: 5, scope: !5118)
!5125 = !DILocation(line: 0, scope: !5121)
!5126 = !DILocation(line: 1067, column: 23, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 1067, column: 7)
!5128 = !DILocation(line: 1067, column: 21, scope: !5127)
!5129 = !DILocation(line: 1068, column: 14, scope: !5127)
!5130 = !DILocation(line: 1068, column: 2, scope: !5127)
!5131 = !DILocation(line: 1068, column: 38, scope: !5127)
!5132 = !DILocation(line: 1067, column: 50, scope: !5127)
!5133 = !DILocation(line: 1067, column: 7, scope: !5127)
!5134 = distinct !{!5134, !5120, !5135}
!5135 = !DILocation(line: 1068, column: 40, scope: !5121)
!5136 = !DILocation(line: 1071, column: 12, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 1071, column: 7)
!5138 = !DILocation(line: 1071, column: 7, scope: !5137)
!5139 = !DILocation(line: 1072, column: 7, scope: !5137)
!5140 = !DILocation(line: 1072, column: 15, scope: !5137)
!5141 = !DILocation(line: 1072, column: 24, scope: !5137)
!5142 = !DILocation(line: 1072, column: 21, scope: !5137)
!5143 = !DILocation(line: 1071, column: 7, scope: !5080)
!5144 = !DILocation(line: 1074, column: 14, scope: !5080)
!5145 = !DILocation(line: 1076, column: 9, scope: !5095)
!5146 = !DILocation(line: 1076, column: 7, scope: !5080)
!5147 = !DILocation(line: 1077, column: 19, scope: !5095)
!5148 = !DILocation(line: 1077, column: 5, scope: !5095)
!5149 = !DILocation(line: 1080, column: 7, scope: !5094)
!5150 = !DILocation(line: 1083, column: 53, scope: !5094)
!5151 = !DILocation(line: 0, scope: !5094)
!5152 = !DILocation(line: 1083, column: 21, scope: !5094)
!5153 = !DILocation(line: 1084, column: 35, scope: !5094)
!5154 = !DILocation(line: 1084, column: 7, scope: !5094)
!5155 = !DILocation(line: 1084, column: 32, scope: !5094)
!5156 = !DILocation(line: 1085, column: 5, scope: !5095)
!5157 = !DILocation(line: 1087, column: 13, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 1087, column: 7)
!5159 = !DILocation(line: 1087, column: 8, scope: !5158)
!5160 = !DILocation(line: 1088, column: 7, scope: !5158)
!5161 = !DILocation(line: 1088, column: 15, scope: !5158)
!5162 = !DILocation(line: 1088, column: 20, scope: !5158)
!5163 = !DILocation(line: 1088, column: 44, scope: !5158)
!5164 = !DILocation(line: 1088, column: 32, scope: !5158)
!5165 = !DILocation(line: 1087, column: 7, scope: !5080)
!5166 = !DILocation(line: 1089, column: 26, scope: !5158)
!5167 = !DILocation(line: 1089, column: 18, scope: !5158)
!5168 = !DILocation(line: 1089, column: 5, scope: !5158)
!5169 = !DILocation(line: 1109, column: 15, scope: !5098)
!5170 = !DILocation(line: 0, scope: !5098)
!5171 = !DILocation(line: 1110, column: 9, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 1110, column: 9)
!5173 = !DILocation(line: 1111, column: 2, scope: !5172)
!5174 = !DILocation(line: 1111, column: 5, scope: !5172)
!5175 = !DILocation(line: 1112, column: 2, scope: !5172)
!5176 = !DILocation(line: 1112, column: 5, scope: !5172)
!5177 = !DILocation(line: 1110, column: 9, scope: !5098)
!5178 = !DILocation(line: 1114, column: 6, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 1114, column: 6)
!5180 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 1113, column: 7)
!5181 = !DILocation(line: 1114, column: 6, scope: !5180)
!5182 = !DILocation(line: 1115, column: 4, scope: !5179)
!5183 = !DILocation(line: 1115, column: 39, scope: !5179)
!5184 = !DILocation(line: 1117, column: 19, scope: !5179)
!5185 = !DILocation(line: 1122, column: 3, scope: !5102)
!5186 = !DILocation(line: 0, scope: !5100)
!5187 = !DILocation(line: 0, scope: !5104)
!5188 = !DILocation(line: 1122, column: 3, scope: !5101)
!5189 = !DILocation(line: 1126, column: 13, scope: !5100)
!5190 = !DILocation(line: 1128, column: 7, scope: !5100)
!5191 = !DILocation(line: 1130, column: 13, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 1130, column: 11)
!5193 = !DILocation(line: 1130, column: 11, scope: !5100)
!5194 = !DILocation(line: 0, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 1134, column: 4)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 1134, column: 4)
!5197 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 1133, column: 2)
!5198 = !DILocation(line: 1134, column: 4, scope: !5196)
!5199 = !DILocation(line: 1131, column: 12, scope: !5192)
!5200 = !DILocation(line: 1131, column: 28, scope: !5192)
!5201 = !DILocation(line: 1131, column: 2, scope: !5192)
!5202 = !DILocation(line: 0, scope: !5196)
!5203 = !DILocation(line: 1134, column: 18, scope: !5195)
!5204 = !DILocation(line: 1135, column: 23, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 1135, column: 10)
!5206 = !DILocation(line: 1135, column: 10, scope: !5205)
!5207 = !DILocation(line: 1135, column: 47, scope: !5205)
!5208 = !DILocation(line: 1135, column: 10, scope: !5195)
!5209 = !DILocation(line: 1134, column: 47, scope: !5195)
!5210 = !DILocation(line: 1134, column: 4, scope: !5195)
!5211 = distinct !{!5211, !5198, !5212}
!5212 = !DILocation(line: 1136, column: 8, scope: !5196)
!5213 = !DILocation(line: 1144, column: 4, scope: !5107)
!5214 = !DILocation(line: 1144, column: 12, scope: !5107)
!5215 = !DILocation(line: 1144, column: 7, scope: !5107)
!5216 = !DILocation(line: 1145, column: 4, scope: !5107)
!5217 = !DILocation(line: 1145, column: 13, scope: !5107)
!5218 = !DILocation(line: 1145, column: 18, scope: !5107)
!5219 = !DILocation(line: 1145, column: 24, scope: !5107)
!5220 = !DILocation(line: 1145, column: 8, scope: !5107)
!5221 = !DILocation(line: 1139, column: 11, scope: !5100)
!5222 = !DILocation(line: 1149, column: 8, scope: !5106)
!5223 = !DILocation(line: 1150, column: 21, scope: !5105)
!5224 = !DILocation(line: 1150, column: 6, scope: !5105)
!5225 = !DILocation(line: 1153, column: 8, scope: !5104)
!5226 = !DILocation(line: 1156, column: 54, scope: !5104)
!5227 = !DILocation(line: 1156, column: 22, scope: !5104)
!5228 = !DILocation(line: 1157, column: 37, scope: !5104)
!5229 = !DILocation(line: 1157, column: 8, scope: !5104)
!5230 = !DILocation(line: 1157, column: 34, scope: !5104)
!5231 = !DILocation(line: 1158, column: 6, scope: !5105)
!5232 = !DILocation(line: 1161, column: 13, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 1161, column: 11)
!5234 = !DILocation(line: 1161, column: 11, scope: !5100)
!5235 = !DILocation(line: 1165, column: 4, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 1165, column: 4)
!5237 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 1164, column: 2)
!5238 = !DILocation(line: 1162, column: 20, scope: !5233)
!5239 = !DILocation(line: 1162, column: 17, scope: !5233)
!5240 = !DILocation(line: 1162, column: 2, scope: !5233)
!5241 = !DILocation(line: 0, scope: !5236)
!5242 = !DILocation(line: 1165, column: 20, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 1165, column: 4)
!5244 = !DILocation(line: 1165, column: 18, scope: !5243)
!5245 = !DILocation(line: 1167, column: 24, scope: !5243)
!5246 = !DILocation(line: 1167, column: 11, scope: !5243)
!5247 = !DILocation(line: 1166, column: 6, scope: !5243)
!5248 = !DILocation(line: 1167, column: 8, scope: !5243)
!5249 = !DILocation(line: 1165, column: 47, scope: !5243)
!5250 = !DILocation(line: 1165, column: 4, scope: !5243)
!5251 = distinct !{!5251, !5235, !5252}
!5252 = !DILocation(line: 1167, column: 46, scope: !5236)
!5253 = !DILocation(line: 1169, column: 23, scope: !5100)
!5254 = !DILocation(line: 1169, column: 20, scope: !5100)
!5255 = distinct !{!5255, !5185, !5256}
!5256 = !DILocation(line: 1170, column: 5, scope: !5102)
!5257 = !DILocation(line: 1171, column: 1, scope: !5080)
!5258 = distinct !DISubprogram(name: "get_cover_class_and_nregs", scope: !3, file: !3, line: 1018, type: !5259, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5261)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!574, !655, !3256}
!5261 = !{!5262, !5263, !5264, !5265, !5266}
!5262 = !DILocalVariable(name: "insn", arg: 1, scope: !5258, file: !3, line: 1018, type: !655)
!5263 = !DILocalVariable(name: "nregs", arg: 2, scope: !5258, file: !3, line: 1018, type: !3256)
!5264 = !DILocalVariable(name: "reg", scope: !5258, file: !3, line: 1020, type: !655)
!5265 = !DILocalVariable(name: "cover_class", scope: !5258, file: !3, line: 1021, type: !574)
!5266 = !DILocalVariable(name: "set", scope: !5258, file: !3, line: 1022, type: !655)
!5267 = !DILocation(line: 0, scope: !5258)
!5268 = !DILocation(line: 1022, column: 13, scope: !5258)
!5269 = !DILocation(line: 1025, column: 3, scope: !5258)
!5270 = !DILocation(line: 1026, column: 9, scope: !5258)
!5271 = !DILocation(line: 1027, column: 7, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 1027, column: 7)
!5273 = !DILocation(line: 1027, column: 22, scope: !5272)
!5274 = !DILocation(line: 1027, column: 7, scope: !5258)
!5275 = !DILocation(line: 1028, column: 11, scope: !5272)
!5276 = !DILocation(line: 0, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 1029, column: 7)
!5278 = !DILocation(line: 1029, column: 7, scope: !5277)
!5279 = !DILocation(line: 1028, column: 5, scope: !5272)
!5280 = !DILocation(line: 1029, column: 7, scope: !5258)
!5281 = !DILocation(line: 1033, column: 5, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 1030, column: 5)
!5283 = !DILocation(line: 1036, column: 13, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 1036, column: 11)
!5285 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 1035, column: 5)
!5286 = !DILocation(line: 1038, column: 15, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 1038, column: 11)
!5288 = !DILocation(line: 1038, column: 11, scope: !5285)
!5289 = !DILocation(line: 1041, column: 33, scope: !5287)
!5290 = !DILocation(line: 1041, column: 16, scope: !5287)
!5291 = !DILocation(line: 0, scope: !5287)
!5292 = !DILocation(line: 1042, column: 16, scope: !5285)
!5293 = !DILocation(line: 1042, column: 49, scope: !5285)
!5294 = !DILocation(line: 1044, column: 3, scope: !5258)
!5295 = distinct !DISubprogram(name: "move_invariant_reg", scope: !3, file: !3, line: 1374, type: !5296, scopeLine: 1375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5298)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!606, !618, !7}
!5298 = !{!5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312}
!5299 = !DILocalVariable(name: "loop", arg: 1, scope: !5295, file: !3, line: 1374, type: !618)
!5300 = !DILocalVariable(name: "invno", arg: 2, scope: !5295, file: !3, line: 1374, type: !7)
!5301 = !DILocalVariable(name: "inv", scope: !5295, file: !3, line: 1376, type: !1888)
!5302 = !DILocalVariable(name: "repr", scope: !5295, file: !3, line: 1377, type: !1888)
!5303 = !DILocalVariable(name: "i", scope: !5295, file: !3, line: 1378, type: !7)
!5304 = !DILocalVariable(name: "preheader", scope: !5295, file: !3, line: 1379, type: !1188)
!5305 = !DILocalVariable(name: "reg", scope: !5295, file: !3, line: 1380, type: !655)
!5306 = !DILocalVariable(name: "set", scope: !5295, file: !3, line: 1380, type: !655)
!5307 = !DILocalVariable(name: "dest", scope: !5295, file: !3, line: 1380, type: !655)
!5308 = !DILocalVariable(name: "note", scope: !5295, file: !3, line: 1380, type: !655)
!5309 = !DILocalVariable(name: "use", scope: !5295, file: !3, line: 1381, type: !1900)
!5310 = !DILocalVariable(name: "bi", scope: !5295, file: !3, line: 1382, type: !2458)
!5311 = !DILocalVariable(name: "regno", scope: !5295, file: !3, line: 1383, type: !607)
!5312 = !DILabel(scope: !5295, name: "fail", file: !3, line: 1467)
!5313 = !DILocation(line: 0, scope: !5295)
!5314 = !DILocation(line: 1376, column: 27, scope: !5295)
!5315 = !DILocation(line: 1377, column: 28, scope: !5295)
!5316 = !DILocation(line: 1378, column: 3, scope: !5295)
!5317 = !DILocation(line: 1379, column: 27, scope: !5295)
!5318 = !DILocation(line: 1379, column: 55, scope: !5295)
!5319 = !DILocation(line: 1382, column: 3, scope: !5295)
!5320 = !DILocation(line: 1385, column: 12, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 1385, column: 7)
!5322 = !DILocation(line: 1385, column: 7, scope: !5321)
!5323 = !DILocation(line: 1385, column: 7, scope: !5295)
!5324 = !DILocation(line: 1387, column: 14, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 1387, column: 7)
!5326 = !DILocation(line: 1387, column: 8, scope: !5325)
!5327 = !DILocation(line: 1387, column: 7, scope: !5295)
!5328 = !DILocation(line: 1393, column: 11, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 1393, column: 7)
!5330 = !DILocation(line: 1393, column: 7, scope: !5295)
!5331 = !DILocation(line: 1395, column: 16, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 1395, column: 11)
!5333 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 1394, column: 5)
!5334 = !DILocation(line: 1395, column: 11, scope: !5332)
!5335 = !DILocation(line: 1395, column: 11, scope: !5333)
!5336 = !DILocation(line: 1397, column: 4, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 1397, column: 4)
!5338 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 1396, column: 2)
!5339 = !DILocation(line: 1397, column: 4, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 1397, column: 4)
!5341 = !DILocation(line: 1399, column: 39, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 1399, column: 12)
!5343 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 1398, column: 6)
!5344 = !DILocation(line: 1399, column: 13, scope: !5342)
!5345 = !DILocation(line: 1399, column: 12, scope: !5343)
!5346 = distinct !{!5346, !5336, !5347}
!5347 = !DILocation(line: 1401, column: 6, scope: !5337)
!5348 = !DILocation(line: 1409, column: 13, scope: !5333)
!5349 = !DILocation(line: 1410, column: 20, scope: !5333)
!5350 = !DILocation(line: 1411, column: 11, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 1411, column: 11)
!5352 = !DILocation(line: 1411, column: 26, scope: !5351)
!5353 = !DILocation(line: 1411, column: 11, scope: !5333)
!5354 = !DILocation(line: 1412, column: 8, scope: !5351)
!5355 = !DILocation(line: 0, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 1413, column: 11)
!5357 = !DILocation(line: 1413, column: 11, scope: !5356)
!5358 = !DILocation(line: 1412, column: 2, scope: !5351)
!5359 = !DILocation(line: 0, scope: !5333)
!5360 = !DILocation(line: 1413, column: 11, scope: !5333)
!5361 = !DILocation(line: 1414, column: 10, scope: !5356)
!5362 = !DILocation(line: 1414, column: 2, scope: !5356)
!5363 = !DILocation(line: 1416, column: 13, scope: !5333)
!5364 = !DILocation(line: 1419, column: 34, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 1419, column: 11)
!5366 = !DILocation(line: 1419, column: 12, scope: !5365)
!5367 = !DILocation(line: 1419, column: 11, scope: !5333)
!5368 = !DILocation(line: 1421, column: 28, scope: !5333)
!5369 = !DILocation(line: 1421, column: 7, scope: !5333)
!5370 = !DILocation(line: 1423, column: 24, scope: !5333)
!5371 = !DILocation(line: 1423, column: 56, scope: !5333)
!5372 = !DILocation(line: 1423, column: 7, scope: !5333)
!5373 = !DILocation(line: 1424, column: 27, scope: !5333)
!5374 = !DILocation(line: 1424, column: 44, scope: !5333)
!5375 = !DILocation(line: 1424, column: 7, scope: !5333)
!5376 = !DILocation(line: 1433, column: 39, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 1433, column: 11)
!5378 = !DILocation(line: 1433, column: 19, scope: !5377)
!5379 = !DILocation(line: 1433, column: 17, scope: !5377)
!5380 = !DILocation(line: 1434, column: 4, scope: !5377)
!5381 = !DILocation(line: 1434, column: 14, scope: !5377)
!5382 = !DILocation(line: 1434, column: 9, scope: !5377)
!5383 = !DILocation(line: 1435, column: 8, scope: !5377)
!5384 = !DILocation(line: 1435, column: 35, scope: !5377)
!5385 = !DILocation(line: 1435, column: 12, scope: !5377)
!5386 = !DILocation(line: 1433, column: 11, scope: !5333)
!5387 = !DILocation(line: 1436, column: 20, scope: !5377)
!5388 = !DILocation(line: 1436, column: 2, scope: !5377)
!5389 = !DILocation(line: 1440, column: 44, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 1440, column: 11)
!5391 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 1439, column: 5)
!5392 = !DILocation(line: 1440, column: 12, scope: !5390)
!5393 = !DILocation(line: 1440, column: 11, scope: !5391)
!5394 = !DILocation(line: 1442, column: 19, scope: !5391)
!5395 = !DILocation(line: 1443, column: 21, scope: !5391)
!5396 = !DILocation(line: 1444, column: 13, scope: !5391)
!5397 = !DILocation(line: 1445, column: 39, scope: !5391)
!5398 = !DILocation(line: 1445, column: 24, scope: !5391)
!5399 = !DILocation(line: 1445, column: 66, scope: !5391)
!5400 = !DILocation(line: 1445, column: 7, scope: !5391)
!5401 = !DILocation(line: 1446, column: 25, scope: !5391)
!5402 = !DILocation(line: 1446, column: 7, scope: !5391)
!5403 = !DILocation(line: 0, scope: !5329)
!5404 = !DILocation(line: 1450, column: 12, scope: !5295)
!5405 = !DILocation(line: 1451, column: 8, scope: !5295)
!5406 = !DILocation(line: 1451, column: 19, scope: !5295)
!5407 = !DILocation(line: 1456, column: 12, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 1456, column: 7)
!5409 = !DILocation(line: 1456, column: 7, scope: !5408)
!5410 = !DILocation(line: 1456, column: 7, scope: !5295)
!5411 = !DILocation(line: 1458, column: 28, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 1458, column: 7)
!5413 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 1457, column: 5)
!5414 = !DILocation(line: 1458, column: 12, scope: !5412)
!5415 = !DILocation(line: 0, scope: !5412)
!5416 = !DILocation(line: 1458, column: 7, scope: !5412)
!5417 = !DILocation(line: 1460, column: 10, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 1459, column: 2)
!5419 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 1458, column: 7)
!5420 = !DILocation(line: 1460, column: 14, scope: !5418)
!5421 = !DILocation(line: 1461, column: 25, scope: !5418)
!5422 = !DILocation(line: 1461, column: 4, scope: !5418)
!5423 = !DILocation(line: 1458, column: 50, scope: !5419)
!5424 = !DILocation(line: 1458, column: 7, scope: !5419)
!5425 = distinct !{!5425, !5416, !5426}
!5426 = !DILocation(line: 1462, column: 2, scope: !5412)
!5427 = !DILocation(line: 1470, column: 7, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 1470, column: 7)
!5429 = !DILocation(line: 1467, column: 1, scope: !5295)
!5430 = !DILocation(line: 1470, column: 7, scope: !5295)
!5431 = !DILocation(line: 1471, column: 5, scope: !5428)
!5432 = !DILocation(line: 1472, column: 8, scope: !5295)
!5433 = !DILocation(line: 1472, column: 13, scope: !5295)
!5434 = !DILocation(line: 1473, column: 12, scope: !5295)
!5435 = !DILocation(line: 1474, column: 8, scope: !5295)
!5436 = !DILocation(line: 1474, column: 19, scope: !5295)
!5437 = !DILocation(line: 1476, column: 3, scope: !5295)
!5438 = !DILocation(line: 1477, column: 1, scope: !5295)
!5439 = distinct !DISubprogram(name: "free_use_list", scope: !3, file: !3, line: 1004, type: !5440, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5442)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{null, !1900}
!5442 = !{!5443, !5444}
!5443 = !DILocalVariable(name: "use", arg: 1, scope: !5439, file: !3, line: 1004, type: !1900)
!5444 = !DILocalVariable(name: "next", scope: !5439, file: !3, line: 1006, type: !1900)
!5445 = !DILocation(line: 0, scope: !5439)
!5446 = !DILocation(line: 1008, column: 3, scope: !5439)
!5447 = !DILocation(line: 1008, column: 3, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 1008, column: 3)
!5449 = !DILocation(line: 1010, column: 19, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 1009, column: 5)
!5451 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 1008, column: 3)
!5452 = !DILocation(line: 1011, column: 13, scope: !5450)
!5453 = !DILocation(line: 1011, column: 7, scope: !5450)
!5454 = !DILocation(line: 1008, column: 3, scope: !5451)
!5455 = distinct !{!5455, !5447, !5456}
!5456 = !DILocation(line: 1012, column: 5, scope: !5448)
!5457 = !DILocation(line: 1013, column: 1, scope: !5439)
!5458 = distinct !DISubprogram(name: "VEC_invariant_p_heap_free", scope: !3, file: !3, line: 174, type: !5459, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5461)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{null, !4463}
!5461 = !{!5462}
!5462 = !DILocalVariable(name: "vec_", arg: 1, scope: !5458, file: !3, line: 174, type: !4463)
!5463 = !DILocation(line: 0, scope: !5458)
!5464 = !DILocation(line: 174, column: 1, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 174, column: 1)
!5466 = !DILocation(line: 174, column: 1, scope: !5458)
!5467 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1171, file: !1171, line: 31, type: !5468, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5472)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!607, !5470, !7, !3256}
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!5472 = !{!5473, !5474, !5475}
!5473 = !DILocalVariable(name: "vec_", arg: 1, scope: !5467, file: !1171, line: 31, type: !5470)
!5474 = !DILocalVariable(name: "ix_", arg: 2, scope: !5467, file: !1171, line: 31, type: !7)
!5475 = !DILocalVariable(name: "ptr", arg: 3, scope: !5467, file: !1171, line: 31, type: !3256)
!5476 = !DILocation(line: 0, scope: !5467)
!5477 = !DILocation(line: 31, column: 1, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5467, file: !1171, line: 31, column: 1)
!5479 = !DILocation(line: 31, column: 1, scope: !5467)
!5480 = !DILocation(line: 31, column: 1, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5478, file: !1171, line: 31, column: 1)
!5482 = !DILocation(line: 31, column: 1, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5478, file: !1171, line: 31, column: 1)
!5484 = !DILocation(line: 0, scope: !5478)
!5485 = distinct !DISubprogram(name: "get_loop", scope: !385, file: !385, line: 417, type: !5486, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5488)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!618, !7}
!5488 = !{!5489}
!5489 = !DILocalVariable(name: "num", arg: 1, scope: !5485, file: !385, line: 417, type: !7)
!5490 = !DILocation(line: 0, scope: !5485)
!5491 = !DILocation(line: 419, column: 10, scope: !5485)
!5492 = !DILocation(line: 419, column: 3, scope: !5485)
!5493 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1171, file: !1171, line: 32, type: !5494, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5497)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !5496}
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!5497 = !{!5498}
!5498 = !DILocalVariable(name: "vec_", arg: 1, scope: !5493, file: !1171, line: 32, type: !5496)
!5499 = !DILocation(line: 0, scope: !5493)
!5500 = !DILocation(line: 32, column: 1, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5493, file: !1171, line: 32, column: 1)
!5502 = !DILocation(line: 32, column: 1, scope: !5493)
