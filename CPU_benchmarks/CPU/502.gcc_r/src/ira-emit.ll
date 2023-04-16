; ModuleID = 'ira-emit.bc'
source_filename = "ira-emit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.move = type { %struct.ira_allocno*, %struct.ira_allocno*, %struct.move*, i8, i32, %struct.move**, %struct.rtx_def* }
%struct.ira_allocno = type { i32, i32, i32, i32, %struct.rtx_def*, %struct.ira_allocno*, %struct.ira_loop_tree_node*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ira_allocno_copy*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno_live_range*, i32, i32, i8*, i32, i32, i64, i64, i32, i32, i32, i16, %struct.ira_allocno*, i32*, i32*, i32*, i32*, i32, i32, %struct.ira_allocno*, %struct.ira_allocno*, i32 }
%struct.ira_loop_tree_node = type { %struct.basic_block_def*, %struct.loop*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, i32, i8, %struct.ira_allocno**, i8, [27 x i32], %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ira_allocno_copy = type { i32, %struct.ira_allocno*, %struct.ira_allocno*, i32, i8, %struct.rtx_def*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_loop_tree_node* }
%struct.ira_allocno_live_range = type { %struct.ira_allocno*, i32, i32, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range* }
%struct.VEC_move_t_heap = type { %struct.VEC_move_t_base }
%struct.VEC_move_t_base = type { i32, i32, [1 x %struct.move*] }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.ira_allocno_iterator = type { i32 }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.df_lr_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@at_bb_start = internal unnamed_addr global %struct.move** null, align 8, !dbg !0
@at_bb_end = internal unnamed_addr global %struct.move** null, align 8, !dbg !1845
@local_allocno_bitmap = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1849
@used_regno_bitmap = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1851
@renamed_regno_bitmap = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1853
@max_regno_before_changing = internal unnamed_addr global i32 0, align 4, !dbg !1847
@ira_loop_tree_root = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@allocno_last_set = internal unnamed_addr global %struct.move** null, align 8, !dbg !1860
@allocno_last_set_check = internal unnamed_addr global i32* null, align 8, !dbg !1862
@hard_regno_last_set_check = internal global [53 x i32] zeroinitializer, align 16, !dbg !1855
@curr_tick = internal unnamed_addr global i32 0, align 4, !dbg !1866
@ira_allocnos_num = external dso_local local_unnamed_addr global i32, align 4
@move_vec = internal global %struct.VEC_move_t_heap* null, align 8, !dbg !1864
@.str = private unnamed_addr constant [16 x i8] c" a%dr%d->a%dr%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ira_allocnos = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@internal_flag_ira_verbose = external dso_local local_unnamed_addr global i32, align 4
@ira_dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"      Changing RTL for loop %d (header bb%d)\0A\00", align 1
@ira_curr_loop_tree_node = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@ira_available_class_regs = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_prohibited_mode_move_regs = external dso_local local_unnamed_addr global [87 x i64], align 16
@ira_reg_equiv_invariant_p = external dso_local local_unnamed_addr global i8*, align 8
@ira_reg_equiv_const = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"  %i vs parent %i:\00", align 1
@ira_curr_regno_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@ira_regno_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"      Creating newreg=%i from oldreg=%i\0A\00", align 1
@ira_loops = external dso_local local_unnamed_addr global %struct.loops, align 8
@ira_loop_nodes = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@ira_bb_nodes = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"      Remove r%d:a%d->a%d(mem)\0A\00", align 1
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"ira-emit.c\00", align 1
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@ira_additional_jumps_num = external dso_local local_unnamed_addr global i32, align 4
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@hard_regno_last_set = internal unnamed_addr global [53 x %struct.move*] zeroinitializer, align 16, !dbg !1868
@ira_move_loops_num = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"    Creating temporary allocno a%dr%d\0A\00", align 1
@ira_memory_move_cost = external dso_local local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@ira_store_cost = external dso_local local_unnamed_addr global i32, align 4
@ira_load_cost = external dso_local local_unnamed_addr global i32, align 4
@ira_shuffle_cost = external dso_local local_unnamed_addr global i32, align 4
@ira_overall_cost = external dso_local local_unnamed_addr global i32, align 4
@ira_register_move_cost = external dso_local local_unnamed_addr global [87 x [27 x i16]*], align 16
@ira_max_point = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"    Allocate conflicts for a%dr%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"    Adding cp%d:a%dr%d-a%dr%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"    Adding range [%d..%d] to allocno a%dr%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"    Adding range [%d..%d] to live through %s allocno a%dr%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"upper level\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1875 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1888, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1889, metadata !DIExpression()), !dbg !1890
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1891
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1892
  ret i32 %call, !dbg !1893
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1894 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1898
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1899
  ret i32 %call, !dbg !1900
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1901 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1956, metadata !DIExpression()), !dbg !1957
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1958
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1958
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1958
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1958
  %cmp = icmp uge i8* %0, %1, !dbg !1958
  %conv1 = zext i1 %cmp to i64, !dbg !1958
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1958
  %tobool = icmp eq i64 %expval, 0, !dbg !1958
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1958

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1958
  br label %cond.end, !dbg !1958

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1958
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1958
  %2 = load i8, i8* %0, align 1, !dbg !1958
  %conv3 = zext i8 %2 to i32, !dbg !1958
  br label %cond.end, !dbg !1958

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1958
  ret i32 %cond, !dbg !1959
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1960 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1962, metadata !DIExpression()), !dbg !1963
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1964
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1964
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1964
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1964
  %cmp = icmp uge i8* %0, %1, !dbg !1964
  %conv1 = zext i1 %cmp to i64, !dbg !1964
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1964
  %tobool = icmp eq i64 %expval, 0, !dbg !1964
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1964

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1964
  br label %cond.end, !dbg !1964

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1964
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1964
  %2 = load i8, i8* %0, align 1, !dbg !1964
  %conv3 = zext i8 %2 to i32, !dbg !1964
  br label %cond.end, !dbg !1964

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1964
  ret i32 %cond, !dbg !1965
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1966 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1967
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1967
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1967
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1967
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1967
  %cmp = icmp uge i8* %1, %2, !dbg !1967
  %conv1 = zext i1 %cmp to i64, !dbg !1967
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1967
  %tobool = icmp eq i64 %expval, 0, !dbg !1967
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1967

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1967
  br label %cond.end, !dbg !1967

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1967
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1967
  %3 = load i8, i8* %1, align 1, !dbg !1967
  %conv3 = zext i8 %3 to i32, !dbg !1967
  br label %cond.end, !dbg !1967

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1967
  ret i32 %cond, !dbg !1968
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1969 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1973, metadata !DIExpression()), !dbg !1974
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1975
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1976
  ret i32 %call, !dbg !1977
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1982, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1983, metadata !DIExpression()), !dbg !1984
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1985
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1985
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1985
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1985
  %cmp = icmp uge i8* %0, %1, !dbg !1985
  %conv1 = zext i1 %cmp to i64, !dbg !1985
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1985
  %tobool = icmp eq i64 %expval, 0, !dbg !1985
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1985

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1985
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1985
  br label %cond.end, !dbg !1985

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1985
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1985
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1985
  store i8 %conv2, i8* %0, align 1, !dbg !1985
  %conv6 = and i32 %__c, 255, !dbg !1985
  br label %cond.end, !dbg !1985

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1985
  ret i32 %cond, !dbg !1986
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1987 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1989, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1990, metadata !DIExpression()), !dbg !1991
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1992
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1992
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1992
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1992
  %cmp = icmp uge i8* %0, %1, !dbg !1992
  %conv1 = zext i1 %cmp to i64, !dbg !1992
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1992
  %tobool = icmp eq i64 %expval, 0, !dbg !1992
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1992

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1992
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1992
  br label %cond.end, !dbg !1992

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1992
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1992
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1992
  store i8 %conv2, i8* %0, align 1, !dbg !1992
  %conv6 = and i32 %__c, 255, !dbg !1992
  br label %cond.end, !dbg !1992

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1992
  ret i32 %cond, !dbg !1993
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1994 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1996, metadata !DIExpression()), !dbg !1997
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1998
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1998
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1998
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1998
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1998
  %cmp = icmp uge i8* %1, %2, !dbg !1998
  %conv1 = zext i1 %cmp to i64, !dbg !1998
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1998
  %tobool = icmp eq i64 %expval, 0, !dbg !1998
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1998

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1998
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1998
  br label %cond.end, !dbg !1998

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1998
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1998
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1998
  store i8 %conv4, i8* %1, align 1, !dbg !1998
  %conv6 = and i32 %__c, 255, !dbg !1998
  br label %cond.end, !dbg !1998

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1998
  ret i32 %cond, !dbg !1999
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2008, metadata !DIExpression()), !dbg !2009
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2010
  ret i64 %call, !dbg !2011
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2012 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2014, metadata !DIExpression()), !dbg !2015
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2016
  %0 = load i32, i32* %_flags, align 8, !dbg !2016
  %and = lshr i32 %0, 4, !dbg !2016
  %and.lobit = and i32 %and, 1, !dbg !2016
  ret i32 %and.lobit, !dbg !2017
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2018 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2020, metadata !DIExpression()), !dbg !2021
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2022
  %0 = load i32, i32* %_flags, align 8, !dbg !2022
  %and = lshr i32 %0, 5, !dbg !2022
  %and.lobit = and i32 %and, 1, !dbg !2022
  ret i32 %and.lobit, !dbg !2023
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2024 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2027, metadata !DIExpression()), !dbg !2028
  %__c.off = add i32 %__c, 128, !dbg !2029
  %0 = icmp ult i32 %__c.off, 384, !dbg !2029
  br i1 %0, label %cond.true, label %cond.end, !dbg !2029

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2030
  %1 = load i32*, i32** %call, align 8, !dbg !2031
  %idxprom = sext i32 %__c to i64, !dbg !2032
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2032
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2032
  br label %cond.end, !dbg !2033

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2033
  ret i32 %cond, !dbg !2034
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2037, metadata !DIExpression()), !dbg !2038
  %__c.off = add i32 %__c, 128, !dbg !2039
  %0 = icmp ult i32 %__c.off, 384, !dbg !2039
  br i1 %0, label %cond.true, label %cond.end, !dbg !2039

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2040
  %1 = load i32*, i32** %call, align 8, !dbg !2041
  %idxprom = sext i32 %__c to i64, !dbg !2042
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2042
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2042
  br label %cond.end, !dbg !2043

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2043
  ret i32 %cond, !dbg !2044
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2045 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2050, metadata !DIExpression()), !dbg !2051
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2052
  %conv = trunc i64 %call to i32, !dbg !2053
  ret i32 %conv, !dbg !2054
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2059, metadata !DIExpression()), !dbg !2060
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2061
  ret i64 %call, !dbg !2062
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2063 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2068, metadata !DIExpression()), !dbg !2069
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2070
  ret i64 %call, !dbg !2071
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2072 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2078, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2079, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2080, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2081, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 0, metadata !2083, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2084, metadata !DIExpression()), !dbg !2088
  br label %while.cond, !dbg !2089

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2090
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2088
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2083, metadata !DIExpression()), !dbg !2088
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2091
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2089

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2092
  %div = lshr i64 %add, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %div, metadata !2085, metadata !DIExpression()), !dbg !2088
  %mul = mul i64 %div, %__size, !dbg !2095
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2096
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2086, metadata !DIExpression()), !dbg !2088
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %call, metadata !2087, metadata !DIExpression()), !dbg !2088
  %cmp1 = icmp slt i32 %call, 0, !dbg !2098
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2100

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2101
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2103

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2083, metadata !DIExpression()), !dbg !2088
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2088
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2088
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2083, metadata !DIExpression()), !dbg !2088
  br label %while.cond, !dbg !2089, !llvm.loop !2105

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2088
  ret i8* %retval.0, !dbg !2107
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2108 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2114, metadata !DIExpression()), !dbg !2115
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2116
  ret double %call, !dbg !2117
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2118 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %base, metadata !2129, metadata !DIExpression()), !dbg !2130
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2131
  ret i64 %call, !dbg !2132
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2133 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2139, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2140, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i32 %base, metadata !2141, metadata !DIExpression()), !dbg !2142
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2143
  ret i64 %call, !dbg !2144
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2145 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %base, metadata !2158, metadata !DIExpression()), !dbg !2159
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2160
  ret i64 %call, !dbg !2161
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2166, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2167, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i32 %base, metadata !2168, metadata !DIExpression()), !dbg !2169
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2170
  ret i64 %call, !dbg !2171
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2213, metadata !DIExpression()), !dbg !2214
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2215
  ret i32 %call, !dbg !2216
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2217 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2220, metadata !DIExpression()), !dbg !2221
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2222
  ret i32 %call, !dbg !2223
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2224 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2228, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2229, metadata !DIExpression()), !dbg !2230
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2231
  ret i32 %call, !dbg !2232
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2233 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2237, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2239, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2240, metadata !DIExpression()), !dbg !2241
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2242
  ret i32 %call, !dbg !2243
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2244 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2250, metadata !DIExpression()), !dbg !2251
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2250, metadata !DIExpression(DW_OP_deref)), !dbg !2251
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2252
  ret i32 %call, !dbg !2253
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2254 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2260, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2261, metadata !DIExpression()), !dbg !2262
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2261, metadata !DIExpression(DW_OP_deref)), !dbg !2262
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2263
  ret i32 %call, !dbg !2264
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2265 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2290, metadata !DIExpression()), !dbg !2291
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2292
  ret i32 %call, !dbg !2293
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2297, metadata !DIExpression()), !dbg !2298
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2299
  ret i32 %call, !dbg !2300
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2301 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2308
  ret i32 %call, !dbg !2309
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2310 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2314, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2315, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2317, metadata !DIExpression()), !dbg !2318
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2319
  ret i32 %call, !dbg !2320
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ira_debug_move_list(%struct.move* %list) local_unnamed_addr #4 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !2325, metadata !DIExpression()), !dbg !2326
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2327
  tail call fastcc void @print_move_list(%struct._IO_FILE* %0, %struct.move* %list) #7, !dbg !2328
  ret void, !dbg !2329
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_move_list(%struct._IO_FILE* %f, %struct.move* %list) unnamed_addr #4 !dbg !2330 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !2335, metadata !DIExpression()), !dbg !2336
  br label %for.cond, !dbg !2337

for.cond:                                         ; preds = %for.body, %entry
  %list.addr.0 = phi %struct.move* [ %list, %entry ], [ %6, %for.body ]
  call void @llvm.dbg.value(metadata %struct.move* %list.addr.0, metadata !2335, metadata !DIExpression()), !dbg !2336
  %cmp = icmp eq %struct.move* %list.addr.0, null, !dbg !2338
  br i1 %cmp, label %for.end, label %for.body, !dbg !2341

for.body:                                         ; preds = %for.cond
  %from = getelementptr inbounds %struct.move, %struct.move* %list.addr.0, i64 0, i32 0, !dbg !2342
  %0 = load %struct.ira_allocno*, %struct.ira_allocno** %from, align 8, !dbg !2342
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %0, i64 0, i32 0, !dbg !2342
  %1 = load i32, i32* %num, align 8, !dbg !2342
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %0, i64 0, i32 1, !dbg !2343
  %2 = load i32, i32* %regno, align 4, !dbg !2343
  %to = getelementptr inbounds %struct.move, %struct.move* %list.addr.0, i64 0, i32 1, !dbg !2344
  %3 = load %struct.ira_allocno*, %struct.ira_allocno** %to, align 8, !dbg !2344
  %num2 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 0, !dbg !2344
  %4 = load i32, i32* %num2, align 8, !dbg !2344
  %regno4 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 1, !dbg !2345
  %5 = load i32, i32* %regno4, align 4, !dbg !2345
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %4, i32 %5) #6, !dbg !2346
  %next = getelementptr inbounds %struct.move, %struct.move* %list.addr.0, i64 0, i32 2, !dbg !2347
  %6 = load %struct.move*, %struct.move** %next, align 8, !dbg !2347
  call void @llvm.dbg.value(metadata %struct.move* %6, metadata !2335, metadata !DIExpression()), !dbg !2336
  br label %for.cond, !dbg !2348, !llvm.loop !2349

for.end:                                          ; preds = %for.cond
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2351
  ret void, !dbg !2352
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_emit(i8 zeroext %loops_p) local_unnamed_addr #4 !dbg !2353 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp112 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i8 %loops_p, metadata !2357, metadata !DIExpression()), !dbg !2374
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2375
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2375
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2376
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2376
  %2 = bitcast %struct.ira_allocno** %a to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2377
  %3 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !2378
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2369, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2379
  br label %for.cond, !dbg !2379

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2368, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2369, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  %call = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2381
  %tobool = icmp eq i8 %call, 0, !dbg !2379
  br i1 %tobool, label %for.end, label %for.body, !dbg !2379

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2383
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2384
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !2368, metadata !DIExpression()), !dbg !2374
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 1, !dbg !2384
  %6 = load i32, i32* %regno, align 4, !dbg !2384
  %idxprom = sext i32 %6 to i64, !dbg !2383
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %4, i64 %idxprom, !dbg !2383
  %7 = bitcast %struct.rtx_def** %arrayidx to i64*, !dbg !2383
  %8 = load i64, i64* %7, align 8, !dbg !2383
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !2368, metadata !DIExpression()), !dbg !2374
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 4, !dbg !2385
  %9 = bitcast %struct.rtx_def** %reg to i64*, !dbg !2386
  store i64 %8, i64* %9, align 8, !dbg !2386
  br label %for.cond, !dbg !2381, !llvm.loop !2387

for.end:                                          ; preds = %for.cond
  %tobool1 = icmp eq i8 %loops_p, 0, !dbg !2389
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !2391

if.end:                                           ; preds = %for.end
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2392
  %cfg = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2392
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2392
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 5, !dbg !2392
  %12 = load i32, i32* %x_last_basic_block, align 8, !dbg !2392
  %conv = sext i32 %12 to i64, !dbg !2392
  %mul = shl nsw i64 %conv, 3, !dbg !2393
  %call2 = call i8* @ira_allocate(i64 %mul) #6, !dbg !2394
  store i8* %call2, i8** bitcast (%struct.move*** @at_bb_start to i8**), align 8, !dbg !2395
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2396
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !2396
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !2396
  %x_last_basic_block5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 5, !dbg !2396
  %15 = load i32, i32* %x_last_basic_block5, align 8, !dbg !2396
  %conv6 = sext i32 %15 to i64, !dbg !2396
  %mul7 = shl nsw i64 %conv6, 3, !dbg !2397
  %call8 = call i8* @memset(i8* %call2, i32 0, i64 %mul7) #6, !dbg !2398
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2399
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2399
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !2399
  %x_last_basic_block11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 5, !dbg !2399
  %18 = load i32, i32* %x_last_basic_block11, align 8, !dbg !2399
  %conv12 = sext i32 %18 to i64, !dbg !2399
  %mul13 = shl nsw i64 %conv12, 3, !dbg !2400
  %call14 = call i8* @ira_allocate(i64 %mul13) #6, !dbg !2401
  store i8* %call14, i8** bitcast (%struct.move*** @at_bb_end to i8**), align 8, !dbg !2402
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2403
  %cfg16 = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 1, !dbg !2403
  %20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg16, align 8, !dbg !2403
  %x_last_basic_block17 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 5, !dbg !2403
  %21 = load i32, i32* %x_last_basic_block17, align 8, !dbg !2403
  %conv18 = sext i32 %21 to i64, !dbg !2403
  %mul19 = shl nsw i64 %conv18, 3, !dbg !2404
  %call20 = call i8* @memset(i8* %call14, i32 0, i64 %mul19) #6, !dbg !2405
  %call21 = call %struct.bitmap_head_def* @ira_allocate_bitmap() #6, !dbg !2406
  store %struct.bitmap_head_def* %call21, %struct.bitmap_head_def** @local_allocno_bitmap, align 8, !dbg !2407
  %call22 = call %struct.bitmap_head_def* @ira_allocate_bitmap() #6, !dbg !2408
  store %struct.bitmap_head_def* %call22, %struct.bitmap_head_def** @used_regno_bitmap, align 8, !dbg !2409
  %call23 = call %struct.bitmap_head_def* @ira_allocate_bitmap() #6, !dbg !2410
  store %struct.bitmap_head_def* %call23, %struct.bitmap_head_def** @renamed_regno_bitmap, align 8, !dbg !2411
  %call24 = call i32 @max_reg_num() #6, !dbg !2412
  store i32 %call24, i32* @max_regno_before_changing, align 4, !dbg !2413
  %22 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !2414
  call void @ira_traverse_loop_tree(i8 zeroext 1, %struct.ira_loop_tree_node* %22, void (%struct.ira_loop_tree_node*)* nonnull @change_loop, void (%struct.ira_loop_tree_node*)* null) #6, !dbg !2415
  call fastcc void @set_allocno_somewhere_renamed_p() #7, !dbg !2416
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @used_regno_bitmap, align 8, !dbg !2417
  call void @ira_free_bitmap(%struct.bitmap_head_def* %23) #6, !dbg !2418
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @renamed_regno_bitmap, align 8, !dbg !2419
  call void @ira_free_bitmap(%struct.bitmap_head_def* %24) #6, !dbg !2420
  %25 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_allocno_bitmap, align 8, !dbg !2421
  call void @ira_free_bitmap(%struct.bitmap_head_def* %25) #6, !dbg !2422
  call fastcc void @setup_entered_from_non_parent_p() #7, !dbg !2423
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2424
  %cfg26 = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !2424
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg26, align 8, !dbg !2424
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 0, !dbg !2424
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2424
  %29 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2426
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2426
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2426
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2430
  %33 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2430
  br label %for.cond27, !dbg !2424

for.cond27:                                       ; preds = %for.inc50, %if.end
  %34 = phi %struct.control_flow_graph* [ %27, %if.end ], [ %.pre5, %for.inc50 ], !dbg !2432
  %.pn = phi %struct.basic_block_def* [ %28, %if.end ], [ %bb.0, %for.inc50 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2433
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2433
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2358, metadata !DIExpression()), !dbg !2374
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %34, i64 0, i32 1, !dbg !2432
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2432
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %35, !dbg !2432
  br i1 %cmp, label %for.end52, label %for.body31, !dbg !2424

for.body31:                                       ; preds = %for.cond27
  %36 = load %struct.move**, %struct.move*** @at_bb_start, align 8, !dbg !2434
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2435
  %37 = load i32, i32* %index, align 8, !dbg !2435
  %idxprom32 = sext i32 %37 to i64, !dbg !2434
  %arrayidx33 = getelementptr inbounds %struct.move*, %struct.move** %36, i64 %idxprom32, !dbg !2434
  store %struct.move* null, %struct.move** %arrayidx33, align 8, !dbg !2436
  %38 = load %struct.move**, %struct.move*** @at_bb_end, align 8, !dbg !2437
  %39 = load i32, i32* %index, align 8, !dbg !2438
  %idxprom35 = sext i32 %39 to i64, !dbg !2437
  %arrayidx36 = getelementptr inbounds %struct.move*, %struct.move** %38, i64 %idxprom35, !dbg !2437
  store %struct.move* null, %struct.move** %arrayidx36, align 8, !dbg !2439
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #8, !dbg !2440
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2440
  %call37 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2440
  %40 = extractvalue { i32, %struct.VEC_edge_gc** } %call37, 0, !dbg !2440
  store i32 %40, i32* %30, align 8, !dbg !2440
  %41 = extractvalue { i32, %struct.VEC_edge_gc** } %call37, 1, !dbg !2440
  store %struct.VEC_edge_gc** %41, %struct.VEC_edge_gc*** %31, align 8, !dbg !2440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %29, i64 16, i1 false), !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #8, !dbg !2440
  br label %for.cond38, !dbg !2440

for.cond38:                                       ; preds = %for.inc, %for.body31
  %42 = load i32, i32* %32, align 8, !dbg !2441
  %43 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %33, align 8, !dbg !2441
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2367, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  %call39 = call fastcc zeroext i8 @ei_cond(i32 %42, %struct.VEC_edge_gc** %43, %struct.edge_def** nonnull %e) #7, !dbg !2441
  %tobool40 = icmp eq i8 %call39, 0, !dbg !2440
  br i1 %tobool40, label %for.inc50, label %for.body41, !dbg !2440

for.body41:                                       ; preds = %for.cond38
  %44 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2442
  call void @llvm.dbg.value(metadata %struct.edge_def* %44, metadata !2367, metadata !DIExpression()), !dbg !2374
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i64 0, i32 1, !dbg !2444
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2444
  %46 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2445
  %cfg43 = getelementptr inbounds %struct.function, %struct.function* %46, i64 0, i32 1, !dbg !2445
  %47 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg43, align 8, !dbg !2445
  %x_exit_block_ptr44 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %47, i64 0, i32 1, !dbg !2445
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr44, align 8, !dbg !2445
  %cmp45 = icmp eq %struct.basic_block_def* %45, %48, !dbg !2446
  br i1 %cmp45, label %for.inc, label %if.then47, !dbg !2447

if.then47:                                        ; preds = %for.body41
  call void @llvm.dbg.value(metadata %struct.edge_def* %44, metadata !2367, metadata !DIExpression()), !dbg !2374
  call fastcc void @generate_edge_moves(%struct.edge_def* %44) #7, !dbg !2448
  br label %for.inc, !dbg !2448

for.inc:                                          ; preds = %for.body41, %if.then47
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2360, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2441
  br label %for.cond38, !dbg !2441, !llvm.loop !2449

for.inc50:                                        ; preds = %for.cond38
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2432
  %cfg29.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2451
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg29.phi.trans.insert, align 8, !dbg !2432
  br label %for.cond27, !dbg !2432, !llvm.loop !2452

for.end52:                                        ; preds = %for.cond27
  %call53 = call i32 @max_reg_num() #6, !dbg !2454
  %conv54 = sext i32 %call53 to i64, !dbg !2454
  %mul55 = shl nsw i64 %conv54, 3, !dbg !2455
  %call56 = call i8* @ira_allocate(i64 %mul55) #6, !dbg !2456
  store i8* %call56, i8** bitcast (%struct.move*** @allocno_last_set to i8**), align 8, !dbg !2457
  %call57 = call i32 @max_reg_num() #6, !dbg !2458
  %conv58 = sext i32 %call57 to i64, !dbg !2458
  %mul59 = shl nsw i64 %conv58, 2, !dbg !2459
  %call60 = call i8* @ira_allocate(i64 %mul59) #6, !dbg !2460
  store i8* %call60, i8** bitcast (i32** @allocno_last_set_check to i8**), align 8, !dbg !2461
  %call61 = call i32 @max_reg_num() #6, !dbg !2462
  %conv62 = sext i32 %call61 to i64, !dbg !2462
  %mul63 = shl nsw i64 %conv62, 2, !dbg !2463
  %call64 = call i8* @memset(i8* %call60, i32 0, i64 %mul63) #6, !dbg !2464
  %call65 = call i8* @memset(i8* bitcast ([53 x i32]* @hard_regno_last_set_check to i8*), i32 0, i64 212) #6, !dbg !2465
  store i32 0, i32* @curr_tick, align 4, !dbg !2466
  %49 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2467
  %cfg67 = getelementptr inbounds %struct.function, %struct.function* %49, i64 0, i32 1, !dbg !2467
  %50 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg67, align 8, !dbg !2467
  %x_entry_block_ptr68 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %50, i64 0, i32 0, !dbg !2467
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr68, align 8, !dbg !2467
  br label %for.cond70, !dbg !2467

for.cond70:                                       ; preds = %for.body76, %for.end52
  %52 = phi %struct.control_flow_graph* [ %50, %for.end52 ], [ %.pre7, %for.body76 ], !dbg !2469
  %.pn1 = phi %struct.basic_block_def* [ %51, %for.end52 ], [ %bb.1, %for.body76 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !2471
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2358, metadata !DIExpression()), !dbg !2374
  %x_exit_block_ptr73 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 1, !dbg !2469
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr73, align 8, !dbg !2469
  %cmp74 = icmp eq %struct.basic_block_def* %bb.1, %53, !dbg !2469
  br i1 %cmp74, label %for.end79, label %for.body76, !dbg !2467

for.body76:                                       ; preds = %for.cond70
  call fastcc void @unify_moves(%struct.basic_block_def* %bb.1, i8 zeroext 1) #7, !dbg !2472
  %.pre6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2469
  %cfg72.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre6, i64 0, i32 1, !dbg !2473
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg72.phi.trans.insert, align 8, !dbg !2469
  br label %for.cond70, !dbg !2469, !llvm.loop !2474

for.end79:                                        ; preds = %for.cond70
  %.lcssa = phi %struct.control_flow_graph* [ %52, %for.cond70 ], !dbg !2469
  %bb.1.lcssa = phi %struct.basic_block_def* [ %bb.1, %for.cond70 ], !dbg !2471
  %x_entry_block_ptr82 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2476
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr82, align 8, !dbg !2476
  br label %for.cond84, !dbg !2476

for.cond84:                                       ; preds = %for.body90, %for.end79
  %55 = phi %struct.basic_block_def* [ %bb.1.lcssa, %for.end79 ], [ %.pre10, %for.body90 ], !dbg !2478
  %.pn2 = phi %struct.basic_block_def* [ %54, %for.end79 ], [ %bb.2, %for.body90 ]
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn2, i64 0, i32 6, !dbg !2480
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2358, metadata !DIExpression()), !dbg !2374
  %cmp88 = icmp eq %struct.basic_block_def* %bb.2, %55, !dbg !2478
  br i1 %cmp88, label %for.end93, label %for.body90, !dbg !2476

for.body90:                                       ; preds = %for.cond84
  call fastcc void @unify_moves(%struct.basic_block_def* %bb.2, i8 zeroext 0) #7, !dbg !2481
  %.pre8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2478
  %cfg86.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre8, i64 0, i32 1, !dbg !2482
  %.pre9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg86.phi.trans.insert, align 8, !dbg !2478
  %x_exit_block_ptr87.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre9, i64 0, i32 1, !dbg !2482
  %.pre10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr87.phi.trans.insert, align 8, !dbg !2478
  br label %for.cond84, !dbg !2478, !llvm.loop !2483

for.end93:                                        ; preds = %for.cond84
  %56 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2485
  %call94 = call fastcc %struct.VEC_move_t_heap* @VEC_move_t_heap_alloc(i32 %56) #7, !dbg !2485
  store %struct.VEC_move_t_heap* %call94, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !2486
  call fastcc void @emit_moves() #7, !dbg !2487
  call fastcc void @add_ranges_and_copies() #7, !dbg !2488
  %57 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2489
  %cfg96 = getelementptr inbounds %struct.function, %struct.function* %57, i64 0, i32 1, !dbg !2489
  %58 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg96, align 8, !dbg !2489
  %x_entry_block_ptr97 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %58, i64 0, i32 0, !dbg !2489
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr97, align 8, !dbg !2489
  %60 = bitcast %struct.edge_iterator* %tmp112 to i8*, !dbg !2491
  %61 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp112, i64 0, i32 0, !dbg !2491
  %62 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp112, i64 0, i32 1, !dbg !2491
  br label %for.cond99, !dbg !2489

for.cond99:                                       ; preds = %for.inc122, %for.end93
  %63 = phi %struct.control_flow_graph* [ %58, %for.end93 ], [ %.pre12, %for.inc122 ], !dbg !2495
  %.pn3 = phi %struct.basic_block_def* [ %59, %for.end93 ], [ %bb.3, %for.inc122 ]
  %bb.3.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn3, i64 0, i32 6, !dbg !2496
  %bb.3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.3.in, align 8, !dbg !2496
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !2358, metadata !DIExpression()), !dbg !2374
  %x_exit_block_ptr102 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %63, i64 0, i32 1, !dbg !2495
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr102, align 8, !dbg !2495
  %cmp103 = icmp eq %struct.basic_block_def* %bb.3, %64, !dbg !2495
  br i1 %cmp103, label %for.end124, label %for.body105, !dbg !2489

for.body105:                                      ; preds = %for.cond99
  %65 = load %struct.move**, %struct.move*** @at_bb_start, align 8, !dbg !2497
  %index106 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 9, !dbg !2498
  %66 = load i32, i32* %index106, align 8, !dbg !2498
  %idxprom107 = sext i32 %66 to i64, !dbg !2497
  %arrayidx108 = getelementptr inbounds %struct.move*, %struct.move** %65, i64 %idxprom107, !dbg !2497
  %67 = load %struct.move*, %struct.move** %arrayidx108, align 8, !dbg !2497
  call fastcc void @free_move_list(%struct.move* %67) #7, !dbg !2499
  %68 = load %struct.move**, %struct.move*** @at_bb_end, align 8, !dbg !2500
  %69 = load i32, i32* %index106, align 8, !dbg !2501
  %idxprom110 = sext i32 %69 to i64, !dbg !2500
  %arrayidx111 = getelementptr inbounds %struct.move*, %struct.move** %68, i64 %idxprom110, !dbg !2500
  %70 = load %struct.move*, %struct.move** %arrayidx111, align 8, !dbg !2500
  call fastcc void @free_move_list(%struct.move* %70) #7, !dbg !2502
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #8, !dbg !2503
  %succs113 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 1, !dbg !2503
  %call114 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs113) #7, !dbg !2503
  %71 = extractvalue { i32, %struct.VEC_edge_gc** } %call114, 0, !dbg !2503
  store i32 %71, i32* %61, align 8, !dbg !2503
  %72 = extractvalue { i32, %struct.VEC_edge_gc** } %call114, 1, !dbg !2503
  store %struct.VEC_edge_gc** %72, %struct.VEC_edge_gc*** %62, align 8, !dbg !2503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %60, i64 16, i1 false), !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #8, !dbg !2503
  br label %for.cond115, !dbg !2503

for.cond115:                                      ; preds = %for.body118, %for.body105
  %73 = load i32, i32* %32, align 8, !dbg !2504
  %74 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %33, align 8, !dbg !2504
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2367, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  %call116 = call fastcc zeroext i8 @ei_cond(i32 %73, %struct.VEC_edge_gc** %74, %struct.edge_def** nonnull %e) #7, !dbg !2504
  %tobool117 = icmp eq i8 %call116, 0, !dbg !2503
  br i1 %tobool117, label %for.inc122, label %for.body118, !dbg !2503

for.body118:                                      ; preds = %for.cond115
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2506
  call void @llvm.dbg.value(metadata %struct.edge_def* %75, metadata !2367, metadata !DIExpression()), !dbg !2374
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i64 0, i32 3, !dbg !2508
  %76 = bitcast i8** %aux to %struct.move**, !dbg !2508
  %77 = load %struct.move*, %struct.move** %76, align 8, !dbg !2508
  call fastcc void @free_move_list(%struct.move* %77) #7, !dbg !2509
  %78 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2510
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2367, metadata !DIExpression()), !dbg !2374
  %aux119 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i64 0, i32 3, !dbg !2511
  store i8* null, i8** %aux119, align 8, !dbg !2512
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2360, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2504
  br label %for.cond115, !dbg !2504, !llvm.loop !2513

for.inc122:                                       ; preds = %for.cond115
  %.pre11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2495
  %cfg101.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre11, i64 0, i32 1, !dbg !2515
  %.pre12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg101.phi.trans.insert, align 8, !dbg !2495
  br label %for.cond99, !dbg !2495, !llvm.loop !2516

for.end124:                                       ; preds = %for.cond99
  call fastcc void @VEC_move_t_heap_free(%struct.VEC_move_t_heap** nonnull @move_vec) #7, !dbg !2518
  %79 = load i8*, i8** bitcast (i32** @allocno_last_set_check to i8**), align 8, !dbg !2519
  call void @ira_free(i8* %79) #6, !dbg !2520
  %80 = load i8*, i8** bitcast (%struct.move*** @allocno_last_set to i8**), align 8, !dbg !2521
  call void @ira_free(i8* %80) #6, !dbg !2522
  call void @commit_edge_insertions() #6, !dbg !2523
  %81 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2524
  %cfg126 = getelementptr inbounds %struct.function, %struct.function* %81, i64 0, i32 1, !dbg !2524
  %82 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg126, align 8, !dbg !2524
  %x_entry_block_ptr127 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %82, i64 0, i32 0, !dbg !2524
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr127, align 8, !dbg !2524
  br label %for.cond129, !dbg !2524

for.cond129:                                      ; preds = %for.inc169, %for.end124
  %84 = phi %struct.control_flow_graph* [ %82, %for.end124 ], [ %.pre14, %for.inc169 ], !dbg !2526
  %.pn4 = phi %struct.basic_block_def* [ %83, %for.end124 ], [ %bb.4, %for.inc169 ]
  %bb.4.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn4, i64 0, i32 6, !dbg !2528
  %bb.4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.4.in, align 8, !dbg !2528
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.4, metadata !2358, metadata !DIExpression()), !dbg !2374
  %x_exit_block_ptr132 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %84, i64 0, i32 1, !dbg !2526
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr132, align 8, !dbg !2526
  %cmp133 = icmp eq %struct.basic_block_def* %bb.4, %85, !dbg !2526
  br i1 %cmp133, label %for.end171, label %for.body135, !dbg !2524

for.body135:                                      ; preds = %for.cond129
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 7, !dbg !2529
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2529
  %86 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2529
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %86, i64 0, i32 1, !dbg !2529
  br label %for.cond136, !dbg !2529

for.cond136:                                      ; preds = %for.inc163, %for.body135
  %insn.0.in = phi %struct.rtx_def** [ %end_, %for.body135 ], [ %rt_rtx167, %for.inc163 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2531
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2359, metadata !DIExpression()), !dbg !2374
  %tobool137 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2532
  br i1 %tobool137, label %for.inc169, label %land.rhs, !dbg !2532

land.rhs:                                         ; preds = %for.cond136
  %87 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2532
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %87, i64 0, i32 0, !dbg !2532
  %88 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2532
  %89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2532
  %rt_rtx = bitcast %union.rtunion_def* %89 to %struct.rtx_def**, !dbg !2532
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2532
  %cmp141 = icmp eq %struct.rtx_def* %insn.0, %90, !dbg !2532
  br i1 %cmp141, label %for.inc169, label %for.body143, !dbg !2529

for.body143:                                      ; preds = %land.rhs
  %91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2534
  %bf.load = load i32, i32* %91, align 8, !dbg !2534
  %bf.clear = and i32 %bf.load, 65535, !dbg !2534
  %cmp144 = icmp eq i32 %bf.clear, 8, !dbg !2534
  br i1 %cmp144, label %if.then160, label %lor.lhs.false, !dbg !2534

lor.lhs.false:                                    ; preds = %for.body143
  %cmp148 = icmp eq i32 %bf.clear, 7, !dbg !2534
  br i1 %cmp148, label %if.then160, label %lor.lhs.false150, !dbg !2534

lor.lhs.false150:                                 ; preds = %lor.lhs.false
  %cmp153 = icmp eq i32 %bf.clear, 9, !dbg !2534
  br i1 %cmp153, label %if.then160, label %lor.lhs.false155, !dbg !2534

lor.lhs.false155:                                 ; preds = %lor.lhs.false150
  %cmp158 = icmp eq i32 %bf.clear, 10, !dbg !2534
  br i1 %cmp158, label %if.then160, label %for.inc163, !dbg !2536

if.then160:                                       ; preds = %lor.lhs.false155, %lor.lhs.false150, %lor.lhs.false, %for.body143
  %call161 = call fastcc i32 @recog_memoized(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2537
  br label %for.inc163, !dbg !2537

for.inc163:                                       ; preds = %lor.lhs.false155, %if.then160
  %92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2532
  %rt_rtx167 = bitcast %union.rtunion_def* %92 to %struct.rtx_def**, !dbg !2532
  br label %for.cond136, !dbg !2532, !llvm.loop !2538

for.inc169:                                       ; preds = %land.rhs, %for.cond136
  %.pre13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2526
  %cfg131.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre13, i64 0, i32 1, !dbg !2540
  %.pre14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg131.phi.trans.insert, align 8, !dbg !2526
  br label %for.cond129, !dbg !2526, !llvm.loop !2541

for.end171:                                       ; preds = %for.cond129
  %93 = load i8*, i8** bitcast (%struct.move*** @at_bb_end to i8**), align 8, !dbg !2543
  call void @ira_free(i8* %93) #6, !dbg !2544
  %94 = load i8*, i8** bitcast (%struct.move*** @at_bb_start to i8**), align 8, !dbg !2545
  call void @ira_free(i8* %94) #6, !dbg !2546
  br label %cleanup, !dbg !2547

cleanup:                                          ; preds = %for.end, %for.end171
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2547
  ret void, !dbg !2547
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* %i) unnamed_addr #0 !dbg !2548 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !2553, metadata !DIExpression()), !dbg !2554
  %n = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !2555
  store i32 0, i32* %n, align 4, !dbg !2556
  ret void, !dbg !2557
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* %i, %struct.ira_allocno** %a) unnamed_addr #0 !dbg !2558 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2563, metadata !DIExpression()), !dbg !2565
  %n1 = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !2566
  %0 = load i32, i32* %n1, align 4, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %0, metadata !2564, metadata !DIExpression()), !dbg !2565
  %1 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2568
  %2 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !2570
  %3 = sext i32 %0 to i64, !dbg !2572
  %4 = sext i32 %1 to i64, !dbg !2572
  br label %for.cond, !dbg !2572

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %3, %entry ], !dbg !2573
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2564, metadata !DIExpression()), !dbg !2565
  %cmp = icmp slt i64 %indvars.iv, %4, !dbg !2574
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !2575

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %2, i64 %indvars.iv, !dbg !2576
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !2576
  %cmp2 = icmp eq %struct.ira_allocno* %5, null, !dbg !2577
  br i1 %cmp2, label %for.inc, label %if.then, !dbg !2578

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.ira_allocno* [ %5, %for.body ], !dbg !2576
  %indvars.iv.lcssa3 = phi i64 [ %indvars.iv, %for.body ], !dbg !2573
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa3, metadata !2564, metadata !DIExpression()), !dbg !2565
  %6 = ptrtoint %struct.ira_allocno* %.lcssa to i64, !dbg !2578
  %7 = trunc i64 %indvars.iv.lcssa3 to i32, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %7, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %7, metadata !2564, metadata !DIExpression()), !dbg !2565
  %8 = bitcast %struct.ira_allocno** %a to i64*, !dbg !2579
  store i64 %6, i64* %8, align 8, !dbg !2579
  %add = add nsw i32 %7, 1, !dbg !2581
  store i32 %add, i32* %n1, align 4, !dbg !2582
  br label %cleanup, !dbg !2583

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i32 undef, metadata !2564, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2565
  br label %for.cond, !dbg !2585, !llvm.loop !2586

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2588

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %cleanup.loopexit ], !dbg !2565
  ret i8 %retval.0, !dbg !2588
}

declare dso_local i8* @ira_allocate(i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @ira_allocate_bitmap() local_unnamed_addr #1

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

declare dso_local void @ira_traverse_loop_tree(i8 zeroext, %struct.ira_loop_tree_node*, void (%struct.ira_loop_tree_node*)*, void (%struct.ira_loop_tree_node*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @change_loop(%struct.ira_loop_tree_node* %node) #4 !dbg !2589 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %node, metadata !2593, metadata !DIExpression()), !dbg !2612
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2613
  %1 = bitcast i32* %i to i8*, !dbg !2614
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2614
  %2 = bitcast %struct.rtx_def** %insn to i8*, !dbg !2615
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2615
  %3 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !2616
  %cmp = icmp eq %struct.ira_loop_tree_node* %3, %node, !dbg !2618
  br i1 %cmp, label %if.end103, label %if.then, !dbg !2619

if.then:                                          ; preds = %entry
  %bb = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node, i64 0, i32 0, !dbg !2620
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2620
  %cmp1 = icmp eq %struct.basic_block_def* %4, null, !dbg !2623
  br i1 %cmp1, label %if.end27, label %if.then2, !dbg !2624

if.then2:                                         ; preds = %if.then
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 7, !dbg !2625
  %5 = bitcast %union.basic_block_il_dependent* %il to i64**, !dbg !2625
  %6 = load i64*, i64** %5, align 8, !dbg !2625
  %7 = load i64, i64* %6, align 8, !dbg !2625
  %8 = bitcast %struct.rtx_def** %insn to i64*, !dbg !2625
  store i64 %7, i64* %8, align 8, !dbg !2625
  %9 = inttoptr i64 %7 to %struct.rtx_def*, !dbg !2625
  %10 = inttoptr i64 %7 to i32*, !dbg !2625
  br label %for.cond, !dbg !2625

for.cond:                                         ; preds = %for.inc, %if.then2
  %11 = phi i32* [ %29, %for.inc ], [ %10, %if.then2 ]
  %12 = phi i32* [ %29, %for.inc ], [ %10, %if.then2 ]
  %13 = phi i32* [ %29, %for.inc ], [ %10, %if.then2 ]
  %14 = phi i32* [ %29, %for.inc ], [ %10, %if.then2 ]
  %15 = phi %struct.rtx_def* [ %28, %for.inc ], [ %9, %if.then2 ]
  %16 = phi %struct.rtx_def* [ %28, %for.inc ], [ %9, %if.then2 ], !dbg !2628
  call void @llvm.dbg.value(metadata %struct.rtx_def* %16, metadata !2608, metadata !DIExpression()), !dbg !2612
  %tobool = icmp eq %struct.rtx_def* %16, null, !dbg !2628
  br i1 %tobool, label %cleanup.loopexit2, label %land.rhs, !dbg !2628

land.rhs:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.rtx_def* %15, metadata !2608, metadata !DIExpression()), !dbg !2612
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2628
  %il5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 7, !dbg !2628
  %rtl6 = bitcast %union.basic_block_il_dependent* %il5 to %struct.rtl_bb_info**, !dbg !2628
  %18 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl6, align 8, !dbg !2628
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %18, i64 0, i32 1, !dbg !2628
  %19 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2628
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2628
  %rt_rtx = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !2628
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2628
  %cmp7 = icmp eq %struct.rtx_def* %15, %21, !dbg !2628
  br i1 %cmp7, label %cleanup.loopexit2, label %for.body, !dbg !2625

for.body:                                         ; preds = %land.rhs
  %bf.load = load i32, i32* %14, align 8, !dbg !2630
  %bf.clear = and i32 %bf.load, 65535, !dbg !2630
  %cmp8 = icmp eq i32 %bf.clear, 8, !dbg !2630
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false, !dbg !2630

lor.lhs.false:                                    ; preds = %for.body
  %bf.load9 = load i32, i32* %13, align 8, !dbg !2630
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !2630
  %cmp11 = icmp eq i32 %bf.clear10, 7, !dbg !2630
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false12, !dbg !2630

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %bf.load13 = load i32, i32* %12, align 8, !dbg !2630
  %bf.clear14 = and i32 %bf.load13, 65535, !dbg !2630
  %cmp15 = icmp eq i32 %bf.clear14, 9, !dbg !2630
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false16, !dbg !2630

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %bf.load17 = load i32, i32* %11, align 8, !dbg !2630
  %bf.clear18 = and i32 %bf.load17, 65535, !dbg !2630
  %cmp19 = icmp eq i32 %bf.clear18, 10, !dbg !2630
  br i1 %cmp19, label %land.lhs.true, label %for.inc, !dbg !2632

land.lhs.true:                                    ; preds = %lor.lhs.false16, %lor.lhs.false12, %lor.lhs.false, %for.body
  call void @llvm.dbg.value(metadata %struct.rtx_def** %insn, metadata !2608, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  %call = call fastcc zeroext i8 @change_regs(%struct.rtx_def** nonnull %insn) #7, !dbg !2633
  %tobool20 = icmp eq i8 %call, 0, !dbg !2633
  br i1 %tobool20, label %for.inc, label %if.then21, !dbg !2634

if.then21:                                        ; preds = %land.lhs.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !2608, metadata !DIExpression()), !dbg !2612
  %call22 = call zeroext i8 @df_insn_rescan(%struct.rtx_def* %22) #6, !dbg !2637
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2638
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !2608, metadata !DIExpression()), !dbg !2612
  call void @df_notes_rescan(%struct.rtx_def* %23) #6, !dbg !2639
  br label %for.inc, !dbg !2640

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false16, %if.then21
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !2608, metadata !DIExpression()), !dbg !2612
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2628
  %26 = bitcast %union.rtunion_def* %25 to i64*, !dbg !2628
  %27 = load i64, i64* %26, align 8, !dbg !2628
  store i64 %27, i64* %8, align 8, !dbg !2628
  %28 = inttoptr i64 %27 to %struct.rtx_def*, !dbg !2628
  %29 = inttoptr i64 %27 to i32*, !dbg !2628
  br label %for.cond, !dbg !2628, !llvm.loop !2641

if.end27:                                         ; preds = %if.then
  %30 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2643
  %cmp28 = icmp sgt i32 %30, 3, !dbg !2645
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2646
  %cmp31 = icmp ne %struct._IO_FILE* %31, null, !dbg !2647
  %or.cond = and i1 %cmp28, %cmp31, !dbg !2648
  br i1 %or.cond, label %if.then33, label %if.end36, !dbg !2648

if.then33:                                        ; preds = %if.end27
  %loop = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node, i64 0, i32 1, !dbg !2649
  %32 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2649
  %num = getelementptr inbounds %struct.loop, %struct.loop* %32, i64 0, i32 0, !dbg !2650
  %33 = load i32, i32* %num, align 8, !dbg !2650
  %header = getelementptr inbounds %struct.loop, %struct.loop* %32, i64 0, i32 2, !dbg !2651
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2651
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 9, !dbg !2652
  %35 = load i32, i32* %index, align 8, !dbg !2652
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %35) #6, !dbg !2653
  br label %if.end36, !dbg !2653

if.end36:                                         ; preds = %if.then33, %if.end27
  %36 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_curr_loop_tree_node, align 8, !dbg !2654
  %parent37 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %36, i64 0, i32 6, !dbg !2655
  %37 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent37, align 8, !dbg !2655
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %37, metadata !2611, metadata !DIExpression()), !dbg !2612
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %37, i64 0, i32 9, !dbg !2656
  %38 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !2656
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %38, metadata !2607, metadata !DIExpression()), !dbg !2612
  %border_allocnos = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %36, i64 0, i32 13, !dbg !2657
  %39 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %border_allocnos, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2594, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call void @llvm.dbg.value(metadata i32* %i, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %39, i32 0, i32* nonnull %i) #7, !dbg !2657
  br label %for.cond38, !dbg !2657

for.cond38:                                       ; preds = %for.inc101, %if.end36
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2594, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call void @llvm.dbg.value(metadata i32* %i, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  %call39 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2659
  %tobool40 = icmp eq i8 %call39, 0, !dbg !2657
  br i1 %tobool40, label %if.end103.loopexit, label %for.body41, !dbg !2657

for.body41:                                       ; preds = %for.cond38
  %40 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !2661
  %41 = load i32, i32* %i, align 4, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %41, metadata !2602, metadata !DIExpression()), !dbg !2612
  %idxprom = zext i32 %41 to i64, !dbg !2661
  %arrayidx42 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %40, i64 %idxprom, !dbg !2661
  %42 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx42, align 8, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %42, metadata !2605, metadata !DIExpression()), !dbg !2612
  %regno43 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %42, i64 0, i32 1, !dbg !2664
  %43 = load i32, i32* %regno43, align 4, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %43, metadata !2603, metadata !DIExpression()), !dbg !2612
  %cover_class44 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %42, i64 0, i32 9, !dbg !2665
  %44 = load i32, i32* %cover_class44, align 8, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %44, metadata !2610, metadata !DIExpression()), !dbg !2612
  %idxprom45 = sext i32 %43 to i64, !dbg !2666
  %arrayidx46 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %38, i64 %idxprom45, !dbg !2666
  %45 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx46, align 8, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %45, metadata !2606, metadata !DIExpression()), !dbg !2612
  %cmp47 = icmp eq %struct.ira_allocno* %45, null, !dbg !2667
  br i1 %cmp47, label %if.end80, label %land.lhs.true49, !dbg !2669

land.lhs.true49:                                  ; preds = %for.body41
  %hard_regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %42, i64 0, i32 3, !dbg !2670
  %46 = load i32, i32* %hard_regno, align 4, !dbg !2670
  %hard_regno50 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %45, i64 0, i32 3, !dbg !2671
  %47 = load i32, i32* %hard_regno50, align 4, !dbg !2671
  %cmp51 = icmp eq i32 %46, %47, !dbg !2672
  br i1 %cmp51, label %land.lhs.true53, label %if.end80, !dbg !2673

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %cmp55 = icmp slt i32 %46, 0, !dbg !2674
  br i1 %cmp55, label %for.inc101, label %lor.lhs.false57, !dbg !2675

lor.lhs.false57:                                  ; preds = %land.lhs.true53
  %idxprom58 = zext i32 %44 to i64, !dbg !2676
  %arrayidx59 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %37, i64 0, i32 11, i64 %idxprom58, !dbg !2676
  %48 = load i32, i32* %arrayidx59, align 4, !dbg !2676
  %arrayidx61 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom58, !dbg !2677
  %49 = load i32, i32* %arrayidx61, align 4, !dbg !2677
  %cmp62 = icmp slt i32 %48, %49, !dbg !2678
  br i1 %cmp62, label %for.inc101, label %lor.lhs.false64, !dbg !2679

lor.lhs.false64:                                  ; preds = %lor.lhs.false57
  %mode = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %42, i64 0, i32 2, !dbg !2680
  %50 = load i32, i32* %mode, align 8, !dbg !2680
  %idxprom65 = zext i32 %50 to i64, !dbg !2680
  %arrayidx66 = getelementptr inbounds [87 x i64], [87 x i64]* @ira_prohibited_mode_move_regs, i64 0, i64 %idxprom65, !dbg !2680
  %51 = load i64, i64* %arrayidx66, align 8, !dbg !2680
  %sh_prom = zext i32 %46 to i64, !dbg !2680
  %shl = shl i64 1, %sh_prom, !dbg !2680
  %and = and i64 %51, %shl, !dbg !2680
  %tobool68 = icmp eq i64 %and, 0, !dbg !2680
  br i1 %tobool68, label %lor.lhs.false69, label %for.inc101, !dbg !2681

lor.lhs.false69:                                  ; preds = %lor.lhs.false64
  %52 = load i8*, i8** @ira_reg_equiv_invariant_p, align 8, !dbg !2682
  %arrayidx71 = getelementptr inbounds i8, i8* %52, i64 %idxprom45, !dbg !2682
  %53 = load i8, i8* %arrayidx71, align 1, !dbg !2682
  %tobool73 = icmp eq i8 %53, 0, !dbg !2682
  br i1 %tobool73, label %lor.lhs.false74, label %for.inc101, !dbg !2683

lor.lhs.false74:                                  ; preds = %lor.lhs.false69
  %54 = load %struct.rtx_def**, %struct.rtx_def*** @ira_reg_equiv_const, align 8, !dbg !2684
  %arrayidx76 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %54, i64 %idxprom45, !dbg !2684
  %55 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx76, align 8, !dbg !2684
  %cmp77 = icmp eq %struct.rtx_def* %55, null, !dbg !2685
  br i1 %cmp77, label %if.end80, label %for.inc101, !dbg !2686

if.end80:                                         ; preds = %lor.lhs.false74, %for.body41, %land.lhs.true49
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %42, i64 0, i32 4, !dbg !2687
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !2687
  call void @llvm.dbg.value(metadata %struct.rtx_def* %56, metadata !2609, metadata !DIExpression()), !dbg !2612
  br i1 %cmp47, label %if.then89, label %lor.lhs.false83, !dbg !2688

lor.lhs.false83:                                  ; preds = %if.end80
  %reg84 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %45, i64 0, i32 4, !dbg !2690
  %57 = load %struct.rtx_def*, %struct.rtx_def** %reg84, align 8, !dbg !2690
  %call85 = call fastcc i32 @rhs_regno(%struct.rtx_def* %57) #7, !dbg !2690
  %call86 = call fastcc i32 @rhs_regno(%struct.rtx_def* %56) #7, !dbg !2691
  %cmp87 = icmp eq i32 %call85, %call86, !dbg !2692
  br i1 %cmp87, label %if.then89, label %for.inc101, !dbg !2693

if.then89:                                        ; preds = %lor.lhs.false83, %if.end80
  %58 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2694
  %cmp90 = icmp sgt i32 %58, 3, !dbg !2697
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2698
  %tobool93 = icmp ne %struct._IO_FILE* %59, null, !dbg !2698
  %or.cond1 = and i1 %cmp90, %tobool93, !dbg !2699
  br i1 %or.cond1, label %if.then94, label %if.end98, !dbg !2699

if.then94:                                        ; preds = %if.then89
  %hard_regno95 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %42, i64 0, i32 3, !dbg !2700
  %60 = load i32, i32* %hard_regno95, align 4, !dbg !2700
  %hard_regno96 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %45, i64 0, i32 3, !dbg !2701
  %61 = load i32, i32* %hard_regno96, align 4, !dbg !2701
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61) #6, !dbg !2702
  br label %if.end98, !dbg !2702

if.end98:                                         ; preds = %if.then94, %if.then89
  %call99 = call fastcc %struct.rtx_def* @create_new_reg(%struct.rtx_def* %56) #7, !dbg !2703
  call fastcc void @set_allocno_reg(%struct.ira_allocno* %42, %struct.rtx_def* %call99) #7, !dbg !2704
  br label %for.inc101, !dbg !2705

for.inc101:                                       ; preds = %lor.lhs.false74, %lor.lhs.false69, %lor.lhs.false64, %lor.lhs.false83, %if.end98, %land.lhs.true53, %lor.lhs.false57
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2594, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call void @llvm.dbg.value(metadata i32* %i, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2659
  br label %for.cond38, !dbg !2659, !llvm.loop !2706

if.end103.loopexit:                               ; preds = %for.cond38
  br label %if.end103, !dbg !2708

if.end103:                                        ; preds = %if.end103.loopexit, %entry
  %62 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_allocno_bitmap, align 8, !dbg !2708
  %63 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_curr_loop_tree_node, align 8, !dbg !2709
  %all_allocnos = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %63, i64 0, i32 12, !dbg !2710
  %64 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_allocnos, align 8, !dbg !2710
  %border_allocnos104 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %63, i64 0, i32 13, !dbg !2711
  %65 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %border_allocnos104, align 8, !dbg !2711
  %call105 = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %62, %struct.bitmap_head_def* %64, %struct.bitmap_head_def* %65) #6, !dbg !2712
  %66 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_allocno_bitmap, align 8, !dbg !2713
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2594, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call void @llvm.dbg.value(metadata i32* %i, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %66, i32 0, i32* nonnull %i) #7, !dbg !2713
  br label %for.cond106, !dbg !2713

for.cond106:                                      ; preds = %for.inc128, %if.end103
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2594, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call void @llvm.dbg.value(metadata i32* %i, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  %call107 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2715
  %tobool108 = icmp eq i8 %call107, 0, !dbg !2713
  br i1 %tobool108, label %cleanup.loopexit, label %for.body109, !dbg !2713

for.body109:                                      ; preds = %for.cond106
  %67 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !2717
  %68 = load i32, i32* %i, align 4, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %68, metadata !2602, metadata !DIExpression()), !dbg !2612
  %idxprom110 = zext i32 %68 to i64, !dbg !2717
  %arrayidx111 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %67, i64 %idxprom110, !dbg !2717
  %69 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx111, align 8, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %69, metadata !2605, metadata !DIExpression()), !dbg !2612
  %regno112 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %69, i64 0, i32 1, !dbg !2720
  %70 = load i32, i32* %regno112, align 4, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %70, metadata !2603, metadata !DIExpression()), !dbg !2612
  %cap_member = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %69, i64 0, i32 17, !dbg !2721
  %71 = load %struct.ira_allocno*, %struct.ira_allocno** %cap_member, align 8, !dbg !2721
  %cmp113 = icmp eq %struct.ira_allocno* %71, null, !dbg !2723
  br i1 %cmp113, label %if.end116, label %for.inc128, !dbg !2724

if.end116:                                        ; preds = %for.body109
  %72 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @used_regno_bitmap, align 8, !dbg !2725
  %call117 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %72, i32 %70) #6, !dbg !2726
  %conv118 = trunc i32 %call117 to i8, !dbg !2726
  call void @llvm.dbg.value(metadata i8 %conv118, metadata !2604, metadata !DIExpression()), !dbg !2612
  %73 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @used_regno_bitmap, align 8, !dbg !2727
  %call119 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %73, i32 %70) #6, !dbg !2728
  %somewhere_renamed_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %69, i64 0, i32 31, !dbg !2729
  %bf.load120 = load i16, i16* %somewhere_renamed_p, align 4, !dbg !2730
  %bf.set = or i16 %bf.load120, 2, !dbg !2730
  store i16 %bf.set, i16* %somewhere_renamed_p, align 4, !dbg !2730
  %tobool122 = icmp eq i8 %conv118, 0, !dbg !2731
  br i1 %tobool122, label %for.inc128, label %if.end124, !dbg !2733

if.end124:                                        ; preds = %if.end116
  %74 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @renamed_regno_bitmap, align 8, !dbg !2734
  %call125 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %74, i32 %70) #6, !dbg !2735
  %reg126 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %69, i64 0, i32 4, !dbg !2736
  %75 = load %struct.rtx_def*, %struct.rtx_def** %reg126, align 8, !dbg !2736
  %call127 = call fastcc %struct.rtx_def* @create_new_reg(%struct.rtx_def* %75) #7, !dbg !2737
  call fastcc void @set_allocno_reg(%struct.ira_allocno* %69, %struct.rtx_def* %call127) #7, !dbg !2738
  br label %for.inc128, !dbg !2739

for.inc128:                                       ; preds = %if.end116, %for.body109, %if.end124
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2594, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call void @llvm.dbg.value(metadata i32* %i, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2715
  br label %for.cond106, !dbg !2715, !llvm.loop !2740

cleanup.loopexit:                                 ; preds = %for.cond106
  br label %cleanup, !dbg !2742

cleanup.loopexit2:                                ; preds = %for.cond, %land.rhs
  br label %cleanup, !dbg !2742

cleanup:                                          ; preds = %cleanup.loopexit2, %cleanup.loopexit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2742
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2742
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2742
  ret void, !dbg !2742
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_allocno_somewhere_renamed_p() unnamed_addr #4 !dbg !2743 {
entry:
  %allocno = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %0 = bitcast %struct.ira_allocno** %allocno to i8*, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2750
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2751
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2752
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2753
  br label %for.cond, !dbg !2753

for.cond:                                         ; preds = %if.end, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %allocno, metadata !2748, metadata !DIExpression(DW_OP_deref)), !dbg !2752
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2752
  %call = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %allocno) #7, !dbg !2755
  %tobool = icmp eq i8 %call, 0, !dbg !2753
  br i1 %tobool, label %for.end, label %for.body, !dbg !2753

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %allocno, align 8, !dbg !2757
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !2748, metadata !DIExpression()), !dbg !2752
  %regno1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 1, !dbg !2757
  %3 = load i32, i32* %regno1, align 4, !dbg !2757
  call void @llvm.dbg.value(metadata i32 %3, metadata !2747, metadata !DIExpression()), !dbg !2752
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @renamed_regno_bitmap, align 8, !dbg !2759
  %call2 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %3) #6, !dbg !2761
  %tobool3 = icmp eq i32 %call2, 0, !dbg !2761
  br i1 %tobool3, label %if.end, label %land.lhs.true, !dbg !2762

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %allocno, align 8, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !2748, metadata !DIExpression()), !dbg !2752
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 4, !dbg !2763
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !2763
  %call4 = call fastcc i32 @rhs_regno(%struct.rtx_def* %6) #7, !dbg !2763
  %cmp = icmp eq i32 %call4, %3, !dbg !2764
  br i1 %cmp, label %if.then, label %if.end, !dbg !2765

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.ira_allocno*, %struct.ira_allocno** %allocno, align 8, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %7, metadata !2748, metadata !DIExpression()), !dbg !2752
  %somewhere_renamed_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %7, i64 0, i32 31, !dbg !2766
  %bf.load = load i16, i16* %somewhere_renamed_p, align 4, !dbg !2767
  %bf.set = or i16 %bf.load, 2, !dbg !2767
  store i16 %bf.set, i16* %somewhere_renamed_p, align 4, !dbg !2767
  br label %if.end, !dbg !2766

if.end:                                           ; preds = %for.body, %if.then, %land.lhs.true
  br label %for.cond, !dbg !2755, !llvm.loop !2768

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2770
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2770
  ret void, !dbg !2770
}

declare dso_local void @ira_free_bitmap(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @setup_entered_from_non_parent_p() unnamed_addr #4 !dbg !2771 {
entry:
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !2775
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2775
  call void @llvm.dbg.value(metadata i32 0, metadata !2773, metadata !DIExpression()), !dbg !2776
  br label %for.cond, !dbg !2777

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2779
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2773, metadata !DIExpression()), !dbg !2776
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** getelementptr inbounds (%struct.loops, %struct.loops* @ira_loops, i64 0, i32 1), align 8, !dbg !2780
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2774, metadata !DIExpression(DW_OP_deref)), !dbg !2776
  %call = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %base, i32 %i.0, %struct.loop** nonnull %loop) #7, !dbg !2780
  %tobool1 = icmp eq i32 %call, 0, !dbg !2782
  br i1 %tobool1, label %for.end, label %for.body, !dbg !2782

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_nodes, align 8, !dbg !2783
  %idxprom = zext i32 %i.0 to i64, !dbg !2783
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %2, i64 %idxprom, i32 9, !dbg !2785
  %3 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !2785
  %cmp = icmp eq %struct.ira_allocno** %3, null, !dbg !2786
  br i1 %cmp, label %for.inc, label %if.then, !dbg !2787

if.then:                                          ; preds = %for.body
  %arrayidx3 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %2, i64 %idxprom, !dbg !2788
  %call4 = call fastcc zeroext i8 @entered_from_non_parent_p(%struct.ira_loop_tree_node* %arrayidx3) #7, !dbg !2789
  %4 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_nodes, align 8, !dbg !2790
  %entered_from_non_parent_p = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %4, i64 %idxprom, i32 10, !dbg !2791
  store i8 %call4, i8* %entered_from_non_parent_p, align 8, !dbg !2792
  br label %for.inc, !dbg !2790

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add i32 %i.0, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2773, metadata !DIExpression()), !dbg !2776
  br label %for.cond, !dbg !2794, !llvm.loop !2795

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2797
  ret void, !dbg !2797
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2798 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2802, metadata !DIExpression()), !dbg !2804
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2805
  store i32 0, i32* %index, align 8, !dbg !2806
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2807
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2808
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2809
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2809
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2809
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2816, metadata !DIExpression()), !dbg !2817
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2818
  %tobool = icmp eq i8 %call, 0, !dbg !2818
  br i1 %tobool, label %if.then, label %if.else, !dbg !2820

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2821
  br label %return, !dbg !2823

if.else:                                          ; preds = %entry
  br label %return, !dbg !2824

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2826
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2826
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2826
  ret i8 %retval.0, !dbg !2827
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_edge_moves(%struct.edge_def* %e) unnamed_addr #4 !dbg !2828 {
entry:
  %regno = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2832, metadata !DIExpression()), !dbg !2842
  %0 = bitcast i32* %regno to i8*, !dbg !2843
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2843
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2844
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2844
  %2 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_bb_nodes, align 8, !dbg !2845
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2845
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2845
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 9, !dbg !2845
  %4 = load i32, i32* %index, align 8, !dbg !2845
  %idxprom = sext i32 %4 to i64, !dbg !2845
  %parent = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %2, i64 %idxprom, i32 6, !dbg !2846
  %5 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent, align 8, !dbg !2846
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %5, metadata !2833, metadata !DIExpression()), !dbg !2842
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2847
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2847
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !2847
  %7 = load i32, i32* %index1, align 8, !dbg !2847
  %idxprom2 = sext i32 %7 to i64, !dbg !2847
  %parent4 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %2, i64 %idxprom2, i32 6, !dbg !2848
  %8 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent4, align 8, !dbg !2848
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %8, metadata !2834, metadata !DIExpression()), !dbg !2842
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 3, !dbg !2849
  store i8* null, i8** %aux, align 8, !dbg !2850
  %cmp = icmp eq %struct.ira_loop_tree_node* %5, %8, !dbg !2851
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2853

if.end:                                           ; preds = %entry
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %5, i64 0, i32 9, !dbg !2854
  %9 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !2854
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %9, metadata !2839, metadata !DIExpression()), !dbg !2842
  %regno_allocno_map5 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %8, i64 0, i32 9, !dbg !2855
  %10 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map5, align 8, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %10, metadata !2840, metadata !DIExpression()), !dbg !2842
  %11 = load i32, i32* %index1, align 8, !dbg !2856
  %call = tail call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %11) #7, !dbg !2856
  %in = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call, i64 0, i32 2, !dbg !2856
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in, align 8, !dbg !2856
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2835, metadata !DIExpression(DW_OP_deref)), !dbg !2842
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2842
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %12, i32 53, i32* nonnull %regno) #7, !dbg !2856
  br label %for.cond, !dbg !2856

for.cond:                                         ; preds = %for.inc, %if.end
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2835, metadata !DIExpression(DW_OP_deref)), !dbg !2842
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2842
  %call8 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2858
  %tobool = icmp eq i8 %call8, 0, !dbg !2856
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !2856

for.body:                                         ; preds = %for.cond
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2860
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !2860
  %14 = load i32, i32* %index10, align 8, !dbg !2860
  %call11 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %14) #7, !dbg !2860
  %out = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call11, i64 0, i32 3, !dbg !2860
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out, align 8, !dbg !2860
  %16 = load i32, i32* %regno, align 4, !dbg !2862
  call void @llvm.dbg.value(metadata i32 %16, metadata !2835, metadata !DIExpression()), !dbg !2842
  %call12 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %15, i32 %16) #6, !dbg !2863
  %tobool13 = icmp eq i32 %call12, 0, !dbg !2863
  br i1 %tobool13, label %for.inc, label %if.then14, !dbg !2864

if.then14:                                        ; preds = %for.body
  %17 = load i32, i32* %regno, align 4, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %17, metadata !2835, metadata !DIExpression()), !dbg !2842
  %idxprom15 = zext i32 %17 to i64, !dbg !2867
  %arrayidx16 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %9, i64 %idxprom15, !dbg !2867
  %18 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx16, align 8, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %18, metadata !2837, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 %17, metadata !2835, metadata !DIExpression()), !dbg !2842
  %arrayidx18 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %10, i64 %idxprom15, !dbg !2868
  %19 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx18, align 8, !dbg !2868
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %19, metadata !2838, metadata !DIExpression()), !dbg !2842
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %18, i64 0, i32 4, !dbg !2869
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !2869
  %call19 = call fastcc i32 @rhs_regno(%struct.rtx_def* %20) #7, !dbg !2869
  %reg20 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %19, i64 0, i32 4, !dbg !2871
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg20, align 8, !dbg !2871
  %call21 = call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !2871
  %cmp22 = icmp eq i32 %call19, %call21, !dbg !2872
  br i1 %cmp22, label %for.inc, label %if.end24, !dbg !2873

if.end24:                                         ; preds = %if.then14
  %hard_regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %19, i64 0, i32 3, !dbg !2874
  %22 = load i32, i32* %hard_regno, align 4, !dbg !2874
  %cmp25 = icmp slt i32 %22, 0, !dbg !2876
  br i1 %cmp25, label %land.lhs.true, label %if.end41, !dbg !2877

land.lhs.true:                                    ; preds = %if.end24
  %hard_regno26 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %18, i64 0, i32 3, !dbg !2878
  %23 = load i32, i32* %hard_regno26, align 4, !dbg !2878
  %cmp27 = icmp sgt i32 %23, -1, !dbg !2879
  br i1 %cmp27, label %land.lhs.true28, label %if.end41, !dbg !2880

land.lhs.true28:                                  ; preds = %land.lhs.true
  %call29 = call fastcc zeroext i8 @store_can_be_removed_p(%struct.ira_allocno* %18, %struct.ira_allocno* %19) #7, !dbg !2881
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2881
  br i1 %tobool30, label %if.end41, label %if.then31, !dbg !2882

if.then31:                                        ; preds = %land.lhs.true28
  %mem_optimized_dest = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %18, i64 0, i32 32, !dbg !2883
  store %struct.ira_allocno* %19, %struct.ira_allocno** %mem_optimized_dest, align 8, !dbg !2885
  %mem_optimized_dest_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %19, i64 0, i32 31, !dbg !2886
  %bf.load = load i16, i16* %mem_optimized_dest_p, align 4, !dbg !2887
  %bf.set = or i16 %bf.load, 1, !dbg !2887
  store i16 %bf.set, i16* %mem_optimized_dest_p, align 4, !dbg !2887
  %24 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2888
  %cmp32 = icmp sgt i32 %24, 3, !dbg !2890
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2891
  %cmp35 = icmp ne %struct._IO_FILE* %25, null, !dbg !2892
  %or.cond = and i1 %cmp32, %cmp35, !dbg !2893
  br i1 %or.cond, label %if.then37, label %for.inc, !dbg !2893

if.then37:                                        ; preds = %if.then31
  %26 = load i32, i32* %regno, align 4, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %26, metadata !2835, metadata !DIExpression()), !dbg !2842
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %18, i64 0, i32 0, !dbg !2895
  %27 = load i32, i32* %num, align 8, !dbg !2895
  %num38 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %19, i64 0, i32 0, !dbg !2896
  %28 = load i32, i32* %num38, align 8, !dbg !2896
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %26, i32 %27, i32 %28) #6, !dbg !2897
  br label %for.inc, !dbg !2897

if.end41:                                         ; preds = %land.lhs.true28, %land.lhs.true, %if.end24
  %call42 = call fastcc %struct.move* @create_move(%struct.ira_allocno* %19, %struct.ira_allocno* %18) #7, !dbg !2898
  call void @llvm.dbg.value(metadata %struct.move* %call42, metadata !2841, metadata !DIExpression()), !dbg !2842
  call fastcc void @add_to_edge_list(%struct.edge_def* %e, %struct.move* %call42, i8 zeroext 1) #7, !dbg !2899
  br label %for.inc, !dbg !2900

for.inc:                                          ; preds = %for.body, %if.end41, %if.then31, %if.then37, %if.then14
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2835, metadata !DIExpression(DW_OP_deref)), !dbg !2842
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2842
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2858
  br label %for.cond, !dbg !2858, !llvm.loop !2901

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2903

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2903
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2903
  ret void, !dbg !2903
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2904 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2909, metadata !DIExpression()), !dbg !2910
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2911
  %0 = load i32, i32* %index, align 8, !dbg !2911
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2911
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2911
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2911
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2911
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2911

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2911
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2911
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2911
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2911
  br label %cond.end, !dbg !2911

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2911
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2911
  %cmp = icmp ult i32 %0, %call2, !dbg !2911
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2911

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2911
  br label %cond.end5, !dbg !2911

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2912
  %inc = add i32 %5, 1, !dbg !2912
  store i32 %inc, i32* %index, align 8, !dbg !2912
  ret void, !dbg !2913
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unify_moves(%struct.basic_block_def* %bb, i8 zeroext %start_p) unnamed_addr #4 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2918, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 %start_p, metadata !2919, metadata !DIExpression()), !dbg !2924
  %tobool = icmp eq i8 %start_p, 0, !dbg !2925
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2925

cond.true:                                        ; preds = %entry
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2926
  br label %cond.end, !dbg !2925

cond.false:                                       ; preds = %entry
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2927
  br label %cond.end, !dbg !2925

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.VEC_edge_gc** [ %preds, %cond.true ], [ %succs, %cond.false ]
  %cond = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %cond.in, align 8, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc* %cond, metadata !2923, metadata !DIExpression()), !dbg !2924
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %cond, i64 0, i32 0, !dbg !2928
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #7, !dbg !2928
  %cmp = icmp eq i32 %call, 0, !dbg !2930
  br i1 %cmp, label %cleanup.cont, label %lor.lhs.false, !dbg !2931

lor.lhs.false:                                    ; preds = %cond.end
  %call7 = tail call fastcc zeroext i8 @eq_edge_move_lists_p(%struct.VEC_edge_gc* %cond) #7, !dbg !2932
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2932
  br i1 %tobool8, label %cleanup.cont, label %if.end, !dbg !2933

if.end:                                           ; preds = %lor.lhs.false
  %call15 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base, i32 0) #7, !dbg !2934
  call void @llvm.dbg.value(metadata %struct.edge_def* %call15, metadata !2921, metadata !DIExpression()), !dbg !2924
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 3, !dbg !2935
  %0 = bitcast i8** %aux to i64*, !dbg !2935
  %1 = load i64, i64* %0, align 8, !dbg !2935
  br i1 %tobool, label %land.lhs.true, label %if.end21, !dbg !2936

land.lhs.true:                                    ; preds = %if.end
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2938
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2938
  %2 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2938
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %2, i64 0, i32 1, !dbg !2938
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2938
  %call17 = tail call zeroext i8 @control_flow_insn_p(%struct.rtx_def* %3) #6, !dbg !2939
  %tobool19 = icmp eq i8 %call17, 0, !dbg !2939
  br i1 %tobool19, label %if.end21, label %cleanup.cont, !dbg !2940

if.end21:                                         ; preds = %land.lhs.true, %if.end
  store i8* null, i8** %aux, align 8, !dbg !2941
  %call29 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #7, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %call29, metadata !2920, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2924
  br label %for.cond, !dbg !2944

for.cond:                                         ; preds = %for.body, %if.end21
  %i.0.in = phi i32 [ %call29, %if.end21 ], [ %i.0, %for.body ]
  %i.0 = add i32 %i.0.in, -1, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2920, metadata !DIExpression()), !dbg !2924
  %cmp30 = icmp sgt i32 %i.0, 0, !dbg !2946
  br i1 %cmp30, label %for.body, label %for.end, !dbg !2948

for.body:                                         ; preds = %for.cond
  %call38 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base, i32 %i.0) #7, !dbg !2949
  call void @llvm.dbg.value(metadata %struct.edge_def* %call38, metadata !2921, metadata !DIExpression()), !dbg !2924
  %aux39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call38, i64 0, i32 3, !dbg !2951
  %4 = bitcast i8** %aux39 to %struct.move**, !dbg !2951
  %5 = load %struct.move*, %struct.move** %4, align 8, !dbg !2951
  tail call fastcc void @free_move_list(%struct.move* %5) #7, !dbg !2952
  store i8* null, i8** %aux39, align 8, !dbg !2953
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2920, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2924
  br label %for.cond, !dbg !2954, !llvm.loop !2955

for.end:                                          ; preds = %for.cond
  br i1 %tobool, label %if.else, label %if.then42, !dbg !2957

if.then42:                                        ; preds = %for.end
  %6 = load %struct.move**, %struct.move*** @at_bb_start, align 8, !dbg !2958
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2960
  %7 = load i32, i32* %index, align 8, !dbg !2960
  %idxprom = sext i32 %7 to i64, !dbg !2958
  %arrayidx = getelementptr inbounds %struct.move*, %struct.move** %6, i64 %idxprom, !dbg !2958
  %8 = bitcast %struct.move** %arrayidx to i64*, !dbg !2961
  store i64 %1, i64* %8, align 8, !dbg !2961
  br label %cleanup.cont, !dbg !2958

if.else:                                          ; preds = %for.end
  %9 = load %struct.move**, %struct.move*** @at_bb_end, align 8, !dbg !2962
  %index43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2963
  %10 = load i32, i32* %index43, align 8, !dbg !2963
  %idxprom44 = sext i32 %10 to i64, !dbg !2962
  %arrayidx45 = getelementptr inbounds %struct.move*, %struct.move** %9, i64 %idxprom44, !dbg !2962
  %11 = bitcast %struct.move** %arrayidx45 to i64*, !dbg !2964
  store i64 %1, i64* %11, align 8, !dbg !2964
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %land.lhs.true, %lor.lhs.false, %cond.end, %if.else, %if.then42
  ret void, !dbg !2965
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_move_t_heap* @VEC_move_t_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2966 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2970, metadata !DIExpression()), !dbg !2971
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !2972
  %0 = bitcast i8* %call to %struct.VEC_move_t_heap*, !dbg !2972
  ret %struct.VEC_move_t_heap* %0, !dbg !2972
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_moves() unnamed_addr #4 !dbg !2973 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp107 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2980
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2980
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2981
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2981
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2982
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2982
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2982
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2982
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2982
  %5 = bitcast %struct.edge_iterator* %tmp107 to i8*, !dbg !2984
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp107, i64 0, i32 0, !dbg !2984
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp107, i64 0, i32 1, !dbg !2984
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2988
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2988
  br label %for.cond, !dbg !2982

for.cond:                                         ; preds = %for.inc157, %entry
  %10 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre2, %for.inc157 ], !dbg !2990
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc157 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2991
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2991
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2975, metadata !DIExpression()), !dbg !2992
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2990
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2990
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2990
  br i1 %cmp, label %for.end159, label %for.body, !dbg !2982

for.body:                                         ; preds = %for.cond
  %12 = load %struct.move**, %struct.move*** @at_bb_start, align 8, !dbg !2993
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2995
  %13 = load i32, i32* %index, align 8, !dbg !2995
  %idxprom = sext i32 %13 to i64, !dbg !2993
  %arrayidx = getelementptr inbounds %struct.move*, %struct.move** %12, i64 %idxprom, !dbg !2993
  %14 = load %struct.move*, %struct.move** %arrayidx, align 8, !dbg !2993
  %cmp3 = icmp eq %struct.move* %14, null, !dbg !2996
  br i1 %cmp3, label %if.end62, label %if.then, !dbg !2997

if.then:                                          ; preds = %for.body
  %call = call fastcc %struct.move* @modify_move_list(%struct.move* nonnull %14) #7, !dbg !2998
  %15 = load %struct.move**, %struct.move*** @at_bb_start, align 8, !dbg !3000
  %16 = load i32, i32* %index, align 8, !dbg !3001
  %idxprom8 = sext i32 %16 to i64, !dbg !3000
  %arrayidx9 = getelementptr inbounds %struct.move*, %struct.move** %15, i64 %idxprom8, !dbg !3000
  store %struct.move* %call, %struct.move** %arrayidx9, align 8, !dbg !3002
  %17 = load %struct.move**, %struct.move*** @at_bb_start, align 8, !dbg !3003
  %18 = load i32, i32* %index, align 8, !dbg !3004
  %idxprom11 = sext i32 %18 to i64, !dbg !3003
  %arrayidx12 = getelementptr inbounds %struct.move*, %struct.move** %17, i64 %idxprom11, !dbg !3003
  %19 = load %struct.move*, %struct.move** %arrayidx12, align 8, !dbg !3003
  %20 = load i32, i32* @optimize_size, align 4, !dbg !3005
  %tobool = icmp eq i32 %20, 0, !dbg !3005
  br i1 %tobool, label %lor.lhs.false, label %cond.end24, !dbg !3005

lor.lhs.false:                                    ; preds = %if.then
  %21 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3005
  %tobool13 = icmp eq i32 %21, 0, !dbg !3005
  br i1 %tobool13, label %cond.false, label %land.lhs.true, !dbg !3005

land.lhs.true:                                    ; preds = %lor.lhs.false
  %22 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3005
  %cfg15 = getelementptr inbounds %struct.function, %struct.function* %22, i64 0, i32 1, !dbg !3005
  %23 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg15, align 8, !dbg !3005
  %x_entry_block_ptr16 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %23, i64 0, i32 0, !dbg !3005
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr16, align 8, !dbg !3005
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 8, !dbg !3005
  %25 = load i64, i64* %count, align 8, !dbg !3005
  %tobool17 = icmp eq i64 %25, 0, !dbg !3005
  br i1 %tobool17, label %cond.end24, label %cond.false, !dbg !3005

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !3005
  %26 = load i32, i32* %frequency, align 8, !dbg !3005
  %.off1 = add i32 %26, 9, !dbg !3005
  %27 = icmp ugt i32 %.off1, 18, !dbg !3005
  br i1 %27, label %cond.true19, label %cond.end24, !dbg !3005

cond.true19:                                      ; preds = %cond.false
  %div22 = sdiv i32 %26, 10, !dbg !3005
  br label %cond.end24, !dbg !3005

cond.end24:                                       ; preds = %land.lhs.true, %if.then, %cond.true19, %cond.false
  %cond25 = phi i32 [ 1000, %land.lhs.true ], [ 1000, %if.then ], [ %div22, %cond.true19 ], [ 1, %cond.false ], !dbg !3005
  %call26 = call fastcc %struct.rtx_def* @emit_move_list(%struct.move* %19, i32 %cond25) #7, !dbg !3006
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call26, metadata !2978, metadata !DIExpression()), !dbg !2992
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3007
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3007
  %28 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3007
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %28, i64 0, i32 0, !dbg !3007
  %29 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3007
  call void @llvm.dbg.value(metadata %struct.rtx_def* %29, metadata !2979, metadata !DIExpression()), !dbg !2992
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i64 0, i32 0, !dbg !3008
  %bf.load = load i32, i32* %30, align 8, !dbg !3008
  %bf.clear = and i32 %bf.load, 65535, !dbg !3008
  %cmp27 = icmp eq i32 %bf.clear, 12, !dbg !3008
  br i1 %cmp27, label %if.then28, label %if.end, !dbg !3010

if.then28:                                        ; preds = %cond.end24
  %31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3011
  %rt_rtx = bitcast %union.rtunion_def* %31 to %struct.rtx_def**, !dbg !3011
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3011
  call void @llvm.dbg.value(metadata %struct.rtx_def* %32, metadata !2979, metadata !DIExpression()), !dbg !2992
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i64 0, i32 0, !dbg !3012
  %bf.load30.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3014
  br label %if.end, !dbg !3015

if.end:                                           ; preds = %if.then28, %cond.end24
  %bf.load30 = phi i32 [ %bf.load30.pre, %if.then28 ], [ %bf.load, %cond.end24 ], !dbg !3014
  %tmp.0 = phi %struct.rtx_def* [ %32, %if.then28 ], [ %29, %cond.end24 ], !dbg !3016
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tmp.0, metadata !2979, metadata !DIExpression()), !dbg !2992
  %bf.clear31 = and i32 %bf.load30, 65535, !dbg !3014
  %cmp32 = icmp eq i32 %bf.clear31, 13, !dbg !3014
  br i1 %cmp32, label %land.lhs.true33, label %if.end43, !dbg !3014

land.lhs.true33:                                  ; preds = %if.end
  %u34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tmp.0, i64 0, i32 1, !dbg !3014
  %33 = getelementptr inbounds %union.u, %union.u* %u34, i64 1, i32 0, i32 0, i64 0, !dbg !3014
  %rt_int = bitcast %union.rtunion_def* %33 to i32*, !dbg !3014
  %34 = load i32, i32* %rt_int, align 8, !dbg !3014
  %cmp37 = icmp eq i32 %34, 10, !dbg !3014
  br i1 %cmp37, label %if.then38, label %if.end43, !dbg !3017

if.then38:                                        ; preds = %land.lhs.true33
  %35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tmp.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3018
  %rt_rtx42 = bitcast %union.rtunion_def* %35 to %struct.rtx_def**, !dbg !3018
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx42, align 8, !dbg !3018
  call void @llvm.dbg.value(metadata %struct.rtx_def* %36, metadata !2979, metadata !DIExpression()), !dbg !2992
  br label %if.end43, !dbg !3019

if.end43:                                         ; preds = %if.then38, %land.lhs.true33, %if.end
  %tmp.1 = phi %struct.rtx_def* [ %36, %if.then38 ], [ %tmp.0, %land.lhs.true33 ], [ %tmp.0, %if.end ], !dbg !3016
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tmp.1, metadata !2979, metadata !DIExpression()), !dbg !2992
  %cmp47 = icmp eq %struct.rtx_def* %tmp.1, %29, !dbg !3020
  br i1 %cmp47, label %if.then48, label %if.else, !dbg !3022

if.then48:                                        ; preds = %if.end43
  %call49 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call26, %struct.rtx_def* %29) #6, !dbg !3023
  br label %if.end62, !dbg !3023

if.else:                                          ; preds = %if.end43
  %cmp50 = icmp eq %struct.rtx_def* %tmp.1, null, !dbg !3024
  br i1 %cmp50, label %if.else57, label %if.then51, !dbg !3026

if.then51:                                        ; preds = %if.else
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tmp.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3027
  %rt_rtx55 = bitcast %union.rtunion_def* %37 to %struct.rtx_def**, !dbg !3027
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx55, align 8, !dbg !3027
  %call56 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call26, %struct.rtx_def* %38) #6, !dbg !3028
  br label %if.end62, !dbg !3028

if.else57:                                        ; preds = %if.else
  %call58 = call %struct.rtx_def* @get_last_insn() #6, !dbg !3029
  %call59 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call26, %struct.rtx_def* %call58) #6, !dbg !3030
  br label %if.end62

if.end62:                                         ; preds = %for.body, %if.then48, %if.else57, %if.then51
  %39 = load %struct.move**, %struct.move*** @at_bb_end, align 8, !dbg !3031
  %40 = load i32, i32* %index, align 8, !dbg !3033
  %idxprom64 = sext i32 %40 to i64, !dbg !3031
  %arrayidx65 = getelementptr inbounds %struct.move*, %struct.move** %39, i64 %idxprom64, !dbg !3031
  %41 = load %struct.move*, %struct.move** %arrayidx65, align 8, !dbg !3031
  %cmp66 = icmp eq %struct.move* %41, null, !dbg !3034
  br i1 %cmp66, label %if.end106, label %if.then67, !dbg !3035

if.then67:                                        ; preds = %if.end62
  %call71 = call fastcc %struct.move* @modify_move_list(%struct.move* nonnull %41) #7, !dbg !3036
  %42 = load %struct.move**, %struct.move*** @at_bb_end, align 8, !dbg !3038
  %43 = load i32, i32* %index, align 8, !dbg !3039
  %idxprom73 = sext i32 %43 to i64, !dbg !3038
  %arrayidx74 = getelementptr inbounds %struct.move*, %struct.move** %42, i64 %idxprom73, !dbg !3038
  store %struct.move* %call71, %struct.move** %arrayidx74, align 8, !dbg !3040
  %44 = load %struct.move**, %struct.move*** @at_bb_end, align 8, !dbg !3041
  %45 = load i32, i32* %index, align 8, !dbg !3042
  %idxprom76 = sext i32 %45 to i64, !dbg !3041
  %arrayidx77 = getelementptr inbounds %struct.move*, %struct.move** %44, i64 %idxprom76, !dbg !3041
  %46 = load %struct.move*, %struct.move** %arrayidx77, align 8, !dbg !3041
  %47 = load i32, i32* @optimize_size, align 4, !dbg !3043
  %tobool78 = icmp eq i32 %47, 0, !dbg !3043
  br i1 %tobool78, label %lor.lhs.false79, label %cond.end100, !dbg !3043

lor.lhs.false79:                                  ; preds = %if.then67
  %48 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3043
  %tobool80 = icmp eq i32 %48, 0, !dbg !3043
  br i1 %tobool80, label %cond.false88, label %land.lhs.true81, !dbg !3043

land.lhs.true81:                                  ; preds = %lor.lhs.false79
  %49 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3043
  %cfg83 = getelementptr inbounds %struct.function, %struct.function* %49, i64 0, i32 1, !dbg !3043
  %50 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg83, align 8, !dbg !3043
  %x_entry_block_ptr84 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %50, i64 0, i32 0, !dbg !3043
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr84, align 8, !dbg !3043
  %count85 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i64 0, i32 8, !dbg !3043
  %52 = load i64, i64* %count85, align 8, !dbg !3043
  %tobool86 = icmp eq i64 %52, 0, !dbg !3043
  br i1 %tobool86, label %cond.end100, label %cond.false88, !dbg !3043

cond.false88:                                     ; preds = %land.lhs.true81, %lor.lhs.false79
  %frequency89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !3043
  %53 = load i32, i32* %frequency89, align 8, !dbg !3043
  %.off = add i32 %53, 9, !dbg !3043
  %54 = icmp ugt i32 %.off, 18, !dbg !3043
  br i1 %54, label %cond.true93, label %cond.end100, !dbg !3043

cond.true93:                                      ; preds = %cond.false88
  %div96 = sdiv i32 %53, 10, !dbg !3043
  br label %cond.end100, !dbg !3043

cond.end100:                                      ; preds = %land.lhs.true81, %if.then67, %cond.true93, %cond.false88
  %cond101 = phi i32 [ 1000, %land.lhs.true81 ], [ 1000, %if.then67 ], [ %div96, %cond.true93 ], [ 1, %cond.false88 ], !dbg !3043
  %call102 = call fastcc %struct.rtx_def* @emit_move_list(%struct.move* %46, i32 %cond101) #7, !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call102, metadata !2978, metadata !DIExpression()), !dbg !2992
  %il103 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3045
  %rtl104 = bitcast %union.basic_block_il_dependent* %il103 to %struct.rtl_bb_info**, !dbg !3045
  %55 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl104, align 8, !dbg !3045
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %55, i64 0, i32 1, !dbg !3045
  %56 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3045
  %call105 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call102, %struct.rtx_def* %56) #6, !dbg !3046
  br label %if.end106, !dbg !3047

if.end106:                                        ; preds = %if.end62, %cond.end100
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3048
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3048
  %call108 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3048
  %57 = extractvalue { i32, %struct.VEC_edge_gc** } %call108, 0, !dbg !3048
  store i32 %57, i32* %6, align 8, !dbg !3048
  %58 = extractvalue { i32, %struct.VEC_edge_gc** } %call108, 1, !dbg !3048
  store %struct.VEC_edge_gc** %58, %struct.VEC_edge_gc*** %7, align 8, !dbg !3048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3048
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3048
  br label %for.cond109, !dbg !3048

for.cond109:                                      ; preds = %for.inc, %if.end106
  %59 = load i32, i32* %8, align 8, !dbg !3049
  %60 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2977, metadata !DIExpression(DW_OP_deref)), !dbg !2992
  %call110 = call fastcc zeroext i8 @ei_cond(i32 %59, %struct.VEC_edge_gc** %60, %struct.edge_def** nonnull %e) #7, !dbg !3049
  %tobool111 = icmp eq i8 %call110, 0, !dbg !3048
  br i1 %tobool111, label %for.inc157, label %for.body112, !dbg !3048

for.body112:                                      ; preds = %for.cond109
  %61 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3050
  call void @llvm.dbg.value(metadata %struct.edge_def* %61, metadata !2977, metadata !DIExpression()), !dbg !2992
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %61, i64 0, i32 3, !dbg !3053
  %62 = load i8*, i8** %aux, align 8, !dbg !3053
  %cmp113 = icmp eq i8* %62, null, !dbg !3054
  br i1 %cmp113, label %for.inc, label %if.end115, !dbg !3055

if.end115:                                        ; preds = %for.body112
  %63 = bitcast i8* %62 to %struct.move*, !dbg !3055
  call void @llvm.dbg.value(metadata %struct.edge_def* %61, metadata !2977, metadata !DIExpression()), !dbg !2992
  %call117 = call fastcc %struct.move* @modify_move_list(%struct.move* nonnull %63) #7, !dbg !3056
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.edge_def* %64, metadata !2977, metadata !DIExpression()), !dbg !2992
  %aux118 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i64 0, i32 3, !dbg !3058
  %65 = bitcast i8** %aux118 to %struct.move**, !dbg !3059
  store %struct.move* %call117, %struct.move** %65, align 8, !dbg !3059
  call void @llvm.dbg.value(metadata %struct.edge_def* %64, metadata !2977, metadata !DIExpression()), !dbg !2992
  %66 = load i32, i32* @optimize_size, align 4, !dbg !3060
  %tobool120 = icmp eq i32 %66, 0, !dbg !3060
  br i1 %tobool120, label %lor.lhs.false121, label %cond.end149, !dbg !3060

lor.lhs.false121:                                 ; preds = %if.end115
  %67 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3060
  %tobool122 = icmp eq i32 %67, 0, !dbg !3060
  br i1 %tobool122, label %cond.false130, label %land.lhs.true123, !dbg !3060

land.lhs.true123:                                 ; preds = %lor.lhs.false121
  %68 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3060
  %cfg125 = getelementptr inbounds %struct.function, %struct.function* %68, i64 0, i32 1, !dbg !3060
  %69 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg125, align 8, !dbg !3060
  %x_entry_block_ptr126 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %69, i64 0, i32 0, !dbg !3060
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr126, align 8, !dbg !3060
  %count127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i64 0, i32 8, !dbg !3060
  %71 = load i64, i64* %count127, align 8, !dbg !3060
  %tobool128 = icmp eq i64 %71, 0, !dbg !3060
  br i1 %tobool128, label %cond.end149, label %cond.false130, !dbg !3060

cond.false130:                                    ; preds = %land.lhs.true123, %lor.lhs.false121
  call void @llvm.dbg.value(metadata %struct.edge_def* %64, metadata !2977, metadata !DIExpression()), !dbg !2992
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i64 0, i32 0, !dbg !3060
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3060
  %frequency131 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i64 0, i32 11, !dbg !3060
  %73 = load i32, i32* %frequency131, align 8, !dbg !3060
  call void @llvm.dbg.value(metadata %struct.edge_def* %64, metadata !2977, metadata !DIExpression()), !dbg !2992
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i64 0, i32 8, !dbg !3060
  %74 = load i32, i32* %probability, align 4, !dbg !3060
  %mul132 = mul nsw i32 %73, %74, !dbg !3060
  %add.off = add i32 %mul132, 104999, !dbg !3060
  %75 = icmp ugt i32 %add.off, 199998, !dbg !3060
  br i1 %75, label %cond.true137, label %cond.end149, !dbg !3060

cond.true137:                                     ; preds = %cond.false130
  call void @llvm.dbg.value(metadata %struct.edge_def* %64, metadata !2977, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata %struct.edge_def* %64, metadata !2977, metadata !DIExpression()), !dbg !2992
  %add142 = add nsw i32 %mul132, 5000, !dbg !3060
  %div145 = sdiv i32 %add142, 100000, !dbg !3060
  br label %cond.end149, !dbg !3060

cond.end149:                                      ; preds = %land.lhs.true123, %if.end115, %cond.true137, %cond.false130
  %cond150 = phi i32 [ 1000, %land.lhs.true123 ], [ 1000, %if.end115 ], [ %div145, %cond.true137 ], [ 1, %cond.false130 ], !dbg !3060
  %call151 = call fastcc %struct.rtx_def* @emit_move_list(%struct.move* %call117, i32 %cond150) #7, !dbg !3061
  %76 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.edge_def* %76, metadata !2977, metadata !DIExpression()), !dbg !2992
  call void @insert_insn_on_edge(%struct.rtx_def* %call151, %struct.edge_def* %76) #6, !dbg !3063
  %77 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3064
  call void @llvm.dbg.value(metadata %struct.edge_def* %77, metadata !2977, metadata !DIExpression()), !dbg !2992
  %src152 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %77, i64 0, i32 0, !dbg !3066
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %src152, align 8, !dbg !3066
  %next_bb153 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i64 0, i32 6, !dbg !3067
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb153, align 8, !dbg !3067
  call void @llvm.dbg.value(metadata %struct.edge_def* %77, metadata !2977, metadata !DIExpression()), !dbg !2992
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %77, i64 0, i32 1, !dbg !3068
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3068
  %cmp154 = icmp eq %struct.basic_block_def* %79, %80, !dbg !3069
  br i1 %cmp154, label %for.inc, label %if.then155, !dbg !3070

if.then155:                                       ; preds = %cond.end149
  %81 = load i32, i32* @ira_additional_jumps_num, align 4, !dbg !3071
  %inc = add nsw i32 %81, 1, !dbg !3071
  store i32 %inc, i32* @ira_additional_jumps_num, align 4, !dbg !3071
  br label %for.inc, !dbg !3072

for.inc:                                          ; preds = %cond.end149, %if.then155, %for.body112
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2976, metadata !DIExpression(DW_OP_deref)), !dbg !2992
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3049
  br label %for.cond109, !dbg !3049, !llvm.loop !3073

for.inc157:                                       ; preds = %for.cond109
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2990
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3075
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2990
  br label %for.cond, !dbg !2990, !llvm.loop !3076

for.end159:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3078
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3078
  ret void, !dbg !3078
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_ranges_and_copies() unnamed_addr #4 !dbg !3079 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3086
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3086
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3087
  %call = tail call %struct.bitmap_head_def* @ira_allocate_bitmap() #6, !dbg !3088
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3085, metadata !DIExpression()), !dbg !3089
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3090
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3090
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3090
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3090
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3090
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3092
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3092
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3092
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3096
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3096
  br label %for.cond, !dbg !3090

for.cond:                                         ; preds = %for.inc92, %entry
  %10 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre2, %for.inc92 ], !dbg !3098
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc92 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3099
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3081, metadata !DIExpression()), !dbg !3089
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !3098
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3098
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !3098
  br i1 %cmp, label %for.end94, label %for.body, !dbg !3090

for.body:                                         ; preds = %for.cond
  %12 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_bb_nodes, align 8, !dbg !3100
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3100
  %13 = load i32, i32* %index, align 8, !dbg !3100
  %idxprom = sext i32 %13 to i64, !dbg !3100
  %parent = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %12, i64 %idxprom, i32 6, !dbg !3101
  %14 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent, align 8, !dbg !3101
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %14, metadata !3084, metadata !DIExpression()), !dbg !3089
  %call4 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %13) #7, !dbg !3102
  %in = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call4, i64 0, i32 2, !dbg !3102
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in, align 8, !dbg !3102
  call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %15) #6, !dbg !3103
  %16 = load %struct.move**, %struct.move*** @at_bb_start, align 8, !dbg !3104
  %17 = load i32, i32* %index, align 8, !dbg !3105
  %idxprom6 = sext i32 %17 to i64, !dbg !3104
  %arrayidx7 = getelementptr inbounds %struct.move*, %struct.move** %16, i64 %idxprom6, !dbg !3104
  %18 = load %struct.move*, %struct.move** %arrayidx7, align 8, !dbg !3104
  %19 = load i32, i32* @optimize_size, align 4, !dbg !3106
  %tobool = icmp eq i32 %19, 0, !dbg !3106
  br i1 %tobool, label %lor.lhs.false, label %cond.end19, !dbg !3106

lor.lhs.false:                                    ; preds = %for.body
  %20 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3106
  %tobool8 = icmp eq i32 %20, 0, !dbg !3106
  br i1 %tobool8, label %cond.false, label %land.lhs.true, !dbg !3106

land.lhs.true:                                    ; preds = %lor.lhs.false
  %21 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3106
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %21, i64 0, i32 1, !dbg !3106
  %22 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !3106
  %x_entry_block_ptr11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 0, !dbg !3106
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr11, align 8, !dbg !3106
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 8, !dbg !3106
  %24 = load i64, i64* %count, align 8, !dbg !3106
  %tobool12 = icmp eq i64 %24, 0, !dbg !3106
  br i1 %tobool12, label %cond.end19, label %cond.false, !dbg !3106

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !3106
  %25 = load i32, i32* %frequency, align 8, !dbg !3106
  %.off = add i32 %25, 9, !dbg !3106
  %26 = icmp ugt i32 %.off, 18, !dbg !3106
  br i1 %26, label %cond.true14, label %cond.end19, !dbg !3106

cond.true14:                                      ; preds = %cond.false
  %div17 = sdiv i32 %25, 10, !dbg !3106
  br label %cond.end19, !dbg !3106

cond.end19:                                       ; preds = %land.lhs.true, %for.body, %cond.true14, %cond.false
  %cond20 = phi i32 [ 1000, %land.lhs.true ], [ 1000, %for.body ], [ %div17, %cond.true14 ], [ 1, %cond.false ], !dbg !3106
  call fastcc void @add_range_and_copies_from_move_list(%struct.move* %18, %struct.ira_loop_tree_node* %14, %struct.bitmap_head_def* %call, i32 %cond20) #7, !dbg !3107
  %27 = load i32, i32* %index, align 8, !dbg !3108
  %call22 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %27) #7, !dbg !3108
  %out = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call22, i64 0, i32 3, !dbg !3108
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out, align 8, !dbg !3108
  call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %28) #6, !dbg !3109
  %29 = load %struct.move**, %struct.move*** @at_bb_end, align 8, !dbg !3110
  %30 = load i32, i32* %index, align 8, !dbg !3111
  %idxprom24 = sext i32 %30 to i64, !dbg !3110
  %arrayidx25 = getelementptr inbounds %struct.move*, %struct.move** %29, i64 %idxprom24, !dbg !3110
  %31 = load %struct.move*, %struct.move** %arrayidx25, align 8, !dbg !3110
  %32 = load i32, i32* @optimize_size, align 4, !dbg !3112
  %tobool26 = icmp eq i32 %32, 0, !dbg !3112
  br i1 %tobool26, label %lor.lhs.false27, label %cond.end48, !dbg !3112

lor.lhs.false27:                                  ; preds = %cond.end19
  %33 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3112
  %tobool28 = icmp eq i32 %33, 0, !dbg !3112
  br i1 %tobool28, label %cond.false36, label %land.lhs.true29, !dbg !3112

land.lhs.true29:                                  ; preds = %lor.lhs.false27
  %34 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3112
  %cfg31 = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 1, !dbg !3112
  %35 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg31, align 8, !dbg !3112
  %x_entry_block_ptr32 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %35, i64 0, i32 0, !dbg !3112
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr32, align 8, !dbg !3112
  %count33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i64 0, i32 8, !dbg !3112
  %37 = load i64, i64* %count33, align 8, !dbg !3112
  %tobool34 = icmp eq i64 %37, 0, !dbg !3112
  br i1 %tobool34, label %cond.end48, label %cond.false36, !dbg !3112

cond.false36:                                     ; preds = %land.lhs.true29, %lor.lhs.false27
  %frequency37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !3112
  %38 = load i32, i32* %frequency37, align 8, !dbg !3112
  %.off1 = add i32 %38, 9, !dbg !3112
  %39 = icmp ugt i32 %.off1, 18, !dbg !3112
  br i1 %39, label %cond.true41, label %cond.end48, !dbg !3112

cond.true41:                                      ; preds = %cond.false36
  %div44 = sdiv i32 %38, 10, !dbg !3112
  br label %cond.end48, !dbg !3112

cond.end48:                                       ; preds = %land.lhs.true29, %cond.end19, %cond.true41, %cond.false36
  %cond49 = phi i32 [ 1000, %land.lhs.true29 ], [ 1000, %cond.end19 ], [ %div44, %cond.true41 ], [ 1, %cond.false36 ], !dbg !3112
  call fastcc void @add_range_and_copies_from_move_list(%struct.move* %31, %struct.ira_loop_tree_node* %14, %struct.bitmap_head_def* %call, i32 %cond49) #7, !dbg !3113
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3114
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3114
  %call50 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3114
  %40 = extractvalue { i32, %struct.VEC_edge_gc** } %call50, 0, !dbg !3114
  store i32 %40, i32* %6, align 8, !dbg !3114
  %41 = extractvalue { i32, %struct.VEC_edge_gc** } %call50, 1, !dbg !3114
  store %struct.VEC_edge_gc** %41, %struct.VEC_edge_gc*** %7, align 8, !dbg !3114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3114
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3114
  br label %for.cond51, !dbg !3114

for.cond51:                                       ; preds = %cond.end90, %cond.end48
  %42 = load i32, i32* %8, align 8, !dbg !3115
  %43 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !3115
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3083, metadata !DIExpression(DW_OP_deref)), !dbg !3089
  %call52 = call fastcc zeroext i8 @ei_cond(i32 %42, %struct.VEC_edge_gc** %43, %struct.edge_def** nonnull %e) #7, !dbg !3115
  %tobool53 = icmp eq i8 %call52, 0, !dbg !3114
  br i1 %tobool53, label %for.inc92, label %for.body54, !dbg !3114

for.body54:                                       ; preds = %for.cond51
  %44 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.edge_def* %44, metadata !3083, metadata !DIExpression()), !dbg !3089
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i64 0, i32 1, !dbg !3116
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3116
  %index55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i64 0, i32 9, !dbg !3116
  %46 = load i32, i32* %index55, align 8, !dbg !3116
  %call56 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %46) #7, !dbg !3116
  %in57 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call56, i64 0, i32 2, !dbg !3116
  %47 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in57, align 8, !dbg !3116
  %48 = load i32, i32* %index, align 8, !dbg !3118
  %call59 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %48) #7, !dbg !3118
  %out60 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call59, i64 0, i32 3, !dbg !3118
  %49 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out60, align 8, !dbg !3118
  call void @bitmap_and(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %47, %struct.bitmap_head_def* %49) #6, !dbg !3119
  %50 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3120
  call void @llvm.dbg.value(metadata %struct.edge_def* %50, metadata !3083, metadata !DIExpression()), !dbg !3089
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i64 0, i32 3, !dbg !3121
  %51 = bitcast i8** %aux to %struct.move**, !dbg !3121
  %52 = load %struct.move*, %struct.move** %51, align 8, !dbg !3121
  %53 = load i32, i32* @optimize_size, align 4, !dbg !3122
  %tobool61 = icmp eq i32 %53, 0, !dbg !3122
  br i1 %tobool61, label %lor.lhs.false62, label %cond.end90, !dbg !3122

lor.lhs.false62:                                  ; preds = %for.body54
  %54 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3122
  %tobool63 = icmp eq i32 %54, 0, !dbg !3122
  br i1 %tobool63, label %cond.false71, label %land.lhs.true64, !dbg !3122

land.lhs.true64:                                  ; preds = %lor.lhs.false62
  %55 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3122
  %cfg66 = getelementptr inbounds %struct.function, %struct.function* %55, i64 0, i32 1, !dbg !3122
  %56 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg66, align 8, !dbg !3122
  %x_entry_block_ptr67 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %56, i64 0, i32 0, !dbg !3122
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr67, align 8, !dbg !3122
  %count68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i64 0, i32 8, !dbg !3122
  %58 = load i64, i64* %count68, align 8, !dbg !3122
  %tobool69 = icmp eq i64 %58, 0, !dbg !3122
  br i1 %tobool69, label %cond.end90, label %cond.false71, !dbg !3122

cond.false71:                                     ; preds = %land.lhs.true64, %lor.lhs.false62
  call void @llvm.dbg.value(metadata %struct.edge_def* %50, metadata !3083, metadata !DIExpression()), !dbg !3089
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i64 0, i32 0, !dbg !3122
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3122
  %frequency72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %59, i64 0, i32 11, !dbg !3122
  %60 = load i32, i32* %frequency72, align 8, !dbg !3122
  call void @llvm.dbg.value(metadata %struct.edge_def* %50, metadata !3083, metadata !DIExpression()), !dbg !3089
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i64 0, i32 8, !dbg !3122
  %61 = load i32, i32* %probability, align 4, !dbg !3122
  %mul73 = mul nsw i32 %60, %61, !dbg !3122
  %add.off = add i32 %mul73, 104999, !dbg !3122
  %62 = icmp ugt i32 %add.off, 199998, !dbg !3122
  br i1 %62, label %cond.true78, label %cond.end90, !dbg !3122

cond.true78:                                      ; preds = %cond.false71
  call void @llvm.dbg.value(metadata %struct.edge_def* %50, metadata !3083, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata %struct.edge_def* %50, metadata !3083, metadata !DIExpression()), !dbg !3089
  %add83 = add nsw i32 %mul73, 5000, !dbg !3122
  %div86 = sdiv i32 %add83, 100000, !dbg !3122
  br label %cond.end90, !dbg !3122

cond.end90:                                       ; preds = %land.lhs.true64, %for.body54, %cond.true78, %cond.false71
  %cond91 = phi i32 [ 1000, %land.lhs.true64 ], [ 1000, %for.body54 ], [ %div86, %cond.true78 ], [ 1, %cond.false71 ], !dbg !3122
  call fastcc void @add_range_and_copies_from_move_list(%struct.move* %52, %struct.ira_loop_tree_node* %14, %struct.bitmap_head_def* %call, i32 %cond91) #7, !dbg !3123
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3082, metadata !DIExpression(DW_OP_deref)), !dbg !3089
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3115
  br label %for.cond51, !dbg !3115, !llvm.loop !3124

for.inc92:                                        ; preds = %for.cond51
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3098
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3126
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3098
  br label %for.cond, !dbg !3098, !llvm.loop !3127

for.end94:                                        ; preds = %for.cond
  call void @ira_free_bitmap(%struct.bitmap_head_def* %call) #6, !dbg !3129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3130
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3130
  ret void, !dbg !3130
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_move_list(%struct.move* %head) unnamed_addr #4 !dbg !3131 {
entry:
  call void @llvm.dbg.value(metadata %struct.move* %head, metadata !3133, metadata !DIExpression()), !dbg !3135
  br label %for.cond, !dbg !3136

for.cond:                                         ; preds = %for.body, %entry
  %head.addr.0 = phi %struct.move* [ %head, %entry ], [ %0, %for.body ]
  call void @llvm.dbg.value(metadata %struct.move* %head.addr.0, metadata !3133, metadata !DIExpression()), !dbg !3135
  %cmp = icmp eq %struct.move* %head.addr.0, null, !dbg !3137
  br i1 %cmp, label %for.end, label %for.body, !dbg !3140

for.body:                                         ; preds = %for.cond
  %next1 = getelementptr inbounds %struct.move, %struct.move* %head.addr.0, i64 0, i32 2, !dbg !3141
  %0 = load %struct.move*, %struct.move** %next1, align 8, !dbg !3141
  call void @llvm.dbg.value(metadata %struct.move* %0, metadata !3134, metadata !DIExpression()), !dbg !3135
  tail call fastcc void @free_move(%struct.move* nonnull %head.addr.0) #7, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.move* %0, metadata !3133, metadata !DIExpression()), !dbg !3135
  br label %for.cond, !dbg !3144, !llvm.loop !3145

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3147
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_move_t_heap_free(%struct.VEC_move_t_heap** %vec_) unnamed_addr #0 !dbg !3148 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_heap** @move_vec, metadata !3153, metadata !DIExpression()), !dbg !3154
  %0 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !3155
  %tobool = icmp eq %struct.VEC_move_t_heap* %0, null, !dbg !3155
  br i1 %tobool, label %if.end, label %if.then, !dbg !3157

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_move_t_heap* %0 to i8*, !dbg !3157
  tail call void @free(i8* nonnull %1) #6, !dbg !3155
  br label %if.end, !dbg !3155

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_move_t_heap* null, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !3157
  ret void, !dbg !3157
}

declare dso_local void @ira_free(i8*) local_unnamed_addr #1

declare dso_local void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @recog_memoized(%struct.rtx_def* %insn) unnamed_addr #0 !dbg !3158 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3163, metadata !DIExpression()), !dbg !3164
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3165
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 1, !dbg !3165
  %rt_int = bitcast %union.rtunion_def* %0 to i32*, !dbg !3165
  %1 = load i32, i32* %rt_int, align 8, !dbg !3165
  %cmp = icmp slt i32 %1, 0, !dbg !3167
  br i1 %cmp, label %if.then, label %if.end, !dbg !3168

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3169
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3169
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3169
  %call = tail call i32 @recog(%struct.rtx_def* %3, %struct.rtx_def* %insn, i32* null) #6, !dbg !3170
  store i32 %call, i32* %rt_int, align 8, !dbg !3171
  br label %if.end, !dbg !3172

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %call, %if.then ], [ %1, %entry ], !dbg !3173
  ret i32 %4, !dbg !3174
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @change_regs(%struct.rtx_def** %loc) unnamed_addr #4 !dbg !3175 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3180, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 0, metadata !3183, metadata !DIExpression()), !dbg !3194
  %0 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3195
  %cmp = icmp eq %struct.rtx_def* %0, null, !dbg !3197
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3198

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3198
  %bf.load = load i32, i32* %1, align 8, !dbg !3199
  %bf.clear = and i32 %bf.load, 65535, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3185, metadata !DIExpression()), !dbg !3194
  %cmp1 = icmp eq i32 %bf.clear, 37, !dbg !3200
  br i1 %cmp1, label %if.then2, label %if.end18, !dbg !3202

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %0) #7, !dbg !3203
  call void @llvm.dbg.value(metadata i32 %call, metadata !3182, metadata !DIExpression()), !dbg !3194
  %cmp3 = icmp slt i32 %call, 53, !dbg !3205
  %2 = load i32, i32* @max_regno_before_changing, align 4, !dbg !3207
  %cmp6 = icmp sge i32 %call, %2, !dbg !3209
  %or.cond = or i1 %cmp3, %cmp6, !dbg !3210
  br i1 %or.cond, label %cleanup, label %if.end8, !dbg !3210

if.end8:                                          ; preds = %if.then2
  %3 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3211
  %idxprom = sext i32 %call to i64, !dbg !3211
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %3, i64 %idxprom, !dbg !3211
  %4 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !3211
  %cmp9 = icmp eq %struct.ira_allocno* %4, null, !dbg !3213
  br i1 %cmp9, label %cleanup, label %if.end11, !dbg !3214

if.end11:                                         ; preds = %if.end8
  %reg14 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 4, !dbg !3215
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg14, align 8, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3186, metadata !DIExpression()), !dbg !3194
  %6 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3216
  %cmp15 = icmp eq %struct.rtx_def* %5, %6, !dbg !3218
  br i1 %cmp15, label %cleanup, label %if.end17, !dbg !3219

if.end17:                                         ; preds = %if.end11
  store %struct.rtx_def* %5, %struct.rtx_def** %loc, align 8, !dbg !3220
  br label %cleanup, !dbg !3221

if.end18:                                         ; preds = %if.end
  %idxprom19 = zext i32 %bf.clear to i64, !dbg !3222
  %arrayidx20 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom19, !dbg !3222
  %7 = load i8*, i8** %arrayidx20, align 8, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %7, metadata !3184, metadata !DIExpression()), !dbg !3194
  %arrayidx22 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom19, !dbg !3223
  %8 = load i8, i8* %arrayidx22, align 1, !dbg !3223
  call void @llvm.dbg.value(metadata i8 %8, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3194
  %9 = zext i8 %8 to i64, !dbg !3224
  br label %for.cond, !dbg !3224

for.cond:                                         ; preds = %for.inc67, %if.end18
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc67 ], [ %9, %if.end18 ], !dbg !3194
  %result.0 = phi i32 [ %result.3, %for.inc67 ], [ 0, %if.end18 ], !dbg !3194
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1, !dbg !3225
  call void @llvm.dbg.value(metadata i32 undef, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !3183, metadata !DIExpression()), !dbg !3194
  %cmp23 = icmp sgt i64 %indvars.iv2, 0, !dbg !3226
  br i1 %cmp23, label %for.body, label %for.end69, !dbg !3227

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds i8, i8* %7, i64 %indvars.iv.next3, !dbg !3228
  %10 = load i8, i8* %arrayidx26, align 1, !dbg !3228
  %cmp28 = icmp eq i8 %10, 101, !dbg !3229
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !3230

if.then30:                                        ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3231
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, !dbg !3231
  %fld = bitcast %union.u* %u to [1 x %union.rtunion_def]*, !dbg !3231
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i64 0, i64 %indvars.iv.next3, !dbg !3231
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**, !dbg !3231
  %call33 = tail call fastcc zeroext i8 @change_regs(%struct.rtx_def** nonnull %rt_rtx) #7, !dbg !3232
  %tobool = icmp ne i8 %call33, 0, !dbg !3232
  %tobool35 = icmp ne i32 %result.0, 0, !dbg !3233
  %spec.select = or i1 %tobool35, %tobool, !dbg !3233
  %lor.ext = zext i1 %spec.select to i32, !dbg !3233
  call void @llvm.dbg.value(metadata i32 %lor.ext, metadata !3183, metadata !DIExpression()), !dbg !3194
  br label %for.inc67, !dbg !3234

if.else:                                          ; preds = %for.body
  %cmp39 = icmp eq i8 %10, 69, !dbg !3235
  br i1 %cmp39, label %if.then41, label %for.inc67, !dbg !3236

if.then41:                                        ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3237
  %u42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, !dbg !3237
  %fld43 = bitcast %union.u* %u42 to [1 x %union.rtunion_def]*, !dbg !3237
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i64 0, i64 %indvars.iv.next3, !dbg !3237
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**, !dbg !3237
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3237
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %13, i64 0, i32 0, !dbg !3237
  %14 = load i32, i32* %num_elem, align 8, !dbg !3237
  call void @llvm.dbg.value(metadata i32 %14, metadata !3187, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3239
  %15 = sext i32 %14 to i64, !dbg !3240
  br label %for.cond47, !dbg !3240

for.cond47:                                       ; preds = %for.body50, %if.then41
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body50 ], [ %15, %if.then41 ], !dbg !3194
  %result.1 = phi i32 [ %lor.ext64, %for.body50 ], [ %result.0, %if.then41 ], !dbg !3194
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3241
  call void @llvm.dbg.value(metadata i32 undef, metadata !3187, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3239
  call void @llvm.dbg.value(metadata i32 %result.1, metadata !3183, metadata !DIExpression()), !dbg !3194
  %cmp48 = icmp sgt i64 %indvars.iv, 0, !dbg !3242
  br i1 %cmp48, label %for.body50, label %for.inc67.loopexit, !dbg !3244

for.body50:                                       ; preds = %for.cond47
  %16 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3245
  %u51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i64 0, i32 1, !dbg !3245
  %fld52 = bitcast %union.u* %u51 to [1 x %union.rtunion_def]*, !dbg !3245
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i64 0, i64 %indvars.iv.next3, !dbg !3245
  %rt_rtvec55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtvec_def**, !dbg !3245
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec55, align 8, !dbg !3245
  %arrayidx57 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3245
  %call58 = tail call fastcc zeroext i8 @change_regs(%struct.rtx_def** nonnull %arrayidx57) #7, !dbg !3246
  %tobool60 = icmp ne i8 %call58, 0, !dbg !3246
  %tobool62 = icmp ne i32 %result.1, 0, !dbg !3247
  %spec.select1 = or i1 %tobool62, %tobool60, !dbg !3247
  %lor.ext64 = zext i1 %spec.select1 to i32, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %lor.ext64, metadata !3183, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 undef, metadata !3187, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3239
  br label %for.cond47, !dbg !3248, !llvm.loop !3249

for.inc67.loopexit:                               ; preds = %for.cond47
  %result.1.lcssa = phi i32 [ %result.1, %for.cond47 ], !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.1.lcssa, metadata !3183, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.1.lcssa, metadata !3183, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.1.lcssa, metadata !3183, metadata !DIExpression()), !dbg !3194
  br label %for.inc67, !dbg !3251

for.inc67:                                        ; preds = %for.inc67.loopexit, %if.then30, %if.else
  %result.3 = phi i32 [ %lor.ext, %if.then30 ], [ %result.0, %if.else ], [ %result.1.lcssa, %for.inc67.loopexit ], !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.3, metadata !3183, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 undef, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3194
  br label %for.cond, !dbg !3251, !llvm.loop !3252

for.end69:                                        ; preds = %for.cond
  %result.0.lcssa = phi i32 [ %result.0, %for.cond ], !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !3183, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !3183, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !3183, metadata !DIExpression()), !dbg !3194
  %conv70 = trunc i32 %result.0.lcssa to i8, !dbg !3254
  br label %cleanup, !dbg !3255

cleanup:                                          ; preds = %if.end11, %if.end8, %if.then2, %entry, %for.end69, %if.end17
  %retval.0 = phi i8 [ 1, %if.end17 ], [ %conv70, %for.end69 ], [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.end8 ], [ 0, %if.end11 ], !dbg !3194
  ret i8 %retval.0, !dbg !3256
}

declare dso_local zeroext i8 @df_insn_rescan(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @df_notes_rescan(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3257 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3266, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3267, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 %start_bit, metadata !3268, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3269, metadata !DIExpression()), !dbg !3270
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3271
  %1 = load i64, i64* %0, align 8, !dbg !3271
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3272
  store i64 %1, i64* %2, align 8, !dbg !3272
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3273
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3274
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3275
  %div = lshr i32 %start_bit, 7, !dbg !3278
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3280
  br label %while.body, !dbg !3280

while.body:                                       ; preds = %entry, %if.end5
  %4 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %5 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %6 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %.in = phi i64 [ %1, %entry ], [ %11, %if.end5 ]
  %7 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %8 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ], !dbg !3281
  %9 = inttoptr i64 %.in to i64*, !dbg !3280
  %tobool = icmp eq %struct.bitmap_element_def* %8, null, !dbg !3282
  br i1 %tobool, label %if.then, label %if.end, !dbg !3283

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3284
  br label %while.end, !dbg !3286

if.end:                                           ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i64 0, i32 2, !dbg !3287
  %10 = load i32, i32* %indx, align 8, !dbg !3287
  %cmp = icmp ult i32 %10, %div, !dbg !3288
  br i1 %cmp, label %if.end5, label %while.end.loopexit, !dbg !3289

if.end5:                                          ; preds = %if.end
  %11 = load i64, i64* %9, align 8, !dbg !3290
  store i64 %11, i64* %2, align 8, !dbg !3291
  %12 = inttoptr i64 %11 to %struct.bitmap_element_def*, !dbg !3280
  br label %while.body, !dbg !3280, !llvm.loop !3292

while.end.loopexit:                               ; preds = %if.end
  %.lcssa11 = phi %struct.bitmap_element_def* [ %4, %if.end ]
  %.lcssa9 = phi %struct.bitmap_element_def* [ %5, %if.end ]
  %.lcssa7 = phi %struct.bitmap_element_def* [ %6, %if.end ]
  br label %while.end, !dbg !3294

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %13 = phi %struct.bitmap_element_def* [ %.lcssa11, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %14 = phi %struct.bitmap_element_def* [ %.lcssa9, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %15 = phi %struct.bitmap_element_def* [ %.lcssa7, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3294
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3296
  %16 = load i32, i32* %indx9, align 8, !dbg !3296
  %cmp11 = icmp eq i32 %16, %div, !dbg !3297
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3298

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i64 0, i32 2, !dbg !3299
  %17 = load i32, i32* %indx14, align 8, !dbg !3299
  %mul = shl i32 %17, 7, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3268, metadata !DIExpression()), !dbg !3270
  br label %if.end15, !dbg !3301

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ %start_bit, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3268, metadata !DIExpression()), !dbg !3270
  %div16 = lshr i32 %start_bit.addr.0, 6, !dbg !3302
  %rem = and i32 %div16, 1, !dbg !3303
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3304
  store i32 %rem, i32* %word_no, align 8, !dbg !3305
  %idxprom = zext i32 %rem to i64, !dbg !3306
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i64 0, i32 3, i64 %idxprom, !dbg !3306
  %18 = load i64, i64* %arrayidx, align 8, !dbg !3306
  %rem20 = and i32 %start_bit.addr.0, 63, !dbg !3307
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3308
  %sh_prom = zext i32 %rem20 to i64, !dbg !3309
  %shr = lshr i64 %18, %sh_prom, !dbg !3309
  store i64 %shr, i64* %bits21, align 8, !dbg !3309
  %tobool23 = icmp eq i64 %shr, 0, !dbg !3310
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3310
  %add = add i32 %start_bit.addr.0, %lnot.ext, !dbg !3311
  call void @llvm.dbg.value(metadata i32 %add, metadata !3268, metadata !DIExpression()), !dbg !3270
  store i32 %add, i32* %bit_no, align 4, !dbg !3312
  ret void, !dbg !3313
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3314 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3319, metadata !DIExpression()), !dbg !3323
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3324
  %0 = load i64, i64* %bits, align 8, !dbg !3324
  %tobool = icmp eq i64 %0, 0, !dbg !3325
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3326

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3327
  br label %next_bit, !dbg !3330

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3320), !dbg !3331
  br label %while.cond, !dbg !3330

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3332
  %and = and i64 %2, 1, !dbg !3333
  %tobool2 = icmp eq i64 %and, 0, !dbg !3334
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3330

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3335
  store i64 %shr, i64* %bits, align 8, !dbg !3335
  %3 = load i32, i32* %bit_no, align 4, !dbg !3337
  %add = add i32 %3, 1, !dbg !3337
  store i32 %add, i32* %bit_no, align 4, !dbg !3337
  %.pre = load i64, i64* %bits, align 8, !dbg !3332
  br label %while.cond, !dbg !3330, !llvm.loop !3338

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3340
  %sub = add i32 %4, 63, !dbg !3341
  %div = and i32 %sub, -64, !dbg !3342
  store i32 %div, i32* %bit_no, align 4, !dbg !3343
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3344
  %5 = load i32, i32* %word_no, align 8, !dbg !3345
  %inc = add i32 %5, 1, !dbg !3345
  store i32 %inc, i32* %word_no, align 8, !dbg !3345
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3346
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3346
  br label %while.body6, !dbg !3347

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3348

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3349
  %cmp = icmp eq i32 %8, 2, !dbg !3350
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3346
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3348

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3327
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3327
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3327
  store i64 %10, i64* %bits, align 8, !dbg !3351
  %tobool14 = icmp eq i64 %10, 0, !dbg !3352
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3354

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3355
  %add17 = add i32 %11, 64, !dbg !3355
  store i32 %add17, i32* %bit_no, align 4, !dbg !3355
  %12 = load i32, i32* %word_no, align 8, !dbg !3356
  %inc19 = add i32 %12, 1, !dbg !3356
  store i32 %inc19, i32* %word_no, align 8, !dbg !3356
  br label %while.cond7, !dbg !3348, !llvm.loop !3357

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3346
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3359
  %14 = load i64, i64* %13, align 8, !dbg !3359
  store i64 %14, i64* %6, align 8, !dbg !3360
  %tobool24 = icmp eq i64 %14, 0, !dbg !3361
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3363

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3363
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3364
  %16 = load i32, i32* %indx, align 8, !dbg !3364
  %mul28 = shl i32 %16, 7, !dbg !3365
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3366
  store i32 0, i32* %word_no, align 8, !dbg !3367
  br label %while.body6, !dbg !3347, !llvm.loop !3368

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3370

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3370

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3323
  ret i8 %retval.0, !dbg !3370
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3371 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3378, metadata !DIExpression()), !dbg !3379
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3380
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3380
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3380
  ret i32 %0, !dbg !3381
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_allocno_reg(%struct.ira_allocno* %allocno, %struct.rtx_def* %reg) unnamed_addr #4 !dbg !3382 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %allocno, metadata !3386, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3387, metadata !DIExpression()), !dbg !3391
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %allocno, i64 0, i32 6, !dbg !3392
  %0 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !3392
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %0, metadata !3390, metadata !DIExpression()), !dbg !3391
  %1 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_regno_allocno_map, align 8, !dbg !3393
  %regno1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %allocno, i64 0, i32 1, !dbg !3395
  %2 = load i32, i32* %regno1, align 4, !dbg !3395
  %idxprom = sext i32 %2 to i64, !dbg !3393
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %1, i64 %idxprom, !dbg !3393
  br label %for.cond, !dbg !3396

for.cond:                                         ; preds = %for.inc, %entry
  %a.0.in = phi %struct.ira_allocno** [ %arrayidx, %entry ], [ %next_regno_allocno, %for.inc ]
  %a.0 = load %struct.ira_allocno*, %struct.ira_allocno** %a.0.in, align 8, !dbg !3397
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.0, metadata !3389, metadata !DIExpression()), !dbg !3391
  %cmp = icmp eq %struct.ira_allocno* %a.0, null, !dbg !3398
  br i1 %cmp, label %for.end, label %for.body, !dbg !3400

for.body:                                         ; preds = %for.cond
  %loop_tree_node2 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 6, !dbg !3401
  %3 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node2, align 8, !dbg !3401
  %call = tail call fastcc zeroext i8 @subloop_tree_node_p(%struct.ira_loop_tree_node* %3, %struct.ira_loop_tree_node* %0) #7, !dbg !3403
  %tobool = icmp eq i8 %call, 0, !dbg !3403
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3404

if.then:                                          ; preds = %for.body
  %reg3 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 4, !dbg !3405
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg3, align 8, !dbg !3406
  br label %for.inc, !dbg !3405

for.inc:                                          ; preds = %for.body, %if.then
  %next_regno_allocno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 5, !dbg !3407
  br label %for.cond, !dbg !3408, !llvm.loop !3409

for.end:                                          ; preds = %for.cond
  br label %for.cond4, !dbg !3411

for.cond4:                                        ; preds = %for.body6, %for.end
  %allocno.pn = phi %struct.ira_allocno* [ %allocno, %for.end ], [ %a.1, %for.body6 ]
  %a.1.in = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %allocno.pn, i64 0, i32 16, !dbg !3413
  %a.1 = load %struct.ira_allocno*, %struct.ira_allocno** %a.1.in, align 8, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.1, metadata !3389, metadata !DIExpression()), !dbg !3391
  %cmp5 = icmp eq %struct.ira_allocno* %a.1, null, !dbg !3414
  br i1 %cmp5, label %for.end10, label %for.body6, !dbg !3416

for.body6:                                        ; preds = %for.cond4
  %reg7 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.1, i64 0, i32 4, !dbg !3417
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg7, align 8, !dbg !3418
  br label %for.cond4, !dbg !3419, !llvm.loop !3420

for.end10:                                        ; preds = %for.cond4
  %4 = load i32, i32* %regno1, align 4, !dbg !3422
  call void @llvm.dbg.value(metadata i32 %4, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %allocno, metadata !3389, metadata !DIExpression()), !dbg !3391
  %idxprom20 = sext i32 %4 to i64, !dbg !3423
  br label %for.cond12, !dbg !3429

for.cond12:                                       ; preds = %for.cond12.backedge, %for.end10
  %a.2 = phi %struct.ira_allocno* [ %allocno, %for.end10 ], [ %a.3, %for.cond12.backedge ], !dbg !3430
  %node.0 = phi %struct.ira_loop_tree_node* [ %0, %for.end10 ], [ %node.1, %for.cond12.backedge ], !dbg !3391
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %node.0, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.2, metadata !3389, metadata !DIExpression()), !dbg !3391
  %cmp13 = icmp eq %struct.ira_allocno* %a.2, null, !dbg !3431
  br i1 %cmp13, label %if.then16, label %lor.lhs.false, !dbg !3432

lor.lhs.false:                                    ; preds = %for.cond12
  %cap14 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.2, i64 0, i32 16, !dbg !3433
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %cap14, align 8, !dbg !3433
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !3389, metadata !DIExpression()), !dbg !3391
  %cmp15 = icmp eq %struct.ira_allocno* %5, null, !dbg !3434
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !3435

if.then16:                                        ; preds = %lor.lhs.false, %for.cond12
  %parent = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node.0, i64 0, i32 6, !dbg !3436
  %6 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent, align 8, !dbg !3436
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %6, metadata !3390, metadata !DIExpression()), !dbg !3391
  %cmp17 = icmp eq %struct.ira_loop_tree_node* %6, null, !dbg !3437
  br i1 %cmp17, label %for.end32, label %if.end19, !dbg !3439

if.end19:                                         ; preds = %if.then16
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %6, i64 0, i32 9, !dbg !3440
  %7 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !3440
  %arrayidx21 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %7, i64 %idxprom20, !dbg !3441
  %8 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx21, align 8, !dbg !3441
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %8, metadata !3389, metadata !DIExpression()), !dbg !3391
  br label %if.end22, !dbg !3442

if.end22:                                         ; preds = %if.end19, %lor.lhs.false
  %a.3 = phi %struct.ira_allocno* [ %8, %if.end19 ], [ %5, %lor.lhs.false ], !dbg !3443
  %node.1 = phi %struct.ira_loop_tree_node* [ %6, %if.end19 ], [ %node.0, %lor.lhs.false ], !dbg !3391
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %node.1, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.3, metadata !3389, metadata !DIExpression()), !dbg !3391
  %cmp23 = icmp eq %struct.ira_allocno* %a.3, null, !dbg !3444
  br i1 %cmp23, label %for.cond12.backedge, label %if.end25, !dbg !3446

if.end25:                                         ; preds = %if.end22
  %child_renamed_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.3, i64 0, i32 31, !dbg !3447
  %bf.load = load i16, i16* %child_renamed_p, align 4, !dbg !3447
  %bf.clear = and i16 %bf.load, 4, !dbg !3447
  %tobool26 = icmp eq i16 %bf.clear, 0, !dbg !3447
  br i1 %tobool26, label %if.end28, label %for.end32, !dbg !3449

if.end28:                                         ; preds = %if.end25
  %bf.set = or i16 %bf.load, 4, !dbg !3450
  store i16 %bf.set, i16* %child_renamed_p, align 4, !dbg !3450
  br label %for.cond12.backedge, !dbg !3451

for.cond12.backedge:                              ; preds = %if.end28, %if.end22
  br label %for.cond12, !dbg !3391, !llvm.loop !3452

for.end32:                                        ; preds = %if.end25, %if.then16
  ret void, !dbg !3455
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @create_new_reg(%struct.rtx_def* %original_reg) unnamed_addr #4 !dbg !3456 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %original_reg, metadata !3460, metadata !DIExpression()), !dbg !3462
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %original_reg, i64 0, i32 0, !dbg !3463
  %bf.load = load i32, i32* %0, align 8, !dbg !3463
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3463
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3463
  %call = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear) #6, !dbg !3464
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3461, metadata !DIExpression()), !dbg !3462
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %original_reg, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3465
  %rt_uint = bitcast %union.rtunion_def* %1 to i32*, !dbg !3465
  %2 = load i32, i32* %rt_uint, align 8, !dbg !3465
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3466
  %rt_uint4 = bitcast %union.rtunion_def* %3 to i32*, !dbg !3466
  store i32 %2, i32* %rt_uint4, align 8, !dbg !3467
  %bf.load5 = load i32, i32* %0, align 8, !dbg !3468
  %bf.clear7 = and i32 %bf.load5, 134217728, !dbg !3468
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !3469
  %bf.load8 = load i32, i32* %4, align 8, !dbg !3470
  %bf.clear9 = and i32 %bf.load8, -134217729, !dbg !3470
  %bf.set = or i32 %bf.clear9, %bf.clear7, !dbg !3470
  store i32 %bf.set, i32* %4, align 8, !dbg !3470
  %bf.load10 = load i32, i32* %0, align 8, !dbg !3471
  %bf.clear12 = and i32 %bf.load10, 1073741824, !dbg !3471
  %bf.clear16 = and i32 %bf.set, -1073741825, !dbg !3472
  %bf.set17 = or i32 %bf.clear16, %bf.clear12, !dbg !3472
  store i32 %bf.set17, i32* %4, align 8, !dbg !3472
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %original_reg, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3473
  %6 = bitcast %union.rtunion_def* %5 to i64*, !dbg !3473
  %7 = load i64, i64* %6, align 8, !dbg !3473
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3474
  %9 = bitcast %union.rtunion_def* %8 to i64*, !dbg !3475
  store i64 %7, i64* %9, align 8, !dbg !3475
  %10 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !3476
  %cmp = icmp sgt i32 %10, 3, !dbg !3478
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !3479
  %cmp25 = icmp ne %struct._IO_FILE* %11, null, !dbg !3480
  %or.cond = and i1 %cmp, %cmp25, !dbg !3481
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3481

if.then:                                          ; preds = %entry
  %call26 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3482
  %call27 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %original_reg) #7, !dbg !3483
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %call26, i32 %call27) #6, !dbg !3484
  br label %if.end, !dbg !3484

if.end:                                           ; preds = %if.then, %entry
  ret %struct.rtx_def* %call, !dbg !3485
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3486 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3490, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3491, metadata !DIExpression()), !dbg !3492
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3493
  %0 = load i64, i64* %bits, align 8, !dbg !3494
  %shr = lshr i64 %0, 1, !dbg !3494
  store i64 %shr, i64* %bits, align 8, !dbg !3494
  %1 = load i32, i32* %bit_no, align 4, !dbg !3495
  %add = add i32 %1, 1, !dbg !3495
  store i32 %add, i32* %bit_no, align 4, !dbg !3495
  ret void, !dbg !3496
}

declare dso_local zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @subloop_tree_node_p(%struct.ira_loop_tree_node* %subnode, %struct.ira_loop_tree_node* %node) unnamed_addr #4 !dbg !3497 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %subnode, metadata !3501, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %node, metadata !3502, metadata !DIExpression()), !dbg !3503
  br label %for.cond, !dbg !3504

for.cond:                                         ; preds = %for.inc, %entry
  %subnode.addr.0 = phi %struct.ira_loop_tree_node* [ %subnode, %entry ], [ %0, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %subnode.addr.0, metadata !3501, metadata !DIExpression()), !dbg !3503
  %cmp = icmp eq %struct.ira_loop_tree_node* %subnode.addr.0, null, !dbg !3505
  br i1 %cmp, label %return, label %for.body, !dbg !3508

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp eq %struct.ira_loop_tree_node* %subnode.addr.0, %node, !dbg !3509
  br i1 %cmp1, label %return, label %for.inc, !dbg !3511

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %subnode.addr.0, i64 0, i32 6, !dbg !3512
  %0 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent, align 8, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %0, metadata !3501, metadata !DIExpression()), !dbg !3503
  br label %for.cond, !dbg !3513, !llvm.loop !3514

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3503
  ret i8 %retval.0, !dbg !3516
}

declare dso_local %struct.rtx_def* @gen_reg_rtx(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !3517 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3524, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3525, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !3526, metadata !DIExpression()), !dbg !3527
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3528
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3528

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3528
  %0 = load i32, i32* %num, align 8, !dbg !3528
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3528
  br i1 %cmp, label %if.then, label %if.else, !dbg !3530

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3531
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3531
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3531
  br label %return, !dbg !3531

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3533

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !3535
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3535
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !3535
  ret i32 %retval.0, !dbg !3530
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @entered_from_non_parent_p(%struct.ira_loop_tree_node* %loop_node) unnamed_addr #4 !dbg !3536 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %loop_node, metadata !3540, metadata !DIExpression()), !dbg !3546
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3547
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3548
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3548
  %children = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_node, i64 0, i32 5, !dbg !3549
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3551
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3551
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3551
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3556
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3556
  br label %for.cond, !dbg !3558

for.cond:                                         ; preds = %for.inc38, %entry
  %bb_node.0.in = phi %struct.ira_loop_tree_node** [ %children, %entry ], [ %next, %for.inc38 ]
  %bb_node.0 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %bb_node.0.in, align 8, !dbg !3559
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %bb_node.0, metadata !3541, metadata !DIExpression()), !dbg !3546
  %cmp = icmp eq %struct.ira_loop_tree_node* %bb_node.0, null, !dbg !3560
  br i1 %cmp, label %cleanup.loopexit4, label %for.body, !dbg !3561

for.body:                                         ; preds = %for.cond
  %bb = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %bb_node.0, i64 0, i32 0, !dbg !3562
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3562
  %cmp1 = icmp eq %struct.basic_block_def* %7, null, !dbg !3563
  br i1 %cmp1, label %for.inc38, label %if.then, !dbg !3564

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3565
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 0, !dbg !3565
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds) #7, !dbg !3565
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3565
  store i32 %8, i32* %3, align 8, !dbg !3565
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3565
  store %struct.VEC_edge_gc** %9, %struct.VEC_edge_gc*** %4, align 8, !dbg !3565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3565
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3565
  br label %for.cond3, !dbg !3565

for.cond3:                                        ; preds = %for.inc35, %if.then
  %10 = load i32, i32* %5, align 8, !dbg !3566
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3566
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3544, metadata !DIExpression(DW_OP_deref)), !dbg !3546
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #7, !dbg !3566
  %tobool = icmp eq i8 %call4, 0, !dbg !3565
  br i1 %tobool, label %for.inc38.loopexit, label %for.body5, !dbg !3565

for.body5:                                        ; preds = %for.cond3
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3567
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3544, metadata !DIExpression()), !dbg !3546
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !3569
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3569
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3570
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3570
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3570
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !3570
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3570
  %cmp6 = icmp eq %struct.basic_block_def* %13, %16, !dbg !3571
  br i1 %cmp6, label %for.inc35, label %land.lhs.true, !dbg !3572

land.lhs.true:                                    ; preds = %for.body5
  %17 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_bb_nodes, align 8, !dbg !3573
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3544, metadata !DIExpression()), !dbg !3546
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !3573
  %18 = load i32, i32* %index, align 8, !dbg !3573
  %idxprom = sext i32 %18 to i64, !dbg !3573
  %parent8 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %17, i64 %idxprom, i32 6, !dbg !3574
  %19 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent8, align 8, !dbg !3574
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %19, metadata !3542, metadata !DIExpression()), !dbg !3546
  %cmp9 = icmp eq %struct.ira_loop_tree_node* %19, %loop_node, !dbg !3575
  br i1 %cmp9, label %for.inc35, label %if.then10, !dbg !3576

if.then10:                                        ; preds = %land.lhs.true
  br label %for.cond12, !dbg !3577

for.cond12:                                       ; preds = %for.inc, %if.then10
  %.pn = phi %struct.ira_loop_tree_node* [ %19, %if.then10 ], [ %parent.0, %for.inc ]
  %parent.0.in = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %.pn, i64 0, i32 6, !dbg !3580
  %parent.0 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent.0.in, align 8, !dbg !3580
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %parent.0, metadata !3543, metadata !DIExpression()), !dbg !3546
  %cond = icmp eq %struct.ira_loop_tree_node* %parent.0, null, !dbg !3581
  br i1 %cond, label %if.end20.loopexit, label %for.body14, !dbg !3581

for.body14:                                       ; preds = %for.cond12
  %cmp15 = icmp eq %struct.ira_loop_tree_node* %parent.0, %loop_node, !dbg !3582
  br i1 %cmp15, label %for.end, label %for.inc, !dbg !3585

for.inc:                                          ; preds = %for.body14
  br label %for.cond12, !dbg !3586, !llvm.loop !3587

for.end:                                          ; preds = %for.body14
  br label %for.inc35, !dbg !3589

if.end20.loopexit:                                ; preds = %for.cond12
  br label %for.cond22, !dbg !3590

for.cond22:                                       ; preds = %for.inc28, %if.end20.loopexit
  %loop_node.pn = phi %struct.ira_loop_tree_node* [ %loop_node, %if.end20.loopexit ], [ %parent.1, %for.inc28 ]
  %parent.1.in = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_node.pn, i64 0, i32 6, !dbg !3592
  %parent.1 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent.1.in, align 8, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %parent.1, metadata !3543, metadata !DIExpression()), !dbg !3546
  %cond2 = icmp eq %struct.ira_loop_tree_node* %parent.1, null, !dbg !3593
  br i1 %cond2, label %cleanup.loopexit, label %for.body24, !dbg !3593

for.body24:                                       ; preds = %for.cond22
  %cmp25 = icmp eq %struct.ira_loop_tree_node* %19, %parent.1, !dbg !3594
  br i1 %cmp25, label %for.end30, label %for.inc28, !dbg !3597

for.inc28:                                        ; preds = %for.body24
  br label %for.cond22, !dbg !3598, !llvm.loop !3599

for.end30:                                        ; preds = %for.body24
  br label %for.inc35, !dbg !3601

for.inc35:                                        ; preds = %for.end30, %for.end, %land.lhs.true, %for.body5
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3545, metadata !DIExpression(DW_OP_deref)), !dbg !3546
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3566
  br label %for.cond3, !dbg !3566, !llvm.loop !3602

for.inc38.loopexit:                               ; preds = %for.cond3
  br label %for.inc38, !dbg !3604

for.inc38:                                        ; preds = %for.inc38.loopexit, %for.body
  %next = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %bb_node.0, i64 0, i32 3, !dbg !3604
  br label %for.cond, !dbg !3605, !llvm.loop !3606

cleanup.loopexit:                                 ; preds = %for.cond22
  br label %cleanup, !dbg !3608

cleanup.loopexit4:                                ; preds = %for.cond
  br label %cleanup, !dbg !3608

cleanup:                                          ; preds = %cleanup.loopexit4, %cleanup.loopexit
  %retval.0 = phi i8 [ 1, %cleanup.loopexit ], [ 0, %cleanup.loopexit4 ], !dbg !3546
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3608
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3608
  ret i8 %retval.0, !dbg !3608
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3609 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3614
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3614
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3614

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3614
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3614
  br label %cond.end, !dbg !3614

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3614
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3614
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3615
  %conv3 = zext i1 %cmp to i8, !dbg !3616
  ret i8 %conv3, !dbg !3617
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3618 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3623
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3623
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3623

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3623
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3623
  br label %cond.end, !dbg !3623

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3623
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3623
  ret %struct.edge_def* %call2, !dbg !3624
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3625 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3631, metadata !DIExpression()), !dbg !3632
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3633
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3633

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3633
  %0 = load i32, i32* %num, align 8, !dbg !3633
  br label %cond.end, !dbg !3633

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3633
  ret i32 %cond, !dbg !3633
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3634 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3639
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3639

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3639
  br label %cond.end, !dbg !3639

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3640
  ret %struct.VEC_edge_gc* %0, !dbg !3641
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3642 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3647, metadata !DIExpression()), !dbg !3648
  br label %land.end, !dbg !3649

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3649
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3649
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3649
  ret %struct.edge_def* %0, !dbg !3649
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3650 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3654, metadata !DIExpression()), !dbg !3655
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3656
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 1, !dbg !3656
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3656
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3658
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3658
  %cmp = icmp ugt i32 %2, %index, !dbg !3659
  br i1 %cmp, label %if.then, label %return, !dbg !3660

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3661
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3661
  %idxprom = zext i32 %index to i64, !dbg !3662
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3662
  %4 = bitcast i8** %arrayidx3 to %struct.df_lr_bb_info**, !dbg !3662
  %5 = load %struct.df_lr_bb_info*, %struct.df_lr_bb_info** %4, align 8, !dbg !3662
  br label %return, !dbg !3663

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_lr_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3664
  ret %struct.df_lr_bb_info* %retval.0, !dbg !3665
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @store_can_be_removed_p(%struct.ira_allocno* %src_allocno, %struct.ira_allocno* %dest_allocno) unnamed_addr #4 !dbg !3666 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %src_allocno, metadata !3670, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %dest_allocno, metadata !3671, metadata !DIExpression()), !dbg !3676
  %regno1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %src_allocno, i64 0, i32 1, !dbg !3677
  %0 = load i32, i32* %regno1, align 4, !dbg !3677
  call void @llvm.dbg.value(metadata i32 %0, metadata !3673, metadata !DIExpression()), !dbg !3676
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %dest_allocno, i64 0, i32 4, !dbg !3678
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !3678
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %1) #7, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %call, metadata !3672, metadata !DIExpression()), !dbg !3676
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %src_allocno, i64 0, i32 6, !dbg !3679
  %idxprom = sext i32 %0 to i64, !dbg !3681
  br label %for.cond, !dbg !3684

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.ira_loop_tree_node** [ %loop_tree_node, %entry ], [ %parent, %for.inc ]
  %node.0 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %node.0.in, align 8, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %node.0, metadata !3675, metadata !DIExpression()), !dbg !3676
  %cmp = icmp eq %struct.ira_loop_tree_node* %node.0, null, !dbg !3686
  br i1 %cmp, label %for.end, label %for.body, !dbg !3687

for.body:                                         ; preds = %for.cond
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node.0, i64 0, i32 9, !dbg !3688
  %2 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !3688
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %2, i64 %idxprom, !dbg !3689
  %3 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !3674, metadata !DIExpression()), !dbg !3676
  %reg2 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 4, !dbg !3690
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8, !dbg !3690
  %call3 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !3690
  %cmp4 = icmp eq i32 %call3, %call, !dbg !3692
  br i1 %cmp4, label %cleanup.loopexit, label %if.else, !dbg !3693

if.else:                                          ; preds = %for.body
  %modified_regnos = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node.0, i64 0, i32 14, !dbg !3694
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %modified_regnos, align 8, !dbg !3694
  %call5 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %0) #6, !dbg !3696
  %tobool = icmp eq i32 %call5, 0, !dbg !3696
  br i1 %tobool, label %if.else7, label %cleanup.loopexit, !dbg !3697

if.else7:                                         ; preds = %if.else
  %entered_from_non_parent_p = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node.0, i64 0, i32 10, !dbg !3698
  %6 = load i8, i8* %entered_from_non_parent_p, align 8, !dbg !3698
  %tobool8 = icmp eq i8 %6, 0, !dbg !3700
  br i1 %tobool8, label %for.inc, label %cleanup.loopexit, !dbg !3701

for.inc:                                          ; preds = %if.else7
  %parent = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node.0, i64 0, i32 6, !dbg !3702
  br label %for.cond, !dbg !3703, !llvm.loop !3704

for.end:                                          ; preds = %for.cond
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 371, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3706
  br label %cleanup, !dbg !3707

cleanup.loopexit:                                 ; preds = %for.body, %if.else, %if.else7
  %retval.0.ph = phi i8 [ 0, %if.else7 ], [ 0, %if.else ], [ 1, %for.body ]
  br label %cleanup, !dbg !3708

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %retval.0 = phi i8 [ 0, %for.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3676
  ret i8 %retval.0, !dbg !3708
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.move* @create_move(%struct.ira_allocno* %to, %struct.ira_allocno* %from) unnamed_addr #4 !dbg !3709 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %to, metadata !3713, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %from, metadata !3714, metadata !DIExpression()), !dbg !3716
  %call = tail call i8* @ira_allocate(i64 48) #6, !dbg !3717
  %0 = bitcast i8* %call to %struct.move*, !dbg !3718
  call void @llvm.dbg.value(metadata %struct.move* %0, metadata !3715, metadata !DIExpression()), !dbg !3716
  %deps = getelementptr inbounds i8, i8* %call, i64 32, !dbg !3719
  %1 = bitcast i8* %deps to %struct.move***, !dbg !3719
  store %struct.move** null, %struct.move*** %1, align 8, !dbg !3720
  %deps_num = getelementptr inbounds i8, i8* %call, i64 28, !dbg !3721
  %2 = bitcast i8* %deps_num to i32*, !dbg !3721
  store i32 0, i32* %2, align 4, !dbg !3722
  %to1 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3723
  %3 = bitcast i8* %to1 to %struct.ira_allocno**, !dbg !3723
  store %struct.ira_allocno* %to, %struct.ira_allocno** %3, align 8, !dbg !3724
  %from2 = bitcast i8* %call to %struct.ira_allocno**, !dbg !3725
  store %struct.ira_allocno* %from, %struct.ira_allocno** %from2, align 8, !dbg !3726
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3727
  %4 = bitcast i8* %next to %struct.move**, !dbg !3727
  store %struct.move* null, %struct.move** %4, align 8, !dbg !3728
  %insn = getelementptr inbounds i8, i8* %call, i64 40, !dbg !3729
  %5 = bitcast i8* %insn to %struct.rtx_def**, !dbg !3729
  store %struct.rtx_def* null, %struct.rtx_def** %5, align 8, !dbg !3730
  %6 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3731
  store i8 0, i8* %6, align 8, !dbg !3732
  ret %struct.move* %0, !dbg !3733
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_to_edge_list(%struct.edge_def* %e, %struct.move* %move, i8 zeroext %head_p) unnamed_addr #4 !dbg !3734 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata %struct.move* %move, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 1, metadata !3740, metadata !DIExpression()), !dbg !3742
  %aux2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 3, !dbg !3743
  %0 = bitcast i8** %aux2 to i64*, !dbg !3743
  %1 = load i64, i64* %0, align 8, !dbg !3743
  %next = getelementptr inbounds %struct.move, %struct.move* %move, i64 0, i32 2, !dbg !3746
  %2 = bitcast %struct.move** %next to i64*, !dbg !3747
  store i64 %1, i64* %2, align 8, !dbg !3747
  %3 = bitcast i8** %aux2 to %struct.move**, !dbg !3748
  store %struct.move* %move, %struct.move** %3, align 8, !dbg !3748
  ret void, !dbg !3749
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @eq_edge_move_lists_p(%struct.VEC_edge_gc* %vec) unnamed_addr #4 !dbg !3750 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc* %vec, metadata !3754, metadata !DIExpression()), !dbg !3757
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %vec, i64 0, i32 0, !dbg !3758
  %call = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base, i32 0) #7, !dbg !3758
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 3, !dbg !3759
  %0 = bitcast i8** %aux to %struct.move**, !dbg !3759
  %1 = load %struct.move*, %struct.move** %0, align 8, !dbg !3759
  call void @llvm.dbg.value(metadata %struct.move* %1, metadata !3755, metadata !DIExpression()), !dbg !3757
  %call7 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #7, !dbg !3760
  call void @llvm.dbg.value(metadata i32 %call7, metadata !3756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3757
  br label %for.cond, !dbg !3762

for.cond:                                         ; preds = %for.inc, %entry
  %i.0.in = phi i32 [ %call7, %entry ], [ %i.0, %for.inc ]
  %i.0 = add i32 %i.0.in, -1, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3756, metadata !DIExpression()), !dbg !3757
  %cmp = icmp sgt i32 %i.0, 0, !dbg !3764
  br i1 %cmp, label %for.body, label %cleanup, !dbg !3766

for.body:                                         ; preds = %for.cond
  %call14 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base, i32 %i.0) #7, !dbg !3767
  %aux15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call14, i64 0, i32 3, !dbg !3769
  %2 = bitcast i8** %aux15 to %struct.move**, !dbg !3769
  %3 = load %struct.move*, %struct.move** %2, align 8, !dbg !3769
  %call16 = tail call fastcc zeroext i8 @eq_move_lists_p(%struct.move* %1, %struct.move* %3) #7, !dbg !3770
  %tobool17 = icmp eq i8 %call16, 0, !dbg !3770
  br i1 %tobool17, label %cleanup, label %for.inc, !dbg !3771

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3757
  br label %for.cond, !dbg !3772, !llvm.loop !3773

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !3757
  ret i8 %retval.0, !dbg !3775
}

declare dso_local zeroext i8 @control_flow_insn_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @eq_move_lists_p(%struct.move* %list1, %struct.move* %list2) unnamed_addr #4 !dbg !3776 {
entry:
  call void @llvm.dbg.value(metadata %struct.move* %list1, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.move* %list2, metadata !3781, metadata !DIExpression()), !dbg !3782
  br label %for.cond, !dbg !3783

for.cond:                                         ; preds = %for.inc, %entry
  %list2.addr.0 = phi %struct.move* [ %list2, %entry ], [ %5, %for.inc ]
  %list1.addr.0 = phi %struct.move* [ %list1, %entry ], [ %4, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.move* %list1.addr.0, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.move* %list2.addr.0, metadata !3781, metadata !DIExpression()), !dbg !3782
  %cmp = icmp ne %struct.move* %list1.addr.0, null, !dbg !3784
  %cmp1 = icmp ne %struct.move* %list2.addr.0, null, !dbg !3787
  %spec.select = and i1 %cmp1, %cmp, !dbg !3788
  br i1 %spec.select, label %for.body, label %for.end, !dbg !3789

for.body:                                         ; preds = %for.cond
  %from = getelementptr inbounds %struct.move, %struct.move* %list1.addr.0, i64 0, i32 0, !dbg !3790
  %0 = load %struct.ira_allocno*, %struct.ira_allocno** %from, align 8, !dbg !3790
  %from2 = getelementptr inbounds %struct.move, %struct.move* %list2.addr.0, i64 0, i32 0, !dbg !3792
  %1 = load %struct.ira_allocno*, %struct.ira_allocno** %from2, align 8, !dbg !3792
  %cmp3 = icmp eq %struct.ira_allocno* %0, %1, !dbg !3793
  br i1 %cmp3, label %lor.lhs.false, label %return.loopexit, !dbg !3794

lor.lhs.false:                                    ; preds = %for.body
  %to = getelementptr inbounds %struct.move, %struct.move* %list1.addr.0, i64 0, i32 1, !dbg !3795
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %to, align 8, !dbg !3795
  %to4 = getelementptr inbounds %struct.move, %struct.move* %list2.addr.0, i64 0, i32 1, !dbg !3796
  %3 = load %struct.ira_allocno*, %struct.ira_allocno** %to4, align 8, !dbg !3796
  %cmp5 = icmp eq %struct.ira_allocno* %2, %3, !dbg !3797
  br i1 %cmp5, label %for.inc, label %return.loopexit, !dbg !3798

for.inc:                                          ; preds = %lor.lhs.false
  %next = getelementptr inbounds %struct.move, %struct.move* %list1.addr.0, i64 0, i32 2, !dbg !3799
  %4 = load %struct.move*, %struct.move** %next, align 8, !dbg !3799
  call void @llvm.dbg.value(metadata %struct.move* %4, metadata !3780, metadata !DIExpression()), !dbg !3782
  %next6 = getelementptr inbounds %struct.move, %struct.move* %list2.addr.0, i64 0, i32 2, !dbg !3800
  %5 = load %struct.move*, %struct.move** %next6, align 8, !dbg !3800
  call void @llvm.dbg.value(metadata %struct.move* %5, metadata !3781, metadata !DIExpression()), !dbg !3782
  br label %for.cond, !dbg !3801, !llvm.loop !3802

for.end:                                          ; preds = %for.cond
  %list2.addr.0.lcssa = phi %struct.move* [ %list2.addr.0, %for.cond ]
  %list1.addr.0.lcssa = phi %struct.move* [ %list1.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata %struct.move* %list2.addr.0.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.move* %list1.addr.0.lcssa, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.move* %list2.addr.0.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.move* %list1.addr.0.lcssa, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.move* %list2.addr.0.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.move* %list1.addr.0.lcssa, metadata !3780, metadata !DIExpression()), !dbg !3782
  %cmp7 = icmp eq %struct.move* %list1.addr.0.lcssa, %list2.addr.0.lcssa, !dbg !3804
  %conv8 = zext i1 %cmp7 to i8, !dbg !3805
  br label %return, !dbg !3806

return.loopexit:                                  ; preds = %for.body, %lor.lhs.false
  br label %return, !dbg !3807

return:                                           ; preds = %return.loopexit, %for.end
  %retval.0 = phi i8 [ %conv8, %for.end ], [ 0, %return.loopexit ], !dbg !3782
  ret i8 %retval.0, !dbg !3807
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.move* @modify_move_list(%struct.move* %list) unnamed_addr #4 !dbg !3808 {
entry:
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !3812, metadata !DIExpression()), !dbg !3825
  %cmp = icmp eq %struct.move* %list, null, !dbg !3826
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3828

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @curr_tick, align 4, !dbg !3829
  %inc = add nsw i32 %0, 1, !dbg !3829
  store i32 %inc, i32* @curr_tick, align 4, !dbg !3829
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !3820, metadata !DIExpression()), !dbg !3825
  br label %for.cond, !dbg !3830

for.cond:                                         ; preds = %for.inc19, %if.end
  %move.0 = phi %struct.move* [ %list, %if.end ], [ %7, %for.inc19 ], !dbg !3832
  call void @llvm.dbg.value(metadata %struct.move* %move.0, metadata !3820, metadata !DIExpression()), !dbg !3825
  %cmp1 = icmp eq %struct.move* %move.0, null, !dbg !3833
  br i1 %cmp1, label %for.cond21.preheader, label %for.body, !dbg !3835

for.cond21.preheader:                             ; preds = %for.cond
  br label %for.cond21, !dbg !3836

for.body:                                         ; preds = %for.cond
  %to2 = getelementptr inbounds %struct.move, %struct.move* %move.0, i64 0, i32 1, !dbg !3838
  %1 = load %struct.ira_allocno*, %struct.ira_allocno** %to2, align 8, !dbg !3838
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %1, metadata !3817, metadata !DIExpression()), !dbg !3825
  %hard_regno3 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %1, i64 0, i32 3, !dbg !3840
  %2 = load i32, i32* %hard_regno3, align 4, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %2, metadata !3816, metadata !DIExpression()), !dbg !3825
  %cmp4 = icmp slt i32 %2, 0, !dbg !3842
  br i1 %cmp4, label %for.inc19, label %if.end6, !dbg !3843

if.end6:                                          ; preds = %for.body
  %idxprom = sext i32 %2 to i64, !dbg !3844
  %mode = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %1, i64 0, i32 2, !dbg !3845
  %3 = load i32, i32* %mode, align 8, !dbg !3845
  %idxprom7 = zext i32 %3 to i64, !dbg !3844
  %arrayidx8 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom7, !dbg !3844
  %4 = load i8, i8* %arrayidx8, align 1, !dbg !3844
  call void @llvm.dbg.value(metadata i8 %4, metadata !3815, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3825
  %5 = sext i32 %2 to i64, !dbg !3846
  %wide.trip.count23 = zext i8 %4 to i64, !dbg !3848
  br label %for.cond9, !dbg !3846

for.cond9:                                        ; preds = %for.body12, %if.end6
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body12 ], [ 0, %if.end6 ], !dbg !3850
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !3813, metadata !DIExpression()), !dbg !3825
  %exitcond24 = icmp eq i64 %indvars.iv20, %wide.trip.count23, !dbg !3848
  br i1 %exitcond24, label %for.inc19.loopexit, label %for.body12, !dbg !3851

for.body12:                                       ; preds = %for.cond9
  %6 = add nsw i64 %indvars.iv20, %5, !dbg !3852
  %arrayidx14 = getelementptr inbounds [53 x %struct.move*], [53 x %struct.move*]* @hard_regno_last_set, i64 0, i64 %6, !dbg !3854
  store %struct.move* %move.0, %struct.move** %arrayidx14, align 8, !dbg !3855
  %arrayidx17 = getelementptr inbounds [53 x i32], [53 x i32]* @hard_regno_last_set_check, i64 0, i64 %6, !dbg !3856
  store i32 %inc, i32* %arrayidx17, align 4, !dbg !3857
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !3858
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3825
  br label %for.cond9, !dbg !3859, !llvm.loop !3860

for.inc19.loopexit:                               ; preds = %for.cond9
  br label %for.inc19, !dbg !3862

for.inc19:                                        ; preds = %for.inc19.loopexit, %for.body
  %next = getelementptr inbounds %struct.move, %struct.move* %move.0, i64 0, i32 2, !dbg !3862
  %7 = load %struct.move*, %struct.move** %next, align 8, !dbg !3862
  call void @llvm.dbg.value(metadata %struct.move* %7, metadata !3820, metadata !DIExpression()), !dbg !3825
  br label %for.cond, !dbg !3863, !llvm.loop !3864

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc91
  %8 = phi i32 [ %32, %for.inc91 ], [ %inc, %for.cond21.preheader ]
  %move.1 = phi %struct.move* [ %33, %for.inc91 ], [ %list, %for.cond21.preheader ], !dbg !3866
  call void @llvm.dbg.value(metadata %struct.move* %move.1, metadata !3820, metadata !DIExpression()), !dbg !3825
  %cmp22 = icmp eq %struct.move* %move.1, null, !dbg !3867
  br i1 %cmp22, label %for.end93, label %for.body24, !dbg !3836

for.body24:                                       ; preds = %for.cond21
  %from25 = getelementptr inbounds %struct.move, %struct.move* %move.1, i64 0, i32 0, !dbg !3869
  %9 = load %struct.ira_allocno*, %struct.ira_allocno** %from25, align 8, !dbg !3869
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %9, metadata !3818, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata %struct.ira_allocno* undef, metadata !3817, metadata !DIExpression()), !dbg !3825
  %hard_regno27 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %9, i64 0, i32 3, !dbg !3871
  %10 = load i32, i32* %hard_regno27, align 4, !dbg !3871
  call void @llvm.dbg.value(metadata i32 %10, metadata !3816, metadata !DIExpression()), !dbg !3825
  %cmp28 = icmp sgt i32 %10, -1, !dbg !3873
  br i1 %cmp28, label %if.then30, label %for.inc91, !dbg !3874

if.then30:                                        ; preds = %for.body24
  %idxprom31 = sext i32 %10 to i64, !dbg !3875
  %mode33 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %9, i64 0, i32 2, !dbg !3877
  %11 = load i32, i32* %mode33, align 8, !dbg !3877
  %idxprom34 = zext i32 %11 to i64, !dbg !3875
  %arrayidx35 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom31, i64 %idxprom34, !dbg !3875
  %12 = load i8, i8* %arrayidx35, align 1, !dbg !3875
  call void @llvm.dbg.value(metadata i8 %12, metadata !3815, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3814, metadata !DIExpression()), !dbg !3825
  %regno50 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %9, i64 0, i32 1, !dbg !3878
  %13 = sext i32 %10 to i64, !dbg !3882
  %wide.trip.count13 = zext i8 %12 to i64, !dbg !3883
  br label %for.cond37, !dbg !3882

for.cond37:                                       ; preds = %for.inc56, %if.then30
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc56 ], [ 0, %if.then30 ], !dbg !3884
  %n.0 = phi i32 [ %n.1, %for.inc56 ], [ 0, %if.then30 ], !dbg !3884
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !3813, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3814, metadata !DIExpression()), !dbg !3825
  %exitcond14 = icmp eq i64 %indvars.iv10, %wide.trip.count13, !dbg !3883
  br i1 %exitcond14, label %for.end58, label %for.body40, !dbg !3885

for.body40:                                       ; preds = %for.cond37
  %14 = add nsw i64 %indvars.iv10, %13, !dbg !3886
  %arrayidx43 = getelementptr inbounds [53 x i32], [53 x i32]* @hard_regno_last_set_check, i64 0, i64 %14, !dbg !3887
  %15 = load i32, i32* %arrayidx43, align 4, !dbg !3887
  %cmp44 = icmp eq i32 %15, %8, !dbg !3888
  br i1 %cmp44, label %land.lhs.true, label %for.inc56, !dbg !3889

land.lhs.true:                                    ; preds = %for.body40
  %arrayidx48 = getelementptr inbounds [53 x %struct.move*], [53 x %struct.move*]* @hard_regno_last_set, i64 0, i64 %14, !dbg !3890
  %16 = load %struct.move*, %struct.move** %arrayidx48, align 8, !dbg !3890
  %to49 = getelementptr inbounds %struct.move, %struct.move* %16, i64 0, i32 1, !dbg !3890
  %17 = load %struct.ira_allocno*, %struct.ira_allocno** %to49, align 8, !dbg !3890
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %17, i64 0, i32 1, !dbg !3890
  %18 = load i32, i32* %regno, align 4, !dbg !3890
  %19 = load i32, i32* %regno50, align 4, !dbg !3891
  %cmp51 = icmp ne i32 %18, %19, !dbg !3892
  %inc54 = zext i1 %cmp51 to i32, !dbg !3893
  %spec.select = add nsw i32 %n.0, %inc54, !dbg !3893
  br label %for.inc56, !dbg !3893

for.inc56:                                        ; preds = %land.lhs.true, %for.body40
  %n.1 = phi i32 [ %n.0, %for.body40 ], [ %spec.select, %land.lhs.true ], !dbg !3884
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !3814, metadata !DIExpression()), !dbg !3825
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !3894
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3825
  br label %for.cond37, !dbg !3895, !llvm.loop !3896

for.end58:                                        ; preds = %for.cond37
  %n.0.lcssa = phi i32 [ %n.0, %for.cond37 ], !dbg !3884
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3814, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3814, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3814, metadata !DIExpression()), !dbg !3825
  %conv59 = sext i32 %n.0.lcssa to i64, !dbg !3898
  %mul = shl nsw i64 %conv59, 3, !dbg !3899
  %call = tail call i8* @ira_allocate(i64 %mul) #6, !dbg !3900
  %deps = getelementptr inbounds %struct.move, %struct.move* %move.1, i64 0, i32 5, !dbg !3901
  %20 = bitcast %struct.move*** %deps to i8**, !dbg !3902
  store i8* %call, i8** %20, align 8, !dbg !3902
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3814, metadata !DIExpression()), !dbg !3825
  %21 = load i32, i32* @curr_tick, align 4, !dbg !3903
  %22 = sext i32 %10 to i64, !dbg !3907
  %wide.trip.count18 = zext i8 %12 to i64, !dbg !3908
  br label %for.cond60, !dbg !3907

for.cond60:                                       ; preds = %for.inc87, %for.end58
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc87 ], [ 0, %for.end58 ], !dbg !3909
  %n.2 = phi i32 [ %n.3, %for.inc87 ], [ 0, %for.end58 ], !dbg !3909
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !3813, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %n.2, metadata !3814, metadata !DIExpression()), !dbg !3825
  %exitcond19 = icmp eq i64 %indvars.iv15, %wide.trip.count18, !dbg !3908
  br i1 %exitcond19, label %for.end89, label %for.body63, !dbg !3910

for.body63:                                       ; preds = %for.cond60
  %23 = add nsw i64 %indvars.iv15, %22, !dbg !3911
  %arrayidx66 = getelementptr inbounds [53 x i32], [53 x i32]* @hard_regno_last_set_check, i64 0, i64 %23, !dbg !3912
  %24 = load i32, i32* %arrayidx66, align 4, !dbg !3912
  %cmp67 = icmp eq i32 %24, %21, !dbg !3913
  br i1 %cmp67, label %land.lhs.true69, label %for.inc87, !dbg !3914

land.lhs.true69:                                  ; preds = %for.body63
  %arrayidx72 = getelementptr inbounds [53 x %struct.move*], [53 x %struct.move*]* @hard_regno_last_set, i64 0, i64 %23, !dbg !3915
  %25 = load %struct.move*, %struct.move** %arrayidx72, align 8, !dbg !3915
  %to73 = getelementptr inbounds %struct.move, %struct.move* %25, i64 0, i32 1, !dbg !3915
  %26 = load %struct.ira_allocno*, %struct.ira_allocno** %to73, align 8, !dbg !3915
  %regno74 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %26, i64 0, i32 1, !dbg !3915
  %27 = load i32, i32* %regno74, align 4, !dbg !3915
  %28 = load i32, i32* %regno50, align 4, !dbg !3916
  %cmp76 = icmp eq i32 %27, %28, !dbg !3917
  br i1 %cmp76, label %for.inc87, label %if.then78, !dbg !3918

if.then78:                                        ; preds = %land.lhs.true69
  %29 = ptrtoint %struct.move* %25 to i64, !dbg !3918
  %30 = load %struct.move**, %struct.move*** %deps, align 8, !dbg !3919
  %inc83 = add nsw i32 %n.2, 1, !dbg !3920
  call void @llvm.dbg.value(metadata i32 %inc83, metadata !3814, metadata !DIExpression()), !dbg !3825
  %idxprom84 = sext i32 %n.2 to i64, !dbg !3921
  %arrayidx85 = getelementptr inbounds %struct.move*, %struct.move** %30, i64 %idxprom84, !dbg !3921
  %31 = bitcast %struct.move** %arrayidx85 to i64*, !dbg !3922
  store i64 %29, i64* %31, align 8, !dbg !3922
  br label %for.inc87, !dbg !3921

for.inc87:                                        ; preds = %land.lhs.true69, %for.body63, %if.then78
  %n.3 = phi i32 [ %inc83, %if.then78 ], [ %n.2, %land.lhs.true69 ], [ %n.2, %for.body63 ], !dbg !3909
  call void @llvm.dbg.value(metadata i32 %n.3, metadata !3814, metadata !DIExpression()), !dbg !3825
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !3923
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3825
  br label %for.cond60, !dbg !3924, !llvm.loop !3925

for.end89:                                        ; preds = %for.cond60
  %n.2.lcssa = phi i32 [ %n.2, %for.cond60 ], !dbg !3909
  call void @llvm.dbg.value(metadata i32 %n.2.lcssa, metadata !3814, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %n.2.lcssa, metadata !3814, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %n.2.lcssa, metadata !3814, metadata !DIExpression()), !dbg !3825
  %deps_num = getelementptr inbounds %struct.move, %struct.move* %move.1, i64 0, i32 4, !dbg !3927
  store i32 %n.2.lcssa, i32* %deps_num, align 4, !dbg !3928
  br label %for.inc91, !dbg !3929

for.inc91:                                        ; preds = %for.body24, %for.end89
  %32 = phi i32 [ %8, %for.body24 ], [ %21, %for.end89 ]
  %next92 = getelementptr inbounds %struct.move, %struct.move* %move.1, i64 0, i32 2, !dbg !3930
  %33 = load %struct.move*, %struct.move** %next92, align 8, !dbg !3930
  call void @llvm.dbg.value(metadata %struct.move* %33, metadata !3820, metadata !DIExpression()), !dbg !3825
  br label %for.cond21, !dbg !3931, !llvm.loop !3932

for.end93:                                        ; preds = %for.cond21
  %34 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !3934
  %base = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %34, i64 0, i32 0, !dbg !3934
  tail call fastcc void @VEC_move_t_base_truncate(%struct.VEC_move_t_base* %base, i32 0) #7, !dbg !3934
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !3820, metadata !DIExpression()), !dbg !3825
  br label %for.cond94, !dbg !3935

for.cond94:                                       ; preds = %for.body97, %for.end93
  %move.2 = phi %struct.move* [ %list, %for.end93 ], [ %35, %for.body97 ], !dbg !3937
  call void @llvm.dbg.value(metadata %struct.move* %move.2, metadata !3820, metadata !DIExpression()), !dbg !3825
  %cmp95 = icmp eq %struct.move* %move.2, null, !dbg !3938
  br i1 %cmp95, label %for.end100, label %for.body97, !dbg !3940

for.body97:                                       ; preds = %for.cond94
  tail call fastcc void @traverse_moves(%struct.move* nonnull %move.2) #7, !dbg !3941
  %next99 = getelementptr inbounds %struct.move, %struct.move* %move.2, i64 0, i32 2, !dbg !3942
  %35 = load %struct.move*, %struct.move** %next99, align 8, !dbg !3942
  call void @llvm.dbg.value(metadata %struct.move* %35, metadata !3820, metadata !DIExpression()), !dbg !3825
  br label %for.cond94, !dbg !3943, !llvm.loop !3944

for.end100:                                       ; preds = %for.cond94
  call void @llvm.dbg.value(metadata %struct.move* null, metadata !3824, metadata !DIExpression()), !dbg !3825
  %36 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !3946
  %base103 = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %36, i64 0, i32 0, !dbg !3946
  %call107 = tail call fastcc i32 @VEC_move_t_base_length(%struct.VEC_move_t_base* %base103) #7, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %call107, metadata !3813, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3825
  br label %for.cond108, !dbg !3948

for.cond108:                                      ; preds = %for.inc125, %for.end100
  %last.0 = phi %struct.move* [ null, %for.end100 ], [ %call118, %for.inc125 ], !dbg !3825
  %i.3.in = phi i32 [ %call107, %for.end100 ], [ %i.3, %for.inc125 ]
  %i.3 = add nsw i32 %i.3.in, -1, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !3813, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata %struct.move* %last.0, metadata !3824, metadata !DIExpression()), !dbg !3825
  %cmp109 = icmp sgt i32 %i.3.in, 0, !dbg !3950
  %37 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !3825
  %base114 = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %37, i64 0, i32 0, !dbg !3825
  br i1 %cmp109, label %cond.end116, label %cond.end131, !dbg !3952

cond.end116:                                      ; preds = %for.cond108
  %call118 = tail call fastcc %struct.move* @VEC_move_t_base_index(%struct.VEC_move_t_base* %base114, i32 %i.3) #7, !dbg !3953
  call void @llvm.dbg.value(metadata %struct.move* %call118, metadata !3820, metadata !DIExpression()), !dbg !3825
  %next119 = getelementptr inbounds %struct.move, %struct.move* %call118, i64 0, i32 2, !dbg !3955
  store %struct.move* null, %struct.move** %next119, align 8, !dbg !3956
  %cmp120 = icmp eq %struct.move* %last.0, null, !dbg !3957
  br i1 %cmp120, label %for.inc125, label %if.then122, !dbg !3959

if.then122:                                       ; preds = %cond.end116
  %next123 = getelementptr inbounds %struct.move, %struct.move* %last.0, i64 0, i32 2, !dbg !3960
  store %struct.move* %call118, %struct.move** %next123, align 8, !dbg !3961
  br label %for.inc125, !dbg !3962

for.inc125:                                       ; preds = %cond.end116, %if.then122
  call void @llvm.dbg.value(metadata %struct.move* %call118, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !3813, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3825
  br label %for.cond108, !dbg !3963, !llvm.loop !3964

cond.end131:                                      ; preds = %for.cond108
  %last.0.lcssa = phi %struct.move* [ %last.0, %for.cond108 ], !dbg !3825
  %base114.lcssa = phi %struct.VEC_move_t_base* [ %base114, %for.cond108 ], !dbg !3825
  call void @llvm.dbg.value(metadata %struct.move* %last.0.lcssa, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata %struct.move* %last.0.lcssa, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata %struct.move* %last.0.lcssa, metadata !3824, metadata !DIExpression()), !dbg !3825
  %call133 = tail call fastcc %struct.move* @VEC_move_t_base_last(%struct.VEC_move_t_base* %base114.lcssa) #7, !dbg !3966
  call void @llvm.dbg.value(metadata %struct.move* %call133, metadata !3823, metadata !DIExpression()), !dbg !3825
  %38 = load i32, i32* @curr_tick, align 4, !dbg !3967
  %inc134 = add nsw i32 %38, 1, !dbg !3967
  store i32 %inc134, i32* @curr_tick, align 4, !dbg !3967
  %39 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !3968
  %base137 = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %39, i64 0, i32 0, !dbg !3968
  tail call fastcc void @VEC_move_t_base_truncate(%struct.VEC_move_t_base* %base137, i32 0) #7, !dbg !3968
  call void @llvm.dbg.value(metadata %struct.move* %call133, metadata !3820, metadata !DIExpression()), !dbg !3825
  br label %for.cond141, !dbg !3969

for.cond141:                                      ; preds = %for.inc236, %cond.end131
  %move.3 = phi %struct.move* [ %call133, %cond.end131 ], [ %74, %for.inc236 ], !dbg !3971
  call void @llvm.dbg.value(metadata %struct.move* %move.3, metadata !3820, metadata !DIExpression()), !dbg !3825
  %cmp142 = icmp eq %struct.move* %move.3, null, !dbg !3972
  br i1 %cmp142, label %for.end238, label %for.body144, !dbg !3974

for.body144:                                      ; preds = %for.cond141
  %from145 = getelementptr inbounds %struct.move, %struct.move* %move.3, i64 0, i32 0, !dbg !3975
  %40 = load %struct.ira_allocno*, %struct.ira_allocno** %from145, align 8, !dbg !3975
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %40, metadata !3818, metadata !DIExpression()), !dbg !3825
  %to146 = getelementptr inbounds %struct.move, %struct.move* %move.3, i64 0, i32 1, !dbg !3977
  %41 = load %struct.ira_allocno*, %struct.ira_allocno** %to146, align 8, !dbg !3977
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %41, metadata !3817, metadata !DIExpression()), !dbg !3825
  %hard_regno147 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %40, i64 0, i32 3, !dbg !3978
  %42 = load i32, i32* %hard_regno147, align 4, !dbg !3978
  call void @llvm.dbg.value(metadata i32 %42, metadata !3816, metadata !DIExpression()), !dbg !3825
  %cmp148 = icmp sgt i32 %42, -1, !dbg !3980
  br i1 %cmp148, label %if.then150, label %if.end211, !dbg !3981

if.then150:                                       ; preds = %for.body144
  %idxprom151 = sext i32 %42 to i64, !dbg !3982
  %mode153 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %40, i64 0, i32 2, !dbg !3984
  %43 = load i32, i32* %mode153, align 8, !dbg !3984
  %idxprom154 = zext i32 %43 to i64, !dbg !3982
  %arrayidx155 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom151, i64 %idxprom154, !dbg !3982
  %44 = load i8, i8* %arrayidx155, align 1, !dbg !3982
  call void @llvm.dbg.value(metadata i8 %44, metadata !3815, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3825
  %45 = sext i32 %42 to i64, !dbg !3985
  %wide.trip.count = zext i8 %44 to i64, !dbg !3987
  br label %for.cond157, !dbg !3985

for.cond157:                                      ; preds = %for.inc208, %if.then150
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc208 ], [ 0, %if.then150 ], !dbg !3989
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3813, metadata !DIExpression()), !dbg !3825
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3987
  br i1 %exitcond, label %if.end211.loopexit, label %for.body160, !dbg !3990

for.body160:                                      ; preds = %for.cond157
  %46 = add nsw i64 %indvars.iv, %45, !dbg !3991
  %arrayidx163 = getelementptr inbounds [53 x i32], [53 x i32]* @hard_regno_last_set_check, i64 0, i64 %46, !dbg !3993
  %47 = load i32, i32* %arrayidx163, align 4, !dbg !3993
  %48 = load i32, i32* @curr_tick, align 4, !dbg !3994
  %cmp164 = icmp eq i32 %47, %48, !dbg !3995
  br i1 %cmp164, label %land.lhs.true166, label %for.inc208, !dbg !3996

land.lhs.true166:                                 ; preds = %for.body160
  %arrayidx169 = getelementptr inbounds [53 x %struct.move*], [53 x %struct.move*]* @hard_regno_last_set, i64 0, i64 %46, !dbg !3997
  %49 = load %struct.move*, %struct.move** %arrayidx169, align 8, !dbg !3997
  %to170 = getelementptr inbounds %struct.move, %struct.move* %49, i64 0, i32 1, !dbg !3997
  %50 = load %struct.ira_allocno*, %struct.ira_allocno** %to170, align 8, !dbg !3997
  %hard_regno171 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %50, i64 0, i32 3, !dbg !3997
  %51 = load i32, i32* %hard_regno171, align 4, !dbg !3997
  %cmp172 = icmp sgt i32 %51, -1, !dbg !3998
  br i1 %cmp172, label %if.then174, label %for.inc208, !dbg !3999

if.then174:                                       ; preds = %land.lhs.true166
  call void @llvm.dbg.value(metadata %struct.move* %49, metadata !3822, metadata !DIExpression()), !dbg !3825
  %regno179 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %50, i64 0, i32 1, !dbg !4000
  %52 = load i32, i32* %regno179, align 4, !dbg !4000
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %50, i64 0, i32 6, !dbg !4002
  %53 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !4002
  %call181 = tail call %struct.ira_allocno* @ira_create_allocno(i32 %52, i8 zeroext 0, %struct.ira_loop_tree_node* %53) #6, !dbg !4003
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %call181, metadata !3819, metadata !DIExpression()), !dbg !3825
  %54 = load %struct.ira_allocno*, %struct.ira_allocno** %to170, align 8, !dbg !4004
  %mode183 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %54, i64 0, i32 2, !dbg !4004
  %55 = load i32, i32* %mode183, align 8, !dbg !4004
  %mode184 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 2, !dbg !4005
  store i32 %55, i32* %mode184, align 8, !dbg !4006
  %56 = load %struct.ira_allocno*, %struct.ira_allocno** %to170, align 8, !dbg !4007
  %cover_class = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %56, i64 0, i32 9, !dbg !4007
  %57 = load i32, i32* %cover_class, align 8, !dbg !4007
  tail call void @ira_set_allocno_cover_class(%struct.ira_allocno* %call181, i32 %57) #6, !dbg !4008
  %assigned_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 31, !dbg !4009
  %bf.load = load i16, i16* %assigned_p, align 4, !dbg !4010
  %bf.set = or i16 %bf.load, 256, !dbg !4010
  store i16 %bf.set, i16* %assigned_p, align 4, !dbg !4010
  %hard_regno186 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 3, !dbg !4011
  store i32 -1, i32* %hard_regno186, align 4, !dbg !4012
  %58 = load %struct.ira_allocno*, %struct.ira_allocno** %to170, align 8, !dbg !4013
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %58, i64 0, i32 4, !dbg !4013
  %59 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4013
  %call188 = tail call fastcc %struct.rtx_def* @create_new_reg(%struct.rtx_def* %59) #7, !dbg !4014
  %reg189 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 4, !dbg !4015
  store %struct.rtx_def* %call188, %struct.rtx_def** %reg189, align 8, !dbg !4016
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 0, !dbg !4017
  %60 = load i32, i32* %num, align 8, !dbg !4017
  %conflict_id = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 24, !dbg !4018
  store i32 %60, i32* %conflict_id, align 8, !dbg !4019
  %min = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 21, !dbg !4020
  store i32 0, i32* %min, align 8, !dbg !4021
  %61 = load i32, i32* @ira_allocnos_num, align 4, !dbg !4022
  %sub190 = add nsw i32 %61, -1, !dbg !4023
  %max = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %call181, i64 0, i32 22, !dbg !4024
  store i32 %sub190, i32* %max, align 4, !dbg !4025
  %62 = load %struct.ira_allocno*, %struct.ira_allocno** %to170, align 8, !dbg !4026
  %call192 = tail call fastcc %struct.move* @create_move(%struct.ira_allocno* %62, %struct.ira_allocno* %call181) #7, !dbg !4027
  call void @llvm.dbg.value(metadata %struct.move* %call192, metadata !3821, metadata !DIExpression()), !dbg !3825
  store %struct.ira_allocno* %call181, %struct.ira_allocno** %to170, align 8, !dbg !4028
  %call194 = tail call fastcc %struct.move** @VEC_move_t_heap_safe_push(%struct.VEC_move_t_heap** nonnull @move_vec, %struct.move* %call192) #7, !dbg !4029
  %63 = load i32, i32* @ira_move_loops_num, align 4, !dbg !4030
  %inc195 = add nsw i32 %63, 1, !dbg !4030
  store i32 %inc195, i32* @ira_move_loops_num, align 4, !dbg !4030
  %64 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !4031
  %cmp196 = icmp sgt i32 %64, 2, !dbg !4033
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !4034
  %cmp199 = icmp ne %struct._IO_FILE* %65, null, !dbg !4035
  %or.cond = and i1 %cmp196, %cmp199, !dbg !4036
  br i1 %or.cond, label %if.then201, label %for.inc208, !dbg !4036

if.then201:                                       ; preds = %if.then174
  %66 = load i32, i32* %num, align 8, !dbg !4037
  %67 = load %struct.rtx_def*, %struct.rtx_def** %reg189, align 8, !dbg !4038
  %call204 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %67) #7, !dbg !4038
  %call205 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %66, i32 %call204) #6, !dbg !4039
  br label %for.inc208, !dbg !4039

for.inc208:                                       ; preds = %for.body160, %land.lhs.true166, %if.then201, %if.then174
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4040
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3825
  br label %for.cond157, !dbg !4041, !llvm.loop !4042

if.end211.loopexit:                               ; preds = %for.cond157
  br label %if.end211, !dbg !4044

if.end211:                                        ; preds = %if.end211.loopexit, %for.body144
  %hard_regno212 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %41, i64 0, i32 3, !dbg !4044
  %68 = load i32, i32* %hard_regno212, align 4, !dbg !4044
  call void @llvm.dbg.value(metadata i32 %68, metadata !3816, metadata !DIExpression()), !dbg !3825
  %cmp213 = icmp slt i32 %68, 0, !dbg !4046
  br i1 %cmp213, label %for.inc236, label %if.end216, !dbg !4047

if.end216:                                        ; preds = %if.end211
  %idxprom217 = sext i32 %68 to i64, !dbg !4048
  %mode219 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %41, i64 0, i32 2, !dbg !4049
  %69 = load i32, i32* %mode219, align 8, !dbg !4049
  %idxprom220 = zext i32 %69 to i64, !dbg !4048
  %arrayidx221 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom217, i64 %idxprom220, !dbg !4048
  %70 = load i8, i8* %arrayidx221, align 1, !dbg !4048
  call void @llvm.dbg.value(metadata i8 %70, metadata !3815, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3825
  %71 = load i32, i32* @curr_tick, align 4, !dbg !4050
  %72 = sext i32 %68 to i64, !dbg !4054
  %wide.trip.count8 = zext i8 %70 to i64, !dbg !4055
  br label %for.cond223, !dbg !4054

for.cond223:                                      ; preds = %for.body226, %if.end216
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.body226 ], [ 0, %if.end216 ], !dbg !4056
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3813, metadata !DIExpression()), !dbg !3825
  %exitcond9 = icmp eq i64 %indvars.iv5, %wide.trip.count8, !dbg !4055
  br i1 %exitcond9, label %for.inc236.loopexit, label %for.body226, !dbg !4057

for.body226:                                      ; preds = %for.cond223
  %73 = add nsw i64 %indvars.iv5, %72, !dbg !4058
  %arrayidx229 = getelementptr inbounds [53 x %struct.move*], [53 x %struct.move*]* @hard_regno_last_set, i64 0, i64 %73, !dbg !4059
  store %struct.move* %move.3, %struct.move** %arrayidx229, align 8, !dbg !4060
  %arrayidx232 = getelementptr inbounds [53 x i32], [53 x i32]* @hard_regno_last_set_check, i64 0, i64 %73, !dbg !4061
  store i32 %71, i32* %arrayidx232, align 4, !dbg !4062
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !4063
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3825
  br label %for.cond223, !dbg !4064, !llvm.loop !4065

for.inc236.loopexit:                              ; preds = %for.cond223
  br label %for.inc236, !dbg !4067

for.inc236:                                       ; preds = %for.inc236.loopexit, %if.end211
  %next237 = getelementptr inbounds %struct.move, %struct.move* %move.3, i64 0, i32 2, !dbg !4067
  %74 = load %struct.move*, %struct.move** %next237, align 8, !dbg !4067
  call void @llvm.dbg.value(metadata %struct.move* %74, metadata !3820, metadata !DIExpression()), !dbg !3825
  br label %for.cond141, !dbg !4068, !llvm.loop !4069

for.end238:                                       ; preds = %for.cond141
  %75 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !4071
  %base241 = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %75, i64 0, i32 0, !dbg !4071
  %call245 = tail call fastcc i32 @VEC_move_t_base_length(%struct.VEC_move_t_base* %base241) #7, !dbg !4071
  call void @llvm.dbg.value(metadata i32 %call245, metadata !3813, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3825
  br label %for.cond247, !dbg !4073

for.cond247:                                      ; preds = %for.body250, %for.end238
  %last.1 = phi %struct.move* [ %last.0.lcssa, %for.end238 ], [ %call257, %for.body250 ], !dbg !3825
  %i.6.in = phi i32 [ %call245, %for.end238 ], [ %i.6, %for.body250 ]
  %i.6 = add nsw i32 %i.6.in, -1, !dbg !4074
  call void @llvm.dbg.value(metadata i32 %i.6, metadata !3813, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata %struct.move* %last.1, metadata !3824, metadata !DIExpression()), !dbg !3825
  %cmp248 = icmp sgt i32 %i.6.in, 0, !dbg !4075
  br i1 %cmp248, label %for.body250, label %cleanup.loopexit, !dbg !4077

for.body250:                                      ; preds = %for.cond247
  %76 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !4078
  %base253 = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %76, i64 0, i32 0, !dbg !4078
  %call257 = tail call fastcc %struct.move* @VEC_move_t_base_index(%struct.VEC_move_t_base* %base253, i32 %i.6) #7, !dbg !4078
  call void @llvm.dbg.value(metadata %struct.move* %call257, metadata !3820, metadata !DIExpression()), !dbg !3825
  %next258 = getelementptr inbounds %struct.move, %struct.move* %call257, i64 0, i32 2, !dbg !4080
  store %struct.move* null, %struct.move** %next258, align 8, !dbg !4081
  %next259 = getelementptr inbounds %struct.move, %struct.move* %last.1, i64 0, i32 2, !dbg !4082
  store %struct.move* %call257, %struct.move** %next259, align 8, !dbg !4083
  call void @llvm.dbg.value(metadata %struct.move* %call257, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %i.6, metadata !3813, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3825
  br label %for.cond247, !dbg !4084, !llvm.loop !4085

cleanup.loopexit:                                 ; preds = %for.cond247
  br label %cleanup, !dbg !4087

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi %struct.move* [ null, %entry ], [ %call133, %cleanup.loopexit ], !dbg !3825
  ret %struct.move* %retval.0, !dbg !4087
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @emit_move_list(%struct.move* %list, i32 %freq) unnamed_addr #4 !dbg !4088 {
entry:
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !4092, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i32 %freq, metadata !4093, metadata !DIExpression()), !dbg !4099
  tail call void @start_sequence() #6, !dbg !4100
  br label %for.cond, !dbg !4101

for.cond:                                         ; preds = %if.end49, %entry
  %list.addr.0 = phi %struct.move* [ %list, %entry ], [ %18, %if.end49 ]
  call void @llvm.dbg.value(metadata %struct.move* %list.addr.0, metadata !4092, metadata !DIExpression()), !dbg !4099
  %cmp = icmp eq %struct.move* %list.addr.0, null, !dbg !4102
  br i1 %cmp, label %for.end52, label %for.body, !dbg !4105

for.body:                                         ; preds = %for.cond
  tail call void @start_sequence() #6, !dbg !4106
  %to = getelementptr inbounds %struct.move, %struct.move* %list.addr.0, i64 0, i32 1, !dbg !4108
  %0 = load %struct.ira_allocno*, %struct.ira_allocno** %to, align 8, !dbg !4108
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %0, i64 0, i32 4, !dbg !4108
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4108
  %from = getelementptr inbounds %struct.move, %struct.move* %list.addr.0, i64 0, i32 0, !dbg !4109
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %from, align 8, !dbg !4109
  %reg1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 4, !dbg !4109
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8, !dbg !4109
  %call = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1, %struct.rtx_def* %3) #6, !dbg !4110
  %call2 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4111
  %insn3 = getelementptr inbounds %struct.move, %struct.move* %list.addr.0, i64 0, i32 6, !dbg !4112
  store %struct.rtx_def* %call2, %struct.rtx_def** %insn3, align 8, !dbg !4113
  tail call void @end_sequence() #6, !dbg !4114
  br label %for.cond5, !dbg !4115

for.cond5:                                        ; preds = %for.body7, %for.body
  %insn.0.in = phi %struct.rtx_def** [ %insn3, %for.body ], [ %rt_rtx, %for.body7 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4117
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4096, metadata !DIExpression()), !dbg !4099
  %cmp6 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4118
  br i1 %cmp6, label %for.end, label %for.body7, !dbg !4120

for.body7:                                        ; preds = %for.cond5
  %call8 = tail call fastcc i32 @recog_memoized(%struct.rtx_def* nonnull %insn.0) #7, !dbg !4121
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4122
  %rt_rtx = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !4122
  br label %for.cond5, !dbg !4123, !llvm.loop !4124

for.end:                                          ; preds = %for.cond5
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn3, align 8, !dbg !4126
  %call10 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %5) #6, !dbg !4127
  %6 = load %struct.ira_allocno*, %struct.ira_allocno** %to, align 8, !dbg !4128
  %mode12 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %6, i64 0, i32 2, !dbg !4128
  %7 = load i32, i32* %mode12, align 8, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %7, metadata !4097, metadata !DIExpression()), !dbg !4099
  %cover_class14 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %6, i64 0, i32 9, !dbg !4129
  %8 = load i32, i32* %cover_class14, align 8, !dbg !4129
  call void @llvm.dbg.value(metadata i32 %8, metadata !4098, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()), !dbg !4099
  %hard_regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %6, i64 0, i32 3, !dbg !4130
  %9 = load i32, i32* %hard_regno, align 4, !dbg !4130
  %cmp16 = icmp slt i32 %9, 0, !dbg !4132
  %10 = load %struct.ira_allocno*, %struct.ira_allocno** %from, align 8, !dbg !4133
  %hard_regno18 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %10, i64 0, i32 3, !dbg !4133
  %11 = load i32, i32* %hard_regno18, align 4, !dbg !4133
  br i1 %cmp16, label %if.then, label %if.else, !dbg !4134

if.then:                                          ; preds = %for.end
  %cmp19 = icmp sgt i32 %11, -1, !dbg !4135
  br i1 %cmp19, label %if.then20, label %if.end49, !dbg !4138

if.then20:                                        ; preds = %if.then
  %idxprom = zext i32 %7 to i64, !dbg !4139
  %idxprom22 = zext i32 %8 to i64, !dbg !4139
  %arrayidx24 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom, i64 %idxprom22, i64 0, !dbg !4139
  %12 = load i16, i16* %arrayidx24, align 4, !dbg !4139
  %conv = sext i16 %12 to i32, !dbg !4139
  %mul = mul nsw i32 %conv, %freq, !dbg !4141
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4094, metadata !DIExpression()), !dbg !4099
  %13 = load i32, i32* @ira_store_cost, align 4, !dbg !4142
  %add = add nsw i32 %13, %mul, !dbg !4142
  store i32 %add, i32* @ira_store_cost, align 4, !dbg !4142
  br label %if.end49, !dbg !4143

if.else:                                          ; preds = %for.end
  %cmp27 = icmp slt i32 %11, 0, !dbg !4144
  br i1 %cmp27, label %if.then29, label %if.else44, !dbg !4146

if.then29:                                        ; preds = %if.else
  %cmp32 = icmp sgt i32 %9, -1, !dbg !4147
  br i1 %cmp32, label %if.then34, label %if.end49, !dbg !4150

if.then34:                                        ; preds = %if.then29
  %idxprom35 = zext i32 %7 to i64, !dbg !4151
  %idxprom37 = zext i32 %8 to i64, !dbg !4151
  %arrayidx39 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom35, i64 %idxprom37, i64 0, !dbg !4151
  %14 = load i16, i16* %arrayidx39, align 4, !dbg !4151
  %conv40 = sext i16 %14 to i32, !dbg !4151
  %mul41 = mul nsw i32 %conv40, %freq, !dbg !4153
  call void @llvm.dbg.value(metadata i32 %mul41, metadata !4094, metadata !DIExpression()), !dbg !4099
  %15 = load i32, i32* @ira_load_cost, align 4, !dbg !4154
  %add42 = add nsw i32 %15, %mul41, !dbg !4154
  store i32 %add42, i32* @ira_load_cost, align 4, !dbg !4154
  br label %if.end49, !dbg !4155

if.else44:                                        ; preds = %if.else
  %call45 = tail call fastcc i32 @ira_get_register_move_cost(i32 %7, i32 %8, i32 %8) #7, !dbg !4156
  %mul46 = mul nsw i32 %call45, %freq, !dbg !4158
  call void @llvm.dbg.value(metadata i32 %mul46, metadata !4094, metadata !DIExpression()), !dbg !4099
  %16 = load i32, i32* @ira_shuffle_cost, align 4, !dbg !4159
  %add47 = add nsw i32 %16, %mul46, !dbg !4159
  store i32 %add47, i32* @ira_shuffle_cost, align 4, !dbg !4159
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then34, %if.then29, %if.then, %if.then20
  %cost.3 = phi i32 [ %mul, %if.then20 ], [ 0, %if.then ], [ %mul46, %if.else44 ], [ %mul41, %if.then34 ], [ 0, %if.then29 ], !dbg !4133
  call void @llvm.dbg.value(metadata i32 %cost.3, metadata !4094, metadata !DIExpression()), !dbg !4099
  %17 = load i32, i32* @ira_overall_cost, align 4, !dbg !4160
  %add50 = add nsw i32 %17, %cost.3, !dbg !4160
  store i32 %add50, i32* @ira_overall_cost, align 4, !dbg !4160
  %next = getelementptr inbounds %struct.move, %struct.move* %list.addr.0, i64 0, i32 2, !dbg !4161
  %18 = load %struct.move*, %struct.move** %next, align 8, !dbg !4161
  call void @llvm.dbg.value(metadata %struct.move* %18, metadata !4092, metadata !DIExpression()), !dbg !4099
  br label %for.cond, !dbg !4162, !llvm.loop !4163

for.end52:                                        ; preds = %for.cond
  %call53 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4165
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call53, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @end_sequence() #6, !dbg !4166
  ret %struct.rtx_def* %call53, !dbg !4167
}

declare dso_local %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_last_insn() local_unnamed_addr #1

declare dso_local void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_move_t_base_truncate(%struct.VEC_move_t_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !4168 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_base* %vec_, metadata !4173, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i32 0, metadata !4174, metadata !DIExpression()), !dbg !4175
  %tobool = icmp eq %struct.VEC_move_t_base* %vec_, null, !dbg !4176
  br label %cond.true, !dbg !4176

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4176

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !4176

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !4176

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 0, !dbg !4177
  store i32 0, i32* %num3, align 8, !dbg !4177
  br label %if.end, !dbg !4177

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !4176
}

; Function Attrs: nounwind uwtable
define internal fastcc void @traverse_moves(%struct.move* %move) unnamed_addr #4 !dbg !4179 {
entry:
  call void @llvm.dbg.value(metadata %struct.move* %move, metadata !4181, metadata !DIExpression()), !dbg !4183
  %visited_p = getelementptr inbounds %struct.move, %struct.move* %move, i64 0, i32 3, !dbg !4184
  %0 = load i8, i8* %visited_p, align 8, !dbg !4184
  %tobool = icmp eq i8 %0, 0, !dbg !4186
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !4187

if.end:                                           ; preds = %entry
  store i8 1, i8* %visited_p, align 8, !dbg !4188
  %deps_num = getelementptr inbounds %struct.move, %struct.move* %move, i64 0, i32 4, !dbg !4189
  %1 = load i32, i32* %deps_num, align 4, !dbg !4189
  call void @llvm.dbg.value(metadata i32 %1, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4183
  %deps = getelementptr inbounds %struct.move, %struct.move* %move, i64 0, i32 5, !dbg !4191
  %2 = sext i32 %1 to i64, !dbg !4193
  br label %for.cond, !dbg !4193

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %2, %if.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4194
  call void @llvm.dbg.value(metadata i32 undef, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4183
  %cmp = icmp sgt i64 %indvars.iv, 0, !dbg !4195
  br i1 %cmp, label %for.body, label %for.end, !dbg !4196

for.body:                                         ; preds = %for.cond
  %3 = load %struct.move**, %struct.move*** %deps, align 8, !dbg !4197
  %arrayidx = getelementptr inbounds %struct.move*, %struct.move** %3, i64 %indvars.iv.next, !dbg !4198
  %4 = load %struct.move*, %struct.move** %arrayidx, align 8, !dbg !4198
  tail call fastcc void @traverse_moves(%struct.move* %4) #7, !dbg !4199
  call void @llvm.dbg.value(metadata i32 undef, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4183
  br label %for.cond, !dbg !4200, !llvm.loop !4201

for.end:                                          ; preds = %for.cond
  %call = tail call fastcc %struct.move** @VEC_move_t_heap_safe_push(%struct.VEC_move_t_heap** nonnull @move_vec, %struct.move* %move) #7, !dbg !4203
  br label %cleanup.cont, !dbg !4204

cleanup.cont:                                     ; preds = %entry, %for.end
  ret void, !dbg !4204
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_move_t_base_length(%struct.VEC_move_t_base* %vec_) unnamed_addr #0 !dbg !4205 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_base* %vec_, metadata !4211, metadata !DIExpression()), !dbg !4212
  %tobool = icmp eq %struct.VEC_move_t_base* %vec_, null, !dbg !4213
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4213

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 0, !dbg !4213
  %0 = load i32, i32* %num, align 8, !dbg !4213
  br label %cond.end, !dbg !4213

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4213
  ret i32 %cond, !dbg !4213
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.move* @VEC_move_t_base_index(%struct.VEC_move_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4214 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_base* %vec_, metadata !4218, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4219, metadata !DIExpression()), !dbg !4220
  br label %land.end, !dbg !4221

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4221
  %arrayidx = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4221
  %0 = load %struct.move*, %struct.move** %arrayidx, align 8, !dbg !4221
  ret %struct.move* %0, !dbg !4221
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.move* @VEC_move_t_base_last(%struct.VEC_move_t_base* %vec_) unnamed_addr #0 !dbg !4222 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_base* %vec_, metadata !4226, metadata !DIExpression()), !dbg !4227
  br label %land.end, !dbg !4228

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %num2 = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 0, !dbg !4228
  %0 = load i32, i32* %num2, align 8, !dbg !4228
  %sub = add i32 %0, -1, !dbg !4228
  %idxprom = zext i32 %sub to i64, !dbg !4228
  %arrayidx = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4228
  %1 = load %struct.move*, %struct.move** %arrayidx, align 8, !dbg !4228
  ret %struct.move* %1, !dbg !4228
}

declare dso_local %struct.ira_allocno* @ira_create_allocno(i32, i8 zeroext, %struct.ira_loop_tree_node*) local_unnamed_addr #1

declare dso_local void @ira_set_allocno_cover_class(%struct.ira_allocno*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.move** @VEC_move_t_heap_safe_push(%struct.VEC_move_t_heap** %vec_, %struct.move* %obj_) unnamed_addr #0 !dbg !4229 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_heap** @move_vec, metadata !4233, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata %struct.move* %obj_, metadata !4234, metadata !DIExpression()), !dbg !4235
  %call = tail call fastcc i32 @VEC_move_t_heap_reserve(%struct.VEC_move_t_heap** nonnull @move_vec, i32 1) #7, !dbg !4236
  %0 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !4236
  %tobool = icmp eq %struct.VEC_move_t_heap* %0, null, !dbg !4236
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4236

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %0, i64 0, i32 0, !dbg !4236
  br label %cond.end, !dbg !4236

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_move_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4236
  %call1 = tail call fastcc %struct.move** @VEC_move_t_base_quick_push(%struct.VEC_move_t_base* %cond, %struct.move* %obj_) #7, !dbg !4236
  ret %struct.move** %call1, !dbg !4236
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_move_t_heap_reserve(%struct.VEC_move_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4237 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_heap** @move_vec, metadata !4241, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i32 1, metadata !4242, metadata !DIExpression()), !dbg !4244
  %0 = load %struct.VEC_move_t_heap*, %struct.VEC_move_t_heap** @move_vec, align 8, !dbg !4245
  %tobool = icmp eq %struct.VEC_move_t_heap* %0, null, !dbg !4245
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4245

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_move_t_heap, %struct.VEC_move_t_heap* %0, i64 0, i32 0, !dbg !4245
  br label %cond.end, !dbg !4245

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_move_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4245
  %call = tail call fastcc i32 @VEC_move_t_base_space(%struct.VEC_move_t_base* %cond, i32 1) #7, !dbg !4245
  %tobool1 = icmp eq i32 %call, 0, !dbg !4245
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4245
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4243, metadata !DIExpression()), !dbg !4244
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4245

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_move_t_heap** @move_vec to i8**), align 8, !dbg !4246
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !4246
  store i8* %call3, i8** bitcast (%struct.VEC_move_t_heap** @move_vec to i8**), align 8, !dbg !4246
  br label %if.end, !dbg !4246

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4245
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.move** @VEC_move_t_base_quick_push(%struct.VEC_move_t_base* %vec_, %struct.move* %obj_) unnamed_addr #0 !dbg !4248 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_base* %vec_, metadata !4252, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata %struct.move* %obj_, metadata !4253, metadata !DIExpression()), !dbg !4255
  %num1 = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 0, !dbg !4256
  %0 = load i32, i32* %num1, align 8, !dbg !4256
  %inc = add i32 %0, 1, !dbg !4256
  store i32 %inc, i32* %num1, align 8, !dbg !4256
  %idxprom = zext i32 %0 to i64, !dbg !4256
  %arrayidx = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4256
  call void @llvm.dbg.value(metadata %struct.move** %arrayidx, metadata !4254, metadata !DIExpression()), !dbg !4255
  store %struct.move* %obj_, %struct.move** %arrayidx, align 8, !dbg !4256
  ret %struct.move** %arrayidx, !dbg !4256
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_move_t_base_space(%struct.VEC_move_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4257 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_move_t_base* %vec_, metadata !4261, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 1, metadata !4262, metadata !DIExpression()), !dbg !4263
  %tobool = icmp eq %struct.VEC_move_t_base* %vec_, null, !dbg !4264
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4264

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 1, !dbg !4264
  %0 = load i32, i32* %alloc, align 4, !dbg !4264
  %num = getelementptr inbounds %struct.VEC_move_t_base, %struct.VEC_move_t_base* %vec_, i64 0, i32 0, !dbg !4264
  %1 = load i32, i32* %num, align 8, !dbg !4264
  %cmp1 = icmp ne i32 %0, %1, !dbg !4264
  %phitmp = zext i1 %cmp1 to i32, !dbg !4264
  br label %cond.end, !dbg !4264

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4264

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4264
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

declare dso_local void @start_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local void @end_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 %mode, i32 %from, i32 %to) unnamed_addr #0 !dbg !4265 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4269, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i32 %from, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i32 %to, metadata !4271, metadata !DIExpression()), !dbg !4272
  %idxprom = zext i32 %mode to i64, !dbg !4273
  %arrayidx = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @ira_register_move_cost, i64 0, i64 %idxprom, !dbg !4273
  %0 = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4273
  %cmp = icmp eq [27 x i16]* %0, null, !dbg !4275
  br i1 %cmp, label %if.then, label %if.end, !dbg !4276

if.then:                                          ; preds = %entry
  tail call void @ira_init_register_move_cost(i32 %mode) #6, !dbg !4277
  %.pre = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4278
  br label %if.end, !dbg !4277

if.end:                                           ; preds = %if.then, %entry
  %1 = phi [27 x i16]* [ %.pre, %if.then ], [ %0, %entry ], !dbg !4278
  %idxprom3 = zext i32 %from to i64, !dbg !4278
  %idxprom5 = zext i32 %to to i64, !dbg !4278
  %arrayidx6 = getelementptr inbounds [27 x i16], [27 x i16]* %1, i64 %idxprom3, i64 %idxprom5, !dbg !4278
  %2 = load i16, i16* %arrayidx6, align 2, !dbg !4278
  %conv = zext i16 %2 to i32, !dbg !4278
  ret i32 %conv, !dbg !4279
}

declare dso_local void @ira_init_register_move_cost(i32) local_unnamed_addr #1

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_range_and_copies_from_move_list(%struct.move* %list, %struct.ira_loop_tree_node* %node, %struct.bitmap_head_def* %live_through, i32 %freq) unnamed_addr #4 !dbg !4280 {
entry:
  %regno = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %hard_regs_live = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !4284, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %node, metadata !4285, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %live_through, metadata !4286, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32 %freq, metadata !4287, metadata !DIExpression()), !dbg !4299
  %0 = bitcast i32* %regno to i8*, !dbg !4300
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4300
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4301
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4301
  %2 = bitcast i64* %hard_regs_live to i8*, !dbg !4302
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4302
  %cmp = icmp eq %struct.move* %list, null, !dbg !4303
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4305

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !4289, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32* %regno, metadata !4290, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4297, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %live_through, i32 53, i32* nonnull %regno) #7, !dbg !4306
  br label %for.cond, !dbg !4306

for.cond:                                         ; preds = %for.body, %if.end
  %n.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !4299
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !4289, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32* %regno, metadata !4290, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4297, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !4308
  %tobool = icmp eq i8 %call, 0, !dbg !4306
  br i1 %tobool, label %do.body, label %for.body, !dbg !4306

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %n.0, 1, !dbg !4310
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4289, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32* %regno, metadata !4290, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4297, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !4308
  br label %for.cond, !dbg !4308, !llvm.loop !4311

do.body:                                          ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !4299
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !4289, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !4289, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !4289, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 0, metadata !4298, metadata !DIExpression()), !dbg !4299
  store i64 0, i64* %hard_regs_live, align 8, !dbg !4313
  call void @llvm.dbg.value(metadata i64* %hard_regs_live, metadata !4298, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call void @reg_set_to_hard_reg_set(i64* nonnull %hard_regs_live, %struct.bitmap_head_def* %live_through) #6, !dbg !4313
  %3 = load i32, i32* @ira_max_point, align 4, !dbg !4315
  %inc1 = add nsw i32 %3, 1, !dbg !4315
  store i32 %inc1, i32* @ira_max_point, align 4, !dbg !4315
  call void @llvm.dbg.value(metadata i32 %inc1, metadata !4288, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.move* %list, metadata !4291, metadata !DIExpression()), !dbg !4299
  br label %for.cond2, !dbg !4316

for.cond2:                                        ; preds = %if.end66, %do.body
  %move.0 = phi %struct.move* [ %list, %do.body ], [ %45, %if.end66 ], !dbg !4318
  call void @llvm.dbg.value(metadata %struct.move* %move.0, metadata !4291, metadata !DIExpression()), !dbg !4299
  %cmp3 = icmp eq %struct.move* %move.0, null, !dbg !4319
  br i1 %cmp3, label %for.cond74.preheader, label %for.body4, !dbg !4321

for.cond74.preheader:                             ; preds = %for.cond2
  br label %for.cond74, !dbg !4322

for.body4:                                        ; preds = %for.cond2
  %from5 = getelementptr inbounds %struct.move, %struct.move* %move.0, i64 0, i32 0, !dbg !4324
  %4 = load %struct.ira_allocno*, %struct.ira_allocno** %from5, align 8, !dbg !4324
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %4, metadata !4293, metadata !DIExpression()), !dbg !4299
  %to6 = getelementptr inbounds %struct.move, %struct.move* %move.0, i64 0, i32 1, !dbg !4326
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %to6, align 8, !dbg !4326
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !4292, metadata !DIExpression()), !dbg !4299
  %conflict_allocno_array = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 23, !dbg !4327
  %6 = load i8*, i8** %conflict_allocno_array, align 8, !dbg !4327
  %cmp7 = icmp eq i8* %6, null, !dbg !4329
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !4330

if.then8:                                         ; preds = %for.body4
  %7 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !4331
  %cmp9 = icmp sgt i32 %7, 2, !dbg !4334
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !4335
  %cmp10 = icmp ne %struct._IO_FILE* %8, null, !dbg !4336
  %or.cond = and i1 %cmp9, %cmp10, !dbg !4337
  br i1 %or.cond, label %if.then11, label %if.end14, !dbg !4337

if.then11:                                        ; preds = %if.then8
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 0, !dbg !4338
  %9 = load i32, i32* %num, align 8, !dbg !4338
  %reg = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 4, !dbg !4339
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4339
  %call12 = call fastcc i32 @rhs_regno(%struct.rtx_def* %10) #7, !dbg !4339
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %9, i32 %call12) #6, !dbg !4340
  br label %if.end14, !dbg !4340

if.end14:                                         ; preds = %if.then11, %if.then8
  call void @ira_allocate_allocno_conflicts(%struct.ira_allocno* %5, i32 %n.0.lcssa) #6, !dbg !4341
  br label %if.end15, !dbg !4342

if.end15:                                         ; preds = %if.end14, %for.body4
  %regno16 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 1, !dbg !4343
  %11 = load i32, i32* %regno16, align 4, !dbg !4343
  %call17 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %live_through, i32 %11) #6, !dbg !4344
  %regno18 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 1, !dbg !4345
  %12 = load i32, i32* %regno18, align 4, !dbg !4345
  %call19 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %live_through, i32 %12) #6, !dbg !4346
  %13 = load i64, i64* %hard_regs_live, align 8, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %13, metadata !4298, metadata !DIExpression()), !dbg !4299
  %conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 26, !dbg !4347
  %14 = load i64, i64* %conflict_hard_regs, align 8, !dbg !4347
  %or = or i64 %14, %13, !dbg !4347
  store i64 %or, i64* %conflict_hard_regs, align 8, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %13, metadata !4298, metadata !DIExpression()), !dbg !4299
  %conflict_hard_regs20 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 26, !dbg !4348
  %15 = load i64, i64* %conflict_hard_regs20, align 8, !dbg !4348
  %or21 = or i64 %15, %13, !dbg !4348
  store i64 %or21, i64* %conflict_hard_regs20, align 8, !dbg !4348
  call void @llvm.dbg.value(metadata i64 %13, metadata !4298, metadata !DIExpression()), !dbg !4299
  %total_conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 27, !dbg !4349
  %16 = load i64, i64* %total_conflict_hard_regs, align 8, !dbg !4349
  %or22 = or i64 %16, %13, !dbg !4349
  store i64 %or22, i64* %total_conflict_hard_regs, align 8, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %13, metadata !4298, metadata !DIExpression()), !dbg !4299
  %total_conflict_hard_regs23 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 27, !dbg !4350
  %17 = load i64, i64* %total_conflict_hard_regs23, align 8, !dbg !4350
  %or24 = or i64 %17, %13, !dbg !4350
  store i64 %or24, i64* %total_conflict_hard_regs23, align 8, !dbg !4350
  call fastcc void @update_costs(%struct.ira_allocno* %4, i8 zeroext 1, i32 %freq) #7, !dbg !4351
  call fastcc void @update_costs(%struct.ira_allocno* %5, i8 zeroext 0, i32 %freq) #7, !dbg !4352
  %insn = getelementptr inbounds %struct.move, %struct.move* %move.0, i64 0, i32 6, !dbg !4353
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4353
  %call25 = call %struct.ira_allocno_copy* @ira_add_allocno_copy(%struct.ira_allocno* %4, %struct.ira_allocno* %5, i32 %freq, i8 zeroext 0, %struct.rtx_def* %18, %struct.ira_loop_tree_node* null) #6, !dbg !4354
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %call25, metadata !4295, metadata !DIExpression()), !dbg !4299
  %19 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !4355
  %cmp26 = icmp sgt i32 %19, 2, !dbg !4357
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !4358
  %cmp28 = icmp ne %struct._IO_FILE* %20, null, !dbg !4359
  %or.cond1 = and i1 %cmp26, %cmp28, !dbg !4360
  br i1 %or.cond1, label %if.then29, label %if.end40, !dbg !4360

if.then29:                                        ; preds = %if.end15
  %num30 = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %call25, i64 0, i32 0, !dbg !4361
  %21 = load i32, i32* %num30, align 8, !dbg !4361
  %first = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %call25, i64 0, i32 1, !dbg !4362
  %22 = load %struct.ira_allocno*, %struct.ira_allocno** %first, align 8, !dbg !4362
  %num31 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %22, i64 0, i32 0, !dbg !4362
  %23 = load i32, i32* %num31, align 8, !dbg !4362
  %reg33 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %22, i64 0, i32 4, !dbg !4363
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg33, align 8, !dbg !4363
  %call34 = call fastcc i32 @rhs_regno(%struct.rtx_def* %24) #7, !dbg !4363
  %second = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %call25, i64 0, i32 2, !dbg !4364
  %25 = load %struct.ira_allocno*, %struct.ira_allocno** %second, align 8, !dbg !4364
  %num35 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %25, i64 0, i32 0, !dbg !4364
  %26 = load i32, i32* %num35, align 8, !dbg !4364
  %reg37 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %25, i64 0, i32 4, !dbg !4365
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg37, align 8, !dbg !4365
  %call38 = call fastcc i32 @rhs_regno(%struct.rtx_def* %27) #7, !dbg !4365
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %21, i32 %23, i32 %call34, i32 %26, i32 %call38) #6, !dbg !4366
  br label %if.end40, !dbg !4366

if.end40:                                         ; preds = %if.then29, %if.end15
  %live_ranges = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 20, !dbg !4367
  %28 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges, align 8, !dbg !4367
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %28, metadata !4296, metadata !DIExpression()), !dbg !4299
  %cmp41 = icmp eq %struct.ira_allocno_live_range* %28, null, !dbg !4368
  br i1 %cmp41, label %if.then43, label %lor.lhs.false, !dbg !4370

lor.lhs.false:                                    ; preds = %if.end40
  %finish = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %28, i64 0, i32 2, !dbg !4371
  %29 = load i32, i32* %finish, align 4, !dbg !4371
  %cmp42 = icmp sgt i32 %29, -1, !dbg !4372
  br i1 %cmp42, label %if.then43, label %if.else, !dbg !4373

if.then43:                                        ; preds = %lor.lhs.false, %if.end40
  %30 = load i32, i32* @ira_max_point, align 4, !dbg !4374
  %call44 = call %struct.ira_allocno_live_range* @ira_create_allocno_live_range(%struct.ira_allocno* %4, i32 %inc1, i32 %30, %struct.ira_allocno_live_range* %28) #6, !dbg !4376
  store %struct.ira_allocno_live_range* %call44, %struct.ira_allocno_live_range** %live_ranges, align 8, !dbg !4377
  %31 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !4378
  %cmp46 = icmp sgt i32 %31, 2, !dbg !4380
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !4381
  %cmp48 = icmp ne %struct._IO_FILE* %32, null, !dbg !4382
  %or.cond2 = and i1 %cmp46, %cmp48, !dbg !4383
  br i1 %or.cond2, label %if.then49, label %if.end66, !dbg !4383

if.then49:                                        ; preds = %if.then43
  %33 = load i32, i32* @ira_max_point, align 4, !dbg !4384
  %num50 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 0, !dbg !4385
  %34 = load i32, i32* %num50, align 8, !dbg !4385
  %reg51 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 4, !dbg !4386
  %35 = load %struct.rtx_def*, %struct.rtx_def** %reg51, align 8, !dbg !4386
  %call52 = call fastcc i32 @rhs_regno(%struct.rtx_def* %35) #7, !dbg !4386
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %inc1, i32 %33, i32 %34, i32 %call52) #6, !dbg !4387
  br label %if.end66, !dbg !4387

if.else:                                          ; preds = %lor.lhs.false
  %36 = load i32, i32* @ira_max_point, align 4, !dbg !4388
  store i32 %36, i32* %finish, align 4, !dbg !4390
  %37 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !4391
  %cmp56 = icmp sgt i32 %37, 2, !dbg !4393
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !4394
  %cmp58 = icmp ne %struct._IO_FILE* %38, null, !dbg !4395
  %or.cond3 = and i1 %cmp56, %cmp58, !dbg !4396
  br i1 %or.cond3, label %if.then59, label %if.end66, !dbg !4396

if.then59:                                        ; preds = %if.else
  %start60 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %28, i64 0, i32 1, !dbg !4397
  %39 = load i32, i32* %start60, align 8, !dbg !4397
  %num61 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 0, !dbg !4398
  %40 = load i32, i32* %num61, align 8, !dbg !4398
  %reg62 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 4, !dbg !4399
  %41 = load %struct.rtx_def*, %struct.rtx_def** %reg62, align 8, !dbg !4399
  %call63 = call fastcc i32 @rhs_regno(%struct.rtx_def* %41) #7, !dbg !4399
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %39, i32 %36, i32 %40, i32 %call63) #6, !dbg !4400
  br label %if.end66, !dbg !4400

if.end66:                                         ; preds = %if.else, %if.then59, %if.then43, %if.then49
  %42 = load i32, i32* @ira_max_point, align 4, !dbg !4401
  %inc67 = add nsw i32 %42, 1, !dbg !4401
  store i32 %inc67, i32* @ira_max_point, align 4, !dbg !4401
  %live_ranges68 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 20, !dbg !4402
  %43 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges68, align 8, !dbg !4402
  %call69 = call %struct.ira_allocno_live_range* @ira_create_allocno_live_range(%struct.ira_allocno* %5, i32 %inc67, i32 -1, %struct.ira_allocno_live_range* %43) #6, !dbg !4403
  store %struct.ira_allocno_live_range* %call69, %struct.ira_allocno_live_range** %live_ranges68, align 8, !dbg !4404
  %44 = load i32, i32* @ira_max_point, align 4, !dbg !4405
  %inc71 = add nsw i32 %44, 1, !dbg !4405
  store i32 %inc71, i32* @ira_max_point, align 4, !dbg !4405
  %next = getelementptr inbounds %struct.move, %struct.move* %move.0, i64 0, i32 2, !dbg !4406
  %45 = load %struct.move*, %struct.move** %next, align 8, !dbg !4406
  call void @llvm.dbg.value(metadata %struct.move* %45, metadata !4291, metadata !DIExpression()), !dbg !4299
  br label %for.cond2, !dbg !4407, !llvm.loop !4408

for.cond74:                                       ; preds = %for.cond74.preheader, %for.inc97
  %move.1 = phi %struct.move* [ %56, %for.inc97 ], [ %list, %for.cond74.preheader ], !dbg !4410
  call void @llvm.dbg.value(metadata %struct.move* %move.1, metadata !4291, metadata !DIExpression()), !dbg !4299
  %cmp75 = icmp eq %struct.move* %move.1, null, !dbg !4411
  br i1 %cmp75, label %for.end99, label %for.body76, !dbg !4322

for.body76:                                       ; preds = %for.cond74
  %to77 = getelementptr inbounds %struct.move, %struct.move* %move.1, i64 0, i32 1, !dbg !4413
  %46 = load %struct.ira_allocno*, %struct.ira_allocno** %to77, align 8, !dbg !4413
  %live_ranges78 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %46, i64 0, i32 20, !dbg !4413
  %47 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges78, align 8, !dbg !4413
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %47, metadata !4296, metadata !DIExpression()), !dbg !4299
  %finish79 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %47, i64 0, i32 2, !dbg !4415
  %48 = load i32, i32* %finish79, align 4, !dbg !4415
  %cmp80 = icmp slt i32 %48, 0, !dbg !4417
  br i1 %cmp80, label %if.then81, label %for.inc97, !dbg !4418

if.then81:                                        ; preds = %for.body76
  %49 = load i32, i32* @ira_max_point, align 4, !dbg !4419
  %sub = add nsw i32 %49, -1, !dbg !4421
  store i32 %sub, i32* %finish79, align 4, !dbg !4422
  %50 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !4423
  %cmp83 = icmp sgt i32 %50, 2, !dbg !4425
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !4426
  %cmp85 = icmp ne %struct._IO_FILE* %51, null, !dbg !4427
  %or.cond4 = and i1 %cmp83, %cmp85, !dbg !4428
  br i1 %or.cond4, label %if.then86, label %for.inc97, !dbg !4428

if.then86:                                        ; preds = %if.then81
  %start87 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %47, i64 0, i32 1, !dbg !4429
  %52 = load i32, i32* %start87, align 8, !dbg !4429
  %53 = load %struct.ira_allocno*, %struct.ira_allocno** %to77, align 8, !dbg !4430
  %num90 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %53, i64 0, i32 0, !dbg !4430
  %54 = load i32, i32* %num90, align 8, !dbg !4430
  %reg92 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %53, i64 0, i32 4, !dbg !4431
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg92, align 8, !dbg !4431
  %call93 = call fastcc i32 @rhs_regno(%struct.rtx_def* %55) #7, !dbg !4431
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %52, i32 %sub, i32 %54, i32 %call93) #6, !dbg !4432
  br label %for.inc97, !dbg !4432

for.inc97:                                        ; preds = %for.body76, %if.then86, %if.then81
  %next98 = getelementptr inbounds %struct.move, %struct.move* %move.1, i64 0, i32 2, !dbg !4433
  %56 = load %struct.move*, %struct.move** %next98, align 8, !dbg !4433
  call void @llvm.dbg.value(metadata %struct.move* %56, metadata !4291, metadata !DIExpression()), !dbg !4299
  br label %for.cond74, !dbg !4434, !llvm.loop !4435

for.end99:                                        ; preds = %for.cond74
  call void @llvm.dbg.value(metadata i32* %regno, metadata !4290, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4297, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %live_through, i32 53, i32* nonnull %regno) #7, !dbg !4437
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %node, i64 0, i32 9, !dbg !4439
  br label %for.cond100, !dbg !4437

for.cond100:                                      ; preds = %for.inc122, %for.end99
  call void @llvm.dbg.value(metadata i32* %regno, metadata !4290, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4297, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  %call101 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !4442
  %tobool102 = icmp eq i8 %call101, 0, !dbg !4437
  br i1 %tobool102, label %cleanup.loopexit, label %for.body103, !dbg !4437

for.body103:                                      ; preds = %for.cond100
  %57 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !4443
  %58 = load i32, i32* %regno, align 4, !dbg !4444
  call void @llvm.dbg.value(metadata i32 %58, metadata !4290, metadata !DIExpression()), !dbg !4299
  %idxprom = zext i32 %58 to i64, !dbg !4445
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %57, i64 %idxprom, !dbg !4445
  %59 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !4445
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %59, metadata !4294, metadata !DIExpression()), !dbg !4299
  %mem_optimized_dest = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %59, i64 0, i32 32, !dbg !4446
  %60 = load %struct.ira_allocno*, %struct.ira_allocno** %mem_optimized_dest, align 8, !dbg !4446
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %60, metadata !4292, metadata !DIExpression()), !dbg !4299
  %cmp104 = icmp eq %struct.ira_allocno* %60, null, !dbg !4448
  %spec.select = select i1 %cmp104, %struct.ira_allocno* %59, %struct.ira_allocno* %60, !dbg !4449
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %spec.select, metadata !4294, metadata !DIExpression()), !dbg !4299
  %61 = load i32, i32* @ira_max_point, align 4, !dbg !4450
  %sub107 = add nsw i32 %61, -1, !dbg !4451
  %live_ranges108 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %spec.select, i64 0, i32 20, !dbg !4452
  %62 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges108, align 8, !dbg !4452
  %call109 = call %struct.ira_allocno_live_range* @ira_create_allocno_live_range(%struct.ira_allocno* %spec.select, i32 %inc1, i32 %sub107, %struct.ira_allocno_live_range* %62) #6, !dbg !4453
  store %struct.ira_allocno_live_range* %call109, %struct.ira_allocno_live_range** %live_ranges108, align 8, !dbg !4454
  %63 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !4455
  %cmp111 = icmp sgt i32 %63, 2, !dbg !4457
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !4458
  %cmp113 = icmp ne %struct._IO_FILE* %64, null, !dbg !4459
  %or.cond5 = and i1 %cmp111, %cmp113, !dbg !4460
  br i1 %or.cond5, label %if.then114, label %for.inc122, !dbg !4460

if.then114:                                       ; preds = %for.body103
  %65 = load i32, i32* @ira_max_point, align 4, !dbg !4461
  %sub115 = add nsw i32 %65, -1, !dbg !4462
  %cond = select i1 %cmp104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), !dbg !4463
  %num117 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %spec.select, i64 0, i32 0, !dbg !4464
  %66 = load i32, i32* %num117, align 8, !dbg !4464
  %reg118 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %spec.select, i64 0, i32 4, !dbg !4465
  %67 = load %struct.rtx_def*, %struct.rtx_def** %reg118, align 8, !dbg !4465
  %call119 = call fastcc i32 @rhs_regno(%struct.rtx_def* %67) #7, !dbg !4465
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 %inc1, i32 %sub115, i8* %cond, i32 %66, i32 %call119) #6, !dbg !4466
  br label %for.inc122, !dbg !4466

for.inc122:                                       ; preds = %for.body103, %if.then114
  call void @llvm.dbg.value(metadata i32* %regno, metadata !4290, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4297, metadata !DIExpression(DW_OP_deref)), !dbg !4299
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !4442
  br label %for.cond100, !dbg !4442, !llvm.loop !4467

cleanup.loopexit:                                 ; preds = %for.cond100
  br label %cleanup, !dbg !4469

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4469
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4469
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4469
  ret void, !dbg !4469
}

declare dso_local void @bitmap_and(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @ira_allocate_allocno_conflicts(%struct.ira_allocno*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @update_costs(%struct.ira_allocno* %a, i8 zeroext %read_p, i32 %freq) unnamed_addr #4 !dbg !4470 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a, metadata !4474, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i8 %read_p, metadata !4475, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 %freq, metadata !4476, metadata !DIExpression()), !dbg !4478
  %tobool = icmp ne i8 %read_p, 0, !dbg !4479
  %idxprom4 = zext i1 %tobool to i64, !dbg !4479
  br label %for.cond, !dbg !4483

for.cond:                                         ; preds = %if.end18, %entry
  %a.addr.0 = phi %struct.ira_allocno* [ %a, %entry ], [ %a.addr.1, %if.end18 ]
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.addr.0, metadata !4474, metadata !DIExpression()), !dbg !4478
  %nrefs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 7, !dbg !4484
  %0 = load i32, i32* %nrefs, align 8, !dbg !4485
  %inc = add nsw i32 %0, 1, !dbg !4485
  store i32 %inc, i32* %nrefs, align 8, !dbg !4485
  %freq1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 8, !dbg !4486
  %1 = load i32, i32* %freq1, align 4, !dbg !4487
  %add = add nsw i32 %1, %freq, !dbg !4487
  store i32 %add, i32* %freq1, align 4, !dbg !4487
  %mode = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 2, !dbg !4488
  %2 = load i32, i32* %mode, align 8, !dbg !4488
  %idxprom = zext i32 %2 to i64, !dbg !4489
  %cover_class = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 9, !dbg !4490
  %3 = load i32, i32* %cover_class, align 8, !dbg !4490
  %idxprom2 = zext i32 %3 to i64, !dbg !4489
  %arrayidx5 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom, i64 %idxprom2, i64 %idxprom4, !dbg !4489
  %4 = load i16, i16* %arrayidx5, align 2, !dbg !4489
  %conv6 = sext i16 %4 to i32, !dbg !4489
  %mul = mul nsw i32 %conv6, %freq, !dbg !4491
  %memory_cost = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 12, !dbg !4492
  %5 = load i32, i32* %memory_cost, align 4, !dbg !4493
  %add7 = add nsw i32 %5, %mul, !dbg !4493
  store i32 %add7, i32* %memory_cost, align 4, !dbg !4493
  %cap = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 16, !dbg !4494
  %6 = load %struct.ira_allocno*, %struct.ira_allocno** %cap, align 8, !dbg !4494
  %cmp = icmp eq %struct.ira_allocno* %6, null, !dbg !4496
  br i1 %cmp, label %if.else, label %if.then, !dbg !4497

if.then:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %6, metadata !4474, metadata !DIExpression()), !dbg !4478
  br label %if.end18, !dbg !4498

if.else:                                          ; preds = %for.cond
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 6, !dbg !4499
  %7 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !4499
  %parent10 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %7, i64 0, i32 6, !dbg !4501
  %8 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent10, align 8, !dbg !4501
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %8, metadata !4477, metadata !DIExpression()), !dbg !4478
  %cmp11 = icmp eq %struct.ira_loop_tree_node* %8, null, !dbg !4502
  br i1 %cmp11, label %for.end, label %lor.lhs.false, !dbg !4503

lor.lhs.false:                                    ; preds = %if.else
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %8, i64 0, i32 9, !dbg !4504
  %9 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !4504
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.addr.0, i64 0, i32 1, !dbg !4505
  %10 = load i32, i32* %regno, align 4, !dbg !4505
  %idxprom13 = sext i32 %10 to i64, !dbg !4506
  %arrayidx14 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %9, i64 %idxprom13, !dbg !4506
  %11 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx14, align 8, !dbg !4506
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %11, metadata !4474, metadata !DIExpression()), !dbg !4478
  %cmp15 = icmp eq %struct.ira_allocno* %11, null, !dbg !4507
  br i1 %cmp15, label %for.end, label %if.end18, !dbg !4508

if.end18:                                         ; preds = %lor.lhs.false, %if.then
  %a.addr.1 = phi %struct.ira_allocno* [ %6, %if.then ], [ %11, %lor.lhs.false ], !dbg !4509
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.addr.1, metadata !4474, metadata !DIExpression()), !dbg !4478
  br label %for.cond, !dbg !4510, !llvm.loop !4511

for.end:                                          ; preds = %if.else, %lor.lhs.false
  ret void, !dbg !4514
}

declare dso_local %struct.ira_allocno_copy* @ira_add_allocno_copy(%struct.ira_allocno*, %struct.ira_allocno*, i32, i8 zeroext, %struct.rtx_def*, %struct.ira_loop_tree_node*) local_unnamed_addr #1

declare dso_local %struct.ira_allocno_live_range* @ira_create_allocno_live_range(%struct.ira_allocno*, i32, i32, %struct.ira_allocno_live_range*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_move(%struct.move* %move) unnamed_addr #4 !dbg !4515 {
entry:
  call void @llvm.dbg.value(metadata %struct.move* %move, metadata !4517, metadata !DIExpression()), !dbg !4518
  %deps = getelementptr inbounds %struct.move, %struct.move* %move, i64 0, i32 5, !dbg !4519
  %0 = load %struct.move**, %struct.move*** %deps, align 8, !dbg !4519
  %cmp = icmp eq %struct.move** %0, null, !dbg !4521
  br i1 %cmp, label %if.end, label %if.then, !dbg !4522

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.move** %0 to i8*, !dbg !4522
  tail call void @ira_free(i8* nonnull %1) #6, !dbg !4523
  br label %if.end, !dbg !4523

if.end:                                           ; preds = %entry, %if.then
  %2 = bitcast %struct.move* %move to i8*, !dbg !4524
  tail call void @ira_free(i8* %2) #6, !dbg !4525
  ret void, !dbg !4526
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i32 @recog(%struct.rtx_def*, %struct.rtx_def*, i32*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1871, !1872, !1873}
!llvm.ident = !{!1874}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "at_bb_start", scope: !2, file: !3, line: 74, type: !573, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !563, globals: !1844, nameTableKind: None)
!3 = !DIFile(filename: "ira-emit.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !143, !147, !153, !158, !163, !182, !189, !196, !390, !420}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !135, line: 31, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !135, line: 91, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !148, line: 363, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !148, line: 355, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !159, line: 474, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !164, line: 280, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!166 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !164, line: 1817, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !164, line: 1805, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !164, line: 39, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!198 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!202 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!203 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!204 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!205 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!208 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!209 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!210 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!213 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!214 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!215 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!216 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!217 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!218 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!219 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!220 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!221 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!222 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!223 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!225 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!226 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!227 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!228 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!229 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!230 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!231 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!232 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!233 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!234 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!235 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!236 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!237 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!238 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!239 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!240 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!241 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!242 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!243 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!244 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!245 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!246 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!247 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!248 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!249 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!250 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!251 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!252 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!253 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!254 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!255 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!256 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!257 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!258 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!259 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!260 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!261 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!262 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!263 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!264 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!266 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!267 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!268 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!269 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!270 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!271 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!272 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!273 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!274 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!275 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!276 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!277 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!278 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!280 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!281 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!282 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!283 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!284 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!285 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!286 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!287 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!288 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!289 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!290 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!291 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!292 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!293 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!294 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!295 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!296 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!297 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!298 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!299 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!300 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!301 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!302 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!303 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!304 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!305 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!306 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!307 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!308 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!309 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!310 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!311 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!312 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!313 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!314 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!315 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!316 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!317 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!318 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!319 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!320 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!321 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!322 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!323 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!324 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!325 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!326 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!327 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!328 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!329 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!330 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!331 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!332 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!333 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!334 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!335 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!336 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!337 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!338 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!339 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!340 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!341 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!342 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!343 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!344 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!345 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!346 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!347 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!348 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!349 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!350 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!362 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!363 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!364 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!365 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!366 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!367 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!381 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!382 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!383 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!384 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!385 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!386 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!387 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!388 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!389 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !159, line: 1188, baseType: !7, size: 32, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!392 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!393 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!394 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!395 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!396 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!397 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!398 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!399 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!400 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!401 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!402 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!403 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!404 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!405 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!406 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!407 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!408 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!409 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!410 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!411 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!412 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!413 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!414 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!415 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!416 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!417 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!418 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!419 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!420 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !421, line: 45, baseType: !7, size: 32, elements: !422)
!421 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!423 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!424 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!425 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!426 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!427 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!428 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!429 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!430 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!431 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!432 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!433 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!434 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!435 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!436 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!437 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!438 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!439 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!440 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!441 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!442 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!443 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!444 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!445 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!446 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!447 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!448 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!449 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!450 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!451 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!452 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!453 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!454 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!455 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!456 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!457 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!458 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!459 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!460 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!461 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!462 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!463 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!464 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!465 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!466 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!467 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!468 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!469 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!470 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!471 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!472 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!473 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!474 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!475 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!476 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!477 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!478 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!479 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!480 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!481 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!482 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!483 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!484 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!485 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!486 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!487 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!488 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!489 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!490 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!491 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!492 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!493 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!494 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!495 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!496 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!497 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!498 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!499 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!500 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!501 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!502 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!503 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!504 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!505 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!506 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!507 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!508 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!509 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!510 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!511 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!512 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!513 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!514 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!515 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!516 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!517 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!518 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!519 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!520 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!521 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!522 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!523 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!524 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!525 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!526 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!527 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!528 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!529 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!530 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!531 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!532 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!533 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!534 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!535 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!536 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!537 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!538 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!539 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!540 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!541 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!542 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!543 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!544 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!545 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!550 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!551 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!552 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!553 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!554 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!555 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!556 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!557 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!558 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!559 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!560 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!561 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!562 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!563 = !{!564, !565, !566, !567, !570, !571, !573, !1809, !574, !420, !1789, !589, !5, !1031, !1824, !7, !1832}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!566 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_t", file: !3, line: 48, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "move", file: !3, line: 52, size: 384, elements: !577)
!577 = !{!578, !1818, !1819, !1820, !1821, !1822, !1823}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !576, file: !3, line: 55, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_t", file: !580, line: 63, baseType: !581)
!580 = !DIFile(filename: "./ira-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno", file: !580, line: 232, size: 1984, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !1717, !1718, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1768, !1769, !1770, !1771, !1772, !1783, !1784, !1785, !1786, !1787, !1788, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !582, file: !580, line: 237, baseType: !566, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !582, file: !580, line: 239, baseType: !566, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !582, file: !580, line: 242, baseType: !5, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hard_regno", scope: !582, file: !580, line: 249, baseType: !566, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !582, file: !580, line: 251, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !590, line: 50, baseType: !591)
!590 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !421, line: 240, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !592, file: !421, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !592, file: !421, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !592, file: !421, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !592, file: !421, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !592, file: !421, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !592, file: !421, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !592, file: !421, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !592, file: !421, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !592, file: !421, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !592, file: !421, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !592, file: !421, line: 321, baseType: !605, size: 320, offset: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !421, line: 315, size: 320, elements: !606)
!606 = !{!607, !1652, !1654, !1715, !1716}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !605, file: !421, line: 316, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 64, elements: !624)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !421, line: 183, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !421, line: 166, size: 64, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !626, !627, !639, !642, !704, !1630, !1631, !1642, !1649}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !610, file: !421, line: 168, baseType: !566, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !610, file: !421, line: 169, baseType: !7, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !610, file: !421, line: 170, baseType: !571, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !610, file: !421, line: 171, baseType: !589, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !610, file: !421, line: 172, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !590, line: 53, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !421, line: 359, size: 128, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !619, file: !421, line: 360, baseType: !566, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !619, file: !421, line: 361, baseType: !623, size: 64, offset: 64)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 64, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 1)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !610, file: !421, line: 173, baseType: !5, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !610, file: !421, line: 174, baseType: !628, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !421, line: 133, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 115, size: 32, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !629, file: !421, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !629, file: !421, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !629, file: !421, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !629, file: !421, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !629, file: !421, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !629, file: !421, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !629, file: !421, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !629, file: !421, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !610, file: !421, line: 175, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !421, line: 175, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !610, file: !421, line: 176, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !645, line: 75, size: 256, elements: !646)
!645 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!646 = !{!647, !662, !663, !664}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !644, file: !645, line: 76, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !645, line: 68, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !645, line: 63, size: 320, elements: !651)
!651 = !{!652, !654, !655, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !645, line: 64, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !650, file: !645, line: 65, baseType: !653, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !650, file: !645, line: 66, baseType: !7, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !650, file: !645, line: 67, baseType: !657, size: 128, offset: 192)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 128, elements: !660)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !645, line: 29, baseType: !659)
!659 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!660 = !{!661}
!661 = !DISubrange(count: 2)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !644, file: !645, line: 77, baseType: !648, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !644, file: !645, line: 78, baseType: !7, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !644, file: !645, line: 79, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !645, line: 49, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !645, line: 45, size: 832, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !667, file: !645, line: 46, baseType: !653, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !667, file: !645, line: 47, baseType: !643, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !667, file: !645, line: 48, baseType: !672, size: 704, offset: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !673, line: 164, size: 704, elements: !674)
!673 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!674 = !{!675, !677, !687, !688, !689, !690, !691, !692, !696, !700, !701, !702, !703}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !672, file: !673, line: 166, baseType: !676, size: 64)
!676 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !672, file: !673, line: 167, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !673, line: 157, size: 192, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !679, file: !673, line: 159, baseType: !568, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !679, file: !673, line: 160, baseType: !678, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !679, file: !673, line: 161, baseType: !684, size: 32, offset: 128)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 32, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 4)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !672, file: !673, line: 168, baseType: !568, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !672, file: !673, line: 169, baseType: !568, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !672, file: !673, line: 170, baseType: !568, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !672, file: !673, line: 171, baseType: !676, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !672, file: !673, line: 172, baseType: !566, size: 32, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !672, file: !673, line: 176, baseType: !693, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!678, !570, !676}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !672, file: !673, line: 177, baseType: !697, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !570, !678}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !672, file: !673, line: 178, baseType: !570, size: 64, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !672, file: !673, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !672, file: !673, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !672, file: !673, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !610, file: !421, line: 177, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !590, line: 56, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !164, line: 3371, size: 1792, elements: !708)
!708 = !{!709, !742, !748, !759, !778, !789, !794, !801, !807, !820, !832, !870, !875, !903, !911, !912, !917, !926, !932, !937, !941, !945, !1257, !1306, !1312, !1319, !1326, !1349, !1374, !1391, !1403, !1425, !1440, !1612}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !707, file: !164, line: 3372, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !164, line: 360, size: 64, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !710, file: !164, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !710, file: !164, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !710, file: !164, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !710, file: !164, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !710, file: !164, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !710, file: !164, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !710, file: !164, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !710, file: !164, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !710, file: !164, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !710, file: !164, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !710, file: !164, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !710, file: !164, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !710, file: !164, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !710, file: !164, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !710, file: !164, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !710, file: !164, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !710, file: !164, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !710, file: !164, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !710, file: !164, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !710, file: !164, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !710, file: !164, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !710, file: !164, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !710, file: !164, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !710, file: !164, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !710, file: !164, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !710, file: !164, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !710, file: !164, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !710, file: !164, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !710, file: !164, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !710, file: !164, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !707, file: !164, line: 3373, baseType: !743, size: 192)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !164, line: 402, size: 192, elements: !744)
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !743, file: !164, line: 403, baseType: !710, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !743, file: !164, line: 404, baseType: !705, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !164, line: 405, baseType: !705, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !707, file: !164, line: 3374, baseType: !749, size: 320)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !164, line: 1384, size: 320, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !749, file: !164, line: 1385, baseType: !743, size: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !749, file: !164, line: 1386, baseType: !753, size: 128, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !754, line: 58, baseType: !755)
!754 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 54, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !755, file: !754, line: 56, baseType: !659, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !755, file: !754, line: 57, baseType: !676, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !707, file: !164, line: 3375, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !164, line: 1397, size: 256, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !760, file: !164, line: 1398, baseType: !743, size: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !760, file: !164, line: 1399, baseType: !764, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !766, line: 52, size: 256, elements: !767)
!766 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!767 = !{!768, !769, !770, !771, !772, !773, !774}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !765, file: !766, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !765, file: !766, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !765, file: !766, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !765, file: !766, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !765, file: !766, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !765, file: !766, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !765, file: !766, line: 62, baseType: !775, size: 192, offset: 64)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 192, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 3)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !707, file: !164, line: 3376, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !164, line: 1408, size: 256, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !779, file: !164, line: 1409, baseType: !743, size: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !779, file: !164, line: 1410, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !785, line: 27, size: 192, elements: !786)
!785 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !784, file: !785, line: 29, baseType: !753, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !784, file: !785, line: 30, baseType: !5, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !707, file: !164, line: 3377, baseType: !790, size: 256)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !164, line: 1437, size: 256, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !790, file: !164, line: 1438, baseType: !743, size: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !790, file: !164, line: 1439, baseType: !705, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !707, file: !164, line: 3378, baseType: !795, size: 256)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !164, line: 1418, size: 256, elements: !796)
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !795, file: !164, line: 1419, baseType: !743, size: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !795, file: !164, line: 1420, baseType: !566, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !795, file: !164, line: 1421, baseType: !800, size: 8, offset: 224)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 8, elements: !624)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !707, file: !164, line: 3379, baseType: !802, size: 320)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !164, line: 1428, size: 320, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !802, file: !164, line: 1429, baseType: !743, size: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !802, file: !164, line: 1430, baseType: !705, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !802, file: !164, line: 1431, baseType: !705, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !707, file: !164, line: 3380, baseType: !808, size: 320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !164, line: 1460, size: 320, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !808, file: !164, line: 1461, baseType: !743, size: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !808, file: !164, line: 1462, baseType: !812, size: 128, offset: 192)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !813, line: 31, size: 128, elements: !814)
!813 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!814 = !{!815, !818, !819}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !812, file: !813, line: 32, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !812, file: !813, line: 33, baseType: !7, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !812, file: !813, line: 34, baseType: !7, size: 32, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !707, file: !164, line: 3381, baseType: !821, size: 384)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !164, line: 2507, size: 384, elements: !822)
!822 = !{!823, !824, !829, !830, !831}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !821, file: !164, line: 2508, baseType: !743, size: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !821, file: !164, line: 2509, baseType: !825, size: 32, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !826, line: 58, baseType: !827)
!826 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !828, line: 44, baseType: !7)
!828 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !821, file: !164, line: 2510, baseType: !7, size: 32, offset: 224)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !821, file: !164, line: 2511, baseType: !705, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !821, file: !164, line: 2512, baseType: !705, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !707, file: !164, line: 3382, baseType: !833, size: 896)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !164, line: 2652, size: 896, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !833, file: !164, line: 2653, baseType: !821, size: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !833, file: !164, line: 2654, baseType: !705, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !833, file: !164, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !833, file: !164, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !833, file: !164, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !833, file: !164, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !833, file: !164, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !833, file: !164, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !833, file: !164, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !833, file: !164, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !833, file: !164, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !833, file: !164, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !833, file: !164, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !833, file: !164, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !833, file: !164, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !833, file: !164, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !833, file: !164, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !833, file: !164, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !833, file: !164, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !833, file: !164, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !833, file: !164, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !833, file: !164, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !833, file: !164, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !833, file: !164, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !833, file: !164, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !833, file: !164, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !833, file: !164, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !833, file: !164, line: 2703, baseType: !7, size: 32, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !833, file: !164, line: 2705, baseType: !705, size: 64, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !833, file: !164, line: 2706, baseType: !705, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !833, file: !164, line: 2707, baseType: !705, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !833, file: !164, line: 2708, baseType: !705, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !833, file: !164, line: 2711, baseType: !868, size: 64, offset: 832)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !164, line: 2711, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !707, file: !164, line: 3383, baseType: !871, size: 960)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !164, line: 2756, size: 960, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !871, file: !164, line: 2757, baseType: !833, size: 896)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !871, file: !164, line: 2758, baseType: !589, size: 64, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !707, file: !164, line: 3384, baseType: !876, size: 1472)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !164, line: 3114, size: 1472, elements: !877)
!877 = !{!878, !899, !900, !901, !902}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !876, file: !164, line: 3115, baseType: !879, size: 1216)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !164, line: 2984, size: 1216, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !879, file: !164, line: 2985, baseType: !871, size: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !879, file: !164, line: 2986, baseType: !705, size: 64, offset: 960)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !879, file: !164, line: 2987, baseType: !705, size: 64, offset: 1024)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !879, file: !164, line: 2988, baseType: !705, size: 64, offset: 1088)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !879, file: !164, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !879, file: !164, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !879, file: !164, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !879, file: !164, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !879, file: !164, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !879, file: !164, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !879, file: !164, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !879, file: !164, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !879, file: !164, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !879, file: !164, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !879, file: !164, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !879, file: !164, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !879, file: !164, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !879, file: !164, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !876, file: !164, line: 3117, baseType: !705, size: 64, offset: 1216)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !876, file: !164, line: 3119, baseType: !705, size: 64, offset: 1280)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !876, file: !164, line: 3121, baseType: !705, size: 64, offset: 1344)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !876, file: !164, line: 3123, baseType: !705, size: 64, offset: 1408)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !707, file: !164, line: 3385, baseType: !904, size: 1088)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !164, line: 2874, size: 1088, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !904, file: !164, line: 2875, baseType: !871, size: 960)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !904, file: !164, line: 2876, baseType: !589, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !904, file: !164, line: 2877, baseType: !909, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !164, line: 2856, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !707, file: !164, line: 3386, baseType: !879, size: 1216)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !707, file: !164, line: 3387, baseType: !913, size: 1280)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !164, line: 3093, size: 1280, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !913, file: !164, line: 3094, baseType: !879, size: 1216)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !913, file: !164, line: 3095, baseType: !909, size: 64, offset: 1216)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !707, file: !164, line: 3388, baseType: !918, size: 1216)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !164, line: 2824, size: 1216, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !918, file: !164, line: 2825, baseType: !833, size: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !918, file: !164, line: 2827, baseType: !705, size: 64, offset: 896)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !918, file: !164, line: 2828, baseType: !705, size: 64, offset: 960)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !918, file: !164, line: 2829, baseType: !705, size: 64, offset: 1024)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !918, file: !164, line: 2830, baseType: !705, size: 64, offset: 1088)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !918, file: !164, line: 2831, baseType: !705, size: 64, offset: 1152)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !707, file: !164, line: 3389, baseType: !927, size: 1024)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !164, line: 2850, size: 1024, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !164, line: 2851, baseType: !871, size: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !927, file: !164, line: 2852, baseType: !566, size: 32, offset: 960)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !927, file: !164, line: 2853, baseType: !566, size: 32, offset: 992)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !707, file: !164, line: 3390, baseType: !933, size: 1024)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !164, line: 2857, size: 1024, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !164, line: 2858, baseType: !871, size: 960)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !933, file: !164, line: 2859, baseType: !909, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !707, file: !164, line: 3391, baseType: !938, size: 960)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !164, line: 2862, size: 960, elements: !939)
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !938, file: !164, line: 2863, baseType: !871, size: 960)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !707, file: !164, line: 3392, baseType: !942, size: 1472)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !164, line: 3304, size: 1472, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !942, file: !164, line: 3305, baseType: !876, size: 1472)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !707, file: !164, line: 3393, baseType: !946, size: 1792)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !164, line: 3248, size: 1792, elements: !947)
!947 = !{!948, !949, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !946, file: !164, line: 3249, baseType: !876, size: 1472)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !946, file: !164, line: 3251, baseType: !950, size: 64, offset: 1472)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !952, line: 463, size: 1152, elements: !953)
!952 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!953 = !{!954, !957, !1117, !1118, !1121, !1180, !1181, !1182, !1183, !1184, !1185, !1209, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !951, file: !952, line: 464, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !952, line: 464, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !951, file: !952, line: 467, baseType: !958, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !148, line: 374, size: 640, elements: !960)
!960 = !{!961, !1092, !1093, !1106, !1107, !1108, !1109, !1110, !1111, !1113, !1115, !1116}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !959, file: !148, line: 377, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !590, line: 111, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !148, line: 217, size: 832, elements: !965)
!965 = !{!966, !1001, !1002, !1003, !1062, !1066, !1067, !1068, !1086, !1087, !1088, !1089, !1090, !1091}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !964, file: !148, line: 219, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !148, line: 151, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !148, line: 151, size: 128, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !969, file: !148, line: 151, baseType: !972, size: 128)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !148, line: 150, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !148, line: 150, size: 128, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !973, file: !148, line: 150, baseType: !7, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !973, file: !148, line: 150, baseType: !7, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !973, file: !148, line: 150, baseType: !978, size: 64, offset: 64)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 64, elements: !624)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !590, line: 108, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !148, line: 122, size: 512, elements: !982)
!982 = !{!983, !984, !985, !993, !994, !995, !996, !997, !998, !999}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !981, file: !148, line: 124, baseType: !963, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !981, file: !148, line: 125, baseType: !963, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !981, file: !148, line: 131, baseType: !986, size: 64, offset: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !148, line: 128, size: 64, elements: !987)
!987 = !{!988, !992}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !986, file: !148, line: 129, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !590, line: 66, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !590, line: 65, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !986, file: !148, line: 130, baseType: !589, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !981, file: !148, line: 134, baseType: !570, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !981, file: !148, line: 137, baseType: !705, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !981, file: !148, line: 138, baseType: !825, size: 32, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !981, file: !148, line: 142, baseType: !7, size: 32, offset: 352)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !148, line: 144, baseType: !566, size: 32, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !981, file: !148, line: 145, baseType: !566, size: 32, offset: 416)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !981, file: !148, line: 146, baseType: !1000, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !148, line: 119, baseType: !676)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !964, file: !148, line: 220, baseType: !967, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !964, file: !148, line: 223, baseType: !570, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !964, file: !148, line: 226, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 100, size: 1216, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1016, !1017, !1018, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1052, !1060, !1061}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1005, file: !135, line: 102, baseType: !566, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1005, file: !135, line: 105, baseType: !7, size: 32, offset: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1005, file: !135, line: 108, baseType: !963, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1005, file: !135, line: 111, baseType: !963, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1005, file: !135, line: 114, baseType: !1012, size: 64, offset: 192)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !135, line: 41, size: 64, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1012, file: !135, line: 42, baseType: !134, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1012, file: !135, line: 43, baseType: !7, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1005, file: !135, line: 117, baseType: !7, size: 32, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1005, file: !135, line: 120, baseType: !7, size: 32, offset: 288)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1005, file: !135, line: 123, baseType: !1019, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !135, line: 87, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !135, line: 87, size: 128, elements: !1022)
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1021, file: !135, line: 87, baseType: !1024, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !135, line: 85, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !135, line: 85, size: 128, elements: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1025, file: !135, line: 85, baseType: !7, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1025, file: !135, line: 85, baseType: !7, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1025, file: !135, line: 85, baseType: !1030, size: 64, offset: 64)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 64, elements: !624)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !135, line: 84, baseType: !1004)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1005, file: !135, line: 126, baseType: !1004, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1005, file: !135, line: 129, baseType: !1004, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1005, file: !135, line: 132, baseType: !570, size: 64, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1005, file: !135, line: 139, baseType: !705, size: 64, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1005, file: !135, line: 143, baseType: !753, size: 128, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1005, file: !135, line: 146, baseType: !753, size: 128, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1005, file: !135, line: 148, baseType: !565, size: 8, offset: 896)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1005, file: !135, line: 149, baseType: !565, size: 8, offset: 904)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1005, file: !135, line: 153, baseType: !143, size: 32, offset: 928)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1005, file: !135, line: 156, baseType: !1042, size: 64, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !135, line: 48, size: 320, elements: !1044)
!1044 = !{!1045, !1049, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1043, file: !135, line: 50, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !590, line: 58, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !590, line: 57, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1043, file: !135, line: 59, baseType: !753, size: 128, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1043, file: !135, line: 64, baseType: !565, size: 8, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1043, file: !135, line: 67, baseType: !1042, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1005, file: !135, line: 159, baseType: !1053, size: 64, offset: 1024)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !135, line: 72, size: 256, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1054, file: !135, line: 74, baseType: !980, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1054, file: !135, line: 77, baseType: !1053, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1054, file: !135, line: 78, baseType: !1053, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1054, file: !135, line: 81, baseType: !1053, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1005, file: !135, line: 162, baseType: !565, size: 8, offset: 1088)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1005, file: !135, line: 166, baseType: !705, size: 64, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !964, file: !148, line: 229, baseType: !1063, size: 128, offset: 256)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 128, elements: !660)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !148, line: 229, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !964, file: !148, line: 232, baseType: !963, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !964, file: !148, line: 233, baseType: !963, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !964, file: !148, line: 238, baseType: !1069, size: 64, offset: 512)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !148, line: 235, size: 64, elements: !1070)
!1070 = !{!1071, !1077}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1069, file: !148, line: 236, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !148, line: 273, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1073, file: !148, line: 275, baseType: !989, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1073, file: !148, line: 278, baseType: !989, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1069, file: !148, line: 237, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !148, line: 259, size: 320, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1079, file: !148, line: 261, baseType: !589, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1079, file: !148, line: 262, baseType: !589, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1079, file: !148, line: 266, baseType: !589, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1079, file: !148, line: 267, baseType: !589, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1079, file: !148, line: 270, baseType: !566, size: 32, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !964, file: !148, line: 241, baseType: !1000, size: 64, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !964, file: !148, line: 244, baseType: !566, size: 32, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !964, file: !148, line: 247, baseType: !566, size: 32, offset: 672)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !964, file: !148, line: 250, baseType: !566, size: 32, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !964, file: !148, line: 253, baseType: !566, size: 32, offset: 736)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !964, file: !148, line: 256, baseType: !566, size: 32, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !959, file: !148, line: 378, baseType: !962, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !959, file: !148, line: 381, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !148, line: 282, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !148, line: 282, size: 128, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1096, file: !148, line: 282, baseType: !1099, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !148, line: 281, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !148, line: 281, size: 128, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1100, file: !148, line: 281, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1100, file: !148, line: 281, baseType: !7, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1100, file: !148, line: 281, baseType: !1105, size: 64, offset: 64)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 64, elements: !624)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !959, file: !148, line: 384, baseType: !566, size: 32, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !959, file: !148, line: 387, baseType: !566, size: 32, offset: 224)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !959, file: !148, line: 390, baseType: !566, size: 32, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !959, file: !148, line: 394, baseType: !1094, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !959, file: !148, line: 396, baseType: !147, size: 32, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !959, file: !148, line: 399, baseType: !1112, size: 64, offset: 416)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !660)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !959, file: !148, line: 402, baseType: !1114, size: 64, offset: 480)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !660)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !959, file: !148, line: 406, baseType: !566, size: 32, offset: 544)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !959, file: !148, line: 409, baseType: !566, size: 32, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !951, file: !952, line: 470, baseType: !990, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !951, file: !952, line: 473, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !952, line: 166, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !951, file: !952, line: 476, baseType: !1122, size: 64, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !135, line: 187, size: 256, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1179}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1123, file: !135, line: 189, baseType: !566, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1123, file: !135, line: 192, baseType: !1019, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1123, file: !135, line: 197, baseType: !1128, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1129, line: 144, baseType: !1130)
!1129 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1129, line: 100, size: 896, elements: !1132)
!1132 = !{!1133, !1141, !1146, !1151, !1153, !1156, !1157, !1158, !1159, !1160, !1165, !1167, !1168, !1173, !1178}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1131, file: !1129, line: 102, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1129, line: 52, baseType: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1129, line: 47, baseType: !7)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1131, file: !1129, line: 105, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1129, line: 59, baseType: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!566, !1139, !1139}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1131, file: !1129, line: 108, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1129, line: 63, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !570}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1131, file: !1129, line: 111, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1131, file: !1129, line: 114, baseType: !1154, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1155, line: 46, baseType: !659)
!1155 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1131, file: !1129, line: 117, baseType: !1154, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1131, file: !1129, line: 120, baseType: !1154, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1131, file: !1129, line: 124, baseType: !7, size: 32, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1131, file: !1129, line: 128, baseType: !7, size: 32, offset: 480)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1131, file: !1129, line: 131, baseType: !1161, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1129, line: 75, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!570, !1154, !1154}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1131, file: !1129, line: 132, baseType: !1166, size: 64, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1129, line: 78, baseType: !1148)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1131, file: !1129, line: 135, baseType: !570, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1131, file: !1129, line: 136, baseType: !1169, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1129, line: 82, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!570, !570, !1154, !1154}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1131, file: !1129, line: 137, baseType: !1174, size: 64, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1129, line: 83, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !570, !570}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1131, file: !1129, line: 141, baseType: !7, size: 32, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1123, file: !135, line: 200, baseType: !1004, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !951, file: !952, line: 479, baseType: !1128, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !951, file: !952, line: 484, baseType: !705, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !951, file: !952, line: 488, baseType: !705, size: 64, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !951, file: !952, line: 493, baseType: !705, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !951, file: !952, line: 496, baseType: !705, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !951, file: !952, line: 501, baseType: !1186, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !159, line: 2355, size: 576, elements: !1188)
!1188 = !{!1189, !1192, !1193, !1194, !1195, !1197, !1198, !1203, !1204, !1205, !1206, !1207, !1208}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1187, file: !159, line: 2356, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !159, line: 2356, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1187, file: !159, line: 2357, baseType: !571, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1187, file: !159, line: 2358, baseType: !566, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1187, file: !159, line: 2359, baseType: !566, size: 32, offset: 160)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1187, file: !159, line: 2360, baseType: !1196, size: 128, offset: 192)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 128, elements: !685)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1187, file: !159, line: 2364, baseType: !566, size: 32, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1187, file: !159, line: 2367, baseType: !1199, size: 128, offset: 384)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !159, line: 2349, size: 128, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1199, file: !159, line: 2351, baseType: !589, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1199, file: !159, line: 2352, baseType: !676, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1187, file: !159, line: 2371, baseType: !158, size: 32, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1187, file: !159, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1187, file: !159, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1187, file: !159, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1187, file: !159, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1187, file: !159, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !951, file: !952, line: 504, baseType: !1210, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !952, line: 504, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !951, file: !952, line: 507, baseType: !1128, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !951, file: !952, line: 510, baseType: !566, size: 32, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !951, file: !952, line: 513, baseType: !566, size: 32, offset: 864)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !951, file: !952, line: 516, baseType: !825, size: 32, offset: 896)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !951, file: !952, line: 519, baseType: !825, size: 32, offset: 928)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !951, file: !952, line: 522, baseType: !7, size: 32, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !951, file: !952, line: 523, baseType: !7, size: 32, offset: 992)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !951, file: !952, line: 528, baseType: !571, size: 64, offset: 1024)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !951, file: !952, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !951, file: !952, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !951, file: !952, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !951, file: !952, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !951, file: !952, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !951, file: !952, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !951, file: !952, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !951, file: !952, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !951, file: !952, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !951, file: !952, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !951, file: !952, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !951, file: !952, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !951, file: !952, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !951, file: !952, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !951, file: !952, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !951, file: !952, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !946, file: !164, line: 3254, baseType: !705, size: 64, offset: 1536)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !946, file: !164, line: 3257, baseType: !705, size: 64, offset: 1600)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !946, file: !164, line: 3258, baseType: !705, size: 64, offset: 1664)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !946, file: !164, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !946, file: !164, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !946, file: !164, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !946, file: !164, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !946, file: !164, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !946, file: !164, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !946, file: !164, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !946, file: !164, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !946, file: !164, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !946, file: !164, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !946, file: !164, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !946, file: !164, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !946, file: !164, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !946, file: !164, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !946, file: !164, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !946, file: !164, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !946, file: !164, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !946, file: !164, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !164, line: 3394, baseType: !1258, size: 1344)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !164, line: 2279, size: 1344, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1285, !1286, !1287, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1258, file: !164, line: 2280, baseType: !743, size: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1258, file: !164, line: 2281, baseType: !705, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1258, file: !164, line: 2282, baseType: !705, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1258, file: !164, line: 2283, baseType: !705, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1258, file: !164, line: 2284, baseType: !705, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1258, file: !164, line: 2285, baseType: !7, size: 32, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1258, file: !164, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1258, file: !164, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1258, file: !164, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1258, file: !164, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1258, file: !164, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1258, file: !164, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1258, file: !164, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1258, file: !164, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1258, file: !164, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1258, file: !164, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1258, file: !164, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1258, file: !164, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1258, file: !164, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1258, file: !164, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1258, file: !164, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1258, file: !164, line: 2305, baseType: !7, size: 32, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1258, file: !164, line: 2306, baseType: !1283, size: 32, offset: 544)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1284, line: 31, baseType: !566)
!1284 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1258, file: !164, line: 2307, baseType: !705, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1258, file: !164, line: 2308, baseType: !705, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1258, file: !164, line: 2314, baseType: !1288, size: 64, offset: 704)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !164, line: 2309, size: 64, elements: !1289)
!1289 = !{!1290, !1291, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1288, file: !164, line: 2310, baseType: !566, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1288, file: !164, line: 2311, baseType: !571, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1288, file: !164, line: 2312, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !164, line: 2277, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1258, file: !164, line: 2315, baseType: !705, size: 64, offset: 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1258, file: !164, line: 2316, baseType: !705, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1258, file: !164, line: 2317, baseType: !705, size: 64, offset: 896)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1258, file: !164, line: 2318, baseType: !705, size: 64, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1258, file: !164, line: 2319, baseType: !705, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1258, file: !164, line: 2320, baseType: !705, size: 64, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1258, file: !164, line: 2321, baseType: !705, size: 64, offset: 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1258, file: !164, line: 2322, baseType: !705, size: 64, offset: 1216)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1258, file: !164, line: 2324, baseType: !1304, size: 64, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !164, line: 2324, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !707, file: !164, line: 3395, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !164, line: 1469, size: 320, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1307, file: !164, line: 1470, baseType: !743, size: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1307, file: !164, line: 1471, baseType: !705, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1307, file: !164, line: 1472, baseType: !705, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !707, file: !164, line: 3396, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !164, line: 1482, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !164, line: 1483, baseType: !743, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1313, file: !164, line: 1484, baseType: !566, size: 32, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1313, file: !164, line: 1485, baseType: !1318, size: 64, offset: 256)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 64, elements: !624)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !707, file: !164, line: 3397, baseType: !1320, size: 384)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !164, line: 1829, size: 384, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1320, file: !164, line: 1830, baseType: !743, size: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1320, file: !164, line: 1831, baseType: !825, size: 32, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1320, file: !164, line: 1832, baseType: !705, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1320, file: !164, line: 1835, baseType: !1318, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !707, file: !164, line: 3398, baseType: !1327, size: 704)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !164, line: 1898, size: 704, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1336}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1327, file: !164, line: 1899, baseType: !743, size: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1327, file: !164, line: 1902, baseType: !705, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1327, file: !164, line: 1905, baseType: !1046, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1327, file: !164, line: 1908, baseType: !7, size: 32, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1327, file: !164, line: 1911, baseType: !1334, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !164, line: 1876, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1327, file: !164, line: 1914, baseType: !1337, size: 256, offset: 448)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !164, line: 1883, size: 256, elements: !1338)
!1338 = !{!1339, !1341, !1342, !1347}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1337, file: !164, line: 1884, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1337, file: !164, line: 1885, baseType: !1340, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1337, file: !164, line: 1891, baseType: !1343, size: 64, offset: 128)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !164, line: 1891, size: 64, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1343, file: !164, line: 1891, baseType: !1046, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1343, file: !164, line: 1891, baseType: !705, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1337, file: !164, line: 1892, baseType: !1348, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !707, file: !164, line: 3399, baseType: !1350, size: 704)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !164, line: 2008, size: 704, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1369, !1370, !1371, !1372, !1373}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1350, file: !164, line: 2009, baseType: !743, size: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1350, file: !164, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1350, file: !164, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1350, file: !164, line: 2014, baseType: !825, size: 32, offset: 224)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1350, file: !164, line: 2016, baseType: !705, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1350, file: !164, line: 2017, baseType: !1358, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !164, line: 183, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !164, line: 183, size: 128, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1360, file: !164, line: 183, baseType: !1363, size: 128)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !164, line: 182, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !164, line: 182, size: 128, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1364, file: !164, line: 182, baseType: !7, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1364, file: !164, line: 182, baseType: !7, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1364, file: !164, line: 182, baseType: !1318, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1350, file: !164, line: 2019, baseType: !705, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1350, file: !164, line: 2020, baseType: !705, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1350, file: !164, line: 2021, baseType: !705, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1350, file: !164, line: 2022, baseType: !705, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1350, file: !164, line: 2023, baseType: !705, size: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !707, file: !164, line: 3400, baseType: !1375, size: 832)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !164, line: 2430, size: 832, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1375, file: !164, line: 2431, baseType: !743, size: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1375, file: !164, line: 2433, baseType: !705, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1375, file: !164, line: 2434, baseType: !705, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1375, file: !164, line: 2435, baseType: !705, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1375, file: !164, line: 2436, baseType: !705, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1375, file: !164, line: 2437, baseType: !1358, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1375, file: !164, line: 2438, baseType: !705, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1375, file: !164, line: 2440, baseType: !705, size: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1375, file: !164, line: 2441, baseType: !705, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1375, file: !164, line: 2443, baseType: !1387, size: 128, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !164, line: 182, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !164, line: 182, size: 128, elements: !1389)
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1388, file: !164, line: 182, baseType: !1363, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !707, file: !164, line: 3401, baseType: !1392, size: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !164, line: 3327, size: 320, elements: !1393)
!1393 = !{!1394, !1395, !1402}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1392, file: !164, line: 3329, baseType: !743, size: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1392, file: !164, line: 3330, baseType: !1396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !164, line: 3320, size: 192, elements: !1398)
!1398 = !{!1399, !1400, !1401}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1397, file: !164, line: 3322, baseType: !1396, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1397, file: !164, line: 3323, baseType: !1396, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1397, file: !164, line: 3324, baseType: !705, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1392, file: !164, line: 3331, baseType: !1396, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !707, file: !164, line: 3402, baseType: !1404, size: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !164, line: 1540, size: 256, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1404, file: !164, line: 1541, baseType: !743, size: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1404, file: !164, line: 1542, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !164, line: 1538, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !164, line: 1538, size: 192, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1410, file: !164, line: 1538, baseType: !1413, size: 192)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !164, line: 1537, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !164, line: 1537, size: 192, elements: !1415)
!1415 = !{!1416, !1417, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1414, file: !164, line: 1537, baseType: !7, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1414, file: !164, line: 1537, baseType: !7, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1414, file: !164, line: 1537, baseType: !1419, size: 128, offset: 64)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 128, elements: !624)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !164, line: 1535, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !164, line: 1532, size: 128, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1421, file: !164, line: 1533, baseType: !705, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1421, file: !164, line: 1534, baseType: !705, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !707, file: !164, line: 3403, baseType: !1426, size: 512)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !164, line: 1938, size: 512, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1437, !1438, !1439}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1426, file: !164, line: 1939, baseType: !743, size: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1426, file: !164, line: 1940, baseType: !825, size: 32, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1426, file: !164, line: 1941, baseType: !163, size: 32, offset: 224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1426, file: !164, line: 1946, baseType: !1432, size: 32, offset: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !164, line: 1942, size: 32, elements: !1433)
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1432, file: !164, line: 1943, baseType: !182, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1432, file: !164, line: 1944, baseType: !189, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1432, file: !164, line: 1945, baseType: !196, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1426, file: !164, line: 1950, baseType: !989, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1426, file: !164, line: 1951, baseType: !989, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1426, file: !164, line: 1953, baseType: !1318, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !707, file: !164, line: 3404, baseType: !1441, size: 1664)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !164, line: 3337, size: 1664, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1441, file: !164, line: 3338, baseType: !743, size: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1441, file: !164, line: 3341, baseType: !1445, size: 1472, offset: 192)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1446, line: 410, size: 1472, elements: !1447)
!1446 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1445, file: !1446, line: 412, baseType: !566, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1445, file: !1446, line: 413, baseType: !566, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1445, file: !1446, line: 414, baseType: !566, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1445, file: !1446, line: 415, baseType: !566, size: 32, offset: 96)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1445, file: !1446, line: 416, baseType: !566, size: 32, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1445, file: !1446, line: 417, baseType: !566, size: 32, offset: 160)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1445, file: !1446, line: 418, baseType: !565, size: 8, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1445, file: !1446, line: 419, baseType: !565, size: 8, offset: 200)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1445, file: !1446, line: 420, baseType: !1457, size: 8, offset: 208)
!1457 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1445, file: !1446, line: 421, baseType: !1457, size: 8, offset: 216)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1445, file: !1446, line: 422, baseType: !1457, size: 8, offset: 224)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1445, file: !1446, line: 423, baseType: !1457, size: 8, offset: 232)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1445, file: !1446, line: 424, baseType: !1457, size: 8, offset: 240)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1445, file: !1446, line: 425, baseType: !1457, size: 8, offset: 248)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1445, file: !1446, line: 426, baseType: !1457, size: 8, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1445, file: !1446, line: 427, baseType: !1457, size: 8, offset: 264)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1445, file: !1446, line: 428, baseType: !1457, size: 8, offset: 272)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1445, file: !1446, line: 429, baseType: !1457, size: 8, offset: 280)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1445, file: !1446, line: 430, baseType: !1457, size: 8, offset: 288)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1445, file: !1446, line: 431, baseType: !1457, size: 8, offset: 296)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1445, file: !1446, line: 432, baseType: !1457, size: 8, offset: 304)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1445, file: !1446, line: 433, baseType: !1457, size: 8, offset: 312)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1445, file: !1446, line: 434, baseType: !1457, size: 8, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1445, file: !1446, line: 435, baseType: !1457, size: 8, offset: 328)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1445, file: !1446, line: 436, baseType: !1457, size: 8, offset: 336)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1445, file: !1446, line: 437, baseType: !1457, size: 8, offset: 344)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1445, file: !1446, line: 438, baseType: !1457, size: 8, offset: 352)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1445, file: !1446, line: 439, baseType: !1457, size: 8, offset: 360)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1445, file: !1446, line: 440, baseType: !1457, size: 8, offset: 368)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1445, file: !1446, line: 441, baseType: !1457, size: 8, offset: 376)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1445, file: !1446, line: 442, baseType: !1457, size: 8, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1445, file: !1446, line: 443, baseType: !1457, size: 8, offset: 392)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1445, file: !1446, line: 444, baseType: !1457, size: 8, offset: 400)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1445, file: !1446, line: 445, baseType: !1457, size: 8, offset: 408)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1445, file: !1446, line: 446, baseType: !1457, size: 8, offset: 416)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1445, file: !1446, line: 447, baseType: !1457, size: 8, offset: 424)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1445, file: !1446, line: 448, baseType: !1457, size: 8, offset: 432)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1445, file: !1446, line: 449, baseType: !1457, size: 8, offset: 440)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1445, file: !1446, line: 450, baseType: !1457, size: 8, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1445, file: !1446, line: 451, baseType: !1457, size: 8, offset: 456)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1445, file: !1446, line: 452, baseType: !1457, size: 8, offset: 464)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1445, file: !1446, line: 453, baseType: !1457, size: 8, offset: 472)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1445, file: !1446, line: 454, baseType: !1457, size: 8, offset: 480)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1445, file: !1446, line: 455, baseType: !1457, size: 8, offset: 488)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1445, file: !1446, line: 456, baseType: !1457, size: 8, offset: 496)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1445, file: !1446, line: 457, baseType: !1457, size: 8, offset: 504)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1445, file: !1446, line: 458, baseType: !1457, size: 8, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1445, file: !1446, line: 459, baseType: !1457, size: 8, offset: 520)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1445, file: !1446, line: 460, baseType: !1457, size: 8, offset: 528)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1445, file: !1446, line: 461, baseType: !1457, size: 8, offset: 536)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1445, file: !1446, line: 462, baseType: !1457, size: 8, offset: 544)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1445, file: !1446, line: 463, baseType: !1457, size: 8, offset: 552)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1445, file: !1446, line: 464, baseType: !1457, size: 8, offset: 560)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1445, file: !1446, line: 465, baseType: !1457, size: 8, offset: 568)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1445, file: !1446, line: 466, baseType: !1457, size: 8, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1445, file: !1446, line: 467, baseType: !1457, size: 8, offset: 584)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1445, file: !1446, line: 468, baseType: !1457, size: 8, offset: 592)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1445, file: !1446, line: 469, baseType: !1457, size: 8, offset: 600)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1445, file: !1446, line: 470, baseType: !1457, size: 8, offset: 608)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1445, file: !1446, line: 471, baseType: !1457, size: 8, offset: 616)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1445, file: !1446, line: 472, baseType: !1457, size: 8, offset: 624)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1445, file: !1446, line: 473, baseType: !1457, size: 8, offset: 632)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1445, file: !1446, line: 474, baseType: !1457, size: 8, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1445, file: !1446, line: 475, baseType: !1457, size: 8, offset: 648)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1445, file: !1446, line: 476, baseType: !1457, size: 8, offset: 656)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1445, file: !1446, line: 477, baseType: !1457, size: 8, offset: 664)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1445, file: !1446, line: 478, baseType: !1457, size: 8, offset: 672)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1445, file: !1446, line: 479, baseType: !1457, size: 8, offset: 680)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1445, file: !1446, line: 480, baseType: !1457, size: 8, offset: 688)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1445, file: !1446, line: 481, baseType: !1457, size: 8, offset: 696)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1445, file: !1446, line: 482, baseType: !1457, size: 8, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1445, file: !1446, line: 483, baseType: !1457, size: 8, offset: 712)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1445, file: !1446, line: 484, baseType: !1457, size: 8, offset: 720)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1445, file: !1446, line: 485, baseType: !1457, size: 8, offset: 728)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1445, file: !1446, line: 486, baseType: !1457, size: 8, offset: 736)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1445, file: !1446, line: 487, baseType: !1457, size: 8, offset: 744)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1445, file: !1446, line: 488, baseType: !1457, size: 8, offset: 752)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1445, file: !1446, line: 489, baseType: !1457, size: 8, offset: 760)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1445, file: !1446, line: 490, baseType: !1457, size: 8, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1445, file: !1446, line: 491, baseType: !1457, size: 8, offset: 776)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1445, file: !1446, line: 492, baseType: !1457, size: 8, offset: 784)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1445, file: !1446, line: 493, baseType: !1457, size: 8, offset: 792)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1445, file: !1446, line: 494, baseType: !1457, size: 8, offset: 800)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1445, file: !1446, line: 495, baseType: !1457, size: 8, offset: 808)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1445, file: !1446, line: 496, baseType: !1457, size: 8, offset: 816)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1445, file: !1446, line: 497, baseType: !1457, size: 8, offset: 824)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1445, file: !1446, line: 498, baseType: !1457, size: 8, offset: 832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1445, file: !1446, line: 499, baseType: !1457, size: 8, offset: 840)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1445, file: !1446, line: 500, baseType: !1457, size: 8, offset: 848)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1445, file: !1446, line: 501, baseType: !1457, size: 8, offset: 856)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1445, file: !1446, line: 502, baseType: !1457, size: 8, offset: 864)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1445, file: !1446, line: 503, baseType: !1457, size: 8, offset: 872)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1445, file: !1446, line: 504, baseType: !1457, size: 8, offset: 880)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1445, file: !1446, line: 505, baseType: !1457, size: 8, offset: 888)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1445, file: !1446, line: 506, baseType: !1457, size: 8, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1445, file: !1446, line: 507, baseType: !1457, size: 8, offset: 904)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1445, file: !1446, line: 508, baseType: !1457, size: 8, offset: 912)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1445, file: !1446, line: 509, baseType: !1457, size: 8, offset: 920)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1445, file: !1446, line: 510, baseType: !1457, size: 8, offset: 928)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1445, file: !1446, line: 511, baseType: !1457, size: 8, offset: 936)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1445, file: !1446, line: 512, baseType: !1457, size: 8, offset: 944)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1445, file: !1446, line: 513, baseType: !1457, size: 8, offset: 952)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1445, file: !1446, line: 514, baseType: !1457, size: 8, offset: 960)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1445, file: !1446, line: 515, baseType: !1457, size: 8, offset: 968)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1445, file: !1446, line: 516, baseType: !1457, size: 8, offset: 976)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1445, file: !1446, line: 517, baseType: !1457, size: 8, offset: 984)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1445, file: !1446, line: 518, baseType: !1457, size: 8, offset: 992)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1445, file: !1446, line: 519, baseType: !1457, size: 8, offset: 1000)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1445, file: !1446, line: 520, baseType: !1457, size: 8, offset: 1008)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1445, file: !1446, line: 521, baseType: !1457, size: 8, offset: 1016)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1445, file: !1446, line: 522, baseType: !1457, size: 8, offset: 1024)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1445, file: !1446, line: 523, baseType: !1457, size: 8, offset: 1032)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1445, file: !1446, line: 524, baseType: !1457, size: 8, offset: 1040)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1445, file: !1446, line: 525, baseType: !1457, size: 8, offset: 1048)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1445, file: !1446, line: 526, baseType: !1457, size: 8, offset: 1056)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1445, file: !1446, line: 527, baseType: !1457, size: 8, offset: 1064)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1445, file: !1446, line: 528, baseType: !1457, size: 8, offset: 1072)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1445, file: !1446, line: 529, baseType: !1457, size: 8, offset: 1080)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1445, file: !1446, line: 530, baseType: !1457, size: 8, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1445, file: !1446, line: 531, baseType: !1457, size: 8, offset: 1096)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1445, file: !1446, line: 532, baseType: !1457, size: 8, offset: 1104)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1445, file: !1446, line: 533, baseType: !1457, size: 8, offset: 1112)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1445, file: !1446, line: 534, baseType: !1457, size: 8, offset: 1120)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1445, file: !1446, line: 535, baseType: !1457, size: 8, offset: 1128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1445, file: !1446, line: 536, baseType: !1457, size: 8, offset: 1136)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1445, file: !1446, line: 537, baseType: !1457, size: 8, offset: 1144)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1445, file: !1446, line: 538, baseType: !1457, size: 8, offset: 1152)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1445, file: !1446, line: 539, baseType: !1457, size: 8, offset: 1160)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1445, file: !1446, line: 540, baseType: !1457, size: 8, offset: 1168)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1445, file: !1446, line: 541, baseType: !1457, size: 8, offset: 1176)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1445, file: !1446, line: 542, baseType: !1457, size: 8, offset: 1184)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1445, file: !1446, line: 543, baseType: !1457, size: 8, offset: 1192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1445, file: !1446, line: 544, baseType: !1457, size: 8, offset: 1200)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1445, file: !1446, line: 545, baseType: !1457, size: 8, offset: 1208)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1445, file: !1446, line: 546, baseType: !1457, size: 8, offset: 1216)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1445, file: !1446, line: 547, baseType: !1457, size: 8, offset: 1224)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1445, file: !1446, line: 548, baseType: !1457, size: 8, offset: 1232)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1445, file: !1446, line: 549, baseType: !1457, size: 8, offset: 1240)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1445, file: !1446, line: 550, baseType: !1457, size: 8, offset: 1248)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1445, file: !1446, line: 551, baseType: !1457, size: 8, offset: 1256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1445, file: !1446, line: 552, baseType: !1457, size: 8, offset: 1264)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1445, file: !1446, line: 553, baseType: !1457, size: 8, offset: 1272)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1445, file: !1446, line: 554, baseType: !1457, size: 8, offset: 1280)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1445, file: !1446, line: 555, baseType: !1457, size: 8, offset: 1288)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1445, file: !1446, line: 556, baseType: !1457, size: 8, offset: 1296)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1445, file: !1446, line: 557, baseType: !1457, size: 8, offset: 1304)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1445, file: !1446, line: 558, baseType: !1457, size: 8, offset: 1312)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1445, file: !1446, line: 559, baseType: !1457, size: 8, offset: 1320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1445, file: !1446, line: 560, baseType: !1457, size: 8, offset: 1328)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1445, file: !1446, line: 561, baseType: !1457, size: 8, offset: 1336)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1445, file: !1446, line: 562, baseType: !1457, size: 8, offset: 1344)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1445, file: !1446, line: 563, baseType: !1457, size: 8, offset: 1352)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1445, file: !1446, line: 564, baseType: !1457, size: 8, offset: 1360)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1445, file: !1446, line: 565, baseType: !1457, size: 8, offset: 1368)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1445, file: !1446, line: 566, baseType: !1457, size: 8, offset: 1376)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1445, file: !1446, line: 567, baseType: !1457, size: 8, offset: 1384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1445, file: !1446, line: 568, baseType: !1457, size: 8, offset: 1392)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1445, file: !1446, line: 569, baseType: !1457, size: 8, offset: 1400)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1445, file: !1446, line: 570, baseType: !1457, size: 8, offset: 1408)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1445, file: !1446, line: 571, baseType: !1457, size: 8, offset: 1416)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1445, file: !1446, line: 572, baseType: !1457, size: 8, offset: 1424)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1445, file: !1446, line: 573, baseType: !1457, size: 8, offset: 1432)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1445, file: !1446, line: 574, baseType: !1457, size: 8, offset: 1440)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !707, file: !164, line: 3405, baseType: !1613, size: 384)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !164, line: 3352, size: 384, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1613, file: !164, line: 3353, baseType: !743, size: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1613, file: !164, line: 3356, baseType: !1617, size: 192, offset: 192)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1446, line: 578, size: 192, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1617, file: !1446, line: 580, baseType: !566, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1617, file: !1446, line: 581, baseType: !566, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1617, file: !1446, line: 582, baseType: !566, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1617, file: !1446, line: 583, baseType: !566, size: 32, offset: 96)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1617, file: !1446, line: 584, baseType: !565, size: 8, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1617, file: !1446, line: 585, baseType: !565, size: 8, offset: 136)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1617, file: !1446, line: 586, baseType: !565, size: 8, offset: 144)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1617, file: !1446, line: 587, baseType: !565, size: 8, offset: 152)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1617, file: !1446, line: 588, baseType: !565, size: 8, offset: 160)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1617, file: !1446, line: 589, baseType: !565, size: 8, offset: 168)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1617, file: !1446, line: 590, baseType: !565, size: 8, offset: 176)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !610, file: !421, line: 178, baseType: !963, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !610, file: !421, line: 179, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !421, line: 150, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !421, line: 142, size: 320, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1634, file: !421, line: 144, baseType: !705, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1634, file: !421, line: 145, baseType: !589, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1634, file: !421, line: 146, baseType: !589, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1634, file: !421, line: 147, baseType: !1283, size: 32, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1634, file: !421, line: 148, baseType: !7, size: 32, offset: 224)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1634, file: !421, line: 149, baseType: !565, size: 8, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !610, file: !421, line: 180, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !421, line: 162, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !421, line: 159, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1645, file: !421, line: 160, baseType: !705, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1645, file: !421, line: 161, baseType: !676, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !610, file: !421, line: 181, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !421, line: 181, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !605, file: !421, line: 317, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 64, elements: !624)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !605, file: !421, line: 318, baseType: !1655, size: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !421, line: 188, size: 320, elements: !1656)
!1656 = !{!1657, !1659, !1714}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1655, file: !421, line: 190, baseType: !1658, size: 192)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 192, elements: !776)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1655, file: !421, line: 193, baseType: !1660, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !421, line: 206, size: 320, elements: !1662)
!1662 = !{!1663, !1699, !1700, !1701, !1713}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1661, file: !421, line: 208, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !590, line: 62, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1667, line: 538, size: 256, elements: !1668)
!1667 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1668 = !{!1669, !1673, !1679, !1690}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1666, file: !1667, line: 539, baseType: !1670, size: 32)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1667, line: 482, size: 32, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1670, file: !1667, line: 484, baseType: !7, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1666, file: !1667, line: 540, baseType: !1674, size: 192)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1667, line: 488, size: 192, elements: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1674, file: !1667, line: 489, baseType: !1670, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1674, file: !1667, line: 492, baseType: !571, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1674, file: !1667, line: 496, baseType: !705, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1666, file: !1667, line: 541, baseType: !1680, size: 256)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1667, line: 504, size: 256, elements: !1681)
!1681 = !{!1682, !1683, !1688, !1689}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1680, file: !1667, line: 505, baseType: !1670, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1680, file: !1667, line: 509, baseType: !1684, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1667, line: 501, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1139}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1680, file: !1667, line: 510, baseType: !1139, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1680, file: !1667, line: 513, baseType: !1664, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1666, file: !1667, line: 542, baseType: !1691, size: 128)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1667, line: 530, size: 128, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1691, file: !1667, line: 531, baseType: !1670, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1691, file: !1667, line: 534, baseType: !1695, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1667, line: 525, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!565, !705, !571, !659, !659}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1661, file: !421, line: 211, baseType: !7, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1661, file: !421, line: 214, baseType: !676, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1661, file: !421, line: 224, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !421, line: 202, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !421, line: 202, size: 128, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1704, file: !421, line: 202, baseType: !1707, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !421, line: 200, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !421, line: 200, size: 128, elements: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1708, file: !421, line: 200, baseType: !7, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1708, file: !421, line: 200, baseType: !7, size: 32, offset: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1708, file: !421, line: 200, baseType: !623, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1661, file: !421, line: 234, baseType: !1702, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1655, file: !421, line: 197, baseType: !676, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !605, file: !421, line: 319, baseType: !765, size: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !605, file: !421, line: 320, baseType: !784, size: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "next_regno_allocno", scope: !582, file: !580, line: 255, baseType: !579, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !582, file: !580, line: 260, baseType: !1719, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_loop_tree_node_t", file: !580, line: 73, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_loop_tree_node", file: !580, line: 83, size: 1728, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1734, !1735, !1739, !1741, !1742, !1743}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1721, file: !580, line: 86, baseType: !962, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !1721, file: !580, line: 87, baseType: !1004, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "subloop_next", scope: !1721, file: !580, line: 90, baseType: !1719, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1721, file: !580, line: 90, baseType: !1719, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "subloops", scope: !1721, file: !580, line: 93, baseType: !1719, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1721, file: !580, line: 93, baseType: !1719, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1721, file: !580, line: 95, baseType: !1719, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1721, file: !580, line: 98, baseType: !566, size: 32, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "to_remove_p", scope: !1721, file: !580, line: 105, baseType: !565, size: 8, offset: 480)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "regno_allocno_map", scope: !1721, file: !580, line: 114, baseType: !1733, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "entered_from_non_parent_p", scope: !1721, file: !580, line: 119, baseType: !565, size: 8, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "reg_pressure", scope: !1721, file: !580, line: 123, baseType: !1736, size: 864, offset: 608)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 864, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 27)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "all_allocnos", scope: !1721, file: !580, line: 127, baseType: !1740, size: 64, offset: 1472)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !590, line: 47, baseType: !643)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "border_allocnos", scope: !1721, file: !580, line: 130, baseType: !1740, size: 64, offset: 1536)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "modified_regnos", scope: !1721, file: !580, line: 134, baseType: !1740, size: 64, offset: 1600)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "local_copies", scope: !1721, file: !580, line: 137, baseType: !1740, size: 64, offset: 1664)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nrefs", scope: !582, file: !580, line: 266, baseType: !566, size: 32, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !582, file: !580, line: 268, baseType: !566, size: 32, offset: 352)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class", scope: !582, file: !580, line: 271, baseType: !390, size: 32, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class_cost", scope: !582, file: !580, line: 274, baseType: !566, size: 32, offset: 416)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "updated_cover_class_cost", scope: !582, file: !580, line: 274, baseType: !566, size: 32, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "memory_cost", scope: !582, file: !580, line: 282, baseType: !566, size: 32, offset: 480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "updated_memory_cost", scope: !582, file: !580, line: 282, baseType: !566, size: 32, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "excess_pressure_points_num", scope: !582, file: !580, line: 288, baseType: !566, size: 32, offset: 544)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "allocno_copies", scope: !582, file: !580, line: 292, baseType: !1753, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_copy_t", file: !580, line: 64, baseType: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_copy", file: !580, line: 506, size: 640, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1755, file: !580, line: 509, baseType: !566, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1755, file: !580, line: 512, baseType: !579, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !1755, file: !580, line: 512, baseType: !579, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1755, file: !580, line: 514, baseType: !566, size: 32, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_p", scope: !1755, file: !580, line: 515, baseType: !565, size: 8, offset: 224)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1755, file: !580, line: 521, baseType: !589, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "prev_first_allocno_copy", scope: !1755, file: !580, line: 524, baseType: !1753, size: 64, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "next_first_allocno_copy", scope: !1755, file: !580, line: 524, baseType: !1753, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "prev_second_allocno_copy", scope: !1755, file: !580, line: 527, baseType: !1753, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "next_second_allocno_copy", scope: !1755, file: !580, line: 527, baseType: !1753, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !1755, file: !580, line: 529, baseType: !1719, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !582, file: !580, line: 295, baseType: !579, size: 64, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_member", scope: !582, file: !580, line: 298, baseType: !579, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "first_coalesced_allocno", scope: !582, file: !580, line: 302, baseType: !579, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "next_coalesced_allocno", scope: !582, file: !580, line: 303, baseType: !579, size: 64, offset: 832)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "live_ranges", scope: !582, file: !580, line: 308, baseType: !1773, size: 64, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocno_live_range_t", file: !580, line: 62, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_live_range", file: !580, line: 199, size: 320, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "allocno", scope: !1775, file: !580, line: 202, baseType: !579, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1775, file: !580, line: 204, baseType: !566, size: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1775, file: !580, line: 204, baseType: !566, size: 32, offset: 96)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1775, file: !580, line: 207, baseType: !1773, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "start_next", scope: !1775, file: !580, line: 209, baseType: !1773, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "finish_next", scope: !1775, file: !580, line: 209, baseType: !1773, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !582, file: !580, line: 314, baseType: !566, size: 32, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !582, file: !580, line: 314, baseType: !566, size: 32, offset: 992)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array", scope: !582, file: !580, line: 319, baseType: !570, size: 64, offset: 1024)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_id", scope: !582, file: !580, line: 322, baseType: !566, size: 32, offset: 1088)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array_size", scope: !582, file: !580, line: 324, baseType: !7, size: 32, offset: 1120)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_regs", scope: !582, file: !580, line: 329, baseType: !1789, size: 64, offset: 1152)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !1790, line: 42, baseType: !659)
!1790 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "total_conflict_hard_regs", scope: !582, file: !580, line: 329, baseType: !1789, size: 64, offset: 1216)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocnos_num", scope: !582, file: !580, line: 332, baseType: !566, size: 32, offset: 1280)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "call_freq", scope: !582, file: !580, line: 335, baseType: !566, size: 32, offset: 1312)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "calls_crossed_num", scope: !582, file: !580, line: 337, baseType: !566, size: 32, offset: 1344)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest_p", scope: !582, file: !580, line: 342, baseType: !7, size: 1, offset: 1376, flags: DIFlagBitField, extraData: i64 1376)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "somewhere_renamed_p", scope: !582, file: !580, line: 346, baseType: !7, size: 1, offset: 1377, flags: DIFlagBitField, extraData: i64 1376)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "child_renamed_p", scope: !582, file: !580, line: 349, baseType: !7, size: 1, offset: 1378, flags: DIFlagBitField, extraData: i64 1376)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dont_reassign_p", scope: !582, file: !580, line: 354, baseType: !7, size: 1, offset: 1379, flags: DIFlagBitField, extraData: i64 1376)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "no_stack_reg_p", scope: !582, file: !580, line: 359, baseType: !7, size: 1, offset: 1380, flags: DIFlagBitField, extraData: i64 1376)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "total_no_stack_reg_p", scope: !582, file: !580, line: 359, baseType: !7, size: 1, offset: 1381, flags: DIFlagBitField, extraData: i64 1376)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "bad_spill_p", scope: !582, file: !580, line: 364, baseType: !7, size: 1, offset: 1382, flags: DIFlagBitField, extraData: i64 1376)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "in_graph_p", scope: !582, file: !580, line: 367, baseType: !7, size: 1, offset: 1383, flags: DIFlagBitField, extraData: i64 1376)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "assigned_p", scope: !582, file: !580, line: 370, baseType: !7, size: 1, offset: 1384, flags: DIFlagBitField, extraData: i64 1376)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "may_be_spilled_p", scope: !582, file: !580, line: 373, baseType: !7, size: 1, offset: 1385, flags: DIFlagBitField, extraData: i64 1376)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "splay_removed_p", scope: !582, file: !580, line: 376, baseType: !7, size: 1, offset: 1386, flags: DIFlagBitField, extraData: i64 1376)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_vec_p", scope: !582, file: !580, line: 381, baseType: !7, size: 1, offset: 1387, flags: DIFlagBitField, extraData: i64 1376)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest", scope: !582, file: !580, line: 385, baseType: !579, size: 64, offset: 1408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "hard_reg_costs", scope: !582, file: !580, line: 400, baseType: !1809, size: 64, offset: 1472)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "updated_hard_reg_costs", scope: !582, file: !580, line: 400, baseType: !1809, size: 64, offset: 1536)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_reg_costs", scope: !582, file: !580, line: 407, baseType: !1809, size: 64, offset: 1600)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "updated_conflict_hard_reg_costs", scope: !582, file: !580, line: 407, baseType: !1809, size: 64, offset: 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "left_conflicts_size", scope: !582, file: !580, line: 411, baseType: !566, size: 32, offset: 1728)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "available_regs_num", scope: !582, file: !580, line: 414, baseType: !566, size: 32, offset: 1760)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "next_bucket_allocno", scope: !582, file: !580, line: 417, baseType: !579, size: 64, offset: 1792)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bucket_allocno", scope: !582, file: !580, line: 418, baseType: !579, size: 64, offset: 1856)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !582, file: !580, line: 420, baseType: !566, size: 32, offset: 1920)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !576, file: !3, line: 55, baseType: !579, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !3, line: 57, baseType: !574, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "visited_p", scope: !576, file: !3, line: 59, baseType: !565, size: 8, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "deps_num", scope: !576, file: !3, line: 61, baseType: !566, size: 32, offset: 224)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !576, file: !3, line: 67, baseType: !573, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !576, file: !3, line: 69, baseType: !589, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_lr_bb_info", file: !1826, line: 826, size: 256, elements: !1827)
!1826 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1825, file: !1826, line: 829, baseType: !1740, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1825, file: !1826, line: 831, baseType: !1740, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1825, file: !1826, line: 834, baseType: !1740, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1825, file: !1826, line: 835, baseType: !1740, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_move_t_heap", file: !3, line: 619, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_move_t_heap", file: !3, line: 619, size: 128, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1834, file: !3, line: 619, baseType: !1837, size: 128)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_move_t_base", file: !3, line: 618, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_move_t_base", file: !3, line: 618, size: 128, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1838, file: !3, line: 618, baseType: !7, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1838, file: !3, line: 618, baseType: !7, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1838, file: !3, line: 618, baseType: !1843, size: 64, offset: 64)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 64, elements: !624)
!1844 = !{!0, !1845, !1847, !1849, !1851, !1853, !1855, !1860, !1862, !1864, !1866, !1868}
!1845 = !DIGlobalVariableExpression(var: !1846, expr: !DIExpression())
!1846 = distinct !DIGlobalVariable(name: "at_bb_end", scope: !2, file: !3, line: 74, type: !573, isLocal: true, isDefinition: true)
!1847 = !DIGlobalVariableExpression(var: !1848, expr: !DIExpression())
!1848 = distinct !DIGlobalVariable(name: "max_regno_before_changing", scope: !2, file: !3, line: 79, type: !566, isLocal: true, isDefinition: true)
!1849 = !DIGlobalVariableExpression(var: !1850, expr: !DIExpression())
!1850 = distinct !DIGlobalVariable(name: "local_allocno_bitmap", scope: !2, file: !3, line: 428, type: !1740, isLocal: true, isDefinition: true)
!1851 = !DIGlobalVariableExpression(var: !1852, expr: !DIExpression())
!1852 = distinct !DIGlobalVariable(name: "used_regno_bitmap", scope: !2, file: !3, line: 433, type: !1740, isLocal: true, isDefinition: true)
!1853 = !DIGlobalVariableExpression(var: !1854, expr: !DIExpression())
!1854 = distinct !DIGlobalVariable(name: "renamed_regno_bitmap", scope: !2, file: !3, line: 438, type: !1740, isLocal: true, isDefinition: true)
!1855 = !DIGlobalVariableExpression(var: !1856, expr: !DIExpression())
!1856 = distinct !DIGlobalVariable(name: "hard_regno_last_set_check", scope: !2, file: !3, line: 607, type: !1857, isLocal: true, isDefinition: true)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 1696, elements: !1858)
!1858 = !{!1859}
!1859 = !DISubrange(count: 53)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(name: "allocno_last_set", scope: !2, file: !3, line: 611, type: !573, isLocal: true, isDefinition: true)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(name: "allocno_last_set_check", scope: !2, file: !3, line: 615, type: !1809, isLocal: true, isDefinition: true)
!1864 = !DIGlobalVariableExpression(var: !1865, expr: !DIExpression())
!1865 = distinct !DIGlobalVariable(name: "move_vec", scope: !2, file: !3, line: 623, type: !1832, isLocal: true, isDefinition: true)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(name: "curr_tick", scope: !2, file: !3, line: 628, type: !566, isLocal: true, isDefinition: true)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(name: "hard_regno_last_set", scope: !2, file: !3, line: 603, type: !1870, isLocal: true, isDefinition: true)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 3392, elements: !1858)
!1871 = !{i32 2, !"Dwarf Version", i32 4}
!1872 = !{i32 2, !"Debug Info Version", i32 3}
!1873 = !{i32 1, !"wchar_size", i32 4}
!1874 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1875 = distinct !DISubprogram(name: "vprintf", scope: !1876, file: !1876, line: 39, type: !1877, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1887)
!1876 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!566, !1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !571)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1881, file: !3, baseType: !7, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1881, file: !3, baseType: !7, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1881, file: !3, baseType: !570, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1881, file: !3, baseType: !570, size: 64, offset: 128)
!1887 = !{!1888, !1889}
!1888 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1875, file: !1876, line: 39, type: !1879)
!1889 = !DILocalVariable(name: "__arg", arg: 2, scope: !1875, file: !1876, line: 39, type: !1880)
!1890 = !DILocation(line: 0, scope: !1875)
!1891 = !DILocation(line: 41, column: 20, scope: !1875)
!1892 = !DILocation(line: 41, column: 10, scope: !1875)
!1893 = !DILocation(line: 41, column: 3, scope: !1875)
!1894 = distinct !DISubprogram(name: "getchar", scope: !1876, file: !1876, line: 47, type: !1895, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!566}
!1897 = !{}
!1898 = !DILocation(line: 49, column: 16, scope: !1894)
!1899 = !DILocation(line: 49, column: 10, scope: !1894)
!1900 = !DILocation(line: 49, column: 3, scope: !1894)
!1901 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1876, file: !1876, line: 56, type: !1902, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!566, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1906, line: 7, baseType: !1907)
!1906 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1908, line: 49, size: 1728, elements: !1909)
!1908 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1925, !1927, !1928, !1929, !1932, !1934, !1935, !1936, !1939, !1941, !1944, !1947, !1948, !1949, !1950, !1951}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1907, file: !1908, line: 51, baseType: !566, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1907, file: !1908, line: 54, baseType: !568, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1907, file: !1908, line: 55, baseType: !568, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1907, file: !1908, line: 56, baseType: !568, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1907, file: !1908, line: 57, baseType: !568, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1907, file: !1908, line: 58, baseType: !568, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1907, file: !1908, line: 59, baseType: !568, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1907, file: !1908, line: 60, baseType: !568, size: 64, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1907, file: !1908, line: 61, baseType: !568, size: 64, offset: 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1907, file: !1908, line: 64, baseType: !568, size: 64, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1907, file: !1908, line: 65, baseType: !568, size: 64, offset: 640)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1907, file: !1908, line: 66, baseType: !568, size: 64, offset: 704)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1907, file: !1908, line: 68, baseType: !1923, size: 64, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1908, line: 36, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1907, file: !1908, line: 70, baseType: !1926, size: 64, offset: 832)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1907, file: !1908, line: 72, baseType: !566, size: 32, offset: 896)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1907, file: !1908, line: 73, baseType: !566, size: 32, offset: 928)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1907, file: !1908, line: 74, baseType: !1930, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1931, line: 152, baseType: !676)
!1931 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1907, file: !1908, line: 77, baseType: !1933, size: 16, offset: 1024)
!1933 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1907, file: !1908, line: 78, baseType: !1457, size: 8, offset: 1040)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1907, file: !1908, line: 79, baseType: !800, size: 8, offset: 1048)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1907, file: !1908, line: 81, baseType: !1937, size: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1908, line: 43, baseType: null)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1907, file: !1908, line: 89, baseType: !1940, size: 64, offset: 1152)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1931, line: 153, baseType: !676)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1907, file: !1908, line: 91, baseType: !1942, size: 64, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1908, line: 37, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1907, file: !1908, line: 92, baseType: !1945, size: 64, offset: 1280)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1908, line: 38, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1907, file: !1908, line: 93, baseType: !1926, size: 64, offset: 1344)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1907, file: !1908, line: 94, baseType: !570, size: 64, offset: 1408)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1907, file: !1908, line: 95, baseType: !1154, size: 64, offset: 1472)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1907, file: !1908, line: 96, baseType: !566, size: 32, offset: 1536)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1907, file: !1908, line: 98, baseType: !1952, size: 160, offset: 1568)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 160, elements: !1953)
!1953 = !{!1954}
!1954 = !DISubrange(count: 20)
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "__fp", arg: 1, scope: !1901, file: !1876, line: 56, type: !1904)
!1957 = !DILocation(line: 0, scope: !1901)
!1958 = !DILocation(line: 58, column: 10, scope: !1901)
!1959 = !DILocation(line: 58, column: 3, scope: !1901)
!1960 = distinct !DISubprogram(name: "getc_unlocked", scope: !1876, file: !1876, line: 66, type: !1902, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1961)
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "__fp", arg: 1, scope: !1960, file: !1876, line: 66, type: !1904)
!1963 = !DILocation(line: 0, scope: !1960)
!1964 = !DILocation(line: 68, column: 10, scope: !1960)
!1965 = !DILocation(line: 68, column: 3, scope: !1960)
!1966 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1876, file: !1876, line: 73, type: !1895, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1967 = !DILocation(line: 75, column: 10, scope: !1966)
!1968 = !DILocation(line: 75, column: 3, scope: !1966)
!1969 = distinct !DISubprogram(name: "putchar", scope: !1876, file: !1876, line: 82, type: !1970, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!566, !566}
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "__c", arg: 1, scope: !1969, file: !1876, line: 82, type: !566)
!1974 = !DILocation(line: 0, scope: !1969)
!1975 = !DILocation(line: 84, column: 21, scope: !1969)
!1976 = !DILocation(line: 84, column: 10, scope: !1969)
!1977 = !DILocation(line: 84, column: 3, scope: !1969)
!1978 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1876, file: !1876, line: 91, type: !1979, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!566, !566, !1904}
!1981 = !{!1982, !1983}
!1982 = !DILocalVariable(name: "__c", arg: 1, scope: !1978, file: !1876, line: 91, type: !566)
!1983 = !DILocalVariable(name: "__stream", arg: 2, scope: !1978, file: !1876, line: 91, type: !1904)
!1984 = !DILocation(line: 0, scope: !1978)
!1985 = !DILocation(line: 93, column: 10, scope: !1978)
!1986 = !DILocation(line: 93, column: 3, scope: !1978)
!1987 = distinct !DISubprogram(name: "putc_unlocked", scope: !1876, file: !1876, line: 101, type: !1979, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1988)
!1988 = !{!1989, !1990}
!1989 = !DILocalVariable(name: "__c", arg: 1, scope: !1987, file: !1876, line: 101, type: !566)
!1990 = !DILocalVariable(name: "__stream", arg: 2, scope: !1987, file: !1876, line: 101, type: !1904)
!1991 = !DILocation(line: 0, scope: !1987)
!1992 = !DILocation(line: 103, column: 10, scope: !1987)
!1993 = !DILocation(line: 103, column: 3, scope: !1987)
!1994 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1876, file: !1876, line: 108, type: !1970, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1995 = !{!1996}
!1996 = !DILocalVariable(name: "__c", arg: 1, scope: !1994, file: !1876, line: 108, type: !566)
!1997 = !DILocation(line: 0, scope: !1994)
!1998 = !DILocation(line: 110, column: 10, scope: !1994)
!1999 = !DILocation(line: 110, column: 3, scope: !1994)
!2000 = distinct !DISubprogram(name: "getline", scope: !1876, file: !1876, line: 118, type: !2001, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!2003, !567, !2004, !1904}
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1931, line: 193, baseType: !676)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!2005 = !{!2006, !2007, !2008}
!2006 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2000, file: !1876, line: 118, type: !567)
!2007 = !DILocalVariable(name: "__n", arg: 2, scope: !2000, file: !1876, line: 118, type: !2004)
!2008 = !DILocalVariable(name: "__stream", arg: 3, scope: !2000, file: !1876, line: 118, type: !1904)
!2009 = !DILocation(line: 0, scope: !2000)
!2010 = !DILocation(line: 120, column: 10, scope: !2000)
!2011 = !DILocation(line: 120, column: 3, scope: !2000)
!2012 = distinct !DISubprogram(name: "feof_unlocked", scope: !1876, file: !1876, line: 128, type: !1902, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "__stream", arg: 1, scope: !2012, file: !1876, line: 128, type: !1904)
!2015 = !DILocation(line: 0, scope: !2012)
!2016 = !DILocation(line: 130, column: 10, scope: !2012)
!2017 = !DILocation(line: 130, column: 3, scope: !2012)
!2018 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1876, file: !1876, line: 135, type: !1902, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2019 = !{!2020}
!2020 = !DILocalVariable(name: "__stream", arg: 1, scope: !2018, file: !1876, line: 135, type: !1904)
!2021 = !DILocation(line: 0, scope: !2018)
!2022 = !DILocation(line: 137, column: 10, scope: !2018)
!2023 = !DILocation(line: 137, column: 3, scope: !2018)
!2024 = distinct !DISubprogram(name: "tolower", scope: !2025, file: !2025, line: 207, type: !1970, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2025 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "__c", arg: 1, scope: !2024, file: !2025, line: 207, type: !566)
!2028 = !DILocation(line: 0, scope: !2024)
!2029 = !DILocation(line: 209, column: 22, scope: !2024)
!2030 = !DILocation(line: 209, column: 39, scope: !2024)
!2031 = !DILocation(line: 209, column: 38, scope: !2024)
!2032 = !DILocation(line: 209, column: 37, scope: !2024)
!2033 = !DILocation(line: 209, column: 10, scope: !2024)
!2034 = !DILocation(line: 209, column: 3, scope: !2024)
!2035 = distinct !DISubprogram(name: "toupper", scope: !2025, file: !2025, line: 213, type: !1970, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "__c", arg: 1, scope: !2035, file: !2025, line: 213, type: !566)
!2038 = !DILocation(line: 0, scope: !2035)
!2039 = !DILocation(line: 215, column: 22, scope: !2035)
!2040 = !DILocation(line: 215, column: 39, scope: !2035)
!2041 = !DILocation(line: 215, column: 38, scope: !2035)
!2042 = !DILocation(line: 215, column: 37, scope: !2035)
!2043 = !DILocation(line: 215, column: 10, scope: !2035)
!2044 = !DILocation(line: 215, column: 3, scope: !2035)
!2045 = distinct !DISubprogram(name: "atoi", scope: !2046, file: !2046, line: 361, type: !2047, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2046 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!566, !571}
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2045, file: !2046, line: 361, type: !571)
!2051 = !DILocation(line: 0, scope: !2045)
!2052 = !DILocation(line: 363, column: 16, scope: !2045)
!2053 = !DILocation(line: 363, column: 10, scope: !2045)
!2054 = !DILocation(line: 363, column: 3, scope: !2045)
!2055 = distinct !DISubprogram(name: "atol", scope: !2046, file: !2046, line: 366, type: !2056, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!676, !571}
!2058 = !{!2059}
!2059 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2055, file: !2046, line: 366, type: !571)
!2060 = !DILocation(line: 0, scope: !2055)
!2061 = !DILocation(line: 368, column: 10, scope: !2055)
!2062 = !DILocation(line: 368, column: 3, scope: !2055)
!2063 = distinct !DISubprogram(name: "atoll", scope: !2046, file: !2046, line: 373, type: !2064, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!2066, !571}
!2066 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2067 = !{!2068}
!2068 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2063, file: !2046, line: 373, type: !571)
!2069 = !DILocation(line: 0, scope: !2063)
!2070 = !DILocation(line: 375, column: 10, scope: !2063)
!2071 = !DILocation(line: 375, column: 3, scope: !2063)
!2072 = distinct !DISubprogram(name: "bsearch", scope: !2073, file: !2073, line: 20, type: !2074, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2077)
!2073 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!570, !1139, !1139, !1154, !1154, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2046, line: 808, baseType: !1143)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2078 = !DILocalVariable(name: "__key", arg: 1, scope: !2072, file: !2073, line: 20, type: !1139)
!2079 = !DILocalVariable(name: "__base", arg: 2, scope: !2072, file: !2073, line: 20, type: !1139)
!2080 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2072, file: !2073, line: 20, type: !1154)
!2081 = !DILocalVariable(name: "__size", arg: 4, scope: !2072, file: !2073, line: 20, type: !1154)
!2082 = !DILocalVariable(name: "__compar", arg: 5, scope: !2072, file: !2073, line: 21, type: !2076)
!2083 = !DILocalVariable(name: "__l", scope: !2072, file: !2073, line: 23, type: !1154)
!2084 = !DILocalVariable(name: "__u", scope: !2072, file: !2073, line: 23, type: !1154)
!2085 = !DILocalVariable(name: "__idx", scope: !2072, file: !2073, line: 23, type: !1154)
!2086 = !DILocalVariable(name: "__p", scope: !2072, file: !2073, line: 24, type: !1139)
!2087 = !DILocalVariable(name: "__comparison", scope: !2072, file: !2073, line: 25, type: !566)
!2088 = !DILocation(line: 0, scope: !2072)
!2089 = !DILocation(line: 29, column: 3, scope: !2072)
!2090 = !DILocation(line: 27, column: 7, scope: !2072)
!2091 = !DILocation(line: 29, column: 14, scope: !2072)
!2092 = !DILocation(line: 31, column: 20, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2072, file: !2073, line: 30, column: 5)
!2094 = !DILocation(line: 31, column: 27, scope: !2093)
!2095 = !DILocation(line: 32, column: 56, scope: !2093)
!2096 = !DILocation(line: 32, column: 47, scope: !2093)
!2097 = !DILocation(line: 33, column: 22, scope: !2093)
!2098 = !DILocation(line: 34, column: 24, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2093, file: !2073, line: 34, column: 11)
!2100 = !DILocation(line: 34, column: 11, scope: !2093)
!2101 = !DILocation(line: 36, column: 29, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !2073, line: 36, column: 16)
!2103 = !DILocation(line: 36, column: 16, scope: !2099)
!2104 = !DILocation(line: 37, column: 14, scope: !2102)
!2105 = distinct !{!2105, !2089, !2106}
!2106 = !DILocation(line: 40, column: 5, scope: !2072)
!2107 = !DILocation(line: 43, column: 1, scope: !2072)
!2108 = distinct !DISubprogram(name: "atof", scope: !2109, file: !2109, line: 25, type: !2110, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!2112, !571}
!2112 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2108, file: !2109, line: 25, type: !571)
!2115 = !DILocation(line: 0, scope: !2108)
!2116 = !DILocation(line: 27, column: 10, scope: !2108)
!2117 = !DILocation(line: 27, column: 3, scope: !2108)
!2118 = distinct !DISubprogram(name: "strtoimax", scope: !2119, file: !2119, line: 324, type: !2120, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2119 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2122, !1879, !2125, !566}
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2123, line: 101, baseType: !2124)
!2123 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1931, line: 72, baseType: !676)
!2125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !567)
!2126 = !{!2127, !2128, !2129}
!2127 = !DILocalVariable(name: "nptr", arg: 1, scope: !2118, file: !2119, line: 324, type: !1879)
!2128 = !DILocalVariable(name: "endptr", arg: 2, scope: !2118, file: !2119, line: 324, type: !2125)
!2129 = !DILocalVariable(name: "base", arg: 3, scope: !2118, file: !2119, line: 324, type: !566)
!2130 = !DILocation(line: 0, scope: !2118)
!2131 = !DILocation(line: 327, column: 10, scope: !2118)
!2132 = !DILocation(line: 327, column: 3, scope: !2118)
!2133 = distinct !DISubprogram(name: "strtoumax", scope: !2119, file: !2119, line: 336, type: !2134, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !1879, !2125, !566}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2123, line: 102, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1931, line: 73, baseType: !659)
!2138 = !{!2139, !2140, !2141}
!2139 = !DILocalVariable(name: "nptr", arg: 1, scope: !2133, file: !2119, line: 336, type: !1879)
!2140 = !DILocalVariable(name: "endptr", arg: 2, scope: !2133, file: !2119, line: 336, type: !2125)
!2141 = !DILocalVariable(name: "base", arg: 3, scope: !2133, file: !2119, line: 336, type: !566)
!2142 = !DILocation(line: 0, scope: !2133)
!2143 = !DILocation(line: 339, column: 10, scope: !2133)
!2144 = !DILocation(line: 339, column: 3, scope: !2133)
!2145 = distinct !DISubprogram(name: "wcstoimax", scope: !2119, file: !2119, line: 348, type: !2146, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2122, !2148, !2152, !566}
!2148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2151)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2119, line: 34, baseType: !566)
!2152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "nptr", arg: 1, scope: !2145, file: !2119, line: 348, type: !2148)
!2157 = !DILocalVariable(name: "endptr", arg: 2, scope: !2145, file: !2119, line: 348, type: !2152)
!2158 = !DILocalVariable(name: "base", arg: 3, scope: !2145, file: !2119, line: 348, type: !566)
!2159 = !DILocation(line: 0, scope: !2145)
!2160 = !DILocation(line: 351, column: 10, scope: !2145)
!2161 = !DILocation(line: 351, column: 3, scope: !2145)
!2162 = distinct !DISubprogram(name: "wcstoumax", scope: !2119, file: !2119, line: 362, type: !2163, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2136, !2148, !2152, !566}
!2165 = !{!2166, !2167, !2168}
!2166 = !DILocalVariable(name: "nptr", arg: 1, scope: !2162, file: !2119, line: 362, type: !2148)
!2167 = !DILocalVariable(name: "endptr", arg: 2, scope: !2162, file: !2119, line: 362, type: !2152)
!2168 = !DILocalVariable(name: "base", arg: 3, scope: !2162, file: !2119, line: 362, type: !566)
!2169 = !DILocation(line: 0, scope: !2162)
!2170 = !DILocation(line: 365, column: 10, scope: !2162)
!2171 = !DILocation(line: 365, column: 3, scope: !2162)
!2172 = distinct !DISubprogram(name: "stat", scope: !2173, file: !2173, line: 453, type: !2174, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2211)
!2173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!566, !571, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2178, line: 46, size: 1152, elements: !2179)
!2178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2179 = !{!2180, !2182, !2184, !2186, !2188, !2190, !2192, !2193, !2194, !2195, !2197, !2199, !2207, !2208, !2209}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2177, file: !2178, line: 48, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1931, line: 145, baseType: !659)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2177, file: !2178, line: 53, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1931, line: 148, baseType: !659)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2177, file: !2178, line: 61, baseType: !2185, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1931, line: 151, baseType: !659)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2177, file: !2178, line: 62, baseType: !2187, size: 32, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1931, line: 150, baseType: !7)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2177, file: !2178, line: 64, baseType: !2189, size: 32, offset: 224)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1931, line: 146, baseType: !7)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2177, file: !2178, line: 65, baseType: !2191, size: 32, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1931, line: 147, baseType: !7)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2177, file: !2178, line: 67, baseType: !566, size: 32, offset: 288)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2177, file: !2178, line: 69, baseType: !2181, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2177, file: !2178, line: 74, baseType: !1930, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2177, file: !2178, line: 78, baseType: !2196, size: 64, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1931, line: 174, baseType: !676)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2177, file: !2178, line: 80, baseType: !2198, size: 64, offset: 512)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1931, line: 179, baseType: !676)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2177, file: !2178, line: 91, baseType: !2200, size: 128, offset: 576)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2201, line: 10, size: 128, elements: !2202)
!2201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2202 = !{!2203, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2200, file: !2201, line: 12, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1931, line: 160, baseType: !676)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2200, file: !2201, line: 16, baseType: !2206, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1931, line: 196, baseType: !676)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2177, file: !2178, line: 92, baseType: !2200, size: 128, offset: 704)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2177, file: !2178, line: 93, baseType: !2200, size: 128, offset: 832)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2177, file: !2178, line: 106, baseType: !2210, size: 192, offset: 960)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2206, size: 192, elements: !776)
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "__path", arg: 1, scope: !2172, file: !2173, line: 453, type: !571)
!2213 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2172, file: !2173, line: 453, type: !2176)
!2214 = !DILocation(line: 0, scope: !2172)
!2215 = !DILocation(line: 455, column: 10, scope: !2172)
!2216 = !DILocation(line: 455, column: 3, scope: !2172)
!2217 = distinct !DISubprogram(name: "lstat", scope: !2173, file: !2173, line: 460, type: !2174, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "__path", arg: 1, scope: !2217, file: !2173, line: 460, type: !571)
!2220 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2217, file: !2173, line: 460, type: !2176)
!2221 = !DILocation(line: 0, scope: !2217)
!2222 = !DILocation(line: 462, column: 10, scope: !2217)
!2223 = !DILocation(line: 462, column: 3, scope: !2217)
!2224 = distinct !DISubprogram(name: "fstat", scope: !2173, file: !2173, line: 467, type: !2225, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!566, !566, !2176}
!2227 = !{!2228, !2229}
!2228 = !DILocalVariable(name: "__fd", arg: 1, scope: !2224, file: !2173, line: 467, type: !566)
!2229 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2224, file: !2173, line: 467, type: !2176)
!2230 = !DILocation(line: 0, scope: !2224)
!2231 = !DILocation(line: 469, column: 10, scope: !2224)
!2232 = !DILocation(line: 469, column: 3, scope: !2224)
!2233 = distinct !DISubprogram(name: "fstatat", scope: !2173, file: !2173, line: 474, type: !2234, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!566, !566, !571, !2176, !566}
!2236 = !{!2237, !2238, !2239, !2240}
!2237 = !DILocalVariable(name: "__fd", arg: 1, scope: !2233, file: !2173, line: 474, type: !566)
!2238 = !DILocalVariable(name: "__filename", arg: 2, scope: !2233, file: !2173, line: 474, type: !571)
!2239 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2233, file: !2173, line: 474, type: !2176)
!2240 = !DILocalVariable(name: "__flag", arg: 4, scope: !2233, file: !2173, line: 474, type: !566)
!2241 = !DILocation(line: 0, scope: !2233)
!2242 = !DILocation(line: 477, column: 10, scope: !2233)
!2243 = !DILocation(line: 477, column: 3, scope: !2233)
!2244 = distinct !DISubprogram(name: "mknod", scope: !2173, file: !2173, line: 483, type: !2245, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!566, !571, !2187, !2181}
!2247 = !{!2248, !2249, !2250}
!2248 = !DILocalVariable(name: "__path", arg: 1, scope: !2244, file: !2173, line: 483, type: !571)
!2249 = !DILocalVariable(name: "__mode", arg: 2, scope: !2244, file: !2173, line: 483, type: !2187)
!2250 = !DILocalVariable(name: "__dev", arg: 3, scope: !2244, file: !2173, line: 483, type: !2181)
!2251 = !DILocation(line: 0, scope: !2244)
!2252 = !DILocation(line: 485, column: 10, scope: !2244)
!2253 = !DILocation(line: 485, column: 3, scope: !2244)
!2254 = distinct !DISubprogram(name: "mknodat", scope: !2173, file: !2173, line: 491, type: !2255, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!566, !566, !571, !2187, !2181}
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "__fd", arg: 1, scope: !2254, file: !2173, line: 491, type: !566)
!2259 = !DILocalVariable(name: "__path", arg: 2, scope: !2254, file: !2173, line: 491, type: !571)
!2260 = !DILocalVariable(name: "__mode", arg: 3, scope: !2254, file: !2173, line: 491, type: !2187)
!2261 = !DILocalVariable(name: "__dev", arg: 4, scope: !2254, file: !2173, line: 491, type: !2181)
!2262 = !DILocation(line: 0, scope: !2254)
!2263 = !DILocation(line: 494, column: 10, scope: !2254)
!2264 = !DILocation(line: 494, column: 3, scope: !2254)
!2265 = distinct !DISubprogram(name: "stat64", scope: !2173, file: !2173, line: 502, type: !2266, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!566, !571, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2178, line: 119, size: 1152, elements: !2270)
!2270 = !{!2271, !2272, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2284, !2285, !2286, !2287}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2269, file: !2178, line: 121, baseType: !2181, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2269, file: !2178, line: 123, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1931, line: 149, baseType: !659)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2269, file: !2178, line: 124, baseType: !2185, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2269, file: !2178, line: 125, baseType: !2187, size: 32, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2269, file: !2178, line: 132, baseType: !2189, size: 32, offset: 224)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2269, file: !2178, line: 133, baseType: !2191, size: 32, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2269, file: !2178, line: 135, baseType: !566, size: 32, offset: 288)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2269, file: !2178, line: 136, baseType: !2181, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2269, file: !2178, line: 137, baseType: !1930, size: 64, offset: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2269, file: !2178, line: 143, baseType: !2196, size: 64, offset: 448)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2269, file: !2178, line: 144, baseType: !2283, size: 64, offset: 512)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1931, line: 180, baseType: !676)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2269, file: !2178, line: 152, baseType: !2200, size: 128, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2269, file: !2178, line: 153, baseType: !2200, size: 128, offset: 704)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2269, file: !2178, line: 154, baseType: !2200, size: 128, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2269, file: !2178, line: 164, baseType: !2210, size: 192, offset: 960)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "__path", arg: 1, scope: !2265, file: !2173, line: 502, type: !571)
!2290 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2265, file: !2173, line: 502, type: !2268)
!2291 = !DILocation(line: 0, scope: !2265)
!2292 = !DILocation(line: 504, column: 10, scope: !2265)
!2293 = !DILocation(line: 504, column: 3, scope: !2265)
!2294 = distinct !DISubprogram(name: "lstat64", scope: !2173, file: !2173, line: 509, type: !2266, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "__path", arg: 1, scope: !2294, file: !2173, line: 509, type: !571)
!2297 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2294, file: !2173, line: 509, type: !2268)
!2298 = !DILocation(line: 0, scope: !2294)
!2299 = !DILocation(line: 511, column: 10, scope: !2294)
!2300 = !DILocation(line: 511, column: 3, scope: !2294)
!2301 = distinct !DISubprogram(name: "fstat64", scope: !2173, file: !2173, line: 516, type: !2302, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!566, !566, !2268}
!2304 = !{!2305, !2306}
!2305 = !DILocalVariable(name: "__fd", arg: 1, scope: !2301, file: !2173, line: 516, type: !566)
!2306 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2301, file: !2173, line: 516, type: !2268)
!2307 = !DILocation(line: 0, scope: !2301)
!2308 = !DILocation(line: 518, column: 10, scope: !2301)
!2309 = !DILocation(line: 518, column: 3, scope: !2301)
!2310 = distinct !DISubprogram(name: "fstatat64", scope: !2173, file: !2173, line: 523, type: !2311, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!566, !566, !571, !2268, !566}
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DILocalVariable(name: "__fd", arg: 1, scope: !2310, file: !2173, line: 523, type: !566)
!2315 = !DILocalVariable(name: "__filename", arg: 2, scope: !2310, file: !2173, line: 523, type: !571)
!2316 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2310, file: !2173, line: 523, type: !2268)
!2317 = !DILocalVariable(name: "__flag", arg: 4, scope: !2310, file: !2173, line: 523, type: !566)
!2318 = !DILocation(line: 0, scope: !2310)
!2319 = !DILocation(line: 526, column: 10, scope: !2310)
!2320 = !DILocation(line: 526, column: 3, scope: !2310)
!2321 = distinct !DISubprogram(name: "ira_debug_move_list", scope: !3, file: !3, line: 147, type: !2322, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !574}
!2324 = !{!2325}
!2325 = !DILocalVariable(name: "list", arg: 1, scope: !2321, file: !3, line: 147, type: !574)
!2326 = !DILocation(line: 0, scope: !2321)
!2327 = !DILocation(line: 149, column: 20, scope: !2321)
!2328 = !DILocation(line: 149, column: 3, scope: !2321)
!2329 = !DILocation(line: 150, column: 1, scope: !2321)
!2330 = distinct !DISubprogram(name: "print_move_list", scope: !3, file: !3, line: 134, type: !2331, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !1904, !574}
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "f", arg: 1, scope: !2330, file: !3, line: 134, type: !1904)
!2335 = !DILocalVariable(name: "list", arg: 2, scope: !2330, file: !3, line: 134, type: !574)
!2336 = !DILocation(line: 0, scope: !2330)
!2337 = !DILocation(line: 136, column: 3, scope: !2330)
!2338 = !DILocation(line: 136, column: 15, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 136, column: 3)
!2340 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 136, column: 3)
!2341 = !DILocation(line: 136, column: 3, scope: !2340)
!2342 = !DILocation(line: 138, column: 7, scope: !2339)
!2343 = !DILocation(line: 138, column: 33, scope: !2339)
!2344 = !DILocation(line: 139, column: 7, scope: !2339)
!2345 = !DILocation(line: 139, column: 31, scope: !2339)
!2346 = !DILocation(line: 137, column: 5, scope: !2339)
!2347 = !DILocation(line: 136, column: 37, scope: !2339)
!2348 = !DILocation(line: 136, column: 3, scope: !2339)
!2349 = distinct !{!2349, !2341, !2350}
!2350 = !DILocation(line: 139, column: 55, scope: !2340)
!2351 = !DILocation(line: 140, column: 3, scope: !2330)
!2352 = !DILocation(line: 141, column: 1, scope: !2330)
!2353 = distinct !DISubprogram(name: "ira_emit", scope: !3, file: !3, line: 1056, type: !2354, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !565}
!2356 = !{!2357, !2358, !2359, !2360, !2367, !2368, !2369}
!2357 = !DILocalVariable(name: "loops_p", arg: 1, scope: !2353, file: !3, line: 1056, type: !565)
!2358 = !DILocalVariable(name: "bb", scope: !2353, file: !3, line: 1058, type: !962)
!2359 = !DILocalVariable(name: "insn", scope: !2353, file: !3, line: 1059, type: !589)
!2360 = !DILocalVariable(name: "ei", scope: !2353, file: !3, line: 1060, type: !2361)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !148, line: 682, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 679, size: 128, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2362, file: !148, line: 680, baseType: !7, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2362, file: !148, line: 681, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!2367 = !DILocalVariable(name: "e", scope: !2353, file: !3, line: 1061, type: !979)
!2368 = !DILocalVariable(name: "a", scope: !2353, file: !3, line: 1062, type: !579)
!2369 = !DILocalVariable(name: "ai", scope: !2353, file: !3, line: 1063, type: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_iterator", file: !580, line: 935, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 932, size: 32, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2371, file: !580, line: 934, baseType: !566, size: 32)
!2374 = !DILocation(line: 0, scope: !2353)
!2375 = !DILocation(line: 1060, column: 3, scope: !2353)
!2376 = !DILocation(line: 1061, column: 3, scope: !2353)
!2377 = !DILocation(line: 1062, column: 3, scope: !2353)
!2378 = !DILocation(line: 1063, column: 3, scope: !2353)
!2379 = !DILocation(line: 1065, column: 3, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1065, column: 3)
!2381 = !DILocation(line: 1065, column: 3, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1065, column: 3)
!2383 = !DILocation(line: 1066, column: 23, scope: !2382)
!2384 = !DILocation(line: 1066, column: 37, scope: !2382)
!2385 = !DILocation(line: 1066, column: 5, scope: !2382)
!2386 = !DILocation(line: 1066, column: 21, scope: !2382)
!2387 = distinct !{!2387, !2379, !2388}
!2388 = !DILocation(line: 1066, column: 54, scope: !2380)
!2389 = !DILocation(line: 1067, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1067, column: 7)
!2391 = !DILocation(line: 1067, column: 7, scope: !2353)
!2392 = !DILocation(line: 1069, column: 60, scope: !2353)
!2393 = !DILocation(line: 1069, column: 58, scope: !2353)
!2394 = !DILocation(line: 1069, column: 28, scope: !2353)
!2395 = !DILocation(line: 1069, column: 15, scope: !2353)
!2396 = !DILocation(line: 1070, column: 45, scope: !2353)
!2397 = !DILocation(line: 1070, column: 43, scope: !2353)
!2398 = !DILocation(line: 1070, column: 3, scope: !2353)
!2399 = !DILocation(line: 1071, column: 58, scope: !2353)
!2400 = !DILocation(line: 1071, column: 56, scope: !2353)
!2401 = !DILocation(line: 1071, column: 26, scope: !2353)
!2402 = !DILocation(line: 1071, column: 13, scope: !2353)
!2403 = !DILocation(line: 1072, column: 43, scope: !2353)
!2404 = !DILocation(line: 1072, column: 41, scope: !2353)
!2405 = !DILocation(line: 1072, column: 3, scope: !2353)
!2406 = !DILocation(line: 1073, column: 26, scope: !2353)
!2407 = !DILocation(line: 1073, column: 24, scope: !2353)
!2408 = !DILocation(line: 1074, column: 23, scope: !2353)
!2409 = !DILocation(line: 1074, column: 21, scope: !2353)
!2410 = !DILocation(line: 1075, column: 26, scope: !2353)
!2411 = !DILocation(line: 1075, column: 24, scope: !2353)
!2412 = !DILocation(line: 1076, column: 31, scope: !2353)
!2413 = !DILocation(line: 1076, column: 29, scope: !2353)
!2414 = !DILocation(line: 1077, column: 33, scope: !2353)
!2415 = !DILocation(line: 1077, column: 3, scope: !2353)
!2416 = !DILocation(line: 1078, column: 3, scope: !2353)
!2417 = !DILocation(line: 1079, column: 20, scope: !2353)
!2418 = !DILocation(line: 1079, column: 3, scope: !2353)
!2419 = !DILocation(line: 1080, column: 20, scope: !2353)
!2420 = !DILocation(line: 1080, column: 3, scope: !2353)
!2421 = !DILocation(line: 1081, column: 20, scope: !2353)
!2422 = !DILocation(line: 1081, column: 3, scope: !2353)
!2423 = !DILocation(line: 1082, column: 3, scope: !2353)
!2424 = !DILocation(line: 1083, column: 3, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1083, column: 3)
!2426 = !DILocation(line: 0, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1087, column: 7)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 1084, column: 5)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1083, column: 3)
!2430 = !DILocation(line: 0, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 1087, column: 7)
!2432 = !DILocation(line: 1083, column: 3, scope: !2429)
!2433 = !DILocation(line: 0, scope: !2425)
!2434 = !DILocation(line: 1085, column: 7, scope: !2428)
!2435 = !DILocation(line: 1085, column: 23, scope: !2428)
!2436 = !DILocation(line: 1085, column: 30, scope: !2428)
!2437 = !DILocation(line: 1086, column: 7, scope: !2428)
!2438 = !DILocation(line: 1086, column: 21, scope: !2428)
!2439 = !DILocation(line: 1086, column: 28, scope: !2428)
!2440 = !DILocation(line: 1087, column: 7, scope: !2427)
!2441 = !DILocation(line: 1087, column: 7, scope: !2431)
!2442 = !DILocation(line: 1088, column: 6, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 1088, column: 6)
!2444 = !DILocation(line: 1088, column: 9, scope: !2443)
!2445 = !DILocation(line: 1088, column: 17, scope: !2443)
!2446 = !DILocation(line: 1088, column: 14, scope: !2443)
!2447 = !DILocation(line: 1088, column: 6, scope: !2431)
!2448 = !DILocation(line: 1089, column: 4, scope: !2443)
!2449 = distinct !{!2449, !2440, !2450}
!2450 = !DILocation(line: 1089, column: 26, scope: !2427)
!2451 = !DILocation(line: 0, scope: !2429)
!2452 = distinct !{!2452, !2424, !2453}
!2453 = !DILocation(line: 1090, column: 5, scope: !2425)
!2454 = !DILocation(line: 1092, column: 50, scope: !2353)
!2455 = !DILocation(line: 1092, column: 48, scope: !2353)
!2456 = !DILocation(line: 1092, column: 18, scope: !2353)
!2457 = !DILocation(line: 1092, column: 5, scope: !2353)
!2458 = !DILocation(line: 1094, column: 44, scope: !2353)
!2459 = !DILocation(line: 1094, column: 42, scope: !2353)
!2460 = !DILocation(line: 1094, column: 15, scope: !2353)
!2461 = !DILocation(line: 1094, column: 5, scope: !2353)
!2462 = !DILocation(line: 1095, column: 53, scope: !2353)
!2463 = !DILocation(line: 1095, column: 51, scope: !2353)
!2464 = !DILocation(line: 1095, column: 3, scope: !2353)
!2465 = !DILocation(line: 1096, column: 3, scope: !2353)
!2466 = !DILocation(line: 1097, column: 13, scope: !2353)
!2467 = !DILocation(line: 1098, column: 3, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1098, column: 3)
!2469 = !DILocation(line: 1098, column: 3, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1098, column: 3)
!2471 = !DILocation(line: 0, scope: !2468)
!2472 = !DILocation(line: 1099, column: 5, scope: !2470)
!2473 = !DILocation(line: 0, scope: !2470)
!2474 = distinct !{!2474, !2467, !2475}
!2475 = !DILocation(line: 1099, column: 26, scope: !2468)
!2476 = !DILocation(line: 1100, column: 3, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1100, column: 3)
!2478 = !DILocation(line: 1100, column: 3, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1100, column: 3)
!2480 = !DILocation(line: 0, scope: !2477)
!2481 = !DILocation(line: 1101, column: 5, scope: !2479)
!2482 = !DILocation(line: 0, scope: !2479)
!2483 = distinct !{!2483, !2476, !2484}
!2484 = !DILocation(line: 1101, column: 27, scope: !2477)
!2485 = !DILocation(line: 1102, column: 14, scope: !2353)
!2486 = !DILocation(line: 1102, column: 12, scope: !2353)
!2487 = !DILocation(line: 1103, column: 3, scope: !2353)
!2488 = !DILocation(line: 1104, column: 3, scope: !2353)
!2489 = !DILocation(line: 1106, column: 3, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1106, column: 3)
!2491 = !DILocation(line: 0, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1110, column: 7)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1107, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1106, column: 3)
!2495 = !DILocation(line: 1106, column: 3, scope: !2494)
!2496 = !DILocation(line: 0, scope: !2490)
!2497 = !DILocation(line: 1108, column: 23, scope: !2493)
!2498 = !DILocation(line: 1108, column: 39, scope: !2493)
!2499 = !DILocation(line: 1108, column: 7, scope: !2493)
!2500 = !DILocation(line: 1109, column: 23, scope: !2493)
!2501 = !DILocation(line: 1109, column: 37, scope: !2493)
!2502 = !DILocation(line: 1109, column: 7, scope: !2493)
!2503 = !DILocation(line: 1110, column: 7, scope: !2492)
!2504 = !DILocation(line: 1110, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 1110, column: 7)
!2506 = !DILocation(line: 1112, column: 29, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1111, column: 2)
!2508 = !DILocation(line: 1112, column: 32, scope: !2507)
!2509 = !DILocation(line: 1112, column: 4, scope: !2507)
!2510 = !DILocation(line: 1113, column: 4, scope: !2507)
!2511 = !DILocation(line: 1113, column: 7, scope: !2507)
!2512 = !DILocation(line: 1113, column: 11, scope: !2507)
!2513 = distinct !{!2513, !2503, !2514}
!2514 = !DILocation(line: 1114, column: 2, scope: !2492)
!2515 = !DILocation(line: 0, scope: !2494)
!2516 = distinct !{!2516, !2489, !2517}
!2517 = !DILocation(line: 1115, column: 5, scope: !2490)
!2518 = !DILocation(line: 1116, column: 3, scope: !2353)
!2519 = !DILocation(line: 1117, column: 13, scope: !2353)
!2520 = !DILocation(line: 1117, column: 3, scope: !2353)
!2521 = !DILocation(line: 1118, column: 13, scope: !2353)
!2522 = !DILocation(line: 1118, column: 3, scope: !2353)
!2523 = !DILocation(line: 1119, column: 3, scope: !2353)
!2524 = !DILocation(line: 1124, column: 3, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1124, column: 3)
!2526 = !DILocation(line: 1124, column: 3, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1124, column: 3)
!2528 = !DILocation(line: 0, scope: !2525)
!2529 = !DILocation(line: 1125, column: 5, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1125, column: 5)
!2531 = !DILocation(line: 0, scope: !2530)
!2532 = !DILocation(line: 1125, column: 5, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 1125, column: 5)
!2534 = !DILocation(line: 1126, column: 11, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 1126, column: 11)
!2536 = !DILocation(line: 1126, column: 11, scope: !2533)
!2537 = !DILocation(line: 1127, column: 2, scope: !2535)
!2538 = distinct !{!2538, !2529, !2539}
!2539 = !DILocation(line: 1127, column: 22, scope: !2530)
!2540 = !DILocation(line: 0, scope: !2527)
!2541 = distinct !{!2541, !2524, !2542}
!2542 = !DILocation(line: 1127, column: 22, scope: !2525)
!2543 = !DILocation(line: 1128, column: 13, scope: !2353)
!2544 = !DILocation(line: 1128, column: 3, scope: !2353)
!2545 = !DILocation(line: 1129, column: 13, scope: !2353)
!2546 = !DILocation(line: 1129, column: 3, scope: !2353)
!2547 = !DILocation(line: 1130, column: 1, scope: !2353)
!2548 = distinct !DISubprogram(name: "ira_allocno_iter_init", scope: !580, file: !580, line: 939, type: !2549, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2552)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2552 = !{!2553}
!2553 = !DILocalVariable(name: "i", arg: 1, scope: !2548, file: !580, line: 939, type: !2551)
!2554 = !DILocation(line: 0, scope: !2548)
!2555 = !DILocation(line: 941, column: 6, scope: !2548)
!2556 = !DILocation(line: 941, column: 8, scope: !2548)
!2557 = !DILocation(line: 942, column: 1, scope: !2548)
!2558 = distinct !DISubprogram(name: "ira_allocno_iter_cond", scope: !580, file: !580, line: 947, type: !2559, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!565, !2551, !1733}
!2561 = !{!2562, !2563, !2564}
!2562 = !DILocalVariable(name: "i", arg: 1, scope: !2558, file: !580, line: 947, type: !2551)
!2563 = !DILocalVariable(name: "a", arg: 2, scope: !2558, file: !580, line: 947, type: !1733)
!2564 = !DILocalVariable(name: "n", scope: !2558, file: !580, line: 949, type: !566)
!2565 = !DILocation(line: 0, scope: !2558)
!2566 = !DILocation(line: 951, column: 15, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2558, file: !580, line: 951, column: 3)
!2568 = !DILocation(line: 0, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2567, file: !580, line: 951, column: 3)
!2570 = !DILocation(line: 0, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2569, file: !580, line: 952, column: 9)
!2572 = !DILocation(line: 951, column: 8, scope: !2567)
!2573 = !DILocation(line: 0, scope: !2567)
!2574 = !DILocation(line: 951, column: 20, scope: !2569)
!2575 = !DILocation(line: 951, column: 3, scope: !2567)
!2576 = !DILocation(line: 952, column: 9, scope: !2571)
!2577 = !DILocation(line: 952, column: 25, scope: !2571)
!2578 = !DILocation(line: 952, column: 9, scope: !2569)
!2579 = !DILocation(line: 954, column: 5, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2571, file: !580, line: 953, column: 7)
!2581 = !DILocation(line: 955, column: 11, scope: !2580)
!2582 = !DILocation(line: 955, column: 7, scope: !2580)
!2583 = !DILocation(line: 956, column: 2, scope: !2580)
!2584 = !DILocation(line: 951, column: 41, scope: !2569)
!2585 = !DILocation(line: 951, column: 3, scope: !2569)
!2586 = distinct !{!2586, !2575, !2587}
!2587 = !DILocation(line: 957, column: 7, scope: !2567)
!2588 = !DILocation(line: 959, column: 1, scope: !2558)
!2589 = distinct !DISubprogram(name: "change_loop", scope: !3, file: !3, line: 443, type: !2590, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !1719}
!2592 = !{!2593, !2594, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2593 = !DILocalVariable(name: "node", arg: 1, scope: !2589, file: !3, line: 443, type: !1719)
!2594 = !DILocalVariable(name: "bi", scope: !2589, file: !3, line: 445, type: !2595)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !645, line: 218, baseType: !2596)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !645, line: 203, size: 256, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2596, file: !645, line: 206, baseType: !648, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2596, file: !645, line: 209, baseType: !648, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2596, file: !645, line: 212, baseType: !7, size: 32, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2596, file: !645, line: 217, baseType: !658, size: 64, offset: 192)
!2602 = !DILocalVariable(name: "i", scope: !2589, file: !3, line: 446, type: !7)
!2603 = !DILocalVariable(name: "regno", scope: !2589, file: !3, line: 447, type: !566)
!2604 = !DILocalVariable(name: "used_p", scope: !2589, file: !3, line: 448, type: !565)
!2605 = !DILocalVariable(name: "allocno", scope: !2589, file: !3, line: 449, type: !579)
!2606 = !DILocalVariable(name: "parent_allocno", scope: !2589, file: !3, line: 449, type: !579)
!2607 = !DILocalVariable(name: "map", scope: !2589, file: !3, line: 449, type: !1733)
!2608 = !DILocalVariable(name: "insn", scope: !2589, file: !3, line: 450, type: !589)
!2609 = !DILocalVariable(name: "original_reg", scope: !2589, file: !3, line: 450, type: !589)
!2610 = !DILocalVariable(name: "cover_class", scope: !2589, file: !3, line: 451, type: !390)
!2611 = !DILocalVariable(name: "parent", scope: !2589, file: !3, line: 452, type: !1719)
!2612 = !DILocation(line: 0, scope: !2589)
!2613 = !DILocation(line: 445, column: 3, scope: !2589)
!2614 = !DILocation(line: 446, column: 3, scope: !2589)
!2615 = !DILocation(line: 450, column: 3, scope: !2589)
!2616 = !DILocation(line: 454, column: 15, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 454, column: 7)
!2618 = !DILocation(line: 454, column: 12, scope: !2617)
!2619 = !DILocation(line: 454, column: 7, scope: !2589)
!2620 = !DILocation(line: 457, column: 17, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 457, column: 11)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 455, column: 5)
!2623 = !DILocation(line: 457, column: 20, scope: !2621)
!2624 = !DILocation(line: 457, column: 11, scope: !2622)
!2625 = !DILocation(line: 459, column: 4, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 459, column: 4)
!2627 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 458, column: 2)
!2628 = !DILocation(line: 459, column: 4, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 459, column: 4)
!2630 = !DILocation(line: 460, column: 10, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 460, column: 10)
!2632 = !DILocation(line: 460, column: 24, scope: !2631)
!2633 = !DILocation(line: 460, column: 27, scope: !2631)
!2634 = !DILocation(line: 460, column: 10, scope: !2629)
!2635 = !DILocation(line: 462, column: 19, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 461, column: 8)
!2637 = !DILocation(line: 462, column: 3, scope: !2636)
!2638 = !DILocation(line: 463, column: 20, scope: !2636)
!2639 = !DILocation(line: 463, column: 3, scope: !2636)
!2640 = !DILocation(line: 464, column: 8, scope: !2636)
!2641 = distinct !{!2641, !2625, !2642}
!2642 = !DILocation(line: 464, column: 8, scope: !2626)
!2643 = !DILocation(line: 468, column: 11, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 468, column: 11)
!2645 = !DILocation(line: 468, column: 37, scope: !2644)
!2646 = !DILocation(line: 468, column: 44, scope: !2644)
!2647 = !DILocation(line: 468, column: 58, scope: !2644)
!2648 = !DILocation(line: 468, column: 41, scope: !2644)
!2649 = !DILocation(line: 471, column: 10, scope: !2644)
!2650 = !DILocation(line: 471, column: 16, scope: !2644)
!2651 = !DILocation(line: 471, column: 33, scope: !2644)
!2652 = !DILocation(line: 471, column: 41, scope: !2644)
!2653 = !DILocation(line: 469, column: 2, scope: !2644)
!2654 = !DILocation(line: 473, column: 16, scope: !2622)
!2655 = !DILocation(line: 473, column: 41, scope: !2622)
!2656 = !DILocation(line: 474, column: 21, scope: !2622)
!2657 = !DILocation(line: 475, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 475, column: 7)
!2659 = !DILocation(line: 475, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 475, column: 7)
!2661 = !DILocation(line: 478, column: 14, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 477, column: 2)
!2663 = !DILocation(line: 478, column: 27, scope: !2662)
!2664 = !DILocation(line: 479, column: 12, scope: !2662)
!2665 = !DILocation(line: 480, column: 18, scope: !2662)
!2666 = !DILocation(line: 481, column: 21, scope: !2662)
!2667 = !DILocation(line: 489, column: 23, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 489, column: 8)
!2669 = !DILocation(line: 490, column: 8, scope: !2668)
!2670 = !DILocation(line: 490, column: 12, scope: !2668)
!2671 = !DILocation(line: 491, column: 8, scope: !2668)
!2672 = !DILocation(line: 491, column: 5, scope: !2668)
!2673 = !DILocation(line: 492, column: 8, scope: !2668)
!2674 = !DILocation(line: 492, column: 41, scope: !2668)
!2675 = !DILocation(line: 493, column: 5, scope: !2668)
!2676 = !DILocation(line: 493, column: 9, scope: !2668)
!2677 = !DILocation(line: 494, column: 12, scope: !2668)
!2678 = !DILocation(line: 494, column: 9, scope: !2668)
!2679 = !DILocation(line: 495, column: 5, scope: !2668)
!2680 = !DILocation(line: 495, column: 8, scope: !2668)
!2681 = !DILocation(line: 501, column: 5, scope: !2668)
!2682 = !DILocation(line: 501, column: 8, scope: !2668)
!2683 = !DILocation(line: 502, column: 5, scope: !2668)
!2684 = !DILocation(line: 502, column: 8, scope: !2668)
!2685 = !DILocation(line: 502, column: 35, scope: !2668)
!2686 = !DILocation(line: 489, column: 8, scope: !2662)
!2687 = !DILocation(line: 504, column: 19, scope: !2662)
!2688 = !DILocation(line: 506, column: 8, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 505, column: 8)
!2690 = !DILocation(line: 506, column: 11, scope: !2689)
!2691 = !DILocation(line: 506, column: 51, scope: !2689)
!2692 = !DILocation(line: 506, column: 48, scope: !2689)
!2693 = !DILocation(line: 505, column: 8, scope: !2662)
!2694 = !DILocation(line: 508, column: 12, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 508, column: 12)
!2696 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 507, column: 6)
!2697 = !DILocation(line: 508, column: 38, scope: !2695)
!2698 = !DILocation(line: 508, column: 45, scope: !2695)
!2699 = !DILocation(line: 508, column: 42, scope: !2695)
!2700 = !DILocation(line: 510, column: 5, scope: !2695)
!2701 = !DILocation(line: 511, column: 5, scope: !2695)
!2702 = !DILocation(line: 509, column: 3, scope: !2695)
!2703 = !DILocation(line: 512, column: 34, scope: !2696)
!2704 = !DILocation(line: 512, column: 8, scope: !2696)
!2705 = !DILocation(line: 513, column: 6, scope: !2696)
!2706 = distinct !{!2706, !2657, !2707}
!2707 = !DILocation(line: 514, column: 2, scope: !2658)
!2708 = !DILocation(line: 519, column: 21, scope: !2589)
!2709 = !DILocation(line: 520, column: 7, scope: !2589)
!2710 = !DILocation(line: 520, column: 32, scope: !2589)
!2711 = !DILocation(line: 521, column: 32, scope: !2589)
!2712 = !DILocation(line: 519, column: 3, scope: !2589)
!2713 = !DILocation(line: 522, column: 3, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 522, column: 3)
!2715 = !DILocation(line: 522, column: 3, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 522, column: 3)
!2717 = !DILocation(line: 524, column: 17, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 523, column: 5)
!2719 = !DILocation(line: 524, column: 30, scope: !2718)
!2720 = !DILocation(line: 525, column: 15, scope: !2718)
!2721 = !DILocation(line: 526, column: 11, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 526, column: 11)
!2723 = !DILocation(line: 526, column: 40, scope: !2722)
!2724 = !DILocation(line: 526, column: 11, scope: !2718)
!2725 = !DILocation(line: 528, column: 30, scope: !2718)
!2726 = !DILocation(line: 528, column: 16, scope: !2718)
!2727 = !DILocation(line: 529, column: 23, scope: !2718)
!2728 = !DILocation(line: 529, column: 7, scope: !2718)
!2729 = !DILocation(line: 530, column: 7, scope: !2718)
!2730 = !DILocation(line: 530, column: 45, scope: !2718)
!2731 = !DILocation(line: 531, column: 13, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 531, column: 11)
!2733 = !DILocation(line: 531, column: 11, scope: !2718)
!2734 = !DILocation(line: 533, column: 23, scope: !2718)
!2735 = !DILocation(line: 533, column: 7, scope: !2718)
!2736 = !DILocation(line: 534, column: 49, scope: !2718)
!2737 = !DILocation(line: 534, column: 33, scope: !2718)
!2738 = !DILocation(line: 534, column: 7, scope: !2718)
!2739 = !DILocation(line: 535, column: 5, scope: !2718)
!2740 = distinct !{!2740, !2713, !2741}
!2741 = !DILocation(line: 535, column: 5, scope: !2714)
!2742 = !DILocation(line: 536, column: 1, scope: !2589)
!2743 = distinct !DISubprogram(name: "set_allocno_somewhere_renamed_p", scope: !3, file: !3, line: 540, type: !2744, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{null}
!2746 = !{!2747, !2748, !2749}
!2747 = !DILocalVariable(name: "regno", scope: !2743, file: !3, line: 542, type: !7)
!2748 = !DILocalVariable(name: "allocno", scope: !2743, file: !3, line: 543, type: !579)
!2749 = !DILocalVariable(name: "ai", scope: !2743, file: !3, line: 544, type: !2370)
!2750 = !DILocation(line: 543, column: 3, scope: !2743)
!2751 = !DILocation(line: 544, column: 3, scope: !2743)
!2752 = !DILocation(line: 0, scope: !2743)
!2753 = !DILocation(line: 546, column: 3, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 546, column: 3)
!2755 = !DILocation(line: 546, column: 3, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 546, column: 3)
!2757 = !DILocation(line: 548, column: 15, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 547, column: 5)
!2759 = !DILocation(line: 549, column: 25, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 549, column: 11)
!2761 = !DILocation(line: 549, column: 11, scope: !2760)
!2762 = !DILocation(line: 550, column: 4, scope: !2760)
!2763 = !DILocation(line: 550, column: 7, scope: !2760)
!2764 = !DILocation(line: 550, column: 37, scope: !2760)
!2765 = !DILocation(line: 549, column: 11, scope: !2758)
!2766 = !DILocation(line: 551, column: 2, scope: !2760)
!2767 = !DILocation(line: 551, column: 40, scope: !2760)
!2768 = distinct !{!2768, !2753, !2769}
!2769 = !DILocation(line: 552, column: 5, scope: !2754)
!2770 = !DILocation(line: 553, column: 1, scope: !2743)
!2771 = distinct !DISubprogram(name: "setup_entered_from_non_parent_p", scope: !3, file: !3, line: 322, type: !2744, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2772)
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "i", scope: !2771, file: !3, line: 324, type: !7)
!2774 = !DILocalVariable(name: "loop", scope: !2771, file: !3, line: 325, type: !1031)
!2775 = !DILocation(line: 325, column: 3, scope: !2771)
!2776 = !DILocation(line: 0, scope: !2771)
!2777 = !DILocation(line: 327, column: 8, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 327, column: 3)
!2779 = !DILocation(line: 0, scope: !2778)
!2780 = !DILocation(line: 327, column: 15, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 327, column: 3)
!2782 = !DILocation(line: 327, column: 3, scope: !2778)
!2783 = !DILocation(line: 328, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 328, column: 9)
!2785 = !DILocation(line: 328, column: 27, scope: !2784)
!2786 = !DILocation(line: 328, column: 45, scope: !2784)
!2787 = !DILocation(line: 328, column: 9, scope: !2781)
!2788 = !DILocation(line: 330, column: 32, scope: !2784)
!2789 = !DILocation(line: 330, column: 4, scope: !2784)
!2790 = !DILocation(line: 329, column: 7, scope: !2784)
!2791 = !DILocation(line: 329, column: 25, scope: !2784)
!2792 = !DILocation(line: 330, column: 2, scope: !2784)
!2793 = !DILocation(line: 327, column: 65, scope: !2781)
!2794 = !DILocation(line: 327, column: 3, scope: !2781)
!2795 = distinct !{!2795, !2782, !2796}
!2796 = !DILocation(line: 330, column: 49, scope: !2778)
!2797 = !DILocation(line: 331, column: 1, scope: !2771)
!2798 = distinct !DISubprogram(name: "ei_start_1", scope: !148, file: !148, line: 696, type: !2799, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!2361, !2366}
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "ev", arg: 1, scope: !2798, file: !148, line: 696, type: !2366)
!2803 = !DILocalVariable(name: "i", scope: !2798, file: !148, line: 698, type: !2361)
!2804 = !DILocation(line: 0, scope: !2798)
!2805 = !DILocation(line: 700, column: 5, scope: !2798)
!2806 = !DILocation(line: 700, column: 11, scope: !2798)
!2807 = !DILocation(line: 701, column: 5, scope: !2798)
!2808 = !DILocation(line: 701, column: 15, scope: !2798)
!2809 = !DILocation(line: 703, column: 3, scope: !2798)
!2810 = distinct !DISubprogram(name: "ei_cond", scope: !148, file: !148, line: 771, type: !2811, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2814)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!565, !2361, !2813}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!2814 = !{!2815, !2816}
!2815 = !DILocalVariable(name: "ei", arg: 1, scope: !2810, file: !148, line: 771, type: !2361)
!2816 = !DILocalVariable(name: "p", arg: 2, scope: !2810, file: !148, line: 771, type: !2813)
!2817 = !DILocation(line: 0, scope: !2810)
!2818 = !DILocation(line: 773, column: 8, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2810, file: !148, line: 773, column: 7)
!2820 = !DILocation(line: 773, column: 7, scope: !2810)
!2821 = !DILocation(line: 775, column: 12, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !148, line: 774, column: 5)
!2823 = !DILocation(line: 776, column: 7, scope: !2822)
!2824 = !DILocation(line: 781, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2819, file: !148, line: 779, column: 5)
!2826 = !DILocation(line: 0, scope: !2819)
!2827 = !DILocation(line: 783, column: 1, scope: !2810)
!2828 = distinct !DISubprogram(name: "generate_edge_moves", scope: !3, file: !3, line: 381, type: !2829, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !979}
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841}
!2832 = !DILocalVariable(name: "e", arg: 1, scope: !2828, file: !3, line: 381, type: !979)
!2833 = !DILocalVariable(name: "src_loop_node", scope: !2828, file: !3, line: 383, type: !1719)
!2834 = !DILocalVariable(name: "dest_loop_node", scope: !2828, file: !3, line: 383, type: !1719)
!2835 = !DILocalVariable(name: "regno", scope: !2828, file: !3, line: 384, type: !7)
!2836 = !DILocalVariable(name: "bi", scope: !2828, file: !3, line: 385, type: !2595)
!2837 = !DILocalVariable(name: "src_allocno", scope: !2828, file: !3, line: 386, type: !579)
!2838 = !DILocalVariable(name: "dest_allocno", scope: !2828, file: !3, line: 386, type: !579)
!2839 = !DILocalVariable(name: "src_map", scope: !2828, file: !3, line: 386, type: !1733)
!2840 = !DILocalVariable(name: "dest_map", scope: !2828, file: !3, line: 386, type: !1733)
!2841 = !DILocalVariable(name: "move", scope: !2828, file: !3, line: 387, type: !574)
!2842 = !DILocation(line: 0, scope: !2828)
!2843 = !DILocation(line: 384, column: 3, scope: !2828)
!2844 = !DILocation(line: 385, column: 3, scope: !2828)
!2845 = !DILocation(line: 389, column: 19, scope: !2828)
!2846 = !DILocation(line: 389, column: 41, scope: !2828)
!2847 = !DILocation(line: 390, column: 20, scope: !2828)
!2848 = !DILocation(line: 390, column: 43, scope: !2828)
!2849 = !DILocation(line: 391, column: 6, scope: !2828)
!2850 = !DILocation(line: 391, column: 10, scope: !2828)
!2851 = !DILocation(line: 392, column: 21, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 392, column: 7)
!2853 = !DILocation(line: 392, column: 7, scope: !2828)
!2854 = !DILocation(line: 394, column: 28, scope: !2828)
!2855 = !DILocation(line: 395, column: 30, scope: !2828)
!2856 = !DILocation(line: 396, column: 3, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 396, column: 3)
!2858 = !DILocation(line: 396, column: 3, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 396, column: 3)
!2860 = !DILocation(line: 398, column: 23, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 398, column: 9)
!2862 = !DILocation(line: 398, column: 43, scope: !2861)
!2863 = !DILocation(line: 398, column: 9, scope: !2861)
!2864 = !DILocation(line: 398, column: 9, scope: !2859)
!2865 = !DILocation(line: 400, column: 24, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 399, column: 7)
!2867 = !DILocation(line: 400, column: 16, scope: !2866)
!2868 = !DILocation(line: 401, column: 17, scope: !2866)
!2869 = !DILocation(line: 402, column: 6, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 402, column: 6)
!2871 = !DILocation(line: 403, column: 9, scope: !2870)
!2872 = !DILocation(line: 403, column: 6, scope: !2870)
!2873 = !DILocation(line: 402, column: 6, scope: !2866)
!2874 = !DILocation(line: 410, column: 7, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 410, column: 7)
!2876 = !DILocation(line: 410, column: 41, scope: !2875)
!2877 = !DILocation(line: 411, column: 6, scope: !2875)
!2878 = !DILocation(line: 411, column: 9, scope: !2875)
!2879 = !DILocation(line: 411, column: 42, scope: !2875)
!2880 = !DILocation(line: 412, column: 6, scope: !2875)
!2881 = !DILocation(line: 412, column: 9, scope: !2875)
!2882 = !DILocation(line: 410, column: 7, scope: !2866)
!2883 = !DILocation(line: 414, column: 6, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 413, column: 4)
!2885 = !DILocation(line: 414, column: 47, scope: !2884)
!2886 = !DILocation(line: 415, column: 6, scope: !2884)
!2887 = !DILocation(line: 415, column: 50, scope: !2884)
!2888 = !DILocation(line: 416, column: 10, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 416, column: 10)
!2890 = !DILocation(line: 416, column: 36, scope: !2889)
!2891 = !DILocation(line: 416, column: 43, scope: !2889)
!2892 = !DILocation(line: 416, column: 57, scope: !2889)
!2893 = !DILocation(line: 416, column: 40, scope: !2889)
!2894 = !DILocation(line: 418, column: 10, scope: !2889)
!2895 = !DILocation(line: 418, column: 17, scope: !2889)
!2896 = !DILocation(line: 419, column: 10, scope: !2889)
!2897 = !DILocation(line: 417, column: 8, scope: !2889)
!2898 = !DILocation(line: 422, column: 9, scope: !2866)
!2899 = !DILocation(line: 423, column: 2, scope: !2866)
!2900 = !DILocation(line: 424, column: 5, scope: !2866)
!2901 = distinct !{!2901, !2856, !2902}
!2902 = !DILocation(line: 424, column: 5, scope: !2857)
!2903 = !DILocation(line: 425, column: 1, scope: !2828)
!2904 = distinct !DISubprogram(name: "ei_next", scope: !148, file: !148, line: 736, type: !2905, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2908 = !{!2909}
!2909 = !DILocalVariable(name: "i", arg: 1, scope: !2904, file: !148, line: 736, type: !2907)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocation(line: 738, column: 3, scope: !2904)
!2912 = !DILocation(line: 739, column: 11, scope: !2904)
!2913 = !DILocation(line: 740, column: 1, scope: !2904)
!2914 = distinct !DISubprogram(name: "unify_moves", scope: !3, file: !3, line: 574, type: !2915, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !962, !565}
!2917 = !{!2918, !2919, !2920, !2921, !2922, !2923}
!2918 = !DILocalVariable(name: "bb", arg: 1, scope: !2914, file: !3, line: 574, type: !962)
!2919 = !DILocalVariable(name: "start_p", arg: 2, scope: !2914, file: !3, line: 574, type: !565)
!2920 = !DILocalVariable(name: "i", scope: !2914, file: !3, line: 576, type: !566)
!2921 = !DILocalVariable(name: "e", scope: !2914, file: !3, line: 577, type: !979)
!2922 = !DILocalVariable(name: "list", scope: !2914, file: !3, line: 578, type: !574)
!2923 = !DILocalVariable(name: "vec", scope: !2914, file: !3, line: 579, type: !967)
!2924 = !DILocation(line: 0, scope: !2914)
!2925 = !DILocation(line: 581, column: 10, scope: !2914)
!2926 = !DILocation(line: 581, column: 24, scope: !2914)
!2927 = !DILocation(line: 581, column: 36, scope: !2914)
!2928 = !DILocation(line: 582, column: 7, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 582, column: 7)
!2930 = !DILocation(line: 582, column: 24, scope: !2929)
!2931 = !DILocation(line: 582, column: 29, scope: !2929)
!2932 = !DILocation(line: 582, column: 34, scope: !2929)
!2933 = !DILocation(line: 582, column: 7, scope: !2914)
!2934 = !DILocation(line: 584, column: 7, scope: !2914)
!2935 = !DILocation(line: 585, column: 22, scope: !2914)
!2936 = !DILocation(line: 586, column: 17, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 586, column: 7)
!2938 = !DILocation(line: 586, column: 41, scope: !2937)
!2939 = !DILocation(line: 586, column: 20, scope: !2937)
!2940 = !DILocation(line: 586, column: 7, scope: !2914)
!2941 = !DILocation(line: 588, column: 10, scope: !2914)
!2942 = !DILocation(line: 589, column: 12, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 589, column: 3)
!2944 = !DILocation(line: 589, column: 8, scope: !2943)
!2945 = !DILocation(line: 0, scope: !2943)
!2946 = !DILocation(line: 589, column: 36, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 589, column: 3)
!2948 = !DILocation(line: 589, column: 3, scope: !2943)
!2949 = !DILocation(line: 591, column: 11, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 590, column: 5)
!2951 = !DILocation(line: 592, column: 35, scope: !2950)
!2952 = !DILocation(line: 592, column: 7, scope: !2950)
!2953 = !DILocation(line: 593, column: 14, scope: !2950)
!2954 = !DILocation(line: 589, column: 3, scope: !2947)
!2955 = distinct !{!2955, !2948, !2956}
!2956 = !DILocation(line: 594, column: 5, scope: !2943)
!2957 = !DILocation(line: 595, column: 7, scope: !2914)
!2958 = !DILocation(line: 596, column: 5, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 595, column: 7)
!2960 = !DILocation(line: 596, column: 21, scope: !2959)
!2961 = !DILocation(line: 596, column: 28, scope: !2959)
!2962 = !DILocation(line: 598, column: 5, scope: !2959)
!2963 = !DILocation(line: 598, column: 19, scope: !2959)
!2964 = !DILocation(line: 598, column: 26, scope: !2959)
!2965 = !DILocation(line: 599, column: 1, scope: !2914)
!2966 = distinct !DISubprogram(name: "VEC_move_t_heap_alloc", scope: !3, file: !3, line: 619, type: !2967, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!1832, !566}
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2966, file: !3, line: 619, type: !566)
!2971 = !DILocation(line: 0, scope: !2966)
!2972 = !DILocation(line: 619, column: 1, scope: !2966)
!2973 = distinct !DISubprogram(name: "emit_moves", scope: !3, file: !3, line: 832, type: !2744, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979}
!2975 = !DILocalVariable(name: "bb", scope: !2973, file: !3, line: 834, type: !962)
!2976 = !DILocalVariable(name: "ei", scope: !2973, file: !3, line: 835, type: !2361)
!2977 = !DILocalVariable(name: "e", scope: !2973, file: !3, line: 836, type: !979)
!2978 = !DILocalVariable(name: "insns", scope: !2973, file: !3, line: 837, type: !589)
!2979 = !DILocalVariable(name: "tmp", scope: !2973, file: !3, line: 837, type: !589)
!2980 = !DILocation(line: 835, column: 3, scope: !2973)
!2981 = !DILocation(line: 836, column: 3, scope: !2973)
!2982 = !DILocation(line: 839, column: 3, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 839, column: 3)
!2984 = !DILocation(line: 0, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 867, column: 7)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 840, column: 5)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 839, column: 3)
!2988 = !DILocation(line: 0, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 867, column: 7)
!2990 = !DILocation(line: 839, column: 3, scope: !2987)
!2991 = !DILocation(line: 0, scope: !2983)
!2992 = !DILocation(line: 0, scope: !2973)
!2993 = !DILocation(line: 841, column: 11, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 841, column: 11)
!2995 = !DILocation(line: 841, column: 27, scope: !2994)
!2996 = !DILocation(line: 841, column: 34, scope: !2994)
!2997 = !DILocation(line: 841, column: 11, scope: !2986)
!2998 = !DILocation(line: 843, column: 29, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 842, column: 2)
!3000 = !DILocation(line: 843, column: 4, scope: !2999)
!3001 = !DILocation(line: 843, column: 20, scope: !2999)
!3002 = !DILocation(line: 843, column: 27, scope: !2999)
!3003 = !DILocation(line: 844, column: 28, scope: !2999)
!3004 = !DILocation(line: 844, column: 44, scope: !2999)
!3005 = !DILocation(line: 845, column: 7, scope: !2999)
!3006 = !DILocation(line: 844, column: 12, scope: !2999)
!3007 = !DILocation(line: 846, column: 10, scope: !2999)
!3008 = !DILocation(line: 847, column: 8, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 847, column: 8)
!3010 = !DILocation(line: 847, column: 8, scope: !2999)
!3011 = !DILocation(line: 848, column: 12, scope: !3009)
!3012 = !DILocation(line: 0, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 849, column: 8)
!3014 = !DILocation(line: 849, column: 8, scope: !3013)
!3015 = !DILocation(line: 848, column: 6, scope: !3009)
!3016 = !DILocation(line: 0, scope: !2999)
!3017 = !DILocation(line: 849, column: 8, scope: !2999)
!3018 = !DILocation(line: 850, column: 12, scope: !3013)
!3019 = !DILocation(line: 850, column: 6, scope: !3013)
!3020 = !DILocation(line: 851, column: 12, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 851, column: 8)
!3022 = !DILocation(line: 851, column: 8, scope: !2999)
!3023 = !DILocation(line: 852, column: 6, scope: !3021)
!3024 = !DILocation(line: 853, column: 17, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 853, column: 13)
!3026 = !DILocation(line: 853, column: 13, scope: !3021)
!3027 = !DILocation(line: 854, column: 30, scope: !3025)
!3028 = !DILocation(line: 854, column: 6, scope: !3025)
!3029 = !DILocation(line: 856, column: 30, scope: !3025)
!3030 = !DILocation(line: 856, column: 6, scope: !3025)
!3031 = !DILocation(line: 859, column: 11, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 859, column: 11)
!3033 = !DILocation(line: 859, column: 25, scope: !3032)
!3034 = !DILocation(line: 859, column: 32, scope: !3032)
!3035 = !DILocation(line: 859, column: 11, scope: !2986)
!3036 = !DILocation(line: 861, column: 27, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 860, column: 2)
!3038 = !DILocation(line: 861, column: 4, scope: !3037)
!3039 = !DILocation(line: 861, column: 18, scope: !3037)
!3040 = !DILocation(line: 861, column: 25, scope: !3037)
!3041 = !DILocation(line: 862, column: 28, scope: !3037)
!3042 = !DILocation(line: 862, column: 42, scope: !3037)
!3043 = !DILocation(line: 862, column: 50, scope: !3037)
!3044 = !DILocation(line: 862, column: 12, scope: !3037)
!3045 = !DILocation(line: 864, column: 28, scope: !3037)
!3046 = !DILocation(line: 864, column: 4, scope: !3037)
!3047 = !DILocation(line: 865, column: 2, scope: !3037)
!3048 = !DILocation(line: 867, column: 7, scope: !2985)
!3049 = !DILocation(line: 867, column: 7, scope: !2989)
!3050 = !DILocation(line: 869, column: 8, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 869, column: 8)
!3052 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 868, column: 2)
!3053 = !DILocation(line: 869, column: 11, scope: !3051)
!3054 = !DILocation(line: 869, column: 15, scope: !3051)
!3055 = !DILocation(line: 869, column: 8, scope: !3052)
!3056 = !DILocation(line: 873, column: 13, scope: !3052)
!3057 = !DILocation(line: 873, column: 4, scope: !3052)
!3058 = !DILocation(line: 873, column: 7, scope: !3052)
!3059 = !DILocation(line: 873, column: 11, scope: !3052)
!3060 = !DILocation(line: 876, column: 9, scope: !3052)
!3061 = !DILocation(line: 875, column: 7, scope: !3052)
!3062 = !DILocation(line: 877, column: 7, scope: !3052)
!3063 = !DILocation(line: 874, column: 4, scope: !3052)
!3064 = !DILocation(line: 878, column: 8, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 878, column: 8)
!3066 = !DILocation(line: 878, column: 11, scope: !3065)
!3067 = !DILocation(line: 878, column: 16, scope: !3065)
!3068 = !DILocation(line: 878, column: 30, scope: !3065)
!3069 = !DILocation(line: 878, column: 24, scope: !3065)
!3070 = !DILocation(line: 878, column: 8, scope: !3052)
!3071 = !DILocation(line: 879, column: 30, scope: !3065)
!3072 = !DILocation(line: 879, column: 6, scope: !3065)
!3073 = distinct !{!3073, !3048, !3074}
!3074 = !DILocation(line: 880, column: 2, scope: !2985)
!3075 = !DILocation(line: 0, scope: !2987)
!3076 = distinct !{!3076, !2982, !3077}
!3077 = !DILocation(line: 881, column: 5, scope: !2983)
!3078 = !DILocation(line: 882, column: 1, scope: !2973)
!3079 = distinct !DISubprogram(name: "add_ranges_and_copies", scope: !3, file: !3, line: 1020, type: !2744, scopeLine: 1021, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3080)
!3080 = !{!3081, !3082, !3083, !3084, !3085}
!3081 = !DILocalVariable(name: "bb", scope: !3079, file: !3, line: 1022, type: !962)
!3082 = !DILocalVariable(name: "ei", scope: !3079, file: !3, line: 1023, type: !2361)
!3083 = !DILocalVariable(name: "e", scope: !3079, file: !3, line: 1024, type: !979)
!3084 = !DILocalVariable(name: "node", scope: !3079, file: !3, line: 1025, type: !1719)
!3085 = !DILocalVariable(name: "live_through", scope: !3079, file: !3, line: 1026, type: !1740)
!3086 = !DILocation(line: 1023, column: 3, scope: !3079)
!3087 = !DILocation(line: 1024, column: 3, scope: !3079)
!3088 = !DILocation(line: 1028, column: 18, scope: !3079)
!3089 = !DILocation(line: 0, scope: !3079)
!3090 = !DILocation(line: 1029, column: 3, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 1029, column: 3)
!3092 = !DILocation(line: 0, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 1041, column: 7)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1030, column: 5)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1029, column: 3)
!3096 = !DILocation(line: 0, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1041, column: 7)
!3098 = !DILocation(line: 1029, column: 3, scope: !3095)
!3099 = !DILocation(line: 0, scope: !3091)
!3100 = !DILocation(line: 1034, column: 14, scope: !3094)
!3101 = !DILocation(line: 1034, column: 32, scope: !3094)
!3102 = !DILocation(line: 1035, column: 34, scope: !3094)
!3103 = !DILocation(line: 1035, column: 7, scope: !3094)
!3104 = !DILocation(line: 1037, column: 3, scope: !3094)
!3105 = !DILocation(line: 1037, column: 19, scope: !3094)
!3106 = !DILocation(line: 1037, column: 47, scope: !3094)
!3107 = !DILocation(line: 1036, column: 7, scope: !3094)
!3108 = !DILocation(line: 1038, column: 34, scope: !3094)
!3109 = !DILocation(line: 1038, column: 7, scope: !3094)
!3110 = !DILocation(line: 1040, column: 3, scope: !3094)
!3111 = !DILocation(line: 1040, column: 17, scope: !3094)
!3112 = !DILocation(line: 1040, column: 45, scope: !3094)
!3113 = !DILocation(line: 1039, column: 7, scope: !3094)
!3114 = !DILocation(line: 1041, column: 7, scope: !3093)
!3115 = !DILocation(line: 1041, column: 7, scope: !3097)
!3116 = !DILocation(line: 1043, column: 30, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 1042, column: 2)
!3118 = !DILocation(line: 1043, column: 50, scope: !3117)
!3119 = !DILocation(line: 1043, column: 4, scope: !3117)
!3120 = !DILocation(line: 1045, column: 16, scope: !3117)
!3121 = !DILocation(line: 1045, column: 19, scope: !3117)
!3122 = !DILocation(line: 1046, column: 7, scope: !3117)
!3123 = !DILocation(line: 1044, column: 4, scope: !3117)
!3124 = distinct !{!3124, !3114, !3125}
!3125 = !DILocation(line: 1047, column: 2, scope: !3093)
!3126 = !DILocation(line: 0, scope: !3095)
!3127 = distinct !{!3127, !3090, !3128}
!3128 = !DILocation(line: 1048, column: 5, scope: !3091)
!3129 = !DILocation(line: 1049, column: 3, scope: !3079)
!3130 = !DILocation(line: 1050, column: 1, scope: !3079)
!3131 = distinct !DISubprogram(name: "free_move_list", scope: !3, file: !3, line: 109, type: !2322, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3132)
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "head", arg: 1, scope: !3131, file: !3, line: 109, type: !574)
!3134 = !DILocalVariable(name: "next", scope: !3131, file: !3, line: 111, type: !574)
!3135 = !DILocation(line: 0, scope: !3131)
!3136 = !DILocation(line: 113, column: 3, scope: !3131)
!3137 = !DILocation(line: 113, column: 15, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 113, column: 3)
!3139 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 113, column: 3)
!3140 = !DILocation(line: 113, column: 3, scope: !3139)
!3141 = !DILocation(line: 115, column: 20, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 114, column: 5)
!3143 = !DILocation(line: 116, column: 7, scope: !3142)
!3144 = !DILocation(line: 113, column: 3, scope: !3138)
!3145 = distinct !{!3145, !3140, !3146}
!3146 = !DILocation(line: 117, column: 5, scope: !3139)
!3147 = !DILocation(line: 118, column: 1, scope: !3131)
!3148 = distinct !DISubprogram(name: "VEC_move_t_heap_free", scope: !3, file: !3, line: 619, type: !3149, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3152)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !3151}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!3152 = !{!3153}
!3153 = !DILocalVariable(name: "vec_", arg: 1, scope: !3148, file: !3, line: 619, type: !3151)
!3154 = !DILocation(line: 0, scope: !3148)
!3155 = !DILocation(line: 619, column: 1, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 619, column: 1)
!3157 = !DILocation(line: 619, column: 1, scope: !3148)
!3158 = distinct !DISubprogram(name: "recog_memoized", scope: !3159, file: !3159, line: 150, type: !3160, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3162)
!3159 = !DIFile(filename: "./recog.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!566, !589}
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "insn", arg: 1, scope: !3158, file: !3159, line: 150, type: !589)
!3164 = !DILocation(line: 0, scope: !3158)
!3165 = !DILocation(line: 152, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3158, file: !3159, line: 152, column: 7)
!3167 = !DILocation(line: 152, column: 24, scope: !3166)
!3168 = !DILocation(line: 152, column: 7, scope: !3158)
!3169 = !DILocation(line: 153, column: 31, scope: !3166)
!3170 = !DILocation(line: 153, column: 24, scope: !3166)
!3171 = !DILocation(line: 153, column: 22, scope: !3166)
!3172 = !DILocation(line: 153, column: 5, scope: !3166)
!3173 = !DILocation(line: 154, column: 10, scope: !3158)
!3174 = !DILocation(line: 154, column: 3, scope: !3158)
!3175 = distinct !DISubprogram(name: "change_regs", scope: !3, file: !3, line: 155, type: !3176, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!565, !3178}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3180 = !DILocalVariable(name: "loc", arg: 1, scope: !3175, file: !3, line: 155, type: !3178)
!3181 = !DILocalVariable(name: "i", scope: !3175, file: !3, line: 157, type: !566)
!3182 = !DILocalVariable(name: "regno", scope: !3175, file: !3, line: 157, type: !566)
!3183 = !DILocalVariable(name: "result", scope: !3175, file: !3, line: 157, type: !566)
!3184 = !DILocalVariable(name: "fmt", scope: !3175, file: !3, line: 158, type: !571)
!3185 = !DILocalVariable(name: "code", scope: !3175, file: !3, line: 159, type: !420)
!3186 = !DILocalVariable(name: "reg", scope: !3175, file: !3, line: 160, type: !589)
!3187 = !DILocalVariable(name: "j", scope: !3188, file: !3, line: 189, type: !566)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 188, column: 2)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 187, column: 16)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 185, column: 11)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 184, column: 5)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 183, column: 3)
!3193 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 183, column: 3)
!3194 = !DILocation(line: 0, scope: !3175)
!3195 = !DILocation(line: 162, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 162, column: 7)
!3197 = !DILocation(line: 162, column: 12, scope: !3196)
!3198 = !DILocation(line: 162, column: 7, scope: !3175)
!3199 = !DILocation(line: 164, column: 10, scope: !3175)
!3200 = !DILocation(line: 165, column: 12, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 165, column: 7)
!3202 = !DILocation(line: 165, column: 7, scope: !3175)
!3203 = !DILocation(line: 167, column: 15, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 166, column: 5)
!3205 = !DILocation(line: 168, column: 17, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 168, column: 11)
!3207 = !DILocation(line: 170, column: 20, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 170, column: 11)
!3209 = !DILocation(line: 170, column: 17, scope: !3208)
!3210 = !DILocation(line: 168, column: 11, scope: !3204)
!3211 = !DILocation(line: 173, column: 11, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 173, column: 11)
!3213 = !DILocation(line: 173, column: 45, scope: !3212)
!3214 = !DILocation(line: 173, column: 11, scope: !3204)
!3215 = !DILocation(line: 175, column: 13, scope: !3204)
!3216 = !DILocation(line: 176, column: 18, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 176, column: 11)
!3218 = !DILocation(line: 176, column: 15, scope: !3217)
!3219 = !DILocation(line: 176, column: 11, scope: !3204)
!3220 = !DILocation(line: 178, column: 12, scope: !3204)
!3221 = !DILocation(line: 179, column: 7, scope: !3204)
!3222 = !DILocation(line: 182, column: 9, scope: !3175)
!3223 = !DILocation(line: 183, column: 12, scope: !3193)
!3224 = !DILocation(line: 183, column: 8, scope: !3193)
!3225 = !DILocation(line: 0, scope: !3193)
!3226 = !DILocation(line: 183, column: 41, scope: !3192)
!3227 = !DILocation(line: 183, column: 3, scope: !3193)
!3228 = !DILocation(line: 185, column: 11, scope: !3190)
!3229 = !DILocation(line: 185, column: 18, scope: !3190)
!3230 = !DILocation(line: 185, column: 11, scope: !3191)
!3231 = !DILocation(line: 186, column: 25, scope: !3190)
!3232 = !DILocation(line: 186, column: 11, scope: !3190)
!3233 = !DILocation(line: 186, column: 41, scope: !3190)
!3234 = !DILocation(line: 186, column: 2, scope: !3190)
!3235 = !DILocation(line: 187, column: 23, scope: !3189)
!3236 = !DILocation(line: 187, column: 16, scope: !3190)
!3237 = !DILocation(line: 191, column: 13, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 191, column: 4)
!3239 = !DILocation(line: 0, scope: !3188)
!3240 = !DILocation(line: 191, column: 9, scope: !3238)
!3241 = !DILocation(line: 0, scope: !3238)
!3242 = !DILocation(line: 191, column: 38, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 191, column: 4)
!3244 = !DILocation(line: 191, column: 4, scope: !3238)
!3245 = !DILocation(line: 192, column: 29, scope: !3243)
!3246 = !DILocation(line: 192, column: 15, scope: !3243)
!3247 = !DILocation(line: 192, column: 51, scope: !3243)
!3248 = !DILocation(line: 191, column: 4, scope: !3243)
!3249 = distinct !{!3249, !3244, !3250}
!3250 = !DILocation(line: 192, column: 54, scope: !3238)
!3251 = !DILocation(line: 183, column: 3, scope: !3192)
!3252 = distinct !{!3252, !3227, !3253}
!3253 = !DILocation(line: 194, column: 5, scope: !3193)
!3254 = !DILocation(line: 195, column: 10, scope: !3175)
!3255 = !DILocation(line: 195, column: 3, scope: !3175)
!3256 = !DILocation(line: 196, column: 1, scope: !3175)
!3257 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !645, file: !645, line: 224, type: !3258, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !3260, !3261, !7, !3264}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !590, line: 48, baseType: !3262)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3265 = !{!3266, !3267, !3268, !3269}
!3266 = !DILocalVariable(name: "bi", arg: 1, scope: !3257, file: !645, line: 224, type: !3260)
!3267 = !DILocalVariable(name: "map", arg: 2, scope: !3257, file: !645, line: 224, type: !3261)
!3268 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3257, file: !645, line: 225, type: !7)
!3269 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3257, file: !645, line: 225, type: !3264)
!3270 = !DILocation(line: 0, scope: !3257)
!3271 = !DILocation(line: 227, column: 19, scope: !3257)
!3272 = !DILocation(line: 227, column: 12, scope: !3257)
!3273 = !DILocation(line: 228, column: 7, scope: !3257)
!3274 = !DILocation(line: 228, column: 12, scope: !3257)
!3275 = !DILocation(line: 0, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !645, line: 233, column: 11)
!3277 = distinct !DILexicalBlock(scope: !3257, file: !645, line: 232, column: 5)
!3278 = !DILocation(line: 0, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3277, file: !645, line: 239, column: 11)
!3280 = !DILocation(line: 231, column: 3, scope: !3257)
!3281 = !DILocation(line: 233, column: 16, scope: !3276)
!3282 = !DILocation(line: 233, column: 12, scope: !3276)
!3283 = !DILocation(line: 233, column: 11, scope: !3277)
!3284 = !DILocation(line: 235, column: 13, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3276, file: !645, line: 234, column: 2)
!3286 = !DILocation(line: 236, column: 4, scope: !3285)
!3287 = !DILocation(line: 239, column: 21, scope: !3279)
!3288 = !DILocation(line: 239, column: 26, scope: !3279)
!3289 = !DILocation(line: 239, column: 11, scope: !3277)
!3290 = !DILocation(line: 241, column: 28, scope: !3277)
!3291 = !DILocation(line: 241, column: 16, scope: !3277)
!3292 = distinct !{!3292, !3280, !3293}
!3293 = !DILocation(line: 242, column: 5, scope: !3257)
!3294 = !DILocation(line: 245, column: 11, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3257, file: !645, line: 245, column: 7)
!3296 = !DILocation(line: 245, column: 17, scope: !3295)
!3297 = !DILocation(line: 245, column: 22, scope: !3295)
!3298 = !DILocation(line: 245, column: 7, scope: !3257)
!3299 = !DILocation(line: 246, column: 27, scope: !3295)
!3300 = !DILocation(line: 246, column: 32, scope: !3295)
!3301 = !DILocation(line: 246, column: 5, scope: !3295)
!3302 = !DILocation(line: 249, column: 27, scope: !3257)
!3303 = !DILocation(line: 249, column: 46, scope: !3257)
!3304 = !DILocation(line: 249, column: 7, scope: !3257)
!3305 = !DILocation(line: 249, column: 15, scope: !3257)
!3306 = !DILocation(line: 250, column: 14, scope: !3257)
!3307 = !DILocation(line: 251, column: 26, scope: !3257)
!3308 = !DILocation(line: 251, column: 7, scope: !3257)
!3309 = !DILocation(line: 251, column: 12, scope: !3257)
!3310 = !DILocation(line: 257, column: 16, scope: !3257)
!3311 = !DILocation(line: 257, column: 13, scope: !3257)
!3312 = !DILocation(line: 259, column: 11, scope: !3257)
!3313 = !DILocation(line: 260, column: 1, scope: !3257)
!3314 = distinct !DISubprogram(name: "bmp_iter_set", scope: !645, file: !645, line: 393, type: !3315, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!565, !3260, !3264}
!3317 = !{!3318, !3319, !3320}
!3318 = !DILocalVariable(name: "bi", arg: 1, scope: !3314, file: !645, line: 393, type: !3260)
!3319 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3314, file: !645, line: 393, type: !3264)
!3320 = !DILabel(scope: !3321, name: "next_bit", file: !645, line: 398)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !645, line: 397, column: 5)
!3322 = distinct !DILexicalBlock(scope: !3314, file: !645, line: 396, column: 7)
!3323 = !DILocation(line: 0, scope: !3314)
!3324 = !DILocation(line: 396, column: 11, scope: !3322)
!3325 = !DILocation(line: 396, column: 7, scope: !3322)
!3326 = !DILocation(line: 396, column: 7, scope: !3314)
!3327 = !DILocation(line: 419, column: 15, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !645, line: 418, column: 2)
!3329 = distinct !DILexicalBlock(scope: !3314, file: !645, line: 415, column: 5)
!3330 = !DILocation(line: 399, column: 7, scope: !3321)
!3331 = !DILocation(line: 398, column: 5, scope: !3321)
!3332 = !DILocation(line: 399, column: 20, scope: !3321)
!3333 = !DILocation(line: 399, column: 25, scope: !3321)
!3334 = !DILocation(line: 399, column: 14, scope: !3321)
!3335 = !DILocation(line: 401, column: 13, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3321, file: !645, line: 400, column: 2)
!3337 = !DILocation(line: 402, column: 12, scope: !3336)
!3338 = distinct !{!3338, !3330, !3339}
!3339 = !DILocation(line: 403, column: 2, scope: !3321)
!3340 = !DILocation(line: 410, column: 15, scope: !3314)
!3341 = !DILocation(line: 410, column: 42, scope: !3314)
!3342 = !DILocation(line: 411, column: 26, scope: !3314)
!3343 = !DILocation(line: 410, column: 11, scope: !3314)
!3344 = !DILocation(line: 412, column: 7, scope: !3314)
!3345 = !DILocation(line: 412, column: 14, scope: !3314)
!3346 = !DILocation(line: 0, scope: !3329)
!3347 = !DILocation(line: 414, column: 3, scope: !3314)
!3348 = !DILocation(line: 417, column: 7, scope: !3329)
!3349 = !DILocation(line: 417, column: 18, scope: !3329)
!3350 = !DILocation(line: 417, column: 26, scope: !3329)
!3351 = !DILocation(line: 419, column: 13, scope: !3328)
!3352 = !DILocation(line: 420, column: 8, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3328, file: !645, line: 420, column: 8)
!3354 = !DILocation(line: 420, column: 8, scope: !3328)
!3355 = !DILocation(line: 422, column: 12, scope: !3328)
!3356 = !DILocation(line: 423, column: 15, scope: !3328)
!3357 = distinct !{!3357, !3348, !3358}
!3358 = !DILocation(line: 424, column: 2, scope: !3329)
!3359 = !DILocation(line: 427, column: 28, scope: !3329)
!3360 = !DILocation(line: 427, column: 16, scope: !3329)
!3361 = !DILocation(line: 428, column: 12, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3329, file: !645, line: 428, column: 11)
!3363 = !DILocation(line: 428, column: 11, scope: !3329)
!3364 = !DILocation(line: 430, column: 27, scope: !3329)
!3365 = !DILocation(line: 430, column: 32, scope: !3329)
!3366 = !DILocation(line: 430, column: 15, scope: !3329)
!3367 = !DILocation(line: 431, column: 19, scope: !3329)
!3368 = distinct !{!3368, !3347, !3369}
!3369 = !DILocation(line: 432, column: 5, scope: !3314)
!3370 = !DILocation(line: 433, column: 1, scope: !3314)
!3371 = distinct !DISubprogram(name: "rhs_regno", scope: !421, file: !421, line: 1051, type: !3372, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3377)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!7, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !590, line: 51, baseType: !3375)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "x", arg: 1, scope: !3371, file: !421, line: 1051, type: !3374)
!3379 = !DILocation(line: 0, scope: !3371)
!3380 = !DILocation(line: 1053, column: 10, scope: !3371)
!3381 = !DILocation(line: 1053, column: 3, scope: !3371)
!3382 = distinct !DISubprogram(name: "set_allocno_reg", scope: !3, file: !3, line: 251, type: !3383, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !579, !589}
!3385 = !{!3386, !3387, !3388, !3389, !3390}
!3386 = !DILocalVariable(name: "allocno", arg: 1, scope: !3382, file: !3, line: 251, type: !579)
!3387 = !DILocalVariable(name: "reg", arg: 2, scope: !3382, file: !3, line: 251, type: !589)
!3388 = !DILocalVariable(name: "regno", scope: !3382, file: !3, line: 253, type: !566)
!3389 = !DILocalVariable(name: "a", scope: !3382, file: !3, line: 254, type: !579)
!3390 = !DILocalVariable(name: "node", scope: !3382, file: !3, line: 255, type: !1719)
!3391 = !DILocation(line: 0, scope: !3382)
!3392 = !DILocation(line: 257, column: 10, scope: !3382)
!3393 = !DILocation(line: 258, column: 12, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 258, column: 3)
!3395 = !DILocation(line: 258, column: 34, scope: !3394)
!3396 = !DILocation(line: 258, column: 8, scope: !3394)
!3397 = !DILocation(line: 0, scope: !3394)
!3398 = !DILocation(line: 259, column: 10, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 258, column: 3)
!3400 = !DILocation(line: 258, column: 3, scope: !3394)
!3401 = !DILocation(line: 261, column: 30, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 261, column: 9)
!3403 = !DILocation(line: 261, column: 9, scope: !3402)
!3404 = !DILocation(line: 261, column: 9, scope: !3399)
!3405 = !DILocation(line: 262, column: 7, scope: !3402)
!3406 = !DILocation(line: 262, column: 23, scope: !3402)
!3407 = !DILocation(line: 260, column: 12, scope: !3399)
!3408 = !DILocation(line: 258, column: 3, scope: !3399)
!3409 = distinct !{!3409, !3400, !3410}
!3410 = !DILocation(line: 262, column: 25, scope: !3394)
!3411 = !DILocation(line: 263, column: 8, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 263, column: 3)
!3413 = !DILocation(line: 0, scope: !3412)
!3414 = !DILocation(line: 263, column: 37, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 263, column: 3)
!3416 = !DILocation(line: 263, column: 3, scope: !3412)
!3417 = !DILocation(line: 264, column: 5, scope: !3415)
!3418 = !DILocation(line: 264, column: 21, scope: !3415)
!3419 = !DILocation(line: 263, column: 3, scope: !3415)
!3420 = distinct !{!3420, !3416, !3421}
!3421 = !DILocation(line: 264, column: 23, scope: !3412)
!3422 = !DILocation(line: 265, column: 11, scope: !3382)
!3423 = !DILocation(line: 0, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 269, column: 2)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 268, column: 11)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 267, column: 5)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 266, column: 3)
!3428 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 266, column: 3)
!3429 = !DILocation(line: 266, column: 8, scope: !3428)
!3430 = !DILocation(line: 0, scope: !3428)
!3431 = !DILocation(line: 268, column: 13, scope: !3425)
!3432 = !DILocation(line: 268, column: 21, scope: !3425)
!3433 = !DILocation(line: 268, column: 29, scope: !3425)
!3434 = !DILocation(line: 268, column: 46, scope: !3425)
!3435 = !DILocation(line: 268, column: 11, scope: !3426)
!3436 = !DILocation(line: 270, column: 17, scope: !3424)
!3437 = !DILocation(line: 271, column: 13, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 271, column: 8)
!3439 = !DILocation(line: 271, column: 8, scope: !3424)
!3440 = !DILocation(line: 273, column: 14, scope: !3424)
!3441 = !DILocation(line: 273, column: 8, scope: !3424)
!3442 = !DILocation(line: 274, column: 2, scope: !3424)
!3443 = !DILocation(line: 0, scope: !3425)
!3444 = !DILocation(line: 275, column: 13, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 275, column: 11)
!3446 = !DILocation(line: 275, column: 11, scope: !3426)
!3447 = !DILocation(line: 277, column: 11, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 277, column: 11)
!3449 = !DILocation(line: 277, column: 11, scope: !3426)
!3450 = !DILocation(line: 279, column: 35, scope: !3426)
!3451 = !DILocation(line: 266, column: 3, scope: !3427)
!3452 = distinct !{!3452, !3453, !3454}
!3453 = !DILocation(line: 266, column: 3, scope: !3428)
!3454 = !DILocation(line: 280, column: 5, scope: !3428)
!3455 = !DILocation(line: 281, column: 1, scope: !3382)
!3456 = distinct !DISubprogram(name: "create_new_reg", scope: !3, file: !3, line: 222, type: !3457, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!589, !589}
!3459 = !{!3460, !3461}
!3460 = !DILocalVariable(name: "original_reg", arg: 1, scope: !3456, file: !3, line: 222, type: !589)
!3461 = !DILocalVariable(name: "new_reg", scope: !3456, file: !3, line: 224, type: !589)
!3462 = !DILocation(line: 0, scope: !3456)
!3463 = !DILocation(line: 226, column: 26, scope: !3456)
!3464 = !DILocation(line: 226, column: 13, scope: !3456)
!3465 = !DILocation(line: 227, column: 30, scope: !3456)
!3466 = !DILocation(line: 227, column: 3, scope: !3456)
!3467 = !DILocation(line: 227, column: 28, scope: !3456)
!3468 = !DILocation(line: 228, column: 29, scope: !3456)
!3469 = !DILocation(line: 228, column: 3, scope: !3456)
!3470 = !DILocation(line: 228, column: 27, scope: !3456)
!3471 = !DILocation(line: 229, column: 27, scope: !3456)
!3472 = !DILocation(line: 229, column: 25, scope: !3456)
!3473 = !DILocation(line: 230, column: 25, scope: !3456)
!3474 = !DILocation(line: 230, column: 3, scope: !3456)
!3475 = !DILocation(line: 230, column: 23, scope: !3456)
!3476 = !DILocation(line: 231, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 231, column: 7)
!3478 = !DILocation(line: 231, column: 33, scope: !3477)
!3479 = !DILocation(line: 231, column: 40, scope: !3477)
!3480 = !DILocation(line: 231, column: 54, scope: !3477)
!3481 = !DILocation(line: 231, column: 37, scope: !3477)
!3482 = !DILocation(line: 233, column: 7, scope: !3477)
!3483 = !DILocation(line: 233, column: 24, scope: !3477)
!3484 = !DILocation(line: 232, column: 5, scope: !3477)
!3485 = !DILocation(line: 234, column: 3, scope: !3456)
!3486 = distinct !DISubprogram(name: "bmp_iter_next", scope: !645, file: !645, line: 382, type: !3487, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3260, !3264}
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "bi", arg: 1, scope: !3486, file: !645, line: 382, type: !3260)
!3491 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3486, file: !645, line: 382, type: !3264)
!3492 = !DILocation(line: 0, scope: !3486)
!3493 = !DILocation(line: 384, column: 7, scope: !3486)
!3494 = !DILocation(line: 384, column: 12, scope: !3486)
!3495 = !DILocation(line: 385, column: 11, scope: !3486)
!3496 = !DILocation(line: 386, column: 1, scope: !3486)
!3497 = distinct !DISubprogram(name: "subloop_tree_node_p", scope: !3, file: !3, line: 240, type: !3498, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!565, !1719, !1719}
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "subnode", arg: 1, scope: !3497, file: !3, line: 240, type: !1719)
!3502 = !DILocalVariable(name: "node", arg: 2, scope: !3497, file: !3, line: 240, type: !1719)
!3503 = !DILocation(line: 0, scope: !3497)
!3504 = !DILocation(line: 242, column: 3, scope: !3497)
!3505 = !DILocation(line: 242, column: 18, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 242, column: 3)
!3507 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 242, column: 3)
!3508 = !DILocation(line: 242, column: 3, scope: !3507)
!3509 = !DILocation(line: 243, column: 17, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 243, column: 9)
!3511 = !DILocation(line: 243, column: 9, scope: !3506)
!3512 = !DILocation(line: 242, column: 46, scope: !3506)
!3513 = !DILocation(line: 242, column: 3, scope: !3506)
!3514 = distinct !{!3514, !3508, !3515}
!3515 = !DILocation(line: 244, column: 14, scope: !3507)
!3516 = !DILocation(line: 246, column: 1, scope: !3497)
!3517 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !135, file: !135, line: 85, type: !3518, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3523)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!566, !3520, !7, !3522}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!3523 = !{!3524, !3525, !3526}
!3524 = !DILocalVariable(name: "vec_", arg: 1, scope: !3517, file: !135, line: 85, type: !3520)
!3525 = !DILocalVariable(name: "ix_", arg: 2, scope: !3517, file: !135, line: 85, type: !7)
!3526 = !DILocalVariable(name: "ptr", arg: 3, scope: !3517, file: !135, line: 85, type: !3522)
!3527 = !DILocation(line: 0, scope: !3517)
!3528 = !DILocation(line: 85, column: 1, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3517, file: !135, line: 85, column: 1)
!3530 = !DILocation(line: 85, column: 1, scope: !3517)
!3531 = !DILocation(line: 85, column: 1, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3529, file: !135, line: 85, column: 1)
!3533 = !DILocation(line: 85, column: 1, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3529, file: !135, line: 85, column: 1)
!3535 = !DILocation(line: 0, scope: !3529)
!3536 = distinct !DISubprogram(name: "entered_from_non_parent_p", scope: !3, file: !3, line: 287, type: !3537, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!565, !1719}
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545}
!3540 = !DILocalVariable(name: "loop_node", arg: 1, scope: !3536, file: !3, line: 287, type: !1719)
!3541 = !DILocalVariable(name: "bb_node", scope: !3536, file: !3, line: 289, type: !1719)
!3542 = !DILocalVariable(name: "src_loop_node", scope: !3536, file: !3, line: 289, type: !1719)
!3543 = !DILocalVariable(name: "parent", scope: !3536, file: !3, line: 289, type: !1719)
!3544 = !DILocalVariable(name: "e", scope: !3536, file: !3, line: 290, type: !979)
!3545 = !DILocalVariable(name: "ei", scope: !3536, file: !3, line: 291, type: !2361)
!3546 = !DILocation(line: 0, scope: !3536)
!3547 = !DILocation(line: 290, column: 3, scope: !3536)
!3548 = !DILocation(line: 291, column: 3, scope: !3536)
!3549 = !DILocation(line: 293, column: 29, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 293, column: 3)
!3551 = !DILocation(line: 0, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 296, column: 2)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 295, column: 7)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 294, column: 9)
!3555 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 293, column: 3)
!3556 = !DILocation(line: 0, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 296, column: 2)
!3558 = !DILocation(line: 293, column: 8, scope: !3550)
!3559 = !DILocation(line: 0, scope: !3550)
!3560 = !DILocation(line: 293, column: 47, scope: !3555)
!3561 = !DILocation(line: 293, column: 3, scope: !3550)
!3562 = !DILocation(line: 294, column: 18, scope: !3554)
!3563 = !DILocation(line: 294, column: 21, scope: !3554)
!3564 = !DILocation(line: 294, column: 9, scope: !3555)
!3565 = !DILocation(line: 296, column: 2, scope: !3552)
!3566 = !DILocation(line: 296, column: 2, scope: !3557)
!3567 = !DILocation(line: 297, column: 8, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 297, column: 8)
!3569 = !DILocation(line: 297, column: 11, scope: !3568)
!3570 = !DILocation(line: 297, column: 18, scope: !3568)
!3571 = !DILocation(line: 297, column: 15, scope: !3568)
!3572 = !DILocation(line: 298, column: 8, scope: !3568)
!3573 = !DILocation(line: 298, column: 28, scope: !3568)
!3574 = !DILocation(line: 298, column: 50, scope: !3568)
!3575 = !DILocation(line: 298, column: 58, scope: !3568)
!3576 = !DILocation(line: 297, column: 8, scope: !3557)
!3577 = !DILocation(line: 300, column: 13, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 300, column: 8)
!3579 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 299, column: 6)
!3580 = !DILocation(line: 0, scope: !3578)
!3581 = !DILocation(line: 300, column: 8, scope: !3578)
!3582 = !DILocation(line: 303, column: 14, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 303, column: 7)
!3584 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 300, column: 8)
!3585 = !DILocation(line: 303, column: 7, scope: !3584)
!3586 = !DILocation(line: 300, column: 8, scope: !3584)
!3587 = distinct !{!3587, !3581, !3588}
!3588 = !DILocation(line: 304, column: 5, scope: !3578)
!3589 = !DILocation(line: 305, column: 12, scope: !3579)
!3590 = !DILocation(line: 308, column: 13, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 308, column: 8)
!3592 = !DILocation(line: 0, scope: !3591)
!3593 = !DILocation(line: 308, column: 8, scope: !3591)
!3594 = !DILocation(line: 311, column: 21, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 311, column: 7)
!3596 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 308, column: 8)
!3597 = !DILocation(line: 311, column: 7, scope: !3596)
!3598 = !DILocation(line: 308, column: 8, scope: !3596)
!3599 = distinct !{!3599, !3593, !3600}
!3600 = !DILocation(line: 312, column: 5, scope: !3591)
!3601 = !DILocation(line: 313, column: 12, scope: !3579)
!3602 = distinct !{!3602, !3565, !3603}
!3603 = !DILocation(line: 315, column: 6, scope: !3552)
!3604 = !DILocation(line: 293, column: 75, scope: !3555)
!3605 = !DILocation(line: 293, column: 3, scope: !3555)
!3606 = distinct !{!3606, !3561, !3607}
!3607 = !DILocation(line: 316, column: 7, scope: !3550)
!3608 = !DILocation(line: 318, column: 1, scope: !3536)
!3609 = distinct !DISubprogram(name: "ei_end_p", scope: !148, file: !148, line: 721, type: !3610, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!565, !2361}
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "i", arg: 1, scope: !3609, file: !148, line: 721, type: !2361)
!3614 = !DILocation(line: 723, column: 22, scope: !3609)
!3615 = !DILocation(line: 723, column: 19, scope: !3609)
!3616 = !DILocation(line: 723, column: 10, scope: !3609)
!3617 = !DILocation(line: 723, column: 3, scope: !3609)
!3618 = distinct !DISubprogram(name: "ei_edge", scope: !148, file: !148, line: 752, type: !3619, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!979, !2361}
!3621 = !{!3622}
!3622 = !DILocalVariable(name: "i", arg: 1, scope: !3618, file: !148, line: 752, type: !2361)
!3623 = !DILocation(line: 754, column: 10, scope: !3618)
!3624 = !DILocation(line: 754, column: 3, scope: !3618)
!3625 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !148, file: !148, line: 150, type: !3626, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3630)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!7, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!3630 = !{!3631}
!3631 = !DILocalVariable(name: "vec_", arg: 1, scope: !3625, file: !148, line: 150, type: !3628)
!3632 = !DILocation(line: 0, scope: !3625)
!3633 = !DILocation(line: 150, column: 1, scope: !3625)
!3634 = distinct !DISubprogram(name: "ei_container", scope: !148, file: !148, line: 685, type: !3635, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!967, !2361}
!3637 = !{!3638}
!3638 = !DILocalVariable(name: "i", arg: 1, scope: !3634, file: !148, line: 685, type: !2361)
!3639 = !DILocation(line: 687, column: 3, scope: !3634)
!3640 = !DILocation(line: 688, column: 10, scope: !3634)
!3641 = !DILocation(line: 688, column: 3, scope: !3634)
!3642 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !148, file: !148, line: 150, type: !3643, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!979, !3628, !7}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "vec_", arg: 1, scope: !3642, file: !148, line: 150, type: !3628)
!3647 = !DILocalVariable(name: "ix_", arg: 2, scope: !3642, file: !148, line: 150, type: !7)
!3648 = !DILocation(line: 0, scope: !3642)
!3649 = !DILocation(line: 150, column: 1, scope: !3642)
!3650 = distinct !DISubprogram(name: "df_lr_get_bb_info", scope: !1826, file: !1826, line: 1052, type: !3651, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!1824, !7}
!3653 = !{!3654}
!3654 = !DILocalVariable(name: "index", arg: 1, scope: !3650, file: !1826, line: 1052, type: !7)
!3655 = !DILocation(line: 0, scope: !3650)
!3656 = !DILocation(line: 1054, column: 15, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3650, file: !1826, line: 1054, column: 7)
!3658 = !DILocation(line: 1054, column: 22, scope: !3657)
!3659 = !DILocation(line: 1054, column: 13, scope: !3657)
!3660 = !DILocation(line: 1054, column: 7, scope: !3650)
!3661 = !DILocation(line: 1055, column: 44, scope: !3657)
!3662 = !DILocation(line: 1055, column: 37, scope: !3657)
!3663 = !DILocation(line: 1055, column: 5, scope: !3657)
!3664 = !DILocation(line: 0, scope: !3657)
!3665 = !DILocation(line: 1058, column: 1, scope: !3650)
!3666 = distinct !DISubprogram(name: "store_can_be_removed_p", scope: !3, file: !3, line: 339, type: !3667, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!565, !579, !579}
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3675}
!3670 = !DILocalVariable(name: "src_allocno", arg: 1, scope: !3666, file: !3, line: 339, type: !579)
!3671 = !DILocalVariable(name: "dest_allocno", arg: 2, scope: !3666, file: !3, line: 339, type: !579)
!3672 = !DILocalVariable(name: "regno", scope: !3666, file: !3, line: 341, type: !566)
!3673 = !DILocalVariable(name: "orig_regno", scope: !3666, file: !3, line: 341, type: !566)
!3674 = !DILocalVariable(name: "a", scope: !3666, file: !3, line: 342, type: !579)
!3675 = !DILocalVariable(name: "node", scope: !3666, file: !3, line: 343, type: !1719)
!3676 = !DILocation(line: 0, scope: !3666)
!3677 = !DILocation(line: 347, column: 16, scope: !3666)
!3678 = !DILocation(line: 348, column: 11, scope: !3666)
!3679 = !DILocation(line: 349, column: 15, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 349, column: 3)
!3681 = !DILocation(line: 0, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 352, column: 5)
!3683 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 349, column: 3)
!3684 = !DILocation(line: 349, column: 8, scope: !3680)
!3685 = !DILocation(line: 0, scope: !3680)
!3686 = !DILocation(line: 350, column: 13, scope: !3683)
!3687 = !DILocation(line: 349, column: 3, scope: !3680)
!3688 = !DILocation(line: 353, column: 17, scope: !3682)
!3689 = !DILocation(line: 353, column: 11, scope: !3682)
!3690 = !DILocation(line: 355, column: 11, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 355, column: 11)
!3692 = !DILocation(line: 355, column: 35, scope: !3691)
!3693 = !DILocation(line: 355, column: 11, scope: !3682)
!3694 = !DILocation(line: 358, column: 36, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 358, column: 16)
!3696 = !DILocation(line: 358, column: 16, scope: !3695)
!3697 = !DILocation(line: 358, column: 16, scope: !3691)
!3698 = !DILocation(line: 360, column: 22, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 360, column: 16)
!3700 = !DILocation(line: 360, column: 16, scope: !3699)
!3701 = !DILocation(line: 360, column: 16, scope: !3695)
!3702 = !DILocation(line: 351, column: 21, scope: !3683)
!3703 = !DILocation(line: 349, column: 3, scope: !3683)
!3704 = distinct !{!3704, !3687, !3705}
!3705 = !DILocation(line: 370, column: 5, scope: !3680)
!3706 = !DILocation(line: 371, column: 3, scope: !3666)
!3707 = !DILocation(line: 373, column: 5, scope: !3666)
!3708 = !DILocation(line: 375, column: 1, scope: !3666)
!3709 = distinct !DISubprogram(name: "create_move", scope: !3, file: !3, line: 83, type: !3710, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!574, !579, !579}
!3712 = !{!3713, !3714, !3715}
!3713 = !DILocalVariable(name: "to", arg: 1, scope: !3709, file: !3, line: 83, type: !579)
!3714 = !DILocalVariable(name: "from", arg: 2, scope: !3709, file: !3, line: 83, type: !579)
!3715 = !DILocalVariable(name: "move", scope: !3709, file: !3, line: 85, type: !574)
!3716 = !DILocation(line: 0, scope: !3709)
!3717 = !DILocation(line: 87, column: 19, scope: !3709)
!3718 = !DILocation(line: 87, column: 10, scope: !3709)
!3719 = !DILocation(line: 88, column: 9, scope: !3709)
!3720 = !DILocation(line: 88, column: 14, scope: !3709)
!3721 = !DILocation(line: 89, column: 9, scope: !3709)
!3722 = !DILocation(line: 89, column: 18, scope: !3709)
!3723 = !DILocation(line: 90, column: 9, scope: !3709)
!3724 = !DILocation(line: 90, column: 12, scope: !3709)
!3725 = !DILocation(line: 91, column: 9, scope: !3709)
!3726 = !DILocation(line: 91, column: 14, scope: !3709)
!3727 = !DILocation(line: 92, column: 9, scope: !3709)
!3728 = !DILocation(line: 92, column: 14, scope: !3709)
!3729 = !DILocation(line: 93, column: 9, scope: !3709)
!3730 = !DILocation(line: 93, column: 14, scope: !3709)
!3731 = !DILocation(line: 94, column: 9, scope: !3709)
!3732 = !DILocation(line: 94, column: 19, scope: !3709)
!3733 = !DILocation(line: 95, column: 3, scope: !3709)
!3734 = distinct !DISubprogram(name: "add_to_edge_list", scope: !3, file: !3, line: 201, type: !3735, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !979, !574, !565}
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DILocalVariable(name: "e", arg: 1, scope: !3734, file: !3, line: 201, type: !979)
!3739 = !DILocalVariable(name: "move", arg: 2, scope: !3734, file: !3, line: 201, type: !574)
!3740 = !DILocalVariable(name: "head_p", arg: 3, scope: !3734, file: !3, line: 201, type: !565)
!3741 = !DILocalVariable(name: "last", scope: !3734, file: !3, line: 203, type: !574)
!3742 = !DILocation(line: 0, scope: !3734)
!3743 = !DILocation(line: 207, column: 32, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 206, column: 5)
!3745 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 205, column: 7)
!3746 = !DILocation(line: 207, column: 13, scope: !3744)
!3747 = !DILocation(line: 207, column: 18, scope: !3744)
!3748 = !DILocation(line: 208, column: 14, scope: !3744)
!3749 = !DILocation(line: 217, column: 1, scope: !3734)
!3750 = distinct !DISubprogram(name: "eq_edge_move_lists_p", scope: !3, file: !3, line: 558, type: !3751, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3753)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!565, !967}
!3753 = !{!3754, !3755, !3756}
!3754 = !DILocalVariable(name: "vec", arg: 1, scope: !3750, file: !3, line: 558, type: !967)
!3755 = !DILocalVariable(name: "list", scope: !3750, file: !3, line: 560, type: !574)
!3756 = !DILocalVariable(name: "i", scope: !3750, file: !3, line: 561, type: !566)
!3757 = !DILocation(line: 0, scope: !3750)
!3758 = !DILocation(line: 563, column: 19, scope: !3750)
!3759 = !DILocation(line: 563, column: 36, scope: !3750)
!3760 = !DILocation(line: 564, column: 12, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 564, column: 3)
!3762 = !DILocation(line: 564, column: 8, scope: !3761)
!3763 = !DILocation(line: 0, scope: !3761)
!3764 = !DILocation(line: 564, column: 36, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 564, column: 3)
!3766 = !DILocation(line: 564, column: 3, scope: !3761)
!3767 = !DILocation(line: 565, column: 43, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 565, column: 9)
!3769 = !DILocation(line: 565, column: 60, scope: !3768)
!3770 = !DILocation(line: 565, column: 11, scope: !3768)
!3771 = !DILocation(line: 565, column: 9, scope: !3765)
!3772 = !DILocation(line: 564, column: 3, scope: !3765)
!3773 = distinct !{!3773, !3766, !3774}
!3774 = !DILocation(line: 566, column: 14, scope: !3761)
!3775 = !DILocation(line: 568, column: 1, scope: !3750)
!3776 = distinct !DISubprogram(name: "eq_move_lists_p", scope: !3, file: !3, line: 123, type: !3777, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!565, !574, !574}
!3779 = !{!3780, !3781}
!3780 = !DILocalVariable(name: "list1", arg: 1, scope: !3776, file: !3, line: 123, type: !574)
!3781 = !DILocalVariable(name: "list2", arg: 2, scope: !3776, file: !3, line: 123, type: !574)
!3782 = !DILocation(line: 0, scope: !3776)
!3783 = !DILocation(line: 125, column: 3, scope: !3776)
!3784 = !DILocation(line: 125, column: 16, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 125, column: 3)
!3786 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 125, column: 3)
!3787 = !DILocation(line: 125, column: 33, scope: !3785)
!3788 = !DILocation(line: 125, column: 24, scope: !3785)
!3789 = !DILocation(line: 125, column: 3, scope: !3786)
!3790 = !DILocation(line: 127, column: 16, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 127, column: 9)
!3792 = !DILocation(line: 127, column: 31, scope: !3791)
!3793 = !DILocation(line: 127, column: 21, scope: !3791)
!3794 = !DILocation(line: 127, column: 36, scope: !3791)
!3795 = !DILocation(line: 127, column: 46, scope: !3791)
!3796 = !DILocation(line: 127, column: 59, scope: !3791)
!3797 = !DILocation(line: 127, column: 49, scope: !3791)
!3798 = !DILocation(line: 127, column: 9, scope: !3785)
!3799 = !DILocation(line: 126, column: 23, scope: !3785)
!3800 = !DILocation(line: 126, column: 44, scope: !3785)
!3801 = !DILocation(line: 125, column: 3, scope: !3785)
!3802 = distinct !{!3802, !3789, !3803}
!3803 = !DILocation(line: 128, column: 14, scope: !3786)
!3804 = !DILocation(line: 129, column: 16, scope: !3776)
!3805 = !DILocation(line: 129, column: 10, scope: !3776)
!3806 = !DILocation(line: 129, column: 3, scope: !3776)
!3807 = !DILocation(line: 130, column: 1, scope: !3776)
!3808 = distinct !DISubprogram(name: "modify_move_list", scope: !3, file: !3, line: 650, type: !3809, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!574, !574}
!3811 = !{!3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3812 = !DILocalVariable(name: "list", arg: 1, scope: !3808, file: !3, line: 650, type: !574)
!3813 = !DILocalVariable(name: "i", scope: !3808, file: !3, line: 652, type: !566)
!3814 = !DILocalVariable(name: "n", scope: !3808, file: !3, line: 652, type: !566)
!3815 = !DILocalVariable(name: "nregs", scope: !3808, file: !3, line: 652, type: !566)
!3816 = !DILocalVariable(name: "hard_regno", scope: !3808, file: !3, line: 652, type: !566)
!3817 = !DILocalVariable(name: "to", scope: !3808, file: !3, line: 653, type: !579)
!3818 = !DILocalVariable(name: "from", scope: !3808, file: !3, line: 653, type: !579)
!3819 = !DILocalVariable(name: "new_allocno", scope: !3808, file: !3, line: 653, type: !579)
!3820 = !DILocalVariable(name: "move", scope: !3808, file: !3, line: 654, type: !574)
!3821 = !DILocalVariable(name: "new_move", scope: !3808, file: !3, line: 654, type: !574)
!3822 = !DILocalVariable(name: "set_move", scope: !3808, file: !3, line: 654, type: !574)
!3823 = !DILocalVariable(name: "first", scope: !3808, file: !3, line: 654, type: !574)
!3824 = !DILocalVariable(name: "last", scope: !3808, file: !3, line: 654, type: !574)
!3825 = !DILocation(line: 0, scope: !3808)
!3826 = !DILocation(line: 656, column: 12, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 656, column: 7)
!3828 = !DILocation(line: 656, column: 7, scope: !3808)
!3829 = !DILocation(line: 659, column: 12, scope: !3808)
!3830 = !DILocation(line: 660, column: 8, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 660, column: 3)
!3832 = !DILocation(line: 0, scope: !3831)
!3833 = !DILocation(line: 660, column: 26, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 660, column: 3)
!3835 = !DILocation(line: 660, column: 3, scope: !3831)
!3836 = !DILocation(line: 672, column: 3, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 672, column: 3)
!3838 = !DILocation(line: 662, column: 18, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 661, column: 5)
!3840 = !DILocation(line: 663, column: 25, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 663, column: 11)
!3842 = !DILocation(line: 663, column: 50, scope: !3841)
!3843 = !DILocation(line: 663, column: 11, scope: !3839)
!3844 = !DILocation(line: 665, column: 15, scope: !3839)
!3845 = !DILocation(line: 665, column: 44, scope: !3839)
!3846 = !DILocation(line: 666, column: 12, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 666, column: 7)
!3848 = !DILocation(line: 666, column: 21, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 666, column: 7)
!3850 = !DILocation(line: 0, scope: !3847)
!3851 = !DILocation(line: 666, column: 7, scope: !3847)
!3852 = !DILocation(line: 668, column: 35, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 667, column: 2)
!3854 = !DILocation(line: 668, column: 4, scope: !3853)
!3855 = !DILocation(line: 668, column: 40, scope: !3853)
!3856 = !DILocation(line: 669, column: 4, scope: !3853)
!3857 = !DILocation(line: 669, column: 46, scope: !3853)
!3858 = !DILocation(line: 666, column: 31, scope: !3849)
!3859 = !DILocation(line: 666, column: 7, scope: !3849)
!3860 = distinct !{!3860, !3851, !3861}
!3861 = !DILocation(line: 670, column: 2, scope: !3847)
!3862 = !DILocation(line: 660, column: 48, scope: !3834)
!3863 = !DILocation(line: 660, column: 3, scope: !3834)
!3864 = distinct !{!3864, !3835, !3865}
!3865 = !DILocation(line: 671, column: 5, scope: !3831)
!3866 = !DILocation(line: 0, scope: !3837)
!3867 = !DILocation(line: 672, column: 26, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 672, column: 3)
!3869 = !DILocation(line: 674, column: 20, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 673, column: 5)
!3871 = !DILocation(line: 676, column: 25, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 676, column: 11)
!3873 = !DILocation(line: 676, column: 52, scope: !3872)
!3874 = !DILocation(line: 676, column: 11, scope: !3870)
!3875 = !DILocation(line: 678, column: 12, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 677, column: 2)
!3877 = !DILocation(line: 678, column: 41, scope: !3876)
!3878 = !DILocation(line: 0, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 680, column: 10)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 679, column: 4)
!3881 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 679, column: 4)
!3882 = !DILocation(line: 679, column: 9, scope: !3881)
!3883 = !DILocation(line: 679, column: 22, scope: !3880)
!3884 = !DILocation(line: 0, scope: !3881)
!3885 = !DILocation(line: 679, column: 4, scope: !3881)
!3886 = !DILocation(line: 680, column: 47, scope: !3879)
!3887 = !DILocation(line: 680, column: 10, scope: !3879)
!3888 = !DILocation(line: 680, column: 52, scope: !3879)
!3889 = !DILocation(line: 681, column: 3, scope: !3879)
!3890 = !DILocation(line: 681, column: 7, scope: !3879)
!3891 = !DILocation(line: 682, column: 10, scope: !3879)
!3892 = !DILocation(line: 682, column: 7, scope: !3879)
!3893 = !DILocation(line: 680, column: 10, scope: !3880)
!3894 = !DILocation(line: 679, column: 32, scope: !3880)
!3895 = !DILocation(line: 679, column: 4, scope: !3880)
!3896 = distinct !{!3896, !3885, !3897}
!3897 = !DILocation(line: 683, column: 9, scope: !3881)
!3898 = !DILocation(line: 684, column: 42, scope: !3876)
!3899 = !DILocation(line: 684, column: 44, scope: !3876)
!3900 = !DILocation(line: 684, column: 28, scope: !3876)
!3901 = !DILocation(line: 684, column: 10, scope: !3876)
!3902 = !DILocation(line: 684, column: 15, scope: !3876)
!3903 = !DILocation(line: 0, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 686, column: 10)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 685, column: 4)
!3906 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 685, column: 4)
!3907 = !DILocation(line: 685, column: 9, scope: !3906)
!3908 = !DILocation(line: 685, column: 22, scope: !3905)
!3909 = !DILocation(line: 0, scope: !3906)
!3910 = !DILocation(line: 685, column: 4, scope: !3906)
!3911 = !DILocation(line: 686, column: 47, scope: !3904)
!3912 = !DILocation(line: 686, column: 10, scope: !3904)
!3913 = !DILocation(line: 686, column: 52, scope: !3904)
!3914 = !DILocation(line: 687, column: 3, scope: !3904)
!3915 = !DILocation(line: 687, column: 7, scope: !3904)
!3916 = !DILocation(line: 688, column: 10, scope: !3904)
!3917 = !DILocation(line: 688, column: 7, scope: !3904)
!3918 = !DILocation(line: 686, column: 10, scope: !3905)
!3919 = !DILocation(line: 689, column: 14, scope: !3904)
!3920 = !DILocation(line: 689, column: 20, scope: !3904)
!3921 = !DILocation(line: 689, column: 8, scope: !3904)
!3922 = !DILocation(line: 689, column: 24, scope: !3904)
!3923 = !DILocation(line: 685, column: 32, scope: !3905)
!3924 = !DILocation(line: 685, column: 4, scope: !3905)
!3925 = distinct !{!3925, !3910, !3926}
!3926 = !DILocation(line: 689, column: 60, scope: !3906)
!3927 = !DILocation(line: 690, column: 10, scope: !3876)
!3928 = !DILocation(line: 690, column: 19, scope: !3876)
!3929 = !DILocation(line: 691, column: 2, scope: !3876)
!3930 = !DILocation(line: 672, column: 48, scope: !3868)
!3931 = !DILocation(line: 672, column: 3, scope: !3868)
!3932 = distinct !{!3932, !3836, !3933}
!3933 = !DILocation(line: 692, column: 5, scope: !3837)
!3934 = !DILocation(line: 694, column: 3, scope: !3808)
!3935 = !DILocation(line: 695, column: 8, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 695, column: 3)
!3937 = !DILocation(line: 0, scope: !3936)
!3938 = !DILocation(line: 695, column: 26, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 695, column: 3)
!3940 = !DILocation(line: 695, column: 3, scope: !3936)
!3941 = !DILocation(line: 696, column: 5, scope: !3939)
!3942 = !DILocation(line: 695, column: 48, scope: !3939)
!3943 = !DILocation(line: 695, column: 3, scope: !3939)
!3944 = distinct !{!3944, !3940, !3945}
!3945 = !DILocation(line: 696, column: 25, scope: !3936)
!3946 = !DILocation(line: 698, column: 18, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 698, column: 3)
!3948 = !DILocation(line: 698, column: 8, scope: !3947)
!3949 = !DILocation(line: 0, scope: !3947)
!3950 = !DILocation(line: 698, column: 55, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 698, column: 3)
!3952 = !DILocation(line: 698, column: 3, scope: !3947)
!3953 = !DILocation(line: 700, column: 14, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 699, column: 5)
!3955 = !DILocation(line: 701, column: 13, scope: !3954)
!3956 = !DILocation(line: 701, column: 18, scope: !3954)
!3957 = !DILocation(line: 702, column: 16, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 702, column: 11)
!3959 = !DILocation(line: 702, column: 11, scope: !3954)
!3960 = !DILocation(line: 703, column: 8, scope: !3958)
!3961 = !DILocation(line: 703, column: 13, scope: !3958)
!3962 = !DILocation(line: 703, column: 2, scope: !3958)
!3963 = !DILocation(line: 698, column: 3, scope: !3951)
!3964 = distinct !{!3964, !3952, !3965}
!3965 = !DILocation(line: 705, column: 5, scope: !3947)
!3966 = !DILocation(line: 706, column: 11, scope: !3808)
!3967 = !DILocation(line: 708, column: 12, scope: !3808)
!3968 = !DILocation(line: 709, column: 3, scope: !3808)
!3969 = !DILocation(line: 710, column: 8, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 710, column: 3)
!3971 = !DILocation(line: 0, scope: !3970)
!3972 = !DILocation(line: 710, column: 27, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 710, column: 3)
!3974 = !DILocation(line: 710, column: 3, scope: !3970)
!3975 = !DILocation(line: 712, column: 20, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 711, column: 5)
!3977 = !DILocation(line: 713, column: 18, scope: !3976)
!3978 = !DILocation(line: 714, column: 25, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 714, column: 11)
!3980 = !DILocation(line: 714, column: 52, scope: !3979)
!3981 = !DILocation(line: 714, column: 11, scope: !3976)
!3982 = !DILocation(line: 716, column: 12, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 715, column: 2)
!3984 = !DILocation(line: 716, column: 41, scope: !3983)
!3985 = !DILocation(line: 717, column: 9, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 717, column: 4)
!3987 = !DILocation(line: 717, column: 18, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 717, column: 4)
!3989 = !DILocation(line: 0, scope: !3986)
!3990 = !DILocation(line: 717, column: 4, scope: !3986)
!3991 = !DILocation(line: 718, column: 47, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 718, column: 10)
!3993 = !DILocation(line: 718, column: 10, scope: !3992)
!3994 = !DILocation(line: 718, column: 55, scope: !3992)
!3995 = !DILocation(line: 718, column: 52, scope: !3992)
!3996 = !DILocation(line: 719, column: 3, scope: !3992)
!3997 = !DILocation(line: 719, column: 6, scope: !3992)
!3998 = !DILocation(line: 720, column: 48, scope: !3992)
!3999 = !DILocation(line: 718, column: 10, scope: !3988)
!4000 = !DILocation(line: 728, column: 27, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 721, column: 8)
!4002 = !DILocation(line: 729, column: 6, scope: !4001)
!4003 = !DILocation(line: 728, column: 7, scope: !4001)
!4004 = !DILocation(line: 730, column: 32, scope: !4001)
!4005 = !DILocation(line: 730, column: 3, scope: !4001)
!4006 = !DILocation(line: 730, column: 30, scope: !4001)
!4007 = !DILocation(line: 732, column: 19, scope: !4001)
!4008 = !DILocation(line: 731, column: 3, scope: !4001)
!4009 = !DILocation(line: 733, column: 3, scope: !4001)
!4010 = !DILocation(line: 733, column: 36, scope: !4001)
!4011 = !DILocation(line: 734, column: 3, scope: !4001)
!4012 = !DILocation(line: 734, column: 36, scope: !4001)
!4013 = !DILocation(line: 736, column: 23, scope: !4001)
!4014 = !DILocation(line: 736, column: 7, scope: !4001)
!4015 = !DILocation(line: 735, column: 3, scope: !4001)
!4016 = !DILocation(line: 736, column: 5, scope: !4001)
!4017 = !DILocation(line: 737, column: 39, scope: !4001)
!4018 = !DILocation(line: 737, column: 3, scope: !4001)
!4019 = !DILocation(line: 737, column: 37, scope: !4001)
!4020 = !DILocation(line: 741, column: 3, scope: !4001)
!4021 = !DILocation(line: 741, column: 29, scope: !4001)
!4022 = !DILocation(line: 742, column: 31, scope: !4001)
!4023 = !DILocation(line: 742, column: 48, scope: !4001)
!4024 = !DILocation(line: 742, column: 3, scope: !4001)
!4025 = !DILocation(line: 742, column: 29, scope: !4001)
!4026 = !DILocation(line: 743, column: 37, scope: !4001)
!4027 = !DILocation(line: 743, column: 14, scope: !4001)
!4028 = !DILocation(line: 744, column: 16, scope: !4001)
!4029 = !DILocation(line: 745, column: 3, scope: !4001)
!4030 = !DILocation(line: 746, column: 21, scope: !4001)
!4031 = !DILocation(line: 747, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 747, column: 7)
!4033 = !DILocation(line: 747, column: 33, scope: !4032)
!4034 = !DILocation(line: 747, column: 40, scope: !4032)
!4035 = !DILocation(line: 747, column: 54, scope: !4032)
!4036 = !DILocation(line: 747, column: 37, scope: !4032)
!4037 = !DILocation(line: 750, column: 7, scope: !4032)
!4038 = !DILocation(line: 751, column: 7, scope: !4032)
!4039 = !DILocation(line: 748, column: 5, scope: !4032)
!4040 = !DILocation(line: 717, column: 28, scope: !3988)
!4041 = !DILocation(line: 717, column: 4, scope: !3988)
!4042 = distinct !{!4042, !3990, !4043}
!4043 = !DILocation(line: 752, column: 8, scope: !3986)
!4044 = !DILocation(line: 754, column: 25, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 754, column: 11)
!4046 = !DILocation(line: 754, column: 50, scope: !4045)
!4047 = !DILocation(line: 754, column: 11, scope: !3976)
!4048 = !DILocation(line: 756, column: 15, scope: !3976)
!4049 = !DILocation(line: 756, column: 44, scope: !3976)
!4050 = !DILocation(line: 0, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 758, column: 2)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 757, column: 7)
!4053 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 757, column: 7)
!4054 = !DILocation(line: 757, column: 12, scope: !4053)
!4055 = !DILocation(line: 757, column: 21, scope: !4052)
!4056 = !DILocation(line: 0, scope: !4053)
!4057 = !DILocation(line: 757, column: 7, scope: !4053)
!4058 = !DILocation(line: 759, column: 35, scope: !4051)
!4059 = !DILocation(line: 759, column: 4, scope: !4051)
!4060 = !DILocation(line: 759, column: 40, scope: !4051)
!4061 = !DILocation(line: 760, column: 4, scope: !4051)
!4062 = !DILocation(line: 760, column: 46, scope: !4051)
!4063 = !DILocation(line: 757, column: 31, scope: !4052)
!4064 = !DILocation(line: 757, column: 7, scope: !4052)
!4065 = distinct !{!4065, !4057, !4066}
!4066 = !DILocation(line: 761, column: 2, scope: !4053)
!4067 = !DILocation(line: 710, column: 49, scope: !3973)
!4068 = !DILocation(line: 710, column: 3, scope: !3973)
!4069 = distinct !{!4069, !3974, !4070}
!4070 = !DILocation(line: 762, column: 5, scope: !3970)
!4071 = !DILocation(line: 763, column: 18, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 763, column: 3)
!4073 = !DILocation(line: 763, column: 8, scope: !4072)
!4074 = !DILocation(line: 0, scope: !4072)
!4075 = !DILocation(line: 763, column: 55, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 763, column: 3)
!4077 = !DILocation(line: 763, column: 3, scope: !4072)
!4078 = !DILocation(line: 765, column: 14, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 764, column: 5)
!4080 = !DILocation(line: 766, column: 13, scope: !4079)
!4081 = !DILocation(line: 766, column: 18, scope: !4079)
!4082 = !DILocation(line: 767, column: 13, scope: !4079)
!4083 = !DILocation(line: 767, column: 18, scope: !4079)
!4084 = !DILocation(line: 763, column: 3, scope: !4076)
!4085 = distinct !{!4085, !4077, !4086}
!4086 = !DILocation(line: 769, column: 5, scope: !4072)
!4087 = !DILocation(line: 771, column: 1, scope: !3808)
!4088 = distinct !DISubprogram(name: "emit_move_list", scope: !3, file: !3, line: 776, type: !4089, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!589, !574, !566}
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4092 = !DILocalVariable(name: "list", arg: 1, scope: !4088, file: !3, line: 776, type: !574)
!4093 = !DILocalVariable(name: "freq", arg: 2, scope: !4088, file: !3, line: 776, type: !566)
!4094 = !DILocalVariable(name: "cost", scope: !4088, file: !3, line: 778, type: !566)
!4095 = !DILocalVariable(name: "result", scope: !4088, file: !3, line: 779, type: !589)
!4096 = !DILocalVariable(name: "insn", scope: !4088, file: !3, line: 779, type: !589)
!4097 = !DILocalVariable(name: "mode", scope: !4088, file: !3, line: 780, type: !5)
!4098 = !DILocalVariable(name: "cover_class", scope: !4088, file: !3, line: 781, type: !390)
!4099 = !DILocation(line: 0, scope: !4088)
!4100 = !DILocation(line: 783, column: 3, scope: !4088)
!4101 = !DILocation(line: 784, column: 3, scope: !4088)
!4102 = !DILocation(line: 784, column: 15, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 784, column: 3)
!4104 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 784, column: 3)
!4105 = !DILocation(line: 784, column: 3, scope: !4104)
!4106 = !DILocation(line: 786, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 785, column: 5)
!4108 = !DILocation(line: 787, column: 23, scope: !4107)
!4109 = !DILocation(line: 787, column: 47, scope: !4107)
!4110 = !DILocation(line: 787, column: 7, scope: !4107)
!4111 = !DILocation(line: 788, column: 20, scope: !4107)
!4112 = !DILocation(line: 788, column: 13, scope: !4107)
!4113 = !DILocation(line: 788, column: 18, scope: !4107)
!4114 = !DILocation(line: 789, column: 7, scope: !4107)
!4115 = !DILocation(line: 794, column: 12, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 794, column: 7)
!4117 = !DILocation(line: 0, scope: !4116)
!4118 = !DILocation(line: 794, column: 36, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 794, column: 7)
!4120 = !DILocation(line: 794, column: 7, scope: !4116)
!4121 = !DILocation(line: 795, column: 2, scope: !4119)
!4122 = !DILocation(line: 794, column: 56, scope: !4119)
!4123 = !DILocation(line: 794, column: 7, scope: !4119)
!4124 = distinct !{!4124, !4120, !4125}
!4125 = !DILocation(line: 795, column: 22, scope: !4116)
!4126 = !DILocation(line: 796, column: 24, scope: !4107)
!4127 = !DILocation(line: 796, column: 7, scope: !4107)
!4128 = !DILocation(line: 797, column: 14, scope: !4107)
!4129 = !DILocation(line: 798, column: 21, scope: !4107)
!4130 = !DILocation(line: 800, column: 11, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 800, column: 11)
!4132 = !DILocation(line: 800, column: 41, scope: !4131)
!4133 = !DILocation(line: 0, scope: !4131)
!4134 = !DILocation(line: 800, column: 11, scope: !4107)
!4135 = !DILocation(line: 802, column: 40, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 802, column: 8)
!4137 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 801, column: 2)
!4138 = !DILocation(line: 802, column: 8, scope: !4137)
!4139 = !DILocation(line: 804, column: 15, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 803, column: 6)
!4141 = !DILocation(line: 804, column: 58, scope: !4140)
!4142 = !DILocation(line: 805, column: 23, scope: !4140)
!4143 = !DILocation(line: 806, column: 6, scope: !4140)
!4144 = !DILocation(line: 808, column: 48, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 808, column: 16)
!4146 = !DILocation(line: 808, column: 16, scope: !4131)
!4147 = !DILocation(line: 810, column: 38, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 810, column: 8)
!4149 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 809, column: 2)
!4150 = !DILocation(line: 810, column: 8, scope: !4149)
!4151 = !DILocation(line: 812, column: 15, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 811, column: 6)
!4153 = !DILocation(line: 812, column: 58, scope: !4152)
!4154 = !DILocation(line: 813, column: 22, scope: !4152)
!4155 = !DILocation(line: 814, column: 6, scope: !4152)
!4156 = !DILocation(line: 818, column: 12, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 817, column: 2)
!4158 = !DILocation(line: 819, column: 5, scope: !4157)
!4159 = !DILocation(line: 820, column: 21, scope: !4157)
!4160 = !DILocation(line: 822, column: 24, scope: !4107)
!4161 = !DILocation(line: 784, column: 37, scope: !4103)
!4162 = !DILocation(line: 784, column: 3, scope: !4103)
!4163 = distinct !{!4163, !4105, !4164}
!4164 = !DILocation(line: 823, column: 5, scope: !4104)
!4165 = !DILocation(line: 824, column: 12, scope: !4088)
!4166 = !DILocation(line: 825, column: 3, scope: !4088)
!4167 = !DILocation(line: 826, column: 3, scope: !4088)
!4168 = distinct !DISubprogram(name: "VEC_move_t_base_truncate", scope: !3, file: !3, line: 618, type: !4169, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4172)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !4171, !7}
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!4172 = !{!4173, !4174}
!4173 = !DILocalVariable(name: "vec_", arg: 1, scope: !4168, file: !3, line: 618, type: !4171)
!4174 = !DILocalVariable(name: "size_", arg: 2, scope: !4168, file: !3, line: 618, type: !7)
!4175 = !DILocation(line: 0, scope: !4168)
!4176 = !DILocation(line: 618, column: 1, scope: !4168)
!4177 = !DILocation(line: 618, column: 1, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 618, column: 1)
!4179 = distinct !DISubprogram(name: "traverse_moves", scope: !3, file: !3, line: 633, type: !2322, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4180)
!4180 = !{!4181, !4182}
!4181 = !DILocalVariable(name: "move", arg: 1, scope: !4179, file: !3, line: 633, type: !574)
!4182 = !DILocalVariable(name: "i", scope: !4179, file: !3, line: 635, type: !566)
!4183 = !DILocation(line: 0, scope: !4179)
!4184 = !DILocation(line: 637, column: 13, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4179, file: !3, line: 637, column: 7)
!4186 = !DILocation(line: 637, column: 7, scope: !4185)
!4187 = !DILocation(line: 637, column: 7, scope: !4179)
!4188 = !DILocation(line: 639, column: 19, scope: !4179)
!4189 = !DILocation(line: 640, column: 18, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4179, file: !3, line: 640, column: 3)
!4191 = !DILocation(line: 0, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 640, column: 3)
!4193 = !DILocation(line: 640, column: 8, scope: !4190)
!4194 = !DILocation(line: 0, scope: !4190)
!4195 = !DILocation(line: 640, column: 34, scope: !4192)
!4196 = !DILocation(line: 640, column: 3, scope: !4190)
!4197 = !DILocation(line: 641, column: 27, scope: !4192)
!4198 = !DILocation(line: 641, column: 21, scope: !4192)
!4199 = !DILocation(line: 641, column: 5, scope: !4192)
!4200 = !DILocation(line: 640, column: 3, scope: !4192)
!4201 = distinct !{!4201, !4196, !4202}
!4202 = !DILocation(line: 641, column: 34, scope: !4190)
!4203 = !DILocation(line: 642, column: 3, scope: !4179)
!4204 = !DILocation(line: 643, column: 1, scope: !4179)
!4205 = distinct !DISubprogram(name: "VEC_move_t_base_length", scope: !3, file: !3, line: 618, type: !4206, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4210)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!7, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!4210 = !{!4211}
!4211 = !DILocalVariable(name: "vec_", arg: 1, scope: !4205, file: !3, line: 618, type: !4208)
!4212 = !DILocation(line: 0, scope: !4205)
!4213 = !DILocation(line: 618, column: 1, scope: !4205)
!4214 = distinct !DISubprogram(name: "VEC_move_t_base_index", scope: !3, file: !3, line: 618, type: !4215, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!574, !4208, !7}
!4217 = !{!4218, !4219}
!4218 = !DILocalVariable(name: "vec_", arg: 1, scope: !4214, file: !3, line: 618, type: !4208)
!4219 = !DILocalVariable(name: "ix_", arg: 2, scope: !4214, file: !3, line: 618, type: !7)
!4220 = !DILocation(line: 0, scope: !4214)
!4221 = !DILocation(line: 618, column: 1, scope: !4214)
!4222 = distinct !DISubprogram(name: "VEC_move_t_base_last", scope: !3, file: !3, line: 618, type: !4223, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!574, !4208}
!4225 = !{!4226}
!4226 = !DILocalVariable(name: "vec_", arg: 1, scope: !4222, file: !3, line: 618, type: !4208)
!4227 = !DILocation(line: 0, scope: !4222)
!4228 = !DILocation(line: 618, column: 1, scope: !4222)
!4229 = distinct !DISubprogram(name: "VEC_move_t_heap_safe_push", scope: !3, file: !3, line: 619, type: !4230, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!573, !3151, !574}
!4232 = !{!4233, !4234}
!4233 = !DILocalVariable(name: "vec_", arg: 1, scope: !4229, file: !3, line: 619, type: !3151)
!4234 = !DILocalVariable(name: "obj_", arg: 2, scope: !4229, file: !3, line: 619, type: !574)
!4235 = !DILocation(line: 0, scope: !4229)
!4236 = !DILocation(line: 619, column: 1, scope: !4229)
!4237 = distinct !DISubprogram(name: "VEC_move_t_heap_reserve", scope: !3, file: !3, line: 619, type: !4238, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!566, !3151, !566}
!4240 = !{!4241, !4242, !4243}
!4241 = !DILocalVariable(name: "vec_", arg: 1, scope: !4237, file: !3, line: 619, type: !3151)
!4242 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4237, file: !3, line: 619, type: !566)
!4243 = !DILocalVariable(name: "extend", scope: !4237, file: !3, line: 619, type: !566)
!4244 = !DILocation(line: 0, scope: !4237)
!4245 = !DILocation(line: 619, column: 1, scope: !4237)
!4246 = !DILocation(line: 619, column: 1, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 619, column: 1)
!4248 = distinct !DISubprogram(name: "VEC_move_t_base_quick_push", scope: !3, file: !3, line: 618, type: !4249, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4251)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!573, !4171, !574}
!4251 = !{!4252, !4253, !4254}
!4252 = !DILocalVariable(name: "vec_", arg: 1, scope: !4248, file: !3, line: 618, type: !4171)
!4253 = !DILocalVariable(name: "obj_", arg: 2, scope: !4248, file: !3, line: 618, type: !574)
!4254 = !DILocalVariable(name: "slot_", scope: !4248, file: !3, line: 618, type: !573)
!4255 = !DILocation(line: 0, scope: !4248)
!4256 = !DILocation(line: 618, column: 1, scope: !4248)
!4257 = distinct !DISubprogram(name: "VEC_move_t_base_space", scope: !3, file: !3, line: 618, type: !4258, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!566, !4171, !566}
!4260 = !{!4261, !4262}
!4261 = !DILocalVariable(name: "vec_", arg: 1, scope: !4257, file: !3, line: 618, type: !4171)
!4262 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4257, file: !3, line: 618, type: !566)
!4263 = !DILocation(line: 0, scope: !4257)
!4264 = !DILocation(line: 618, column: 1, scope: !4257)
!4265 = distinct !DISubprogram(name: "ira_get_register_move_cost", scope: !580, file: !580, line: 906, type: !4266, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4268)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!566, !5, !390, !390}
!4268 = !{!4269, !4270, !4271}
!4269 = !DILocalVariable(name: "mode", arg: 1, scope: !4265, file: !580, line: 906, type: !5)
!4270 = !DILocalVariable(name: "from", arg: 2, scope: !4265, file: !580, line: 907, type: !390)
!4271 = !DILocalVariable(name: "to", arg: 3, scope: !4265, file: !580, line: 907, type: !390)
!4272 = !DILocation(line: 0, scope: !4265)
!4273 = !DILocation(line: 909, column: 7, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4265, file: !580, line: 909, column: 7)
!4275 = !DILocation(line: 909, column: 36, scope: !4274)
!4276 = !DILocation(line: 909, column: 7, scope: !4265)
!4277 = !DILocation(line: 910, column: 5, scope: !4274)
!4278 = !DILocation(line: 911, column: 10, scope: !4265)
!4279 = !DILocation(line: 911, column: 3, scope: !4265)
!4280 = distinct !DISubprogram(name: "add_range_and_copies_from_move_list", scope: !3, file: !3, line: 912, type: !4281, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4283)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !574, !1719, !1740, !566}
!4283 = !{!4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298}
!4284 = !DILocalVariable(name: "list", arg: 1, scope: !4280, file: !3, line: 912, type: !574)
!4285 = !DILocalVariable(name: "node", arg: 2, scope: !4280, file: !3, line: 912, type: !1719)
!4286 = !DILocalVariable(name: "live_through", arg: 3, scope: !4280, file: !3, line: 913, type: !1740)
!4287 = !DILocalVariable(name: "freq", arg: 4, scope: !4280, file: !3, line: 913, type: !566)
!4288 = !DILocalVariable(name: "start", scope: !4280, file: !3, line: 915, type: !566)
!4289 = !DILocalVariable(name: "n", scope: !4280, file: !3, line: 915, type: !566)
!4290 = !DILocalVariable(name: "regno", scope: !4280, file: !3, line: 916, type: !7)
!4291 = !DILocalVariable(name: "move", scope: !4280, file: !3, line: 917, type: !574)
!4292 = !DILocalVariable(name: "to", scope: !4280, file: !3, line: 918, type: !579)
!4293 = !DILocalVariable(name: "from", scope: !4280, file: !3, line: 918, type: !579)
!4294 = !DILocalVariable(name: "a", scope: !4280, file: !3, line: 918, type: !579)
!4295 = !DILocalVariable(name: "cp", scope: !4280, file: !3, line: 919, type: !1753)
!4296 = !DILocalVariable(name: "r", scope: !4280, file: !3, line: 920, type: !1773)
!4297 = !DILocalVariable(name: "bi", scope: !4280, file: !3, line: 921, type: !2595)
!4298 = !DILocalVariable(name: "hard_regs_live", scope: !4280, file: !3, line: 922, type: !1789)
!4299 = !DILocation(line: 0, scope: !4280)
!4300 = !DILocation(line: 916, column: 3, scope: !4280)
!4301 = !DILocation(line: 921, column: 3, scope: !4280)
!4302 = !DILocation(line: 922, column: 3, scope: !4280)
!4303 = !DILocation(line: 924, column: 12, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 924, column: 7)
!4305 = !DILocation(line: 924, column: 7, scope: !4280)
!4306 = !DILocation(line: 927, column: 3, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 927, column: 3)
!4308 = !DILocation(line: 927, column: 3, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 927, column: 3)
!4310 = !DILocation(line: 928, column: 6, scope: !4309)
!4311 = distinct !{!4311, !4306, !4312}
!4312 = !DILocation(line: 928, column: 6, scope: !4307)
!4313 = !DILocation(line: 929, column: 3, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 929, column: 3)
!4315 = !DILocation(line: 932, column: 16, scope: !4280)
!4316 = !DILocation(line: 934, column: 8, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 934, column: 3)
!4318 = !DILocation(line: 0, scope: !4317)
!4319 = !DILocation(line: 934, column: 26, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 934, column: 3)
!4321 = !DILocation(line: 934, column: 3, scope: !4317)
!4322 = !DILocation(line: 986, column: 3, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 986, column: 3)
!4324 = !DILocation(line: 936, column: 20, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 935, column: 5)
!4326 = !DILocation(line: 937, column: 18, scope: !4325)
!4327 = !DILocation(line: 938, column: 11, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 938, column: 11)
!4329 = !DILocation(line: 938, column: 47, scope: !4328)
!4330 = !DILocation(line: 938, column: 11, scope: !4325)
!4331 = !DILocation(line: 940, column: 8, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 940, column: 8)
!4333 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 939, column: 2)
!4334 = !DILocation(line: 940, column: 34, scope: !4332)
!4335 = !DILocation(line: 940, column: 41, scope: !4332)
!4336 = !DILocation(line: 940, column: 55, scope: !4332)
!4337 = !DILocation(line: 940, column: 38, scope: !4332)
!4338 = !DILocation(line: 942, column: 8, scope: !4332)
!4339 = !DILocation(line: 942, column: 26, scope: !4332)
!4340 = !DILocation(line: 941, column: 6, scope: !4332)
!4341 = !DILocation(line: 943, column: 4, scope: !4333)
!4342 = !DILocation(line: 944, column: 2, scope: !4333)
!4343 = !DILocation(line: 945, column: 39, scope: !4325)
!4344 = !DILocation(line: 945, column: 7, scope: !4325)
!4345 = !DILocation(line: 946, column: 39, scope: !4325)
!4346 = !DILocation(line: 946, column: 7, scope: !4325)
!4347 = !DILocation(line: 947, column: 7, scope: !4325)
!4348 = !DILocation(line: 948, column: 7, scope: !4325)
!4349 = !DILocation(line: 949, column: 7, scope: !4325)
!4350 = !DILocation(line: 951, column: 7, scope: !4325)
!4351 = !DILocation(line: 952, column: 7, scope: !4325)
!4352 = !DILocation(line: 953, column: 7, scope: !4325)
!4353 = !DILocation(line: 954, column: 63, scope: !4325)
!4354 = !DILocation(line: 954, column: 12, scope: !4325)
!4355 = !DILocation(line: 955, column: 11, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 955, column: 11)
!4357 = !DILocation(line: 955, column: 37, scope: !4356)
!4358 = !DILocation(line: 955, column: 44, scope: !4356)
!4359 = !DILocation(line: 955, column: 58, scope: !4356)
!4360 = !DILocation(line: 955, column: 41, scope: !4356)
!4361 = !DILocation(line: 957, column: 8, scope: !4356)
!4362 = !DILocation(line: 957, column: 13, scope: !4356)
!4363 = !DILocation(line: 958, column: 4, scope: !4356)
!4364 = !DILocation(line: 958, column: 37, scope: !4356)
!4365 = !DILocation(line: 959, column: 4, scope: !4356)
!4366 = !DILocation(line: 956, column: 2, scope: !4356)
!4367 = !DILocation(line: 960, column: 11, scope: !4325)
!4368 = !DILocation(line: 961, column: 13, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 961, column: 11)
!4370 = !DILocation(line: 961, column: 21, scope: !4369)
!4371 = !DILocation(line: 961, column: 27, scope: !4369)
!4372 = !DILocation(line: 961, column: 34, scope: !4369)
!4373 = !DILocation(line: 961, column: 11, scope: !4325)
!4374 = !DILocation(line: 964, column: 52, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 962, column: 2)
!4376 = !DILocation(line: 964, column: 8, scope: !4375)
!4377 = !DILocation(line: 964, column: 6, scope: !4375)
!4378 = !DILocation(line: 965, column: 8, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 965, column: 8)
!4380 = !DILocation(line: 965, column: 34, scope: !4379)
!4381 = !DILocation(line: 965, column: 41, scope: !4379)
!4382 = !DILocation(line: 965, column: 55, scope: !4379)
!4383 = !DILocation(line: 965, column: 38, scope: !4379)
!4384 = !DILocation(line: 968, column: 15, scope: !4379)
!4385 = !DILocation(line: 968, column: 30, scope: !4379)
!4386 = !DILocation(line: 969, column: 8, scope: !4379)
!4387 = !DILocation(line: 966, column: 6, scope: !4379)
!4388 = !DILocation(line: 973, column: 16, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 972, column: 2)
!4390 = !DILocation(line: 973, column: 14, scope: !4389)
!4391 = !DILocation(line: 974, column: 8, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 974, column: 8)
!4393 = !DILocation(line: 974, column: 34, scope: !4392)
!4394 = !DILocation(line: 974, column: 41, scope: !4392)
!4395 = !DILocation(line: 974, column: 55, scope: !4392)
!4396 = !DILocation(line: 974, column: 38, scope: !4392)
!4397 = !DILocation(line: 977, column: 11, scope: !4392)
!4398 = !DILocation(line: 977, column: 33, scope: !4392)
!4399 = !DILocation(line: 978, column: 8, scope: !4392)
!4400 = !DILocation(line: 975, column: 6, scope: !4392)
!4401 = !DILocation(line: 980, column: 20, scope: !4325)
!4402 = !DILocation(line: 983, column: 7, scope: !4325)
!4403 = !DILocation(line: 982, column: 4, scope: !4325)
!4404 = !DILocation(line: 982, column: 2, scope: !4325)
!4405 = !DILocation(line: 984, column: 20, scope: !4325)
!4406 = !DILocation(line: 934, column: 48, scope: !4320)
!4407 = !DILocation(line: 934, column: 3, scope: !4320)
!4408 = distinct !{!4408, !4321, !4409}
!4409 = !DILocation(line: 985, column: 5, scope: !4317)
!4410 = !DILocation(line: 0, scope: !4323)
!4411 = !DILocation(line: 986, column: 26, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 986, column: 3)
!4413 = !DILocation(line: 988, column: 11, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 987, column: 5)
!4415 = !DILocation(line: 989, column: 14, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 989, column: 11)
!4417 = !DILocation(line: 989, column: 21, scope: !4416)
!4418 = !DILocation(line: 989, column: 11, scope: !4414)
!4419 = !DILocation(line: 991, column: 16, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 990, column: 2)
!4421 = !DILocation(line: 991, column: 30, scope: !4420)
!4422 = !DILocation(line: 991, column: 14, scope: !4420)
!4423 = !DILocation(line: 992, column: 8, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 992, column: 8)
!4425 = !DILocation(line: 992, column: 34, scope: !4424)
!4426 = !DILocation(line: 992, column: 41, scope: !4424)
!4427 = !DILocation(line: 992, column: 55, scope: !4424)
!4428 = !DILocation(line: 992, column: 38, scope: !4424)
!4429 = !DILocation(line: 995, column: 11, scope: !4424)
!4430 = !DILocation(line: 995, column: 29, scope: !4424)
!4431 = !DILocation(line: 996, column: 8, scope: !4424)
!4432 = !DILocation(line: 993, column: 6, scope: !4424)
!4433 = !DILocation(line: 986, column: 48, scope: !4412)
!4434 = !DILocation(line: 986, column: 3, scope: !4412)
!4435 = distinct !{!4435, !4322, !4436}
!4436 = !DILocation(line: 998, column: 5, scope: !4323)
!4437 = !DILocation(line: 999, column: 3, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 999, column: 3)
!4439 = !DILocation(line: 0, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 1000, column: 5)
!4441 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 999, column: 3)
!4442 = !DILocation(line: 999, column: 3, scope: !4441)
!4443 = !DILocation(line: 1001, column: 17, scope: !4440)
!4444 = !DILocation(line: 1001, column: 35, scope: !4440)
!4445 = !DILocation(line: 1001, column: 11, scope: !4440)
!4446 = !DILocation(line: 1002, column: 17, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 1002, column: 11)
!4448 = !DILocation(line: 1002, column: 49, scope: !4447)
!4449 = !DILocation(line: 1002, column: 11, scope: !4440)
!4450 = !DILocation(line: 1005, column: 45, scope: !4440)
!4451 = !DILocation(line: 1005, column: 59, scope: !4440)
!4452 = !DILocation(line: 1006, column: 7, scope: !4440)
!4453 = !DILocation(line: 1005, column: 4, scope: !4440)
!4454 = !DILocation(line: 1005, column: 2, scope: !4440)
!4455 = !DILocation(line: 1007, column: 11, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 1007, column: 11)
!4457 = !DILocation(line: 1007, column: 37, scope: !4456)
!4458 = !DILocation(line: 1007, column: 44, scope: !4456)
!4459 = !DILocation(line: 1007, column: 58, scope: !4456)
!4460 = !DILocation(line: 1007, column: 41, scope: !4456)
!4461 = !DILocation(line: 1011, column: 12, scope: !4456)
!4462 = !DILocation(line: 1011, column: 26, scope: !4456)
!4463 = !DILocation(line: 1012, column: 5, scope: !4456)
!4464 = !DILocation(line: 1013, column: 5, scope: !4456)
!4465 = !DILocation(line: 1013, column: 22, scope: !4456)
!4466 = !DILocation(line: 1008, column: 2, scope: !4456)
!4467 = distinct !{!4467, !4437, !4468}
!4468 = !DILocation(line: 1014, column: 5, scope: !4438)
!4469 = !DILocation(line: 1015, column: 1, scope: !4280)
!4470 = distinct !DISubprogram(name: "update_costs", scope: !3, file: !3, line: 888, type: !4471, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{null, !579, !565, !566}
!4473 = !{!4474, !4475, !4476, !4477}
!4474 = !DILocalVariable(name: "a", arg: 1, scope: !4470, file: !3, line: 888, type: !579)
!4475 = !DILocalVariable(name: "read_p", arg: 2, scope: !4470, file: !3, line: 888, type: !565)
!4476 = !DILocalVariable(name: "freq", arg: 3, scope: !4470, file: !3, line: 888, type: !566)
!4477 = !DILocalVariable(name: "parent", scope: !4470, file: !3, line: 890, type: !1719)
!4478 = !DILocation(line: 0, scope: !4470)
!4479 = !DILocation(line: 0, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 893, column: 5)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 892, column: 3)
!4482 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 892, column: 3)
!4483 = !DILocation(line: 892, column: 3, scope: !4470)
!4484 = !DILocation(line: 894, column: 7, scope: !4480)
!4485 = !DILocation(line: 894, column: 24, scope: !4480)
!4486 = !DILocation(line: 895, column: 7, scope: !4480)
!4487 = !DILocation(line: 895, column: 24, scope: !4480)
!4488 = !DILocation(line: 897, column: 27, scope: !4480)
!4489 = !DILocation(line: 897, column: 6, scope: !4480)
!4490 = !DILocation(line: 897, column: 45, scope: !4480)
!4491 = !DILocation(line: 898, column: 23, scope: !4480)
!4492 = !DILocation(line: 896, column: 7, scope: !4480)
!4493 = !DILocation(line: 897, column: 2, scope: !4480)
!4494 = !DILocation(line: 899, column: 11, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 899, column: 11)
!4496 = !DILocation(line: 899, column: 27, scope: !4495)
!4497 = !DILocation(line: 899, column: 11, scope: !4480)
!4498 = !DILocation(line: 900, column: 2, scope: !4495)
!4499 = !DILocation(line: 901, column: 26, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 901, column: 16)
!4501 = !DILocation(line: 901, column: 54, scope: !4500)
!4502 = !DILocation(line: 901, column: 62, scope: !4500)
!4503 = !DILocation(line: 902, column: 9, scope: !4500)
!4504 = !DILocation(line: 902, column: 25, scope: !4500)
!4505 = !DILocation(line: 902, column: 43, scope: !4500)
!4506 = !DILocation(line: 902, column: 17, scope: !4500)
!4507 = !DILocation(line: 902, column: 63, scope: !4500)
!4508 = !DILocation(line: 901, column: 16, scope: !4495)
!4509 = !DILocation(line: 0, scope: !4495)
!4510 = !DILocation(line: 892, column: 3, scope: !4481)
!4511 = distinct !{!4511, !4512, !4513}
!4512 = !DILocation(line: 892, column: 3, scope: !4482)
!4513 = !DILocation(line: 904, column: 5, scope: !4482)
!4514 = !DILocation(line: 905, column: 1, scope: !4470)
!4515 = distinct !DISubprogram(name: "free_move", scope: !3, file: !3, line: 100, type: !2322, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4516)
!4516 = !{!4517}
!4517 = !DILocalVariable(name: "move", arg: 1, scope: !4515, file: !3, line: 100, type: !574)
!4518 = !DILocation(line: 0, scope: !4515)
!4519 = !DILocation(line: 102, column: 13, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 102, column: 7)
!4521 = !DILocation(line: 102, column: 18, scope: !4520)
!4522 = !DILocation(line: 102, column: 7, scope: !4515)
!4523 = !DILocation(line: 103, column: 5, scope: !4520)
!4524 = !DILocation(line: 104, column: 13, scope: !4515)
!4525 = !DILocation(line: 104, column: 3, scope: !4515)
!4526 = !DILocation(line: 105, column: 1, scope: !4515)
