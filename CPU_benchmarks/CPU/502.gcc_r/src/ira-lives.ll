; ModuleID = 'ira-lives.bc'
source_filename = "ira-lives.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.ira_allocno_live_range = type { %struct.ira_allocno*, i32, i32, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range* }
%struct.ira_allocno = type { i32, i32, i32, i32, %struct.rtx_def*, %struct.ira_allocno*, %struct.ira_loop_tree_node*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ira_allocno_copy*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno_live_range*, i32, i32, i8*, i32, i32, i64, i64, i32, i32, i32, i16, %struct.ira_allocno*, i32*, i32*, i32*, i32*, i32, i32, %struct.ira_allocno*, %struct.ira_allocno*, i32 }
%struct.ira_loop_tree_node = type { %struct.basic_block_def*, %struct.loop*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, i32, i8, %struct.ira_allocno**, i8, [27 x i32], %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
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
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ira_allocno_copy = type { i32, %struct.ira_allocno*, %struct.ira_allocno*, i32, i8, %struct.rtx_def*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_loop_tree_node* }
%struct.sparseset_def = type { i32*, i32*, i32, i32, i32, i8, i8, [2 x i32] }
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
%struct.operand_alternative = type { i8*, i32, i32, i32, i32, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.ira_allocno_iterator = type { i32 }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.df_lr_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@recog_data = external dso_local local_unnamed_addr global %struct.recog_data, align 8
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@ira_available_class_regs = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_reg_class_nregs = external dso_local local_unnamed_addr global [27 x [87 x i32]], align 16
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@ira_finish_point_ranges = common dso_local local_unnamed_addr global %struct.ira_allocno_live_range** null, align 8, !dbg !0
@ira_start_point_ranges = common dso_local local_unnamed_addr global %struct.ira_allocno_live_range** null, align 8, !dbg !1920
@.str = private unnamed_addr constant [10 x i8] c" [%d..%d]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@ira_allocnos_num = external dso_local local_unnamed_addr global i32, align 4
@allocnos_live = internal unnamed_addr global %struct.sparseset_def* null, align 8, !dbg !1924
@curr_point = internal unnamed_addr global i32 0, align 4, !dbg !1922
@last_call_num = internal unnamed_addr global i32 0, align 4, !dbg !1940
@allocno_saved_at_call = internal unnamed_addr global i32* null, align 8, !dbg !1942
@ira_loop_tree_root = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@ira_max_point = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !1918
@internal_flag_ira_verbose = external dso_local local_unnamed_addr global i32, align 4
@ira_dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Ranges after the compression:\0A\00", align 1
@ira_allocnos = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" a%d(r%d):\00", align 1
@ira_reg_class_cover_size = external dso_local local_unnamed_addr global i32, align 4
@curr_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16, !dbg !1944
@ira_reg_class_cover = external dso_local local_unnamed_addr global [27 x i32], align 16
@high_pressure_start_point = internal unnamed_addr global [27 x i32] zeroinitializer, align 16, !dbg !1946
@curr_bb_node = internal unnamed_addr global %struct.ira_loop_tree_node* null, align 8, !dbg !1948
@hard_regs_live = internal global i64 0, align 8, !dbg !1950
@eliminable_regset = external dso_local local_unnamed_addr global i64, align 8
@ira_no_alloc_regs = external dso_local local_unnamed_addr global i64, align 8
@ira_class_translate = external dso_local local_unnamed_addr global [27 x i32], align 16
@regclass_map = external dso_local local_unnamed_addr constant [53 x i32], align 16
@ira_reg_class_super_classes = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_curr_regno_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"   Insn %u(l%d): point = %d\0A\00", align 1
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@call_used_reg_set = external dso_local local_unnamed_addr global i64, align 8
@call_used_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ira-lives.c\00", align 1
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@ira_hard_regno_cover_class = external dso_local local_unnamed_addr global [53 x i32], align 16
@ira_class_subset_p = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_class_hard_regs_num = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_reg_index = external dso_local local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_class_hard_regs = external dso_local local_unnamed_addr global [27 x [53 x i16]], align 16
@reg_class_size = external dso_local local_unnamed_addr global [27 x i32], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@ira_register_move_cost = external dso_local local_unnamed_addr global [87 x [27 x i16]*], align 16
@recog_op_alt = external dso_local local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Compressing live ranges: from %d to %d - %d%%\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1956 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1969, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1970, metadata !DIExpression()), !dbg !1971
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1972
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1973
  ret i32 %call, !dbg !1974
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1975 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1979
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1980
  ret i32 %call, !dbg !1981
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1982 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2036, metadata !DIExpression()), !dbg !2037
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2038
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2038
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2038
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2038
  %cmp = icmp uge i8* %0, %1, !dbg !2038
  %conv1 = zext i1 %cmp to i64, !dbg !2038
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2038
  %tobool = icmp eq i64 %expval, 0, !dbg !2038
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2038

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2038
  br label %cond.end, !dbg !2038

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2038
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2038
  %2 = load i8, i8* %0, align 1, !dbg !2038
  %conv3 = zext i8 %2 to i32, !dbg !2038
  br label %cond.end, !dbg !2038

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2038
  ret i32 %cond, !dbg !2039
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2040 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2042, metadata !DIExpression()), !dbg !2043
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2044
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2044
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2044
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2044
  %cmp = icmp uge i8* %0, %1, !dbg !2044
  %conv1 = zext i1 %cmp to i64, !dbg !2044
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2044
  %tobool = icmp eq i64 %expval, 0, !dbg !2044
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2044

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2044
  br label %cond.end, !dbg !2044

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2044
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2044
  %2 = load i8, i8* %0, align 1, !dbg !2044
  %conv3 = zext i8 %2 to i32, !dbg !2044
  br label %cond.end, !dbg !2044

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2044
  ret i32 %cond, !dbg !2045
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2046 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2047
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2047
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2047
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2047
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2047
  %cmp = icmp uge i8* %1, %2, !dbg !2047
  %conv1 = zext i1 %cmp to i64, !dbg !2047
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2047
  %tobool = icmp eq i64 %expval, 0, !dbg !2047
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2047

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2047
  br label %cond.end, !dbg !2047

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2047
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2047
  %3 = load i8, i8* %1, align 1, !dbg !2047
  %conv3 = zext i8 %3 to i32, !dbg !2047
  br label %cond.end, !dbg !2047

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2047
  ret i32 %cond, !dbg !2048
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2049 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2053, metadata !DIExpression()), !dbg !2054
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2055
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2056
  ret i32 %call, !dbg !2057
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2058 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2063, metadata !DIExpression()), !dbg !2064
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2065
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2065
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2065
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2065
  %cmp = icmp uge i8* %0, %1, !dbg !2065
  %conv1 = zext i1 %cmp to i64, !dbg !2065
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2065
  %tobool = icmp eq i64 %expval, 0, !dbg !2065
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2065

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2065
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2065
  br label %cond.end, !dbg !2065

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2065
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2065
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2065
  store i8 %conv2, i8* %0, align 1, !dbg !2065
  %conv6 = and i32 %__c, 255, !dbg !2065
  br label %cond.end, !dbg !2065

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2065
  ret i32 %cond, !dbg !2066
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2067 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2070, metadata !DIExpression()), !dbg !2071
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2072
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2072
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2072
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2072
  %cmp = icmp uge i8* %0, %1, !dbg !2072
  %conv1 = zext i1 %cmp to i64, !dbg !2072
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2072
  %tobool = icmp eq i64 %expval, 0, !dbg !2072
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2072

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2072
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2072
  br label %cond.end, !dbg !2072

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2072
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2072
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2072
  store i8 %conv2, i8* %0, align 1, !dbg !2072
  %conv6 = and i32 %__c, 255, !dbg !2072
  br label %cond.end, !dbg !2072

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2072
  ret i32 %cond, !dbg !2073
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2076, metadata !DIExpression()), !dbg !2077
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2078
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2078
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2078
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2078
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2078
  %cmp = icmp uge i8* %1, %2, !dbg !2078
  %conv1 = zext i1 %cmp to i64, !dbg !2078
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2078
  %tobool = icmp eq i64 %expval, 0, !dbg !2078
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2078

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2078
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2078
  br label %cond.end, !dbg !2078

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2078
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2078
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2078
  store i8 %conv4, i8* %1, align 1, !dbg !2078
  %conv6 = and i32 %__c, 255, !dbg !2078
  br label %cond.end, !dbg !2078

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2078
  ret i32 %cond, !dbg !2079
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2086, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2088, metadata !DIExpression()), !dbg !2089
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2090
  ret i64 %call, !dbg !2091
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2094, metadata !DIExpression()), !dbg !2095
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2096
  %0 = load i32, i32* %_flags, align 8, !dbg !2096
  %and = lshr i32 %0, 4, !dbg !2096
  %and.lobit = and i32 %and, 1, !dbg !2096
  ret i32 %and.lobit, !dbg !2097
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2100, metadata !DIExpression()), !dbg !2101
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2102
  %0 = load i32, i32* %_flags, align 8, !dbg !2102
  %and = lshr i32 %0, 5, !dbg !2102
  %and.lobit = and i32 %and, 1, !dbg !2102
  ret i32 %and.lobit, !dbg !2103
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2104 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2107, metadata !DIExpression()), !dbg !2108
  %__c.off = add i32 %__c, 128, !dbg !2109
  %0 = icmp ult i32 %__c.off, 384, !dbg !2109
  br i1 %0, label %cond.true, label %cond.end, !dbg !2109

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2110
  %1 = load i32*, i32** %call, align 8, !dbg !2111
  %idxprom = sext i32 %__c to i64, !dbg !2112
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2112
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2112
  br label %cond.end, !dbg !2113

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2113
  ret i32 %cond, !dbg !2114
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2115 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2117, metadata !DIExpression()), !dbg !2118
  %__c.off = add i32 %__c, 128, !dbg !2119
  %0 = icmp ult i32 %__c.off, 384, !dbg !2119
  br i1 %0, label %cond.true, label %cond.end, !dbg !2119

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2120
  %1 = load i32*, i32** %call, align 8, !dbg !2121
  %idxprom = sext i32 %__c to i64, !dbg !2122
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2122
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2122
  br label %cond.end, !dbg !2123

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2123
  ret i32 %cond, !dbg !2124
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2125 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2130, metadata !DIExpression()), !dbg !2131
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2132
  %conv = trunc i64 %call to i32, !dbg !2133
  ret i32 %conv, !dbg !2134
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2135 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2139, metadata !DIExpression()), !dbg !2140
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2141
  ret i64 %call, !dbg !2142
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2148, metadata !DIExpression()), !dbg !2149
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2150
  ret i64 %call, !dbg !2151
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2152 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2158, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2159, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2160, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2161, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2162, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2164, metadata !DIExpression()), !dbg !2168
  br label %while.cond, !dbg !2169

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2170
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2168
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2163, metadata !DIExpression()), !dbg !2168
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2171
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2169

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2172
  %div = lshr i64 %add, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %div, metadata !2165, metadata !DIExpression()), !dbg !2168
  %mul = mul i64 %div, %__size, !dbg !2175
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2176
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2166, metadata !DIExpression()), !dbg !2168
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %call, metadata !2167, metadata !DIExpression()), !dbg !2168
  %cmp1 = icmp slt i32 %call, 0, !dbg !2178
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2180

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2181
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2183

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2163, metadata !DIExpression()), !dbg !2168
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2168
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2168
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2163, metadata !DIExpression()), !dbg !2168
  br label %while.cond, !dbg !2169, !llvm.loop !2185

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2168
  ret i8* %retval.0, !dbg !2187
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2188 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2194, metadata !DIExpression()), !dbg !2195
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2196
  ret double %call, !dbg !2197
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 %base, metadata !2209, metadata !DIExpression()), !dbg !2210
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2211
  ret i64 %call, !dbg !2212
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2219, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2220, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %base, metadata !2221, metadata !DIExpression()), !dbg !2222
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2223
  ret i64 %call, !dbg !2224
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2225 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %base, metadata !2238, metadata !DIExpression()), !dbg !2239
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2240
  ret i64 %call, !dbg !2241
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2242 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %base, metadata !2248, metadata !DIExpression()), !dbg !2249
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2250
  ret i64 %call, !dbg !2251
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2292, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2293, metadata !DIExpression()), !dbg !2294
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2295
  ret i32 %call, !dbg !2296
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2297 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2300, metadata !DIExpression()), !dbg !2301
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2302
  ret i32 %call, !dbg !2303
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2309, metadata !DIExpression()), !dbg !2310
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2311
  ret i32 %call, !dbg !2312
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2317, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2318, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2320, metadata !DIExpression()), !dbg !2321
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2322
  ret i32 %call, !dbg !2323
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2324 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2328, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2329, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2330, metadata !DIExpression()), !dbg !2331
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2330, metadata !DIExpression(DW_OP_deref)), !dbg !2331
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2332
  ret i32 %call, !dbg !2333
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2334 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2338, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2339, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2340, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2341, metadata !DIExpression()), !dbg !2342
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2341, metadata !DIExpression(DW_OP_deref)), !dbg !2342
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2343
  ret i32 %call, !dbg !2344
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2345 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2370, metadata !DIExpression()), !dbg !2371
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2372
  ret i32 %call, !dbg !2373
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2374 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2377, metadata !DIExpression()), !dbg !2378
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2379
  ret i32 %call, !dbg !2380
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2386, metadata !DIExpression()), !dbg !2387
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2388
  ret i32 %call, !dbg !2389
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2390 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2394, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2397, metadata !DIExpression()), !dbg !2398
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2399
  ret i32 %call, !dbg !2400
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ira_implicitly_set_insn_hard_regs(i64* %set) local_unnamed_addr #4 !dbg !2401 {
entry:
  call void @llvm.dbg.value(metadata i64* %set, metadata !2406, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 0, metadata !2409, metadata !DIExpression()), !dbg !2420
  store i64 0, i64* %set, align 8, !dbg !2421
  call void @llvm.dbg.value(metadata i32 0, metadata !2407, metadata !DIExpression()), !dbg !2420
  br label %for.cond, !dbg !2422

for.cond:                                         ; preds = %for.inc70, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc70 ], [ 0, %entry ], !dbg !2423
  %regno.0 = phi i32 [ %regno.2, %for.inc70 ], [ 0, %entry ], !dbg !2423
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2407, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !2409, metadata !DIExpression()), !dbg !2420
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !2424
  %1 = sext i8 %0 to i64, !dbg !2425
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !2425
  br i1 %cmp, label %for.body, label %for.end71, !dbg !2426

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv, !dbg !2427
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !2427
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2412, metadata !DIExpression()), !dbg !2420
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !2428
  %bf.load = load i32, i32* %3, align 8, !dbg !2428
  %bf.clear = and i32 %bf.load, 65535, !dbg !2428
  %cmp2 = icmp eq i32 %bf.clear, 39, !dbg !2430
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2431

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2432
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**, !dbg !2432
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2432
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !2412, metadata !DIExpression()), !dbg !2420
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 0, !dbg !2433
  %bf.load5.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !2434
  br label %if.end, !dbg !2435

if.end:                                           ; preds = %if.then, %for.body
  %bf.load9 = phi i32 [ %bf.load5.pre, %if.then ], [ %bf.load, %for.body ], !dbg !2434
  %op.0 = phi %struct.rtx_def* [ %4, %if.then ], [ %2, %for.body ], !dbg !2436
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.0, metadata !2412, metadata !DIExpression()), !dbg !2420
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op.0, i64 0, i32 0, !dbg !2434
  %bf.clear6 = and i32 %bf.load9, 65535, !dbg !2434
  %cmp7 = icmp eq i32 %bf.clear6, 38, !dbg !2437
  br i1 %cmp7, label %if.then15, label %lor.lhs.false, !dbg !2438

lor.lhs.false:                                    ; preds = %if.end
  %cmp11 = icmp eq i32 %bf.clear6, 37, !dbg !2439
  br i1 %cmp11, label %land.lhs.true, label %for.inc70, !dbg !2440

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.0) #7, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %call, metadata !2409, metadata !DIExpression()), !dbg !2420
  %cmp13 = icmp sgt i32 %call, 52, !dbg !2442
  br i1 %cmp13, label %land.lhs.true.if.then15_crit_edge, label %for.inc70, !dbg !2443

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  %bf.load18.pre = load i32, i32* %5, align 8, !dbg !2444
  br label %if.then15, !dbg !2443

if.then15:                                        ; preds = %land.lhs.true.if.then15_crit_edge, %if.end
  %bf.load18 = phi i32 [ %bf.load9, %if.end ], [ %bf.load18.pre, %land.lhs.true.if.then15_crit_edge ], !dbg !2444
  %regno.1 = phi i32 [ %regno.0, %if.end ], [ %call, %land.lhs.true.if.then15_crit_edge ], !dbg !2420
  call void @llvm.dbg.value(metadata i32 %regno.1, metadata !2409, metadata !DIExpression()), !dbg !2420
  %arrayidx17 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv, !dbg !2445
  %6 = load i8*, i8** %arrayidx17, align 8, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %6, metadata !2414, metadata !DIExpression()), !dbg !2446
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !2444
  %cmp20 = icmp eq i32 %bf.clear19, 38, !dbg !2447
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !2444

cond.true:                                        ; preds = %if.then15
  br label %cond.end, !dbg !2444

cond.false:                                       ; preds = %if.then15
  %7 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2448
  %idxprom24 = sext i32 %regno.1 to i64, !dbg !2448
  %arrayidx25 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %7, i64 %idxprom24, !dbg !2448
  %8 = bitcast %struct.rtx_def** %arrayidx25 to i32**, !dbg !2448
  %9 = load i32*, i32** %8, align 8, !dbg !2448
  %cond.in.in.pre = load i32, i32* %9, align 8, !dbg !2446
  br label %cond.end, !dbg !2444

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi i32 [ %bf.load18, %cond.true ], [ %cond.in.in.pre, %cond.false ], !dbg !2446
  %cond.in = lshr i32 %cond.in.in, 16, !dbg !2446
  %cond = and i32 %cond.in, 255, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2413, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2420
  %idxprom56 = zext i32 %cond to i64, !dbg !2449
  br label %for.cond29, !dbg !2457

for.cond29:                                       ; preds = %for.inc, %cond.end
  %ignore_p.0 = phi i8 [ 0, %cond.end ], [ %ignore_p.2, %for.inc ], !dbg !2458
  %p.0 = phi i8* [ %6, %cond.end ], [ %add.ptr, %for.inc ], !dbg !2446
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2414, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 %ignore_p.0, metadata !2410, metadata !DIExpression()), !dbg !2420
  %10 = load i8, i8* %p.0, align 1, !dbg !2459
  %conv30 = sext i8 %10 to i32, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %conv30, metadata !2408, metadata !DIExpression()), !dbg !2420
  switch i32 %conv30, label %if.else38 [
    i32 0, label %for.inc70.loopexit
    i32 35, label %for.inc
    i32 44, label %if.end65
  ], !dbg !2460

if.else38:                                        ; preds = %for.cond29
  %tobool39 = icmp eq i8 %ignore_p.0, 0, !dbg !2461
  br i1 %tobool39, label %if.then40, label %if.end65, !dbg !2462

if.then40:                                        ; preds = %if.else38
  switch i32 %conv30, label %if.end65 [
    i32 114, label %cond.end47
    i32 65, label %cond.false44
    i32 66, label %cond.false44
    i32 67, label %cond.false44
    i32 68, label %cond.false44
    i32 81, label %cond.false44
    i32 82, label %cond.false44
    i32 83, label %cond.false44
    i32 84, label %cond.false44
    i32 85, label %cond.false44
    i32 87, label %cond.false44
    i32 89, label %cond.false44
    i32 90, label %cond.false44
    i32 97, label %cond.false44
    i32 98, label %cond.false44
    i32 99, label %cond.false44
    i32 100, label %cond.false44
    i32 101, label %cond.false44
    i32 102, label %cond.false44
    i32 104, label %cond.false44
    i32 106, label %cond.false44
    i32 107, label %cond.false44
    i32 108, label %cond.false44
    i32 113, label %cond.false44
    i32 116, label %cond.false44
    i32 117, label %cond.false44
    i32 118, label %cond.false44
    i32 119, label %cond.false44
    i32 120, label %cond.false44
    i32 121, label %cond.false44
    i32 122, label %cond.false44
  ], !dbg !2463

cond.false44:                                     ; preds = %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40, %if.then40
  %call45 = tail call i32 @lookup_constraint(i8* %p.0) #6, !dbg !2464
  %call46 = tail call i32 @regclass_for_constraint(i32 %call45) #6, !dbg !2464
  br label %cond.end47, !dbg !2465

cond.end47:                                       ; preds = %if.then40, %cond.false44
  %cond48 = phi i32 [ %call46, %cond.false44 ], [ 13, %if.then40 ], !dbg !2465
  call void @llvm.dbg.value(metadata i32 %cond48, metadata !2411, metadata !DIExpression()), !dbg !2420
  %cmp49 = icmp eq i32 %cond48, 0, !dbg !2466
  br i1 %cmp49, label %if.end65, label %land.lhs.true51, !dbg !2467

land.lhs.true51:                                  ; preds = %cond.end47
  %idxprom52 = zext i32 %cond48 to i64, !dbg !2468
  %arrayidx53 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom52, !dbg !2468
  %11 = load i32, i32* %arrayidx53, align 4, !dbg !2468
  %arrayidx57 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom52, i64 %idxprom56, !dbg !2469
  %12 = load i32, i32* %arrayidx57, align 4, !dbg !2469
  %cmp58 = icmp sgt i32 %11, %12, !dbg !2470
  br i1 %cmp58, label %if.end65, label %if.then60, !dbg !2471

if.then60:                                        ; preds = %land.lhs.true51
  %arrayidx62 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom52, !dbg !2472
  %13 = load i64, i64* %arrayidx62, align 8, !dbg !2472
  %14 = load i64, i64* %set, align 8, !dbg !2472
  %or = or i64 %14, %13, !dbg !2472
  store i64 %or, i64* %set, align 8, !dbg !2472
  br label %if.end65, !dbg !2472

if.end65:                                         ; preds = %land.lhs.true51, %cond.end47, %if.else38, %if.then60, %if.then40, %for.cond29
  %ignore_p.1 = phi i8 [ 0, %for.cond29 ], [ 0, %if.then40 ], [ 0, %if.then60 ], [ 0, %land.lhs.true51 ], [ 0, %cond.end47 ], [ %ignore_p.0, %if.else38 ], !dbg !2458
  call void @llvm.dbg.value(metadata i8 %ignore_p.1, metadata !2410, metadata !DIExpression()), !dbg !2420
  br label %for.inc

for.inc:                                          ; preds = %if.end65, %for.cond29
  %ignore_p.2 = phi i8 [ %ignore_p.1, %if.end65 ], [ 1, %for.cond29 ], !dbg !2473
  call void @llvm.dbg.value(metadata i8 %ignore_p.2, metadata !2410, metadata !DIExpression()), !dbg !2420
  %call68 = tail call fastcc i64 @insn_constraint_len(i8 signext %10, i8* %p.0) #7, !dbg !2474
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 %call68, !dbg !2475
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2414, metadata !DIExpression()), !dbg !2446
  br label %for.cond29, !dbg !2476, !llvm.loop !2477

for.inc70.loopexit:                               ; preds = %for.cond29
  br label %for.inc70, !dbg !2479

for.inc70:                                        ; preds = %for.inc70.loopexit, %lor.lhs.false, %land.lhs.true
  %regno.2 = phi i32 [ %call, %land.lhs.true ], [ %regno.0, %lor.lhs.false ], [ %regno.1, %for.inc70.loopexit ], !dbg !2420
  call void @llvm.dbg.value(metadata i32 %regno.2, metadata !2409, metadata !DIExpression()), !dbg !2420
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i32 undef, metadata !2407, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2420
  br label %for.cond, !dbg !2480, !llvm.loop !2481

for.end71:                                        ; preds = %for.cond
  ret void, !dbg !2483
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !2484 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2491, metadata !DIExpression()), !dbg !2492
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2493
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2493
  %0 = load i32, i32* %rt_uint, align 8, !dbg !2493
  ret i32 %0, !dbg !2494
}

declare dso_local i32 @regclass_for_constraint(i32) local_unnamed_addr #1

declare dso_local i32 @lookup_constraint(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @insn_constraint_len(i8 signext %fc, i8* %str) unnamed_addr #0 !dbg !2495 {
entry:
  call void @llvm.dbg.value(metadata i8 %fc, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8* %str, metadata !2501, metadata !DIExpression()), !dbg !2502
  %cond = icmp eq i8 %fc, 89, !dbg !2503
  %retval.0 = select i1 %cond, i64 2, i64 1, !dbg !2503
  ret i64 %retval.0, !dbg !2504
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_rebuild_start_finish_chains() local_unnamed_addr #4 !dbg !2505 {
entry:
  %0 = load i8*, i8** bitcast (%struct.ira_allocno_live_range*** @ira_finish_point_ranges to i8**), align 8, !dbg !2508
  tail call void @ira_free(i8* %0) #6, !dbg !2509
  %1 = load i8*, i8** bitcast (%struct.ira_allocno_live_range*** @ira_start_point_ranges to i8**), align 8, !dbg !2510
  tail call void @ira_free(i8* %1) #6, !dbg !2511
  tail call fastcc void @create_start_finish_chains() #7, !dbg !2512
  ret void, !dbg !2513
}

declare dso_local void @ira_free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @create_start_finish_chains() unnamed_addr #4 !dbg !2514 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !2523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2523
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2524
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2524
  %2 = load i32, i32* @ira_max_point, align 4, !dbg !2525
  %conv = sext i32 %2 to i64, !dbg !2525
  %mul = shl nsw i64 %conv, 3, !dbg !2526
  %call = tail call i8* @ira_allocate(i64 %mul) #6, !dbg !2527
  store i8* %call, i8** bitcast (%struct.ira_allocno_live_range*** @ira_start_point_ranges to i8**), align 8, !dbg !2528
  %3 = load i32, i32* @ira_max_point, align 4, !dbg !2529
  %conv1 = sext i32 %3 to i64, !dbg !2529
  %mul2 = shl nsw i64 %conv1, 3, !dbg !2530
  %call3 = tail call i8* @memset(i8* %call, i32 0, i64 %mul2) #6, !dbg !2531
  %4 = load i32, i32* @ira_max_point, align 4, !dbg !2532
  %conv4 = sext i32 %4 to i64, !dbg !2532
  %mul5 = shl nsw i64 %conv4, 3, !dbg !2533
  %call6 = tail call i8* @ira_allocate(i64 %mul5) #6, !dbg !2534
  store i8* %call6, i8** bitcast (%struct.ira_allocno_live_range*** @ira_finish_point_ranges to i8**), align 8, !dbg !2535
  %5 = load i32, i32* @ira_max_point, align 4, !dbg !2536
  %conv7 = sext i32 %5 to i64, !dbg !2536
  %mul8 = shl nsw i64 %conv7, 3, !dbg !2537
  %call9 = tail call i8* @memset(i8* %call6, i32 0, i64 %mul8) #6, !dbg !2538
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2517, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2540
  br label %for.cond, !dbg !2540

for.cond.loopexit:                                ; preds = %for.cond11
  br label %for.cond, !dbg !2540

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2516, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2517, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  %call10 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2542
  %tobool = icmp eq i8 %call10, 0, !dbg !2540
  br i1 %tobool, label %for.end22, label %for.body, !dbg !2540

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %6, metadata !2516, metadata !DIExpression()), !dbg !2539
  %live_ranges = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %6, i64 0, i32 20, !dbg !2544
  br label %for.cond11, !dbg !2547

for.cond11:                                       ; preds = %for.body13, %for.body
  %r.0.in = phi %struct.ira_allocno_live_range** [ %live_ranges, %for.body ], [ %next, %for.body13 ]
  %r.0 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %r.0.in, align 8, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r.0, metadata !2522, metadata !DIExpression()), !dbg !2539
  %cmp = icmp eq %struct.ira_allocno_live_range* %r.0, null, !dbg !2549
  br i1 %cmp, label %for.cond.loopexit, label %for.body13, !dbg !2551, !llvm.loop !2552

for.body13:                                       ; preds = %for.cond11
  %7 = load %struct.ira_allocno_live_range**, %struct.ira_allocno_live_range*** @ira_start_point_ranges, align 8, !dbg !2554
  %start = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 1, !dbg !2556
  %8 = load i32, i32* %start, align 8, !dbg !2556
  %idxprom = sext i32 %8 to i64, !dbg !2554
  %arrayidx = getelementptr inbounds %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %7, i64 %idxprom, !dbg !2554
  %9 = bitcast %struct.ira_allocno_live_range** %arrayidx to i64*, !dbg !2554
  %10 = load i64, i64* %9, align 8, !dbg !2554
  %start_next = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 4, !dbg !2557
  %11 = bitcast %struct.ira_allocno_live_range** %start_next to i64*, !dbg !2558
  store i64 %10, i64* %11, align 8, !dbg !2558
  store %struct.ira_allocno_live_range* %r.0, %struct.ira_allocno_live_range** %arrayidx, align 8, !dbg !2559
  %12 = load %struct.ira_allocno_live_range**, %struct.ira_allocno_live_range*** @ira_finish_point_ranges, align 8, !dbg !2560
  %finish = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 2, !dbg !2561
  %13 = load i32, i32* %finish, align 4, !dbg !2561
  %idxprom17 = sext i32 %13 to i64, !dbg !2560
  %arrayidx18 = getelementptr inbounds %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %12, i64 %idxprom17, !dbg !2560
  %14 = bitcast %struct.ira_allocno_live_range** %arrayidx18 to i64*, !dbg !2560
  %15 = load i64, i64* %14, align 8, !dbg !2560
  %finish_next = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 5, !dbg !2562
  %16 = bitcast %struct.ira_allocno_live_range** %finish_next to i64*, !dbg !2563
  store i64 %15, i64* %16, align 8, !dbg !2563
  store %struct.ira_allocno_live_range* %r.0, %struct.ira_allocno_live_range** %arrayidx18, align 8, !dbg !2564
  %next = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 3, !dbg !2565
  br label %for.cond11, !dbg !2566, !llvm.loop !2567

for.end22:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2569
  ret void, !dbg !2569
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_print_live_range_list(%struct._IO_FILE* %f, %struct.ira_allocno_live_range* %r) local_unnamed_addr #4 !dbg !2570 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r, metadata !2575, metadata !DIExpression()), !dbg !2576
  br label %for.cond, !dbg !2577

for.cond:                                         ; preds = %for.body, %entry
  %r.addr.0 = phi %struct.ira_allocno_live_range* [ %r, %entry ], [ %2, %for.body ]
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r.addr.0, metadata !2575, metadata !DIExpression()), !dbg !2576
  %cmp = icmp eq %struct.ira_allocno_live_range* %r.addr.0, null, !dbg !2578
  br i1 %cmp, label %for.end, label %for.body, !dbg !2581

for.body:                                         ; preds = %for.cond
  %start = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.addr.0, i64 0, i32 1, !dbg !2582
  %0 = load i32, i32* %start, align 8, !dbg !2582
  %finish = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.addr.0, i64 0, i32 2, !dbg !2583
  %1 = load i32, i32* %finish, align 4, !dbg !2583
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1) #6, !dbg !2584
  %next = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.addr.0, i64 0, i32 3, !dbg !2585
  %2 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %next, align 8, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %2, metadata !2575, metadata !DIExpression()), !dbg !2576
  br label %for.cond, !dbg !2586, !llvm.loop !2587

for.end:                                          ; preds = %for.cond
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2589
  ret void, !dbg !2590
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ira_debug_live_range_list(%struct.ira_allocno_live_range* %r) local_unnamed_addr #4 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r, metadata !2595, metadata !DIExpression()), !dbg !2596
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2597
  tail call void @ira_print_live_range_list(%struct._IO_FILE* %0, %struct.ira_allocno_live_range* %r) #7, !dbg !2598
  ret void, !dbg !2599
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_debug_allocno_live_ranges(%struct.ira_allocno* %a) local_unnamed_addr #4 !dbg !2600 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a, metadata !2604, metadata !DIExpression()), !dbg !2605
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2606
  tail call fastcc void @print_allocno_live_ranges(%struct._IO_FILE* %0, %struct.ira_allocno* %a) #7, !dbg !2607
  ret void, !dbg !2608
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_allocno_live_ranges(%struct._IO_FILE* %f, %struct.ira_allocno* %a) unnamed_addr #4 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a, metadata !2614, metadata !DIExpression()), !dbg !2615
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 0, !dbg !2616
  %0 = load i32, i32* %num, align 8, !dbg !2616
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 1, !dbg !2617
  %1 = load i32, i32* %regno, align 4, !dbg !2617
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %0, i32 %1) #6, !dbg !2618
  %live_ranges = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 20, !dbg !2619
  %2 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges, align 8, !dbg !2619
  tail call void @ira_print_live_range_list(%struct._IO_FILE* %f, %struct.ira_allocno_live_range* %2) #7, !dbg !2620
  ret void, !dbg !2621
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_debug_live_ranges() local_unnamed_addr #4 !dbg !2622 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2623
  tail call fastcc void @print_live_ranges(%struct._IO_FILE* %0) #7, !dbg !2624
  ret void, !dbg !2625
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_live_ranges(%struct._IO_FILE* %f) unnamed_addr #4 !dbg !2626 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2630, metadata !DIExpression()), !dbg !2633
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !2634
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2634
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2635
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2632, metadata !DIExpression(DW_OP_deref)), !dbg !2633
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2636
  br label %for.cond, !dbg !2636

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2631, metadata !DIExpression(DW_OP_deref)), !dbg !2633
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2632, metadata !DIExpression(DW_OP_deref)), !dbg !2633
  %call = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2638
  %tobool = icmp eq i8 %call, 0, !dbg !2636
  br i1 %tobool, label %for.end, label %for.body, !dbg !2636

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2640
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !2631, metadata !DIExpression()), !dbg !2633
  call fastcc void @print_allocno_live_ranges(%struct._IO_FILE* %f, %struct.ira_allocno* %2) #7, !dbg !2641
  br label %for.cond, !dbg !2638, !llvm.loop !2642

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2644
  ret void, !dbg !2644
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_create_allocno_live_ranges() local_unnamed_addr #4 !dbg !2645 {
entry:
  %0 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2646
  %call = tail call %struct.sparseset_def* @sparseset_alloc(i32 %0) #6, !dbg !2647
  store %struct.sparseset_def* %call, %struct.sparseset_def** @allocnos_live, align 8, !dbg !2648
  store i32 0, i32* @curr_point, align 4, !dbg !2649
  store i32 0, i32* @last_call_num, align 4, !dbg !2650
  %1 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2651
  %conv = sext i32 %1 to i64, !dbg !2651
  %mul = shl nsw i64 %conv, 2, !dbg !2652
  %call1 = tail call i8* @ira_allocate(i64 %mul) #6, !dbg !2653
  store i8* %call1, i8** bitcast (i32** @allocno_saved_at_call to i8**), align 8, !dbg !2654
  %2 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2655
  %conv2 = sext i32 %2 to i64, !dbg !2655
  %mul3 = shl nsw i64 %conv2, 2, !dbg !2656
  %call4 = tail call i8* @memset(i8* %call1, i32 0, i64 %mul3) #6, !dbg !2657
  %3 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !2658
  tail call void @ira_traverse_loop_tree(i8 zeroext 1, %struct.ira_loop_tree_node* %3, void (%struct.ira_loop_tree_node*)* null, void (%struct.ira_loop_tree_node*)* nonnull @process_bb_node_lives) #6, !dbg !2659
  %4 = load i32, i32* @curr_point, align 4, !dbg !2660
  store i32 %4, i32* @ira_max_point, align 4, !dbg !2661
  tail call fastcc void @create_start_finish_chains() #7, !dbg !2662
  %5 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2663
  %cmp = icmp sgt i32 %5, 2, !dbg !2665
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2666
  %cmp6 = icmp ne %struct._IO_FILE* %6, null, !dbg !2667
  %or.cond = and i1 %cmp, %cmp6, !dbg !2668
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2668

if.then:                                          ; preds = %entry
  tail call fastcc void @print_live_ranges(%struct._IO_FILE* nonnull %6) #7, !dbg !2669
  br label %if.end, !dbg !2669

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** bitcast (i32** @allocno_saved_at_call to i8**), align 8, !dbg !2670
  tail call void @ira_free(i8* %7) #6, !dbg !2671
  %8 = load i8*, i8** bitcast (%struct.sparseset_def** @allocnos_live to i8**), align 8, !dbg !2672
  tail call void @free(i8* %8) #6, !dbg !2672
  ret void, !dbg !2673
}

declare dso_local %struct.sparseset_def* @sparseset_alloc(i32) local_unnamed_addr #1

declare dso_local i8* @ira_allocate(i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local void @ira_traverse_loop_tree(i8 zeroext, %struct.ira_loop_tree_node*, void (%struct.ira_loop_tree_node*)*, void (%struct.ira_loop_tree_node*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @process_bb_node_lives(%struct.ira_loop_tree_node* %loop_tree_node) #4 !dbg !2674 {
entry:
  %j = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %loop_tree_node, metadata !2678, metadata !DIExpression()), !dbg !2806
  %0 = bitcast i32* %j to i8*, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2807
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2808
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2808
  %bb1 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_tree_node, i64 0, i32 0, !dbg !2809
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !2682, metadata !DIExpression()), !dbg !2806
  %cmp = icmp eq %struct.basic_block_def* %2, null, !dbg !2810
  br i1 %cmp, label %if.end435, label %for.cond.preheader, !dbg !2811

for.cond.preheader:                               ; preds = %entry
  %3 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !2812
  %4 = sext i32 %3 to i64, !dbg !2815
  br label %for.cond, !dbg !2815

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv19 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next20, %for.body ], !dbg !2816
  call void @llvm.dbg.value(metadata i64 %indvars.iv19, metadata !2679, metadata !DIExpression()), !dbg !2806
  %cmp2 = icmp slt i64 %indvars.iv19, %4, !dbg !2817
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2815

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv19, !dbg !2818
  %5 = load i32, i32* %arrayidx, align 4, !dbg !2818
  %idxprom3 = zext i32 %5 to i64, !dbg !2820
  %arrayidx4 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom3, !dbg !2820
  store i32 0, i32* %arrayidx4, align 4, !dbg !2821
  %arrayidx8 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom3, !dbg !2822
  store i32 -1, i32* %arrayidx8, align 4, !dbg !2823
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !2824
  call void @llvm.dbg.value(metadata i32 undef, metadata !2679, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2806
  br label %for.cond, !dbg !2825, !llvm.loop !2826

for.end:                                          ; preds = %for.cond
  store %struct.ira_loop_tree_node* %loop_tree_node, %struct.ira_loop_tree_node** @curr_bb_node, align 8, !dbg !2828
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !2829
  %6 = load i32, i32* %index, align 8, !dbg !2829
  %call = tail call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %6) #7, !dbg !2829
  %out = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call, i64 0, i32 3, !dbg !2829
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out, align 8, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %7, metadata !2692, metadata !DIExpression()), !dbg !2806
  %8 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !2830
  tail call fastcc void @sparseset_clear(%struct.sparseset_def* %8) #7, !dbg !2831
  store i64 0, i64* @hard_regs_live, align 8, !dbg !2832
  tail call void @reg_set_to_hard_reg_set(i64* nonnull @hard_regs_live, %struct.bitmap_head_def* %7) #6, !dbg !2832
  %9 = load i64, i64* @eliminable_regset, align 8, !dbg !2834
  %neg = xor i64 %9, -1, !dbg !2834
  %10 = load i64, i64* @hard_regs_live, align 8, !dbg !2834
  %and = and i64 %10, %neg, !dbg !2834
  %11 = load i64, i64* @ira_no_alloc_regs, align 8, !dbg !2835
  %neg9 = xor i64 %11, -1, !dbg !2835
  %and10 = and i64 %and, %neg9, !dbg !2835
  store i64 %and10, i64* @hard_regs_live, align 8, !dbg !2835
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()), !dbg !2806
  br label %for.cond11, !dbg !2836

for.cond11:                                       ; preds = %for.inc45, %for.end
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc45 ], [ 0, %for.end ], !dbg !2837
  call void @llvm.dbg.value(metadata i64 %indvars.iv16, metadata !2679, metadata !DIExpression()), !dbg !2806
  %exitcond18 = icmp eq i64 %indvars.iv16, 53, !dbg !2838
  br i1 %exitcond18, label %for.end47, label %for.body13, !dbg !2839

for.body13:                                       ; preds = %for.cond11
  %12 = load i64, i64* @hard_regs_live, align 8, !dbg !2840
  %shl = shl i64 1, %indvars.iv16, !dbg !2840
  %and14 = and i64 %12, %shl, !dbg !2840
  %tobool = icmp eq i64 %and14, 0, !dbg !2840
  br i1 %tobool, label %for.inc45, label %if.then15, !dbg !2841

if.then15:                                        ; preds = %for.body13
  %arrayidx17 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %indvars.iv16, !dbg !2842
  %13 = load i32, i32* %arrayidx17, align 4, !dbg !2842
  %idxprom18 = zext i32 %13 to i64, !dbg !2843
  %arrayidx19 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_translate, i64 0, i64 %idxprom18, !dbg !2843
  %14 = load i32, i32* %arrayidx19, align 4, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %14, metadata !2695, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 0, metadata !2681, metadata !DIExpression()), !dbg !2806
  %idxprom21 = zext i32 %14 to i64, !dbg !2845
  br label %for.cond20, !dbg !2848

for.cond20:                                       ; preds = %for.inc41, %if.then15
  %storemerge6 = phi i32 [ 0, %if.then15 ], [ %inc42, %for.inc41 ], !dbg !2849
  store i32 %storemerge6, i32* %j, align 4, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %storemerge6, metadata !2681, metadata !DIExpression()), !dbg !2806
  %idxprom23 = zext i32 %storemerge6 to i64, !dbg !2850
  %arrayidx24 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom21, i64 %idxprom23, !dbg !2850
  %15 = load i32, i32* %arrayidx24, align 4, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %15, metadata !2702, metadata !DIExpression()), !dbg !2844
  %cmp25 = icmp eq i32 %15, 27, !dbg !2851
  br i1 %cmp25, label %for.inc45.loopexit, label %for.body26, !dbg !2852

for.body26:                                       ; preds = %for.cond20
  %idxprom27 = zext i32 %15 to i64, !dbg !2853
  %arrayidx28 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom27, !dbg !2853
  %16 = load i32, i32* %arrayidx28, align 4, !dbg !2855
  %inc29 = add nsw i32 %16, 1, !dbg !2855
  store i32 %inc29, i32* %arrayidx28, align 4, !dbg !2855
  %17 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @curr_bb_node, align 8, !dbg !2856
  %arrayidx31 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %17, i64 0, i32 11, i64 %idxprom27, !dbg !2856
  %18 = load i32, i32* %arrayidx31, align 4, !dbg !2856
  %cmp34 = icmp sgt i32 %18, %16, !dbg !2858
  br i1 %cmp34, label %for.inc41, label %if.then35, !dbg !2859

if.then35:                                        ; preds = %for.body26
  store i32 %inc29, i32* %arrayidx31, align 4, !dbg !2860
  %.pre = load i32, i32* %j, align 4, !dbg !2861
  br label %for.inc41, !dbg !2862

for.inc41:                                        ; preds = %for.body26, %if.then35
  %19 = phi i32 [ %storemerge6, %for.body26 ], [ %.pre, %if.then35 ], !dbg !2861
  call void @llvm.dbg.value(metadata i32 %19, metadata !2681, metadata !DIExpression()), !dbg !2806
  %inc42 = add i32 %19, 1, !dbg !2861
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !2681, metadata !DIExpression()), !dbg !2806
  br label %for.cond20, !dbg !2863, !llvm.loop !2864

for.inc45.loopexit:                               ; preds = %for.cond20
  br label %for.inc45, !dbg !2866

for.inc45:                                        ; preds = %for.inc45.loopexit, %for.body13
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i32 undef, metadata !2679, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2806
  br label %for.cond11, !dbg !2867, !llvm.loop !2868

for.end47:                                        ; preds = %for.cond11
  call void @llvm.dbg.value(metadata i32 53, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 53, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32* %j, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %7, i32 53, i32* nonnull %j) #7, !dbg !2870
  br label %for.cond48, !dbg !2870

for.cond48:                                       ; preds = %cleanup, %for.end47
  call void @llvm.dbg.value(metadata i32* %j, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  %call49 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #7, !dbg !2871
  %tobool50 = icmp eq i8 %call49, 0, !dbg !2870
  br i1 %tobool50, label %for.end58, label %for.body51, !dbg !2870

for.body51:                                       ; preds = %for.cond48
  %20 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !2872
  %21 = load i32, i32* %j, align 4, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %21, metadata !2681, metadata !DIExpression()), !dbg !2806
  %idxprom52 = zext i32 %21 to i64, !dbg !2872
  %arrayidx53 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %20, i64 %idxprom52, !dbg !2872
  %22 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx53, align 8, !dbg !2872
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %22, metadata !2703, metadata !DIExpression()), !dbg !2874
  %cmp54 = icmp eq %struct.ira_allocno* %22, null, !dbg !2875
  br i1 %cmp54, label %cleanup, label %if.end56, !dbg !2877

if.end56:                                         ; preds = %for.body51
  call fastcc void @set_allocno_live(%struct.ira_allocno* nonnull %22) #7, !dbg !2878
  %23 = load i32, i32* %j, align 4, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %23, metadata !2681, metadata !DIExpression()), !dbg !2806
  call fastcc void @make_regno_born(i32 %23) #7, !dbg !2880
  br label %cleanup, !dbg !2881

cleanup:                                          ; preds = %for.body51, %if.end56
  call void @llvm.dbg.value(metadata i32* %j, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #7, !dbg !2871
  br label %for.cond48, !dbg !2871, !llvm.loop !2882

for.end58:                                        ; preds = %for.cond48
  %24 = load i32, i32* @optimize_size, align 4, !dbg !2884
  %tobool59 = icmp eq i32 %24, 0, !dbg !2884
  br i1 %tobool59, label %lor.lhs.false, label %cond.end68, !dbg !2884

lor.lhs.false:                                    ; preds = %for.end58
  %25 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2884
  %tobool60 = icmp eq i32 %25, 0, !dbg !2884
  br i1 %tobool60, label %cond.false, label %land.lhs.true, !dbg !2884

land.lhs.true:                                    ; preds = %lor.lhs.false
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2884
  %cfg = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !2884
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2884
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 0, !dbg !2884
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2884
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 8, !dbg !2884
  %29 = load i64, i64* %count, align 8, !dbg !2884
  %tobool61 = icmp eq i64 %29, 0, !dbg !2884
  br i1 %tobool61, label %cond.end68, label %cond.false, !dbg !2884

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 11, !dbg !2884
  %30 = load i32, i32* %frequency, align 8, !dbg !2884
  %.off = add i32 %30, 9, !dbg !2884
  %31 = icmp ugt i32 %.off, 18, !dbg !2884
  br i1 %31, label %cond.true63, label %cond.end68, !dbg !2884

cond.true63:                                      ; preds = %cond.false
  %div66 = sdiv i32 %30, 10, !dbg !2884
  br label %cond.end68, !dbg !2884

cond.end68:                                       ; preds = %land.lhs.true, %for.end58, %cond.true63, %cond.false
  %cond69 = phi i32 [ 1000, %land.lhs.true ], [ 1000, %for.end58 ], [ %div66, %cond.true63 ], [ 1, %cond.false ], !dbg !2884
  call void @llvm.dbg.value(metadata i32 %cond69, metadata !2680, metadata !DIExpression()), !dbg !2806
  %cmp70 = icmp eq i32 %cond69, 0, !dbg !2885
  %spec.select = select i1 %cmp70, i32 1, i32 %cond69, !dbg !2887
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2680, metadata !DIExpression()), !dbg !2806
  %32 = load i32, i32* @last_call_num, align 4, !dbg !2888
  %inc73 = add nsw i32 %32, 1, !dbg !2888
  store i32 %inc73, i32* @last_call_num, align 4, !dbg !2888
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 7, !dbg !2889
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2889
  %33 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2889
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %33, i64 0, i32 1, !dbg !2889
  %parent = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_tree_node, i64 0, i32 6, !dbg !2890
  br label %for.cond74, !dbg !2889

for.cond74:                                       ; preds = %cleanup329, %cond.end68
  %insn.0.in = phi %struct.rtx_def** [ %end_, %cond.end68 ], [ %rt_rtx338, %cleanup329 ]
  %i.2 = phi i32 [ 53, %cond.end68 ], [ %i.6, %cleanup329 ], !dbg !2892
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2683, metadata !DIExpression()), !dbg !2806
  %tobool75 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2894
  br i1 %tobool75, label %for.end339, label %land.rhs, !dbg !2894

land.rhs:                                         ; preds = %for.cond74
  %34 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2894
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %34, i64 0, i32 0, !dbg !2894
  %35 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2894
  %36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2894
  %rt_rtx = bitcast %union.rtunion_def* %36 to %struct.rtx_def**, !dbg !2894
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2894
  %cmp79 = icmp eq %struct.rtx_def* %insn.0, %37, !dbg !2894
  br i1 %cmp79, label %for.end339, label %for.body80, !dbg !2889

for.body80:                                       ; preds = %land.rhs
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2895
  %bf.load = load i32, i32* %38, align 8, !dbg !2895
  %bf.clear = and i32 %bf.load, 65535, !dbg !2895
  %cmp81 = icmp eq i32 %bf.clear, 8, !dbg !2895
  br i1 %cmp81, label %land.lhs.true94, label %lor.lhs.false82, !dbg !2895

lor.lhs.false82:                                  ; preds = %for.body80
  %cmp85 = icmp eq i32 %bf.clear, 7, !dbg !2895
  br i1 %cmp85, label %land.lhs.true94, label %lor.lhs.false86, !dbg !2895

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %cmp89 = icmp eq i32 %bf.clear, 9, !dbg !2895
  br i1 %cmp89, label %land.lhs.true94, label %lor.lhs.false90, !dbg !2895

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %cmp93 = icmp eq i32 %bf.clear, 10, !dbg !2895
  br i1 %cmp93, label %land.lhs.true94, label %cleanup329, !dbg !2895

land.lhs.true94:                                  ; preds = %lor.lhs.false90, %lor.lhs.false86, %lor.lhs.false82, %for.body80
  %cmp97 = icmp eq i32 %bf.clear, 7, !dbg !2895
  br i1 %cmp97, label %cleanup329, label %if.end99, !dbg !2897

if.end99:                                         ; preds = %land.lhs.true94
  %39 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2898
  %cmp100 = icmp sgt i32 %39, 2, !dbg !2899
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2900
  %cmp102 = icmp ne %struct._IO_FILE* %40, null, !dbg !2901
  %or.cond = and i1 %cmp100, %cmp102, !dbg !2902
  br i1 %or.cond, label %if.then103, label %if.end99.if.end108_crit_edge, !dbg !2902

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  br label %if.end108, !dbg !2902

if.then103:                                       ; preds = %if.end99
  %arrayidx106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2903
  %rt_int = bitcast %union.rtunion_def* %arrayidx106 to i32*, !dbg !2903
  %41 = load i32, i32* %rt_int, align 8, !dbg !2903
  %42 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent, align 8, !dbg !2904
  %loop = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %42, i64 0, i32 1, !dbg !2905
  %43 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2905
  %num = getelementptr inbounds %struct.loop, %struct.loop* %43, i64 0, i32 0, !dbg !2906
  %44 = load i32, i32* %num, align 8, !dbg !2906
  %45 = load i32, i32* @curr_point, align 4, !dbg !2907
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32 %44, i32 %45) #6, !dbg !2908
  %bf.load109.pre = load i32, i32* %38, align 8, !dbg !2909
  br label %if.end108, !dbg !2908

if.end108:                                        ; preds = %if.end99.if.end108_crit_edge, %if.then103
  %bf.load109 = phi i32 [ %bf.load109.pre, %if.then103 ], [ %bf.load, %if.end99.if.end108_crit_edge ], !dbg !2909
  %bf.clear110 = and i32 %bf.load109, 65535, !dbg !2909
  %cmp111 = icmp eq i32 %bf.clear110, 10, !dbg !2909
  call void @llvm.dbg.value(metadata i1 %cmp111, metadata !2773, metadata !DIExpression()), !dbg !2910
  %46 = load %struct.df*, %struct.df** @df, align 8, !dbg !2911
  %insns = getelementptr inbounds %struct.df, %struct.df* %46, i64 0, i32 10, !dbg !2911
  %47 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !2911
  %arrayidx115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2911
  %rt_int116 = bitcast %union.rtunion_def* %arrayidx115 to i32*, !dbg !2911
  %48 = load i32, i32* %rt_int116, align 8, !dbg !2911
  %idxprom117 = sext i32 %48 to i64, !dbg !2911
  %arrayidx118 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %47, i64 %idxprom117, !dbg !2911
  %49 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx118, align 8, !dbg !2911
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %49, i64 0, i32 1, !dbg !2911
  %50 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !2911
  call void @llvm.dbg.value(metadata %union.df_ref_d** %50, metadata !2707, metadata !DIExpression()), !dbg !2910
  br i1 %cmp111, label %if.end108.split.us, label %if.end108.if.end108.split_crit_edge, !dbg !2913

if.end108.if.end108.split_crit_edge:              ; preds = %if.end108
  br label %for.cond119, !dbg !2913

if.end108.split.us:                               ; preds = %if.end108
  br label %for.cond119.us, !dbg !2913

for.cond119.us:                                   ; preds = %for.inc130.us, %if.end108.split.us
  %def_rec.0.us = phi %union.df_ref_d** [ %50, %if.end108.split.us ], [ %incdec.ptr.us, %for.inc130.us ], !dbg !2914
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0.us, metadata !2707, metadata !DIExpression()), !dbg !2910
  %51 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0.us, align 8, !dbg !2915
  %tobool120.us = icmp eq %union.df_ref_d* %51, null, !dbg !2917
  br i1 %tobool120.us, label %for.end131.us-lcssa.us, label %for.body121.us, !dbg !2917

for.body121.us:                                   ; preds = %for.cond119.us
  %52 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %51, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2917
  %bf.load124.us = load i32, i32* %52, align 8, !dbg !2918
  %and125.us = and i32 %bf.load124.us, 4194304, !dbg !2918
  %cmp126.us = icmp eq i32 %and125.us, 0, !dbg !2918
  br i1 %cmp126.us, label %if.then128.us, label %for.inc130.us, !dbg !2920

if.then128.us:                                    ; preds = %for.body121.us
  call fastcc void @mark_ref_live(%union.df_ref_d* nonnull %51) #7, !dbg !2921
  br label %for.inc130.us, !dbg !2921

for.inc130.us:                                    ; preds = %if.then128.us, %for.body121.us
  %incdec.ptr.us = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0.us, i64 1, !dbg !2922
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr.us, metadata !2707, metadata !DIExpression()), !dbg !2910
  br label %for.cond119.us, !dbg !2923, !llvm.loop !2924

for.end131.us-lcssa.us:                           ; preds = %for.cond119.us
  br label %for.end131, !dbg !2926

for.cond119:                                      ; preds = %for.body121, %if.end108.if.end108.split_crit_edge
  %def_rec.0 = phi %union.df_ref_d** [ %50, %if.end108.if.end108.split_crit_edge ], [ %incdec.ptr, %for.body121 ], !dbg !2914
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !2707, metadata !DIExpression()), !dbg !2910
  %53 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !2915
  %tobool120 = icmp eq %union.df_ref_d* %53, null, !dbg !2917
  br i1 %tobool120, label %for.end131.us-lcssa, label %for.body121, !dbg !2917

for.body121:                                      ; preds = %for.cond119
  call fastcc void @mark_ref_live(%union.df_ref_d* nonnull %53) #7, !dbg !2921
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !2922
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2707, metadata !DIExpression()), !dbg !2910
  br label %for.cond119, !dbg !2923, !llvm.loop !2924

for.end131.us-lcssa:                              ; preds = %for.cond119
  br label %for.end131, !dbg !2926

for.end131:                                       ; preds = %for.end131.us-lcssa.us, %for.end131.us-lcssa
  %u132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2926
  %54 = getelementptr inbounds %union.u, %union.u* %u132, i64 1, i32 0, i32 0, i64 0, !dbg !2926
  %55 = bitcast %union.rtunion_def* %54 to i32**, !dbg !2926
  %56 = load i32*, i32** %55, align 8, !dbg !2926
  %bf.load136 = load i32, i32* %56, align 8, !dbg !2926
  %bf.clear137 = and i32 %bf.load136, 65535, !dbg !2926
  %cmp138 = icmp eq i32 %bf.clear137, 15, !dbg !2927
  br i1 %cmp138, label %land.lhs.true140, label %if.end199, !dbg !2928

land.lhs.true140:                                 ; preds = %for.end131
  %call141 = call i32 @multiple_sets(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2929
  %tobool142 = icmp eq i32 %call141, 0, !dbg !2929
  br i1 %tobool142, label %if.end199, label %if.then143, !dbg !2930

if.then143:                                       ; preds = %land.lhs.true140
  %57 = load %struct.df*, %struct.df** @df, align 8, !dbg !2931
  %insns144 = getelementptr inbounds %struct.df, %struct.df* %57, i64 0, i32 10, !dbg !2931
  %58 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns144, align 8, !dbg !2931
  %59 = load i32, i32* %rt_int116, align 8, !dbg !2931
  %idxprom149 = sext i32 %59 to i64, !dbg !2931
  %arrayidx150 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %58, i64 %idxprom149, !dbg !2931
  %60 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx150, align 8, !dbg !2931
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %60, i64 0, i32 2, !dbg !2931
  %61 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !2931
  call void @llvm.dbg.value(metadata %union.df_ref_d** %61, metadata !2772, metadata !DIExpression()), !dbg !2910
  %rt_rtx160 = bitcast %union.rtunion_def* %54 to %struct.rtx_def**, !dbg !2932
  br label %for.cond151, !dbg !2933

for.cond151:                                      ; preds = %for.inc196, %if.then143
  %use_rec.0 = phi %union.df_ref_d** [ %61, %if.then143 ], [ %incdec.ptr197, %for.inc196 ], !dbg !2934
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2772, metadata !DIExpression()), !dbg !2910
  %62 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !2935
  %tobool152 = icmp eq %union.df_ref_d* %62, null, !dbg !2936
  br i1 %tobool152, label %if.end199.loopexit, label %for.body153, !dbg !2936

for.body153:                                      ; preds = %for.cond151
  %reg156 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %62, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2937
  %63 = load %struct.rtx_def*, %struct.rtx_def** %reg156, align 8, !dbg !2937
  call void @llvm.dbg.value(metadata %struct.rtx_def* %63, metadata !2779, metadata !DIExpression()), !dbg !2938
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx160, align 8, !dbg !2939
  %arrayidx163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2939
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtvec_def**, !dbg !2939
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2939
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i64 0, i32 0, !dbg !2939
  %66 = load i32, i32* %num_elem, align 8, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %66, metadata !2774, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2938
  %67 = sext i32 %66 to i64, !dbg !2940
  br label %for.cond164, !dbg !2940

for.cond164:                                      ; preds = %for.inc194, %for.body153
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc194 ], [ %67, %for.body153 ]
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, -1, !dbg !2932
  call void @llvm.dbg.value(metadata i32 undef, metadata !2774, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2938
  %cmp165 = icmp sgt i64 %indvars.iv14, 0, !dbg !2941
  br i1 %cmp165, label %for.body167, label %for.inc196, !dbg !2942

for.body167:                                      ; preds = %for.cond164
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx160, align 8, !dbg !2943
  %arrayidx174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2943
  %rt_rtvec175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtvec_def**, !dbg !2943
  %69 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec175, align 8, !dbg !2943
  %arrayidx177 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %69, i64 0, i32 1, i64 %indvars.iv.next15, !dbg !2943
  %70 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx177, align 8, !dbg !2943
  call void @llvm.dbg.value(metadata %struct.rtx_def* %70, metadata !2780, metadata !DIExpression()), !dbg !2944
  %71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i64 0, i32 0, !dbg !2945
  %bf.load178 = load i32, i32* %71, align 8, !dbg !2945
  %bf.clear179 = and i32 %bf.load178, 65535, !dbg !2945
  %cmp180 = icmp eq i32 %bf.clear179, 23, !dbg !2947
  br i1 %cmp180, label %land.lhs.true182, label %cleanup191, !dbg !2948

land.lhs.true182:                                 ; preds = %for.body167
  %arrayidx185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2949
  %rt_rtx186 = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtx_def**, !dbg !2949
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx186, align 8, !dbg !2949
  %call187 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %63, %struct.rtx_def* %72) #6, !dbg !2950
  %tobool188 = icmp eq i32 %call187, 0, !dbg !2950
  br i1 %tobool188, label %cleanup191, label %if.then189, !dbg !2951

if.then189:                                       ; preds = %land.lhs.true182
  %73 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !2952
  call fastcc void @mark_ref_live(%union.df_ref_d* %73) #7, !dbg !2954
  br label %cleanup191, !dbg !2955

cleanup191:                                       ; preds = %land.lhs.true182, %for.body167, %if.then189
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then189 ], [ true, %land.lhs.true182 ], [ true, %for.body167 ]
  br i1 %cleanup.dest.slot.1, label %for.inc194, label %for.inc196

for.inc194:                                       ; preds = %cleanup191
  call void @llvm.dbg.value(metadata i32 undef, metadata !2774, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2938
  br label %for.cond164, !dbg !2956, !llvm.loop !2957

for.inc196:                                       ; preds = %for.cond164, %cleanup191
  %incdec.ptr197 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !2959
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr197, metadata !2772, metadata !DIExpression()), !dbg !2910
  br label %for.cond151, !dbg !2960, !llvm.loop !2961

if.end199.loopexit:                               ; preds = %for.cond151
  br label %if.end199, !dbg !2963

if.end199:                                        ; preds = %if.end199.loopexit, %land.lhs.true140, %for.end131
  call void @extract_insn(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2963
  call void @preprocess_constraints() #6, !dbg !2964
  call fastcc void @process_single_reg_class_operands(i8 zeroext 0, i32 %spec.select) #7, !dbg !2965
  %74 = load %struct.df*, %struct.df** @df, align 8, !dbg !2966
  %insns200 = getelementptr inbounds %struct.df, %struct.df* %74, i64 0, i32 10, !dbg !2966
  %75 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns200, align 8, !dbg !2966
  %76 = load i32, i32* %rt_int116, align 8, !dbg !2966
  %idxprom205 = sext i32 %76 to i64, !dbg !2966
  %arrayidx206 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %75, i64 %idxprom205, !dbg !2966
  %77 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx206, align 8, !dbg !2966
  %defs207 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %77, i64 0, i32 1, !dbg !2966
  %78 = load %union.df_ref_d**, %union.df_ref_d*** %defs207, align 8, !dbg !2966
  call void @llvm.dbg.value(metadata %union.df_ref_d** %78, metadata !2707, metadata !DIExpression()), !dbg !2910
  br i1 %cmp111, label %if.end199.split.us, label %if.end199.if.end199.split_crit_edge, !dbg !2968

if.end199.if.end199.split_crit_edge:              ; preds = %if.end199
  br label %for.cond208, !dbg !2968

if.end199.split.us:                               ; preds = %if.end199
  br label %for.cond208.us, !dbg !2968

for.cond208.us:                                   ; preds = %for.inc221.us, %if.end199.split.us
  %def_rec.1.us = phi %union.df_ref_d** [ %78, %if.end199.split.us ], [ %incdec.ptr222.us, %for.inc221.us ], !dbg !2969
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.1.us, metadata !2707, metadata !DIExpression()), !dbg !2910
  %79 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.1.us, align 8, !dbg !2970
  %tobool209.us = icmp eq %union.df_ref_d* %79, null, !dbg !2972
  br i1 %tobool209.us, label %for.end223.us-lcssa.us, label %for.body210.us, !dbg !2972

for.body210.us:                                   ; preds = %for.cond208.us
  %80 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %79, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2972
  %bf.load214.us = load i32, i32* %80, align 8, !dbg !2973
  %and216.us = and i32 %bf.load214.us, 4194304, !dbg !2973
  %cmp217.us = icmp eq i32 %and216.us, 0, !dbg !2973
  br i1 %cmp217.us, label %if.then219.us, label %for.inc221.us, !dbg !2975

if.then219.us:                                    ; preds = %for.body210.us
  call fastcc void @mark_ref_dead(%union.df_ref_d* nonnull %79) #7, !dbg !2976
  br label %for.inc221.us, !dbg !2976

for.inc221.us:                                    ; preds = %if.then219.us, %for.body210.us
  %incdec.ptr222.us = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.1.us, i64 1, !dbg !2977
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr222.us, metadata !2707, metadata !DIExpression()), !dbg !2910
  br label %for.cond208.us, !dbg !2978, !llvm.loop !2979

for.end223.us-lcssa.us:                           ; preds = %for.cond208.us
  br label %for.end223, !dbg !2981

for.cond208:                                      ; preds = %for.body210, %if.end199.if.end199.split_crit_edge
  %def_rec.1 = phi %union.df_ref_d** [ %78, %if.end199.if.end199.split_crit_edge ], [ %incdec.ptr222, %for.body210 ], !dbg !2969
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.1, metadata !2707, metadata !DIExpression()), !dbg !2910
  %81 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.1, align 8, !dbg !2970
  %tobool209 = icmp eq %union.df_ref_d* %81, null, !dbg !2972
  br i1 %tobool209, label %for.end223.us-lcssa, label %for.body210, !dbg !2972

for.body210:                                      ; preds = %for.cond208
  call fastcc void @mark_ref_dead(%union.df_ref_d* nonnull %81) #7, !dbg !2976
  %incdec.ptr222 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.1, i64 1, !dbg !2977
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr222, metadata !2707, metadata !DIExpression()), !dbg !2910
  br label %for.cond208, !dbg !2978, !llvm.loop !2979

for.end223.us-lcssa:                              ; preds = %for.cond208
  br label %for.end223, !dbg !2981

for.end223:                                       ; preds = %for.end223.us-lcssa.us, %for.end223.us-lcssa
  br i1 %cmp111, label %if.then225, label %if.end268, !dbg !2981

if.then225:                                       ; preds = %for.end223
  %82 = load i32, i32* @last_call_num, align 4, !dbg !2982
  %inc226 = add nsw i32 %82, 1, !dbg !2982
  store i32 %inc226, i32* @last_call_num, align 4, !dbg !2982
  %83 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !2983
  call fastcc void @sparseset_iter_init(%struct.sparseset_def* %83) #7, !dbg !2983
  br label %for.cond227, !dbg !2983

for.cond227:                                      ; preds = %for.inc266, %if.then225
  %i.3 = phi i32 [ %i.2, %if.then225 ], [ %i.4, %for.inc266 ], !dbg !2984
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !2679, metadata !DIExpression()), !dbg !2806
  %84 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !2985
  %call228 = call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %84) #7, !dbg !2985
  %tobool230 = icmp eq i8 %call228, 0, !dbg !2985
  br i1 %tobool230, label %land.end234, label %land.rhs231, !dbg !2985

land.rhs231:                                      ; preds = %for.cond227
  %85 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !2985
  %call232 = call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %85) #7, !dbg !2985
  call void @llvm.dbg.value(metadata i32 %call232, metadata !2679, metadata !DIExpression()), !dbg !2806
  br label %land.end234

land.end234:                                      ; preds = %for.cond227, %land.rhs231
  %i.4 = phi i32 [ %call232, %land.rhs231 ], [ %i.3, %for.cond227 ], !dbg !2984
  %86 = phi i1 [ true, %land.rhs231 ], [ false, %for.cond227 ], !dbg !2986
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !2679, metadata !DIExpression()), !dbg !2806
  br i1 %86, label %for.body235, label %if.end268.loopexit, !dbg !2983

for.body235:                                      ; preds = %land.end234
  %87 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !2987
  %idxprom237 = sext i32 %i.4 to i64, !dbg !2987
  %arrayidx238 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %87, i64 %idxprom237, !dbg !2987
  %88 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx238, align 8, !dbg !2987
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %88, metadata !2784, metadata !DIExpression()), !dbg !2988
  %89 = load i32*, i32** @allocno_saved_at_call, align 8, !dbg !2989
  %arrayidx240 = getelementptr inbounds i32, i32* %89, i64 %idxprom237, !dbg !2989
  %90 = load i32, i32* %arrayidx240, align 4, !dbg !2989
  %91 = load i32, i32* @last_call_num, align 4, !dbg !2991
  %cmp241 = icmp eq i32 %90, %91, !dbg !2992
  br i1 %cmp241, label %if.end244, label %if.then243, !dbg !2993

if.then243:                                       ; preds = %for.body235
  %call_freq = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %88, i64 0, i32 29, !dbg !2994
  %92 = load i32, i32* %call_freq, align 4, !dbg !2995
  %add = add nsw i32 %92, %spec.select, !dbg !2995
  store i32 %add, i32* %call_freq, align 4, !dbg !2995
  br label %if.end244, !dbg !2994

if.end244:                                        ; preds = %for.body235, %if.then243
  %add245 = add nsw i32 %91, 1, !dbg !2996
  store i32 %add245, i32* %arrayidx240, align 4, !dbg !2997
  %calls_crossed_num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %88, i64 0, i32 30, !dbg !2998
  %93 = load i32, i32* %calls_crossed_num, align 8, !dbg !2999
  %inc248 = add nsw i32 %93, 1, !dbg !2999
  store i32 %inc248, i32* %calls_crossed_num, align 8, !dbg !2999
  %94 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3000
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %94, i64 0, i32 20, !dbg !3002
  %bf.load250 = load i32, i32* %has_nonlocal_label, align 8, !dbg !3002
  %bf.clear251 = and i32 %bf.load250, 1048576, !dbg !3002
  %tobool252 = icmp eq i32 %bf.clear251, 0, !dbg !3000
  br i1 %tobool252, label %lor.lhs.false253, label %if.then257, !dbg !3003

lor.lhs.false253:                                 ; preds = %if.end244
  %call254 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %insn.0, i32 30, %struct.rtx_def* null) #6, !dbg !3004
  %cmp255 = icmp eq %struct.rtx_def* %call254, null, !dbg !3005
  br i1 %cmp255, label %if.end258, label %if.then257, !dbg !3006

if.then257:                                       ; preds = %lor.lhs.false253, %if.end244
  %conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %88, i64 0, i32 26, !dbg !3007
  store i64 -1, i64* %conflict_hard_regs, align 8, !dbg !3007
  %total_conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %88, i64 0, i32 27, !dbg !3009
  store i64 -1, i64* %total_conflict_hard_regs, align 8, !dbg !3009
  br label %if.end258, !dbg !3010

if.end258:                                        ; preds = %lor.lhs.false253, %if.then257
  %call259 = call zeroext i8 @can_throw_internal(%struct.rtx_def* nonnull %insn.0) #6, !dbg !3011
  %tobool260 = icmp eq i8 %call259, 0, !dbg !3011
  br i1 %tobool260, label %for.inc266, label %if.then261, !dbg !3013

if.then261:                                       ; preds = %if.end258
  %95 = load i64, i64* @call_used_reg_set, align 8, !dbg !3014
  %total_conflict_hard_regs262 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %88, i64 0, i32 27, !dbg !3014
  %96 = load i64, i64* %total_conflict_hard_regs262, align 8, !dbg !3014
  %or = or i64 %96, %95, !dbg !3014
  store i64 %or, i64* %total_conflict_hard_regs262, align 8, !dbg !3014
  %conflict_hard_regs263 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %88, i64 0, i32 26, !dbg !3016
  %97 = load i64, i64* %conflict_hard_regs263, align 8, !dbg !3016
  %or264 = or i64 %97, %95, !dbg !3016
  store i64 %or264, i64* %conflict_hard_regs263, align 8, !dbg !3016
  br label %for.inc266, !dbg !3017

for.inc266:                                       ; preds = %if.end258, %if.then261
  %98 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !2985
  call fastcc void @sparseset_iter_next(%struct.sparseset_def* %98) #7, !dbg !2985
  br label %for.cond227, !dbg !2985, !llvm.loop !3018

if.end268.loopexit:                               ; preds = %land.end234
  %i.4.lcssa = phi i32 [ %i.4, %land.end234 ], !dbg !2984
  call void @llvm.dbg.value(metadata i32 %i.4.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %i.4.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %i.4.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  br label %if.end268, !dbg !3020

if.end268:                                        ; preds = %if.end268.loopexit, %for.end223
  %i.5 = phi i32 [ %i.2, %for.end223 ], [ %i.4.lcssa, %if.end268.loopexit ], !dbg !2984
  call void @llvm.dbg.value(metadata i32 %i.5, metadata !2679, metadata !DIExpression()), !dbg !2806
  call fastcc void @make_early_clobber_and_input_conflicts() #7, !dbg !3020
  %99 = load i32, i32* @curr_point, align 4, !dbg !3021
  %inc269 = add nsw i32 %99, 1, !dbg !3021
  store i32 %inc269, i32* @curr_point, align 4, !dbg !3021
  %100 = load %struct.df*, %struct.df** @df, align 8, !dbg !3022
  %insns270 = getelementptr inbounds %struct.df, %struct.df* %100, i64 0, i32 10, !dbg !3022
  %101 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns270, align 8, !dbg !3022
  %102 = load i32, i32* %rt_int116, align 8, !dbg !3022
  %idxprom275 = sext i32 %102 to i64, !dbg !3022
  %arrayidx276 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %101, i64 %idxprom275, !dbg !3022
  %103 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx276, align 8, !dbg !3022
  %uses277 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %103, i64 0, i32 2, !dbg !3022
  %104 = load %union.df_ref_d**, %union.df_ref_d*** %uses277, align 8, !dbg !3022
  call void @llvm.dbg.value(metadata %union.df_ref_d** %104, metadata !2772, metadata !DIExpression()), !dbg !2910
  br label %for.cond278, !dbg !3024

for.cond278:                                      ; preds = %for.body280, %if.end268
  %use_rec.1 = phi %union.df_ref_d** [ %104, %if.end268 ], [ %incdec.ptr282, %for.body280 ], !dbg !3025
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.1, metadata !2772, metadata !DIExpression()), !dbg !2910
  %105 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.1, align 8, !dbg !3026
  %tobool279 = icmp eq %union.df_ref_d* %105, null, !dbg !3028
  br i1 %tobool279, label %for.end283, label %for.body280, !dbg !3028

for.body280:                                      ; preds = %for.cond278
  call fastcc void @mark_ref_live(%union.df_ref_d* nonnull %105) #7, !dbg !3029
  %incdec.ptr282 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.1, i64 1, !dbg !3030
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr282, metadata !2772, metadata !DIExpression()), !dbg !2910
  br label %for.cond278, !dbg !3031, !llvm.loop !3032

for.end283:                                       ; preds = %for.cond278
  call fastcc void @process_single_reg_class_operands(i8 zeroext 1, i32 %spec.select) #7, !dbg !3034
  %call284 = call fastcc zeroext i8 @mark_hard_reg_early_clobbers(%struct.rtx_def* nonnull %insn.0, i8 zeroext 1) #7, !dbg !3035
  call void @llvm.dbg.value(metadata i8 %call284, metadata !2694, metadata !DIExpression()), !dbg !2806
  %tobool285 = icmp eq i8 %call284, 0, !dbg !3036
  br i1 %tobool285, label %if.end327, label %if.then286, !dbg !3037

if.then286:                                       ; preds = %for.end283
  %call287 = call fastcc zeroext i8 @mark_hard_reg_early_clobbers(%struct.rtx_def* nonnull %insn.0, i8 zeroext 0) #7, !dbg !3038
  %106 = load %struct.df*, %struct.df** @df, align 8, !dbg !3039
  %insns288 = getelementptr inbounds %struct.df, %struct.df* %106, i64 0, i32 10, !dbg !3039
  %107 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns288, align 8, !dbg !3039
  %108 = load i32, i32* %rt_int116, align 8, !dbg !3039
  %idxprom293 = sext i32 %108 to i64, !dbg !3039
  %arrayidx294 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %107, i64 %idxprom293, !dbg !3039
  %109 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx294, align 8, !dbg !3039
  %uses295 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %109, i64 0, i32 2, !dbg !3039
  %110 = load %union.df_ref_d**, %union.df_ref_d*** %uses295, align 8, !dbg !3039
  call void @llvm.dbg.value(metadata %union.df_ref_d** %110, metadata !2772, metadata !DIExpression()), !dbg !2910
  br label %for.cond296, !dbg !3040

for.cond296:                                      ; preds = %cleanup321, %if.then286
  %use_rec.2 = phi %union.df_ref_d** [ %110, %if.then286 ], [ %incdec.ptr325, %cleanup321 ], !dbg !3041
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.2, metadata !2772, metadata !DIExpression()), !dbg !2910
  %111 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.2, align 8, !dbg !3042
  %tobool297 = icmp eq %union.df_ref_d* %111, null, !dbg !3043
  br i1 %tobool297, label %if.end327.loopexit, label %for.body298, !dbg !3043

for.body298:                                      ; preds = %for.cond296
  %reg300 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %111, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3044
  %112 = load %struct.rtx_def*, %struct.rtx_def** %reg300, align 8, !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %112, metadata !2790, metadata !DIExpression()), !dbg !3045
  %113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i64 0, i32 0, !dbg !3046
  %bf.load301 = load i32, i32* %113, align 8, !dbg !3046
  %bf.clear302 = and i32 %bf.load301, 65535, !dbg !3046
  %cmp303 = icmp eq i32 %bf.clear302, 39, !dbg !3048
  br i1 %cmp303, label %if.then305, label %if.end310, !dbg !3049

if.then305:                                       ; preds = %for.body298
  %arrayidx308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3050
  %rt_rtx309 = bitcast %union.rtunion_def* %arrayidx308 to %struct.rtx_def**, !dbg !3050
  %114 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx309, align 8, !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %114, metadata !2790, metadata !DIExpression()), !dbg !3045
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i64 0, i32 0, !dbg !3051
  %bf.load311.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3053
  br label %if.end310, !dbg !3054

if.end310:                                        ; preds = %if.then305, %for.body298
  %bf.load311 = phi i32 [ %bf.load311.pre, %if.then305 ], [ %bf.load301, %for.body298 ], !dbg !3053
  %ureg.0 = phi %struct.rtx_def* [ %114, %if.then305 ], [ %112, %for.body298 ], !dbg !3045
  call void @llvm.dbg.value(metadata %struct.rtx_def* %ureg.0, metadata !2790, metadata !DIExpression()), !dbg !3045
  %bf.clear312 = and i32 %bf.load311, 65535, !dbg !3053
  %cmp313 = icmp eq i32 %bf.clear312, 37, !dbg !3053
  br i1 %cmp313, label %lor.lhs.false315, label %cleanup321, !dbg !3055

lor.lhs.false315:                                 ; preds = %if.end310
  %call316 = call fastcc i32 @rhs_regno(%struct.rtx_def* %ureg.0) #7, !dbg !3056
  %cmp317 = icmp ugt i32 %call316, 52, !dbg !3057
  br i1 %cmp317, label %cleanup321, label %if.end320, !dbg !3058

if.end320:                                        ; preds = %lor.lhs.false315
  %115 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.2, align 8, !dbg !3059
  call fastcc void @mark_ref_live(%union.df_ref_d* %115) #7, !dbg !3060
  br label %cleanup321, !dbg !3061

cleanup321:                                       ; preds = %if.end310, %lor.lhs.false315, %if.end320
  %incdec.ptr325 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.2, i64 1, !dbg !3062
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr325, metadata !2772, metadata !DIExpression()), !dbg !2910
  br label %for.cond296, !dbg !3063, !llvm.loop !3064

if.end327.loopexit:                               ; preds = %for.cond296
  br label %if.end327, !dbg !3066

if.end327:                                        ; preds = %if.end327.loopexit, %for.end283
  %116 = load i32, i32* @curr_point, align 4, !dbg !3066
  %inc328 = add nsw i32 %116, 1, !dbg !3066
  store i32 %inc328, i32* @curr_point, align 4, !dbg !3066
  br label %cleanup329, !dbg !3067

cleanup329:                                       ; preds = %lor.lhs.false90, %land.lhs.true94, %if.end327
  %i.6 = phi i32 [ %i.5, %if.end327 ], [ %i.2, %land.lhs.true94 ], [ %i.2, %lor.lhs.false90 ], !dbg !2984
  call void @llvm.dbg.value(metadata i32 %i.6, metadata !2679, metadata !DIExpression()), !dbg !2806
  %117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2894
  %rt_rtx338 = bitcast %union.rtunion_def* %117 to %struct.rtx_def**, !dbg !2894
  br label %for.cond74, !dbg !2894, !llvm.loop !3068

for.end339:                                       ; preds = %land.rhs, %for.cond74
  %i.2.lcssa = phi i32 [ %i.2, %land.rhs ], [ %i.2, %for.cond74 ], !dbg !2892
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !2679, metadata !DIExpression()), !dbg !2806
  %call340 = call fastcc zeroext i8 @bb_has_eh_pred(%struct.basic_block_def* nonnull %2) #7, !dbg !3070
  %tobool341 = icmp eq i8 %call340, 0, !dbg !3070
  br i1 %tobool341, label %if.end360, label %if.then342, !dbg !3071

if.then342:                                       ; preds = %for.end339
  call void @llvm.dbg.value(metadata i32 0, metadata !2681, metadata !DIExpression()), !dbg !2806
  br label %for.cond343, !dbg !3072

for.cond343:                                      ; preds = %for.inc357, %if.then342
  %storemerge = phi i32 [ 0, %if.then342 ], [ %inc358, %for.inc357 ], !dbg !3073
  store i32 %storemerge, i32* %j, align 4, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !2681, metadata !DIExpression()), !dbg !2806
  %cmp344 = icmp ugt i32 %storemerge, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !2681, metadata !DIExpression()), !dbg !2806
  br i1 %cmp344, label %cleanup354, label %if.end353, !dbg !3075

if.end353:                                        ; preds = %for.cond343
  call fastcc void @make_regno_born(i32 %storemerge) #7, !dbg !3076
  br label %cleanup354, !dbg !3077

cleanup354:                                       ; preds = %for.cond343, %if.end353
  %cleanup.dest.slot.4 = phi i1 [ true, %if.end353 ], [ false, %for.cond343 ]
  br i1 %cleanup.dest.slot.4, label %for.inc357, label %if.end360.loopexit

for.inc357:                                       ; preds = %cleanup354
  %118 = load i32, i32* %j, align 4, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %118, metadata !2681, metadata !DIExpression()), !dbg !2806
  %inc358 = add i32 %118, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %inc358, metadata !2681, metadata !DIExpression()), !dbg !2806
  br label %for.cond343, !dbg !3079, !llvm.loop !3080

if.end360.loopexit:                               ; preds = %cleanup354
  br label %if.end360, !dbg !3083

if.end360:                                        ; preds = %if.end360.loopexit, %for.end339
  %call361 = call fastcc zeroext i8 @bb_has_abnormal_pred(%struct.basic_block_def* nonnull %2) #7, !dbg !3083
  %tobool362 = icmp eq i8 %call361, 0, !dbg !3083
  br i1 %tobool362, label %if.end417, label %if.then363, !dbg !3085

if.then363:                                       ; preds = %if.end360
  %119 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3086
  call fastcc void @sparseset_iter_init(%struct.sparseset_def* %119) #7, !dbg !3086
  br label %for.cond364, !dbg !3086

for.cond364:                                      ; preds = %for.body374, %if.then363
  %px.0 = phi i32 [ undef, %if.then363 ], [ %px.1, %for.body374 ]
  call void @llvm.dbg.value(metadata i32 %px.0, metadata !2693, metadata !DIExpression()), !dbg !2806
  %120 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3089
  %call365 = call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %120) #7, !dbg !3089
  %tobool367 = icmp eq i8 %call365, 0, !dbg !3089
  br i1 %tobool367, label %land.end373, label %land.rhs368, !dbg !3089

land.rhs368:                                      ; preds = %for.cond364
  %121 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3089
  %call369 = call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %121) #7, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %call369, metadata !2693, metadata !DIExpression()), !dbg !2806
  br label %land.end373

land.end373:                                      ; preds = %for.cond364, %land.rhs368
  %px.1 = phi i32 [ %call369, %land.rhs368 ], [ %px.0, %for.cond364 ]
  %122 = phi i1 [ true, %land.rhs368 ], [ false, %for.cond364 ], !dbg !3091
  call void @llvm.dbg.value(metadata i32 %px.1, metadata !2693, metadata !DIExpression()), !dbg !2806
  br i1 %122, label %for.body374, label %for.cond386.preheader, !dbg !3086

for.cond386.preheader:                            ; preds = %land.end373
  br label %for.cond386, !dbg !3092

for.body374:                                      ; preds = %land.end373
  %123 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !3094
  %idxprom375 = zext i32 %px.1 to i64, !dbg !3094
  %arrayidx376 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %123, i64 %idxprom375, !dbg !3094
  %124 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx376, align 8, !dbg !3094
  %no_stack_reg_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %124, i64 0, i32 31, !dbg !3094
  %bf.load377 = load i16, i16* %no_stack_reg_p, align 4, !dbg !3096
  %bf.set = or i16 %bf.load377, 16, !dbg !3096
  store i16 %bf.set, i16* %no_stack_reg_p, align 4, !dbg !3096
  %125 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx376, align 8, !dbg !3097
  %total_no_stack_reg_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %125, i64 0, i32 31, !dbg !3097
  %bf.load381 = load i16, i16* %total_no_stack_reg_p, align 4, !dbg !3098
  %bf.set383 = or i16 %bf.load381, 32, !dbg !3098
  store i16 %bf.set383, i16* %total_no_stack_reg_p, align 4, !dbg !3098
  %126 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3089
  call fastcc void @sparseset_iter_next(%struct.sparseset_def* %126) #7, !dbg !3089
  br label %for.cond364, !dbg !3089, !llvm.loop !3099

for.cond386:                                      ; preds = %for.cond386.preheader, %for.body389
  %px.2 = phi i32 [ %inc391, %for.body389 ], [ 8, %for.cond386.preheader ], !dbg !3101
  call void @llvm.dbg.value(metadata i32 %px.2, metadata !2693, metadata !DIExpression()), !dbg !2806
  %exitcond13 = icmp eq i32 %px.2, 16, !dbg !3102
  br i1 %exitcond13, label %for.end392, label %for.body389, !dbg !3092

for.body389:                                      ; preds = %for.cond386
  call fastcc void @make_regno_born(i32 %px.2) #7, !dbg !3104
  %inc391 = add nuw nsw i32 %px.2, 1, !dbg !3105
  call void @llvm.dbg.value(metadata i32 %inc391, metadata !2693, metadata !DIExpression()), !dbg !2806
  br label %for.cond386, !dbg !3106, !llvm.loop !3107

for.end392:                                       ; preds = %for.cond386
  %127 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3109
  %has_nonlocal_label394 = getelementptr inbounds %struct.function, %struct.function* %127, i64 0, i32 20, !dbg !3111
  %bf.load395 = load i32, i32* %has_nonlocal_label394, align 8, !dbg !3111
  %bf.clear397 = and i32 %bf.load395, 1048576, !dbg !3111
  %tobool398 = icmp eq i32 %bf.clear397, 0, !dbg !3109
  br i1 %tobool398, label %land.lhs.true399, label %if.end417, !dbg !3112

land.lhs.true399:                                 ; preds = %for.end392
  %call400 = call fastcc zeroext i8 @bb_has_abnormal_call_pred(%struct.basic_block_def* nonnull %2) #7, !dbg !3113
  %tobool402 = icmp eq i8 %call400, 0, !dbg !3113
  br i1 %tobool402, label %if.end417, label %for.cond404.preheader, !dbg !3114

for.cond404.preheader:                            ; preds = %land.lhs.true399
  br label %for.cond404, !dbg !3115

for.cond404:                                      ; preds = %for.cond404.preheader, %for.inc413
  %indvars.iv11 = phi i64 [ 0, %for.cond404.preheader ], [ %indvars.iv.next12, %for.inc413 ], !dbg !3117
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2693, metadata !DIExpression()), !dbg !2806
  %exitcond = icmp eq i64 %indvars.iv11, 53, !dbg !3118
  br i1 %exitcond, label %if.end417.loopexit, label %for.body407, !dbg !3115

for.body407:                                      ; preds = %for.cond404
  %arrayidx409 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv11, !dbg !3120
  %128 = load i8, i8* %arrayidx409, align 1, !dbg !3120
  %tobool410 = icmp eq i8 %128, 0, !dbg !3120
  br i1 %tobool410, label %for.inc413, label %if.then411, !dbg !3122

if.then411:                                       ; preds = %for.body407
  %129 = trunc i64 %indvars.iv11 to i32, !dbg !3123
  call fastcc void @make_regno_born(i32 %129) #7, !dbg !3123
  br label %for.inc413, !dbg !3123

for.inc413:                                       ; preds = %for.body407, %if.then411
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i32 undef, metadata !2693, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2806
  br label %for.cond404, !dbg !3125, !llvm.loop !3126

if.end417.loopexit:                               ; preds = %for.cond404
  br label %if.end417, !dbg !3128

if.end417:                                        ; preds = %if.end417.loopexit, %land.lhs.true399, %for.end392, %if.end360
  %130 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3128
  call fastcc void @sparseset_iter_init(%struct.sparseset_def* %130) #7, !dbg !3128
  br label %for.cond418, !dbg !3128

for.cond418:                                      ; preds = %for.body428, %if.end417
  %i.7 = phi i32 [ %i.2.lcssa, %if.end417 ], [ %i.8, %for.body428 ], !dbg !2984
  call void @llvm.dbg.value(metadata i32 %i.7, metadata !2679, metadata !DIExpression()), !dbg !2806
  %131 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3130
  %call419 = call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %131) #7, !dbg !3130
  %tobool421 = icmp eq i8 %call419, 0, !dbg !3130
  br i1 %tobool421, label %land.end427, label %land.rhs422, !dbg !3130

land.rhs422:                                      ; preds = %for.cond418
  %132 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3130
  %call423 = call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %132) #7, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %call423, metadata !2679, metadata !DIExpression()), !dbg !2806
  br label %land.end427

land.end427:                                      ; preds = %for.cond418, %land.rhs422
  %i.8 = phi i32 [ %call423, %land.rhs422 ], [ %i.7, %for.cond418 ], !dbg !2984
  %133 = phi i1 [ true, %land.rhs422 ], [ false, %for.cond418 ], !dbg !3132
  call void @llvm.dbg.value(metadata i32 %i.8, metadata !2679, metadata !DIExpression()), !dbg !2806
  br i1 %133, label %for.body428, label %for.end433, !dbg !3128

for.body428:                                      ; preds = %land.end427
  %134 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !3133
  %idxprom429 = sext i32 %i.8 to i64, !dbg !3133
  %arrayidx430 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %134, i64 %idxprom429, !dbg !3133
  %135 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx430, align 8, !dbg !3133
  %regno431 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %135, i64 0, i32 1, !dbg !3133
  %136 = load i32, i32* %regno431, align 4, !dbg !3133
  call fastcc void @make_regno_dead(i32 %136) #7, !dbg !3135
  %137 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3130
  call fastcc void @sparseset_iter_next(%struct.sparseset_def* %137) #7, !dbg !3130
  br label %for.cond418, !dbg !3130, !llvm.loop !3136

for.end433:                                       ; preds = %land.end427
  %138 = load i32, i32* @curr_point, align 4, !dbg !3138
  %inc434 = add nsw i32 %138, 1, !dbg !3138
  store i32 %inc434, i32* @curr_point, align 4, !dbg !3138
  br label %if.end435, !dbg !3139

if.end435:                                        ; preds = %entry, %for.end433
  %139 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !3140
  %cmp436 = icmp eq %struct.ira_loop_tree_node* %139, %loop_tree_node, !dbg !3141
  br i1 %cmp436, label %if.end467, label %for.cond439.preheader, !dbg !3142

for.cond439.preheader:                            ; preds = %if.end435
  %parent449 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_tree_node, i64 0, i32 6, !dbg !3143
  br label %for.cond439, !dbg !3145

for.cond439:                                      ; preds = %for.cond439.preheader, %for.inc464
  %indvars.iv = phi i64 [ 0, %for.cond439.preheader ], [ %indvars.iv.next, %for.inc464 ], !dbg !3146
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2679, metadata !DIExpression()), !dbg !2806
  %140 = load i32, i32* @ira_reg_class_cover_size, align 4, !dbg !3147
  %141 = sext i32 %140 to i64, !dbg !3148
  %cmp440 = icmp slt i64 %indvars.iv, %141, !dbg !3148
  br i1 %cmp440, label %for.body442, label %if.end467.loopexit, !dbg !3145

for.body442:                                      ; preds = %for.cond439
  %arrayidx445 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_reg_class_cover, i64 0, i64 %indvars.iv, !dbg !3149
  %142 = load i32, i32* %arrayidx445, align 4, !dbg !3149
  call void @llvm.dbg.value(metadata i32 %142, metadata !2801, metadata !DIExpression()), !dbg !3150
  %idxprom447 = zext i32 %142 to i64, !dbg !3151
  %arrayidx448 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_tree_node, i64 0, i32 11, i64 %idxprom447, !dbg !3151
  %143 = load i32, i32* %arrayidx448, align 4, !dbg !3151
  %144 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent449, align 8, !dbg !3152
  %arrayidx452 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %144, i64 0, i32 11, i64 %idxprom447, !dbg !3153
  %145 = load i32, i32* %arrayidx452, align 4, !dbg !3153
  %cmp453 = icmp sgt i32 %143, %145, !dbg !3154
  br i1 %cmp453, label %if.then455, label %for.inc464, !dbg !3155

if.then455:                                       ; preds = %for.body442
  store i32 %143, i32* %arrayidx452, align 4, !dbg !3156
  br label %for.inc464, !dbg !3157

for.inc464:                                       ; preds = %for.body442, %if.then455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3158
  call void @llvm.dbg.value(metadata i32 undef, metadata !2679, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2806
  br label %for.cond439, !dbg !3159, !llvm.loop !3160

if.end467.loopexit:                               ; preds = %for.cond439
  br label %if.end467, !dbg !3162

if.end467:                                        ; preds = %if.end467.loopexit, %if.end435
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3162
  ret void, !dbg !3162
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ira_compress_allocno_live_ranges() local_unnamed_addr #4 !dbg !3163 {
entry:
  tail call fastcc void @remove_some_program_points_and_update_live_ranges() #7, !dbg !3164
  tail call void @ira_rebuild_start_finish_chains() #7, !dbg !3165
  %0 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !3166
  %cmp = icmp sgt i32 %0, 2, !dbg !3168
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !3169
  %cmp1 = icmp ne %struct._IO_FILE* %1, null, !dbg !3170
  %or.cond = and i1 %cmp, %cmp1, !dbg !3171
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3171

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3172
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !3174
  tail call fastcc void @print_live_ranges(%struct._IO_FILE* %2) #7, !dbg !3175
  br label %if.end, !dbg !3176

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3177
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_some_program_points_and_update_live_ranges() unnamed_addr #4 !dbg !3178 {
entry:
  %i = alloca i32, align 4
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %0 = bitcast i32* %i to i8*, !dbg !3188
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3188
  %1 = bitcast %struct.ira_allocno** %a to i8*, !dbg !3189
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3189
  %2 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !3190
  %3 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3191
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #8, !dbg !3191
  %call = tail call %struct.bitmap_head_def* @ira_allocate_bitmap() #6, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3186, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3184, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !3194
  br label %for.cond, !dbg !3194

for.cond.loopexit:                                ; preds = %for.cond2
  br label %for.cond, !dbg !3194

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !3183, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3184, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  %call1 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !3196
  %tobool = icmp eq i8 %call1, 0, !dbg !3194
  br i1 %tobool, label %for.end6, label %for.body, !dbg !3194

for.body:                                         ; preds = %for.cond
  %4 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3198
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %4, metadata !3183, metadata !DIExpression()), !dbg !3193
  %live_ranges = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 20, !dbg !3198
  br label %for.cond2, !dbg !3201

for.cond2:                                        ; preds = %for.body3, %for.body
  %r.0.in = phi %struct.ira_allocno_live_range** [ %live_ranges, %for.body ], [ %next, %for.body3 ]
  %r.0 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %r.0.in, align 8, !dbg !3202
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r.0, metadata !3185, metadata !DIExpression()), !dbg !3193
  %cmp = icmp eq %struct.ira_allocno_live_range* %r.0, null, !dbg !3203
  br i1 %cmp, label %for.cond.loopexit, label %for.body3, !dbg !3205, !llvm.loop !3206

for.body3:                                        ; preds = %for.cond2
  %start = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 1, !dbg !3208
  %5 = load i32, i32* %start, align 8, !dbg !3208
  %call4 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %5) #6, !dbg !3210
  %finish = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 2, !dbg !3211
  %6 = load i32, i32* %finish, align 4, !dbg !3211
  %call5 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %6) #6, !dbg !3212
  %next = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 3, !dbg !3213
  br label %for.cond2, !dbg !3214, !llvm.loop !3215

for.end6:                                         ; preds = %for.cond
  %7 = load i32, i32* @ira_max_point, align 4, !dbg !3217
  %conv = sext i32 %7 to i64, !dbg !3217
  %mul = shl nsw i64 %conv, 2, !dbg !3218
  %call7 = call i8* @ira_allocate(i64 %mul) #6, !dbg !3219
  %8 = bitcast i8* %call7 to i32*, !dbg !3220
  call void @llvm.dbg.value(metadata i32* %8, metadata !3182, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32* %i, metadata !3180, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3187, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call, i32 0, i32* nonnull %i) #7, !dbg !3221
  br label %for.cond8, !dbg !3221

for.cond8:                                        ; preds = %for.body11, %for.end6
  %n.0 = phi i32 [ 0, %for.end6 ], [ %inc, %for.body11 ], !dbg !3193
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3181, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32* %i, metadata !3180, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3187, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  %call9 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3223
  %tobool10 = icmp eq i8 %call9, 0, !dbg !3221
  br i1 %tobool10, label %for.end13, label %for.body11, !dbg !3221

for.body11:                                       ; preds = %for.cond8
  %inc = add nuw nsw i32 %n.0, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3181, metadata !DIExpression()), !dbg !3193
  %9 = load i32, i32* %i, align 4, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %9, metadata !3180, metadata !DIExpression()), !dbg !3193
  %idxprom = zext i32 %9 to i64, !dbg !3228
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom, !dbg !3228
  store i32 %n.0, i32* %arrayidx, align 4, !dbg !3229
  call void @llvm.dbg.value(metadata i32* %i, metadata !3180, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3187, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3223
  br label %for.cond8, !dbg !3223, !llvm.loop !3230

for.end13:                                        ; preds = %for.cond8
  %n.0.lcssa = phi i32 [ %n.0, %for.cond8 ], !dbg !3193
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3181, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3181, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3181, metadata !DIExpression()), !dbg !3193
  call void @ira_free_bitmap(%struct.bitmap_head_def* %call) #6, !dbg !3232
  %10 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !3233
  %cmp14 = icmp sgt i32 %10, 1, !dbg !3235
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !3236
  %cmp16 = icmp ne %struct._IO_FILE* %11, null, !dbg !3237
  %or.cond = and i1 %cmp14, %cmp16, !dbg !3238
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3238

if.then:                                          ; preds = %for.end13
  %12 = load i32, i32* @ira_max_point, align 4, !dbg !3239
  %mul18 = mul nsw i32 %n.0.lcssa, 100, !dbg !3240
  %div = sdiv i32 %mul18, %12, !dbg !3241
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %12, i32 %n.0.lcssa, i32 %div) #6, !dbg !3242
  br label %if.end, !dbg !3242

if.end:                                           ; preds = %if.then, %for.end13
  store i32 %n.0.lcssa, i32* @ira_max_point, align 4, !dbg !3243
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3184, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !3244
  br label %for.cond20, !dbg !3244

for.cond20.loopexit:                              ; preds = %for.cond25
  br label %for.cond20, !dbg !3244

for.cond20:                                       ; preds = %for.cond20.loopexit, %if.end
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !3183, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3184, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  %call21 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !3246
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3244
  br i1 %tobool22, label %for.end40, label %for.body23, !dbg !3244

for.body23:                                       ; preds = %for.cond20
  %13 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %13, metadata !3183, metadata !DIExpression()), !dbg !3193
  %live_ranges24 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %13, i64 0, i32 20, !dbg !3248
  br label %for.cond25, !dbg !3251

for.cond25:                                       ; preds = %for.body28, %for.body23
  %r.1.in = phi %struct.ira_allocno_live_range** [ %live_ranges24, %for.body23 ], [ %next38, %for.body28 ]
  %r.1 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %r.1.in, align 8, !dbg !3252
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r.1, metadata !3185, metadata !DIExpression()), !dbg !3193
  %cmp26 = icmp eq %struct.ira_allocno_live_range* %r.1, null, !dbg !3253
  br i1 %cmp26, label %for.cond20.loopexit, label %for.body28, !dbg !3255, !llvm.loop !3256

for.body28:                                       ; preds = %for.cond25
  %start29 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.1, i64 0, i32 1, !dbg !3258
  %14 = load i32, i32* %start29, align 8, !dbg !3258
  %idxprom30 = sext i32 %14 to i64, !dbg !3260
  %arrayidx31 = getelementptr inbounds i32, i32* %8, i64 %idxprom30, !dbg !3260
  %15 = load i32, i32* %arrayidx31, align 4, !dbg !3260
  store i32 %15, i32* %start29, align 8, !dbg !3261
  %finish33 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.1, i64 0, i32 2, !dbg !3262
  %16 = load i32, i32* %finish33, align 4, !dbg !3262
  %idxprom34 = sext i32 %16 to i64, !dbg !3263
  %arrayidx35 = getelementptr inbounds i32, i32* %8, i64 %idxprom34, !dbg !3263
  %17 = load i32, i32* %arrayidx35, align 4, !dbg !3263
  store i32 %17, i32* %finish33, align 4, !dbg !3264
  %next38 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.1, i64 0, i32 3, !dbg !3265
  br label %for.cond25, !dbg !3266, !llvm.loop !3267

for.end40:                                        ; preds = %for.cond20
  call void @ira_free(i8* %call7) #6, !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #8, !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3270
  ret void, !dbg !3270
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_finish_allocno_live_ranges() local_unnamed_addr #4 !dbg !3271 {
entry:
  %0 = load i8*, i8** bitcast (%struct.ira_allocno_live_range*** @ira_finish_point_ranges to i8**), align 8, !dbg !3272
  tail call void @ira_free(i8* %0) #6, !dbg !3273
  %1 = load i8*, i8** bitcast (%struct.ira_allocno_live_range*** @ira_start_point_ranges to i8**), align 8, !dbg !3274
  tail call void @ira_free(i8* %1) #6, !dbg !3275
  ret void, !dbg !3276
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* %i) unnamed_addr #0 !dbg !3277 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !3282, metadata !DIExpression()), !dbg !3283
  %n = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !3284
  store i32 0, i32* %n, align 4, !dbg !3285
  ret void, !dbg !3286
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* %i, %struct.ira_allocno** %a) unnamed_addr #0 !dbg !3287 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !3291, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !3292, metadata !DIExpression()), !dbg !3294
  %n1 = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !3295
  %0 = load i32, i32* %n1, align 4, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %0, metadata !3293, metadata !DIExpression()), !dbg !3294
  %1 = load i32, i32* @ira_allocnos_num, align 4, !dbg !3297
  %2 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !3299
  %3 = sext i32 %0 to i64, !dbg !3301
  %4 = sext i32 %1 to i64, !dbg !3301
  br label %for.cond, !dbg !3301

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %3, %entry ], !dbg !3302
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3293, metadata !DIExpression()), !dbg !3294
  %cmp = icmp slt i64 %indvars.iv, %4, !dbg !3303
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !3304

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %2, i64 %indvars.iv, !dbg !3305
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !3305
  %cmp2 = icmp eq %struct.ira_allocno* %5, null, !dbg !3306
  br i1 %cmp2, label %for.inc, label %if.then, !dbg !3307

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.ira_allocno* [ %5, %for.body ], !dbg !3305
  %indvars.iv.lcssa3 = phi i64 [ %indvars.iv, %for.body ], !dbg !3302
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa3, metadata !3293, metadata !DIExpression()), !dbg !3294
  %6 = ptrtoint %struct.ira_allocno* %.lcssa to i64, !dbg !3307
  %7 = trunc i64 %indvars.iv.lcssa3 to i32, !dbg !3294
  call void @llvm.dbg.value(metadata i32 %7, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i32 %7, metadata !3293, metadata !DIExpression()), !dbg !3294
  %8 = bitcast %struct.ira_allocno** %a to i64*, !dbg !3308
  store i64 %6, i64* %8, align 8, !dbg !3308
  %add = add nsw i32 %7, 1, !dbg !3310
  store i32 %add, i32* %n1, align 4, !dbg !3311
  br label %cleanup, !dbg !3312

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3313
  call void @llvm.dbg.value(metadata i32 undef, metadata !3293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3294
  br label %for.cond, !dbg !3314, !llvm.loop !3315

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3317

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %cleanup.loopexit ], !dbg !3294
  ret i8 %retval.0, !dbg !3317
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3318 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3322, metadata !DIExpression()), !dbg !3323
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3324
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 1, !dbg !3324
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3324
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3326
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3326
  %cmp = icmp ugt i32 %2, %index, !dbg !3327
  br i1 %cmp, label %if.then, label %return, !dbg !3328

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3329
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3329
  %idxprom = zext i32 %index to i64, !dbg !3330
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3330
  %4 = bitcast i8** %arrayidx3 to %struct.df_lr_bb_info**, !dbg !3330
  %5 = load %struct.df_lr_bb_info*, %struct.df_lr_bb_info** %4, align 8, !dbg !3330
  br label %return, !dbg !3331

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_lr_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3332
  ret %struct.df_lr_bb_info* %retval.0, !dbg !3333
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_clear(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3334 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3338, metadata !DIExpression()), !dbg !3339
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !3340
  store i32 0, i32* %members, align 8, !dbg !3341
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !3342
  store i8 0, i8* %iterating, align 1, !dbg !3343
  ret void, !dbg !3344
}

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3345 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3353, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 %start_bit, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3356, metadata !DIExpression()), !dbg !3357
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3358
  %1 = load i64, i64* %0, align 8, !dbg !3358
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3359
  store i64 %1, i64* %2, align 8, !dbg !3359
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3360
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3361
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3362
  %div = lshr i32 %start_bit, 7, !dbg !3365
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3367
  br label %while.body, !dbg !3367

while.body:                                       ; preds = %entry, %if.end5
  %4 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %5 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %6 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %.in = phi i64 [ %1, %entry ], [ %11, %if.end5 ]
  %7 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %8 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ], !dbg !3368
  %9 = inttoptr i64 %.in to i64*, !dbg !3367
  %tobool = icmp eq %struct.bitmap_element_def* %8, null, !dbg !3369
  br i1 %tobool, label %if.then, label %if.end, !dbg !3370

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3371
  br label %while.end, !dbg !3373

if.end:                                           ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i64 0, i32 2, !dbg !3374
  %10 = load i32, i32* %indx, align 8, !dbg !3374
  %cmp = icmp ult i32 %10, %div, !dbg !3375
  br i1 %cmp, label %if.end5, label %while.end.loopexit, !dbg !3376

if.end5:                                          ; preds = %if.end
  %11 = load i64, i64* %9, align 8, !dbg !3377
  store i64 %11, i64* %2, align 8, !dbg !3378
  %12 = inttoptr i64 %11 to %struct.bitmap_element_def*, !dbg !3367
  br label %while.body, !dbg !3367, !llvm.loop !3379

while.end.loopexit:                               ; preds = %if.end
  %.lcssa11 = phi %struct.bitmap_element_def* [ %4, %if.end ]
  %.lcssa9 = phi %struct.bitmap_element_def* [ %5, %if.end ]
  %.lcssa7 = phi %struct.bitmap_element_def* [ %6, %if.end ]
  br label %while.end, !dbg !3381

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %13 = phi %struct.bitmap_element_def* [ %.lcssa11, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %14 = phi %struct.bitmap_element_def* [ %.lcssa9, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %15 = phi %struct.bitmap_element_def* [ %.lcssa7, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3381
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3383
  %16 = load i32, i32* %indx9, align 8, !dbg !3383
  %cmp11 = icmp eq i32 %16, %div, !dbg !3384
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3385

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i64 0, i32 2, !dbg !3386
  %17 = load i32, i32* %indx14, align 8, !dbg !3386
  %mul = shl i32 %17, 7, !dbg !3387
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3355, metadata !DIExpression()), !dbg !3357
  br label %if.end15, !dbg !3388

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ %start_bit, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3355, metadata !DIExpression()), !dbg !3357
  %div16 = lshr i32 %start_bit.addr.0, 6, !dbg !3389
  %rem = and i32 %div16, 1, !dbg !3390
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3391
  store i32 %rem, i32* %word_no, align 8, !dbg !3392
  %idxprom = zext i32 %rem to i64, !dbg !3393
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i64 0, i32 3, i64 %idxprom, !dbg !3393
  %18 = load i64, i64* %arrayidx, align 8, !dbg !3393
  %rem20 = and i32 %start_bit.addr.0, 63, !dbg !3394
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3395
  %sh_prom = zext i32 %rem20 to i64, !dbg !3396
  %shr = lshr i64 %18, %sh_prom, !dbg !3396
  store i64 %shr, i64* %bits21, align 8, !dbg !3396
  %tobool23 = icmp eq i64 %shr, 0, !dbg !3397
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3397
  %add = add i32 %start_bit.addr.0, %lnot.ext, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %add, metadata !3355, metadata !DIExpression()), !dbg !3357
  store i32 %add, i32* %bit_no, align 4, !dbg !3399
  ret void, !dbg !3400
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3401 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3405, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3406, metadata !DIExpression()), !dbg !3410
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3411
  %0 = load i64, i64* %bits, align 8, !dbg !3411
  %tobool = icmp eq i64 %0, 0, !dbg !3412
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3413

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3414
  br label %next_bit, !dbg !3417

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3407), !dbg !3418
  br label %while.cond, !dbg !3417

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3419
  %and = and i64 %2, 1, !dbg !3420
  %tobool2 = icmp eq i64 %and, 0, !dbg !3421
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3417

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3422
  store i64 %shr, i64* %bits, align 8, !dbg !3422
  %3 = load i32, i32* %bit_no, align 4, !dbg !3424
  %add = add i32 %3, 1, !dbg !3424
  store i32 %add, i32* %bit_no, align 4, !dbg !3424
  %.pre = load i64, i64* %bits, align 8, !dbg !3419
  br label %while.cond, !dbg !3417, !llvm.loop !3425

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3427
  %sub = add i32 %4, 63, !dbg !3428
  %div = and i32 %sub, -64, !dbg !3429
  store i32 %div, i32* %bit_no, align 4, !dbg !3430
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3431
  %5 = load i32, i32* %word_no, align 8, !dbg !3432
  %inc = add i32 %5, 1, !dbg !3432
  store i32 %inc, i32* %word_no, align 8, !dbg !3432
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3433
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3433
  br label %while.body6, !dbg !3434

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3435

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3436
  %cmp = icmp eq i32 %8, 2, !dbg !3437
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3433
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3435

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3414
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3414
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3414
  store i64 %10, i64* %bits, align 8, !dbg !3438
  %tobool14 = icmp eq i64 %10, 0, !dbg !3439
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3441

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3442
  %add17 = add i32 %11, 64, !dbg !3442
  store i32 %add17, i32* %bit_no, align 4, !dbg !3442
  %12 = load i32, i32* %word_no, align 8, !dbg !3443
  %inc19 = add i32 %12, 1, !dbg !3443
  store i32 %inc19, i32* %word_no, align 8, !dbg !3443
  br label %while.cond7, !dbg !3435, !llvm.loop !3444

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3433
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3446
  %14 = load i64, i64* %13, align 8, !dbg !3446
  store i64 %14, i64* %6, align 8, !dbg !3447
  %tobool24 = icmp eq i64 %14, 0, !dbg !3448
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3450

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3450
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3451
  %16 = load i32, i32* %indx, align 8, !dbg !3451
  %mul28 = shl i32 %16, 7, !dbg !3452
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3453
  store i32 0, i32* %word_no, align 8, !dbg !3454
  br label %while.body6, !dbg !3434, !llvm.loop !3455

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3457

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3457

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3410
  ret i8 %retval.0, !dbg !3457
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_allocno_live(%struct.ira_allocno* %a) unnamed_addr #4 !dbg !3458 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a, metadata !3460, metadata !DIExpression()), !dbg !3464
  %0 = load i32*, i32** @allocno_saved_at_call, align 8, !dbg !3465
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 0, !dbg !3466
  %1 = load i32, i32* %num, align 8, !dbg !3466
  %idxprom = sext i32 %1 to i64, !dbg !3465
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !3465
  store i32 0, i32* %arrayidx, align 4, !dbg !3467
  %2 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3468
  %3 = load i32, i32* %num, align 8, !dbg !3470
  %call = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %2, i32 %3) #7, !dbg !3471
  %tobool = icmp eq i8 %call, 0, !dbg !3471
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !3472

if.end:                                           ; preds = %entry
  %4 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3473
  %5 = load i32, i32* %num, align 8, !dbg !3474
  tail call fastcc void @sparseset_set_bit(%struct.sparseset_def* %4, i32 %5) #7, !dbg !3475
  %6 = load i64, i64* @hard_regs_live, align 8, !dbg !3476
  %conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 26, !dbg !3476
  %7 = load i64, i64* %conflict_hard_regs, align 8, !dbg !3476
  %or = or i64 %7, %6, !dbg !3476
  store i64 %or, i64* %conflict_hard_regs, align 8, !dbg !3476
  %total_conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 27, !dbg !3477
  %8 = load i64, i64* %total_conflict_hard_regs, align 8, !dbg !3477
  %or3 = or i64 %8, %6, !dbg !3477
  store i64 %or3, i64* %total_conflict_hard_regs, align 8, !dbg !3477
  %cover_class4 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 9, !dbg !3478
  %9 = load i32, i32* %cover_class4, align 8, !dbg !3478
  call void @llvm.dbg.value(metadata i32 %9, metadata !3462, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3464
  %idxprom5 = zext i32 %9 to i64, !dbg !3479
  %mode = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 2, !dbg !3482
  br label %for.cond, !dbg !3484

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !3485
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3461, metadata !DIExpression()), !dbg !3464
  %arrayidx8 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom5, i64 %indvars.iv, !dbg !3486
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %10, metadata !3463, metadata !DIExpression()), !dbg !3464
  %cmp = icmp eq i32 %10, 27, !dbg !3487
  br i1 %cmp, label %cleanup.cont.loopexit, label %for.body, !dbg !3488

for.body:                                         ; preds = %for.cond
  %idxprom9 = zext i32 %10 to i64, !dbg !3489
  %11 = load i32, i32* %mode, align 8, !dbg !3490
  %idxprom11 = zext i32 %11 to i64, !dbg !3489
  %arrayidx12 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom9, i64 %idxprom11, !dbg !3489
  %12 = load i32, i32* %arrayidx12, align 4, !dbg !3489
  %arrayidx14 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom9, !dbg !3491
  %13 = load i32, i32* %arrayidx14, align 4, !dbg !3492
  %add = add nsw i32 %13, %12, !dbg !3492
  store i32 %add, i32* %arrayidx14, align 4, !dbg !3492
  %arrayidx16 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom9, !dbg !3493
  %14 = load i32, i32* %arrayidx16, align 4, !dbg !3493
  %cmp17 = icmp slt i32 %14, 0, !dbg !3495
  br i1 %cmp17, label %land.lhs.true, label %if.end26, !dbg !3496

land.lhs.true:                                    ; preds = %for.body
  %arrayidx21 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom9, !dbg !3497
  %15 = load i32, i32* %arrayidx21, align 4, !dbg !3497
  %cmp22 = icmp sgt i32 %add, %15, !dbg !3498
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !3499

if.then23:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* @curr_point, align 4, !dbg !3500
  store i32 %16, i32* %arrayidx16, align 4, !dbg !3501
  br label %if.end26, !dbg !3502

if.end26:                                         ; preds = %if.then23, %land.lhs.true, %for.body
  %17 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @curr_bb_node, align 8, !dbg !3503
  %arrayidx28 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %17, i64 0, i32 11, i64 %idxprom9, !dbg !3503
  %18 = load i32, i32* %arrayidx28, align 4, !dbg !3503
  %cmp31 = icmp slt i32 %18, %add, !dbg !3505
  br i1 %cmp31, label %if.then32, label %for.inc, !dbg !3506

if.then32:                                        ; preds = %if.end26
  store i32 %add, i32* %arrayidx28, align 4, !dbg !3507
  br label %for.inc, !dbg !3508

for.inc:                                          ; preds = %if.end26, %if.then32
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !3509
  call void @llvm.dbg.value(metadata i32 undef, metadata !3461, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3464
  br label %for.cond, !dbg !3510, !llvm.loop !3511

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3513

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !3513
}

; Function Attrs: nounwind uwtable
define internal fastcc void @make_regno_born(i32 %regno) unnamed_addr #4 !dbg !3514 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3518, metadata !DIExpression()), !dbg !3522
  %cmp = icmp slt i32 %regno, 53, !dbg !3523
  br i1 %cmp, label %if.then, label %if.end, !dbg !3525

if.then:                                          ; preds = %entry
  %sh_prom = zext i32 %regno to i64, !dbg !3526
  %shl = shl i64 1, %sh_prom, !dbg !3526
  %0 = load i64, i64* @hard_regs_live, align 8, !dbg !3526
  %or = or i64 %0, %shl, !dbg !3526
  store i64 %or, i64* @hard_regs_live, align 8, !dbg !3526
  %1 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3528
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %1) #7, !dbg !3528
  br label %for.cond, !dbg !3528

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ undef, %if.then ], [ %i.1, %for.body ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3519, metadata !DIExpression()), !dbg !3522
  %2 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3530
  %call = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %2) #7, !dbg !3530
  %tobool = icmp eq i8 %call, 0, !dbg !3530
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3530

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3530
  %call1 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %3) #7, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3519, metadata !DIExpression()), !dbg !3522
  br label %land.end

land.end:                                         ; preds = %for.cond, %land.rhs
  %i.1 = phi i32 [ %call1, %land.rhs ], [ %i.0, %for.cond ]
  %4 = phi i1 [ true, %land.rhs ], [ false, %for.cond ], !dbg !3532
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3519, metadata !DIExpression()), !dbg !3522
  br i1 %4, label %for.body, label %cleanup.cont.loopexit, !dbg !3528

for.body:                                         ; preds = %land.end
  %5 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !3533
  %idxprom = zext i32 %i.1 to i64, !dbg !3533
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %5, i64 %idxprom, !dbg !3533
  %6 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !3533
  %conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %6, i64 0, i32 26, !dbg !3533
  %7 = load i64, i64* %conflict_hard_regs, align 8, !dbg !3533
  %or5 = or i64 %7, %shl, !dbg !3533
  store i64 %or5, i64* %conflict_hard_regs, align 8, !dbg !3533
  %8 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !3535
  %total_conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %8, i64 0, i32 27, !dbg !3535
  %9 = load i64, i64* %total_conflict_hard_regs, align 8, !dbg !3535
  %or10 = or i64 %9, %shl, !dbg !3535
  store i64 %or10, i64* %total_conflict_hard_regs, align 8, !dbg !3535
  %10 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3530
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %10) #7, !dbg !3530
  br label %for.cond, !dbg !3530, !llvm.loop !3536

if.end:                                           ; preds = %entry
  %11 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3538
  %idxprom11 = sext i32 %regno to i64, !dbg !3538
  %arrayidx12 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %11, i64 %idxprom11, !dbg !3538
  %12 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx12, align 8, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %12, metadata !3520, metadata !DIExpression()), !dbg !3522
  %cmp13 = icmp eq %struct.ira_allocno* %12, null, !dbg !3539
  br i1 %cmp13, label %cleanup.cont, label %if.end16, !dbg !3541

if.end16:                                         ; preds = %if.end
  %live_ranges = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %12, i64 0, i32 20, !dbg !3542
  %13 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges, align 8, !dbg !3542
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %13, metadata !3521, metadata !DIExpression()), !dbg !3522
  %cmp17 = icmp eq %struct.ira_allocno_live_range* %13, null, !dbg !3544
  br i1 %cmp17, label %if.end16.if.then24_crit_edge, label %lor.lhs.false, !dbg !3545

if.end16.if.then24_crit_edge:                     ; preds = %if.end16
  %.pre = load i32, i32* @curr_point, align 4, !dbg !3546
  br label %if.then24, !dbg !3545

lor.lhs.false:                                    ; preds = %if.end16
  %finish = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %13, i64 0, i32 2, !dbg !3547
  %14 = load i32, i32* %finish, align 4, !dbg !3547
  %15 = load i32, i32* @curr_point, align 4, !dbg !3548
  %cmp19 = icmp eq i32 %14, %15, !dbg !3549
  br i1 %cmp19, label %cleanup.cont, label %land.lhs.true, !dbg !3550

land.lhs.true:                                    ; preds = %lor.lhs.false
  %add = add nsw i32 %14, 1, !dbg !3551
  %cmp22 = icmp eq i32 %add, %15, !dbg !3552
  br i1 %cmp22, label %cleanup.cont, label %if.then24, !dbg !3553

if.then24:                                        ; preds = %if.end16.if.then24_crit_edge, %land.lhs.true
  %16 = phi i32 [ %.pre, %if.end16.if.then24_crit_edge ], [ %15, %land.lhs.true ], !dbg !3546
  %call26 = tail call %struct.ira_allocno_live_range* @ira_create_allocno_live_range(%struct.ira_allocno* nonnull %12, i32 %16, i32 -1, %struct.ira_allocno_live_range* %13) #6, !dbg !3554
  store %struct.ira_allocno_live_range* %call26, %struct.ira_allocno_live_range** %live_ranges, align 8, !dbg !3555
  br label %cleanup.cont, !dbg !3556

cleanup.cont.loopexit:                            ; preds = %land.end
  br label %cleanup.cont, !dbg !3557

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %land.lhs.true, %lor.lhs.false, %if.end, %if.then24
  ret void, !dbg !3557
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3558 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3562, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3563, metadata !DIExpression()), !dbg !3564
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3565
  %0 = load i64, i64* %bits, align 8, !dbg !3566
  %shr = lshr i64 %0, 1, !dbg !3566
  store i64 %shr, i64* %bits, align 8, !dbg !3566
  %1 = load i32, i32* %bit_no, align 4, !dbg !3567
  %add = add i32 %1, 1, !dbg !3567
  store i32 %add, i32* %bit_no, align 4, !dbg !3567
  ret void, !dbg !3568
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_ref_live(%union.df_ref_d* %ref) unnamed_addr #4 !dbg !3569 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %ref, metadata !3573, metadata !DIExpression()), !dbg !3575
  %reg1 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3576
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8, !dbg !3576
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3574, metadata !DIExpression()), !dbg !3575
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3577
  %bf.load = load i32, i32* %1, align 8, !dbg !3577
  %bf.clear = and i32 %bf.load, 65535, !dbg !3577
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3579
  br i1 %cmp, label %if.then, label %if.end, !dbg !3580

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3581
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3581
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3581
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3574, metadata !DIExpression()), !dbg !3575
  br label %if.end, !dbg !3582

if.end:                                           ; preds = %if.then, %entry
  %reg.0 = phi %struct.rtx_def* [ %2, %if.then ], [ %0, %entry ], !dbg !3575
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !3574, metadata !DIExpression()), !dbg !3575
  tail call fastcc void @mark_reg_live(%struct.rtx_def* %reg.0) #7, !dbg !3583
  ret void, !dbg !3584
}

declare dso_local i32 @multiple_sets(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @preprocess_constraints() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @process_single_reg_class_operands(i8 zeroext %in_p, i32 %freq) unnamed_addr #4 !dbg !3585 {
entry:
  call void @llvm.dbg.value(metadata i8 %in_p, metadata !3589, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 %freq, metadata !3590, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 0, metadata !3591, metadata !DIExpression()), !dbg !3610
  %tobool = icmp eq i8 %in_p, 0, !dbg !3611
  br label %for.cond, !dbg !3613

for.cond:                                         ; preds = %for.inc150, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc150 ], [ 0, %entry ]
  %px.0 = phi i32 [ %px.3, %for.inc150 ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3591, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 %px.0, metadata !3594, metadata !DIExpression()), !dbg !3610
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3614
  %1 = sext i8 %0 to i64, !dbg !3615
  %cmp = icmp slt i64 %indvars.iv3, %1, !dbg !3615
  br i1 %cmp, label %for.body, label %for.end152, !dbg !3616

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv3, !dbg !3617
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3617
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3596, metadata !DIExpression()), !dbg !3610
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3618

land.lhs.true:                                    ; preds = %for.body
  %arrayidx4 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv3, !dbg !3619
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !3619
  %cmp5 = icmp eq i32 %3, 0, !dbg !3620
  br i1 %cmp5, label %if.end, label %land.lhs.true7, !dbg !3621

land.lhs.true7:                                   ; preds = %land.lhs.true
  %cmp10 = icmp eq i32 %3, 2, !dbg !3622
  br i1 %cmp10, label %if.end, label %for.inc150, !dbg !3623

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true, %for.body
  br i1 %tobool, label %land.lhs.true13, label %if.end24, !dbg !3624

land.lhs.true13:                                  ; preds = %if.end
  %arrayidx15 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv3, !dbg !3626
  %4 = load i32, i32* %arrayidx15, align 4, !dbg !3626
  %cmp16 = icmp eq i32 %4, 1, !dbg !3627
  br i1 %cmp16, label %if.end24, label %land.lhs.true18, !dbg !3628

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %cmp21 = icmp eq i32 %4, 2, !dbg !3629
  br i1 %cmp21, label %if.end24, label %for.inc150, !dbg !3630

if.end24:                                         ; preds = %land.lhs.true18, %land.lhs.true13, %if.end
  %5 = trunc i64 %indvars.iv3 to i32, !dbg !3631
  %call = tail call fastcc i32 @single_reg_operand_class(i32 %5) #7, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %call, metadata !3595, metadata !DIExpression()), !dbg !3610
  %cmp25 = icmp eq i32 %call, 0, !dbg !3632
  br i1 %cmp25, label %for.inc150, label %if.end28, !dbg !3634

if.end28:                                         ; preds = %if.end24
  call void @llvm.dbg.value(metadata %struct.ira_allocno* null, metadata !3597, metadata !DIExpression()), !dbg !3610
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !3635
  %bf.load = load i32, i32* %6, align 8, !dbg !3635
  %bf.clear = and i32 %bf.load, 65535, !dbg !3635
  %cmp29 = icmp eq i32 %bf.clear, 39, !dbg !3637
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !3638

if.then31:                                        ; preds = %if.end28
  %arrayidx32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3639
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**, !dbg !3639
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3639
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3596, metadata !DIExpression()), !dbg !3610
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !3640
  %bf.load34.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3641
  br label %if.end33, !dbg !3642

if.end33:                                         ; preds = %if.then31, %if.end28
  %bf.load34 = phi i32 [ %bf.load34.pre, %if.then31 ], [ %bf.load, %if.end28 ], !dbg !3641
  %operand.0 = phi %struct.rtx_def* [ %7, %if.then31 ], [ %2, %if.end28 ], !dbg !3643
  call void @llvm.dbg.value(metadata %struct.rtx_def* %operand.0, metadata !3596, metadata !DIExpression()), !dbg !3610
  %bf.clear35 = and i32 %bf.load34, 65535, !dbg !3641
  %cmp36 = icmp eq i32 %bf.clear35, 37, !dbg !3641
  br i1 %cmp36, label %land.lhs.true38, label %if.end127, !dbg !3644

land.lhs.true38:                                  ; preds = %if.end33
  %call39 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %operand.0) #7, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %call39, metadata !3592, metadata !DIExpression()), !dbg !3610
  %cmp40 = icmp sgt i32 %call39, 52, !dbg !3646
  br i1 %cmp40, label %if.then42, label %if.end127, !dbg !3647

if.then42:                                        ; preds = %land.lhs.true38
  %8 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3648
  %idxprom43 = sext i32 %call39 to i64, !dbg !3648
  %arrayidx44 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %8, i64 %idxprom43, !dbg !3648
  %9 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx44, align 8, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %9, metadata !3597, metadata !DIExpression()), !dbg !3610
  %mode45 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %9, i64 0, i32 2, !dbg !3649
  %10 = load i32, i32* %mode45, align 8, !dbg !3649
  call void @llvm.dbg.value(metadata i32 %10, metadata !3599, metadata !DIExpression()), !dbg !3650
  %cover_class46 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %9, i64 0, i32 9, !dbg !3651
  %11 = load i32, i32* %cover_class46, align 8, !dbg !3651
  call void @llvm.dbg.value(metadata i32 %11, metadata !3605, metadata !DIExpression()), !dbg !3650
  %idxprom47 = zext i32 %call to i64, !dbg !3652
  %idxprom49 = zext i32 %11 to i64, !dbg !3652
  %arrayidx50 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_class_subset_p, i64 0, i64 %idxprom47, i64 %idxprom49, !dbg !3652
  %12 = load i32, i32* %arrayidx50, align 4, !dbg !3652
  %tobool51 = icmp eq i32 %12, 0, !dbg !3652
  br i1 %tobool51, label %if.end127, label %land.lhs.true52, !dbg !3653

land.lhs.true52:                                  ; preds = %if.then42
  %arrayidx54 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_hard_regs_num, i64 0, i64 %idxprom47, !dbg !3654
  %13 = load i32, i32* %arrayidx54, align 4, !dbg !3654
  %cmp55 = icmp eq i32 %13, 0, !dbg !3655
  br i1 %cmp55, label %if.end127, label %land.lhs.true57, !dbg !3656

land.lhs.true57:                                  ; preds = %land.lhs.true52
  %arrayidx62 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_regs, i64 0, i64 %idxprom47, i64 0, !dbg !3657
  %14 = load i16, i16* %arrayidx62, align 2, !dbg !3657
  %idxprom63 = sext i16 %14 to i64, !dbg !3658
  %arrayidx64 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_reg_index, i64 0, i64 %idxprom49, i64 %idxprom63, !dbg !3658
  %15 = load i16, i16* %arrayidx64, align 2, !dbg !3658
  %cmp66 = icmp sgt i16 %15, -1, !dbg !3659
  br i1 %cmp66, label %land.lhs.true68, label %if.end127, !dbg !3660

land.lhs.true68:                                  ; preds = %land.lhs.true57
  %arrayidx70 = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %idxprom47, !dbg !3661
  %16 = load i32, i32* %arrayidx70, align 4, !dbg !3661
  %call71 = tail call i32 @reg_classes_intersect_p(i32 %call, i32 13) #6, !dbg !3662
  %tobool72 = icmp eq i32 %call71, 0, !dbg !3662
  br i1 %tobool72, label %cond.true, label %cond.false, !dbg !3662

cond.true:                                        ; preds = %land.lhs.true68
  %idxprom73 = zext i32 %10 to i64, !dbg !3662
  %arrayidx74 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom73, !dbg !3662
  %17 = load i8, i8* %arrayidx74, align 1, !dbg !3662
  %cmp76 = icmp eq i8 %17, 10, !dbg !3662
  br i1 %cmp76, label %lor.end, label %lor.rhs, !dbg !3662

lor.rhs:                                          ; preds = %cond.true
  %cmp81 = icmp eq i8 %17, 11, !dbg !3662
  br label %lor.end, !dbg !3662

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %18 = phi i1 [ true, %cond.true ], [ %cmp81, %lor.rhs ]
  %cond = select i1 %18, i32 2, i32 1, !dbg !3662
  br label %cond.end92, !dbg !3662

cond.false:                                       ; preds = %land.lhs.true68
  %cmp83 = icmp eq i32 %10, 40, !dbg !3662
  br i1 %cmp83, label %cond.end, label %cond.false86, !dbg !3662

cond.false86:                                     ; preds = %cond.false
  %idxprom87 = zext i32 %10 to i64, !dbg !3662
  %arrayidx88 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom87, !dbg !3662
  %19 = load i8, i8* %arrayidx88, align 1, !dbg !3662
  %conv90 = zext i8 %19 to i32, !dbg !3662
  br label %cond.end, !dbg !3662

cond.end:                                         ; preds = %cond.false, %cond.false86
  %cond91 = phi i32 [ %conv90, %cond.false86 ], [ 12, %cond.false ], !dbg !3662
  %sub = add nuw nsw i32 %cond91, 3, !dbg !3662
  %div = lshr i32 %sub, 2, !dbg !3662
  br label %cond.end92, !dbg !3662

cond.end92:                                       ; preds = %cond.end, %lor.end
  %cond93 = phi i32 [ %cond, %lor.end ], [ %div, %cond.end ], !dbg !3662
  %cmp94 = icmp ugt i32 %16, %cond93, !dbg !3663
  br i1 %cmp94, label %if.end127, label %if.then96, !dbg !3664

if.then96:                                        ; preds = %cond.end92
  br i1 %tobool, label %cond.false102, label %cond.true100, !dbg !3665

cond.true100:                                     ; preds = %if.then96
  %call101 = tail call fastcc i32 @ira_get_register_move_cost(i32 %10, i32 %11, i32 %call) #7, !dbg !3666
  br label %cond.end104, !dbg !3665

cond.false102:                                    ; preds = %if.then96
  %call103 = tail call fastcc i32 @ira_get_register_move_cost(i32 %10, i32 %call, i32 %11) #7, !dbg !3667
  br label %cond.end104, !dbg !3665

cond.end104:                                      ; preds = %cond.false102, %cond.true100
  %cond105 = phi i32 [ %call101, %cond.true100 ], [ %call103, %cond.false102 ], !dbg !3665
  %mul = mul nsw i32 %cond105, %freq, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3593, metadata !DIExpression()), !dbg !3610
  %conflict_hard_reg_costs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %9, i64 0, i32 35, !dbg !3669
  tail call fastcc void @ira_allocate_and_set_costs(i32** nonnull %conflict_hard_reg_costs, i32 %11, i32 0) #7, !dbg !3670
  %idxprom108 = zext i32 %10 to i64, !dbg !3671
  %arrayidx109 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom49, i64 %idxprom108, !dbg !3671
  %20 = load i32, i32* %arrayidx109, align 4, !dbg !3671
  call void @llvm.dbg.value(metadata i32 %20, metadata !3609, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 0, metadata !3606, metadata !DIExpression()), !dbg !3672
  %21 = sext i32 %20 to i64, !dbg !3673
  br label %for.cond110, !dbg !3673

for.cond110:                                      ; preds = %for.body113, %cond.end104
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body113 ], [ 0, %cond.end104 ], !dbg !3675
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3606, metadata !DIExpression()), !dbg !3672
  %cmp111 = icmp slt i64 %indvars.iv, %21, !dbg !3676
  br i1 %cmp111, label %for.body113, label %if.end127.loopexit, !dbg !3678

for.body113:                                      ; preds = %for.cond110
  %22 = load i32*, i32** %conflict_hard_reg_costs, align 8, !dbg !3679
  %arrayidx120 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_regs, i64 0, i64 %idxprom47, i64 %indvars.iv, !dbg !3680
  %23 = load i16, i16* %arrayidx120, align 2, !dbg !3680
  %idxprom121 = sext i16 %23 to i64, !dbg !3681
  %arrayidx122 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_reg_index, i64 0, i64 %idxprom49, i64 %idxprom121, !dbg !3681
  %24 = load i16, i16* %arrayidx122, align 2, !dbg !3681
  %idxprom123 = sext i16 %24 to i64, !dbg !3679
  %arrayidx124 = getelementptr inbounds i32, i32* %22, i64 %idxprom123, !dbg !3679
  %25 = load i32, i32* %arrayidx124, align 4, !dbg !3682
  %sub125 = sub nsw i32 %25, %mul, !dbg !3682
  store i32 %sub125, i32* %arrayidx124, align 4, !dbg !3682
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3683
  call void @llvm.dbg.value(metadata i32 undef, metadata !3606, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3672
  br label %for.cond110, !dbg !3684, !llvm.loop !3685

if.end127.loopexit:                               ; preds = %for.cond110
  br label %if.end127, !dbg !3687

if.end127:                                        ; preds = %if.end127.loopexit, %cond.end92, %land.lhs.true52, %if.then42, %land.lhs.true57, %land.lhs.true38, %if.end33
  %operand_a.0 = phi %struct.ira_allocno* [ null, %land.lhs.true38 ], [ null, %if.end33 ], [ %9, %cond.end92 ], [ %9, %land.lhs.true57 ], [ %9, %land.lhs.true52 ], [ %9, %if.then42 ], [ %9, %if.end127.loopexit ], !dbg !3643
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %operand_a.0, metadata !3597, metadata !DIExpression()), !dbg !3610
  %26 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3687
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %26) #7, !dbg !3687
  %idxprom142 = zext i32 %call to i64, !dbg !3689
  %arrayidx143 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom142, !dbg !3689
  br label %for.cond128, !dbg !3687

for.cond128:                                      ; preds = %for.inc148, %if.end127
  %px.1 = phi i32 [ %px.0, %if.end127 ], [ %px.2, %for.inc148 ]
  call void @llvm.dbg.value(metadata i32 %px.1, metadata !3594, metadata !DIExpression()), !dbg !3610
  %27 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3694
  %call129 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %27) #7, !dbg !3694
  %tobool131 = icmp eq i8 %call129, 0, !dbg !3694
  br i1 %tobool131, label %land.end, label %land.rhs, !dbg !3694

land.rhs:                                         ; preds = %for.cond128
  %28 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3694
  %call132 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %28) #7, !dbg !3694
  call void @llvm.dbg.value(metadata i32 %call132, metadata !3594, metadata !DIExpression()), !dbg !3610
  br label %land.end

land.end:                                         ; preds = %for.cond128, %land.rhs
  %px.2 = phi i32 [ %call132, %land.rhs ], [ %px.1, %for.cond128 ]
  %29 = phi i1 [ true, %land.rhs ], [ false, %for.cond128 ], !dbg !3695
  call void @llvm.dbg.value(metadata i32 %px.2, metadata !3594, metadata !DIExpression()), !dbg !3610
  br i1 %29, label %for.body136, label %for.inc150.loopexit, !dbg !3687

for.body136:                                      ; preds = %land.end
  %30 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !3696
  %idxprom137 = zext i32 %px.2 to i64, !dbg !3696
  %arrayidx138 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %30, i64 %idxprom137, !dbg !3696
  %31 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx138, align 8, !dbg !3696
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %31, metadata !3598, metadata !DIExpression()), !dbg !3610
  %cmp139 = icmp eq %struct.ira_allocno* %31, %operand_a.0, !dbg !3697
  br i1 %cmp139, label %for.inc148, label %if.then141, !dbg !3698

if.then141:                                       ; preds = %for.body136
  %32 = load i64, i64* %arrayidx143, align 8, !dbg !3699
  %conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %31, i64 0, i32 26, !dbg !3699
  %33 = load i64, i64* %conflict_hard_regs, align 8, !dbg !3699
  %or = or i64 %33, %32, !dbg !3699
  store i64 %or, i64* %conflict_hard_regs, align 8, !dbg !3699
  %34 = load i64, i64* %arrayidx143, align 8, !dbg !3700
  %total_conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %31, i64 0, i32 27, !dbg !3700
  %35 = load i64, i64* %total_conflict_hard_regs, align 8, !dbg !3700
  %or146 = or i64 %35, %34, !dbg !3700
  store i64 %or146, i64* %total_conflict_hard_regs, align 8, !dbg !3700
  br label %for.inc148, !dbg !3701

for.inc148:                                       ; preds = %for.body136, %if.then141
  %36 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !3694
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %36) #7, !dbg !3694
  br label %for.cond128, !dbg !3694, !llvm.loop !3702

for.inc150.loopexit:                              ; preds = %land.end
  %px.2.lcssa = phi i32 [ %px.2, %land.end ]
  call void @llvm.dbg.value(metadata i32 %px.2.lcssa, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 %px.2.lcssa, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 %px.2.lcssa, metadata !3594, metadata !DIExpression()), !dbg !3610
  br label %for.inc150, !dbg !3704

for.inc150:                                       ; preds = %for.inc150.loopexit, %land.lhs.true7, %land.lhs.true18, %if.end24
  %px.3 = phi i32 [ %px.0, %land.lhs.true7 ], [ %px.0, %land.lhs.true18 ], [ %px.0, %if.end24 ], [ %px.2.lcssa, %for.inc150.loopexit ]
  call void @llvm.dbg.value(metadata i32 %px.3, metadata !3594, metadata !DIExpression()), !dbg !3610
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3704
  call void @llvm.dbg.value(metadata i32 undef, metadata !3591, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3610
  br label %for.cond, !dbg !3705, !llvm.loop !3706

for.end152:                                       ; preds = %for.cond
  ret void, !dbg !3708
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_ref_dead(%union.df_ref_d* %def) unnamed_addr #4 !dbg !3709 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %def, metadata !3711, metadata !DIExpression()), !dbg !3713
  %0 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %def, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3714
  %bf.load = load i32, i32* %0, align 8, !dbg !3714
  %and = and i32 %bf.load, 1048576, !dbg !3714
  %cmp = icmp eq i32 %and, 0, !dbg !3714
  br i1 %cmp, label %lor.lhs.false, label %cleanup.cont, !dbg !3716

lor.lhs.false:                                    ; preds = %entry
  %and4 = and i32 %bf.load, 65536, !dbg !3717
  %cmp5 = icmp eq i32 %and4, 0, !dbg !3717
  br i1 %cmp5, label %if.end, label %cleanup.cont, !dbg !3718

if.end:                                           ; preds = %lor.lhs.false
  %reg7 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %def, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3719
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg7, align 8, !dbg !3719
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3712, metadata !DIExpression()), !dbg !3713
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3720
  %bf.load8 = load i32, i32* %2, align 8, !dbg !3720
  %bf.clear = and i32 %bf.load8, 65535, !dbg !3720
  %cmp9 = icmp eq i32 %bf.clear, 39, !dbg !3722
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3723

if.then10:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3724
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3724
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3724
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3712, metadata !DIExpression()), !dbg !3713
  br label %if.end11, !dbg !3725

if.end11:                                         ; preds = %if.then10, %if.end
  %reg.0 = phi %struct.rtx_def* [ %3, %if.then10 ], [ %1, %if.end ], !dbg !3713
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !3712, metadata !DIExpression()), !dbg !3713
  tail call fastcc void @mark_reg_dead(%struct.rtx_def* %reg.0) #7, !dbg !3726
  br label %cleanup.cont, !dbg !3727

cleanup.cont:                                     ; preds = %lor.lhs.false, %entry, %if.end11
  ret void, !dbg !3727
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_iter_init(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3728 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3730, metadata !DIExpression()), !dbg !3731
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3732
  store i32 0, i32* %iter, align 8, !dbg !3733
  %iter_inc = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 5, !dbg !3734
  store i8 1, i8* %iter_inc, align 4, !dbg !3735
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !3736
  store i8 1, i8* %iterating, align 1, !dbg !3737
  ret void, !dbg !3738
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3739 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3743, metadata !DIExpression()), !dbg !3744
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !3745
  %0 = load i8, i8* %iterating, align 1, !dbg !3745
  %tobool = icmp eq i8 %0, 0, !dbg !3747
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3748

land.lhs.true:                                    ; preds = %entry
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3749
  %1 = load i32, i32* %iter, align 8, !dbg !3749
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !3750
  %2 = load i32, i32* %members, align 8, !dbg !3750
  %cmp = icmp ult i32 %1, %2, !dbg !3751
  br i1 %cmp, label %return, label %if.else, !dbg !3752

if.else:                                          ; preds = %entry, %land.lhs.true
  store i8 0, i8* %iterating, align 1, !dbg !3753
  br label %return, !dbg !3754

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true ], !dbg !3755
  ret i8 %retval.0, !dbg !3756
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3757 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3761, metadata !DIExpression()), !dbg !3762
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !3763
  %0 = load i32*, i32** %dense, align 8, !dbg !3763
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3764
  %1 = load i32, i32* %iter, align 8, !dbg !3764
  %idxprom = zext i32 %1 to i64, !dbg !3765
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !3765
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3765
  ret i32 %2, !dbg !3766
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_throw_internal(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_iter_next(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3767 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3769, metadata !DIExpression()), !dbg !3770
  %iter_inc = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 5, !dbg !3771
  %0 = load i8, i8* %iter_inc, align 4, !dbg !3771
  %conv = zext i8 %0 to i32, !dbg !3772
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3773
  %1 = load i32, i32* %iter, align 8, !dbg !3774
  %add = add i32 %1, %conv, !dbg !3774
  store i32 %add, i32* %iter, align 8, !dbg !3774
  store i8 1, i8* %iter_inc, align 4, !dbg !3775
  ret void, !dbg !3776
}

; Function Attrs: nounwind uwtable
define internal fastcc void @make_early_clobber_and_input_conflicts() unnamed_addr #4 !dbg !3777 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !3779, metadata !DIExpression()), !dbg !3783
  br label %for.cond, !dbg !3784

for.cond:                                         ; preds = %for.inc65, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc65 ], [ 0, %entry ], !dbg !3786
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3779, metadata !DIExpression()), !dbg !3783
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3787
  %1 = sext i8 %0 to i64, !dbg !3789
  %cmp = icmp slt i64 %indvars.iv1, %1, !dbg !3789
  br i1 %cmp, label %for.cond2.preheader, label %for.end67, !dbg !3790

for.cond2.preheader:                              ; preds = %for.cond
  br label %for.cond2, !dbg !3791

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3793
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3780, metadata !DIExpression()), !dbg !3783
  %2 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3794
  %3 = sext i8 %2 to i64, !dbg !3796
  %cmp4 = icmp slt i64 %indvars.iv, %3, !dbg !3796
  br i1 %cmp4, label %for.body6, label %for.inc65, !dbg !3791

for.body6:                                        ; preds = %for.cond2
  call void @llvm.dbg.value(metadata i32 0, metadata !3782, metadata !DIExpression()), !dbg !3783
  %earlyclobber = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %indvars.iv1, i32 5, !dbg !3797
  %bf.load = load i8, i8* %earlyclobber, align 8, !dbg !3797
  %bf.clear = and i8 %bf.load, 1, !dbg !3797
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !3800
  br i1 %tobool, label %if.end21, label %if.then, !dbg !3801

if.then:                                          ; preds = %for.body6
  %tobool15 = icmp slt i8 %bf.load, 0, !dbg !3802
  br i1 %tobool15, label %if.end, label %if.else, !dbg !3805

if.else:                                          ; preds = %if.then
  %cl = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %indvars.iv1, i32 1, !dbg !3806
  %4 = load i32, i32* %cl, align 8, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %4, metadata !3782, metadata !DIExpression()), !dbg !3783
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %def_cl.0 = phi i32 [ %4, %if.else ], [ 26, %if.then ], !dbg !3807
  call void @llvm.dbg.value(metadata i32 %def_cl.0, metadata !3782, metadata !DIExpression()), !dbg !3783
  %5 = trunc i64 %indvars.iv to i32, !dbg !3808
  %6 = trunc i64 %indvars.iv1 to i32, !dbg !3808
  tail call fastcc void @check_and_make_def_conflict(i32 %6, i32 %5, i32 %def_cl.0) #7, !dbg !3808
  br label %if.end21, !dbg !3809

if.end21:                                         ; preds = %for.body6, %if.end
  %matches = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %indvars.iv1, i32 3, !dbg !3810
  %7 = load i32, i32* %matches, align 16, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %7, metadata !3781, metadata !DIExpression()), !dbg !3783
  %cmp26 = icmp sgt i32 %7, -1, !dbg !3812
  br i1 %cmp26, label %land.lhs.true, label %for.inc, !dbg !3813

land.lhs.true:                                    ; preds = %if.end21
  %idxprom28 = sext i32 %7 to i64, !dbg !3814
  %earlyclobber32 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom28, i64 %indvars.iv1, i32 5, !dbg !3815
  %bf.load33 = load i8, i8* %earlyclobber32, align 8, !dbg !3815
  %bf.clear34 = and i8 %bf.load33, 1, !dbg !3815
  %tobool36 = icmp eq i8 %bf.clear34, 0, !dbg !3814
  br i1 %tobool36, label %lor.lhs.false, label %if.then46, !dbg !3816

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bf.load42 = load i8, i8* %earlyclobber, align 8, !dbg !3817
  %bf.clear43 = and i8 %bf.load42, 1, !dbg !3817
  %tobool45 = icmp eq i8 %bf.clear43, 0, !dbg !3818
  br i1 %tobool45, label %for.inc, label %if.then46, !dbg !3819

if.then46:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %tobool55 = icmp slt i8 %bf.load33, 0, !dbg !3820
  br i1 %tobool55, label %if.end63, label %if.else57, !dbg !3823

if.else57:                                        ; preds = %if.then46
  %cl62 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom28, i64 %indvars.iv1, i32 1, !dbg !3824
  %8 = load i32, i32* %cl62, align 8, !dbg !3824
  call void @llvm.dbg.value(metadata i32 %8, metadata !3782, metadata !DIExpression()), !dbg !3783
  br label %if.end63

if.end63:                                         ; preds = %if.then46, %if.else57
  %def_cl.1 = phi i32 [ %8, %if.else57 ], [ 26, %if.then46 ], !dbg !3825
  call void @llvm.dbg.value(metadata i32 %def_cl.1, metadata !3782, metadata !DIExpression()), !dbg !3783
  %9 = trunc i64 %indvars.iv to i32, !dbg !3826
  %10 = trunc i64 %indvars.iv1 to i32, !dbg !3826
  tail call fastcc void @check_and_make_def_conflict(i32 %10, i32 %9, i32 %def_cl.1) #7, !dbg !3826
  br label %for.inc, !dbg !3827

for.inc:                                          ; preds = %lor.lhs.false, %if.end21, %if.end63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3828
  call void @llvm.dbg.value(metadata i32 undef, metadata !3780, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3783
  br label %for.cond2, !dbg !3829, !llvm.loop !3830

for.inc65:                                        ; preds = %for.cond2
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3832
  call void @llvm.dbg.value(metadata i32 undef, metadata !3779, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3783
  br label %for.cond, !dbg !3833, !llvm.loop !3834

for.end67:                                        ; preds = %for.cond
  ret void, !dbg !3836
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mark_hard_reg_early_clobbers(%struct.rtx_def* %insn, i8 zeroext %live_p) unnamed_addr #4 !dbg !3837 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3841, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 %live_p, metadata !3842, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 0, metadata !3844, metadata !DIExpression()), !dbg !3850
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3851
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !3851
  %1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3851
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3851
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3851
  %2 = load i32, i32* %rt_int, align 8, !dbg !3851
  %idxprom = sext i32 %2 to i64, !dbg !3851
  %arrayidx1 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %1, i64 %idxprom, !dbg !3851
  %3 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx1, align 8, !dbg !3851
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 1, !dbg !3851
  %4 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !3851
  call void @llvm.dbg.value(metadata %union.df_ref_d** %4, metadata !3843, metadata !DIExpression()), !dbg !3850
  %tobool15 = icmp eq i8 %live_p, 0, !dbg !3852
  br i1 %tobool15, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !3854

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !3854

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !3854

for.cond.us:                                      ; preds = %for.inc.us, %entry.split.us
  %set_p.0.us = phi i8 [ 0, %entry.split.us ], [ %set_p.3.us, %for.inc.us ], !dbg !3855
  %def_rec.0.us = phi %union.df_ref_d** [ %4, %entry.split.us ], [ %incdec.ptr.us, %for.inc.us ], !dbg !3856
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0.us, metadata !3843, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 %set_p.0.us, metadata !3844, metadata !DIExpression()), !dbg !3850
  %5 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0.us, align 8, !dbg !3857
  %tobool.us = icmp eq %union.df_ref_d* %5, null, !dbg !3858
  br i1 %tobool.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !3858

for.body.us:                                      ; preds = %for.cond.us
  %6 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %5, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3858
  %bf.load.us = load i32, i32* %6, align 8, !dbg !3859
  %and.us = and i32 %bf.load.us, 8388608, !dbg !3859
  %cmp.us = icmp eq i32 %and.us, 0, !dbg !3859
  br i1 %cmp.us, label %for.inc.us, label %if.then.us, !dbg !3860

if.then.us:                                       ; preds = %for.body.us
  %reg.us = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %5, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3861
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.us, align 8, !dbg !3861
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3845, metadata !DIExpression()), !dbg !3862
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !3863
  %bf.load3.us = load i32, i32* %8, align 8, !dbg !3863
  %bf.clear.us = and i32 %bf.load3.us, 65535, !dbg !3863
  %cmp4.us = icmp eq i32 %bf.clear.us, 39, !dbg !3865
  br i1 %cmp4.us, label %if.then5.us, label %if.end.us, !dbg !3866

if.then5.us:                                      ; preds = %if.then.us
  %arrayidx8.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3867
  %rt_rtx.us = bitcast %union.rtunion_def* %arrayidx8.us to %struct.rtx_def**, !dbg !3867
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx.us, align 8, !dbg !3867
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !3845, metadata !DIExpression()), !dbg !3862
  %.phi.trans.insert2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 0, !dbg !3868
  %bf.load9.us.pre = load i32, i32* %.phi.trans.insert2, align 8, !dbg !3870
  br label %if.end.us, !dbg !3871

if.end.us:                                        ; preds = %if.then5.us, %if.then.us
  %bf.load9.us = phi i32 [ %bf.load9.us.pre, %if.then5.us ], [ %bf.load3.us, %if.then.us ], !dbg !3870
  %dreg.0.us = phi %struct.rtx_def* [ %9, %if.then5.us ], [ %7, %if.then.us ], !dbg !3862
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dreg.0.us, metadata !3845, metadata !DIExpression()), !dbg !3862
  %bf.clear10.us = and i32 %bf.load9.us, 65535, !dbg !3870
  %cmp11.us = icmp eq i32 %bf.clear10.us, 37, !dbg !3870
  br i1 %cmp11.us, label %lor.lhs.false.us, label %for.inc.us, !dbg !3872

lor.lhs.false.us:                                 ; preds = %if.end.us
  %call.us = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dreg.0.us) #7, !dbg !3873
  %cmp12.us = icmp ugt i32 %call.us, 52, !dbg !3874
  br i1 %cmp12.us, label %for.inc.us, label %if.end14.us, !dbg !3875

if.end14.us:                                      ; preds = %lor.lhs.false.us
  %10 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0.us, align 8, !dbg !3852
  tail call fastcc void @mark_ref_dead(%union.df_ref_d* %10) #7, !dbg !3876
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.end14.us, %lor.lhs.false.us, %if.end.us, %for.body.us
  %set_p.3.us = phi i8 [ %set_p.0.us, %for.body.us ], [ %set_p.0.us, %lor.lhs.false.us ], [ %set_p.0.us, %if.end.us ], [ 1, %if.end14.us ], !dbg !3855
  call void @llvm.dbg.value(metadata i8 %set_p.3.us, metadata !3844, metadata !DIExpression()), !dbg !3850
  %incdec.ptr.us = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0.us, i64 1, !dbg !3877
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr.us, metadata !3843, metadata !DIExpression()), !dbg !3850
  br label %for.cond.us, !dbg !3878, !llvm.loop !3879

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %set_p.0.us.lcssa = phi i8 [ %set_p.0.us, %for.cond.us ], !dbg !3855
  call void @llvm.dbg.value(metadata i8 %set_p.0.us.lcssa, metadata !3844, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 %set_p.0.us.lcssa, metadata !3844, metadata !DIExpression()), !dbg !3850
  br label %for.end, !dbg !3881

for.cond:                                         ; preds = %for.inc, %entry.entry.split_crit_edge
  %set_p.0 = phi i8 [ 0, %entry.entry.split_crit_edge ], [ %set_p.3, %for.inc ], !dbg !3855
  %def_rec.0 = phi %union.df_ref_d** [ %4, %entry.entry.split_crit_edge ], [ %incdec.ptr, %for.inc ], !dbg !3856
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !3843, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 %set_p.0, metadata !3844, metadata !DIExpression()), !dbg !3850
  %11 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !3857
  %tobool = icmp eq %union.df_ref_d* %11, null, !dbg !3858
  br i1 %tobool, label %for.end.us-lcssa, label %for.body, !dbg !3858

for.body:                                         ; preds = %for.cond
  %12 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %11, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3858
  %bf.load = load i32, i32* %12, align 8, !dbg !3859
  %and = and i32 %bf.load, 8388608, !dbg !3859
  %cmp = icmp eq i32 %and, 0, !dbg !3859
  br i1 %cmp, label %for.inc, label %if.then, !dbg !3860

if.then:                                          ; preds = %for.body
  %reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %11, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3861
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !3861
  call void @llvm.dbg.value(metadata %struct.rtx_def* %13, metadata !3845, metadata !DIExpression()), !dbg !3862
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 0, !dbg !3863
  %bf.load3 = load i32, i32* %14, align 8, !dbg !3863
  %bf.clear = and i32 %bf.load3, 65535, !dbg !3863
  %cmp4 = icmp eq i32 %bf.clear, 39, !dbg !3865
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !3866

if.then5:                                         ; preds = %if.then
  %arrayidx8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3867
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**, !dbg !3867
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3867
  call void @llvm.dbg.value(metadata %struct.rtx_def* %15, metadata !3845, metadata !DIExpression()), !dbg !3862
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 0, !dbg !3868
  %bf.load9.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3870
  br label %if.end, !dbg !3871

if.end:                                           ; preds = %if.then5, %if.then
  %bf.load9 = phi i32 [ %bf.load9.pre, %if.then5 ], [ %bf.load3, %if.then ], !dbg !3870
  %dreg.0 = phi %struct.rtx_def* [ %15, %if.then5 ], [ %13, %if.then ], !dbg !3862
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dreg.0, metadata !3845, metadata !DIExpression()), !dbg !3862
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !3870
  %cmp11 = icmp eq i32 %bf.clear10, 37, !dbg !3870
  br i1 %cmp11, label %lor.lhs.false, label %for.inc, !dbg !3872

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dreg.0) #7, !dbg !3873
  %cmp12 = icmp ugt i32 %call, 52, !dbg !3874
  br i1 %cmp12, label %for.inc, label %if.end14, !dbg !3875

if.end14:                                         ; preds = %lor.lhs.false
  %16 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !3852
  tail call fastcc void @mark_ref_live(%union.df_ref_d* %16) #7, !dbg !3882
  br label %for.inc, !dbg !3882

for.inc:                                          ; preds = %for.body, %lor.lhs.false, %if.end, %if.end14
  %set_p.3 = phi i8 [ %set_p.0, %for.body ], [ %set_p.0, %lor.lhs.false ], [ %set_p.0, %if.end ], [ 1, %if.end14 ], !dbg !3855
  call void @llvm.dbg.value(metadata i8 %set_p.3, metadata !3844, metadata !DIExpression()), !dbg !3850
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !3877
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !3843, metadata !DIExpression()), !dbg !3850
  br label %for.cond, !dbg !3878, !llvm.loop !3879

for.end.us-lcssa:                                 ; preds = %for.cond
  %set_p.0.lcssa5 = phi i8 [ %set_p.0, %for.cond ], !dbg !3855
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa5, metadata !3844, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa5, metadata !3844, metadata !DIExpression()), !dbg !3850
  br label %for.end, !dbg !3881

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %set_p.0.lcssa = phi i8 [ %set_p.0.lcssa5, %for.end.us-lcssa ], [ %set_p.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !3855
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa, metadata !3844, metadata !DIExpression()), !dbg !3850
  ret i8 %set_p.0.lcssa, !dbg !3881
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bb_has_eh_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3883 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3887, metadata !DIExpression()), !dbg !3896
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3897
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3898
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3898
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3899
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3899
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3899
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3899
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3899
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3899
  store i32 %4, i32* %3, align 8, !dbg !3899
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3899
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3899
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3899
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3899
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3901
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3901
  br label %for.cond, !dbg !3899

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3903
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3903
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3888, metadata !DIExpression(DW_OP_deref)), !dbg !3896
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !3903
  %tobool = icmp eq i8 %call1, 0, !dbg !3899
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3899

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3904
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3888, metadata !DIExpression()), !dbg !3896
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !3907
  %12 = load i32, i32* %flags, align 8, !dbg !3907
  %and = and i32 %12, 8, !dbg !3908
  %tobool2 = icmp eq i32 %and, 0, !dbg !3908
  br i1 %tobool2, label %for.inc, label %cleanup, !dbg !3909

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3889, metadata !DIExpression(DW_OP_deref)), !dbg !3896
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3903
  br label %for.cond, !dbg !3903, !llvm.loop !3910

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3896
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3912
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3912
  ret i8 %retval.0, !dbg !3912
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bb_has_abnormal_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3913 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3915, metadata !DIExpression()), !dbg !3918
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3919
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3919
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3920
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3920
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3921
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3921
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3921
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3921
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3921
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3921
  store i32 %4, i32* %3, align 8, !dbg !3921
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3921
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3921
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3921
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3921
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3921
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3923
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3923
  br label %for.cond, !dbg !3921

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3925
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3925
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3916, metadata !DIExpression(DW_OP_deref)), !dbg !3918
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !3925
  %tobool = icmp eq i8 %call1, 0, !dbg !3921
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3921

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3926
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3916, metadata !DIExpression()), !dbg !3918
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !3929
  %12 = load i32, i32* %flags, align 8, !dbg !3929
  %and = and i32 %12, 2, !dbg !3930
  %tobool2 = icmp eq i32 %and, 0, !dbg !3930
  br i1 %tobool2, label %for.inc, label %cleanup, !dbg !3931

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3917, metadata !DIExpression(DW_OP_deref)), !dbg !3918
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3925
  br label %for.cond, !dbg !3925, !llvm.loop !3932

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3918
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3934
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3934
  ret i8 %retval.0, !dbg !3934
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bb_has_abnormal_call_pred(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3935 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3937, metadata !DIExpression()), !dbg !3940
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3941
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3941
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3942
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3942
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3943
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3943
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3943
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3943
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3943
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3943
  store i32 %4, i32* %3, align 8, !dbg !3943
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3943
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3943
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3943
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3943
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3945
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3945
  br label %for.cond, !dbg !3943

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3947
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3947
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3938, metadata !DIExpression(DW_OP_deref)), !dbg !3940
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !3947
  %tobool = icmp eq i8 %call1, 0, !dbg !3943
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3943

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3948
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3938, metadata !DIExpression()), !dbg !3940
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !3951
  %12 = load i32, i32* %flags, align 8, !dbg !3951
  %and = and i32 %12, 12, !dbg !3952
  %tobool2 = icmp eq i32 %and, 0, !dbg !3952
  br i1 %tobool2, label %for.inc, label %cleanup, !dbg !3953

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3939, metadata !DIExpression(DW_OP_deref)), !dbg !3940
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3947
  br label %for.cond, !dbg !3947, !llvm.loop !3954

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3940
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3956
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3956
  ret i8 %retval.0, !dbg !3956
}

; Function Attrs: nounwind uwtable
define internal fastcc void @make_regno_dead(i32 %regno) unnamed_addr #4 !dbg !3957 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3959, metadata !DIExpression()), !dbg !3962
  %cmp = icmp slt i32 %regno, 53, !dbg !3963
  br i1 %cmp, label %if.then, label %if.end, !dbg !3965

if.then:                                          ; preds = %entry
  %sh_prom = zext i32 %regno to i64, !dbg !3966
  %shl = shl i64 1, %sh_prom, !dbg !3966
  %neg = xor i64 %shl, -1, !dbg !3966
  %0 = load i64, i64* @hard_regs_live, align 8, !dbg !3966
  %and = and i64 %0, %neg, !dbg !3966
  store i64 %and, i64* @hard_regs_live, align 8, !dbg !3966
  br label %cleanup.cont, !dbg !3968

if.end:                                           ; preds = %entry
  %1 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3969
  %idxprom = sext i32 %regno to i64, !dbg !3969
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %1, i64 %idxprom, !dbg !3969
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3960, metadata !DIExpression()), !dbg !3962
  %cmp1 = icmp eq %struct.ira_allocno* %2, null, !dbg !3970
  br i1 %cmp1, label %cleanup.cont, label %if.end3, !dbg !3972

if.end3:                                          ; preds = %if.end
  %live_ranges = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 20, !dbg !3973
  %3 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges, align 8, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %3, metadata !3961, metadata !DIExpression()), !dbg !3962
  %4 = load i32, i32* @curr_point, align 4, !dbg !3974
  %finish = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %3, i64 0, i32 2, !dbg !3975
  store i32 %4, i32* %finish, align 4, !dbg !3976
  tail call fastcc void @update_allocno_pressure_excess_length(%struct.ira_allocno* nonnull %2) #7, !dbg !3977
  br label %cleanup.cont, !dbg !3978

cleanup.cont:                                     ; preds = %if.then, %if.end3, %if.end
  ret void, !dbg !3978
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %s, i32 %e) unnamed_addr #0 !dbg !3979 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3983, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i32 %e, metadata !3984, metadata !DIExpression()), !dbg !3986
  %size = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 3, !dbg !3987
  %0 = load i32, i32* %size, align 4, !dbg !3987
  %cmp = icmp ugt i32 %0, %e, !dbg !3987
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3987

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3987
  br label %cond.end, !dbg !3987

cond.end:                                         ; preds = %entry, %cond.true
  %sparse = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 1, !dbg !3988
  %1 = load i32*, i32** %sparse, align 8, !dbg !3988
  %idxprom = zext i32 %e to i64, !dbg !3989
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3989
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3989
  call void @llvm.dbg.value(metadata i32 %2, metadata !3985, metadata !DIExpression()), !dbg !3986
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !3990
  %3 = load i32, i32* %members, align 8, !dbg !3990
  %cmp1 = icmp ult i32 %2, %3, !dbg !3991
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !3992

land.rhs:                                         ; preds = %cond.end
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !3993
  %4 = load i32*, i32** %dense, align 8, !dbg !3993
  %idxprom2 = zext i32 %2 to i64, !dbg !3994
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i64 %idxprom2, !dbg !3994
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !3994
  %cmp4 = icmp eq i32 %5, %e, !dbg !3995
  %phitmp = zext i1 %cmp4 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %6 = phi i8 [ 0, %cond.end ], [ %phitmp, %land.rhs ]
  ret i8 %6, !dbg !3996
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_set_bit(%struct.sparseset_def* %s, i32 %e) unnamed_addr #0 !dbg !3997 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !4001, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 %e, metadata !4002, metadata !DIExpression()), !dbg !4003
  %call = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %s, i32 %e) #7, !dbg !4004
  %tobool = icmp eq i8 %call, 0, !dbg !4004
  br i1 %tobool, label %if.then, label %if.end, !dbg !4006

if.then:                                          ; preds = %entry
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !4007
  %0 = load i32, i32* %members, align 8, !dbg !4008
  %inc = add i32 %0, 1, !dbg !4008
  store i32 %inc, i32* %members, align 8, !dbg !4008
  tail call fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %e, i32 %0) #7, !dbg !4009
  br label %if.end, !dbg !4009

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4010
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %e, i32 %idx) unnamed_addr #0 !dbg !4011 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !4015, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 %e, metadata !4016, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 %idx, metadata !4017, metadata !DIExpression()), !dbg !4018
  %sparse = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 1, !dbg !4019
  %0 = load i32*, i32** %sparse, align 8, !dbg !4019
  %idxprom = zext i32 %e to i64, !dbg !4020
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !4020
  store i32 %idx, i32* %arrayidx, align 4, !dbg !4021
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !4022
  %1 = load i32*, i32** %dense, align 8, !dbg !4022
  %idxprom1 = zext i32 %idx to i64, !dbg !4023
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %idxprom1, !dbg !4023
  store i32 %e, i32* %arrayidx2, align 4, !dbg !4024
  ret void, !dbg !4025
}

declare dso_local %struct.ira_allocno_live_range* @ira_create_allocno_live_range(%struct.ira_allocno*, i32, i32, %struct.ira_allocno_live_range*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_reg_live(%struct.rtx_def* %reg) unnamed_addr #4 !dbg !4026 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4030, metadata !DIExpression()), !dbg !4041
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !4042
  %bf.load = load i32, i32* %0, align 8, !dbg !4042
  %bf.clear = and i32 %bf.load, 65535, !dbg !4042
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4042
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4042

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4042
  br label %cond.end, !dbg !4042

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !4043
  call void @llvm.dbg.value(metadata i32 %call, metadata !4032, metadata !DIExpression()), !dbg !4041
  %cmp1 = icmp sgt i32 %call, 52, !dbg !4044
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4045

if.then:                                          ; preds = %cond.end
  %1 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4046
  %idxprom = sext i32 %call to i64, !dbg !4046
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %1, i64 %idxprom, !dbg !4046
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !4046
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !4033, metadata !DIExpression()), !dbg !4047
  %cmp2 = icmp eq %struct.ira_allocno* %2, null, !dbg !4048
  br i1 %cmp2, label %if.end9, label %if.then3, !dbg !4050

if.then3:                                         ; preds = %if.then
  %3 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4051
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 0, !dbg !4054
  %4 = load i32, i32* %num, align 8, !dbg !4054
  %call4 = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %3, i32 %4) #7, !dbg !4055
  %tobool = icmp eq i8 %call4, 0, !dbg !4055
  br i1 %tobool, label %if.end, label %if.then5, !dbg !4056

if.then5:                                         ; preds = %if.then3
  %5 = load i32*, i32** @allocno_saved_at_call, align 8, !dbg !4057
  %6 = load i32, i32* %num, align 8, !dbg !4059
  %idxprom7 = sext i32 %6 to i64, !dbg !4057
  %arrayidx8 = getelementptr inbounds i32, i32* %5, i64 %idxprom7, !dbg !4057
  store i32 0, i32* %arrayidx8, align 4, !dbg !4060
  br label %cleanup, !dbg !4061

if.end:                                           ; preds = %if.then3
  tail call fastcc void @set_allocno_live(%struct.ira_allocno* nonnull %2) #7, !dbg !4062
  br label %if.end9, !dbg !4063

if.end9:                                          ; preds = %if.then, %if.end
  tail call fastcc void @make_regno_born(i32 %call) #7, !dbg !4064
  br label %cleanup, !dbg !4065

cleanup:                                          ; preds = %if.end9, %if.then5
  ret void

if.else:                                          ; preds = %cond.end
  %7 = load i64, i64* @ira_no_alloc_regs, align 8, !dbg !4066
  %sh_prom = zext i32 %call to i64, !dbg !4066
  %shl = shl i64 1, %sh_prom, !dbg !4066
  %and = and i64 %7, %shl, !dbg !4066
  %tobool10 = icmp eq i64 %and, 0, !dbg !4066
  br i1 %tobool10, label %if.then11, label %cleanup.cont86, !dbg !4067

if.then11:                                        ; preds = %if.else
  %idxprom12 = sext i32 %call to i64, !dbg !4068
  %bf.load14 = load i32, i32* %0, align 8, !dbg !4069
  %bf.lshr = lshr i32 %bf.load14, 16, !dbg !4069
  %bf.clear15 = and i32 %bf.lshr, 255, !dbg !4069
  %idxprom16 = zext i32 %bf.clear15 to i64, !dbg !4068
  %arrayidx17 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom12, i64 %idxprom16, !dbg !4068
  %8 = load i8, i8* %arrayidx17, align 1, !dbg !4068
  %conv = zext i8 %8 to i32, !dbg !4068
  %add = add nsw i32 %call, %conv, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %add, metadata !4036, metadata !DIExpression()), !dbg !4071
  %9 = sext i32 %add to i64, !dbg !4072
  br label %while.cond, !dbg !4072

while.cond:                                       ; preds = %if.end79, %if.then11
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %if.end79 ], [ %idxprom12, %if.then11 ], !dbg !4041
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !4032, metadata !DIExpression()), !dbg !4041
  %cmp18 = icmp slt i64 %indvars.iv6, %9, !dbg !4073
  br i1 %cmp18, label %while.body, label %cleanup.cont86.loopexit, !dbg !4072

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* @hard_regs_live, align 8, !dbg !4074
  %sh_prom20 = and i64 %indvars.iv6, 4294967295, !dbg !4074
  %shl21 = shl i64 1, %sh_prom20, !dbg !4074
  %and22 = and i64 %10, %shl21, !dbg !4074
  %tobool23 = icmp eq i64 %and22, 0, !dbg !4074
  br i1 %tobool23, label %land.lhs.true, label %if.end79, !dbg !4077

land.lhs.true:                                    ; preds = %while.body
  %11 = load i64, i64* @eliminable_regset, align 8, !dbg !4078
  %and26 = and i64 %11, %shl21, !dbg !4078
  %tobool27 = icmp eq i64 %and26, 0, !dbg !4078
  br i1 %tobool27, label %if.then28, label %if.end79, !dbg !4079

if.then28:                                        ; preds = %land.lhs.true
  %arrayidx30 = getelementptr inbounds [53 x i32], [53 x i32]* @ira_hard_regno_cover_class, i64 0, i64 %indvars.iv6, !dbg !4080
  %12 = load i32, i32* %arrayidx30, align 4, !dbg !4080
  call void @llvm.dbg.value(metadata i32 %12, metadata !4039, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()), !dbg !4041
  %idxprom31 = zext i32 %12 to i64, !dbg !4082
  %13 = load i32, i32* @curr_point, align 4, !dbg !4085
  br label %for.cond, !dbg !4088

for.cond:                                         ; preds = %for.inc, %if.then28
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then28 ], !dbg !4089
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4031, metadata !DIExpression()), !dbg !4041
  %arrayidx34 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom31, i64 %indvars.iv, !dbg !4090
  %14 = load i32, i32* %arrayidx34, align 4, !dbg !4090
  call void @llvm.dbg.value(metadata i32 %14, metadata !4040, metadata !DIExpression()), !dbg !4071
  %cmp35 = icmp eq i32 %14, 27, !dbg !4091
  br i1 %cmp35, label %for.end, label %for.body, !dbg !4092

for.body:                                         ; preds = %for.cond
  %idxprom37 = zext i32 %14 to i64, !dbg !4093
  %arrayidx38 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom37, !dbg !4093
  %15 = load i32, i32* %arrayidx38, align 4, !dbg !4094
  %inc = add nsw i32 %15, 1, !dbg !4094
  store i32 %inc, i32* %arrayidx38, align 4, !dbg !4094
  %arrayidx40 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom37, !dbg !4095
  %16 = load i32, i32* %arrayidx40, align 4, !dbg !4095
  %cmp41 = icmp slt i32 %16, 0, !dbg !4096
  br i1 %cmp41, label %land.lhs.true43, label %for.inc, !dbg !4097

land.lhs.true43:                                  ; preds = %for.body
  %arrayidx47 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom37, !dbg !4098
  %17 = load i32, i32* %arrayidx47, align 4, !dbg !4098
  %cmp48 = icmp slt i32 %15, %17, !dbg !4099
  br i1 %cmp48, label %for.inc, label %if.then50, !dbg !4100

if.then50:                                        ; preds = %land.lhs.true43
  store i32 %13, i32* %arrayidx40, align 4, !dbg !4101
  br label %for.inc, !dbg !4102

for.inc:                                          ; preds = %land.lhs.true43, %for.body, %if.then50
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !4103
  call void @llvm.dbg.value(metadata i32 undef, metadata !4031, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4041
  br label %for.cond, !dbg !4104, !llvm.loop !4105

for.end:                                          ; preds = %for.cond
  %18 = trunc i64 %indvars.iv6 to i32, !dbg !4107
  tail call fastcc void @make_regno_born(i32 %18) #7, !dbg !4107
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()), !dbg !4041
  br label %for.cond55, !dbg !4108

for.cond55:                                       ; preds = %for.inc76, %for.end
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc76 ], [ 0, %for.end ], !dbg !4110
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !4031, metadata !DIExpression()), !dbg !4041
  %arrayidx59 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom31, i64 %indvars.iv4, !dbg !4111
  %19 = load i32, i32* %arrayidx59, align 4, !dbg !4111
  call void @llvm.dbg.value(metadata i32 %19, metadata !4040, metadata !DIExpression()), !dbg !4071
  %cmp60 = icmp eq i32 %19, 27, !dbg !4113
  br i1 %cmp60, label %if.end79.loopexit, label %for.body62, !dbg !4114

for.body62:                                       ; preds = %for.cond55
  %20 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @curr_bb_node, align 8, !dbg !4115
  %idxprom63 = zext i32 %19 to i64, !dbg !4115
  %arrayidx64 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %20, i64 0, i32 11, i64 %idxprom63, !dbg !4115
  %21 = load i32, i32* %arrayidx64, align 4, !dbg !4115
  %arrayidx66 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom63, !dbg !4118
  %22 = load i32, i32* %arrayidx66, align 4, !dbg !4118
  %cmp67 = icmp slt i32 %21, %22, !dbg !4119
  br i1 %cmp67, label %if.then69, label %for.inc76, !dbg !4120

if.then69:                                        ; preds = %for.body62
  store i32 %22, i32* %arrayidx64, align 4, !dbg !4121
  br label %for.inc76, !dbg !4122

for.inc76:                                        ; preds = %for.body62, %if.then69
  %indvars.iv.next5 = add nuw i64 %indvars.iv4, 1, !dbg !4123
  call void @llvm.dbg.value(metadata i32 undef, metadata !4031, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4041
  br label %for.cond55, !dbg !4124, !llvm.loop !4125

if.end79.loopexit:                                ; preds = %for.cond55
  br label %if.end79, !dbg !4127

if.end79:                                         ; preds = %if.end79.loopexit, %land.lhs.true, %while.body
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 1, !dbg !4127
  call void @llvm.dbg.value(metadata i32 undef, metadata !4032, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4041
  br label %while.cond, !dbg !4072, !llvm.loop !4128

cleanup.cont86.loopexit:                          ; preds = %while.cond
  br label %cleanup.cont86, !dbg !4130

cleanup.cont86:                                   ; preds = %cleanup.cont86.loopexit, %if.else
  ret void, !dbg !4130
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @single_reg_operand_class(i32 %op_num) unnamed_addr #4 !dbg !4131 {
entry:
  call void @llvm.dbg.value(metadata i32 %op_num, metadata !4135, metadata !DIExpression()), !dbg !4136
  %cmp = icmp slt i32 %op_num, 0, !dbg !4137
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !4139

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !4140
  %cmp1 = icmp eq i8 %0, 0, !dbg !4141
  br i1 %cmp1, label %return, label %if.end, !dbg !4142

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %op_num to i64, !dbg !4143
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom, !dbg !4143
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !4143
  %arrayidx4 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom, !dbg !4144
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8, !dbg !4144
  %call = tail call fastcc i32 @single_reg_class(i8* %1, %struct.rtx_def* %2, %struct.rtx_def* null) #7, !dbg !4145
  br label %return, !dbg !4146

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !4136
  ret i32 %retval.0, !dbg !4147
}

declare dso_local i32 @reg_classes_intersect_p(i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 %mode, i32 %from, i32 %to) unnamed_addr #0 !dbg !4148 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4152, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i32 %from, metadata !4153, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i32 %to, metadata !4154, metadata !DIExpression()), !dbg !4155
  %idxprom = zext i32 %mode to i64, !dbg !4156
  %arrayidx = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @ira_register_move_cost, i64 0, i64 %idxprom, !dbg !4156
  %0 = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4156
  %cmp = icmp eq [27 x i16]* %0, null, !dbg !4158
  br i1 %cmp, label %if.then, label %if.end, !dbg !4159

if.then:                                          ; preds = %entry
  tail call void @ira_init_register_move_cost(i32 %mode) #6, !dbg !4160
  %.pre = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4161
  br label %if.end, !dbg !4160

if.end:                                           ; preds = %if.then, %entry
  %1 = phi [27 x i16]* [ %.pre, %if.then ], [ %0, %entry ], !dbg !4161
  %idxprom3 = zext i32 %from to i64, !dbg !4161
  %idxprom5 = zext i32 %to to i64, !dbg !4161
  %arrayidx6 = getelementptr inbounds [27 x i16], [27 x i16]* %1, i64 %idxprom3, i64 %idxprom5, !dbg !4161
  %2 = load i16, i16* %arrayidx6, align 2, !dbg !4161
  %conv = zext i16 %2 to i32, !dbg !4161
  ret i32 %conv, !dbg !4162
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocate_and_set_costs(i32** %vec, i32 %cover_class, i32 %val) unnamed_addr #0 !dbg !4163 {
entry:
  call void @llvm.dbg.value(metadata i32** %vec, metadata !4168, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i32 %cover_class, metadata !4169, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i32 0, metadata !4170, metadata !DIExpression()), !dbg !4174
  %0 = load i32*, i32** %vec, align 8, !dbg !4175
  %cmp = icmp eq i32* %0, null, !dbg !4177
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !4178

if.end:                                           ; preds = %entry
  %call = tail call i32* @ira_allocate_cost_vector(i32 %cover_class) #6, !dbg !4179
  call void @llvm.dbg.value(metadata i32* %call, metadata !4172, metadata !DIExpression()), !dbg !4174
  store i32* %call, i32** %vec, align 8, !dbg !4180
  %idxprom = zext i32 %cover_class to i64, !dbg !4181
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_hard_regs_num, i64 0, i64 %idxprom, !dbg !4181
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4181
  call void @llvm.dbg.value(metadata i32 %1, metadata !4173, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i32 0, metadata !4171, metadata !DIExpression()), !dbg !4174
  %2 = sext i32 %1 to i64, !dbg !4182
  br label %for.cond, !dbg !4182

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !4184
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4171, metadata !DIExpression()), !dbg !4174
  %cmp1 = icmp slt i64 %indvars.iv, %2, !dbg !4185
  br i1 %cmp1, label %for.body, label %cleanup.cont.loopexit, !dbg !4187

for.body:                                         ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds i32, i32* %call, i64 %indvars.iv, !dbg !4188
  store i32 0, i32* %arrayidx3, align 4, !dbg !4189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4190
  call void @llvm.dbg.value(metadata i32 undef, metadata !4171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4174
  br label %for.cond, !dbg !4191, !llvm.loop !4192

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !4194

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !4194
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @single_reg_class(i8* %constraints, %struct.rtx_def* %op, %struct.rtx_def* %equiv_const) unnamed_addr #4 !dbg !4195 {
entry:
  call void @llvm.dbg.value(metadata i8* %constraints, metadata !4199, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4200, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !4201, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4203, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4202, metadata !DIExpression()), !dbg !4206
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4207
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4215
  %arrayidx113 = bitcast %union.u* %u to i64*, !dbg !4215
  br label %for.cond, !dbg !4217

for.cond:                                         ; preds = %for.inc, %entry
  %cl.0 = phi i32 [ 0, %entry ], [ %cl.4, %for.inc ], !dbg !4218
  %ignore_p.0 = phi i32 [ 0, %entry ], [ %ignore_p.2, %for.inc ], !dbg !4219
  %constraints.addr.0 = phi i8* [ %constraints, %entry ], [ %add.ptr, %for.inc ]
  call void @llvm.dbg.value(metadata i8* %constraints.addr.0, metadata !4199, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 %ignore_p.0, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 %cl.0, metadata !4203, metadata !DIExpression()), !dbg !4206
  %1 = load i8, i8* %constraints.addr.0, align 1, !dbg !4220
  %conv = sext i8 %1 to i32, !dbg !4220
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4205, metadata !DIExpression()), !dbg !4206
  switch i32 %conv, label %if.else5 [
    i32 0, label %cleanup
    i32 35, label %for.inc
    i32 44, label %if.end257
  ], !dbg !4221

if.else5:                                         ; preds = %for.cond
  %tobool6 = icmp eq i32 %ignore_p.0, 0, !dbg !4222
  br i1 %tobool6, label %if.then7, label %if.end257, !dbg !4223

if.then7:                                         ; preds = %if.else5
  switch i32 %conv, label %cleanup [
    i32 32, label %if.end257
    i32 9, label %if.end257
    i32 61, label %if.end257
    i32 43, label %if.end257
    i32 42, label %if.end257
    i32 38, label %if.end257
    i32 37, label %if.end257
    i32 33, label %if.end257
    i32 63, label %if.end257
    i32 105, label %sw.bb8
    i32 110, label %sw.bb20
    i32 115, label %sw.bb56
    i32 73, label %sw.bb107
    i32 74, label %sw.bb107
    i32 75, label %sw.bb107
    i32 76, label %sw.bb107
    i32 77, label %sw.bb107
    i32 78, label %sw.bb107
    i32 79, label %sw.bb107
    i32 80, label %sw.bb107
    i32 69, label %sw.bb135
    i32 70, label %sw.bb135
    i32 71, label %sw.bb178
    i32 72, label %sw.bb178
    i32 114, label %sw.bb203
    i32 97, label %sw.bb203
    i32 98, label %sw.bb203
    i32 99, label %sw.bb203
    i32 100, label %sw.bb203
    i32 101, label %sw.bb203
    i32 102, label %sw.bb203
    i32 104, label %sw.bb203
    i32 106, label %sw.bb203
    i32 107, label %sw.bb203
    i32 108, label %sw.bb203
    i32 113, label %sw.bb203
    i32 116, label %sw.bb203
    i32 117, label %sw.bb203
    i32 118, label %sw.bb203
    i32 119, label %sw.bb203
    i32 120, label %sw.bb203
    i32 121, label %sw.bb203
    i32 122, label %sw.bb203
    i32 65, label %sw.bb203
    i32 66, label %sw.bb203
    i32 67, label %sw.bb203
    i32 68, label %sw.bb203
    i32 81, label %sw.bb203
    i32 82, label %sw.bb203
    i32 83, label %sw.bb203
    i32 84, label %sw.bb203
    i32 85, label %sw.bb203
    i32 87, label %sw.bb203
    i32 89, label %sw.bb203
    i32 90, label %sw.bb203
    i32 48, label %sw.bb227
    i32 49, label %sw.bb227
    i32 50, label %sw.bb227
    i32 51, label %sw.bb227
    i32 52, label %sw.bb227
    i32 53, label %sw.bb227
    i32 54, label %sw.bb227
    i32 55, label %sw.bb227
    i32 56, label %sw.bb227
    i32 57, label %sw.bb227
  ], !dbg !4224

sw.bb8:                                           ; preds = %if.then7
  %bf.load = load i32, i32* %0, align 8, !dbg !4225
  %bf.clear = and i32 %bf.load, 65535, !dbg !4225
  %idxprom = zext i32 %bf.clear to i64, !dbg !4225
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !4225
  %2 = load i32, i32* %arrayidx, align 4, !dbg !4225
  %cmp9 = icmp eq i32 %2, 9, !dbg !4225
  br i1 %cmp9, label %cleanup, label %lor.lhs.false, !dbg !4227

lor.lhs.false:                                    ; preds = %sw.bb8
  br label %if.end257, !dbg !4228

sw.bb20:                                          ; preds = %if.then7
  %bf.load21 = load i32, i32* %0, align 8, !dbg !4229
  %bf.clear22 = and i32 %bf.load21, 65535, !dbg !4229
  %cmp23 = icmp eq i32 %bf.clear22, 30, !dbg !4229
  br i1 %cmp23, label %cleanup, label %lor.lhs.false25, !dbg !4231

lor.lhs.false25:                                  ; preds = %sw.bb20
  %cmp28 = icmp eq i32 %bf.clear22, 32, !dbg !4232
  br i1 %cmp28, label %land.lhs.true30, label %lor.lhs.false35, !dbg !4233

land.lhs.true30:                                  ; preds = %lor.lhs.false25
  %bf.clear32 = and i32 %bf.load21, 16711680, !dbg !4234
  %cmp33 = icmp eq i32 %bf.clear32, 0, !dbg !4235
  br i1 %cmp33, label %cleanup, label %lor.lhs.false35, !dbg !4236

lor.lhs.false35:                                  ; preds = %land.lhs.true30, %lor.lhs.false25
  br label %if.end257, !dbg !4237

sw.bb56:                                          ; preds = %if.then7
  %bf.load57 = load i32, i32* %0, align 8, !dbg !4238
  %bf.clear58 = and i32 %bf.load57, 65535, !dbg !4238
  %idxprom59 = zext i32 %bf.clear58 to i64, !dbg !4238
  %arrayidx60 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom59, !dbg !4238
  %3 = load i32, i32* %arrayidx60, align 4, !dbg !4238
  %cmp61 = icmp eq i32 %3, 9, !dbg !4238
  br i1 %cmp61, label %land.lhs.true63, label %lor.lhs.false79, !dbg !4240

land.lhs.true63:                                  ; preds = %sw.bb56
  %cmp66 = icmp eq i32 %bf.clear58, 30, !dbg !4241
  br i1 %cmp66, label %lor.lhs.false79, label %land.lhs.true68, !dbg !4242

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %cmp71 = icmp eq i32 %bf.clear58, 32, !dbg !4243
  br i1 %cmp71, label %lor.lhs.false73, label %cleanup, !dbg !4244

lor.lhs.false73:                                  ; preds = %land.lhs.true68
  %bf.clear76 = and i32 %bf.load57, 16711680, !dbg !4245
  %cmp77 = icmp eq i32 %bf.clear76, 0, !dbg !4246
  br i1 %cmp77, label %lor.lhs.false79, label %cleanup, !dbg !4247

lor.lhs.false79:                                  ; preds = %lor.lhs.false73, %land.lhs.true63, %sw.bb56
  br label %if.end257, !dbg !4248

sw.bb107:                                         ; preds = %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7
  %bf.load108 = load i32, i32* %0, align 8, !dbg !4249
  %bf.clear109 = and i32 %bf.load108, 65535, !dbg !4249
  %cmp110 = icmp eq i32 %bf.clear109, 30, !dbg !4249
  br i1 %cmp110, label %land.lhs.true112, label %lor.lhs.false117, !dbg !4250

land.lhs.true112:                                 ; preds = %sw.bb107
  %4 = load i64, i64* %arrayidx113, align 8, !dbg !4215
  %call = tail call i32 @lookup_constraint(i8* %constraints.addr.0) #6, !dbg !4215
  %call114 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 %4, i32 %call) #6, !dbg !4215
  %tobool116 = icmp eq i8 %call114, 0, !dbg !4215
  br i1 %tobool116, label %lor.lhs.false117, label %cleanup, !dbg !4251

lor.lhs.false117:                                 ; preds = %land.lhs.true112, %sw.bb107
  br label %if.end257, !dbg !4252

sw.bb135:                                         ; preds = %if.then7, %if.then7
  %bf.load136 = load i32, i32* %0, align 8, !dbg !4253
  %bf.clear137 = and i32 %bf.load136, 65535, !dbg !4253
  %cmp138 = icmp eq i32 %bf.clear137, 32, !dbg !4254
  br i1 %cmp138, label %cleanup, label %lor.lhs.false140, !dbg !4255

lor.lhs.false140:                                 ; preds = %sw.bb135
  %cmp143 = icmp eq i32 %bf.clear137, 33, !dbg !4256
  br i1 %cmp143, label %land.lhs.true145, label %lor.lhs.false154, !dbg !4257

land.lhs.true145:                                 ; preds = %lor.lhs.false140
  %bf.lshr147 = lshr i32 %bf.load136, 16, !dbg !4207
  %bf.clear148 = and i32 %bf.lshr147, 255, !dbg !4207
  %idxprom149 = zext i32 %bf.clear148 to i64, !dbg !4207
  %arrayidx150 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom149, !dbg !4207
  %5 = load i8, i8* %arrayidx150, align 1, !dbg !4207
  %cmp152 = icmp eq i8 %5, 17, !dbg !4258
  br i1 %cmp152, label %cleanup, label %lor.lhs.false154, !dbg !4259

lor.lhs.false154:                                 ; preds = %land.lhs.true145, %lor.lhs.false140
  br label %if.end257, !dbg !4260

sw.bb178:                                         ; preds = %if.then7, %if.then7
  %bf.load179 = load i32, i32* %0, align 8, !dbg !4261
  %bf.clear180 = and i32 %bf.load179, 65535, !dbg !4261
  %cmp181 = icmp eq i32 %bf.clear180, 32, !dbg !4263
  br i1 %cmp181, label %land.lhs.true183, label %lor.lhs.false188, !dbg !4264

land.lhs.true183:                                 ; preds = %sw.bb178
  %call184 = tail call i32 @lookup_constraint(i8* %constraints.addr.0) #6, !dbg !4265
  %call185 = tail call zeroext i8 @constraint_satisfied_p(%struct.rtx_def* %op, i32 %call184) #6, !dbg !4265
  %tobool187 = icmp eq i8 %call185, 0, !dbg !4265
  br i1 %tobool187, label %lor.lhs.false188, label %cleanup, !dbg !4266

lor.lhs.false188:                                 ; preds = %land.lhs.true183, %sw.bb178
  br label %sw.bb203, !dbg !4267

sw.bb203:                                         ; preds = %lor.lhs.false188, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7
  %cmp204 = icmp eq i8 %1, 114, !dbg !4268
  br i1 %cmp204, label %cond.end, label %cond.false, !dbg !4269

cond.false:                                       ; preds = %sw.bb203
  %call206 = tail call i32 @lookup_constraint(i8* %constraints.addr.0) #6, !dbg !4270
  %call207 = tail call i32 @regclass_for_constraint(i32 %call206) #6, !dbg !4270
  br label %cond.end, !dbg !4269

cond.end:                                         ; preds = %sw.bb203, %cond.false
  %cond = phi i32 [ %call207, %cond.false ], [ 13, %sw.bb203 ], !dbg !4269
  call void @llvm.dbg.value(metadata i32 %cond, metadata !4204, metadata !DIExpression()), !dbg !4206
  %cmp208 = icmp ne i32 %cl.0, 0, !dbg !4271
  %cmp211 = icmp ne i32 %cond, %cl.0, !dbg !4273
  %or.cond = and i1 %cmp208, %cmp211, !dbg !4274
  br i1 %or.cond, label %cleanup, label %lor.lhs.false213, !dbg !4274

lor.lhs.false213:                                 ; preds = %cond.end
  %idxprom214 = zext i32 %cond to i64, !dbg !4275
  %arrayidx215 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom214, !dbg !4275
  %6 = load i32, i32* %arrayidx215, align 4, !dbg !4275
  %bf.load218 = load i32, i32* %0, align 8, !dbg !4276
  %bf.lshr219 = lshr i32 %bf.load218, 16, !dbg !4276
  %bf.clear220 = and i32 %bf.lshr219, 255, !dbg !4276
  %idxprom221 = zext i32 %bf.clear220 to i64, !dbg !4277
  %arrayidx222 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom214, i64 %idxprom221, !dbg !4277
  %7 = load i32, i32* %arrayidx222, align 4, !dbg !4277
  %cmp223 = icmp sgt i32 %6, %7, !dbg !4278
  br i1 %cmp223, label %cleanup, label %if.end257, !dbg !4279

sw.bb227:                                         ; preds = %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7
  %sub = add nsw i32 %conv, -48, !dbg !4280
  %idxprom228 = sext i32 %sub to i64, !dbg !4281
  %arrayidx229 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom228, !dbg !4281
  %8 = load i8*, i8** %arrayidx229, align 8, !dbg !4281
  %arrayidx232 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom228, !dbg !4282
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx232, align 8, !dbg !4282
  %call233 = tail call fastcc i32 @single_reg_class(i8* %8, %struct.rtx_def* %9, %struct.rtx_def* null) #7, !dbg !4283
  call void @llvm.dbg.value(metadata i32 %call233, metadata !4204, metadata !DIExpression()), !dbg !4206
  %cmp234 = icmp ne i32 %cl.0, 0, !dbg !4284
  %cmp237 = icmp ne i32 %call233, %cl.0, !dbg !4286
  %or.cond1 = and i1 %cmp234, %cmp237, !dbg !4287
  %cmp240 = icmp eq i32 %call233, 0, !dbg !4288
  %or.cond2 = or i1 %or.cond1, %cmp240, !dbg !4287
  br i1 %or.cond2, label %cleanup, label %lor.lhs.false242, !dbg !4287

lor.lhs.false242:                                 ; preds = %sw.bb227
  %idxprom243 = zext i32 %call233 to i64, !dbg !4289
  %arrayidx244 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom243, !dbg !4289
  %10 = load i32, i32* %arrayidx244, align 4, !dbg !4289
  %bf.load247 = load i32, i32* %0, align 8, !dbg !4290
  %bf.lshr248 = lshr i32 %bf.load247, 16, !dbg !4290
  %bf.clear249 = and i32 %bf.lshr248, 255, !dbg !4290
  %idxprom250 = zext i32 %bf.clear249 to i64, !dbg !4291
  %arrayidx251 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom243, i64 %idxprom250, !dbg !4291
  %11 = load i32, i32* %arrayidx251, align 4, !dbg !4291
  %cmp252 = icmp sgt i32 %10, %11, !dbg !4292
  br i1 %cmp252, label %cleanup, label %if.end257, !dbg !4293

if.end257:                                        ; preds = %lor.lhs.false154, %lor.lhs.false117, %lor.lhs.false79, %lor.lhs.false35, %lor.lhs.false, %if.else5, %lor.lhs.false242, %lor.lhs.false213, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %if.then7, %for.cond
  %cl.3 = phi i32 [ %cl.0, %for.cond ], [ %cl.0, %if.else5 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %if.then7 ], [ %cl.0, %lor.lhs.false ], [ %cl.0, %lor.lhs.false35 ], [ %cl.0, %lor.lhs.false79 ], [ %cl.0, %lor.lhs.false117 ], [ %cl.0, %lor.lhs.false154 ], [ %cond, %lor.lhs.false213 ], [ %call233, %lor.lhs.false242 ], !dbg !4218
  %ignore_p.1 = phi i32 [ 0, %for.cond ], [ %ignore_p.0, %if.else5 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %if.then7 ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false79 ], [ 0, %lor.lhs.false117 ], [ 0, %lor.lhs.false154 ], [ 0, %lor.lhs.false213 ], [ 0, %lor.lhs.false242 ], !dbg !4219
  call void @llvm.dbg.value(metadata i32 %ignore_p.1, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 %cl.3, metadata !4203, metadata !DIExpression()), !dbg !4206
  br label %for.inc

for.inc:                                          ; preds = %if.end257, %for.cond
  %cl.4 = phi i32 [ %cl.3, %if.end257 ], [ %cl.0, %for.cond ], !dbg !4218
  %ignore_p.2 = phi i32 [ %ignore_p.1, %if.end257 ], [ 1, %for.cond ], !dbg !4294
  call void @llvm.dbg.value(metadata i32 %ignore_p.2, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 %cl.4, metadata !4203, metadata !DIExpression()), !dbg !4206
  %call260 = tail call fastcc i64 @insn_constraint_len(i8 signext %1, i8* %constraints.addr.0) #7, !dbg !4295
  %add.ptr = getelementptr inbounds i8, i8* %constraints.addr.0, i64 %call260, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !4199, metadata !DIExpression()), !dbg !4206
  br label %for.cond, !dbg !4297, !llvm.loop !4298

cleanup:                                          ; preds = %lor.lhs.false73, %land.lhs.true68, %land.lhs.true112, %land.lhs.true183, %for.cond, %if.then7, %lor.lhs.false242, %sw.bb227, %lor.lhs.false213, %cond.end, %sw.bb135, %land.lhs.true145, %sw.bb20, %land.lhs.true30, %sw.bb8
  %retval.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %land.lhs.true30 ], [ 0, %sw.bb20 ], [ 0, %lor.lhs.false73 ], [ 0, %land.lhs.true68 ], [ 0, %land.lhs.true112 ], [ 0, %land.lhs.true145 ], [ 0, %sw.bb135 ], [ 0, %land.lhs.true183 ], [ 0, %cond.end ], [ 0, %lor.lhs.false213 ], [ 0, %sw.bb227 ], [ 0, %lor.lhs.false242 ], [ 0, %if.then7 ], [ %cl.0, %for.cond ], !dbg !4206
  ret i32 %retval.0, !dbg !4300
}

declare dso_local zeroext i8 @insn_const_int_ok_for_constraint(i64, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @constraint_satisfied_p(%struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local void @ira_init_register_move_cost(i32) local_unnamed_addr #1

declare dso_local i32* @ira_allocate_cost_vector(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_reg_dead(%struct.rtx_def* %reg) unnamed_addr #4 !dbg !4301 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4303, metadata !DIExpression()), !dbg !4316
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !4317
  %bf.load = load i32, i32* %0, align 8, !dbg !4317
  %bf.clear = and i32 %bf.load, 65535, !dbg !4317
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4317
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4317

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4317
  br label %cond.end, !dbg !4317

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !4318
  call void @llvm.dbg.value(metadata i32 %call, metadata !4304, metadata !DIExpression()), !dbg !4316
  %cmp1 = icmp sgt i32 %call, 52, !dbg !4319
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4320

if.then:                                          ; preds = %cond.end
  %1 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4321
  %idxprom = sext i32 %call to i64, !dbg !4321
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %1, i64 %idxprom, !dbg !4321
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !4321
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !4305, metadata !DIExpression()), !dbg !4322
  %cmp2 = icmp eq %struct.ira_allocno* %2, null, !dbg !4323
  br i1 %cmp2, label %if.end9, label %if.then3, !dbg !4325

if.then3:                                         ; preds = %if.then
  %3 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4326
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 0, !dbg !4329
  %4 = load i32, i32* %num, align 8, !dbg !4329
  %call4 = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %3, i32 %4) #7, !dbg !4330
  %tobool = icmp eq i8 %call4, 0, !dbg !4330
  br i1 %tobool, label %if.then5, label %if.end, !dbg !4331

if.then5:                                         ; preds = %if.then3
  %5 = load i32*, i32** @allocno_saved_at_call, align 8, !dbg !4332
  %6 = load i32, i32* %num, align 8, !dbg !4334
  %idxprom7 = sext i32 %6 to i64, !dbg !4332
  %arrayidx8 = getelementptr inbounds i32, i32* %5, i64 %idxprom7, !dbg !4332
  store i32 0, i32* %arrayidx8, align 4, !dbg !4335
  br label %cleanup, !dbg !4336

if.end:                                           ; preds = %if.then3
  tail call fastcc void @clear_allocno_live(%struct.ira_allocno* nonnull %2) #7, !dbg !4337
  br label %if.end9, !dbg !4338

if.end9:                                          ; preds = %if.then, %if.end
  tail call fastcc void @make_regno_dead(i32 %call) #7, !dbg !4339
  br label %cleanup, !dbg !4340

cleanup:                                          ; preds = %if.end9, %if.then5
  ret void

if.else:                                          ; preds = %cond.end
  %7 = load i64, i64* @ira_no_alloc_regs, align 8, !dbg !4341
  %sh_prom = zext i32 %call to i64, !dbg !4341
  %shl = shl i64 1, %sh_prom, !dbg !4341
  %and = and i64 %7, %shl, !dbg !4341
  %tobool10 = icmp eq i64 %and, 0, !dbg !4341
  br i1 %tobool10, label %if.then11, label %cleanup.cont93, !dbg !4342

if.then11:                                        ; preds = %if.else
  %idxprom12 = sext i32 %call to i64, !dbg !4343
  %bf.load14 = load i32, i32* %0, align 8, !dbg !4344
  %bf.lshr = lshr i32 %bf.load14, 16, !dbg !4344
  %bf.clear15 = and i32 %bf.lshr, 255, !dbg !4344
  %idxprom16 = zext i32 %bf.clear15 to i64, !dbg !4343
  %arrayidx17 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom12, i64 %idxprom16, !dbg !4343
  %8 = load i8, i8* %arrayidx17, align 1, !dbg !4343
  %conv = zext i8 %8 to i32, !dbg !4343
  %add = add nsw i32 %call, %conv, !dbg !4345
  call void @llvm.dbg.value(metadata i32 %add, metadata !4312, metadata !DIExpression()), !dbg !4346
  %9 = sext i32 %add to i64, !dbg !4347
  br label %while.cond, !dbg !4347

while.cond:                                       ; preds = %if.end87, %if.then11
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %if.end87 ], [ %idxprom12, %if.then11 ]
  %j.0 = phi i32 [ %j.4, %if.end87 ], [ undef, %if.then11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !4304, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !4311, metadata !DIExpression()), !dbg !4346
  %cmp18 = icmp slt i64 %indvars.iv6, %9, !dbg !4348
  br i1 %cmp18, label %while.body, label %cleanup.cont93.loopexit, !dbg !4347

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* @hard_regs_live, align 8, !dbg !4349
  %sh_prom20 = and i64 %indvars.iv6, 4294967295, !dbg !4349
  %shl21 = shl i64 1, %sh_prom20, !dbg !4349
  %and22 = and i64 %10, %shl21, !dbg !4349
  %tobool23 = icmp eq i64 %and22, 0, !dbg !4349
  br i1 %tobool23, label %if.end87, label %if.then24, !dbg !4352

if.then24:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata i8 0, metadata !4315, metadata !DIExpression()), !dbg !4346
  %arrayidx26 = getelementptr inbounds [53 x i32], [53 x i32]* @ira_hard_regno_cover_class, i64 0, i64 %indvars.iv6, !dbg !4353
  %11 = load i32, i32* %arrayidx26, align 4, !dbg !4353
  call void @llvm.dbg.value(metadata i32 %11, metadata !4313, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 0, metadata !4308, metadata !DIExpression()), !dbg !4346
  %idxprom27 = zext i32 %11 to i64, !dbg !4355
  br label %for.cond, !dbg !4358

for.cond:                                         ; preds = %for.inc, %if.then24
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then24 ], !dbg !4359
  %set_p.0 = phi i8 [ %set_p.1, %for.inc ], [ 0, %if.then24 ], !dbg !4360
  call void @llvm.dbg.value(metadata i8 %set_p.0, metadata !4315, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4308, metadata !DIExpression()), !dbg !4346
  %arrayidx30 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom27, i64 %indvars.iv, !dbg !4361
  %12 = load i32, i32* %arrayidx30, align 4, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %12, metadata !4314, metadata !DIExpression()), !dbg !4346
  %cmp31 = icmp eq i32 %12, 27, !dbg !4362
  br i1 %cmp31, label %for.end, label %for.body, !dbg !4363

for.body:                                         ; preds = %for.cond
  %idxprom33 = zext i32 %12 to i64, !dbg !4364
  %arrayidx34 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom33, !dbg !4364
  %13 = load i32, i32* %arrayidx34, align 4, !dbg !4366
  %dec = add nsw i32 %13, -1, !dbg !4366
  store i32 %dec, i32* %arrayidx34, align 4, !dbg !4366
  %arrayidx36 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom33, !dbg !4367
  %14 = load i32, i32* %arrayidx36, align 4, !dbg !4367
  %cmp37 = icmp sgt i32 %14, -1, !dbg !4369
  br i1 %cmp37, label %land.lhs.true, label %for.inc, !dbg !4370

land.lhs.true:                                    ; preds = %for.body
  %arrayidx42 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom33, !dbg !4371
  %15 = load i32, i32* %arrayidx42, align 4, !dbg !4371
  %cmp43 = icmp sgt i32 %dec, %15, !dbg !4372
  %spec.select = select i1 %cmp43, i8 %set_p.0, i8 1, !dbg !4373
  br label %for.inc, !dbg !4373

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %set_p.1 = phi i8 [ %set_p.0, %for.body ], [ %spec.select, %land.lhs.true ], !dbg !4360
  call void @llvm.dbg.value(metadata i8 %set_p.1, metadata !4315, metadata !DIExpression()), !dbg !4346
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !4374
  call void @llvm.dbg.value(metadata i32 undef, metadata !4308, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4346
  br label %for.cond, !dbg !4375, !llvm.loop !4376

for.end:                                          ; preds = %for.cond
  %set_p.0.lcssa = phi i8 [ %set_p.0, %for.cond ], !dbg !4360
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa, metadata !4315, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa, metadata !4315, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa, metadata !4315, metadata !DIExpression()), !dbg !4346
  %tobool47 = icmp eq i8 %set_p.0.lcssa, 0, !dbg !4378
  br i1 %tobool47, label %if.end86, label %if.then48, !dbg !4380

if.then48:                                        ; preds = %for.end
  %16 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4381
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %16) #7, !dbg !4381
  br label %for.cond49, !dbg !4381

for.cond49:                                       ; preds = %for.body55, %if.then48
  %j.1 = phi i32 [ %j.0, %if.then48 ], [ %j.2, %for.body55 ]
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !4311, metadata !DIExpression()), !dbg !4346
  %17 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4384
  %call50 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %17) #7, !dbg !4384
  %tobool52 = icmp eq i8 %call50, 0, !dbg !4384
  br i1 %tobool52, label %land.end, label %land.rhs, !dbg !4384

land.rhs:                                         ; preds = %for.cond49
  %18 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4384
  %call53 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %18) #7, !dbg !4384
  call void @llvm.dbg.value(metadata i32 %call53, metadata !4311, metadata !DIExpression()), !dbg !4346
  br label %land.end

land.end:                                         ; preds = %for.cond49, %land.rhs
  %j.2 = phi i32 [ %call53, %land.rhs ], [ %j.1, %for.cond49 ]
  %19 = phi i1 [ true, %land.rhs ], [ false, %for.cond49 ], !dbg !4386
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !4311, metadata !DIExpression()), !dbg !4346
  br i1 %19, label %for.body55, label %for.cond60.preheader, !dbg !4381

for.cond60.preheader:                             ; preds = %land.end
  %j.2.lcssa = phi i32 [ %j.2, %land.end ]
  call void @llvm.dbg.value(metadata i32 %j.2.lcssa, metadata !4311, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 %j.2.lcssa, metadata !4311, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 %j.2.lcssa, metadata !4311, metadata !DIExpression()), !dbg !4346
  br label %for.cond60, !dbg !4387

for.body55:                                       ; preds = %land.end
  %20 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !4389
  %idxprom56 = zext i32 %j.2 to i64, !dbg !4389
  %arrayidx57 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %20, i64 %idxprom56, !dbg !4389
  %21 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx57, align 8, !dbg !4389
  tail call fastcc void @update_allocno_pressure_excess_length(%struct.ira_allocno* %21) #7, !dbg !4390
  %22 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4384
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %22) #7, !dbg !4384
  br label %for.cond49, !dbg !4384, !llvm.loop !4391

for.cond60:                                       ; preds = %for.cond60.preheader, %for.inc83
  %indvars.iv4 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next5, %for.inc83 ], !dbg !4393
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !4308, metadata !DIExpression()), !dbg !4346
  %arrayidx64 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom27, i64 %indvars.iv4, !dbg !4394
  %23 = load i32, i32* %arrayidx64, align 4, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %23, metadata !4314, metadata !DIExpression()), !dbg !4346
  %cmp65 = icmp eq i32 %23, 27, !dbg !4396
  br i1 %cmp65, label %if.end86.loopexit, label %for.body67, !dbg !4387

for.body67:                                       ; preds = %for.cond60
  %idxprom68 = zext i32 %23 to i64, !dbg !4397
  %arrayidx69 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom68, !dbg !4397
  %24 = load i32, i32* %arrayidx69, align 4, !dbg !4397
  %cmp70 = icmp sgt i32 %24, -1, !dbg !4399
  br i1 %cmp70, label %land.lhs.true72, label %for.inc83, !dbg !4400

land.lhs.true72:                                  ; preds = %for.body67
  %arrayidx74 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom68, !dbg !4401
  %25 = load i32, i32* %arrayidx74, align 4, !dbg !4401
  %arrayidx76 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom68, !dbg !4402
  %26 = load i32, i32* %arrayidx76, align 4, !dbg !4402
  %cmp77 = icmp sgt i32 %25, %26, !dbg !4403
  br i1 %cmp77, label %for.inc83, label %if.then79, !dbg !4404

if.then79:                                        ; preds = %land.lhs.true72
  store i32 -1, i32* %arrayidx69, align 4, !dbg !4405
  br label %for.inc83, !dbg !4406

for.inc83:                                        ; preds = %land.lhs.true72, %for.body67, %if.then79
  %indvars.iv.next5 = add nuw i64 %indvars.iv4, 1, !dbg !4407
  call void @llvm.dbg.value(metadata i32 undef, metadata !4308, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4346
  br label %for.cond60, !dbg !4408, !llvm.loop !4409

if.end86.loopexit:                                ; preds = %for.cond60
  br label %if.end86, !dbg !4411

if.end86:                                         ; preds = %if.end86.loopexit, %for.end
  %j.3 = phi i32 [ %j.0, %for.end ], [ %j.2.lcssa, %if.end86.loopexit ]
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !4311, metadata !DIExpression()), !dbg !4346
  %27 = trunc i64 %indvars.iv6 to i32, !dbg !4411
  tail call fastcc void @make_regno_dead(i32 %27) #7, !dbg !4411
  br label %if.end87, !dbg !4412

if.end87:                                         ; preds = %while.body, %if.end86
  %j.4 = phi i32 [ %j.3, %if.end86 ], [ %j.0, %while.body ]
  call void @llvm.dbg.value(metadata i32 %j.4, metadata !4311, metadata !DIExpression()), !dbg !4346
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 1, !dbg !4413
  call void @llvm.dbg.value(metadata i32 undef, metadata !4304, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4316
  br label %while.cond, !dbg !4347, !llvm.loop !4414

cleanup.cont93.loopexit:                          ; preds = %while.cond
  br label %cleanup.cont93, !dbg !4416

cleanup.cont93:                                   ; preds = %cleanup.cont93.loopexit, %if.else
  ret void, !dbg !4416
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_allocno_live(%struct.ira_allocno* %a) unnamed_addr #4 !dbg !4417 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a, metadata !4419, metadata !DIExpression()), !dbg !4425
  %0 = load i32*, i32** @allocno_saved_at_call, align 8, !dbg !4426
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 0, !dbg !4427
  %1 = load i32, i32* %num, align 8, !dbg !4427
  %idxprom = sext i32 %1 to i64, !dbg !4426
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !4426
  store i32 0, i32* %arrayidx, align 4, !dbg !4428
  %2 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4429
  %3 = load i32, i32* %num, align 8, !dbg !4431
  %call = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %2, i32 %3) #7, !dbg !4432
  %tobool = icmp eq i8 %call, 0, !dbg !4432
  br i1 %tobool, label %if.end61, label %if.then, !dbg !4433

if.then:                                          ; preds = %entry
  %cover_class2 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 9, !dbg !4434
  %4 = load i32, i32* %cover_class2, align 8, !dbg !4434
  call void @llvm.dbg.value(metadata i32 %4, metadata !4422, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i8 0, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i32 0, metadata !4420, metadata !DIExpression()), !dbg !4425
  %idxprom3 = zext i32 %4 to i64, !dbg !4436
  %mode = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 2, !dbg !4439
  br label %for.cond, !dbg !4441

for.cond:                                         ; preds = %for.inc, %if.then
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc ], [ 0, %if.then ], !dbg !4442
  %set_p.0 = phi i8 [ %set_p.1, %for.inc ], [ 0, %if.then ], !dbg !4443
  call void @llvm.dbg.value(metadata i8 %set_p.0, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !4420, metadata !DIExpression()), !dbg !4425
  %arrayidx6 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom3, i64 %indvars.iv2, !dbg !4444
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !4444
  call void @llvm.dbg.value(metadata i32 %5, metadata !4423, metadata !DIExpression()), !dbg !4425
  %cmp = icmp eq i32 %5, 27, !dbg !4445
  br i1 %cmp, label %for.end, label %for.body, !dbg !4446

for.body:                                         ; preds = %for.cond
  %idxprom7 = zext i32 %5 to i64, !dbg !4447
  %6 = load i32, i32* %mode, align 8, !dbg !4448
  %idxprom9 = zext i32 %6 to i64, !dbg !4447
  %arrayidx10 = getelementptr inbounds [27 x [87 x i32]], [27 x [87 x i32]]* @ira_reg_class_nregs, i64 0, i64 %idxprom7, i64 %idxprom9, !dbg !4447
  %7 = load i32, i32* %arrayidx10, align 4, !dbg !4447
  %arrayidx12 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom7, !dbg !4449
  %8 = load i32, i32* %arrayidx12, align 4, !dbg !4450
  %sub = sub nsw i32 %8, %7, !dbg !4450
  store i32 %sub, i32* %arrayidx12, align 4, !dbg !4450
  %arrayidx14 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom7, !dbg !4451
  %9 = load i32, i32* %arrayidx14, align 4, !dbg !4451
  %cmp15 = icmp sgt i32 %9, -1, !dbg !4453
  br i1 %cmp15, label %land.lhs.true, label %for.inc, !dbg !4454

land.lhs.true:                                    ; preds = %for.body
  %arrayidx19 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom7, !dbg !4455
  %10 = load i32, i32* %arrayidx19, align 4, !dbg !4455
  %cmp20 = icmp sgt i32 %sub, %10, !dbg !4456
  %spec.select = select i1 %cmp20, i8 %set_p.0, i8 1, !dbg !4457
  br label %for.inc, !dbg !4457

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %set_p.1 = phi i8 [ %set_p.0, %for.body ], [ %spec.select, %land.lhs.true ], !dbg !4443
  call void @llvm.dbg.value(metadata i8 %set_p.1, metadata !4424, metadata !DIExpression()), !dbg !4425
  %indvars.iv.next3 = add nuw i64 %indvars.iv2, 1, !dbg !4458
  call void @llvm.dbg.value(metadata i32 undef, metadata !4420, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4425
  br label %for.cond, !dbg !4459, !llvm.loop !4460

for.end:                                          ; preds = %for.cond
  %set_p.0.lcssa = phi i8 [ %set_p.0, %for.cond ], !dbg !4443
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i8 %set_p.0.lcssa, metadata !4424, metadata !DIExpression()), !dbg !4425
  %tobool22 = icmp eq i8 %set_p.0.lcssa, 0, !dbg !4462
  br i1 %tobool22, label %if.end61, label %if.then23, !dbg !4464

if.then23:                                        ; preds = %for.end
  %11 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4465
  tail call fastcc void @sparseset_iter_init(%struct.sparseset_def* %11) #7, !dbg !4465
  br label %for.cond24, !dbg !4465

for.cond24:                                       ; preds = %for.body29, %if.then23
  %j.0 = phi i32 [ undef, %if.then23 ], [ %j.1, %for.body29 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !4421, metadata !DIExpression()), !dbg !4425
  %12 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4468
  %call25 = tail call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %12) #7, !dbg !4468
  %tobool26 = icmp eq i8 %call25, 0, !dbg !4468
  br i1 %tobool26, label %land.end, label %land.rhs, !dbg !4468

land.rhs:                                         ; preds = %for.cond24
  %13 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4468
  %call27 = tail call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %13) #7, !dbg !4468
  call void @llvm.dbg.value(metadata i32 %call27, metadata !4421, metadata !DIExpression()), !dbg !4425
  br label %land.end

land.end:                                         ; preds = %for.cond24, %land.rhs
  %j.1 = phi i32 [ %call27, %land.rhs ], [ %j.0, %for.cond24 ]
  %14 = phi i1 [ true, %land.rhs ], [ false, %for.cond24 ], !dbg !4470
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !4421, metadata !DIExpression()), !dbg !4425
  br i1 %14, label %for.body29, label %for.cond34.preheader, !dbg !4465

for.cond34.preheader:                             ; preds = %land.end
  br label %for.cond34, !dbg !4471

for.body29:                                       ; preds = %land.end
  %15 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !4473
  %idxprom30 = zext i32 %j.1 to i64, !dbg !4473
  %arrayidx31 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %15, i64 %idxprom30, !dbg !4473
  %16 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx31, align 8, !dbg !4473
  tail call fastcc void @update_allocno_pressure_excess_length(%struct.ira_allocno* %16) #7, !dbg !4474
  %17 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4468
  tail call fastcc void @sparseset_iter_next(%struct.sparseset_def* %17) #7, !dbg !4468
  br label %for.cond24, !dbg !4468, !llvm.loop !4475

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc57
  %indvars.iv = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next, %for.inc57 ], !dbg !4477
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4420, metadata !DIExpression()), !dbg !4425
  %arrayidx38 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom3, i64 %indvars.iv, !dbg !4478
  %18 = load i32, i32* %arrayidx38, align 4, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %18, metadata !4423, metadata !DIExpression()), !dbg !4425
  %cmp39 = icmp eq i32 %18, 27, !dbg !4480
  br i1 %cmp39, label %if.end61.loopexit, label %for.body41, !dbg !4471

for.body41:                                       ; preds = %for.cond34
  %idxprom42 = zext i32 %18 to i64, !dbg !4481
  %arrayidx43 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom42, !dbg !4481
  %19 = load i32, i32* %arrayidx43, align 4, !dbg !4481
  %cmp44 = icmp sgt i32 %19, -1, !dbg !4483
  br i1 %cmp44, label %land.lhs.true46, label %for.inc57, !dbg !4484

land.lhs.true46:                                  ; preds = %for.body41
  %arrayidx48 = getelementptr inbounds [27 x i32], [27 x i32]* @curr_reg_pressure, i64 0, i64 %idxprom42, !dbg !4485
  %20 = load i32, i32* %arrayidx48, align 4, !dbg !4485
  %arrayidx50 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom42, !dbg !4486
  %21 = load i32, i32* %arrayidx50, align 4, !dbg !4486
  %cmp51 = icmp sgt i32 %20, %21, !dbg !4487
  br i1 %cmp51, label %for.inc57, label %if.then53, !dbg !4488

if.then53:                                        ; preds = %land.lhs.true46
  store i32 -1, i32* %arrayidx43, align 4, !dbg !4489
  br label %for.inc57, !dbg !4490

for.inc57:                                        ; preds = %land.lhs.true46, %for.body41, %if.then53
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !4491
  call void @llvm.dbg.value(metadata i32 undef, metadata !4420, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4425
  br label %for.cond34, !dbg !4492, !llvm.loop !4493

if.end61.loopexit:                                ; preds = %for.cond34
  br label %if.end61, !dbg !4495

if.end61:                                         ; preds = %if.end61.loopexit, %for.end, %entry
  %22 = load %struct.sparseset_def*, %struct.sparseset_def** @allocnos_live, align 8, !dbg !4495
  %23 = load i32, i32* %num, align 8, !dbg !4496
  tail call void @sparseset_clear_bit(%struct.sparseset_def* %22, i32 %23) #6, !dbg !4497
  ret void, !dbg !4498
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_allocno_pressure_excess_length(%struct.ira_allocno* %a) unnamed_addr #4 !dbg !4499 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a, metadata !4501, metadata !DIExpression()), !dbg !4507
  %cover_class1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 9, !dbg !4508
  %0 = load i32, i32* %cover_class1, align 8, !dbg !4508
  call void @llvm.dbg.value(metadata i32 %0, metadata !4504, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 0, metadata !4503, metadata !DIExpression()), !dbg !4507
  %idxprom = zext i32 %0 to i64, !dbg !4509
  %live_ranges = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 20, !dbg !4512
  %1 = load i32, i32* @curr_point, align 4, !dbg !4512
  %excess_pressure_points_num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 14, !dbg !4512
  br label %for.cond, !dbg !4514

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !4515
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4503, metadata !DIExpression()), !dbg !4507
  %arrayidx3 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_super_classes, i64 0, i64 %idxprom, i64 %indvars.iv, !dbg !4516
  %2 = load i32, i32* %arrayidx3, align 4, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %2, metadata !4505, metadata !DIExpression()), !dbg !4507
  %cmp = icmp eq i32 %2, 27, !dbg !4517
  br i1 %cmp, label %for.end, label %for.body, !dbg !4518

for.body:                                         ; preds = %for.cond
  %idxprom4 = zext i32 %2 to i64, !dbg !4519
  %arrayidx5 = getelementptr inbounds [27 x i32], [27 x i32]* @high_pressure_start_point, i64 0, i64 %idxprom4, !dbg !4519
  %3 = load i32, i32* %arrayidx5, align 4, !dbg !4519
  %cmp6 = icmp slt i32 %3, 0, !dbg !4521
  br i1 %cmp6, label %for.inc, label %if.end, !dbg !4522

if.end:                                           ; preds = %for.body
  %4 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %live_ranges, align 8, !dbg !4523
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %4, metadata !4506, metadata !DIExpression()), !dbg !4507
  %start9 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %4, i64 0, i32 1, !dbg !4524
  %5 = load i32, i32* %start9, align 8, !dbg !4524
  %cmp10 = icmp sgt i32 %3, %5, !dbg !4525
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !4526

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !4526

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4526

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ], !dbg !4526
  call void @llvm.dbg.value(metadata i32 %cond, metadata !4502, metadata !DIExpression()), !dbg !4507
  %sub = sub nsw i32 %1, %cond, !dbg !4527
  %add = add nsw i32 %sub, 1, !dbg !4528
  %6 = load i32, i32* %excess_pressure_points_num, align 4, !dbg !4529
  %add14 = add nsw i32 %6, %add, !dbg !4529
  store i32 %add14, i32* %excess_pressure_points_num, align 4, !dbg !4529
  br label %for.inc, !dbg !4530

for.inc:                                          ; preds = %for.body, %cond.end
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !4531
  call void @llvm.dbg.value(metadata i32 undef, metadata !4503, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4507
  br label %for.cond, !dbg !4532, !llvm.loop !4533

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4535
}

declare dso_local void @sparseset_clear_bit(%struct.sparseset_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @check_and_make_def_conflict(i32 %alt, i32 %def, i32 %def_cl) unnamed_addr #4 !dbg !4536 {
entry:
  call void @llvm.dbg.value(metadata i32 %alt, metadata !4540, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 %def, metadata !4541, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 %def_cl, metadata !4542, metadata !DIExpression()), !dbg !4554
  %idxprom = sext i32 %def to i64, !dbg !4555
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom, !dbg !4555
  %0 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !4555
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4549, metadata !DIExpression()), !dbg !4554
  %cmp = icmp eq i32 %def_cl, 0, !dbg !4556
  br i1 %cmp, label %cleanup.cont139, label %if.end, !dbg !4558

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !4559
  %bf.load = load i32, i32* %1, align 8, !dbg !4559
  %bf.clear = and i32 %bf.load, 65535, !dbg !4559
  %cmp1 = icmp eq i32 %bf.clear, 39, !dbg !4561
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4562

if.then2:                                         ; preds = %if.end
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4563
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**, !dbg !4563
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4563
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !4549, metadata !DIExpression()), !dbg !4554
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !4564
  %bf.load5.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !4566
  br label %if.end4, !dbg !4567

if.end4:                                          ; preds = %if.then2, %if.end
  %bf.load5 = phi i32 [ %bf.load5.pre, %if.then2 ], [ %bf.load, %if.end ], !dbg !4566
  %dreg.0 = phi %struct.rtx_def* [ %2, %if.then2 ], [ %0, %if.end ], !dbg !4554
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dreg.0, metadata !4549, metadata !DIExpression()), !dbg !4554
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !4566
  %cmp7 = icmp eq i32 %bf.clear6, 37, !dbg !4566
  br i1 %cmp7, label %lor.lhs.false, label %cleanup.cont139, !dbg !4568

lor.lhs.false:                                    ; preds = %if.end4
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dreg.0) #7, !dbg !4569
  %cmp8 = icmp ult i32 %call, 53, !dbg !4570
  br i1 %cmp8, label %cleanup.cont139, label %if.end10, !dbg !4571

if.end10:                                         ; preds = %lor.lhs.false
  %3 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4572
  %call11 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dreg.0) #7, !dbg !4573
  %idxprom12 = zext i32 %call11 to i64, !dbg !4572
  %arrayidx13 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %3, i64 %idxprom12, !dbg !4572
  %4 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx13, align 8, !dbg !4572
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %4, metadata !4545, metadata !DIExpression()), !dbg !4554
  %cover_class = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 9, !dbg !4574
  %5 = load i32, i32* %cover_class, align 8, !dbg !4574
  call void @llvm.dbg.value(metadata i32 %5, metadata !4547, metadata !DIExpression()), !dbg !4554
  %call14 = tail call i32 @reg_classes_intersect_p(i32 %5, i32 %def_cl) #6, !dbg !4575
  %tobool = icmp eq i32 %call14, 0, !dbg !4575
  br i1 %tobool, label %cleanup.cont139, label %for.cond.preheader, !dbg !4577

for.cond.preheader:                               ; preds = %if.end10
  %idxprom30 = sext i32 %alt to i64, !dbg !4578
  %6 = zext i32 %def to i64, !dbg !4580
  br label %for.cond, !dbg !4580

for.cond:                                         ; preds = %for.cond.preheader, %cleanup
  %indvars.iv30 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next31, %cleanup ], !dbg !4581
  %advance_p.0 = phi i8 [ 1, %for.cond.preheader ], [ %advance_p.2, %cleanup ], !dbg !4581
  call void @llvm.dbg.value(metadata i64 %indvars.iv30, metadata !4543, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i8 %advance_p.0, metadata !4548, metadata !DIExpression()), !dbg !4554
  %7 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !4582
  %conv = sext i8 %7 to i64, !dbg !4583
  %8 = sext i8 %7 to i64, !dbg !4584
  %cmp17 = icmp slt i64 %indvars.iv30, %8, !dbg !4584
  br i1 %cmp17, label %for.body, label %cleanup.cont139.loopexit, !dbg !4580

for.body:                                         ; preds = %for.cond
  %cmp19 = icmp eq i64 %indvars.iv30, %6, !dbg !4585
  br i1 %cmp19, label %cleanup, label %lor.lhs.false21, !dbg !4587

lor.lhs.false21:                                  ; preds = %for.body
  %arrayidx23 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv30, !dbg !4588
  %9 = load i32, i32* %arrayidx23, align 4, !dbg !4588
  %cmp24 = icmp eq i32 %9, 1, !dbg !4589
  br i1 %cmp24, label %cleanup, label %if.end27, !dbg !4590

if.end27:                                         ; preds = %lor.lhs.false21
  %anything_ok = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv30, i64 %idxprom30, i32 5, !dbg !4591
  %bf.load32 = load i8, i8* %anything_ok, align 8, !dbg !4591
  %tobool33 = icmp slt i8 %bf.load32, 0, !dbg !4592
  br i1 %tobool33, label %if.end39, label %if.else, !dbg !4593

if.else:                                          ; preds = %if.end27
  %cl = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv30, i64 %idxprom30, i32 1, !dbg !4594
  %10 = load i32, i32* %cl, align 8, !dbg !4594
  call void @llvm.dbg.value(metadata i32 %10, metadata !4546, metadata !DIExpression()), !dbg !4554
  br label %if.end39

if.end39:                                         ; preds = %if.end27, %if.else
  %use_cl.0 = phi i32 [ %10, %if.else ], [ 26, %if.end27 ], !dbg !4578
  call void @llvm.dbg.value(metadata i32 %use_cl.0, metadata !4546, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 0, metadata !4550, metadata !DIExpression()), !dbg !4595
  %11 = add nuw nsw i64 %indvars.iv30, 1, !dbg !4596
  %12 = add nsw i64 %indvars.iv30, -1, !dbg !4600
  %13 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !4601
  %conv41 = sext i8 %13 to i32, !dbg !4601
  %sub = add nsw i64 %conv, -1, !dbg !4602
  %cmp53 = icmp slt i64 %indvars.iv30, %sub, !dbg !4602
  %arrayidx56 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv30, !dbg !4602
  %cmp70 = icmp eq i64 %indvars.iv30, 0, !dbg !4602
  %arrayidx75 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %12, !dbg !4602
  br i1 %cmp53, label %if.end39.split.us, label %if.end39.if.end39.split_crit_edge, !dbg !4603

if.end39.if.end39.split_crit_edge:                ; preds = %if.end39
  br i1 %cmp70, label %if.end39.split.split.us, label %if.end39.split.if.end39.split.split_crit_edge, !dbg !4603

if.end39.split.us:                                ; preds = %if.end39
  %14 = sext i8 %13 to i64, !dbg !4603
  br label %for.cond40.us, !dbg !4603

for.cond40.us:                                    ; preds = %for.inc.us, %if.end39.split.us
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc.us ], [ 0, %if.end39.split.us ], !dbg !4604
  call void @llvm.dbg.value(metadata i64 %indvars.iv28, metadata !4550, metadata !DIExpression()), !dbg !4595
  %cmp42.us = icmp slt i64 %indvars.iv28, %14, !dbg !4605
  br i1 %cmp42.us, label %for.body44.us, label %for.end.us-lcssa.us, !dbg !4606

for.body44.us:                                    ; preds = %for.cond40.us
  %matches.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv30, i64 %indvars.iv28, i32 3, !dbg !4607
  %15 = load i32, i32* %matches.us, align 16, !dbg !4607
  %cmp49.us = icmp eq i32 %15, %def, !dbg !4608
  br i1 %cmp49.us, label %for.end.us-lcssa.us, label %lor.lhs.false51.us, !dbg !4609

lor.lhs.false51.us:                               ; preds = %for.body44.us
  %16 = load i8*, i8** %arrayidx56, align 8, !dbg !4610
  %17 = load i8, i8* %16, align 1, !dbg !4610
  %cmp59.us = icmp eq i8 %17, 37, !dbg !4611
  br i1 %cmp59.us, label %land.lhs.true61.us, label %lor.lhs.false69.us, !dbg !4612

land.lhs.true61.us:                               ; preds = %lor.lhs.false51.us
  %matches66.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %11, i64 %indvars.iv28, i32 3, !dbg !4613
  %18 = load i32, i32* %matches66.us, align 16, !dbg !4613
  %cmp67.us = icmp eq i32 %18, %def, !dbg !4614
  br i1 %cmp67.us, label %for.end.us-lcssa.us, label %lor.lhs.false69.us, !dbg !4615

lor.lhs.false69.us:                               ; preds = %land.lhs.true61.us, %lor.lhs.false51.us
  br i1 %cmp70, label %for.inc.us, label %land.lhs.true72.us, !dbg !4616

land.lhs.true72.us:                               ; preds = %lor.lhs.false69.us
  %19 = load i8*, i8** %arrayidx75, align 8, !dbg !4617
  %20 = load i8, i8* %19, align 1, !dbg !4617
  %cmp78.us = icmp eq i8 %20, 37, !dbg !4618
  br i1 %cmp78.us, label %land.lhs.true80.us, label %for.inc.us, !dbg !4619

land.lhs.true80.us:                               ; preds = %land.lhs.true72.us
  %matches86.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %12, i64 %indvars.iv28, i32 3, !dbg !4620
  %21 = load i32, i32* %matches86.us, align 16, !dbg !4620
  %cmp87.us = icmp eq i32 %21, %def, !dbg !4621
  br i1 %cmp87.us, label %for.end.us-lcssa.us, label %for.inc.us, !dbg !4622

for.inc.us:                                       ; preds = %land.lhs.true80.us, %land.lhs.true72.us, %lor.lhs.false69.us
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !4623
  call void @llvm.dbg.value(metadata i32 undef, metadata !4550, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4595
  br label %for.cond40.us, !dbg !4624, !llvm.loop !4625

for.end.us-lcssa.us:                              ; preds = %land.lhs.true80.us, %land.lhs.true61.us, %for.body44.us, %for.cond40.us
  %indvars.iv28.lcssa = phi i64 [ %indvars.iv28, %land.lhs.true80.us ], [ %indvars.iv28, %land.lhs.true61.us ], [ %indvars.iv28, %for.body44.us ], [ %indvars.iv28, %for.cond40.us ], !dbg !4604
  call void @llvm.dbg.value(metadata i64 %indvars.iv28.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %indvars.iv28.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %indvars.iv28.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %indvars.iv28.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  br label %for.end, !dbg !4627

if.end39.split.if.end39.split.split_crit_edge:    ; preds = %if.end39.if.end39.split_crit_edge
  %22 = sext i8 %13 to i64, !dbg !4603
  br label %for.cond40, !dbg !4603

if.end39.split.split.us:                          ; preds = %if.end39.if.end39.split_crit_edge
  %23 = sext i8 %13 to i64, !dbg !4603
  br label %for.cond40.us1, !dbg !4603

for.cond40.us1:                                   ; preds = %lor.lhs.false51.us8, %if.end39.split.split.us
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %lor.lhs.false51.us8 ], [ 0, %if.end39.split.split.us ], !dbg !4604
  call void @llvm.dbg.value(metadata i64 %indvars.iv26, metadata !4550, metadata !DIExpression()), !dbg !4595
  %cmp42.us3 = icmp slt i64 %indvars.iv26, %23, !dbg !4605
  br i1 %cmp42.us3, label %for.body44.us4, label %for.end.us-lcssa.us-lcssa.us, !dbg !4606

for.body44.us4:                                   ; preds = %for.cond40.us1
  %matches.us6 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv30, i64 %indvars.iv26, i32 3, !dbg !4607
  %24 = load i32, i32* %matches.us6, align 16, !dbg !4607
  %cmp49.us7 = icmp eq i32 %24, %def, !dbg !4608
  br i1 %cmp49.us7, label %for.end.us-lcssa.us-lcssa.us, label %lor.lhs.false51.us8, !dbg !4609

lor.lhs.false51.us8:                              ; preds = %for.body44.us4
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !4623
  call void @llvm.dbg.value(metadata i32 undef, metadata !4550, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4595
  br label %for.cond40.us1, !dbg !4624, !llvm.loop !4625

for.end.us-lcssa.us-lcssa.us:                     ; preds = %for.body44.us4, %for.cond40.us1
  %indvars.iv26.lcssa = phi i64 [ %indvars.iv26, %for.body44.us4 ], [ %indvars.iv26, %for.cond40.us1 ], !dbg !4604
  call void @llvm.dbg.value(metadata i64 %indvars.iv26.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %indvars.iv26.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  br label %for.end.us-lcssa, !dbg !4627

for.cond40:                                       ; preds = %for.inc, %if.end39.split.if.end39.split.split_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end39.split.if.end39.split.split_crit_edge ], !dbg !4604
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4550, metadata !DIExpression()), !dbg !4595
  %cmp42 = icmp slt i64 %indvars.iv, %22, !dbg !4605
  br i1 %cmp42, label %for.body44, label %for.end.us-lcssa.us-lcssa, !dbg !4606

for.body44:                                       ; preds = %for.cond40
  %matches = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv30, i64 %indvars.iv, i32 3, !dbg !4607
  %25 = load i32, i32* %matches, align 16, !dbg !4607
  %cmp49 = icmp eq i32 %25, %def, !dbg !4608
  br i1 %cmp49, label %for.end.us-lcssa.us-lcssa, label %lor.lhs.false51, !dbg !4609

lor.lhs.false51:                                  ; preds = %for.body44
  %26 = load i8*, i8** %arrayidx75, align 8, !dbg !4617
  %27 = load i8, i8* %26, align 1, !dbg !4617
  %cmp78 = icmp eq i8 %27, 37, !dbg !4618
  br i1 %cmp78, label %land.lhs.true80, label %for.inc, !dbg !4619

land.lhs.true80:                                  ; preds = %lor.lhs.false51
  %matches86 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %12, i64 %indvars.iv, i32 3, !dbg !4620
  %28 = load i32, i32* %matches86, align 16, !dbg !4620
  %cmp87 = icmp eq i32 %28, %def, !dbg !4621
  br i1 %cmp87, label %for.end.us-lcssa.us-lcssa, label %for.inc, !dbg !4622

for.inc:                                          ; preds = %lor.lhs.false51, %land.lhs.true80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4623
  call void @llvm.dbg.value(metadata i32 undef, metadata !4550, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4595
  br label %for.cond40, !dbg !4624, !llvm.loop !4625

for.end.us-lcssa.us-lcssa:                        ; preds = %for.body44, %land.lhs.true80, %for.cond40
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.body44 ], [ %indvars.iv, %land.lhs.true80 ], [ %indvars.iv, %for.cond40 ], !dbg !4604
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  br label %for.end.us-lcssa, !dbg !4627

for.end.us-lcssa:                                 ; preds = %for.end.us-lcssa.us-lcssa.us, %for.end.us-lcssa.us-lcssa
  %alt1.0.lcssa.ph.in = phi i64 [ %indvars.iv.lcssa, %for.end.us-lcssa.us-lcssa ], [ %indvars.iv26.lcssa, %for.end.us-lcssa.us-lcssa.us ]
  br label %for.end, !dbg !4627

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %alt1.0.lcssa.in = phi i64 [ %alt1.0.lcssa.ph.in, %for.end.us-lcssa ], [ %indvars.iv28.lcssa, %for.end.us-lcssa.us ]
  %alt1.0.lcssa = trunc i64 %alt1.0.lcssa.in to i32, !dbg !4604
  call void @llvm.dbg.value(metadata i32 %alt1.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i32 %alt1.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i32 %alt1.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i32 %alt1.0.lcssa, metadata !4550, metadata !DIExpression()), !dbg !4595
  %cmp92 = icmp slt i32 %alt1.0.lcssa, %conv41, !dbg !4629
  br i1 %cmp92, label %cleanup, label %if.end95, !dbg !4630

if.end95:                                         ; preds = %for.end
  %29 = trunc i64 %indvars.iv30 to i32, !dbg !4631
  %call96 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(%struct.rtx_def* %dreg.0, i32 %def_cl, i32 %29, i32 %use_cl.0, i8 zeroext %advance_p.0) #7, !dbg !4631
  call void @llvm.dbg.value(metadata i8 %call96, metadata !4548, metadata !DIExpression()), !dbg !4554
  %matches101 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv30, i64 %idxprom30, i32 3, !dbg !4632
  %30 = load i32, i32* %matches101, align 16, !dbg !4632
  call void @llvm.dbg.value(metadata i32 %30, metadata !4544, metadata !DIExpression()), !dbg !4554
  %cmp102 = icmp sgt i32 %30, -1, !dbg !4634
  br i1 %cmp102, label %if.then104, label %cleanup, !dbg !4635

if.then104:                                       ; preds = %if.end95
  %cmp105 = icmp eq i32 %30, %def, !dbg !4636
  br i1 %cmp105, label %cleanup, label %if.end108, !dbg !4639

if.end108:                                        ; preds = %if.then104
  %idxprom109 = sext i32 %30 to i64, !dbg !4640
  %anything_ok113 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom109, i64 %idxprom30, i32 5, !dbg !4642
  %bf.load114 = load i8, i8* %anything_ok113, align 8, !dbg !4642
  %tobool117 = icmp slt i8 %bf.load114, 0, !dbg !4640
  br i1 %tobool117, label %if.end125, label %if.else119, !dbg !4643

if.else119:                                       ; preds = %if.end108
  %cl124 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom109, i64 %idxprom30, i32 1, !dbg !4644
  %31 = load i32, i32* %cl124, align 8, !dbg !4644
  call void @llvm.dbg.value(metadata i32 %31, metadata !4546, metadata !DIExpression()), !dbg !4554
  br label %if.end125

if.end125:                                        ; preds = %if.end108, %if.else119
  %use_cl.1 = phi i32 [ %31, %if.else119 ], [ 26, %if.end108 ], !dbg !4645
  call void @llvm.dbg.value(metadata i32 %use_cl.1, metadata !4546, metadata !DIExpression()), !dbg !4554
  %32 = trunc i64 %indvars.iv30 to i32, !dbg !4646
  %call126 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(%struct.rtx_def* %dreg.0, i32 %def_cl, i32 %32, i32 %use_cl.1, i8 zeroext %call96) #7, !dbg !4646
  call void @llvm.dbg.value(metadata i8 %call126, metadata !4548, metadata !DIExpression()), !dbg !4554
  br label %cleanup, !dbg !4647

cleanup:                                          ; preds = %if.end95, %if.end125, %if.then104, %for.end, %for.body, %lor.lhs.false21
  %advance_p.2 = phi i8 [ %advance_p.0, %lor.lhs.false21 ], [ %advance_p.0, %for.body ], [ %advance_p.0, %for.end ], [ %call96, %if.then104 ], [ %call126, %if.end125 ], [ %call96, %if.end95 ], !dbg !4554
  call void @llvm.dbg.value(metadata i8 %advance_p.2, metadata !4548, metadata !DIExpression()), !dbg !4554
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !4648
  call void @llvm.dbg.value(metadata i32 undef, metadata !4543, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4554
  br label %for.cond, !dbg !4649, !llvm.loop !4650

cleanup.cont139.loopexit:                         ; preds = %for.cond
  br label %cleanup.cont139, !dbg !4652

cleanup.cont139:                                  ; preds = %cleanup.cont139.loopexit, %if.end10, %entry, %lor.lhs.false, %if.end4
  ret void, !dbg !4652
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_and_make_def_use_conflict(%struct.rtx_def* %dreg, i32 %def_cl, i32 %use, i32 %use_cl, i8 zeroext %advance_p) unnamed_addr #4 !dbg !4653 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dreg, metadata !4657, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i32 %def_cl, metadata !4658, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i32 %use, metadata !4659, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i32 %use_cl, metadata !4660, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i8 %advance_p, metadata !4661, metadata !DIExpression()), !dbg !4662
  %call = tail call i32 @reg_classes_intersect_p(i32 %def_cl, i32 %use_cl) #6, !dbg !4663
  %tobool = icmp eq i32 %call, 0, !dbg !4663
  br i1 %tobool, label %return, label %if.end, !dbg !4665

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %use to i64, !dbg !4666
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom, !dbg !4666
  %0 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !4666
  %call1 = tail call fastcc zeroext i8 @make_pseudo_conflict(%struct.rtx_def* %0, i32 %use_cl, %struct.rtx_def* %dreg, i8 zeroext %advance_p) #7, !dbg !4667
  call void @llvm.dbg.value(metadata i8 %call1, metadata !4661, metadata !DIExpression()), !dbg !4662
  %1 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !4668
  %conv = sext i8 %1 to i32, !dbg !4670
  %sub = add nsw i32 %conv, -1, !dbg !4671
  %cmp = icmp sgt i32 %sub, %use, !dbg !4672
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !4673

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom, !dbg !4674
  %2 = load i8*, i8** %arrayidx4, align 8, !dbg !4674
  %3 = load i8, i8* %2, align 1, !dbg !4674
  %cmp7 = icmp eq i8 %3, 37, !dbg !4675
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !4676

if.then9:                                         ; preds = %land.lhs.true
  %add = add nsw i32 %use, 1, !dbg !4677
  %idxprom10 = sext i32 %add to i64, !dbg !4678
  %arrayidx11 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom10, !dbg !4678
  %4 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8, !dbg !4678
  %call12 = tail call fastcc zeroext i8 @make_pseudo_conflict(%struct.rtx_def* %4, i32 %use_cl, %struct.rtx_def* %dreg, i8 zeroext %call1) #7, !dbg !4679
  call void @llvm.dbg.value(metadata i8 %call12, metadata !4661, metadata !DIExpression()), !dbg !4662
  br label %if.end13, !dbg !4680

if.end13:                                         ; preds = %if.then9, %land.lhs.true, %if.end
  %advance_p.addr.0 = phi i8 [ %call12, %if.then9 ], [ %call1, %land.lhs.true ], [ %call1, %if.end ], !dbg !4662
  call void @llvm.dbg.value(metadata i8 %advance_p.addr.0, metadata !4661, metadata !DIExpression()), !dbg !4662
  %cmp14 = icmp sgt i32 %use, 0, !dbg !4681
  br i1 %cmp14, label %land.lhs.true16, label %return, !dbg !4683

land.lhs.true16:                                  ; preds = %if.end13
  %sub17 = add nsw i32 %use, -1, !dbg !4684
  %idxprom18 = sext i32 %sub17 to i64, !dbg !4685
  %arrayidx19 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom18, !dbg !4685
  %5 = load i8*, i8** %arrayidx19, align 8, !dbg !4685
  %6 = load i8, i8* %5, align 1, !dbg !4685
  %cmp22 = icmp eq i8 %6, 37, !dbg !4686
  br i1 %cmp22, label %if.then24, label %return, !dbg !4687

if.then24:                                        ; preds = %land.lhs.true16
  %arrayidx27 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom18, !dbg !4688
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx27, align 8, !dbg !4688
  %call28 = tail call fastcc zeroext i8 @make_pseudo_conflict(%struct.rtx_def* %7, i32 %use_cl, %struct.rtx_def* %dreg, i8 zeroext %advance_p.addr.0) #7, !dbg !4689
  call void @llvm.dbg.value(metadata i8 %call28, metadata !4661, metadata !DIExpression()), !dbg !4662
  br label %return, !dbg !4690

return:                                           ; preds = %entry, %if.end13, %land.lhs.true16, %if.then24
  %retval.0 = phi i8 [ %advance_p, %entry ], [ %call28, %if.then24 ], [ %advance_p.addr.0, %land.lhs.true16 ], [ %advance_p.addr.0, %if.end13 ], !dbg !4662
  ret i8 %retval.0, !dbg !4691
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @make_pseudo_conflict(%struct.rtx_def* %reg, i32 %cl, %struct.rtx_def* %dreg, i8 zeroext %advance_p) unnamed_addr #4 !dbg !4692 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4696, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %cl, metadata !4697, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dreg, metadata !4698, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i8 %advance_p, metadata !4699, metadata !DIExpression()), !dbg !4701
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !4702
  %bf.load = load i32, i32* %0, align 8, !dbg !4702
  %bf.clear = and i32 %bf.load, 65535, !dbg !4702
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !4704
  br i1 %cmp, label %if.then, label %if.end, !dbg !4705

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4706
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4706
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4706
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4696, metadata !DIExpression()), !dbg !4701
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !4707
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !4709
  br label %if.end, !dbg !4710

if.end:                                           ; preds = %if.then, %entry
  %bf.load1 = phi i32 [ %bf.load1.pre, %if.then ], [ %bf.load, %entry ], !dbg !4709
  %reg.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %reg, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.addr.0, metadata !4696, metadata !DIExpression()), !dbg !4701
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !4709
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !4709
  br i1 %cmp3, label %lor.lhs.false, label %cleanup, !dbg !4711

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.addr.0) #7, !dbg !4712
  %cmp4 = icmp ult i32 %call, 53, !dbg !4713
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !4714

if.end6:                                          ; preds = %lor.lhs.false
  %2 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4715
  %call7 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.addr.0) #7, !dbg !4716
  %idxprom = zext i32 %call7 to i64, !dbg !4715
  %arrayidx8 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %2, i64 %idxprom, !dbg !4715
  %3 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx8, align 8, !dbg !4715
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !4700, metadata !DIExpression()), !dbg !4701
  %cover_class = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 9, !dbg !4717
  %4 = load i32, i32* %cover_class, align 8, !dbg !4717
  %call9 = tail call i32 @reg_classes_intersect_p(i32 %cl, i32 %4) #6, !dbg !4719
  %tobool = icmp eq i32 %call9, 0, !dbg !4719
  br i1 %tobool, label %cleanup, label %if.end11, !dbg !4720

if.end11:                                         ; preds = %if.end6
  %tobool12 = icmp eq i8 %advance_p, 0, !dbg !4721
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4723

if.then13:                                        ; preds = %if.end11
  %5 = load i32, i32* @curr_point, align 4, !dbg !4724
  %inc = add nsw i32 %5, 1, !dbg !4724
  store i32 %inc, i32* @curr_point, align 4, !dbg !4724
  br label %if.end14, !dbg !4725

if.end14:                                         ; preds = %if.end11, %if.then13
  tail call fastcc void @mark_reg_live(%struct.rtx_def* %reg.addr.0) #7, !dbg !4726
  tail call fastcc void @mark_reg_live(%struct.rtx_def* %dreg) #7, !dbg !4727
  tail call fastcc void @mark_reg_dead(%struct.rtx_def* %reg.addr.0) #7, !dbg !4728
  tail call fastcc void @mark_reg_dead(%struct.rtx_def* %dreg) #7, !dbg !4729
  br label %cleanup, !dbg !4730

cleanup:                                          ; preds = %if.end6, %if.end, %lor.lhs.false, %if.end14
  %retval.0 = phi i8 [ 0, %if.end14 ], [ %advance_p, %lor.lhs.false ], [ %advance_p, %if.end ], [ %advance_p, %if.end6 ], !dbg !4701
  ret i8 %retval.0, !dbg !4731
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !4732 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !4736, metadata !DIExpression()), !dbg !4738
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !4739
  store i32 0, i32* %index, align 8, !dbg !4740
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !4741
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !4742
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !4743
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !4743
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !4743
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !4744 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !4750, metadata !DIExpression()), !dbg !4751
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4752
  %tobool = icmp eq i8 %call, 0, !dbg !4752
  br i1 %tobool, label %if.then, label %if.else, !dbg !4754

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4755
  br label %return, !dbg !4757

if.else:                                          ; preds = %entry
  br label %return, !dbg !4758

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !4760
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !4760
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !4760
  ret i8 %retval.0, !dbg !4761
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !4762 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !4767, metadata !DIExpression()), !dbg !4768
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !4769
  %0 = load i32, i32* %index, align 8, !dbg !4769
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !4769
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4769
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !4769
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4769
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4769

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !4769
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4769
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !4769
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4769
  br label %cond.end, !dbg !4769

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4769
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4769
  %cmp = icmp ult i32 %0, %call2, !dbg !4769
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !4769

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4769
  br label %cond.end5, !dbg !4769

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !4770
  %inc = add i32 %5, 1, !dbg !4770
  store i32 %inc, i32* %index, align 8, !dbg !4770
  ret void, !dbg !4771
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4772 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4777
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4777
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4777

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4777
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4777
  br label %cond.end, !dbg !4777

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4777
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4777
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4778
  %conv3 = zext i1 %cmp to i8, !dbg !4779
  ret i8 %conv3, !dbg !4780
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4781 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4786
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4786
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4786

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4786
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4786
  br label %cond.end, !dbg !4786

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4786
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4786
  ret %struct.edge_def* %call2, !dbg !4787
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4788 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4794, metadata !DIExpression()), !dbg !4795
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4796
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4796

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4796
  %0 = load i32, i32* %num, align 8, !dbg !4796
  br label %cond.end, !dbg !4796

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4796
  ret i32 %cond, !dbg !4796
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4797 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4802
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4802

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4802
  br label %cond.end, !dbg !4802

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4803
  ret %struct.VEC_edge_gc* %0, !dbg !4804
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4805 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4809, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4810, metadata !DIExpression()), !dbg !4811
  br label %land.end, !dbg !4812

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4812
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4812
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4812
  ret %struct.edge_def* %0, !dbg !4812
}

declare dso_local %struct.bitmap_head_def* @ira_allocate_bitmap() local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local void @ira_free_bitmap(%struct.bitmap_head_def*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1952, !1953, !1954}
!llvm.ident = !{!1955}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ira_finish_point_ranges", scope: !2, file: !3, line: 57, type: !606, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !592, globals: !1917, nameTableKind: None)
!3 = !DIFile(filename: "ira-lives.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !37, !165, !172, !181, !185, !191, !196, !200, !219, !226, !233, !427, !570}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !6, line: 1188, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!9 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !38, line: 7, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!40 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!45 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!46 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!47 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!48 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!49 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!50 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!51 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!52 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!53 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!54 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!55 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!56 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!57 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!58 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!59 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!60 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!61 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!62 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!63 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!64 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!65 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!66 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!67 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!68 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!69 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!70 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!71 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!72 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!73 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!74 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!75 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!76 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!77 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!78 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!79 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!80 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!81 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!82 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!83 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!84 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!85 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!86 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!87 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!88 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!89 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!90 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!91 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!92 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!93 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!94 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!95 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!96 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!97 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!98 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!99 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!100 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!101 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!102 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!103 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!104 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!105 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!106 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!107 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!108 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!109 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!110 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!111 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!112 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!113 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!114 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!115 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!116 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!117 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!118 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!119 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!120 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!121 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!122 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!123 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!124 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!125 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!126 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!127 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!128 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!132 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!133 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!134 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!137 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!138 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!139 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!140 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!141 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!142 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!143 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!144 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!145 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!146 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!147 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!148 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!149 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!150 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!151 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!152 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!153 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!154 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!158 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!163 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!164 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !166, line: 30, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!170 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!171 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !173, line: 31, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!176 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!179 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!180 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !173, line: 91, baseType: !7, size: 32, elements: !182)
!182 = !{!183, !184}
!183 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !186, line: 363, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!190 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !186, line: 355, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!195 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !6, line: 474, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199}
!198 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !201, line: 280, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!203 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!205 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!206 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!207 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !201, line: 1817, baseType: !7, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !201, line: 1805, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231, !232}
!228 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !201, line: 39, baseType: !7, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!235 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!236 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!237 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!238 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!239 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!240 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!241 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!242 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!243 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!244 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!245 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!246 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!247 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!248 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!249 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!250 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!251 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!252 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!253 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!254 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!255 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!256 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!257 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!258 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!259 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!260 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!261 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!262 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!263 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!264 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!265 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!266 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!267 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!268 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!269 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!270 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!271 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!272 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!273 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!274 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!275 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!276 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!277 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!278 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!279 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!280 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!281 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!282 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!283 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!284 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!285 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!286 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!287 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!288 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!289 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!290 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!291 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!292 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!293 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!294 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!295 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!296 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!297 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!298 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!299 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!300 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!301 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!302 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!303 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!304 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!305 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!306 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!307 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!308 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!309 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!310 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!311 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!312 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!313 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!314 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!315 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!316 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!317 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!318 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!319 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!320 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!321 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!322 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!323 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!324 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!325 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!326 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!327 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!328 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!329 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!330 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!331 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!332 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!333 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!334 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!335 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!336 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!337 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!338 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!339 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!340 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!341 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!342 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!343 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!344 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!345 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!346 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!347 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!348 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!349 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!350 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!351 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!352 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!353 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!354 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!355 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!356 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!357 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!358 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!359 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!360 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!361 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!362 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!363 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!364 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!365 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!366 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!367 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!368 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!369 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!370 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!371 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!372 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!373 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!374 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!375 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!376 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!377 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!378 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!379 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!380 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!381 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!382 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!383 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!384 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!385 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!386 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!387 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!388 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!389 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!390 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!391 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!392 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!393 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!394 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!395 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!396 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!397 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!398 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!399 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!400 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!401 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!402 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!403 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!404 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!405 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!406 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!407 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!408 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!409 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!410 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!411 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!412 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!413 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!414 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!415 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!416 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!417 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!418 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!419 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!420 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!421 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!422 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!423 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!424 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!425 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!426 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!427 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !428, line: 45, baseType: !7, size: 32, elements: !429)
!428 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!430 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!431 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!432 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!433 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!434 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!435 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!436 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!437 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!438 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!439 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!440 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!441 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!442 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!443 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!444 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!445 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!446 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!447 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!448 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!449 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!450 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!451 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!452 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!453 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!454 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!455 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!456 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!457 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!458 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!459 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!460 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!461 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!462 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!463 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!464 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!465 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!466 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!467 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!468 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!469 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!470 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!471 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!472 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!473 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!474 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!475 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!476 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!477 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!478 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!479 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!480 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!481 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!482 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!483 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!484 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!485 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!486 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!487 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!488 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!489 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!490 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!491 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!492 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!493 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!494 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!495 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!496 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!497 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!498 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!499 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!500 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!501 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!502 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!503 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!504 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!505 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!506 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!507 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!508 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!509 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!510 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!511 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!512 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!513 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!514 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!515 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!516 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!517 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!518 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!519 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!520 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!521 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!522 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!523 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!524 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!525 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!526 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!527 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!528 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!529 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!530 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!531 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!532 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!533 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!534 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!535 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!536 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!537 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!538 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!539 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!540 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!541 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!542 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!543 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!544 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!545 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!546 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!547 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!548 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!549 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!550 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!551 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!552 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!553 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!554 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!555 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!556 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!557 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!558 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!559 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!560 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!561 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!562 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!563 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!564 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!565 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!566 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!567 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!568 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!569 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!570 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !571, line: 36, baseType: !7, size: 32, elements: !572)
!571 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!573 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!574 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!575 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!576 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!577 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!578 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!579 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!580 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!581 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!582 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!583 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!584 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!585 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!586 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!587 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!588 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!589 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!590 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!591 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!592 = !{!593, !594, !595, !596, !599, !600, !602, !427, !37, !605, !606, !622, !7, !1908, !570, !1916}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!595 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !603, line: 42, baseType: !604)
!603 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!604 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocno_live_range_t", file: !608, line: 62, baseType: !609)
!608 = !DIFile(filename: "./ira-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_live_range", file: !608, line: 199, size: 320, elements: !611)
!611 = !{!612, !1903, !1904, !1905, !1906, !1907}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "allocno", scope: !610, file: !608, line: 202, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_t", file: !608, line: 63, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno", file: !608, line: 232, size: 1984, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !1815, !1816, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !615, file: !608, line: 237, baseType: !595, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !615, file: !608, line: 239, baseType: !595, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !615, file: !608, line: 242, baseType: !37, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hard_regno", scope: !615, file: !608, line: 249, baseType: !595, size: 32, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !615, file: !608, line: 251, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !623, line: 50, baseType: !624)
!623 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !428, line: 240, size: 384, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !625, file: !428, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !625, file: !428, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !625, file: !428, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !625, file: !428, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !625, file: !428, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !625, file: !428, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !625, file: !428, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !625, file: !428, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !625, file: !428, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !625, file: !428, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !625, file: !428, line: 321, baseType: !638, size: 320, offset: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !428, line: 315, size: 320, elements: !639)
!639 = !{!640, !1782, !1784, !1813, !1814}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !638, file: !428, line: 316, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 64, elements: !657)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !428, line: 183, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !428, line: 166, size: 64, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !659, !660, !672, !675, !736, !1760, !1761, !1772, !1779}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !643, file: !428, line: 168, baseType: !595, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !643, file: !428, line: 169, baseType: !7, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !643, file: !428, line: 170, baseType: !600, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !643, file: !428, line: 171, baseType: !622, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !643, file: !428, line: 172, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !623, line: 53, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !428, line: 359, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !652, file: !428, line: 360, baseType: !595, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !652, file: !428, line: 361, baseType: !656, size: 64, offset: 64)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 64, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 1)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !643, file: !428, line: 173, baseType: !37, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !643, file: !428, line: 174, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !428, line: 133, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 115, size: 32, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !662, file: !428, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !662, file: !428, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !662, file: !428, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !662, file: !428, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !662, file: !428, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !662, file: !428, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !662, file: !428, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !662, file: !428, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !643, file: !428, line: 175, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !428, line: 175, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !643, file: !428, line: 176, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !678, line: 75, size: 256, elements: !679)
!678 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!679 = !{!680, !694, !695, !696}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !677, file: !678, line: 76, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !678, line: 68, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !678, line: 63, size: 320, elements: !684)
!684 = !{!685, !687, !688, !689}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !678, line: 64, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !683, file: !678, line: 65, baseType: !686, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !683, file: !678, line: 66, baseType: !7, size: 32, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !683, file: !678, line: 67, baseType: !690, size: 128, offset: 192)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 128, elements: !692)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !678, line: 29, baseType: !604)
!692 = !{!693}
!693 = !DISubrange(count: 2)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !677, file: !678, line: 77, baseType: !681, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !677, file: !678, line: 78, baseType: !7, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !677, file: !678, line: 79, baseType: !697, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !678, line: 49, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !678, line: 45, size: 832, elements: !700)
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !699, file: !678, line: 46, baseType: !686, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !699, file: !678, line: 47, baseType: !676, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !699, file: !678, line: 48, baseType: !704, size: 704, offset: 128)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !705, line: 164, size: 704, elements: !706)
!705 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!706 = !{!707, !709, !719, !720, !721, !722, !723, !724, !728, !732, !733, !734, !735}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !704, file: !705, line: 166, baseType: !708, size: 64)
!708 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !704, file: !705, line: 167, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !705, line: 157, size: 192, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !711, file: !705, line: 159, baseType: !597, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !711, file: !705, line: 160, baseType: !710, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !711, file: !705, line: 161, baseType: !716, size: 32, offset: 128)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 32, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 4)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !704, file: !705, line: 168, baseType: !597, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !704, file: !705, line: 169, baseType: !597, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !704, file: !705, line: 170, baseType: !597, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !704, file: !705, line: 171, baseType: !708, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !704, file: !705, line: 172, baseType: !595, size: 32, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !704, file: !705, line: 176, baseType: !725, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!710, !599, !708}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !704, file: !705, line: 177, baseType: !729, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !599, !710}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !704, file: !705, line: 178, baseType: !599, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !704, file: !705, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !704, file: !705, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !704, file: !705, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !643, file: !428, line: 177, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !623, line: 56, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !201, line: 3371, size: 1792, elements: !740)
!740 = !{!741, !774, !780, !791, !810, !821, !826, !833, !839, !852, !864, !902, !907, !935, !943, !944, !949, !958, !964, !969, !973, !977, !1399, !1448, !1454, !1460, !1467, !1490, !1504, !1521, !1533, !1555, !1570, !1742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !739, file: !201, line: 3372, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !201, line: 360, size: 64, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !742, file: !201, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !742, file: !201, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !742, file: !201, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !742, file: !201, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !742, file: !201, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !742, file: !201, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !742, file: !201, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !742, file: !201, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !742, file: !201, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !742, file: !201, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !742, file: !201, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !742, file: !201, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !742, file: !201, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !742, file: !201, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !742, file: !201, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !742, file: !201, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !742, file: !201, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !742, file: !201, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !742, file: !201, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !742, file: !201, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !742, file: !201, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !742, file: !201, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !742, file: !201, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !742, file: !201, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !742, file: !201, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !742, file: !201, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !742, file: !201, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !742, file: !201, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !742, file: !201, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !742, file: !201, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !739, file: !201, line: 3373, baseType: !775, size: 192)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !201, line: 402, size: 192, elements: !776)
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !775, file: !201, line: 403, baseType: !742, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !775, file: !201, line: 404, baseType: !737, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !201, line: 405, baseType: !737, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !739, file: !201, line: 3374, baseType: !781, size: 320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !201, line: 1384, size: 320, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !201, line: 1385, baseType: !775, size: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !781, file: !201, line: 1386, baseType: !785, size: 128, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !786, line: 58, baseType: !787)
!786 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !786, line: 54, size: 128, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !787, file: !786, line: 56, baseType: !604, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !787, file: !786, line: 57, baseType: !708, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !739, file: !201, line: 3375, baseType: !792, size: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !201, line: 1397, size: 256, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !201, line: 1398, baseType: !775, size: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !792, file: !201, line: 1399, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !798, line: 52, size: 256, elements: !799)
!798 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!799 = !{!800, !801, !802, !803, !804, !805, !806}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !797, file: !798, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !797, file: !798, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !797, file: !798, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !797, file: !798, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !797, file: !798, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !797, file: !798, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !797, file: !798, line: 62, baseType: !807, size: 192, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 192, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 3)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !739, file: !201, line: 3376, baseType: !811, size: 256)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !201, line: 1408, size: 256, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !811, file: !201, line: 1409, baseType: !775, size: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !811, file: !201, line: 1410, baseType: !815, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !817, line: 27, size: 192, elements: !818)
!817 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !816, file: !817, line: 29, baseType: !785, size: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !816, file: !817, line: 30, baseType: !37, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !739, file: !201, line: 3377, baseType: !822, size: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !201, line: 1437, size: 256, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !822, file: !201, line: 1438, baseType: !775, size: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !822, file: !201, line: 1439, baseType: !737, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !739, file: !201, line: 3378, baseType: !827, size: 256)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !201, line: 1418, size: 256, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !827, file: !201, line: 1419, baseType: !775, size: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !827, file: !201, line: 1420, baseType: !595, size: 32, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !827, file: !201, line: 1421, baseType: !832, size: 8, offset: 224)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 8, elements: !657)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !739, file: !201, line: 3379, baseType: !834, size: 320)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !201, line: 1428, size: 320, elements: !835)
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !201, line: 1429, baseType: !775, size: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !834, file: !201, line: 1430, baseType: !737, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !834, file: !201, line: 1431, baseType: !737, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !739, file: !201, line: 3380, baseType: !840, size: 320)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !201, line: 1460, size: 320, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !840, file: !201, line: 1461, baseType: !775, size: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !840, file: !201, line: 1462, baseType: !844, size: 128, offset: 192)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !845, line: 31, size: 128, elements: !846)
!845 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!846 = !{!847, !850, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !844, file: !845, line: 32, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !844, file: !845, line: 33, baseType: !7, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !844, file: !845, line: 34, baseType: !7, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !739, file: !201, line: 3381, baseType: !853, size: 384)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !201, line: 2507, size: 384, elements: !854)
!854 = !{!855, !856, !861, !862, !863}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !853, file: !201, line: 2508, baseType: !775, size: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !853, file: !201, line: 2509, baseType: !857, size: 32, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !858, line: 58, baseType: !859)
!858 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !860, line: 44, baseType: !7)
!860 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!861 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !853, file: !201, line: 2510, baseType: !7, size: 32, offset: 224)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !201, line: 2511, baseType: !737, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !853, file: !201, line: 2512, baseType: !737, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !739, file: !201, line: 3382, baseType: !865, size: 896)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !201, line: 2652, size: 896, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !865, file: !201, line: 2653, baseType: !853, size: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !865, file: !201, line: 2654, baseType: !737, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !865, file: !201, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !865, file: !201, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !865, file: !201, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !865, file: !201, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !865, file: !201, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !865, file: !201, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !865, file: !201, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !865, file: !201, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !865, file: !201, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !865, file: !201, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !865, file: !201, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !865, file: !201, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !865, file: !201, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !865, file: !201, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !865, file: !201, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !865, file: !201, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !865, file: !201, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !865, file: !201, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !865, file: !201, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !865, file: !201, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !865, file: !201, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !865, file: !201, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !865, file: !201, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !865, file: !201, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !865, file: !201, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !865, file: !201, line: 2703, baseType: !7, size: 32, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !865, file: !201, line: 2705, baseType: !737, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !865, file: !201, line: 2706, baseType: !737, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !865, file: !201, line: 2707, baseType: !737, size: 64, offset: 704)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !865, file: !201, line: 2708, baseType: !737, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !865, file: !201, line: 2711, baseType: !900, size: 64, offset: 832)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !201, line: 2711, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !739, file: !201, line: 3383, baseType: !903, size: 960)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !201, line: 2756, size: 960, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !903, file: !201, line: 2757, baseType: !865, size: 896)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !903, file: !201, line: 2758, baseType: !622, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !739, file: !201, line: 3384, baseType: !908, size: 1472)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !201, line: 3114, size: 1472, elements: !909)
!909 = !{!910, !931, !932, !933, !934}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !908, file: !201, line: 3115, baseType: !911, size: 1216)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !201, line: 2984, size: 1216, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !911, file: !201, line: 2985, baseType: !903, size: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !911, file: !201, line: 2986, baseType: !737, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !911, file: !201, line: 2987, baseType: !737, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !911, file: !201, line: 2988, baseType: !737, size: 64, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !911, file: !201, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !911, file: !201, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !911, file: !201, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !911, file: !201, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !911, file: !201, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !911, file: !201, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !911, file: !201, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !911, file: !201, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !911, file: !201, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !911, file: !201, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !911, file: !201, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !911, file: !201, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !911, file: !201, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !911, file: !201, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !908, file: !201, line: 3117, baseType: !737, size: 64, offset: 1216)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !908, file: !201, line: 3119, baseType: !737, size: 64, offset: 1280)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !908, file: !201, line: 3121, baseType: !737, size: 64, offset: 1344)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !908, file: !201, line: 3123, baseType: !737, size: 64, offset: 1408)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !739, file: !201, line: 3385, baseType: !936, size: 1088)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !201, line: 2874, size: 1088, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !936, file: !201, line: 2875, baseType: !903, size: 960)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !936, file: !201, line: 2876, baseType: !622, size: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !936, file: !201, line: 2877, baseType: !941, size: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !201, line: 2856, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !739, file: !201, line: 3386, baseType: !911, size: 1216)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !739, file: !201, line: 3387, baseType: !945, size: 1280)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !201, line: 3093, size: 1280, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !945, file: !201, line: 3094, baseType: !911, size: 1216)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !945, file: !201, line: 3095, baseType: !941, size: 64, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !739, file: !201, line: 3388, baseType: !950, size: 1216)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !201, line: 2824, size: 1216, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !950, file: !201, line: 2825, baseType: !865, size: 896)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !950, file: !201, line: 2827, baseType: !737, size: 64, offset: 896)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !950, file: !201, line: 2828, baseType: !737, size: 64, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !950, file: !201, line: 2829, baseType: !737, size: 64, offset: 1024)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !950, file: !201, line: 2830, baseType: !737, size: 64, offset: 1088)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !950, file: !201, line: 2831, baseType: !737, size: 64, offset: 1152)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !739, file: !201, line: 3389, baseType: !959, size: 1024)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !201, line: 2850, size: 1024, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !959, file: !201, line: 2851, baseType: !903, size: 960)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !959, file: !201, line: 2852, baseType: !595, size: 32, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !959, file: !201, line: 2853, baseType: !595, size: 32, offset: 992)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !739, file: !201, line: 3390, baseType: !965, size: 1024)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !201, line: 2857, size: 1024, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !965, file: !201, line: 2858, baseType: !903, size: 960)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !965, file: !201, line: 2859, baseType: !941, size: 64, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !739, file: !201, line: 3391, baseType: !970, size: 960)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !201, line: 2862, size: 960, elements: !971)
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !970, file: !201, line: 2863, baseType: !903, size: 960)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !739, file: !201, line: 3392, baseType: !974, size: 1472)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !201, line: 3304, size: 1472, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !974, file: !201, line: 3305, baseType: !908, size: 1472)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !739, file: !201, line: 3393, baseType: !978, size: 1792)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !201, line: 3248, size: 1792, elements: !979)
!979 = !{!980, !981, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !978, file: !201, line: 3249, baseType: !908, size: 1472)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !978, file: !201, line: 3251, baseType: !982, size: 64, offset: 1472)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !984, line: 463, size: 1152, elements: !985)
!984 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!985 = !{!986, !1150, !1310, !1311, !1314, !1322, !1323, !1324, !1325, !1326, !1327, !1351, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !983, file: !984, line: 464, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !166, line: 194, size: 384, elements: !989)
!989 = !{!990, !1039, !1052, !1066, !1118, !1131}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !988, file: !166, line: 197, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !166, line: 182, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !166, line: 116, size: 704, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1027, !1036, !1037, !1038}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !993, file: !166, line: 119, baseType: !992, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !993, file: !166, line: 122, baseType: !992, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !993, file: !166, line: 123, baseType: !992, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !993, file: !166, line: 126, baseType: !595, size: 32, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !993, file: !166, line: 129, baseType: !165, size: 32, offset: 224)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !993, file: !166, line: 165, baseType: !1001, size: 192, offset: 256)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !166, line: 132, size: 192, elements: !1002)
!1002 = !{!1003, !1016, !1022}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1001, file: !166, line: 137, baseType: !1004, size: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !166, line: 133, size: 128, elements: !1005)
!1005 = !{!1006, !1015}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1004, file: !166, line: 135, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !166, line: 93, size: 320, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1008, file: !166, line: 96, baseType: !1007, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1008, file: !166, line: 97, baseType: !1007, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1008, file: !166, line: 101, baseType: !737, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1008, file: !166, line: 106, baseType: !737, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1008, file: !166, line: 111, baseType: !737, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1004, file: !166, line: 136, baseType: !1007, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1001, file: !166, line: 151, baseType: !1017, size: 192)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !166, line: 139, size: 192, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1017, file: !166, line: 141, baseType: !737, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1017, file: !166, line: 145, baseType: !737, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1017, file: !166, line: 150, baseType: !595, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1001, file: !166, line: 164, baseType: !1023, size: 128)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !166, line: 153, size: 128, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1023, file: !166, line: 161, baseType: !737, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1023, file: !166, line: 163, baseType: !857, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !993, file: !166, line: 168, baseType: !1028, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !166, line: 67, size: 320, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1029, file: !166, line: 70, baseType: !1028, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1029, file: !166, line: 73, baseType: !992, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1029, file: !166, line: 78, baseType: !737, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1029, file: !166, line: 85, baseType: !622, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1029, file: !166, line: 88, baseType: !595, size: 32, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !993, file: !166, line: 173, baseType: !622, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !993, file: !166, line: 173, baseType: !622, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !993, file: !166, line: 177, baseType: !594, size: 8, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !988, file: !166, line: 200, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !166, line: 185, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !166, line: 185, size: 128, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1042, file: !166, line: 185, baseType: !1045, size: 128)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !166, line: 184, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !166, line: 184, size: 128, elements: !1047)
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1046, file: !166, line: 184, baseType: !7, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1046, file: !166, line: 184, baseType: !7, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1046, file: !166, line: 184, baseType: !1051, size: 64, offset: 64)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 64, elements: !657)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !988, file: !166, line: 203, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !166, line: 189, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !166, line: 189, size: 128, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1055, file: !166, line: 189, baseType: !1058, size: 128)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !166, line: 188, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !166, line: 188, size: 128, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1059, file: !166, line: 188, baseType: !7, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1059, file: !166, line: 188, baseType: !7, size: 32, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1059, file: !166, line: 188, baseType: !1064, size: 64, offset: 64)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 64, elements: !657)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !166, line: 180, baseType: !1028)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !988, file: !166, line: 207, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1068, line: 144, baseType: !1069)
!1068 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1068, line: 100, size: 896, elements: !1071)
!1071 = !{!1072, !1080, !1085, !1090, !1092, !1095, !1096, !1097, !1098, !1099, !1104, !1106, !1107, !1112, !1117}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1070, file: !1068, line: 102, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1068, line: 52, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1068, line: 47, baseType: !7)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1070, file: !1068, line: 105, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1068, line: 59, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!595, !1078, !1078}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1070, file: !1068, line: 108, baseType: !1086, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1068, line: 63, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !599}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1070, file: !1068, line: 111, baseType: !1091, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1070, file: !1068, line: 114, baseType: !1093, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1094, line: 46, baseType: !604)
!1094 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1070, file: !1068, line: 117, baseType: !1093, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1070, file: !1068, line: 120, baseType: !1093, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1070, file: !1068, line: 124, baseType: !7, size: 32, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1070, file: !1068, line: 128, baseType: !7, size: 32, offset: 480)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1070, file: !1068, line: 131, baseType: !1100, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1068, line: 75, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!599, !1093, !1093}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1070, file: !1068, line: 132, baseType: !1105, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1068, line: 78, baseType: !1087)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1070, file: !1068, line: 135, baseType: !599, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1070, file: !1068, line: 136, baseType: !1108, size: 64, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1068, line: 82, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!599, !599, !1093, !1093}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1070, file: !1068, line: 137, baseType: !1113, size: 64, offset: 768)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1068, line: 83, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !599, !599}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1070, file: !1068, line: 141, baseType: !7, size: 32, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !988, file: !166, line: 211, baseType: !1119, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !201, line: 183, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !201, line: 183, size: 128, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1121, file: !201, line: 183, baseType: !1124, size: 128)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !201, line: 182, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !201, line: 182, size: 128, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1125, file: !201, line: 182, baseType: !7, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1125, file: !201, line: 182, baseType: !7, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1125, file: !201, line: 182, baseType: !1130, size: 64, offset: 64)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 64, elements: !657)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !988, file: !166, line: 220, baseType: !1132, size: 64, offset: 320)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !166, line: 217, size: 64, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1132, file: !166, line: 218, baseType: !1119, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1132, file: !166, line: 219, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1138, line: 29, baseType: !1139)
!1138 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1138, line: 29, size: 96, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1139, file: !1138, line: 29, baseType: !1142, size: 96)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1138, line: 27, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1138, line: 27, size: 96, elements: !1144)
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1143, file: !1138, line: 27, baseType: !7, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1143, file: !1138, line: 27, baseType: !7, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1143, file: !1138, line: 27, baseType: !1148, size: 8, offset: 64)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 8, elements: !657)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1138, line: 26, baseType: !594)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !983, file: !984, line: 467, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !186, line: 374, size: 640, elements: !1153)
!1153 = !{!1154, !1285, !1286, !1299, !1300, !1301, !1302, !1303, !1304, !1306, !1308, !1309}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1152, file: !186, line: 377, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !623, line: 111, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !186, line: 217, size: 832, elements: !1158)
!1158 = !{!1159, !1194, !1195, !1196, !1255, !1259, !1260, !1261, !1279, !1280, !1281, !1282, !1283, !1284}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1157, file: !186, line: 219, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !186, line: 151, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !186, line: 151, size: 128, elements: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1162, file: !186, line: 151, baseType: !1165, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !186, line: 150, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !186, line: 150, size: 128, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1166, file: !186, line: 150, baseType: !7, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1166, file: !186, line: 150, baseType: !7, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1166, file: !186, line: 150, baseType: !1171, size: 64, offset: 64)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 64, elements: !657)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !623, line: 108, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !186, line: 122, size: 512, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1174, file: !186, line: 124, baseType: !1156, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1174, file: !186, line: 125, baseType: !1156, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1174, file: !186, line: 131, baseType: !1179, size: 64, offset: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !186, line: 128, size: 64, elements: !1180)
!1180 = !{!1181, !1185}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1179, file: !186, line: 129, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !623, line: 66, baseType: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !623, line: 65, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1179, file: !186, line: 130, baseType: !622, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1174, file: !186, line: 134, baseType: !599, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1174, file: !186, line: 137, baseType: !737, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1174, file: !186, line: 138, baseType: !857, size: 32, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1174, file: !186, line: 142, baseType: !7, size: 32, offset: 352)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !186, line: 144, baseType: !595, size: 32, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1174, file: !186, line: 145, baseType: !595, size: 32, offset: 416)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1174, file: !186, line: 146, baseType: !1193, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !186, line: 119, baseType: !708)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1157, file: !186, line: 220, baseType: !1160, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1157, file: !186, line: 223, baseType: !599, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1157, file: !186, line: 226, baseType: !1197, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !173, line: 100, size: 1216, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1209, !1210, !1211, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1245, !1253, !1254}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1198, file: !173, line: 102, baseType: !595, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1198, file: !173, line: 105, baseType: !7, size: 32, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1198, file: !173, line: 108, baseType: !1156, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1198, file: !173, line: 111, baseType: !1156, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1198, file: !173, line: 114, baseType: !1205, size: 64, offset: 192)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !173, line: 41, size: 64, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1205, file: !173, line: 42, baseType: !172, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1205, file: !173, line: 43, baseType: !7, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1198, file: !173, line: 117, baseType: !7, size: 32, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1198, file: !173, line: 120, baseType: !7, size: 32, offset: 288)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1198, file: !173, line: 123, baseType: !1212, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !173, line: 87, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !173, line: 87, size: 128, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1214, file: !173, line: 87, baseType: !1217, size: 128)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !173, line: 85, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !173, line: 85, size: 128, elements: !1219)
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1218, file: !173, line: 85, baseType: !7, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1218, file: !173, line: 85, baseType: !7, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1218, file: !173, line: 85, baseType: !1223, size: 64, offset: 64)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1224, size: 64, elements: !657)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !173, line: 84, baseType: !1197)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1198, file: !173, line: 126, baseType: !1197, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1198, file: !173, line: 129, baseType: !1197, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1198, file: !173, line: 132, baseType: !599, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1198, file: !173, line: 139, baseType: !737, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1198, file: !173, line: 143, baseType: !785, size: 128, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1198, file: !173, line: 146, baseType: !785, size: 128, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1198, file: !173, line: 148, baseType: !594, size: 8, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1198, file: !173, line: 149, baseType: !594, size: 8, offset: 904)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1198, file: !173, line: 153, baseType: !181, size: 32, offset: 928)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1198, file: !173, line: 156, baseType: !1235, size: 64, offset: 960)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !173, line: 48, size: 320, elements: !1237)
!1237 = !{!1238, !1242, !1243, !1244}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1236, file: !173, line: 50, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !623, line: 58, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !623, line: 57, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1236, file: !173, line: 59, baseType: !785, size: 128, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1236, file: !173, line: 64, baseType: !594, size: 8, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1236, file: !173, line: 67, baseType: !1235, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1198, file: !173, line: 159, baseType: !1246, size: 64, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !173, line: 72, size: 256, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1247, file: !173, line: 74, baseType: !1173, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1247, file: !173, line: 77, baseType: !1246, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !173, line: 78, baseType: !1246, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1247, file: !173, line: 81, baseType: !1246, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1198, file: !173, line: 162, baseType: !594, size: 8, offset: 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1198, file: !173, line: 166, baseType: !737, size: 64, offset: 1152)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1157, file: !186, line: 229, baseType: !1256, size: 128, offset: 256)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 128, elements: !692)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !186, line: 229, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1157, file: !186, line: 232, baseType: !1156, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1157, file: !186, line: 233, baseType: !1156, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1157, file: !186, line: 238, baseType: !1262, size: 64, offset: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !186, line: 235, size: 64, elements: !1263)
!1263 = !{!1264, !1270}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1262, file: !186, line: 236, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !186, line: 273, size: 128, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1266, file: !186, line: 275, baseType: !1182, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1266, file: !186, line: 278, baseType: !1182, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1262, file: !186, line: 237, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !186, line: 259, size: 320, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1272, file: !186, line: 261, baseType: !622, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1272, file: !186, line: 262, baseType: !622, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1272, file: !186, line: 266, baseType: !622, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1272, file: !186, line: 267, baseType: !622, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1272, file: !186, line: 270, baseType: !595, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1157, file: !186, line: 241, baseType: !1193, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1157, file: !186, line: 244, baseType: !595, size: 32, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1157, file: !186, line: 247, baseType: !595, size: 32, offset: 672)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1157, file: !186, line: 250, baseType: !595, size: 32, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1157, file: !186, line: 253, baseType: !595, size: 32, offset: 736)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !186, line: 256, baseType: !595, size: 32, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1152, file: !186, line: 378, baseType: !1155, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1152, file: !186, line: 381, baseType: !1287, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !186, line: 282, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !186, line: 282, size: 128, elements: !1290)
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1289, file: !186, line: 282, baseType: !1292, size: 128)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !186, line: 281, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !186, line: 281, size: 128, elements: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1293, file: !186, line: 281, baseType: !7, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1293, file: !186, line: 281, baseType: !7, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1293, file: !186, line: 281, baseType: !1298, size: 64, offset: 64)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1155, size: 64, elements: !657)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1152, file: !186, line: 384, baseType: !595, size: 32, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1152, file: !186, line: 387, baseType: !595, size: 32, offset: 224)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1152, file: !186, line: 390, baseType: !595, size: 32, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1152, file: !186, line: 394, baseType: !1287, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1152, file: !186, line: 396, baseType: !185, size: 32, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1152, file: !186, line: 399, baseType: !1305, size: 64, offset: 416)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 64, elements: !692)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1152, file: !186, line: 402, baseType: !1307, size: 64, offset: 480)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !692)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1152, file: !186, line: 406, baseType: !595, size: 32, offset: 544)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1152, file: !186, line: 409, baseType: !595, size: 32, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !983, file: !984, line: 470, baseType: !1183, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !983, file: !984, line: 473, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !984, line: 166, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !983, file: !984, line: 476, baseType: !1315, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !173, line: 187, size: 256, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1316, file: !173, line: 189, baseType: !595, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1316, file: !173, line: 192, baseType: !1212, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1316, file: !173, line: 197, baseType: !1067, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1316, file: !173, line: 200, baseType: !1197, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !983, file: !984, line: 479, baseType: !1067, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !983, file: !984, line: 484, baseType: !737, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !983, file: !984, line: 488, baseType: !737, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !983, file: !984, line: 493, baseType: !737, size: 64, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !983, file: !984, line: 496, baseType: !737, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !983, file: !984, line: 501, baseType: !1328, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !6, line: 2355, size: 576, elements: !1330)
!1330 = !{!1331, !1334, !1335, !1336, !1337, !1339, !1340, !1345, !1346, !1347, !1348, !1349, !1350}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1329, file: !6, line: 2356, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !6, line: 2356, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1329, file: !6, line: 2357, baseType: !600, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1329, file: !6, line: 2358, baseType: !595, size: 32, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1329, file: !6, line: 2359, baseType: !595, size: 32, offset: 160)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1329, file: !6, line: 2360, baseType: !1338, size: 128, offset: 192)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 128, elements: !717)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1329, file: !6, line: 2364, baseType: !595, size: 32, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1329, file: !6, line: 2367, baseType: !1341, size: 128, offset: 384)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !6, line: 2349, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1341, file: !6, line: 2351, baseType: !622, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1341, file: !6, line: 2352, baseType: !708, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1329, file: !6, line: 2371, baseType: !196, size: 32, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1329, file: !6, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1329, file: !6, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1329, file: !6, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1329, file: !6, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1329, file: !6, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !983, file: !984, line: 504, baseType: !1352, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !984, line: 504, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !983, file: !984, line: 507, baseType: !1067, size: 64, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !983, file: !984, line: 510, baseType: !595, size: 32, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !983, file: !984, line: 513, baseType: !595, size: 32, offset: 864)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !983, file: !984, line: 516, baseType: !857, size: 32, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !983, file: !984, line: 519, baseType: !857, size: 32, offset: 928)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !983, file: !984, line: 522, baseType: !7, size: 32, offset: 960)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !983, file: !984, line: 523, baseType: !7, size: 32, offset: 992)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !983, file: !984, line: 528, baseType: !600, size: 64, offset: 1024)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !983, file: !984, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !983, file: !984, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !983, file: !984, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !983, file: !984, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !983, file: !984, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !983, file: !984, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !983, file: !984, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !983, file: !984, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !983, file: !984, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !983, file: !984, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !983, file: !984, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !983, file: !984, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !983, file: !984, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !983, file: !984, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !983, file: !984, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !983, file: !984, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !978, file: !201, line: 3254, baseType: !737, size: 64, offset: 1536)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !978, file: !201, line: 3257, baseType: !737, size: 64, offset: 1600)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !978, file: !201, line: 3258, baseType: !737, size: 64, offset: 1664)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !978, file: !201, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !978, file: !201, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !978, file: !201, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !978, file: !201, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !978, file: !201, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !978, file: !201, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !978, file: !201, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !978, file: !201, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !978, file: !201, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !978, file: !201, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !978, file: !201, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !978, file: !201, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !978, file: !201, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !978, file: !201, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !978, file: !201, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !978, file: !201, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !978, file: !201, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !978, file: !201, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !201, line: 3394, baseType: !1400, size: 1344)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !201, line: 2279, size: 1344, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1427, !1428, !1429, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1400, file: !201, line: 2280, baseType: !775, size: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1400, file: !201, line: 2281, baseType: !737, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1400, file: !201, line: 2282, baseType: !737, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1400, file: !201, line: 2283, baseType: !737, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1400, file: !201, line: 2284, baseType: !737, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1400, file: !201, line: 2285, baseType: !7, size: 32, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1400, file: !201, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1400, file: !201, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1400, file: !201, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1400, file: !201, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1400, file: !201, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1400, file: !201, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1400, file: !201, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1400, file: !201, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1400, file: !201, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1400, file: !201, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1400, file: !201, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1400, file: !201, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1400, file: !201, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1400, file: !201, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1400, file: !201, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1400, file: !201, line: 2305, baseType: !7, size: 32, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1400, file: !201, line: 2306, baseType: !1425, size: 32, offset: 544)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1426, line: 31, baseType: !595)
!1426 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1400, file: !201, line: 2307, baseType: !737, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1400, file: !201, line: 2308, baseType: !737, size: 64, offset: 640)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1400, file: !201, line: 2314, baseType: !1430, size: 64, offset: 704)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !201, line: 2309, size: 64, elements: !1431)
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1430, file: !201, line: 2310, baseType: !595, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1430, file: !201, line: 2311, baseType: !600, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1430, file: !201, line: 2312, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !201, line: 2277, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1400, file: !201, line: 2315, baseType: !737, size: 64, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1400, file: !201, line: 2316, baseType: !737, size: 64, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1400, file: !201, line: 2317, baseType: !737, size: 64, offset: 896)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1400, file: !201, line: 2318, baseType: !737, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1400, file: !201, line: 2319, baseType: !737, size: 64, offset: 1024)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1400, file: !201, line: 2320, baseType: !737, size: 64, offset: 1088)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1400, file: !201, line: 2321, baseType: !737, size: 64, offset: 1152)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1400, file: !201, line: 2322, baseType: !737, size: 64, offset: 1216)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1400, file: !201, line: 2324, baseType: !1446, size: 64, offset: 1280)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !201, line: 2324, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !739, file: !201, line: 3395, baseType: !1449, size: 320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !201, line: 1469, size: 320, elements: !1450)
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1449, file: !201, line: 1470, baseType: !775, size: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1449, file: !201, line: 1471, baseType: !737, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1449, file: !201, line: 1472, baseType: !737, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !739, file: !201, line: 3396, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !201, line: 1482, size: 320, elements: !1456)
!1456 = !{!1457, !1458, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1455, file: !201, line: 1483, baseType: !775, size: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1455, file: !201, line: 1484, baseType: !595, size: 32, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1455, file: !201, line: 1485, baseType: !1130, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !739, file: !201, line: 3397, baseType: !1461, size: 384)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !201, line: 1829, size: 384, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !201, line: 1830, baseType: !775, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1461, file: !201, line: 1831, baseType: !857, size: 32, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1461, file: !201, line: 1832, baseType: !737, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1461, file: !201, line: 1835, baseType: !1130, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !739, file: !201, line: 3398, baseType: !1468, size: 704)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !201, line: 1898, size: 704, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1477}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1468, file: !201, line: 1899, baseType: !775, size: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1468, file: !201, line: 1902, baseType: !737, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1468, file: !201, line: 1905, baseType: !1239, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1468, file: !201, line: 1908, baseType: !7, size: 32, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1468, file: !201, line: 1911, baseType: !1475, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !201, line: 1876, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1468, file: !201, line: 1914, baseType: !1478, size: 256, offset: 448)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !201, line: 1883, size: 256, elements: !1479)
!1479 = !{!1480, !1482, !1483, !1488}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1478, file: !201, line: 1884, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1478, file: !201, line: 1885, baseType: !1481, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1478, file: !201, line: 1891, baseType: !1484, size: 64, offset: 128)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !201, line: 1891, size: 64, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1484, file: !201, line: 1891, baseType: !1239, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1484, file: !201, line: 1891, baseType: !737, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1478, file: !201, line: 1892, baseType: !1489, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !739, file: !201, line: 3399, baseType: !1491, size: 704)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !201, line: 2008, size: 704, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1491, file: !201, line: 2009, baseType: !775, size: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1491, file: !201, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1491, file: !201, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1491, file: !201, line: 2014, baseType: !857, size: 32, offset: 224)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1491, file: !201, line: 2016, baseType: !737, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1491, file: !201, line: 2017, baseType: !1119, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1491, file: !201, line: 2019, baseType: !737, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1491, file: !201, line: 2020, baseType: !737, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1491, file: !201, line: 2021, baseType: !737, size: 64, offset: 512)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1491, file: !201, line: 2022, baseType: !737, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1491, file: !201, line: 2023, baseType: !737, size: 64, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !739, file: !201, line: 3400, baseType: !1505, size: 832)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !201, line: 2430, size: 832, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1505, file: !201, line: 2431, baseType: !775, size: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1505, file: !201, line: 2433, baseType: !737, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1505, file: !201, line: 2434, baseType: !737, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1505, file: !201, line: 2435, baseType: !737, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1505, file: !201, line: 2436, baseType: !737, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1505, file: !201, line: 2437, baseType: !1119, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1505, file: !201, line: 2438, baseType: !737, size: 64, offset: 512)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1505, file: !201, line: 2440, baseType: !737, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1505, file: !201, line: 2441, baseType: !737, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1505, file: !201, line: 2443, baseType: !1517, size: 128, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !201, line: 182, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !201, line: 182, size: 128, elements: !1519)
!1519 = !{!1520}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1518, file: !201, line: 182, baseType: !1124, size: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !739, file: !201, line: 3401, baseType: !1522, size: 320)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !201, line: 3327, size: 320, elements: !1523)
!1523 = !{!1524, !1525, !1532}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1522, file: !201, line: 3329, baseType: !775, size: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1522, file: !201, line: 3330, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !201, line: 3320, size: 192, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1527, file: !201, line: 3322, baseType: !1526, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1527, file: !201, line: 3323, baseType: !1526, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1527, file: !201, line: 3324, baseType: !737, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1522, file: !201, line: 3331, baseType: !1526, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !739, file: !201, line: 3402, baseType: !1534, size: 256)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !201, line: 1540, size: 256, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1534, file: !201, line: 1541, baseType: !775, size: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1534, file: !201, line: 1542, baseType: !1538, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !201, line: 1538, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !201, line: 1538, size: 192, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1540, file: !201, line: 1538, baseType: !1543, size: 192)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !201, line: 1537, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !201, line: 1537, size: 192, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1544, file: !201, line: 1537, baseType: !7, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1544, file: !201, line: 1537, baseType: !7, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1544, file: !201, line: 1537, baseType: !1549, size: 128, offset: 64)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1550, size: 128, elements: !657)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !201, line: 1535, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !201, line: 1532, size: 128, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1551, file: !201, line: 1533, baseType: !737, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1551, file: !201, line: 1534, baseType: !737, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !739, file: !201, line: 3403, baseType: !1556, size: 512)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !201, line: 1938, size: 512, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1567, !1568, !1569}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1556, file: !201, line: 1939, baseType: !775, size: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1556, file: !201, line: 1940, baseType: !857, size: 32, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1556, file: !201, line: 1941, baseType: !200, size: 32, offset: 224)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1556, file: !201, line: 1946, baseType: !1562, size: 32, offset: 256)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !201, line: 1942, size: 32, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1562, file: !201, line: 1943, baseType: !219, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1562, file: !201, line: 1944, baseType: !226, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1562, file: !201, line: 1945, baseType: !233, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1556, file: !201, line: 1950, baseType: !1182, size: 64, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1556, file: !201, line: 1951, baseType: !1182, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1556, file: !201, line: 1953, baseType: !1130, size: 64, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !739, file: !201, line: 3404, baseType: !1571, size: 1664)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !201, line: 3337, size: 1664, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1571, file: !201, line: 3338, baseType: !775, size: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1571, file: !201, line: 3341, baseType: !1575, size: 1472, offset: 192)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1576, line: 410, size: 1472, elements: !1577)
!1576 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1575, file: !1576, line: 412, baseType: !595, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1575, file: !1576, line: 413, baseType: !595, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1575, file: !1576, line: 414, baseType: !595, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1575, file: !1576, line: 415, baseType: !595, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1575, file: !1576, line: 416, baseType: !595, size: 32, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1575, file: !1576, line: 417, baseType: !595, size: 32, offset: 160)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1575, file: !1576, line: 418, baseType: !594, size: 8, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1575, file: !1576, line: 419, baseType: !594, size: 8, offset: 200)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1575, file: !1576, line: 420, baseType: !1587, size: 8, offset: 208)
!1587 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1575, file: !1576, line: 421, baseType: !1587, size: 8, offset: 216)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1575, file: !1576, line: 422, baseType: !1587, size: 8, offset: 224)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1575, file: !1576, line: 423, baseType: !1587, size: 8, offset: 232)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1575, file: !1576, line: 424, baseType: !1587, size: 8, offset: 240)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1575, file: !1576, line: 425, baseType: !1587, size: 8, offset: 248)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1575, file: !1576, line: 426, baseType: !1587, size: 8, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1575, file: !1576, line: 427, baseType: !1587, size: 8, offset: 264)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1575, file: !1576, line: 428, baseType: !1587, size: 8, offset: 272)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1575, file: !1576, line: 429, baseType: !1587, size: 8, offset: 280)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1575, file: !1576, line: 430, baseType: !1587, size: 8, offset: 288)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1575, file: !1576, line: 431, baseType: !1587, size: 8, offset: 296)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1575, file: !1576, line: 432, baseType: !1587, size: 8, offset: 304)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1575, file: !1576, line: 433, baseType: !1587, size: 8, offset: 312)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1575, file: !1576, line: 434, baseType: !1587, size: 8, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1575, file: !1576, line: 435, baseType: !1587, size: 8, offset: 328)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1575, file: !1576, line: 436, baseType: !1587, size: 8, offset: 336)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1575, file: !1576, line: 437, baseType: !1587, size: 8, offset: 344)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1575, file: !1576, line: 438, baseType: !1587, size: 8, offset: 352)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1575, file: !1576, line: 439, baseType: !1587, size: 8, offset: 360)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1575, file: !1576, line: 440, baseType: !1587, size: 8, offset: 368)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1575, file: !1576, line: 441, baseType: !1587, size: 8, offset: 376)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1575, file: !1576, line: 442, baseType: !1587, size: 8, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1575, file: !1576, line: 443, baseType: !1587, size: 8, offset: 392)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1575, file: !1576, line: 444, baseType: !1587, size: 8, offset: 400)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1575, file: !1576, line: 445, baseType: !1587, size: 8, offset: 408)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1575, file: !1576, line: 446, baseType: !1587, size: 8, offset: 416)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1575, file: !1576, line: 447, baseType: !1587, size: 8, offset: 424)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1575, file: !1576, line: 448, baseType: !1587, size: 8, offset: 432)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1575, file: !1576, line: 449, baseType: !1587, size: 8, offset: 440)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1575, file: !1576, line: 450, baseType: !1587, size: 8, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1575, file: !1576, line: 451, baseType: !1587, size: 8, offset: 456)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1575, file: !1576, line: 452, baseType: !1587, size: 8, offset: 464)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1575, file: !1576, line: 453, baseType: !1587, size: 8, offset: 472)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1575, file: !1576, line: 454, baseType: !1587, size: 8, offset: 480)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1575, file: !1576, line: 455, baseType: !1587, size: 8, offset: 488)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1575, file: !1576, line: 456, baseType: !1587, size: 8, offset: 496)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1575, file: !1576, line: 457, baseType: !1587, size: 8, offset: 504)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1575, file: !1576, line: 458, baseType: !1587, size: 8, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1575, file: !1576, line: 459, baseType: !1587, size: 8, offset: 520)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1575, file: !1576, line: 460, baseType: !1587, size: 8, offset: 528)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1575, file: !1576, line: 461, baseType: !1587, size: 8, offset: 536)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1575, file: !1576, line: 462, baseType: !1587, size: 8, offset: 544)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1575, file: !1576, line: 463, baseType: !1587, size: 8, offset: 552)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1575, file: !1576, line: 464, baseType: !1587, size: 8, offset: 560)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1575, file: !1576, line: 465, baseType: !1587, size: 8, offset: 568)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1575, file: !1576, line: 466, baseType: !1587, size: 8, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1575, file: !1576, line: 467, baseType: !1587, size: 8, offset: 584)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1575, file: !1576, line: 468, baseType: !1587, size: 8, offset: 592)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1575, file: !1576, line: 469, baseType: !1587, size: 8, offset: 600)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1575, file: !1576, line: 470, baseType: !1587, size: 8, offset: 608)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1575, file: !1576, line: 471, baseType: !1587, size: 8, offset: 616)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1575, file: !1576, line: 472, baseType: !1587, size: 8, offset: 624)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1575, file: !1576, line: 473, baseType: !1587, size: 8, offset: 632)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1575, file: !1576, line: 474, baseType: !1587, size: 8, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1575, file: !1576, line: 475, baseType: !1587, size: 8, offset: 648)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1575, file: !1576, line: 476, baseType: !1587, size: 8, offset: 656)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1575, file: !1576, line: 477, baseType: !1587, size: 8, offset: 664)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1575, file: !1576, line: 478, baseType: !1587, size: 8, offset: 672)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1575, file: !1576, line: 479, baseType: !1587, size: 8, offset: 680)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1575, file: !1576, line: 480, baseType: !1587, size: 8, offset: 688)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1575, file: !1576, line: 481, baseType: !1587, size: 8, offset: 696)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1575, file: !1576, line: 482, baseType: !1587, size: 8, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1575, file: !1576, line: 483, baseType: !1587, size: 8, offset: 712)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1575, file: !1576, line: 484, baseType: !1587, size: 8, offset: 720)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1575, file: !1576, line: 485, baseType: !1587, size: 8, offset: 728)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1575, file: !1576, line: 486, baseType: !1587, size: 8, offset: 736)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1575, file: !1576, line: 487, baseType: !1587, size: 8, offset: 744)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1575, file: !1576, line: 488, baseType: !1587, size: 8, offset: 752)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1575, file: !1576, line: 489, baseType: !1587, size: 8, offset: 760)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1575, file: !1576, line: 490, baseType: !1587, size: 8, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1575, file: !1576, line: 491, baseType: !1587, size: 8, offset: 776)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1575, file: !1576, line: 492, baseType: !1587, size: 8, offset: 784)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1575, file: !1576, line: 493, baseType: !1587, size: 8, offset: 792)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1575, file: !1576, line: 494, baseType: !1587, size: 8, offset: 800)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1575, file: !1576, line: 495, baseType: !1587, size: 8, offset: 808)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1575, file: !1576, line: 496, baseType: !1587, size: 8, offset: 816)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1575, file: !1576, line: 497, baseType: !1587, size: 8, offset: 824)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1575, file: !1576, line: 498, baseType: !1587, size: 8, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1575, file: !1576, line: 499, baseType: !1587, size: 8, offset: 840)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1575, file: !1576, line: 500, baseType: !1587, size: 8, offset: 848)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1575, file: !1576, line: 501, baseType: !1587, size: 8, offset: 856)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1575, file: !1576, line: 502, baseType: !1587, size: 8, offset: 864)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1575, file: !1576, line: 503, baseType: !1587, size: 8, offset: 872)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1575, file: !1576, line: 504, baseType: !1587, size: 8, offset: 880)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1575, file: !1576, line: 505, baseType: !1587, size: 8, offset: 888)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1575, file: !1576, line: 506, baseType: !1587, size: 8, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1575, file: !1576, line: 507, baseType: !1587, size: 8, offset: 904)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1575, file: !1576, line: 508, baseType: !1587, size: 8, offset: 912)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1575, file: !1576, line: 509, baseType: !1587, size: 8, offset: 920)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1575, file: !1576, line: 510, baseType: !1587, size: 8, offset: 928)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1575, file: !1576, line: 511, baseType: !1587, size: 8, offset: 936)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1575, file: !1576, line: 512, baseType: !1587, size: 8, offset: 944)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1575, file: !1576, line: 513, baseType: !1587, size: 8, offset: 952)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1575, file: !1576, line: 514, baseType: !1587, size: 8, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1575, file: !1576, line: 515, baseType: !1587, size: 8, offset: 968)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1575, file: !1576, line: 516, baseType: !1587, size: 8, offset: 976)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1575, file: !1576, line: 517, baseType: !1587, size: 8, offset: 984)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1575, file: !1576, line: 518, baseType: !1587, size: 8, offset: 992)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1575, file: !1576, line: 519, baseType: !1587, size: 8, offset: 1000)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1575, file: !1576, line: 520, baseType: !1587, size: 8, offset: 1008)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1575, file: !1576, line: 521, baseType: !1587, size: 8, offset: 1016)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1575, file: !1576, line: 522, baseType: !1587, size: 8, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1575, file: !1576, line: 523, baseType: !1587, size: 8, offset: 1032)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1575, file: !1576, line: 524, baseType: !1587, size: 8, offset: 1040)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1575, file: !1576, line: 525, baseType: !1587, size: 8, offset: 1048)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1575, file: !1576, line: 526, baseType: !1587, size: 8, offset: 1056)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1575, file: !1576, line: 527, baseType: !1587, size: 8, offset: 1064)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1575, file: !1576, line: 528, baseType: !1587, size: 8, offset: 1072)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1575, file: !1576, line: 529, baseType: !1587, size: 8, offset: 1080)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1575, file: !1576, line: 530, baseType: !1587, size: 8, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1575, file: !1576, line: 531, baseType: !1587, size: 8, offset: 1096)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1575, file: !1576, line: 532, baseType: !1587, size: 8, offset: 1104)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1575, file: !1576, line: 533, baseType: !1587, size: 8, offset: 1112)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1575, file: !1576, line: 534, baseType: !1587, size: 8, offset: 1120)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1575, file: !1576, line: 535, baseType: !1587, size: 8, offset: 1128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1575, file: !1576, line: 536, baseType: !1587, size: 8, offset: 1136)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1575, file: !1576, line: 537, baseType: !1587, size: 8, offset: 1144)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1575, file: !1576, line: 538, baseType: !1587, size: 8, offset: 1152)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1575, file: !1576, line: 539, baseType: !1587, size: 8, offset: 1160)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1575, file: !1576, line: 540, baseType: !1587, size: 8, offset: 1168)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1575, file: !1576, line: 541, baseType: !1587, size: 8, offset: 1176)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1575, file: !1576, line: 542, baseType: !1587, size: 8, offset: 1184)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1575, file: !1576, line: 543, baseType: !1587, size: 8, offset: 1192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1575, file: !1576, line: 544, baseType: !1587, size: 8, offset: 1200)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1575, file: !1576, line: 545, baseType: !1587, size: 8, offset: 1208)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1575, file: !1576, line: 546, baseType: !1587, size: 8, offset: 1216)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1575, file: !1576, line: 547, baseType: !1587, size: 8, offset: 1224)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1575, file: !1576, line: 548, baseType: !1587, size: 8, offset: 1232)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1575, file: !1576, line: 549, baseType: !1587, size: 8, offset: 1240)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1575, file: !1576, line: 550, baseType: !1587, size: 8, offset: 1248)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1575, file: !1576, line: 551, baseType: !1587, size: 8, offset: 1256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1575, file: !1576, line: 552, baseType: !1587, size: 8, offset: 1264)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1575, file: !1576, line: 553, baseType: !1587, size: 8, offset: 1272)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1575, file: !1576, line: 554, baseType: !1587, size: 8, offset: 1280)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1575, file: !1576, line: 555, baseType: !1587, size: 8, offset: 1288)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1575, file: !1576, line: 556, baseType: !1587, size: 8, offset: 1296)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1575, file: !1576, line: 557, baseType: !1587, size: 8, offset: 1304)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1575, file: !1576, line: 558, baseType: !1587, size: 8, offset: 1312)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1575, file: !1576, line: 559, baseType: !1587, size: 8, offset: 1320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1575, file: !1576, line: 560, baseType: !1587, size: 8, offset: 1328)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1575, file: !1576, line: 561, baseType: !1587, size: 8, offset: 1336)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1575, file: !1576, line: 562, baseType: !1587, size: 8, offset: 1344)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1575, file: !1576, line: 563, baseType: !1587, size: 8, offset: 1352)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1575, file: !1576, line: 564, baseType: !1587, size: 8, offset: 1360)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1575, file: !1576, line: 565, baseType: !1587, size: 8, offset: 1368)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1575, file: !1576, line: 566, baseType: !1587, size: 8, offset: 1376)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1575, file: !1576, line: 567, baseType: !1587, size: 8, offset: 1384)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1575, file: !1576, line: 568, baseType: !1587, size: 8, offset: 1392)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1575, file: !1576, line: 569, baseType: !1587, size: 8, offset: 1400)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1575, file: !1576, line: 570, baseType: !1587, size: 8, offset: 1408)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1575, file: !1576, line: 571, baseType: !1587, size: 8, offset: 1416)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1575, file: !1576, line: 572, baseType: !1587, size: 8, offset: 1424)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1575, file: !1576, line: 573, baseType: !1587, size: 8, offset: 1432)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1575, file: !1576, line: 574, baseType: !1587, size: 8, offset: 1440)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !739, file: !201, line: 3405, baseType: !1743, size: 384)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !201, line: 3352, size: 384, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1743, file: !201, line: 3353, baseType: !775, size: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1743, file: !201, line: 3356, baseType: !1747, size: 192, offset: 192)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1576, line: 578, size: 192, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1747, file: !1576, line: 580, baseType: !595, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1747, file: !1576, line: 581, baseType: !595, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1747, file: !1576, line: 582, baseType: !595, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1747, file: !1576, line: 583, baseType: !595, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1747, file: !1576, line: 584, baseType: !594, size: 8, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1747, file: !1576, line: 585, baseType: !594, size: 8, offset: 136)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1747, file: !1576, line: 586, baseType: !594, size: 8, offset: 144)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1747, file: !1576, line: 587, baseType: !594, size: 8, offset: 152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1747, file: !1576, line: 588, baseType: !594, size: 8, offset: 160)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1747, file: !1576, line: 589, baseType: !594, size: 8, offset: 168)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1747, file: !1576, line: 590, baseType: !594, size: 8, offset: 176)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !643, file: !428, line: 178, baseType: !1156, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !643, file: !428, line: 179, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !428, line: 150, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !428, line: 142, size: 320, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1764, file: !428, line: 144, baseType: !737, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1764, file: !428, line: 145, baseType: !622, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1764, file: !428, line: 146, baseType: !622, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1764, file: !428, line: 147, baseType: !1425, size: 32, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1764, file: !428, line: 148, baseType: !7, size: 32, offset: 224)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1764, file: !428, line: 149, baseType: !594, size: 8, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !643, file: !428, line: 180, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !428, line: 162, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !428, line: 159, size: 128, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1775, file: !428, line: 160, baseType: !737, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1775, file: !428, line: 161, baseType: !708, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !643, file: !428, line: 181, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !428, line: 181, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !638, file: !428, line: 317, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 64, elements: !657)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !638, file: !428, line: 318, baseType: !1785, size: 320)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !428, line: 188, size: 320, elements: !1786)
!1786 = !{!1787, !1789, !1812}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1785, file: !428, line: 190, baseType: !1788, size: 192)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 192, elements: !808)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1785, file: !428, line: 193, baseType: !1790, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !428, line: 206, size: 320, elements: !1792)
!1792 = !{!1793, !1797, !1798, !1799, !1811}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1791, file: !428, line: 208, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !623, line: 62, baseType: !1796)
!1796 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !623, line: 61, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1791, file: !428, line: 211, baseType: !7, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1791, file: !428, line: 214, baseType: !708, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1791, file: !428, line: 224, baseType: !1800, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !428, line: 202, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !428, line: 202, size: 128, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1802, file: !428, line: 202, baseType: !1805, size: 128)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !428, line: 200, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !428, line: 200, size: 128, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1806, file: !428, line: 200, baseType: !7, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1806, file: !428, line: 200, baseType: !7, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1806, file: !428, line: 200, baseType: !656, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1791, file: !428, line: 234, baseType: !1800, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1785, file: !428, line: 197, baseType: !708, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !638, file: !428, line: 319, baseType: !797, size: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !638, file: !428, line: 320, baseType: !816, size: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "next_regno_allocno", scope: !615, file: !608, line: 255, baseType: !613, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !615, file: !608, line: 260, baseType: !1817, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_loop_tree_node_t", file: !608, line: 73, baseType: !1818)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_loop_tree_node", file: !608, line: 83, size: 1728, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1832, !1833, !1837, !1839, !1840, !1841}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1819, file: !608, line: 86, baseType: !1155, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !1819, file: !608, line: 87, baseType: !1197, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "subloop_next", scope: !1819, file: !608, line: 90, baseType: !1817, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1819, file: !608, line: 90, baseType: !1817, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "subloops", scope: !1819, file: !608, line: 93, baseType: !1817, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1819, file: !608, line: 93, baseType: !1817, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1819, file: !608, line: 95, baseType: !1817, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1819, file: !608, line: 98, baseType: !595, size: 32, offset: 448)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "to_remove_p", scope: !1819, file: !608, line: 105, baseType: !594, size: 8, offset: 480)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "regno_allocno_map", scope: !1819, file: !608, line: 114, baseType: !1831, size: 64, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "entered_from_non_parent_p", scope: !1819, file: !608, line: 119, baseType: !594, size: 8, offset: 576)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "reg_pressure", scope: !1819, file: !608, line: 123, baseType: !1834, size: 864, offset: 608)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 864, elements: !1835)
!1835 = !{!1836}
!1836 = !DISubrange(count: 27)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "all_allocnos", scope: !1819, file: !608, line: 127, baseType: !1838, size: 64, offset: 1472)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !623, line: 47, baseType: !676)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "border_allocnos", scope: !1819, file: !608, line: 130, baseType: !1838, size: 64, offset: 1536)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "modified_regnos", scope: !1819, file: !608, line: 134, baseType: !1838, size: 64, offset: 1600)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "local_copies", scope: !1819, file: !608, line: 137, baseType: !1838, size: 64, offset: 1664)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nrefs", scope: !615, file: !608, line: 266, baseType: !595, size: 32, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !615, file: !608, line: 268, baseType: !595, size: 32, offset: 352)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class", scope: !615, file: !608, line: 271, baseType: !5, size: 32, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class_cost", scope: !615, file: !608, line: 274, baseType: !595, size: 32, offset: 416)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "updated_cover_class_cost", scope: !615, file: !608, line: 274, baseType: !595, size: 32, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "memory_cost", scope: !615, file: !608, line: 282, baseType: !595, size: 32, offset: 480)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "updated_memory_cost", scope: !615, file: !608, line: 282, baseType: !595, size: 32, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "excess_pressure_points_num", scope: !615, file: !608, line: 288, baseType: !595, size: 32, offset: 544)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "allocno_copies", scope: !615, file: !608, line: 292, baseType: !1851, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_copy_t", file: !608, line: 64, baseType: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_copy", file: !608, line: 506, size: 640, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1853, file: !608, line: 509, baseType: !595, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1853, file: !608, line: 512, baseType: !613, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !1853, file: !608, line: 512, baseType: !613, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1853, file: !608, line: 514, baseType: !595, size: 32, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_p", scope: !1853, file: !608, line: 515, baseType: !594, size: 8, offset: 224)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1853, file: !608, line: 521, baseType: !622, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prev_first_allocno_copy", scope: !1853, file: !608, line: 524, baseType: !1851, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "next_first_allocno_copy", scope: !1853, file: !608, line: 524, baseType: !1851, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "prev_second_allocno_copy", scope: !1853, file: !608, line: 527, baseType: !1851, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "next_second_allocno_copy", scope: !1853, file: !608, line: 527, baseType: !1851, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !1853, file: !608, line: 529, baseType: !1817, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !615, file: !608, line: 295, baseType: !613, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cap_member", scope: !615, file: !608, line: 298, baseType: !613, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "first_coalesced_allocno", scope: !615, file: !608, line: 302, baseType: !613, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "next_coalesced_allocno", scope: !615, file: !608, line: 303, baseType: !613, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "live_ranges", scope: !615, file: !608, line: 308, baseType: !607, size: 64, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !615, file: !608, line: 314, baseType: !595, size: 32, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !615, file: !608, line: 314, baseType: !595, size: 32, offset: 992)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array", scope: !615, file: !608, line: 319, baseType: !599, size: 64, offset: 1024)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_id", scope: !615, file: !608, line: 322, baseType: !595, size: 32, offset: 1088)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array_size", scope: !615, file: !608, line: 324, baseType: !7, size: 32, offset: 1120)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_regs", scope: !615, file: !608, line: 329, baseType: !602, size: 64, offset: 1152)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "total_conflict_hard_regs", scope: !615, file: !608, line: 329, baseType: !602, size: 64, offset: 1216)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocnos_num", scope: !615, file: !608, line: 332, baseType: !595, size: 32, offset: 1280)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "call_freq", scope: !615, file: !608, line: 335, baseType: !595, size: 32, offset: 1312)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "calls_crossed_num", scope: !615, file: !608, line: 337, baseType: !595, size: 32, offset: 1344)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest_p", scope: !615, file: !608, line: 342, baseType: !7, size: 1, offset: 1376, flags: DIFlagBitField, extraData: i64 1376)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "somewhere_renamed_p", scope: !615, file: !608, line: 346, baseType: !7, size: 1, offset: 1377, flags: DIFlagBitField, extraData: i64 1376)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "child_renamed_p", scope: !615, file: !608, line: 349, baseType: !7, size: 1, offset: 1378, flags: DIFlagBitField, extraData: i64 1376)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dont_reassign_p", scope: !615, file: !608, line: 354, baseType: !7, size: 1, offset: 1379, flags: DIFlagBitField, extraData: i64 1376)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "no_stack_reg_p", scope: !615, file: !608, line: 359, baseType: !7, size: 1, offset: 1380, flags: DIFlagBitField, extraData: i64 1376)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "total_no_stack_reg_p", scope: !615, file: !608, line: 359, baseType: !7, size: 1, offset: 1381, flags: DIFlagBitField, extraData: i64 1376)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "bad_spill_p", scope: !615, file: !608, line: 364, baseType: !7, size: 1, offset: 1382, flags: DIFlagBitField, extraData: i64 1376)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "in_graph_p", scope: !615, file: !608, line: 367, baseType: !7, size: 1, offset: 1383, flags: DIFlagBitField, extraData: i64 1376)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "assigned_p", scope: !615, file: !608, line: 370, baseType: !7, size: 1, offset: 1384, flags: DIFlagBitField, extraData: i64 1376)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "may_be_spilled_p", scope: !615, file: !608, line: 373, baseType: !7, size: 1, offset: 1385, flags: DIFlagBitField, extraData: i64 1376)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "splay_removed_p", scope: !615, file: !608, line: 376, baseType: !7, size: 1, offset: 1386, flags: DIFlagBitField, extraData: i64 1376)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_vec_p", scope: !615, file: !608, line: 381, baseType: !7, size: 1, offset: 1387, flags: DIFlagBitField, extraData: i64 1376)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest", scope: !615, file: !608, line: 385, baseType: !613, size: 64, offset: 1408)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "hard_reg_costs", scope: !615, file: !608, line: 400, baseType: !605, size: 64, offset: 1472)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "updated_hard_reg_costs", scope: !615, file: !608, line: 400, baseType: !605, size: 64, offset: 1536)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_reg_costs", scope: !615, file: !608, line: 407, baseType: !605, size: 64, offset: 1600)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "updated_conflict_hard_reg_costs", scope: !615, file: !608, line: 407, baseType: !605, size: 64, offset: 1664)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "left_conflicts_size", scope: !615, file: !608, line: 411, baseType: !595, size: 32, offset: 1728)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "available_regs_num", scope: !615, file: !608, line: 414, baseType: !595, size: 32, offset: 1760)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next_bucket_allocno", scope: !615, file: !608, line: 417, baseType: !613, size: 64, offset: 1792)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bucket_allocno", scope: !615, file: !608, line: 418, baseType: !613, size: 64, offset: 1856)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !615, file: !608, line: 420, baseType: !595, size: 32, offset: 1920)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !610, file: !608, line: 204, baseType: !595, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !610, file: !608, line: 204, baseType: !595, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !608, line: 207, baseType: !607, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start_next", scope: !610, file: !608, line: 209, baseType: !607, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "finish_next", scope: !610, file: !608, line: 209, baseType: !607, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_lr_bb_info", file: !1910, line: 826, size: 256, elements: !1911)
!1910 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1911 = !{!1912, !1913, !1914, !1915}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1909, file: !1910, line: 829, baseType: !1838, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1909, file: !1910, line: 831, baseType: !1838, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1909, file: !1910, line: 834, baseType: !1838, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1909, file: !1910, line: 835, baseType: !1838, size: 64, offset: 192)
!1916 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1917 = !{!1918, !1920, !0, !1922, !1924, !1940, !1942, !1944, !1946, !1948, !1950}
!1918 = !DIGlobalVariableExpression(var: !1919, expr: !DIExpression())
!1919 = distinct !DIGlobalVariable(name: "ira_max_point", scope: !2, file: !3, line: 53, type: !595, isLocal: false, isDefinition: true)
!1920 = !DIGlobalVariableExpression(var: !1921, expr: !DIExpression())
!1921 = distinct !DIGlobalVariable(name: "ira_start_point_ranges", scope: !2, file: !3, line: 57, type: !606, isLocal: false, isDefinition: true)
!1922 = !DIGlobalVariableExpression(var: !1923, expr: !DIExpression())
!1923 = distinct !DIGlobalVariable(name: "curr_point", scope: !2, file: !3, line: 60, type: !595, isLocal: true, isDefinition: true)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(name: "allocnos_live", scope: !2, file: !3, line: 71, type: !1926, isLocal: true, isDefinition: true)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "sparseset", file: !1927, line: 41, baseType: !1928)
!1927 = !DIFile(filename: "./sparseset.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sparseset_def", file: !1927, line: 31, size: 320, elements: !1930)
!1930 = !{!1931, !1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dense", scope: !1929, file: !1927, line: 33, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sparse", scope: !1929, file: !1927, line: 34, baseType: !1932, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !1929, file: !1927, line: 35, baseType: !7, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1929, file: !1927, line: 36, baseType: !7, size: 32, offset: 160)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1929, file: !1927, line: 37, baseType: !7, size: 32, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "iter_inc", scope: !1929, file: !1927, line: 38, baseType: !594, size: 8, offset: 224)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "iterating", scope: !1929, file: !1927, line: 39, baseType: !594, size: 8, offset: 232)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1929, file: !1927, line: 40, baseType: !1307, size: 64, offset: 256)
!1940 = !DIGlobalVariableExpression(var: !1941, expr: !DIExpression())
!1941 = distinct !DIGlobalVariable(name: "last_call_num", scope: !2, file: !3, line: 80, type: !595, isLocal: true, isDefinition: true)
!1942 = !DIGlobalVariableExpression(var: !1943, expr: !DIExpression())
!1943 = distinct !DIGlobalVariable(name: "allocno_saved_at_call", scope: !2, file: !3, line: 82, type: !605, isLocal: true, isDefinition: true)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(name: "curr_reg_pressure", scope: !2, file: !3, line: 165, type: !1834, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "high_pressure_start_point", scope: !2, file: !3, line: 68, type: !1834, isLocal: true, isDefinition: true)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(name: "curr_bb_node", scope: !2, file: !3, line: 77, type: !1817, isLocal: true, isDefinition: true)
!1950 = !DIGlobalVariableExpression(var: !1951, expr: !DIExpression())
!1951 = distinct !DIGlobalVariable(name: "hard_regs_live", scope: !2, file: !3, line: 74, type: !602, isLocal: true, isDefinition: true)
!1952 = !{i32 2, !"Dwarf Version", i32 4}
!1953 = !{i32 2, !"Debug Info Version", i32 3}
!1954 = !{i32 1, !"wchar_size", i32 4}
!1955 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1956 = distinct !DISubprogram(name: "vprintf", scope: !1957, file: !1957, line: 39, type: !1958, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1957 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!595, !1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !600)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1962, file: !3, baseType: !7, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1962, file: !3, baseType: !7, size: 32, offset: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1962, file: !3, baseType: !599, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1962, file: !3, baseType: !599, size: 64, offset: 128)
!1968 = !{!1969, !1970}
!1969 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1956, file: !1957, line: 39, type: !1960)
!1970 = !DILocalVariable(name: "__arg", arg: 2, scope: !1956, file: !1957, line: 39, type: !1961)
!1971 = !DILocation(line: 0, scope: !1956)
!1972 = !DILocation(line: 41, column: 20, scope: !1956)
!1973 = !DILocation(line: 41, column: 10, scope: !1956)
!1974 = !DILocation(line: 41, column: 3, scope: !1956)
!1975 = distinct !DISubprogram(name: "getchar", scope: !1957, file: !1957, line: 47, type: !1976, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!595}
!1978 = !{}
!1979 = !DILocation(line: 49, column: 16, scope: !1975)
!1980 = !DILocation(line: 49, column: 10, scope: !1975)
!1981 = !DILocation(line: 49, column: 3, scope: !1975)
!1982 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1957, file: !1957, line: 56, type: !1983, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!595, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1987, line: 7, baseType: !1988)
!1987 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1989, line: 49, size: 1728, elements: !1990)
!1989 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2006, !2008, !2009, !2010, !2013, !2014, !2015, !2016, !2019, !2021, !2024, !2027, !2028, !2029, !2030, !2031}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1988, file: !1989, line: 51, baseType: !595, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1988, file: !1989, line: 54, baseType: !597, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1988, file: !1989, line: 55, baseType: !597, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1988, file: !1989, line: 56, baseType: !597, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1988, file: !1989, line: 57, baseType: !597, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1988, file: !1989, line: 58, baseType: !597, size: 64, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1988, file: !1989, line: 59, baseType: !597, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1988, file: !1989, line: 60, baseType: !597, size: 64, offset: 448)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1988, file: !1989, line: 61, baseType: !597, size: 64, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1988, file: !1989, line: 64, baseType: !597, size: 64, offset: 576)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1988, file: !1989, line: 65, baseType: !597, size: 64, offset: 640)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1988, file: !1989, line: 66, baseType: !597, size: 64, offset: 704)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1988, file: !1989, line: 68, baseType: !2004, size: 64, offset: 768)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1989, line: 36, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1988, file: !1989, line: 70, baseType: !2007, size: 64, offset: 832)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1988, file: !1989, line: 72, baseType: !595, size: 32, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1988, file: !1989, line: 73, baseType: !595, size: 32, offset: 928)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1988, file: !1989, line: 74, baseType: !2011, size: 64, offset: 960)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2012, line: 152, baseType: !708)
!2012 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1988, file: !1989, line: 77, baseType: !1916, size: 16, offset: 1024)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1988, file: !1989, line: 78, baseType: !1587, size: 8, offset: 1040)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1988, file: !1989, line: 79, baseType: !832, size: 8, offset: 1048)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1988, file: !1989, line: 81, baseType: !2017, size: 64, offset: 1088)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1989, line: 43, baseType: null)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1988, file: !1989, line: 89, baseType: !2020, size: 64, offset: 1152)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2012, line: 153, baseType: !708)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1988, file: !1989, line: 91, baseType: !2022, size: 64, offset: 1216)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1989, line: 37, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1988, file: !1989, line: 92, baseType: !2025, size: 64, offset: 1280)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1989, line: 38, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1988, file: !1989, line: 93, baseType: !2007, size: 64, offset: 1344)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1988, file: !1989, line: 94, baseType: !599, size: 64, offset: 1408)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1988, file: !1989, line: 95, baseType: !1093, size: 64, offset: 1472)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1988, file: !1989, line: 96, baseType: !595, size: 32, offset: 1536)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1988, file: !1989, line: 98, baseType: !2032, size: 160, offset: 1568)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 160, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 20)
!2035 = !{!2036}
!2036 = !DILocalVariable(name: "__fp", arg: 1, scope: !1982, file: !1957, line: 56, type: !1985)
!2037 = !DILocation(line: 0, scope: !1982)
!2038 = !DILocation(line: 58, column: 10, scope: !1982)
!2039 = !DILocation(line: 58, column: 3, scope: !1982)
!2040 = distinct !DISubprogram(name: "getc_unlocked", scope: !1957, file: !1957, line: 66, type: !1983, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2041 = !{!2042}
!2042 = !DILocalVariable(name: "__fp", arg: 1, scope: !2040, file: !1957, line: 66, type: !1985)
!2043 = !DILocation(line: 0, scope: !2040)
!2044 = !DILocation(line: 68, column: 10, scope: !2040)
!2045 = !DILocation(line: 68, column: 3, scope: !2040)
!2046 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1957, file: !1957, line: 73, type: !1976, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!2047 = !DILocation(line: 75, column: 10, scope: !2046)
!2048 = !DILocation(line: 75, column: 3, scope: !2046)
!2049 = distinct !DISubprogram(name: "putchar", scope: !1957, file: !1957, line: 82, type: !2050, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!595, !595}
!2052 = !{!2053}
!2053 = !DILocalVariable(name: "__c", arg: 1, scope: !2049, file: !1957, line: 82, type: !595)
!2054 = !DILocation(line: 0, scope: !2049)
!2055 = !DILocation(line: 84, column: 21, scope: !2049)
!2056 = !DILocation(line: 84, column: 10, scope: !2049)
!2057 = !DILocation(line: 84, column: 3, scope: !2049)
!2058 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1957, file: !1957, line: 91, type: !2059, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2061)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!595, !595, !1985}
!2061 = !{!2062, !2063}
!2062 = !DILocalVariable(name: "__c", arg: 1, scope: !2058, file: !1957, line: 91, type: !595)
!2063 = !DILocalVariable(name: "__stream", arg: 2, scope: !2058, file: !1957, line: 91, type: !1985)
!2064 = !DILocation(line: 0, scope: !2058)
!2065 = !DILocation(line: 93, column: 10, scope: !2058)
!2066 = !DILocation(line: 93, column: 3, scope: !2058)
!2067 = distinct !DISubprogram(name: "putc_unlocked", scope: !1957, file: !1957, line: 101, type: !2059, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2068 = !{!2069, !2070}
!2069 = !DILocalVariable(name: "__c", arg: 1, scope: !2067, file: !1957, line: 101, type: !595)
!2070 = !DILocalVariable(name: "__stream", arg: 2, scope: !2067, file: !1957, line: 101, type: !1985)
!2071 = !DILocation(line: 0, scope: !2067)
!2072 = !DILocation(line: 103, column: 10, scope: !2067)
!2073 = !DILocation(line: 103, column: 3, scope: !2067)
!2074 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1957, file: !1957, line: 108, type: !2050, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "__c", arg: 1, scope: !2074, file: !1957, line: 108, type: !595)
!2077 = !DILocation(line: 0, scope: !2074)
!2078 = !DILocation(line: 110, column: 10, scope: !2074)
!2079 = !DILocation(line: 110, column: 3, scope: !2074)
!2080 = distinct !DISubprogram(name: "getline", scope: !1957, file: !1957, line: 118, type: !2081, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2083, !596, !2084, !1985}
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2012, line: 193, baseType: !708)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!2085 = !{!2086, !2087, !2088}
!2086 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2080, file: !1957, line: 118, type: !596)
!2087 = !DILocalVariable(name: "__n", arg: 2, scope: !2080, file: !1957, line: 118, type: !2084)
!2088 = !DILocalVariable(name: "__stream", arg: 3, scope: !2080, file: !1957, line: 118, type: !1985)
!2089 = !DILocation(line: 0, scope: !2080)
!2090 = !DILocation(line: 120, column: 10, scope: !2080)
!2091 = !DILocation(line: 120, column: 3, scope: !2080)
!2092 = distinct !DISubprogram(name: "feof_unlocked", scope: !1957, file: !1957, line: 128, type: !1983, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2093)
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "__stream", arg: 1, scope: !2092, file: !1957, line: 128, type: !1985)
!2095 = !DILocation(line: 0, scope: !2092)
!2096 = !DILocation(line: 130, column: 10, scope: !2092)
!2097 = !DILocation(line: 130, column: 3, scope: !2092)
!2098 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1957, file: !1957, line: 135, type: !1983, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2099 = !{!2100}
!2100 = !DILocalVariable(name: "__stream", arg: 1, scope: !2098, file: !1957, line: 135, type: !1985)
!2101 = !DILocation(line: 0, scope: !2098)
!2102 = !DILocation(line: 137, column: 10, scope: !2098)
!2103 = !DILocation(line: 137, column: 3, scope: !2098)
!2104 = distinct !DISubprogram(name: "tolower", scope: !2105, file: !2105, line: 207, type: !2050, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2105 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "__c", arg: 1, scope: !2104, file: !2105, line: 207, type: !595)
!2108 = !DILocation(line: 0, scope: !2104)
!2109 = !DILocation(line: 209, column: 22, scope: !2104)
!2110 = !DILocation(line: 209, column: 39, scope: !2104)
!2111 = !DILocation(line: 209, column: 38, scope: !2104)
!2112 = !DILocation(line: 209, column: 37, scope: !2104)
!2113 = !DILocation(line: 209, column: 10, scope: !2104)
!2114 = !DILocation(line: 209, column: 3, scope: !2104)
!2115 = distinct !DISubprogram(name: "toupper", scope: !2105, file: !2105, line: 213, type: !2050, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "__c", arg: 1, scope: !2115, file: !2105, line: 213, type: !595)
!2118 = !DILocation(line: 0, scope: !2115)
!2119 = !DILocation(line: 215, column: 22, scope: !2115)
!2120 = !DILocation(line: 215, column: 39, scope: !2115)
!2121 = !DILocation(line: 215, column: 38, scope: !2115)
!2122 = !DILocation(line: 215, column: 37, scope: !2115)
!2123 = !DILocation(line: 215, column: 10, scope: !2115)
!2124 = !DILocation(line: 215, column: 3, scope: !2115)
!2125 = distinct !DISubprogram(name: "atoi", scope: !2126, file: !2126, line: 361, type: !2127, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2129)
!2126 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!595, !600}
!2129 = !{!2130}
!2130 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2125, file: !2126, line: 361, type: !600)
!2131 = !DILocation(line: 0, scope: !2125)
!2132 = !DILocation(line: 363, column: 16, scope: !2125)
!2133 = !DILocation(line: 363, column: 10, scope: !2125)
!2134 = !DILocation(line: 363, column: 3, scope: !2125)
!2135 = distinct !DISubprogram(name: "atol", scope: !2126, file: !2126, line: 366, type: !2136, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!708, !600}
!2138 = !{!2139}
!2139 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2135, file: !2126, line: 366, type: !600)
!2140 = !DILocation(line: 0, scope: !2135)
!2141 = !DILocation(line: 368, column: 10, scope: !2135)
!2142 = !DILocation(line: 368, column: 3, scope: !2135)
!2143 = distinct !DISubprogram(name: "atoll", scope: !2126, file: !2126, line: 373, type: !2144, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2147)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2146, !600}
!2146 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2147 = !{!2148}
!2148 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2143, file: !2126, line: 373, type: !600)
!2149 = !DILocation(line: 0, scope: !2143)
!2150 = !DILocation(line: 375, column: 10, scope: !2143)
!2151 = !DILocation(line: 375, column: 3, scope: !2143)
!2152 = distinct !DISubprogram(name: "bsearch", scope: !2153, file: !2153, line: 20, type: !2154, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!599, !1078, !1078, !1093, !1093, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2126, line: 808, baseType: !1082)
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2158 = !DILocalVariable(name: "__key", arg: 1, scope: !2152, file: !2153, line: 20, type: !1078)
!2159 = !DILocalVariable(name: "__base", arg: 2, scope: !2152, file: !2153, line: 20, type: !1078)
!2160 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2152, file: !2153, line: 20, type: !1093)
!2161 = !DILocalVariable(name: "__size", arg: 4, scope: !2152, file: !2153, line: 20, type: !1093)
!2162 = !DILocalVariable(name: "__compar", arg: 5, scope: !2152, file: !2153, line: 21, type: !2156)
!2163 = !DILocalVariable(name: "__l", scope: !2152, file: !2153, line: 23, type: !1093)
!2164 = !DILocalVariable(name: "__u", scope: !2152, file: !2153, line: 23, type: !1093)
!2165 = !DILocalVariable(name: "__idx", scope: !2152, file: !2153, line: 23, type: !1093)
!2166 = !DILocalVariable(name: "__p", scope: !2152, file: !2153, line: 24, type: !1078)
!2167 = !DILocalVariable(name: "__comparison", scope: !2152, file: !2153, line: 25, type: !595)
!2168 = !DILocation(line: 0, scope: !2152)
!2169 = !DILocation(line: 29, column: 3, scope: !2152)
!2170 = !DILocation(line: 27, column: 7, scope: !2152)
!2171 = !DILocation(line: 29, column: 14, scope: !2152)
!2172 = !DILocation(line: 31, column: 20, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2152, file: !2153, line: 30, column: 5)
!2174 = !DILocation(line: 31, column: 27, scope: !2173)
!2175 = !DILocation(line: 32, column: 56, scope: !2173)
!2176 = !DILocation(line: 32, column: 47, scope: !2173)
!2177 = !DILocation(line: 33, column: 22, scope: !2173)
!2178 = !DILocation(line: 34, column: 24, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2173, file: !2153, line: 34, column: 11)
!2180 = !DILocation(line: 34, column: 11, scope: !2173)
!2181 = !DILocation(line: 36, column: 29, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !2153, line: 36, column: 16)
!2183 = !DILocation(line: 36, column: 16, scope: !2179)
!2184 = !DILocation(line: 37, column: 14, scope: !2182)
!2185 = distinct !{!2185, !2169, !2186}
!2186 = !DILocation(line: 40, column: 5, scope: !2152)
!2187 = !DILocation(line: 43, column: 1, scope: !2152)
!2188 = distinct !DISubprogram(name: "atof", scope: !2189, file: !2189, line: 25, type: !2190, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !600}
!2192 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2193 = !{!2194}
!2194 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2188, file: !2189, line: 25, type: !600)
!2195 = !DILocation(line: 0, scope: !2188)
!2196 = !DILocation(line: 27, column: 10, scope: !2188)
!2197 = !DILocation(line: 27, column: 3, scope: !2188)
!2198 = distinct !DISubprogram(name: "strtoimax", scope: !2199, file: !2199, line: 324, type: !2200, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2199 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!2202, !1960, !2205, !595}
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2203, line: 101, baseType: !2204)
!2203 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2012, line: 72, baseType: !708)
!2205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !596)
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "nptr", arg: 1, scope: !2198, file: !2199, line: 324, type: !1960)
!2208 = !DILocalVariable(name: "endptr", arg: 2, scope: !2198, file: !2199, line: 324, type: !2205)
!2209 = !DILocalVariable(name: "base", arg: 3, scope: !2198, file: !2199, line: 324, type: !595)
!2210 = !DILocation(line: 0, scope: !2198)
!2211 = !DILocation(line: 327, column: 10, scope: !2198)
!2212 = !DILocation(line: 327, column: 3, scope: !2198)
!2213 = distinct !DISubprogram(name: "strtoumax", scope: !2199, file: !2199, line: 336, type: !2214, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2216, !1960, !2205, !595}
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2203, line: 102, baseType: !2217)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2012, line: 73, baseType: !604)
!2218 = !{!2219, !2220, !2221}
!2219 = !DILocalVariable(name: "nptr", arg: 1, scope: !2213, file: !2199, line: 336, type: !1960)
!2220 = !DILocalVariable(name: "endptr", arg: 2, scope: !2213, file: !2199, line: 336, type: !2205)
!2221 = !DILocalVariable(name: "base", arg: 3, scope: !2213, file: !2199, line: 336, type: !595)
!2222 = !DILocation(line: 0, scope: !2213)
!2223 = !DILocation(line: 339, column: 10, scope: !2213)
!2224 = !DILocation(line: 339, column: 3, scope: !2213)
!2225 = distinct !DISubprogram(name: "wcstoimax", scope: !2199, file: !2199, line: 348, type: !2226, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!2202, !2228, !2232, !595}
!2228 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2199, line: 34, baseType: !595)
!2232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2233)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2235 = !{!2236, !2237, !2238}
!2236 = !DILocalVariable(name: "nptr", arg: 1, scope: !2225, file: !2199, line: 348, type: !2228)
!2237 = !DILocalVariable(name: "endptr", arg: 2, scope: !2225, file: !2199, line: 348, type: !2232)
!2238 = !DILocalVariable(name: "base", arg: 3, scope: !2225, file: !2199, line: 348, type: !595)
!2239 = !DILocation(line: 0, scope: !2225)
!2240 = !DILocation(line: 351, column: 10, scope: !2225)
!2241 = !DILocation(line: 351, column: 3, scope: !2225)
!2242 = distinct !DISubprogram(name: "wcstoumax", scope: !2199, file: !2199, line: 362, type: !2243, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!2216, !2228, !2232, !595}
!2245 = !{!2246, !2247, !2248}
!2246 = !DILocalVariable(name: "nptr", arg: 1, scope: !2242, file: !2199, line: 362, type: !2228)
!2247 = !DILocalVariable(name: "endptr", arg: 2, scope: !2242, file: !2199, line: 362, type: !2232)
!2248 = !DILocalVariable(name: "base", arg: 3, scope: !2242, file: !2199, line: 362, type: !595)
!2249 = !DILocation(line: 0, scope: !2242)
!2250 = !DILocation(line: 365, column: 10, scope: !2242)
!2251 = !DILocation(line: 365, column: 3, scope: !2242)
!2252 = distinct !DISubprogram(name: "stat", scope: !2253, file: !2253, line: 453, type: !2254, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!595, !600, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2258, line: 46, size: 1152, elements: !2259)
!2258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2259 = !{!2260, !2262, !2264, !2266, !2268, !2270, !2272, !2273, !2274, !2275, !2277, !2279, !2287, !2288, !2289}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2257, file: !2258, line: 48, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2012, line: 145, baseType: !604)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2257, file: !2258, line: 53, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2012, line: 148, baseType: !604)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2257, file: !2258, line: 61, baseType: !2265, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2012, line: 151, baseType: !604)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2257, file: !2258, line: 62, baseType: !2267, size: 32, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2012, line: 150, baseType: !7)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2257, file: !2258, line: 64, baseType: !2269, size: 32, offset: 224)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2012, line: 146, baseType: !7)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2257, file: !2258, line: 65, baseType: !2271, size: 32, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2012, line: 147, baseType: !7)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2257, file: !2258, line: 67, baseType: !595, size: 32, offset: 288)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2257, file: !2258, line: 69, baseType: !2261, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2257, file: !2258, line: 74, baseType: !2011, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2257, file: !2258, line: 78, baseType: !2276, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2012, line: 174, baseType: !708)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2257, file: !2258, line: 80, baseType: !2278, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2012, line: 179, baseType: !708)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2257, file: !2258, line: 91, baseType: !2280, size: 128, offset: 576)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2281, line: 10, size: 128, elements: !2282)
!2281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2282 = !{!2283, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2280, file: !2281, line: 12, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2012, line: 160, baseType: !708)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2280, file: !2281, line: 16, baseType: !2286, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2012, line: 196, baseType: !708)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2257, file: !2258, line: 92, baseType: !2280, size: 128, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2257, file: !2258, line: 93, baseType: !2280, size: 128, offset: 832)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2257, file: !2258, line: 106, baseType: !2290, size: 192, offset: 960)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2286, size: 192, elements: !808)
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "__path", arg: 1, scope: !2252, file: !2253, line: 453, type: !600)
!2293 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2252, file: !2253, line: 453, type: !2256)
!2294 = !DILocation(line: 0, scope: !2252)
!2295 = !DILocation(line: 455, column: 10, scope: !2252)
!2296 = !DILocation(line: 455, column: 3, scope: !2252)
!2297 = distinct !DISubprogram(name: "lstat", scope: !2253, file: !2253, line: 460, type: !2254, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2298 = !{!2299, !2300}
!2299 = !DILocalVariable(name: "__path", arg: 1, scope: !2297, file: !2253, line: 460, type: !600)
!2300 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2297, file: !2253, line: 460, type: !2256)
!2301 = !DILocation(line: 0, scope: !2297)
!2302 = !DILocation(line: 462, column: 10, scope: !2297)
!2303 = !DILocation(line: 462, column: 3, scope: !2297)
!2304 = distinct !DISubprogram(name: "fstat", scope: !2253, file: !2253, line: 467, type: !2305, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!595, !595, !2256}
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "__fd", arg: 1, scope: !2304, file: !2253, line: 467, type: !595)
!2309 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2304, file: !2253, line: 467, type: !2256)
!2310 = !DILocation(line: 0, scope: !2304)
!2311 = !DILocation(line: 469, column: 10, scope: !2304)
!2312 = !DILocation(line: 469, column: 3, scope: !2304)
!2313 = distinct !DISubprogram(name: "fstatat", scope: !2253, file: !2253, line: 474, type: !2314, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!595, !595, !600, !2256, !595}
!2316 = !{!2317, !2318, !2319, !2320}
!2317 = !DILocalVariable(name: "__fd", arg: 1, scope: !2313, file: !2253, line: 474, type: !595)
!2318 = !DILocalVariable(name: "__filename", arg: 2, scope: !2313, file: !2253, line: 474, type: !600)
!2319 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2313, file: !2253, line: 474, type: !2256)
!2320 = !DILocalVariable(name: "__flag", arg: 4, scope: !2313, file: !2253, line: 474, type: !595)
!2321 = !DILocation(line: 0, scope: !2313)
!2322 = !DILocation(line: 477, column: 10, scope: !2313)
!2323 = !DILocation(line: 477, column: 3, scope: !2313)
!2324 = distinct !DISubprogram(name: "mknod", scope: !2253, file: !2253, line: 483, type: !2325, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!595, !600, !2267, !2261}
!2327 = !{!2328, !2329, !2330}
!2328 = !DILocalVariable(name: "__path", arg: 1, scope: !2324, file: !2253, line: 483, type: !600)
!2329 = !DILocalVariable(name: "__mode", arg: 2, scope: !2324, file: !2253, line: 483, type: !2267)
!2330 = !DILocalVariable(name: "__dev", arg: 3, scope: !2324, file: !2253, line: 483, type: !2261)
!2331 = !DILocation(line: 0, scope: !2324)
!2332 = !DILocation(line: 485, column: 10, scope: !2324)
!2333 = !DILocation(line: 485, column: 3, scope: !2324)
!2334 = distinct !DISubprogram(name: "mknodat", scope: !2253, file: !2253, line: 491, type: !2335, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!595, !595, !600, !2267, !2261}
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "__fd", arg: 1, scope: !2334, file: !2253, line: 491, type: !595)
!2339 = !DILocalVariable(name: "__path", arg: 2, scope: !2334, file: !2253, line: 491, type: !600)
!2340 = !DILocalVariable(name: "__mode", arg: 3, scope: !2334, file: !2253, line: 491, type: !2267)
!2341 = !DILocalVariable(name: "__dev", arg: 4, scope: !2334, file: !2253, line: 491, type: !2261)
!2342 = !DILocation(line: 0, scope: !2334)
!2343 = !DILocation(line: 494, column: 10, scope: !2334)
!2344 = !DILocation(line: 494, column: 3, scope: !2334)
!2345 = distinct !DISubprogram(name: "stat64", scope: !2253, file: !2253, line: 502, type: !2346, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!595, !600, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2258, line: 119, size: 1152, elements: !2350)
!2350 = !{!2351, !2352, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2364, !2365, !2366, !2367}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2349, file: !2258, line: 121, baseType: !2261, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2349, file: !2258, line: 123, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2012, line: 149, baseType: !604)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2349, file: !2258, line: 124, baseType: !2265, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2349, file: !2258, line: 125, baseType: !2267, size: 32, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2349, file: !2258, line: 132, baseType: !2269, size: 32, offset: 224)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2349, file: !2258, line: 133, baseType: !2271, size: 32, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2349, file: !2258, line: 135, baseType: !595, size: 32, offset: 288)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2349, file: !2258, line: 136, baseType: !2261, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2349, file: !2258, line: 137, baseType: !2011, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2349, file: !2258, line: 143, baseType: !2276, size: 64, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2349, file: !2258, line: 144, baseType: !2363, size: 64, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2012, line: 180, baseType: !708)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2349, file: !2258, line: 152, baseType: !2280, size: 128, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2349, file: !2258, line: 153, baseType: !2280, size: 128, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2349, file: !2258, line: 154, baseType: !2280, size: 128, offset: 832)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2349, file: !2258, line: 164, baseType: !2290, size: 192, offset: 960)
!2368 = !{!2369, !2370}
!2369 = !DILocalVariable(name: "__path", arg: 1, scope: !2345, file: !2253, line: 502, type: !600)
!2370 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2345, file: !2253, line: 502, type: !2348)
!2371 = !DILocation(line: 0, scope: !2345)
!2372 = !DILocation(line: 504, column: 10, scope: !2345)
!2373 = !DILocation(line: 504, column: 3, scope: !2345)
!2374 = distinct !DISubprogram(name: "lstat64", scope: !2253, file: !2253, line: 509, type: !2346, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2375 = !{!2376, !2377}
!2376 = !DILocalVariable(name: "__path", arg: 1, scope: !2374, file: !2253, line: 509, type: !600)
!2377 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2374, file: !2253, line: 509, type: !2348)
!2378 = !DILocation(line: 0, scope: !2374)
!2379 = !DILocation(line: 511, column: 10, scope: !2374)
!2380 = !DILocation(line: 511, column: 3, scope: !2374)
!2381 = distinct !DISubprogram(name: "fstat64", scope: !2253, file: !2253, line: 516, type: !2382, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!595, !595, !2348}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "__fd", arg: 1, scope: !2381, file: !2253, line: 516, type: !595)
!2386 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2381, file: !2253, line: 516, type: !2348)
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 518, column: 10, scope: !2381)
!2389 = !DILocation(line: 518, column: 3, scope: !2381)
!2390 = distinct !DISubprogram(name: "fstatat64", scope: !2253, file: !2253, line: 523, type: !2391, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!595, !595, !600, !2348, !595}
!2393 = !{!2394, !2395, !2396, !2397}
!2394 = !DILocalVariable(name: "__fd", arg: 1, scope: !2390, file: !2253, line: 523, type: !595)
!2395 = !DILocalVariable(name: "__filename", arg: 2, scope: !2390, file: !2253, line: 523, type: !600)
!2396 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2390, file: !2253, line: 523, type: !2348)
!2397 = !DILocalVariable(name: "__flag", arg: 4, scope: !2390, file: !2253, line: 523, type: !595)
!2398 = !DILocation(line: 0, scope: !2390)
!2399 = !DILocation(line: 526, column: 10, scope: !2390)
!2400 = !DILocation(line: 526, column: 3, scope: !2390)
!2401 = distinct !DISubprogram(name: "ira_implicitly_set_insn_hard_regs", scope: !3, file: !3, line: 764, type: !2402, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414}
!2406 = !DILocalVariable(name: "set", arg: 1, scope: !2401, file: !3, line: 764, type: !2404)
!2407 = !DILocalVariable(name: "i", scope: !2401, file: !3, line: 766, type: !595)
!2408 = !DILocalVariable(name: "c", scope: !2401, file: !3, line: 766, type: !595)
!2409 = !DILocalVariable(name: "regno", scope: !2401, file: !3, line: 766, type: !595)
!2410 = !DILocalVariable(name: "ignore_p", scope: !2401, file: !3, line: 767, type: !594)
!2411 = !DILocalVariable(name: "cl", scope: !2401, file: !3, line: 768, type: !5)
!2412 = !DILocalVariable(name: "op", scope: !2401, file: !3, line: 769, type: !622)
!2413 = !DILocalVariable(name: "mode", scope: !2401, file: !3, line: 770, type: !37)
!2414 = !DILocalVariable(name: "p", scope: !2415, file: !3, line: 783, type: !600)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 782, column: 2)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 780, column: 11)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 774, column: 5)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 773, column: 3)
!2419 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 773, column: 3)
!2420 = !DILocation(line: 0, scope: !2401)
!2421 = !DILocation(line: 772, column: 3, scope: !2401)
!2422 = !DILocation(line: 773, column: 8, scope: !2419)
!2423 = !DILocation(line: 766, column: 13, scope: !2401)
!2424 = !DILocation(line: 773, column: 30, scope: !2418)
!2425 = !DILocation(line: 773, column: 17, scope: !2418)
!2426 = !DILocation(line: 773, column: 3, scope: !2419)
!2427 = !DILocation(line: 775, column: 12, scope: !2417)
!2428 = !DILocation(line: 777, column: 11, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 777, column: 11)
!2430 = !DILocation(line: 777, column: 25, scope: !2429)
!2431 = !DILocation(line: 777, column: 11, scope: !2417)
!2432 = !DILocation(line: 778, column: 7, scope: !2429)
!2433 = !DILocation(line: 0, scope: !2416)
!2434 = !DILocation(line: 780, column: 11, scope: !2416)
!2435 = !DILocation(line: 778, column: 2, scope: !2429)
!2436 = !DILocation(line: 0, scope: !2417)
!2437 = !DILocation(line: 780, column: 25, scope: !2416)
!2438 = !DILocation(line: 781, column: 4, scope: !2416)
!2439 = !DILocation(line: 781, column: 8, scope: !2416)
!2440 = !DILocation(line: 781, column: 19, scope: !2416)
!2441 = !DILocation(line: 781, column: 31, scope: !2416)
!2442 = !DILocation(line: 781, column: 43, scope: !2416)
!2443 = !DILocation(line: 780, column: 11, scope: !2417)
!2444 = !DILocation(line: 785, column: 12, scope: !2415)
!2445 = !DILocation(line: 783, column: 20, scope: !2415)
!2446 = !DILocation(line: 0, scope: !2415)
!2447 = !DILocation(line: 785, column: 26, scope: !2415)
!2448 = !DILocation(line: 786, column: 23, scope: !2415)
!2449 = !DILocation(line: 0, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 807, column: 9)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 795, column: 3)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 793, column: 15)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 791, column: 15)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 789, column: 10)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 788, column: 4)
!2456 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 788, column: 4)
!2457 = !DILocation(line: 788, column: 9, scope: !2456)
!2458 = !DILocation(line: 0, scope: !2456)
!2459 = !DILocation(line: 788, column: 32, scope: !2455)
!2460 = !DILocation(line: 788, column: 4, scope: !2456)
!2461 = !DILocation(line: 793, column: 17, scope: !2452)
!2462 = !DILocation(line: 793, column: 15, scope: !2453)
!2463 = !DILocation(line: 794, column: 8, scope: !2452)
!2464 = !DILocation(line: 806, column: 6, scope: !2451)
!2465 = !DILocation(line: 804, column: 11, scope: !2451)
!2466 = !DILocation(line: 807, column: 12, scope: !2450)
!2467 = !DILocation(line: 808, column: 9, scope: !2450)
!2468 = !DILocation(line: 808, column: 13, scope: !2450)
!2469 = !DILocation(line: 809, column: 9, scope: !2450)
!2470 = !DILocation(line: 809, column: 6, scope: !2450)
!2471 = !DILocation(line: 807, column: 9, scope: !2451)
!2472 = !DILocation(line: 810, column: 7, scope: !2450)
!2473 = !DILocation(line: 0, scope: !2454)
!2474 = !DILocation(line: 788, column: 42, scope: !2455)
!2475 = !DILocation(line: 788, column: 39, scope: !2455)
!2476 = !DILocation(line: 788, column: 4, scope: !2455)
!2477 = distinct !{!2477, !2460, !2478}
!2478 = !DILocation(line: 812, column: 3, scope: !2456)
!2479 = !DILocation(line: 773, column: 43, scope: !2418)
!2480 = !DILocation(line: 773, column: 3, scope: !2418)
!2481 = distinct !{!2481, !2426, !2482}
!2482 = !DILocation(line: 814, column: 5, scope: !2419)
!2483 = !DILocation(line: 815, column: 1, scope: !2401)
!2484 = distinct !DISubprogram(name: "rhs_regno", scope: !428, file: !428, line: 1051, type: !2485, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!7, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !623, line: 51, baseType: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "x", arg: 1, scope: !2484, file: !428, line: 1051, type: !2487)
!2492 = !DILocation(line: 0, scope: !2484)
!2493 = !DILocation(line: 1053, column: 10, scope: !2484)
!2494 = !DILocation(line: 1053, column: 3, scope: !2484)
!2495 = distinct !DISubprogram(name: "insn_constraint_len", scope: !2496, file: !2496, line: 177, type: !2497, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2499)
!2496 = !DIFile(filename: "./tm-preds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!1093, !598, !600}
!2499 = !{!2500, !2501}
!2500 = !DILocalVariable(name: "fc", arg: 1, scope: !2495, file: !2496, line: 177, type: !598)
!2501 = !DILocalVariable(name: "str", arg: 2, scope: !2495, file: !2496, line: 177, type: !600)
!2502 = !DILocation(line: 0, scope: !2495)
!2503 = !DILocation(line: 179, column: 3, scope: !2495)
!2504 = !DILocation(line: 185, column: 1, scope: !2495)
!2505 = distinct !DISubprogram(name: "ira_rebuild_start_finish_chains", scope: !3, file: !3, line: 1223, type: !2506, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null}
!2508 = !DILocation(line: 1225, column: 13, scope: !2505)
!2509 = !DILocation(line: 1225, column: 3, scope: !2505)
!2510 = !DILocation(line: 1226, column: 13, scope: !2505)
!2511 = !DILocation(line: 1226, column: 3, scope: !2505)
!2512 = !DILocation(line: 1227, column: 3, scope: !2505)
!2513 = !DILocation(line: 1228, column: 1, scope: !2505)
!2514 = distinct !DISubprogram(name: "create_start_finish_chains", scope: !3, file: !3, line: 1191, type: !2506, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2515)
!2515 = !{!2516, !2517, !2522}
!2516 = !DILocalVariable(name: "a", scope: !2514, file: !3, line: 1193, type: !613)
!2517 = !DILocalVariable(name: "ai", scope: !2514, file: !3, line: 1194, type: !2518)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_iterator", file: !608, line: 935, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !608, line: 932, size: 32, elements: !2520)
!2520 = !{!2521}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2519, file: !608, line: 934, baseType: !595, size: 32)
!2522 = !DILocalVariable(name: "r", scope: !2514, file: !3, line: 1195, type: !607)
!2523 = !DILocation(line: 1193, column: 3, scope: !2514)
!2524 = !DILocation(line: 1194, column: 3, scope: !2514)
!2525 = !DILocation(line: 1198, column: 46, scope: !2514)
!2526 = !DILocation(line: 1199, column: 11, scope: !2514)
!2527 = !DILocation(line: 1198, column: 32, scope: !2514)
!2528 = !DILocation(line: 1198, column: 5, scope: !2514)
!2529 = !DILocation(line: 1201, column: 4, scope: !2514)
!2530 = !DILocation(line: 1201, column: 18, scope: !2514)
!2531 = !DILocation(line: 1200, column: 3, scope: !2514)
!2532 = !DILocation(line: 1203, column: 46, scope: !2514)
!2533 = !DILocation(line: 1204, column: 11, scope: !2514)
!2534 = !DILocation(line: 1203, column: 32, scope: !2514)
!2535 = !DILocation(line: 1203, column: 5, scope: !2514)
!2536 = !DILocation(line: 1206, column: 4, scope: !2514)
!2537 = !DILocation(line: 1206, column: 18, scope: !2514)
!2538 = !DILocation(line: 1205, column: 3, scope: !2514)
!2539 = !DILocation(line: 0, scope: !2514)
!2540 = !DILocation(line: 1207, column: 3, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1207, column: 3)
!2542 = !DILocation(line: 1207, column: 3, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 1207, column: 3)
!2544 = !DILocation(line: 1209, column: 16, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 1209, column: 7)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1208, column: 5)
!2547 = !DILocation(line: 1209, column: 12, scope: !2545)
!2548 = !DILocation(line: 0, scope: !2545)
!2549 = !DILocation(line: 1209, column: 43, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1209, column: 7)
!2551 = !DILocation(line: 1209, column: 7, scope: !2545)
!2552 = distinct !{!2552, !2540, !2553}
!2553 = !DILocation(line: 1216, column: 5, scope: !2541)
!2554 = !DILocation(line: 1211, column: 20, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1210, column: 2)
!2556 = !DILocation(line: 1211, column: 46, scope: !2555)
!2557 = !DILocation(line: 1211, column: 7, scope: !2555)
!2558 = !DILocation(line: 1211, column: 18, scope: !2555)
!2559 = !DILocation(line: 1212, column: 37, scope: !2555)
!2560 = !DILocation(line: 1213, column: 21, scope: !2555)
!2561 = !DILocation(line: 1213, column: 48, scope: !2555)
!2562 = !DILocation(line: 1213, column: 7, scope: !2555)
!2563 = !DILocation(line: 1213, column: 19, scope: !2555)
!2564 = !DILocation(line: 1214, column: 40, scope: !2555)
!2565 = !DILocation(line: 1209, column: 59, scope: !2550)
!2566 = !DILocation(line: 1209, column: 7, scope: !2550)
!2567 = distinct !{!2567, !2551, !2568}
!2568 = !DILocation(line: 1215, column: 2, scope: !2545)
!2569 = !DILocation(line: 1217, column: 1, scope: !2514)
!2570 = distinct !DISubprogram(name: "ira_print_live_range_list", scope: !3, file: !3, line: 1278, type: !2571, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !1985, !607}
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "f", arg: 1, scope: !2570, file: !3, line: 1278, type: !1985)
!2575 = !DILocalVariable(name: "r", arg: 2, scope: !2570, file: !3, line: 1278, type: !607)
!2576 = !DILocation(line: 0, scope: !2570)
!2577 = !DILocation(line: 1280, column: 3, scope: !2570)
!2578 = !DILocation(line: 1280, column: 12, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1280, column: 3)
!2580 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1280, column: 3)
!2581 = !DILocation(line: 1280, column: 3, scope: !2580)
!2582 = !DILocation(line: 1281, column: 33, scope: !2579)
!2583 = !DILocation(line: 1281, column: 43, scope: !2579)
!2584 = !DILocation(line: 1281, column: 5, scope: !2579)
!2585 = !DILocation(line: 1280, column: 28, scope: !2579)
!2586 = !DILocation(line: 1280, column: 3, scope: !2579)
!2587 = distinct !{!2587, !2581, !2588}
!2588 = !DILocation(line: 1281, column: 49, scope: !2580)
!2589 = !DILocation(line: 1282, column: 3, scope: !2570)
!2590 = !DILocation(line: 1283, column: 1, scope: !2570)
!2591 = distinct !DISubprogram(name: "ira_debug_live_range_list", scope: !3, file: !3, line: 1287, type: !2592, scopeLine: 1288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !607}
!2594 = !{!2595}
!2595 = !DILocalVariable(name: "r", arg: 1, scope: !2591, file: !3, line: 1287, type: !607)
!2596 = !DILocation(line: 0, scope: !2591)
!2597 = !DILocation(line: 1289, column: 30, scope: !2591)
!2598 = !DILocation(line: 1289, column: 3, scope: !2591)
!2599 = !DILocation(line: 1290, column: 1, scope: !2591)
!2600 = distinct !DISubprogram(name: "ira_debug_allocno_live_ranges", scope: !3, file: !3, line: 1302, type: !2601, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !613}
!2603 = !{!2604}
!2604 = !DILocalVariable(name: "a", arg: 1, scope: !2600, file: !3, line: 1302, type: !613)
!2605 = !DILocation(line: 0, scope: !2600)
!2606 = !DILocation(line: 1304, column: 30, scope: !2600)
!2607 = !DILocation(line: 1304, column: 3, scope: !2600)
!2608 = !DILocation(line: 1305, column: 1, scope: !2600)
!2609 = distinct !DISubprogram(name: "print_allocno_live_ranges", scope: !3, file: !3, line: 1294, type: !2610, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !1985, !613}
!2612 = !{!2613, !2614}
!2613 = !DILocalVariable(name: "f", arg: 1, scope: !2609, file: !3, line: 1294, type: !1985)
!2614 = !DILocalVariable(name: "a", arg: 2, scope: !2609, file: !3, line: 1294, type: !613)
!2615 = !DILocation(line: 0, scope: !2609)
!2616 = !DILocation(line: 1296, column: 29, scope: !2609)
!2617 = !DILocation(line: 1296, column: 46, scope: !2609)
!2618 = !DILocation(line: 1296, column: 3, scope: !2609)
!2619 = !DILocation(line: 1297, column: 33, scope: !2609)
!2620 = !DILocation(line: 1297, column: 3, scope: !2609)
!2621 = !DILocation(line: 1298, column: 1, scope: !2609)
!2622 = distinct !DISubprogram(name: "ira_debug_live_ranges", scope: !3, file: !3, line: 1320, type: !2506, scopeLine: 1321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!2623 = !DILocation(line: 1322, column: 22, scope: !2622)
!2624 = !DILocation(line: 1322, column: 3, scope: !2622)
!2625 = !DILocation(line: 1323, column: 1, scope: !2622)
!2626 = distinct !DISubprogram(name: "print_live_ranges", scope: !3, file: !3, line: 1309, type: !2627, scopeLine: 1310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !1985}
!2629 = !{!2630, !2631, !2632}
!2630 = !DILocalVariable(name: "f", arg: 1, scope: !2626, file: !3, line: 1309, type: !1985)
!2631 = !DILocalVariable(name: "a", scope: !2626, file: !3, line: 1311, type: !613)
!2632 = !DILocalVariable(name: "ai", scope: !2626, file: !3, line: 1312, type: !2518)
!2633 = !DILocation(line: 0, scope: !2626)
!2634 = !DILocation(line: 1311, column: 3, scope: !2626)
!2635 = !DILocation(line: 1312, column: 3, scope: !2626)
!2636 = !DILocation(line: 1314, column: 3, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 1314, column: 3)
!2638 = !DILocation(line: 1314, column: 3, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1314, column: 3)
!2640 = !DILocation(line: 1315, column: 35, scope: !2639)
!2641 = !DILocation(line: 1315, column: 5, scope: !2639)
!2642 = distinct !{!2642, !2636, !2643}
!2643 = !DILocation(line: 1315, column: 36, scope: !2637)
!2644 = !DILocation(line: 1316, column: 1, scope: !2626)
!2645 = distinct !DISubprogram(name: "ira_create_allocno_live_ranges", scope: !3, file: !3, line: 1329, type: !2506, scopeLine: 1330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!2646 = !DILocation(line: 1331, column: 36, scope: !2645)
!2647 = !DILocation(line: 1331, column: 19, scope: !2645)
!2648 = !DILocation(line: 1331, column: 17, scope: !2645)
!2649 = !DILocation(line: 1332, column: 14, scope: !2645)
!2650 = !DILocation(line: 1333, column: 17, scope: !2645)
!2651 = !DILocation(line: 1335, column: 29, scope: !2645)
!2652 = !DILocation(line: 1335, column: 46, scope: !2645)
!2653 = !DILocation(line: 1335, column: 15, scope: !2645)
!2654 = !DILocation(line: 1335, column: 5, scope: !2645)
!2655 = !DILocation(line: 1336, column: 37, scope: !2645)
!2656 = !DILocation(line: 1336, column: 54, scope: !2645)
!2657 = !DILocation(line: 1336, column: 3, scope: !2645)
!2658 = !DILocation(line: 1337, column: 33, scope: !2645)
!2659 = !DILocation(line: 1337, column: 3, scope: !2645)
!2660 = !DILocation(line: 1339, column: 19, scope: !2645)
!2661 = !DILocation(line: 1339, column: 17, scope: !2645)
!2662 = !DILocation(line: 1340, column: 3, scope: !2645)
!2663 = !DILocation(line: 1341, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 1341, column: 7)
!2665 = !DILocation(line: 1341, column: 33, scope: !2664)
!2666 = !DILocation(line: 1341, column: 40, scope: !2664)
!2667 = !DILocation(line: 1341, column: 54, scope: !2664)
!2668 = !DILocation(line: 1341, column: 37, scope: !2664)
!2669 = !DILocation(line: 1342, column: 5, scope: !2664)
!2670 = !DILocation(line: 1344, column: 13, scope: !2645)
!2671 = !DILocation(line: 1344, column: 3, scope: !2645)
!2672 = !DILocation(line: 1345, column: 3, scope: !2645)
!2673 = !DILocation(line: 1346, column: 1, scope: !2645)
!2674 = distinct !DISubprogram(name: "process_bb_node_lives", scope: !3, file: !3, line: 917, type: !2675, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !1817}
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2692, !2693, !2694, !2695, !2702, !2703, !2707, !2772, !2773, !2774, !2779, !2780, !2784, !2790, !2796, !2801}
!2678 = !DILocalVariable(name: "loop_tree_node", arg: 1, scope: !2674, file: !3, line: 917, type: !1817)
!2679 = !DILocalVariable(name: "i", scope: !2674, file: !3, line: 919, type: !595)
!2680 = !DILocalVariable(name: "freq", scope: !2674, file: !3, line: 919, type: !595)
!2681 = !DILocalVariable(name: "j", scope: !2674, file: !3, line: 920, type: !7)
!2682 = !DILocalVariable(name: "bb", scope: !2674, file: !3, line: 921, type: !1155)
!2683 = !DILocalVariable(name: "insn", scope: !2674, file: !3, line: 922, type: !622)
!2684 = !DILocalVariable(name: "bi", scope: !2674, file: !3, line: 923, type: !2685)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !678, line: 218, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !678, line: 203, size: 256, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2686, file: !678, line: 206, baseType: !681, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2686, file: !678, line: 209, baseType: !681, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2686, file: !678, line: 212, baseType: !7, size: 32, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2686, file: !678, line: 217, baseType: !691, size: 64, offset: 192)
!2692 = !DILocalVariable(name: "reg_live_out", scope: !2674, file: !3, line: 924, type: !1838)
!2693 = !DILocalVariable(name: "px", scope: !2674, file: !3, line: 925, type: !7)
!2694 = !DILocalVariable(name: "set_p", scope: !2674, file: !3, line: 926, type: !594)
!2695 = !DILocalVariable(name: "cover_class", scope: !2696, file: !3, line: 945, type: !5)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 944, column: 4)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 943, column: 6)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 942, column: 7)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 942, column: 7)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 930, column: 5)
!2701 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 929, column: 7)
!2702 = !DILocalVariable(name: "cl", scope: !2696, file: !3, line: 945, type: !5)
!2703 = !DILocalVariable(name: "a", scope: !2704, file: !3, line: 962, type: !613)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 961, column: 2)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 960, column: 7)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 960, column: 7)
!2707 = !DILocalVariable(name: "def_rec", scope: !2708, file: !3, line: 989, type: !2711)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 988, column: 2)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 987, column: 7)
!2710 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 987, column: 7)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !1910, line: 429, baseType: !2713)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !1910, line: 422, size: 704, elements: !2715)
!2715 = !{!2716, !2754, !2760, !2765}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2714, file: !1910, line: 424, baseType: !2717, size: 512)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !1910, line: 356, size: 512, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2729, !2749, !2750, !2751, !2752, !2753}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !2717, file: !1910, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2717, file: !1910, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2717, file: !1910, line: 364, baseType: !595, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2717, file: !1910, line: 365, baseType: !622, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !2717, file: !1910, line: 366, baseType: !2724, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !1910, line: 449, size: 128, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2725, file: !1910, line: 451, baseType: !2712, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2725, file: !1910, line: 452, baseType: !2724, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !2717, file: !1910, line: 370, baseType: !2730, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !1910, line: 433, size: 384, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2748}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2731, file: !1910, line: 435, baseType: !622, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2731, file: !1910, line: 436, baseType: !2711, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2731, file: !1910, line: 437, baseType: !2711, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !2731, file: !1910, line: 439, baseType: !2711, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !2731, file: !1910, line: 440, baseType: !2738, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !1910, line: 339, size: 192, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !2740, file: !1910, line: 341, baseType: !622, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2740, file: !1910, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2740, file: !1910, line: 346, baseType: !595, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !2740, file: !1910, line: 347, baseType: !7, size: 32, offset: 96)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !2740, file: !1910, line: 348, baseType: !7, size: 32, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !2740, file: !1910, line: 349, baseType: !7, size: 32, offset: 160)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !2731, file: !1910, line: 444, baseType: !595, size: 32, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !2717, file: !1910, line: 374, baseType: !2713, size: 64, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !2717, file: !1910, line: 375, baseType: !2713, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !2717, file: !1910, line: 376, baseType: !7, size: 32, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2717, file: !1910, line: 379, baseType: !595, size: 32, offset: 416)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !2717, file: !1910, line: 382, baseType: !7, size: 32, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !2714, file: !1910, line: 425, baseType: !2755, size: 576)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !1910, line: 398, size: 576, elements: !2756)
!2756 = !{!2757, !2758}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2755, file: !1910, line: 400, baseType: !2717, size: 512)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !2755, file: !1910, line: 405, baseType: !2759, size: 64, offset: 512)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !2714, file: !1910, line: 426, baseType: !2761, size: 576)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !1910, line: 388, size: 576, elements: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2761, file: !1910, line: 390, baseType: !2717, size: 512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2761, file: !1910, line: 394, baseType: !1155, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !2714, file: !1910, line: 427, baseType: !2766, size: 704)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !1910, line: 413, size: 704, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2766, file: !1910, line: 415, baseType: !2755, size: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2766, file: !1910, line: 416, baseType: !595, size: 32, offset: 576)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2766, file: !1910, line: 417, baseType: !595, size: 32, offset: 608)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2766, file: !1910, line: 418, baseType: !37, size: 32, offset: 640)
!2772 = !DILocalVariable(name: "use_rec", scope: !2708, file: !3, line: 989, type: !2711)
!2773 = !DILocalVariable(name: "call_p", scope: !2708, file: !3, line: 990, type: !594)
!2774 = !DILocalVariable(name: "i", scope: !2775, file: !3, line: 1028, type: !595)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1027, column: 8)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1026, column: 6)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 1026, column: 6)
!2778 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1025, column: 8)
!2779 = !DILocalVariable(name: "reg", scope: !2775, file: !3, line: 1029, type: !622)
!2780 = !DILocalVariable(name: "set", scope: !2781, file: !3, line: 1034, type: !622)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1033, column: 5)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 1032, column: 3)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1032, column: 3)
!2784 = !DILocalVariable(name: "a", scope: !2785, file: !3, line: 1063, type: !613)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 1062, column: 10)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1061, column: 8)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1061, column: 8)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 1058, column: 6)
!2789 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1057, column: 8)
!2790 = !DILocalVariable(name: "ureg", scope: !2791, file: !3, line: 1116, type: !622)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1115, column: 3)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1114, column: 8)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 1114, column: 8)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 1108, column: 6)
!2795 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1107, column: 8)
!2796 = !DILocalVariable(name: "regno", scope: !2797, file: !3, line: 1134, type: !7)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1133, column: 4)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 1132, column: 2)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1132, column: 2)
!2800 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1131, column: 11)
!2801 = !DILocalVariable(name: "cover_class", scope: !2802, file: !3, line: 1178, type: !5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 1177, column: 7)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 1176, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 1176, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 1175, column: 7)
!2806 = !DILocation(line: 0, scope: !2674)
!2807 = !DILocation(line: 920, column: 3, scope: !2674)
!2808 = !DILocation(line: 923, column: 3, scope: !2674)
!2809 = !DILocation(line: 928, column: 24, scope: !2674)
!2810 = !DILocation(line: 929, column: 10, scope: !2701)
!2811 = !DILocation(line: 929, column: 7, scope: !2674)
!2812 = !DILocation(line: 0, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 931, column: 7)
!2814 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 931, column: 7)
!2815 = !DILocation(line: 931, column: 7, scope: !2814)
!2816 = !DILocation(line: 0, scope: !2814)
!2817 = !DILocation(line: 931, column: 21, scope: !2813)
!2818 = !DILocation(line: 933, column: 22, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 932, column: 2)
!2820 = !DILocation(line: 933, column: 4, scope: !2819)
!2821 = !DILocation(line: 933, column: 46, scope: !2819)
!2822 = !DILocation(line: 934, column: 4, scope: !2819)
!2823 = !DILocation(line: 934, column: 54, scope: !2819)
!2824 = !DILocation(line: 931, column: 50, scope: !2813)
!2825 = !DILocation(line: 931, column: 7, scope: !2813)
!2826 = distinct !{!2826, !2815, !2827}
!2827 = !DILocation(line: 935, column: 2, scope: !2814)
!2828 = !DILocation(line: 936, column: 20, scope: !2700)
!2829 = !DILocation(line: 937, column: 22, scope: !2700)
!2830 = !DILocation(line: 938, column: 24, scope: !2700)
!2831 = !DILocation(line: 938, column: 7, scope: !2700)
!2832 = !DILocation(line: 939, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 939, column: 7)
!2834 = !DILocation(line: 940, column: 7, scope: !2700)
!2835 = !DILocation(line: 941, column: 7, scope: !2700)
!2836 = !DILocation(line: 942, column: 12, scope: !2699)
!2837 = !DILocation(line: 0, scope: !2699)
!2838 = !DILocation(line: 942, column: 21, scope: !2698)
!2839 = !DILocation(line: 942, column: 7, scope: !2699)
!2840 = !DILocation(line: 943, column: 6, scope: !2697)
!2841 = !DILocation(line: 943, column: 6, scope: !2698)
!2842 = !DILocation(line: 947, column: 40, scope: !2696)
!2843 = !DILocation(line: 947, column: 20, scope: !2696)
!2844 = !DILocation(line: 0, scope: !2696)
!2845 = !DILocation(line: 0, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 948, column: 6)
!2847 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 948, column: 6)
!2848 = !DILocation(line: 948, column: 11, scope: !2847)
!2849 = !DILocation(line: 0, scope: !2847)
!2850 = !DILocation(line: 949, column: 10, scope: !2846)
!2851 = !DILocation(line: 950, column: 6, scope: !2846)
!2852 = !DILocation(line: 948, column: 6, scope: !2847)
!2853 = !DILocation(line: 953, column: 3, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 952, column: 8)
!2855 = !DILocation(line: 953, column: 24, scope: !2854)
!2856 = !DILocation(line: 954, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 954, column: 7)
!2858 = !DILocation(line: 954, column: 38, scope: !2857)
!2859 = !DILocation(line: 954, column: 7, scope: !2854)
!2860 = !DILocation(line: 955, column: 36, scope: !2857)
!2861 = !DILocation(line: 951, column: 5, scope: !2846)
!2862 = !DILocation(line: 955, column: 5, scope: !2857)
!2863 = !DILocation(line: 948, column: 6, scope: !2846)
!2864 = distinct !{!2864, !2852, !2865}
!2865 = !DILocation(line: 958, column: 8, scope: !2847)
!2866 = !DILocation(line: 942, column: 47, scope: !2698)
!2867 = !DILocation(line: 942, column: 7, scope: !2698)
!2868 = distinct !{!2868, !2839, !2869}
!2869 = !DILocation(line: 959, column: 4, scope: !2699)
!2870 = !DILocation(line: 960, column: 7, scope: !2706)
!2871 = !DILocation(line: 960, column: 7, scope: !2705)
!2872 = !DILocation(line: 962, column: 22, scope: !2704)
!2873 = !DILocation(line: 962, column: 49, scope: !2704)
!2874 = !DILocation(line: 0, scope: !2704)
!2875 = !DILocation(line: 964, column: 10, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 964, column: 8)
!2877 = !DILocation(line: 964, column: 8, scope: !2704)
!2878 = !DILocation(line: 967, column: 4, scope: !2704)
!2879 = !DILocation(line: 968, column: 21, scope: !2704)
!2880 = !DILocation(line: 968, column: 4, scope: !2704)
!2881 = !DILocation(line: 969, column: 2, scope: !2705)
!2882 = distinct !{!2882, !2870, !2883}
!2883 = !DILocation(line: 969, column: 2, scope: !2706)
!2884 = !DILocation(line: 971, column: 14, scope: !2700)
!2885 = !DILocation(line: 972, column: 16, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 972, column: 11)
!2887 = !DILocation(line: 972, column: 11, scope: !2700)
!2888 = !DILocation(line: 976, column: 20, scope: !2700)
!2889 = !DILocation(line: 987, column: 7, scope: !2710)
!2890 = !DILocation(line: 0, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 995, column: 8)
!2892 = !DILocation(line: 942, column: 14, scope: !2699)
!2893 = !DILocation(line: 0, scope: !2710)
!2894 = !DILocation(line: 987, column: 7, scope: !2709)
!2895 = !DILocation(line: 992, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 992, column: 8)
!2897 = !DILocation(line: 992, column: 8, scope: !2708)
!2898 = !DILocation(line: 995, column: 8, scope: !2891)
!2899 = !DILocation(line: 995, column: 34, scope: !2891)
!2900 = !DILocation(line: 995, column: 41, scope: !2891)
!2901 = !DILocation(line: 995, column: 55, scope: !2891)
!2902 = !DILocation(line: 995, column: 38, scope: !2891)
!2903 = !DILocation(line: 997, column: 8, scope: !2891)
!2904 = !DILocation(line: 997, column: 41, scope: !2891)
!2905 = !DILocation(line: 997, column: 49, scope: !2891)
!2906 = !DILocation(line: 997, column: 55, scope: !2891)
!2907 = !DILocation(line: 998, column: 8, scope: !2891)
!2908 = !DILocation(line: 996, column: 6, scope: !2891)
!2909 = !DILocation(line: 1009, column: 13, scope: !2708)
!2910 = !DILocation(line: 0, scope: !2708)
!2911 = !DILocation(line: 1010, column: 19, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1010, column: 4)
!2913 = !DILocation(line: 1010, column: 9, scope: !2912)
!2914 = !DILocation(line: 0, scope: !2912)
!2915 = !DILocation(line: 1010, column: 40, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 1010, column: 4)
!2917 = !DILocation(line: 1010, column: 4, scope: !2912)
!2918 = !DILocation(line: 1011, column: 22, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 1011, column: 10)
!2920 = !DILocation(line: 1011, column: 10, scope: !2916)
!2921 = !DILocation(line: 1012, column: 8, scope: !2919)
!2922 = !DILocation(line: 1010, column: 57, scope: !2916)
!2923 = !DILocation(line: 1010, column: 4, scope: !2916)
!2924 = distinct !{!2924, !2917, !2925}
!2925 = !DILocation(line: 1012, column: 31, scope: !2912)
!2926 = !DILocation(line: 1025, column: 8, scope: !2778)
!2927 = !DILocation(line: 1025, column: 34, scope: !2778)
!2928 = !DILocation(line: 1025, column: 46, scope: !2778)
!2929 = !DILocation(line: 1025, column: 49, scope: !2778)
!2930 = !DILocation(line: 1025, column: 8, scope: !2708)
!2931 = !DILocation(line: 1026, column: 21, scope: !2777)
!2932 = !DILocation(line: 0, scope: !2783)
!2933 = !DILocation(line: 1026, column: 11, scope: !2777)
!2934 = !DILocation(line: 0, scope: !2777)
!2935 = !DILocation(line: 1026, column: 42, scope: !2776)
!2936 = !DILocation(line: 1026, column: 6, scope: !2777)
!2937 = !DILocation(line: 1031, column: 9, scope: !2775)
!2938 = !DILocation(line: 0, scope: !2775)
!2939 = !DILocation(line: 1032, column: 12, scope: !2783)
!2940 = !DILocation(line: 1032, column: 8, scope: !2783)
!2941 = !DILocation(line: 1032, column: 47, scope: !2782)
!2942 = !DILocation(line: 1032, column: 3, scope: !2783)
!2943 = !DILocation(line: 1036, column: 13, scope: !2781)
!2944 = !DILocation(line: 0, scope: !2781)
!2945 = !DILocation(line: 1037, column: 11, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1037, column: 11)
!2947 = !DILocation(line: 1037, column: 26, scope: !2946)
!2948 = !DILocation(line: 1038, column: 4, scope: !2946)
!2949 = !DILocation(line: 1038, column: 37, scope: !2946)
!2950 = !DILocation(line: 1038, column: 7, scope: !2946)
!2951 = !DILocation(line: 1037, column: 11, scope: !2781)
!2952 = !DILocation(line: 1042, column: 19, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1039, column: 9)
!2954 = !DILocation(line: 1042, column: 4, scope: !2953)
!2955 = !DILocation(line: 1043, column: 4, scope: !2953)
!2956 = !DILocation(line: 1032, column: 3, scope: !2782)
!2957 = distinct !{!2957, !2942, !2958}
!2958 = !DILocation(line: 1045, column: 5, scope: !2783)
!2959 = !DILocation(line: 1026, column: 59, scope: !2776)
!2960 = !DILocation(line: 1026, column: 6, scope: !2776)
!2961 = distinct !{!2961, !2936, !2962}
!2962 = !DILocation(line: 1046, column: 8, scope: !2777)
!2963 = !DILocation(line: 1048, column: 4, scope: !2708)
!2964 = !DILocation(line: 1049, column: 4, scope: !2708)
!2965 = !DILocation(line: 1050, column: 4, scope: !2708)
!2966 = !DILocation(line: 1053, column: 19, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1053, column: 4)
!2968 = !DILocation(line: 1053, column: 9, scope: !2967)
!2969 = !DILocation(line: 0, scope: !2967)
!2970 = !DILocation(line: 1053, column: 40, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 1053, column: 4)
!2972 = !DILocation(line: 1053, column: 4, scope: !2967)
!2973 = !DILocation(line: 1054, column: 22, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1054, column: 10)
!2975 = !DILocation(line: 1054, column: 10, scope: !2971)
!2976 = !DILocation(line: 1055, column: 8, scope: !2974)
!2977 = !DILocation(line: 1053, column: 57, scope: !2971)
!2978 = !DILocation(line: 1053, column: 4, scope: !2971)
!2979 = distinct !{!2979, !2972, !2980}
!2980 = !DILocation(line: 1055, column: 31, scope: !2967)
!2981 = !DILocation(line: 1057, column: 8, scope: !2708)
!2982 = !DILocation(line: 1059, column: 21, scope: !2788)
!2983 = !DILocation(line: 1061, column: 8, scope: !2787)
!2984 = !DILocation(line: 0, scope: !2700)
!2985 = !DILocation(line: 1061, column: 8, scope: !2786)
!2986 = !DILocation(line: 0, scope: !2786)
!2987 = !DILocation(line: 1063, column: 23, scope: !2785)
!2988 = !DILocation(line: 0, scope: !2785)
!2989 = !DILocation(line: 1065, column: 9, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1065, column: 9)
!2991 = !DILocation(line: 1065, column: 37, scope: !2990)
!2992 = !DILocation(line: 1065, column: 34, scope: !2990)
!2993 = !DILocation(line: 1065, column: 9, scope: !2785)
!2994 = !DILocation(line: 1071, column: 7, scope: !2990)
!2995 = !DILocation(line: 1071, column: 29, scope: !2990)
!2996 = !DILocation(line: 1073, column: 46, scope: !2785)
!2997 = !DILocation(line: 1073, column: 30, scope: !2785)
!2998 = !DILocation(line: 1074, column: 5, scope: !2785)
!2999 = !DILocation(line: 1074, column: 34, scope: !2785)
!3000 = !DILocation(line: 1078, column: 9, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1078, column: 9)
!3002 = !DILocation(line: 1078, column: 15, scope: !3001)
!3003 = !DILocation(line: 1079, column: 9, scope: !3001)
!3004 = !DILocation(line: 1079, column: 12, scope: !3001)
!3005 = !DILocation(line: 1080, column: 16, scope: !3001)
!3006 = !DILocation(line: 1078, column: 9, scope: !2785)
!3007 = !DILocation(line: 1082, column: 9, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1081, column: 7)
!3009 = !DILocation(line: 1083, column: 9, scope: !3008)
!3010 = !DILocation(line: 1084, column: 7, scope: !3008)
!3011 = !DILocation(line: 1085, column: 9, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1085, column: 9)
!3013 = !DILocation(line: 1085, column: 9, scope: !2785)
!3014 = !DILocation(line: 1087, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1086, column: 7)
!3016 = !DILocation(line: 1089, column: 9, scope: !3015)
!3017 = !DILocation(line: 1091, column: 7, scope: !3015)
!3018 = distinct !{!3018, !2983, !3019}
!3019 = !DILocation(line: 1092, column: 3, scope: !2787)
!3020 = !DILocation(line: 1095, column: 4, scope: !2708)
!3021 = !DILocation(line: 1097, column: 14, scope: !2708)
!3022 = !DILocation(line: 1100, column: 19, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1100, column: 4)
!3024 = !DILocation(line: 1100, column: 9, scope: !3023)
!3025 = !DILocation(line: 0, scope: !3023)
!3026 = !DILocation(line: 1100, column: 40, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 1100, column: 4)
!3028 = !DILocation(line: 1100, column: 4, scope: !3023)
!3029 = !DILocation(line: 1101, column: 6, scope: !3027)
!3030 = !DILocation(line: 1100, column: 57, scope: !3027)
!3031 = !DILocation(line: 1100, column: 4, scope: !3027)
!3032 = distinct !{!3032, !3028, !3033}
!3033 = !DILocation(line: 1101, column: 29, scope: !3023)
!3034 = !DILocation(line: 1103, column: 4, scope: !2708)
!3035 = !DILocation(line: 1105, column: 12, scope: !2708)
!3036 = !DILocation(line: 1107, column: 8, scope: !2795)
!3037 = !DILocation(line: 1107, column: 8, scope: !2708)
!3038 = !DILocation(line: 1109, column: 8, scope: !2794)
!3039 = !DILocation(line: 1114, column: 23, scope: !2793)
!3040 = !DILocation(line: 1114, column: 13, scope: !2793)
!3041 = !DILocation(line: 0, scope: !2793)
!3042 = !DILocation(line: 1114, column: 44, scope: !2792)
!3043 = !DILocation(line: 1114, column: 8, scope: !2793)
!3044 = !DILocation(line: 1116, column: 16, scope: !2791)
!3045 = !DILocation(line: 0, scope: !2791)
!3046 = !DILocation(line: 1118, column: 9, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1118, column: 9)
!3048 = !DILocation(line: 1118, column: 25, scope: !3047)
!3049 = !DILocation(line: 1118, column: 9, scope: !2791)
!3050 = !DILocation(line: 1119, column: 14, scope: !3047)
!3051 = !DILocation(line: 0, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1120, column: 9)
!3053 = !DILocation(line: 1120, column: 11, scope: !3052)
!3054 = !DILocation(line: 1119, column: 7, scope: !3047)
!3055 = !DILocation(line: 1120, column: 24, scope: !3052)
!3056 = !DILocation(line: 1120, column: 27, scope: !3052)
!3057 = !DILocation(line: 1120, column: 40, scope: !3052)
!3058 = !DILocation(line: 1120, column: 9, scope: !2791)
!3059 = !DILocation(line: 1123, column: 20, scope: !2791)
!3060 = !DILocation(line: 1123, column: 5, scope: !2791)
!3061 = !DILocation(line: 1124, column: 3, scope: !2792)
!3062 = !DILocation(line: 1114, column: 61, scope: !2792)
!3063 = !DILocation(line: 1114, column: 8, scope: !2792)
!3064 = distinct !{!3064, !3043, !3065}
!3065 = !DILocation(line: 1124, column: 3, scope: !2793)
!3066 = !DILocation(line: 1127, column: 14, scope: !2708)
!3067 = !DILocation(line: 1128, column: 2, scope: !2709)
!3068 = distinct !{!3068, !2889, !3069}
!3069 = !DILocation(line: 1128, column: 2, scope: !2710)
!3070 = !DILocation(line: 1131, column: 11, scope: !2800)
!3071 = !DILocation(line: 1131, column: 11, scope: !2700)
!3072 = !DILocation(line: 1132, column: 7, scope: !2799)
!3073 = !DILocation(line: 0, scope: !2799)
!3074 = !DILocation(line: 1134, column: 27, scope: !2797)
!3075 = !DILocation(line: 1135, column: 10, scope: !2797)
!3076 = !DILocation(line: 1137, column: 6, scope: !2797)
!3077 = !DILocation(line: 1138, column: 4, scope: !2798)
!3078 = !DILocation(line: 1132, column: 16, scope: !2798)
!3079 = !DILocation(line: 1132, column: 2, scope: !2798)
!3080 = distinct !{!3080, !3081, !3082}
!3081 = !DILocation(line: 1132, column: 2, scope: !2799)
!3082 = !DILocation(line: 1138, column: 4, scope: !2799)
!3083 = !DILocation(line: 1146, column: 11, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1146, column: 11)
!3085 = !DILocation(line: 1146, column: 11, scope: !2700)
!3086 = !DILocation(line: 1149, column: 4, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1149, column: 4)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 1147, column: 2)
!3089 = !DILocation(line: 1149, column: 4, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1149, column: 4)
!3091 = !DILocation(line: 0, scope: !3090)
!3092 = !DILocation(line: 1154, column: 4, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1154, column: 4)
!3094 = !DILocation(line: 1151, column: 8, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 1150, column: 6)
!3096 = !DILocation(line: 1151, column: 50, scope: !3095)
!3097 = !DILocation(line: 1152, column: 8, scope: !3095)
!3098 = !DILocation(line: 1152, column: 56, scope: !3095)
!3099 = distinct !{!3099, !3086, !3100}
!3100 = !DILocation(line: 1153, column: 6, scope: !3087)
!3101 = !DILocation(line: 0, scope: !3093)
!3102 = !DILocation(line: 1154, column: 34, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1154, column: 4)
!3104 = !DILocation(line: 1155, column: 6, scope: !3103)
!3105 = !DILocation(line: 1154, column: 55, scope: !3103)
!3106 = !DILocation(line: 1154, column: 4, scope: !3103)
!3107 = distinct !{!3107, !3092, !3108}
!3108 = !DILocation(line: 1155, column: 25, scope: !3093)
!3109 = !DILocation(line: 1160, column: 9, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1160, column: 8)
!3111 = !DILocation(line: 1160, column: 15, scope: !3110)
!3112 = !DILocation(line: 1160, column: 34, scope: !3110)
!3113 = !DILocation(line: 1160, column: 37, scope: !3110)
!3114 = !DILocation(line: 1160, column: 8, scope: !3088)
!3115 = !DILocation(line: 1161, column: 6, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1161, column: 6)
!3117 = !DILocation(line: 0, scope: !3116)
!3118 = !DILocation(line: 1161, column: 22, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1161, column: 6)
!3120 = !DILocation(line: 1162, column: 12, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 1162, column: 12)
!3122 = !DILocation(line: 1162, column: 12, scope: !3119)
!3123 = !DILocation(line: 1163, column: 3, scope: !3121)
!3124 = !DILocation(line: 1161, column: 49, scope: !3119)
!3125 = !DILocation(line: 1161, column: 6, scope: !3119)
!3126 = distinct !{!3126, !3115, !3127}
!3127 = !DILocation(line: 1163, column: 22, scope: !3116)
!3128 = !DILocation(line: 1166, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1166, column: 7)
!3130 = !DILocation(line: 1166, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1166, column: 7)
!3132 = !DILocation(line: 0, scope: !3131)
!3133 = !DILocation(line: 1168, column: 21, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1167, column: 2)
!3135 = !DILocation(line: 1168, column: 4, scope: !3134)
!3136 = distinct !{!3136, !3128, !3137}
!3137 = !DILocation(line: 1169, column: 2, scope: !3129)
!3138 = !DILocation(line: 1171, column: 17, scope: !2700)
!3139 = !DILocation(line: 1173, column: 5, scope: !2700)
!3140 = !DILocation(line: 1175, column: 25, scope: !2805)
!3141 = !DILocation(line: 1175, column: 22, scope: !2805)
!3142 = !DILocation(line: 1175, column: 7, scope: !2674)
!3143 = !DILocation(line: 0, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 1181, column: 6)
!3145 = !DILocation(line: 1176, column: 5, scope: !2804)
!3146 = !DILocation(line: 0, scope: !2804)
!3147 = !DILocation(line: 1176, column: 21, scope: !2803)
!3148 = !DILocation(line: 1176, column: 19, scope: !2803)
!3149 = !DILocation(line: 1180, column: 16, scope: !2802)
!3150 = !DILocation(line: 0, scope: !2802)
!3151 = !DILocation(line: 1181, column: 6, scope: !3144)
!3152 = !DILocation(line: 1182, column: 24, scope: !3144)
!3153 = !DILocation(line: 1182, column: 8, scope: !3144)
!3154 = !DILocation(line: 1182, column: 6, scope: !3144)
!3155 = !DILocation(line: 1181, column: 6, scope: !2802)
!3156 = !DILocation(line: 1184, column: 6, scope: !3144)
!3157 = !DILocation(line: 1183, column: 4, scope: !3144)
!3158 = !DILocation(line: 1176, column: 48, scope: !2803)
!3159 = !DILocation(line: 1176, column: 5, scope: !2803)
!3160 = distinct !{!3160, !3145, !3161}
!3161 = !DILocation(line: 1185, column: 7, scope: !2804)
!3162 = !DILocation(line: 1186, column: 1, scope: !2674)
!3163 = distinct !DISubprogram(name: "ira_compress_allocno_live_ranges", scope: !3, file: !3, line: 1350, type: !2506, scopeLine: 1351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!3164 = !DILocation(line: 1352, column: 3, scope: !3163)
!3165 = !DILocation(line: 1353, column: 3, scope: !3163)
!3166 = !DILocation(line: 1354, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 1354, column: 7)
!3168 = !DILocation(line: 1354, column: 33, scope: !3167)
!3169 = !DILocation(line: 1354, column: 40, scope: !3167)
!3170 = !DILocation(line: 1354, column: 54, scope: !3167)
!3171 = !DILocation(line: 1354, column: 37, scope: !3167)
!3172 = !DILocation(line: 1356, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1355, column: 5)
!3174 = !DILocation(line: 1357, column: 26, scope: !3173)
!3175 = !DILocation(line: 1357, column: 7, scope: !3173)
!3176 = !DILocation(line: 1358, column: 5, scope: !3173)
!3177 = !DILocation(line: 1359, column: 1, scope: !3163)
!3178 = distinct !DISubprogram(name: "remove_some_program_points_and_update_live_ranges", scope: !3, file: !3, line: 1233, type: !2506, scopeLine: 1234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3180 = !DILocalVariable(name: "i", scope: !3178, file: !3, line: 1235, type: !7)
!3181 = !DILocalVariable(name: "n", scope: !3178, file: !3, line: 1236, type: !595)
!3182 = !DILocalVariable(name: "map", scope: !3178, file: !3, line: 1237, type: !605)
!3183 = !DILocalVariable(name: "a", scope: !3178, file: !3, line: 1238, type: !613)
!3184 = !DILocalVariable(name: "ai", scope: !3178, file: !3, line: 1239, type: !2518)
!3185 = !DILocalVariable(name: "r", scope: !3178, file: !3, line: 1240, type: !607)
!3186 = !DILocalVariable(name: "born_or_died", scope: !3178, file: !3, line: 1241, type: !1838)
!3187 = !DILocalVariable(name: "bi", scope: !3178, file: !3, line: 1242, type: !2685)
!3188 = !DILocation(line: 1235, column: 3, scope: !3178)
!3189 = !DILocation(line: 1238, column: 3, scope: !3178)
!3190 = !DILocation(line: 1239, column: 3, scope: !3178)
!3191 = !DILocation(line: 1242, column: 3, scope: !3178)
!3192 = !DILocation(line: 1244, column: 18, scope: !3178)
!3193 = !DILocation(line: 0, scope: !3178)
!3194 = !DILocation(line: 1245, column: 3, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1245, column: 3)
!3196 = !DILocation(line: 1245, column: 3, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1245, column: 3)
!3198 = !DILocation(line: 1247, column: 16, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 1247, column: 7)
!3200 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1246, column: 5)
!3201 = !DILocation(line: 1247, column: 12, scope: !3199)
!3202 = !DILocation(line: 0, scope: !3199)
!3203 = !DILocation(line: 1247, column: 43, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1247, column: 7)
!3205 = !DILocation(line: 1247, column: 7, scope: !3199)
!3206 = distinct !{!3206, !3194, !3207}
!3207 = !DILocation(line: 1253, column: 5, scope: !3195)
!3208 = !DILocation(line: 1250, column: 37, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1248, column: 2)
!3210 = !DILocation(line: 1250, column: 4, scope: !3209)
!3211 = !DILocation(line: 1251, column: 37, scope: !3209)
!3212 = !DILocation(line: 1251, column: 4, scope: !3209)
!3213 = !DILocation(line: 1247, column: 59, scope: !3204)
!3214 = !DILocation(line: 1247, column: 7, scope: !3204)
!3215 = distinct !{!3215, !3205, !3216}
!3216 = !DILocation(line: 1252, column: 2, scope: !3199)
!3217 = !DILocation(line: 1254, column: 46, scope: !3178)
!3218 = !DILocation(line: 1254, column: 44, scope: !3178)
!3219 = !DILocation(line: 1254, column: 17, scope: !3178)
!3220 = !DILocation(line: 1254, column: 9, scope: !3178)
!3221 = !DILocation(line: 1256, column: 3, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1256, column: 3)
!3223 = !DILocation(line: 1256, column: 3, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 1256, column: 3)
!3225 = !DILocation(line: 1258, column: 17, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1257, column: 5)
!3227 = !DILocation(line: 1258, column: 11, scope: !3226)
!3228 = !DILocation(line: 1258, column: 7, scope: !3226)
!3229 = !DILocation(line: 1258, column: 14, scope: !3226)
!3230 = distinct !{!3230, !3221, !3231}
!3231 = !DILocation(line: 1259, column: 5, scope: !3222)
!3232 = !DILocation(line: 1260, column: 3, scope: !3178)
!3233 = !DILocation(line: 1261, column: 7, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1261, column: 7)
!3235 = !DILocation(line: 1261, column: 33, scope: !3234)
!3236 = !DILocation(line: 1261, column: 40, scope: !3234)
!3237 = !DILocation(line: 1261, column: 54, scope: !3234)
!3238 = !DILocation(line: 1261, column: 37, scope: !3234)
!3239 = !DILocation(line: 1263, column: 7, scope: !3234)
!3240 = !DILocation(line: 1263, column: 29, scope: !3234)
!3241 = !DILocation(line: 1263, column: 33, scope: !3234)
!3242 = !DILocation(line: 1262, column: 5, scope: !3234)
!3243 = !DILocation(line: 1264, column: 17, scope: !3178)
!3244 = !DILocation(line: 1265, column: 3, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1265, column: 3)
!3246 = !DILocation(line: 1265, column: 3, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1265, column: 3)
!3248 = !DILocation(line: 1267, column: 16, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 1267, column: 7)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 1266, column: 5)
!3251 = !DILocation(line: 1267, column: 12, scope: !3249)
!3252 = !DILocation(line: 0, scope: !3249)
!3253 = !DILocation(line: 1267, column: 43, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1267, column: 7)
!3255 = !DILocation(line: 1267, column: 7, scope: !3249)
!3256 = distinct !{!3256, !3244, !3257}
!3257 = !DILocation(line: 1272, column: 5, scope: !3245)
!3258 = !DILocation(line: 1269, column: 22, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1268, column: 2)
!3260 = !DILocation(line: 1269, column: 15, scope: !3259)
!3261 = !DILocation(line: 1269, column: 13, scope: !3259)
!3262 = !DILocation(line: 1270, column: 23, scope: !3259)
!3263 = !DILocation(line: 1270, column: 16, scope: !3259)
!3264 = !DILocation(line: 1270, column: 14, scope: !3259)
!3265 = !DILocation(line: 1267, column: 59, scope: !3254)
!3266 = !DILocation(line: 1267, column: 7, scope: !3254)
!3267 = distinct !{!3267, !3255, !3268}
!3268 = !DILocation(line: 1271, column: 2, scope: !3249)
!3269 = !DILocation(line: 1273, column: 3, scope: !3178)
!3270 = !DILocation(line: 1274, column: 1, scope: !3178)
!3271 = distinct !DISubprogram(name: "ira_finish_allocno_live_ranges", scope: !3, file: !3, line: 1363, type: !2506, scopeLine: 1364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!3272 = !DILocation(line: 1365, column: 13, scope: !3271)
!3273 = !DILocation(line: 1365, column: 3, scope: !3271)
!3274 = !DILocation(line: 1366, column: 13, scope: !3271)
!3275 = !DILocation(line: 1366, column: 3, scope: !3271)
!3276 = !DILocation(line: 1367, column: 1, scope: !3271)
!3277 = distinct !DISubprogram(name: "ira_allocno_iter_init", scope: !608, file: !608, line: 939, type: !3278, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!3281 = !{!3282}
!3282 = !DILocalVariable(name: "i", arg: 1, scope: !3277, file: !608, line: 939, type: !3280)
!3283 = !DILocation(line: 0, scope: !3277)
!3284 = !DILocation(line: 941, column: 6, scope: !3277)
!3285 = !DILocation(line: 941, column: 8, scope: !3277)
!3286 = !DILocation(line: 942, column: 1, scope: !3277)
!3287 = distinct !DISubprogram(name: "ira_allocno_iter_cond", scope: !608, file: !608, line: 947, type: !3288, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!594, !3280, !1831}
!3290 = !{!3291, !3292, !3293}
!3291 = !DILocalVariable(name: "i", arg: 1, scope: !3287, file: !608, line: 947, type: !3280)
!3292 = !DILocalVariable(name: "a", arg: 2, scope: !3287, file: !608, line: 947, type: !1831)
!3293 = !DILocalVariable(name: "n", scope: !3287, file: !608, line: 949, type: !595)
!3294 = !DILocation(line: 0, scope: !3287)
!3295 = !DILocation(line: 951, column: 15, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3287, file: !608, line: 951, column: 3)
!3297 = !DILocation(line: 0, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3296, file: !608, line: 951, column: 3)
!3299 = !DILocation(line: 0, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3298, file: !608, line: 952, column: 9)
!3301 = !DILocation(line: 951, column: 8, scope: !3296)
!3302 = !DILocation(line: 0, scope: !3296)
!3303 = !DILocation(line: 951, column: 20, scope: !3298)
!3304 = !DILocation(line: 951, column: 3, scope: !3296)
!3305 = !DILocation(line: 952, column: 9, scope: !3300)
!3306 = !DILocation(line: 952, column: 25, scope: !3300)
!3307 = !DILocation(line: 952, column: 9, scope: !3298)
!3308 = !DILocation(line: 954, column: 5, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3300, file: !608, line: 953, column: 7)
!3310 = !DILocation(line: 955, column: 11, scope: !3309)
!3311 = !DILocation(line: 955, column: 7, scope: !3309)
!3312 = !DILocation(line: 956, column: 2, scope: !3309)
!3313 = !DILocation(line: 951, column: 41, scope: !3298)
!3314 = !DILocation(line: 951, column: 3, scope: !3298)
!3315 = distinct !{!3315, !3304, !3316}
!3316 = !DILocation(line: 957, column: 7, scope: !3296)
!3317 = !DILocation(line: 959, column: 1, scope: !3287)
!3318 = distinct !DISubprogram(name: "df_lr_get_bb_info", scope: !1910, file: !1910, line: 1052, type: !3319, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!1908, !7}
!3321 = !{!3322}
!3322 = !DILocalVariable(name: "index", arg: 1, scope: !3318, file: !1910, line: 1052, type: !7)
!3323 = !DILocation(line: 0, scope: !3318)
!3324 = !DILocation(line: 1054, column: 15, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3318, file: !1910, line: 1054, column: 7)
!3326 = !DILocation(line: 1054, column: 22, scope: !3325)
!3327 = !DILocation(line: 1054, column: 13, scope: !3325)
!3328 = !DILocation(line: 1054, column: 7, scope: !3318)
!3329 = !DILocation(line: 1055, column: 44, scope: !3325)
!3330 = !DILocation(line: 1055, column: 37, scope: !3325)
!3331 = !DILocation(line: 1055, column: 5, scope: !3325)
!3332 = !DILocation(line: 0, scope: !3325)
!3333 = !DILocation(line: 1058, column: 1, scope: !3318)
!3334 = distinct !DISubprogram(name: "sparseset_clear", scope: !1927, file: !1927, line: 56, type: !3335, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !1926}
!3337 = !{!3338}
!3338 = !DILocalVariable(name: "s", arg: 1, scope: !3334, file: !1927, line: 56, type: !1926)
!3339 = !DILocation(line: 0, scope: !3334)
!3340 = !DILocation(line: 58, column: 6, scope: !3334)
!3341 = !DILocation(line: 58, column: 14, scope: !3334)
!3342 = !DILocation(line: 59, column: 6, scope: !3334)
!3343 = !DILocation(line: 59, column: 16, scope: !3334)
!3344 = !DILocation(line: 60, column: 1, scope: !3334)
!3345 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !678, file: !678, line: 224, type: !3346, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3352)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !3348, !3349, !7, !1932}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !623, line: 48, baseType: !3350)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DILocalVariable(name: "bi", arg: 1, scope: !3345, file: !678, line: 224, type: !3348)
!3354 = !DILocalVariable(name: "map", arg: 2, scope: !3345, file: !678, line: 224, type: !3349)
!3355 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3345, file: !678, line: 225, type: !7)
!3356 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3345, file: !678, line: 225, type: !1932)
!3357 = !DILocation(line: 0, scope: !3345)
!3358 = !DILocation(line: 227, column: 19, scope: !3345)
!3359 = !DILocation(line: 227, column: 12, scope: !3345)
!3360 = !DILocation(line: 228, column: 7, scope: !3345)
!3361 = !DILocation(line: 228, column: 12, scope: !3345)
!3362 = !DILocation(line: 0, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !678, line: 233, column: 11)
!3364 = distinct !DILexicalBlock(scope: !3345, file: !678, line: 232, column: 5)
!3365 = !DILocation(line: 0, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3364, file: !678, line: 239, column: 11)
!3367 = !DILocation(line: 231, column: 3, scope: !3345)
!3368 = !DILocation(line: 233, column: 16, scope: !3363)
!3369 = !DILocation(line: 233, column: 12, scope: !3363)
!3370 = !DILocation(line: 233, column: 11, scope: !3364)
!3371 = !DILocation(line: 235, column: 13, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3363, file: !678, line: 234, column: 2)
!3373 = !DILocation(line: 236, column: 4, scope: !3372)
!3374 = !DILocation(line: 239, column: 21, scope: !3366)
!3375 = !DILocation(line: 239, column: 26, scope: !3366)
!3376 = !DILocation(line: 239, column: 11, scope: !3364)
!3377 = !DILocation(line: 241, column: 28, scope: !3364)
!3378 = !DILocation(line: 241, column: 16, scope: !3364)
!3379 = distinct !{!3379, !3367, !3380}
!3380 = !DILocation(line: 242, column: 5, scope: !3345)
!3381 = !DILocation(line: 245, column: 11, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3345, file: !678, line: 245, column: 7)
!3383 = !DILocation(line: 245, column: 17, scope: !3382)
!3384 = !DILocation(line: 245, column: 22, scope: !3382)
!3385 = !DILocation(line: 245, column: 7, scope: !3345)
!3386 = !DILocation(line: 246, column: 27, scope: !3382)
!3387 = !DILocation(line: 246, column: 32, scope: !3382)
!3388 = !DILocation(line: 246, column: 5, scope: !3382)
!3389 = !DILocation(line: 249, column: 27, scope: !3345)
!3390 = !DILocation(line: 249, column: 46, scope: !3345)
!3391 = !DILocation(line: 249, column: 7, scope: !3345)
!3392 = !DILocation(line: 249, column: 15, scope: !3345)
!3393 = !DILocation(line: 250, column: 14, scope: !3345)
!3394 = !DILocation(line: 251, column: 26, scope: !3345)
!3395 = !DILocation(line: 251, column: 7, scope: !3345)
!3396 = !DILocation(line: 251, column: 12, scope: !3345)
!3397 = !DILocation(line: 257, column: 16, scope: !3345)
!3398 = !DILocation(line: 257, column: 13, scope: !3345)
!3399 = !DILocation(line: 259, column: 11, scope: !3345)
!3400 = !DILocation(line: 260, column: 1, scope: !3345)
!3401 = distinct !DISubprogram(name: "bmp_iter_set", scope: !678, file: !678, line: 393, type: !3402, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!594, !3348, !1932}
!3404 = !{!3405, !3406, !3407}
!3405 = !DILocalVariable(name: "bi", arg: 1, scope: !3401, file: !678, line: 393, type: !3348)
!3406 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3401, file: !678, line: 393, type: !1932)
!3407 = !DILabel(scope: !3408, name: "next_bit", file: !678, line: 398)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !678, line: 397, column: 5)
!3409 = distinct !DILexicalBlock(scope: !3401, file: !678, line: 396, column: 7)
!3410 = !DILocation(line: 0, scope: !3401)
!3411 = !DILocation(line: 396, column: 11, scope: !3409)
!3412 = !DILocation(line: 396, column: 7, scope: !3409)
!3413 = !DILocation(line: 396, column: 7, scope: !3401)
!3414 = !DILocation(line: 419, column: 15, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !678, line: 418, column: 2)
!3416 = distinct !DILexicalBlock(scope: !3401, file: !678, line: 415, column: 5)
!3417 = !DILocation(line: 399, column: 7, scope: !3408)
!3418 = !DILocation(line: 398, column: 5, scope: !3408)
!3419 = !DILocation(line: 399, column: 20, scope: !3408)
!3420 = !DILocation(line: 399, column: 25, scope: !3408)
!3421 = !DILocation(line: 399, column: 14, scope: !3408)
!3422 = !DILocation(line: 401, column: 13, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3408, file: !678, line: 400, column: 2)
!3424 = !DILocation(line: 402, column: 12, scope: !3423)
!3425 = distinct !{!3425, !3417, !3426}
!3426 = !DILocation(line: 403, column: 2, scope: !3408)
!3427 = !DILocation(line: 410, column: 15, scope: !3401)
!3428 = !DILocation(line: 410, column: 42, scope: !3401)
!3429 = !DILocation(line: 411, column: 26, scope: !3401)
!3430 = !DILocation(line: 410, column: 11, scope: !3401)
!3431 = !DILocation(line: 412, column: 7, scope: !3401)
!3432 = !DILocation(line: 412, column: 14, scope: !3401)
!3433 = !DILocation(line: 0, scope: !3416)
!3434 = !DILocation(line: 414, column: 3, scope: !3401)
!3435 = !DILocation(line: 417, column: 7, scope: !3416)
!3436 = !DILocation(line: 417, column: 18, scope: !3416)
!3437 = !DILocation(line: 417, column: 26, scope: !3416)
!3438 = !DILocation(line: 419, column: 13, scope: !3415)
!3439 = !DILocation(line: 420, column: 8, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3415, file: !678, line: 420, column: 8)
!3441 = !DILocation(line: 420, column: 8, scope: !3415)
!3442 = !DILocation(line: 422, column: 12, scope: !3415)
!3443 = !DILocation(line: 423, column: 15, scope: !3415)
!3444 = distinct !{!3444, !3435, !3445}
!3445 = !DILocation(line: 424, column: 2, scope: !3416)
!3446 = !DILocation(line: 427, column: 28, scope: !3416)
!3447 = !DILocation(line: 427, column: 16, scope: !3416)
!3448 = !DILocation(line: 428, column: 12, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3416, file: !678, line: 428, column: 11)
!3450 = !DILocation(line: 428, column: 11, scope: !3416)
!3451 = !DILocation(line: 430, column: 27, scope: !3416)
!3452 = !DILocation(line: 430, column: 32, scope: !3416)
!3453 = !DILocation(line: 430, column: 15, scope: !3416)
!3454 = !DILocation(line: 431, column: 19, scope: !3416)
!3455 = distinct !{!3455, !3434, !3456}
!3456 = !DILocation(line: 432, column: 5, scope: !3401)
!3457 = !DILocation(line: 433, column: 1, scope: !3401)
!3458 = distinct !DISubprogram(name: "set_allocno_live", scope: !3, file: !3, line: 172, type: !2601, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3459)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DILocalVariable(name: "a", arg: 1, scope: !3458, file: !3, line: 172, type: !613)
!3461 = !DILocalVariable(name: "i", scope: !3458, file: !3, line: 174, type: !595)
!3462 = !DILocalVariable(name: "cover_class", scope: !3458, file: !3, line: 175, type: !5)
!3463 = !DILocalVariable(name: "cl", scope: !3458, file: !3, line: 175, type: !5)
!3464 = !DILocation(line: 0, scope: !3458)
!3465 = !DILocation(line: 178, column: 3, scope: !3458)
!3466 = !DILocation(line: 178, column: 25, scope: !3458)
!3467 = !DILocation(line: 178, column: 42, scope: !3458)
!3468 = !DILocation(line: 179, column: 24, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 179, column: 7)
!3470 = !DILocation(line: 179, column: 39, scope: !3469)
!3471 = !DILocation(line: 179, column: 7, scope: !3469)
!3472 = !DILocation(line: 179, column: 7, scope: !3458)
!3473 = !DILocation(line: 181, column: 22, scope: !3458)
!3474 = !DILocation(line: 181, column: 37, scope: !3458)
!3475 = !DILocation(line: 181, column: 3, scope: !3458)
!3476 = !DILocation(line: 182, column: 3, scope: !3458)
!3477 = !DILocation(line: 183, column: 3, scope: !3458)
!3478 = !DILocation(line: 184, column: 17, scope: !3458)
!3479 = !DILocation(line: 0, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 185, column: 3)
!3481 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 185, column: 3)
!3482 = !DILocation(line: 0, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 188, column: 5)
!3484 = !DILocation(line: 185, column: 8, scope: !3481)
!3485 = !DILocation(line: 0, scope: !3481)
!3486 = !DILocation(line: 186, column: 14, scope: !3480)
!3487 = !DILocation(line: 186, column: 59, scope: !3480)
!3488 = !DILocation(line: 185, column: 3, scope: !3481)
!3489 = !DILocation(line: 189, column: 32, scope: !3483)
!3490 = !DILocation(line: 189, column: 56, scope: !3483)
!3491 = !DILocation(line: 189, column: 7, scope: !3483)
!3492 = !DILocation(line: 189, column: 29, scope: !3483)
!3493 = !DILocation(line: 190, column: 11, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 190, column: 11)
!3495 = !DILocation(line: 190, column: 41, scope: !3494)
!3496 = !DILocation(line: 191, column: 4, scope: !3494)
!3497 = !DILocation(line: 191, column: 32, scope: !3494)
!3498 = !DILocation(line: 191, column: 30, scope: !3494)
!3499 = !DILocation(line: 190, column: 11, scope: !3483)
!3500 = !DILocation(line: 192, column: 34, scope: !3494)
!3501 = !DILocation(line: 192, column: 32, scope: !3494)
!3502 = !DILocation(line: 192, column: 2, scope: !3494)
!3503 = !DILocation(line: 193, column: 11, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 193, column: 11)
!3505 = !DILocation(line: 193, column: 42, scope: !3504)
!3506 = !DILocation(line: 193, column: 11, scope: !3483)
!3507 = !DILocation(line: 194, column: 33, scope: !3504)
!3508 = !DILocation(line: 194, column: 2, scope: !3504)
!3509 = !DILocation(line: 187, column: 9, scope: !3480)
!3510 = !DILocation(line: 185, column: 3, scope: !3480)
!3511 = distinct !{!3511, !3488, !3512}
!3512 = !DILocation(line: 195, column: 5, scope: !3481)
!3513 = !DILocation(line: 196, column: 1, scope: !3458)
!3514 = distinct !DISubprogram(name: "make_regno_born", scope: !3, file: !3, line: 89, type: !3515, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{null, !595}
!3517 = !{!3518, !3519, !3520, !3521}
!3518 = !DILocalVariable(name: "regno", arg: 1, scope: !3514, file: !3, line: 89, type: !595)
!3519 = !DILocalVariable(name: "i", scope: !3514, file: !3, line: 91, type: !7)
!3520 = !DILocalVariable(name: "a", scope: !3514, file: !3, line: 92, type: !613)
!3521 = !DILocalVariable(name: "p", scope: !3514, file: !3, line: 93, type: !607)
!3522 = !DILocation(line: 0, scope: !3514)
!3523 = !DILocation(line: 95, column: 13, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 95, column: 7)
!3525 = !DILocation(line: 95, column: 7, scope: !3514)
!3526 = !DILocation(line: 97, column: 7, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 96, column: 5)
!3528 = !DILocation(line: 98, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 98, column: 7)
!3530 = !DILocation(line: 98, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 98, column: 7)
!3532 = !DILocation(line: 0, scope: !3531)
!3533 = !DILocation(line: 100, column: 4, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 99, column: 9)
!3535 = !DILocation(line: 102, column: 4, scope: !3534)
!3536 = distinct !{!3536, !3528, !3537}
!3537 = !DILocation(line: 104, column: 2, scope: !3529)
!3538 = !DILocation(line: 107, column: 7, scope: !3514)
!3539 = !DILocation(line: 108, column: 9, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 108, column: 7)
!3541 = !DILocation(line: 108, column: 7, scope: !3514)
!3542 = !DILocation(line: 110, column: 12, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 110, column: 7)
!3544 = !DILocation(line: 110, column: 37, scope: !3543)
!3545 = !DILocation(line: 111, column: 7, scope: !3543)
!3546 = !DILocation(line: 113, column: 43, scope: !3543)
!3547 = !DILocation(line: 111, column: 14, scope: !3543)
!3548 = !DILocation(line: 111, column: 24, scope: !3543)
!3549 = !DILocation(line: 111, column: 21, scope: !3543)
!3550 = !DILocation(line: 111, column: 35, scope: !3543)
!3551 = !DILocation(line: 111, column: 48, scope: !3543)
!3552 = !DILocation(line: 111, column: 52, scope: !3543)
!3553 = !DILocation(line: 110, column: 7, scope: !3514)
!3554 = !DILocation(line: 113, column: 9, scope: !3543)
!3555 = !DILocation(line: 113, column: 7, scope: !3543)
!3556 = !DILocation(line: 112, column: 5, scope: !3543)
!3557 = !DILocation(line: 115, column: 1, scope: !3514)
!3558 = distinct !DISubprogram(name: "bmp_iter_next", scope: !678, file: !678, line: 382, type: !3559, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !3348, !1932}
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "bi", arg: 1, scope: !3558, file: !678, line: 382, type: !3348)
!3563 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3558, file: !678, line: 382, type: !1932)
!3564 = !DILocation(line: 0, scope: !3558)
!3565 = !DILocation(line: 384, column: 7, scope: !3558)
!3566 = !DILocation(line: 384, column: 12, scope: !3558)
!3567 = !DILocation(line: 385, column: 11, scope: !3558)
!3568 = !DILocation(line: 386, column: 1, scope: !3558)
!3569 = distinct !DISubprogram(name: "mark_ref_live", scope: !3, file: !3, line: 310, type: !3570, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !2712}
!3572 = !{!3573, !3574}
!3573 = !DILocalVariable(name: "ref", arg: 1, scope: !3569, file: !3, line: 310, type: !2712)
!3574 = !DILocalVariable(name: "reg", scope: !3569, file: !3, line: 312, type: !622)
!3575 = !DILocation(line: 0, scope: !3569)
!3576 = !DILocation(line: 314, column: 9, scope: !3569)
!3577 = !DILocation(line: 315, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 315, column: 7)
!3579 = !DILocation(line: 315, column: 22, scope: !3578)
!3580 = !DILocation(line: 315, column: 7, scope: !3569)
!3581 = !DILocation(line: 316, column: 11, scope: !3578)
!3582 = !DILocation(line: 316, column: 5, scope: !3578)
!3583 = !DILocation(line: 317, column: 3, scope: !3569)
!3584 = !DILocation(line: 318, column: 1, scope: !3569)
!3585 = distinct !DISubprogram(name: "process_single_reg_class_operands", scope: !3, file: !3, line: 821, type: !3586, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{null, !594, !595}
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3605, !3606, !3609}
!3589 = !DILocalVariable(name: "in_p", arg: 1, scope: !3585, file: !3, line: 821, type: !594)
!3590 = !DILocalVariable(name: "freq", arg: 2, scope: !3585, file: !3, line: 821, type: !595)
!3591 = !DILocalVariable(name: "i", scope: !3585, file: !3, line: 823, type: !595)
!3592 = !DILocalVariable(name: "regno", scope: !3585, file: !3, line: 823, type: !595)
!3593 = !DILocalVariable(name: "cost", scope: !3585, file: !3, line: 823, type: !595)
!3594 = !DILocalVariable(name: "px", scope: !3585, file: !3, line: 824, type: !7)
!3595 = !DILocalVariable(name: "cl", scope: !3585, file: !3, line: 825, type: !5)
!3596 = !DILocalVariable(name: "operand", scope: !3585, file: !3, line: 826, type: !622)
!3597 = !DILocalVariable(name: "operand_a", scope: !3585, file: !3, line: 827, type: !613)
!3598 = !DILocalVariable(name: "a", scope: !3585, file: !3, line: 827, type: !613)
!3599 = !DILocalVariable(name: "mode", scope: !3600, file: !3, line: 850, type: !37)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 849, column: 2)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 847, column: 11)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 830, column: 5)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 829, column: 3)
!3604 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 829, column: 3)
!3605 = !DILocalVariable(name: "cover_class", scope: !3600, file: !3, line: 851, type: !5)
!3606 = !DILocalVariable(name: "i", scope: !3607, file: !3, line: 862, type: !595)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 861, column: 6)
!3608 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 856, column: 8)
!3609 = !DILocalVariable(name: "size", scope: !3607, file: !3, line: 862, type: !595)
!3610 = !DILocation(line: 0, scope: !3585)
!3611 = !DILocation(line: 0, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 832, column: 11)
!3613 = !DILocation(line: 829, column: 8, scope: !3604)
!3614 = !DILocation(line: 829, column: 30, scope: !3603)
!3615 = !DILocation(line: 829, column: 17, scope: !3603)
!3616 = !DILocation(line: 829, column: 3, scope: !3604)
!3617 = !DILocation(line: 831, column: 17, scope: !3602)
!3618 = !DILocation(line: 832, column: 16, scope: !3612)
!3619 = !DILocation(line: 832, column: 19, scope: !3612)
!3620 = !DILocation(line: 832, column: 46, scope: !3612)
!3621 = !DILocation(line: 833, column: 4, scope: !3612)
!3622 = !DILocation(line: 833, column: 34, scope: !3612)
!3623 = !DILocation(line: 832, column: 11, scope: !3602)
!3624 = !DILocation(line: 835, column: 18, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 835, column: 11)
!3626 = !DILocation(line: 835, column: 21, scope: !3625)
!3627 = !DILocation(line: 835, column: 48, scope: !3625)
!3628 = !DILocation(line: 836, column: 4, scope: !3625)
!3629 = !DILocation(line: 836, column: 34, scope: !3625)
!3630 = !DILocation(line: 835, column: 11, scope: !3602)
!3631 = !DILocation(line: 838, column: 12, scope: !3602)
!3632 = !DILocation(line: 839, column: 14, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 839, column: 11)
!3634 = !DILocation(line: 839, column: 11, scope: !3602)
!3635 = !DILocation(line: 844, column: 11, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 844, column: 11)
!3637 = !DILocation(line: 844, column: 30, scope: !3636)
!3638 = !DILocation(line: 844, column: 11, scope: !3602)
!3639 = !DILocation(line: 845, column: 12, scope: !3636)
!3640 = !DILocation(line: 0, scope: !3601)
!3641 = !DILocation(line: 847, column: 11, scope: !3601)
!3642 = !DILocation(line: 845, column: 2, scope: !3636)
!3643 = !DILocation(line: 0, scope: !3602)
!3644 = !DILocation(line: 848, column: 4, scope: !3601)
!3645 = !DILocation(line: 848, column: 16, scope: !3601)
!3646 = !DILocation(line: 848, column: 33, scope: !3601)
!3647 = !DILocation(line: 847, column: 11, scope: !3602)
!3648 = !DILocation(line: 853, column: 16, scope: !3600)
!3649 = !DILocation(line: 854, column: 11, scope: !3600)
!3650 = !DILocation(line: 0, scope: !3600)
!3651 = !DILocation(line: 855, column: 18, scope: !3600)
!3652 = !DILocation(line: 856, column: 8, scope: !3608)
!3653 = !DILocation(line: 857, column: 8, scope: !3608)
!3654 = !DILocation(line: 857, column: 11, scope: !3608)
!3655 = !DILocation(line: 857, column: 39, scope: !3608)
!3656 = !DILocation(line: 858, column: 8, scope: !3608)
!3657 = !DILocation(line: 859, column: 6, scope: !3608)
!3658 = !DILocation(line: 858, column: 12, scope: !3608)
!3659 = !DILocation(line: 859, column: 35, scope: !3608)
!3660 = !DILocation(line: 860, column: 8, scope: !3608)
!3661 = !DILocation(line: 860, column: 11, scope: !3608)
!3662 = !DILocation(line: 860, column: 44, scope: !3608)
!3663 = !DILocation(line: 860, column: 30, scope: !3608)
!3664 = !DILocation(line: 856, column: 8, scope: !3600)
!3665 = !DILocation(line: 865, column: 9, scope: !3607)
!3666 = !DILocation(line: 866, column: 11, scope: !3607)
!3667 = !DILocation(line: 867, column: 11, scope: !3607)
!3668 = !DILocation(line: 865, column: 6, scope: !3607)
!3669 = !DILocation(line: 869, column: 5, scope: !3607)
!3670 = !DILocation(line: 868, column: 8, scope: !3607)
!3671 = !DILocation(line: 870, column: 15, scope: !3607)
!3672 = !DILocation(line: 0, scope: !3607)
!3673 = !DILocation(line: 871, column: 13, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 871, column: 8)
!3675 = !DILocation(line: 0, scope: !3674)
!3676 = !DILocation(line: 871, column: 22, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 871, column: 8)
!3678 = !DILocation(line: 871, column: 8, scope: !3674)
!3679 = !DILocation(line: 872, column: 10, scope: !3677)
!3680 = !DILocation(line: 874, column: 20, scope: !3677)
!3681 = !DILocation(line: 873, column: 6, scope: !3677)
!3682 = !DILocation(line: 875, column: 5, scope: !3677)
!3683 = !DILocation(line: 871, column: 31, scope: !3677)
!3684 = !DILocation(line: 871, column: 8, scope: !3677)
!3685 = distinct !{!3685, !3678, !3686}
!3686 = !DILocation(line: 875, column: 8, scope: !3674)
!3687 = !DILocation(line: 879, column: 7, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 879, column: 7)
!3689 = !DILocation(line: 0, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 883, column: 6)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 882, column: 8)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 880, column: 9)
!3693 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 879, column: 7)
!3694 = !DILocation(line: 879, column: 7, scope: !3693)
!3695 = !DILocation(line: 0, scope: !3693)
!3696 = !DILocation(line: 881, column: 8, scope: !3692)
!3697 = !DILocation(line: 882, column: 10, scope: !3691)
!3698 = !DILocation(line: 882, column: 8, scope: !3692)
!3699 = !DILocation(line: 887, column: 8, scope: !3690)
!3700 = !DILocation(line: 889, column: 8, scope: !3690)
!3701 = !DILocation(line: 891, column: 6, scope: !3690)
!3702 = distinct !{!3702, !3687, !3703}
!3703 = !DILocation(line: 892, column: 2, scope: !3688)
!3704 = !DILocation(line: 829, column: 43, scope: !3603)
!3705 = !DILocation(line: 829, column: 3, scope: !3603)
!3706 = distinct !{!3706, !3616, !3707}
!3707 = !DILocation(line: 893, column: 5, scope: !3604)
!3708 = !DILocation(line: 894, column: 1, scope: !3585)
!3709 = distinct !DISubprogram(name: "mark_ref_dead", scope: !3, file: !3, line: 394, type: !3570, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "def", arg: 1, scope: !3709, file: !3, line: 394, type: !2712)
!3712 = !DILocalVariable(name: "reg", scope: !3709, file: !3, line: 396, type: !622)
!3713 = !DILocation(line: 0, scope: !3709)
!3714 = !DILocation(line: 398, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 398, column: 7)
!3716 = !DILocation(line: 399, column: 7, scope: !3715)
!3717 = !DILocation(line: 399, column: 10, scope: !3715)
!3718 = !DILocation(line: 398, column: 7, scope: !3709)
!3719 = !DILocation(line: 402, column: 9, scope: !3709)
!3720 = !DILocation(line: 403, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 403, column: 7)
!3722 = !DILocation(line: 403, column: 22, scope: !3721)
!3723 = !DILocation(line: 403, column: 7, scope: !3709)
!3724 = !DILocation(line: 404, column: 11, scope: !3721)
!3725 = !DILocation(line: 404, column: 5, scope: !3721)
!3726 = !DILocation(line: 405, column: 3, scope: !3709)
!3727 = !DILocation(line: 406, column: 1, scope: !3709)
!3728 = distinct !DISubprogram(name: "sparseset_iter_init", scope: !1927, file: !1927, line: 126, type: !3335, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3729)
!3729 = !{!3730}
!3730 = !DILocalVariable(name: "s", arg: 1, scope: !3728, file: !1927, line: 126, type: !1926)
!3731 = !DILocation(line: 0, scope: !3728)
!3732 = !DILocation(line: 128, column: 6, scope: !3728)
!3733 = !DILocation(line: 128, column: 11, scope: !3728)
!3734 = !DILocation(line: 129, column: 6, scope: !3728)
!3735 = !DILocation(line: 129, column: 15, scope: !3728)
!3736 = !DILocation(line: 130, column: 6, scope: !3728)
!3737 = !DILocation(line: 130, column: 16, scope: !3728)
!3738 = !DILocation(line: 131, column: 1, scope: !3728)
!3739 = distinct !DISubprogram(name: "sparseset_iter_p", scope: !1927, file: !1927, line: 134, type: !3740, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3742)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!594, !1926}
!3742 = !{!3743}
!3743 = !DILocalVariable(name: "s", arg: 1, scope: !3739, file: !1927, line: 134, type: !1926)
!3744 = !DILocation(line: 0, scope: !3739)
!3745 = !DILocation(line: 136, column: 10, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3739, file: !1927, line: 136, column: 7)
!3747 = !DILocation(line: 136, column: 7, scope: !3746)
!3748 = !DILocation(line: 136, column: 20, scope: !3746)
!3749 = !DILocation(line: 136, column: 26, scope: !3746)
!3750 = !DILocation(line: 136, column: 36, scope: !3746)
!3751 = !DILocation(line: 136, column: 31, scope: !3746)
!3752 = !DILocation(line: 136, column: 7, scope: !3739)
!3753 = !DILocation(line: 139, column: 25, scope: !3746)
!3754 = !DILocation(line: 139, column: 5, scope: !3746)
!3755 = !DILocation(line: 0, scope: !3746)
!3756 = !DILocation(line: 140, column: 1, scope: !3739)
!3757 = distinct !DISubprogram(name: "sparseset_iter_elm", scope: !1927, file: !1927, line: 143, type: !3758, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!7, !1926}
!3760 = !{!3761}
!3761 = !DILocalVariable(name: "s", arg: 1, scope: !3757, file: !1927, line: 143, type: !1926)
!3762 = !DILocation(line: 0, scope: !3757)
!3763 = !DILocation(line: 145, column: 13, scope: !3757)
!3764 = !DILocation(line: 145, column: 22, scope: !3757)
!3765 = !DILocation(line: 145, column: 10, scope: !3757)
!3766 = !DILocation(line: 145, column: 3, scope: !3757)
!3767 = distinct !DISubprogram(name: "sparseset_iter_next", scope: !1927, file: !1927, line: 149, type: !3335, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3768)
!3768 = !{!3769}
!3769 = !DILocalVariable(name: "s", arg: 1, scope: !3767, file: !1927, line: 149, type: !1926)
!3770 = !DILocation(line: 0, scope: !3767)
!3771 = !DILocation(line: 151, column: 17, scope: !3767)
!3772 = !DILocation(line: 151, column: 14, scope: !3767)
!3773 = !DILocation(line: 151, column: 6, scope: !3767)
!3774 = !DILocation(line: 151, column: 11, scope: !3767)
!3775 = !DILocation(line: 152, column: 15, scope: !3767)
!3776 = !DILocation(line: 153, column: 1, scope: !3767)
!3777 = distinct !DISubprogram(name: "make_early_clobber_and_input_conflicts", scope: !3, file: !3, line: 551, type: !2506, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3778)
!3778 = !{!3779, !3780, !3781, !3782}
!3779 = !DILocalVariable(name: "alt", scope: !3777, file: !3, line: 553, type: !595)
!3780 = !DILocalVariable(name: "def", scope: !3777, file: !3, line: 554, type: !595)
!3781 = !DILocalVariable(name: "def_match", scope: !3777, file: !3, line: 554, type: !595)
!3782 = !DILocalVariable(name: "def_cl", scope: !3777, file: !3, line: 555, type: !5)
!3783 = !DILocation(line: 0, scope: !3777)
!3784 = !DILocation(line: 557, column: 8, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 557, column: 3)
!3786 = !DILocation(line: 0, scope: !3785)
!3787 = !DILocation(line: 557, column: 34, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 557, column: 3)
!3789 = !DILocation(line: 557, column: 21, scope: !3788)
!3790 = !DILocation(line: 557, column: 3, scope: !3785)
!3791 = !DILocation(line: 558, column: 5, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 558, column: 5)
!3793 = !DILocation(line: 0, scope: !3792)
!3794 = !DILocation(line: 558, column: 36, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 558, column: 5)
!3796 = !DILocation(line: 558, column: 23, scope: !3795)
!3797 = !DILocation(line: 561, column: 29, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 561, column: 6)
!3799 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 559, column: 7)
!3800 = !DILocation(line: 561, column: 6, scope: !3798)
!3801 = !DILocation(line: 561, column: 6, scope: !3799)
!3802 = !DILocation(line: 563, column: 10, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 563, column: 10)
!3804 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 562, column: 4)
!3805 = !DILocation(line: 563, column: 10, scope: !3804)
!3806 = !DILocation(line: 566, column: 40, scope: !3803)
!3807 = !DILocation(line: 0, scope: !3803)
!3808 = !DILocation(line: 567, column: 6, scope: !3804)
!3809 = !DILocation(line: 568, column: 4, scope: !3804)
!3810 = !DILocation(line: 569, column: 42, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 569, column: 6)
!3812 = !DILocation(line: 569, column: 51, scope: !3811)
!3813 = !DILocation(line: 570, column: 6, scope: !3811)
!3814 = !DILocation(line: 570, column: 10, scope: !3811)
!3815 = !DILocation(line: 570, column: 39, scope: !3811)
!3816 = !DILocation(line: 571, column: 3, scope: !3811)
!3817 = !DILocation(line: 571, column: 29, scope: !3811)
!3818 = !DILocation(line: 571, column: 6, scope: !3811)
!3819 = !DILocation(line: 569, column: 6, scope: !3799)
!3820 = !DILocation(line: 573, column: 10, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 573, column: 10)
!3822 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 572, column: 4)
!3823 = !DILocation(line: 573, column: 10, scope: !3822)
!3824 = !DILocation(line: 576, column: 46, scope: !3821)
!3825 = !DILocation(line: 0, scope: !3821)
!3826 = !DILocation(line: 577, column: 6, scope: !3822)
!3827 = !DILocation(line: 578, column: 4, scope: !3822)
!3828 = !DILocation(line: 558, column: 51, scope: !3795)
!3829 = !DILocation(line: 558, column: 5, scope: !3795)
!3830 = distinct !{!3830, !3791, !3831}
!3831 = !DILocation(line: 579, column: 7, scope: !3792)
!3832 = !DILocation(line: 557, column: 53, scope: !3788)
!3833 = !DILocation(line: 557, column: 3, scope: !3788)
!3834 = distinct !{!3834, !3790, !3835}
!3835 = !DILocation(line: 579, column: 7, scope: !3785)
!3836 = !DILocation(line: 580, column: 1, scope: !3777)
!3837 = distinct !DISubprogram(name: "mark_hard_reg_early_clobbers", scope: !3, file: !3, line: 585, type: !3838, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3840)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!594, !622, !594}
!3840 = !{!3841, !3842, !3843, !3844, !3845}
!3841 = !DILocalVariable(name: "insn", arg: 1, scope: !3837, file: !3, line: 585, type: !622)
!3842 = !DILocalVariable(name: "live_p", arg: 2, scope: !3837, file: !3, line: 585, type: !594)
!3843 = !DILocalVariable(name: "def_rec", scope: !3837, file: !3, line: 587, type: !2711)
!3844 = !DILocalVariable(name: "set_p", scope: !3837, file: !3, line: 588, type: !594)
!3845 = !DILocalVariable(name: "dreg", scope: !3846, file: !3, line: 593, type: !622)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 592, column: 7)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 591, column: 9)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 590, column: 3)
!3849 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 590, column: 3)
!3850 = !DILocation(line: 0, scope: !3837)
!3851 = !DILocation(line: 590, column: 18, scope: !3849)
!3852 = !DILocation(line: 0, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 603, column: 6)
!3854 = !DILocation(line: 590, column: 8, scope: !3849)
!3855 = !DILocation(line: 588, column: 8, scope: !3837)
!3856 = !DILocation(line: 0, scope: !3849)
!3857 = !DILocation(line: 590, column: 39, scope: !3848)
!3858 = !DILocation(line: 590, column: 3, scope: !3849)
!3859 = !DILocation(line: 591, column: 9, scope: !3847)
!3860 = !DILocation(line: 591, column: 9, scope: !3848)
!3861 = !DILocation(line: 593, column: 13, scope: !3846)
!3862 = !DILocation(line: 0, scope: !3846)
!3863 = !DILocation(line: 595, column: 6, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 595, column: 6)
!3865 = !DILocation(line: 595, column: 22, scope: !3864)
!3866 = !DILocation(line: 595, column: 6, scope: !3846)
!3867 = !DILocation(line: 596, column: 11, scope: !3864)
!3868 = !DILocation(line: 0, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 597, column: 6)
!3870 = !DILocation(line: 597, column: 8, scope: !3869)
!3871 = !DILocation(line: 596, column: 4, scope: !3864)
!3872 = !DILocation(line: 597, column: 21, scope: !3869)
!3873 = !DILocation(line: 597, column: 24, scope: !3869)
!3874 = !DILocation(line: 597, column: 37, scope: !3869)
!3875 = !DILocation(line: 597, column: 6, scope: !3846)
!3876 = !DILocation(line: 606, column: 4, scope: !3853)
!3877 = !DILocation(line: 590, column: 56, scope: !3848)
!3878 = !DILocation(line: 590, column: 3, scope: !3848)
!3879 = distinct !{!3879, !3858, !3880}
!3880 = !DILocation(line: 608, column: 7, scope: !3849)
!3881 = !DILocation(line: 610, column: 3, scope: !3837)
!3882 = !DILocation(line: 604, column: 4, scope: !3853)
!3883 = distinct !DISubprogram(name: "bb_has_eh_pred", scope: !186, file: !186, line: 973, type: !3884, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!594, !1155}
!3886 = !{!3887, !3888, !3889}
!3887 = !DILocalVariable(name: "bb", arg: 1, scope: !3883, file: !186, line: 973, type: !1155)
!3888 = !DILocalVariable(name: "e", scope: !3883, file: !186, line: 975, type: !1172)
!3889 = !DILocalVariable(name: "ei", scope: !3883, file: !186, line: 976, type: !3890)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !186, line: 682, baseType: !3891)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 679, size: 128, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3891, file: !186, line: 680, baseType: !7, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3891, file: !186, line: 681, baseType: !3895, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!3896 = !DILocation(line: 0, scope: !3883)
!3897 = !DILocation(line: 975, column: 3, scope: !3883)
!3898 = !DILocation(line: 976, column: 3, scope: !3883)
!3899 = !DILocation(line: 978, column: 3, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3883, file: !186, line: 978, column: 3)
!3901 = !DILocation(line: 0, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3900, file: !186, line: 978, column: 3)
!3903 = !DILocation(line: 978, column: 3, scope: !3902)
!3904 = !DILocation(line: 980, column: 11, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !186, line: 980, column: 11)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !186, line: 979, column: 5)
!3907 = !DILocation(line: 980, column: 14, scope: !3905)
!3908 = !DILocation(line: 980, column: 20, scope: !3905)
!3909 = !DILocation(line: 980, column: 11, scope: !3906)
!3910 = distinct !{!3910, !3899, !3911}
!3911 = !DILocation(line: 982, column: 5, scope: !3900)
!3912 = !DILocation(line: 984, column: 1, scope: !3883)
!3913 = distinct !DISubprogram(name: "bb_has_abnormal_pred", scope: !186, file: !186, line: 988, type: !3884, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3914)
!3914 = !{!3915, !3916, !3917}
!3915 = !DILocalVariable(name: "bb", arg: 1, scope: !3913, file: !186, line: 988, type: !1155)
!3916 = !DILocalVariable(name: "e", scope: !3913, file: !186, line: 990, type: !1172)
!3917 = !DILocalVariable(name: "ei", scope: !3913, file: !186, line: 991, type: !3890)
!3918 = !DILocation(line: 0, scope: !3913)
!3919 = !DILocation(line: 990, column: 3, scope: !3913)
!3920 = !DILocation(line: 991, column: 3, scope: !3913)
!3921 = !DILocation(line: 993, column: 3, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3913, file: !186, line: 993, column: 3)
!3923 = !DILocation(line: 0, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3922, file: !186, line: 993, column: 3)
!3925 = !DILocation(line: 993, column: 3, scope: !3924)
!3926 = !DILocation(line: 995, column: 11, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !186, line: 995, column: 11)
!3928 = distinct !DILexicalBlock(scope: !3924, file: !186, line: 994, column: 5)
!3929 = !DILocation(line: 995, column: 14, scope: !3927)
!3930 = !DILocation(line: 995, column: 20, scope: !3927)
!3931 = !DILocation(line: 995, column: 11, scope: !3928)
!3932 = distinct !{!3932, !3921, !3933}
!3933 = !DILocation(line: 997, column: 5, scope: !3922)
!3934 = !DILocation(line: 999, column: 1, scope: !3913)
!3935 = distinct !DISubprogram(name: "bb_has_abnormal_call_pred", scope: !3, file: !3, line: 899, type: !3884, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3936)
!3936 = !{!3937, !3938, !3939}
!3937 = !DILocalVariable(name: "bb", arg: 1, scope: !3935, file: !3, line: 899, type: !1155)
!3938 = !DILocalVariable(name: "e", scope: !3935, file: !3, line: 901, type: !1172)
!3939 = !DILocalVariable(name: "ei", scope: !3935, file: !3, line: 902, type: !3890)
!3940 = !DILocation(line: 0, scope: !3935)
!3941 = !DILocation(line: 901, column: 3, scope: !3935)
!3942 = !DILocation(line: 902, column: 3, scope: !3935)
!3943 = !DILocation(line: 904, column: 3, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 904, column: 3)
!3945 = !DILocation(line: 0, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 904, column: 3)
!3947 = !DILocation(line: 904, column: 3, scope: !3946)
!3948 = !DILocation(line: 906, column: 11, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 906, column: 11)
!3950 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 905, column: 5)
!3951 = !DILocation(line: 906, column: 14, scope: !3949)
!3952 = !DILocation(line: 906, column: 20, scope: !3949)
!3953 = !DILocation(line: 906, column: 11, scope: !3950)
!3954 = distinct !{!3954, !3943, !3955}
!3955 = !DILocation(line: 908, column: 5, scope: !3944)
!3956 = !DILocation(line: 910, column: 1, scope: !3935)
!3957 = distinct !DISubprogram(name: "make_regno_dead", scope: !3, file: !3, line: 144, type: !3515, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3958)
!3958 = !{!3959, !3960, !3961}
!3959 = !DILocalVariable(name: "regno", arg: 1, scope: !3957, file: !3, line: 144, type: !595)
!3960 = !DILocalVariable(name: "a", scope: !3957, file: !3, line: 146, type: !613)
!3961 = !DILocalVariable(name: "p", scope: !3957, file: !3, line: 147, type: !607)
!3962 = !DILocation(line: 0, scope: !3957)
!3963 = !DILocation(line: 149, column: 13, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 149, column: 7)
!3965 = !DILocation(line: 149, column: 7, scope: !3957)
!3966 = !DILocation(line: 151, column: 7, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 150, column: 5)
!3968 = !DILocation(line: 152, column: 7, scope: !3967)
!3969 = !DILocation(line: 154, column: 7, scope: !3957)
!3970 = !DILocation(line: 155, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 155, column: 7)
!3972 = !DILocation(line: 155, column: 7, scope: !3957)
!3973 = !DILocation(line: 157, column: 7, scope: !3957)
!3974 = !DILocation(line: 159, column: 15, scope: !3957)
!3975 = !DILocation(line: 159, column: 6, scope: !3957)
!3976 = !DILocation(line: 159, column: 13, scope: !3957)
!3977 = !DILocation(line: 160, column: 3, scope: !3957)
!3978 = !DILocation(line: 161, column: 1, scope: !3957)
!3979 = distinct !DISubprogram(name: "sparseset_bit_p", scope: !1927, file: !1927, line: 81, type: !3980, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!594, !1926, !7}
!3982 = !{!3983, !3984, !3985}
!3983 = !DILocalVariable(name: "s", arg: 1, scope: !3979, file: !1927, line: 81, type: !1926)
!3984 = !DILocalVariable(name: "e", arg: 2, scope: !3979, file: !1927, line: 81, type: !7)
!3985 = !DILocalVariable(name: "idx", scope: !3979, file: !1927, line: 83, type: !7)
!3986 = !DILocation(line: 0, scope: !3979)
!3987 = !DILocation(line: 85, column: 3, scope: !3979)
!3988 = !DILocation(line: 87, column: 12, scope: !3979)
!3989 = !DILocation(line: 87, column: 9, scope: !3979)
!3990 = !DILocation(line: 89, column: 19, scope: !3979)
!3991 = !DILocation(line: 89, column: 14, scope: !3979)
!3992 = !DILocation(line: 89, column: 27, scope: !3979)
!3993 = !DILocation(line: 89, column: 33, scope: !3979)
!3994 = !DILocation(line: 89, column: 30, scope: !3979)
!3995 = !DILocation(line: 89, column: 44, scope: !3979)
!3996 = !DILocation(line: 89, column: 3, scope: !3979)
!3997 = distinct !DISubprogram(name: "sparseset_set_bit", scope: !1927, file: !1927, line: 106, type: !3998, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !1926, !7}
!4000 = !{!4001, !4002}
!4001 = !DILocalVariable(name: "s", arg: 1, scope: !3997, file: !1927, line: 106, type: !1926)
!4002 = !DILocalVariable(name: "e", arg: 2, scope: !3997, file: !1927, line: 106, type: !7)
!4003 = !DILocation(line: 0, scope: !3997)
!4004 = !DILocation(line: 108, column: 8, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3997, file: !1927, line: 108, column: 7)
!4006 = !DILocation(line: 108, column: 7, scope: !3997)
!4007 = !DILocation(line: 109, column: 36, scope: !4005)
!4008 = !DILocation(line: 109, column: 43, scope: !4005)
!4009 = !DILocation(line: 109, column: 5, scope: !4005)
!4010 = !DILocation(line: 110, column: 1, scope: !3997)
!4011 = distinct !DISubprogram(name: "sparseset_insert_bit", scope: !1927, file: !1927, line: 96, type: !4012, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !1926, !7, !7}
!4014 = !{!4015, !4016, !4017}
!4015 = !DILocalVariable(name: "s", arg: 1, scope: !4011, file: !1927, line: 96, type: !1926)
!4016 = !DILocalVariable(name: "e", arg: 2, scope: !4011, file: !1927, line: 96, type: !7)
!4017 = !DILocalVariable(name: "idx", arg: 3, scope: !4011, file: !1927, line: 96, type: !7)
!4018 = !DILocation(line: 0, scope: !4011)
!4019 = !DILocation(line: 98, column: 6, scope: !4011)
!4020 = !DILocation(line: 98, column: 3, scope: !4011)
!4021 = !DILocation(line: 98, column: 16, scope: !4011)
!4022 = !DILocation(line: 99, column: 6, scope: !4011)
!4023 = !DILocation(line: 99, column: 3, scope: !4011)
!4024 = !DILocation(line: 99, column: 17, scope: !4011)
!4025 = !DILocation(line: 100, column: 1, scope: !4011)
!4026 = distinct !DISubprogram(name: "mark_reg_live", scope: !3, file: !3, line: 248, type: !4027, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !622}
!4029 = !{!4030, !4031, !4032, !4033, !4036, !4039, !4040}
!4030 = !DILocalVariable(name: "reg", arg: 1, scope: !4026, file: !3, line: 248, type: !622)
!4031 = !DILocalVariable(name: "i", scope: !4026, file: !3, line: 250, type: !595)
!4032 = !DILocalVariable(name: "regno", scope: !4026, file: !3, line: 250, type: !595)
!4033 = !DILocalVariable(name: "a", scope: !4034, file: !3, line: 257, type: !613)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 256, column: 5)
!4035 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 255, column: 7)
!4036 = !DILocalVariable(name: "last", scope: !4037, file: !3, line: 273, type: !595)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 272, column: 5)
!4038 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 271, column: 12)
!4039 = !DILocalVariable(name: "cover_class", scope: !4037, file: !3, line: 274, type: !5)
!4040 = !DILocalVariable(name: "cl", scope: !4037, file: !3, line: 274, type: !5)
!4041 = !DILocation(line: 0, scope: !4026)
!4042 = !DILocation(line: 252, column: 3, scope: !4026)
!4043 = !DILocation(line: 253, column: 11, scope: !4026)
!4044 = !DILocation(line: 255, column: 13, scope: !4035)
!4045 = !DILocation(line: 255, column: 7, scope: !4026)
!4046 = !DILocation(line: 257, column: 25, scope: !4034)
!4047 = !DILocation(line: 0, scope: !4034)
!4048 = !DILocation(line: 259, column: 13, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 259, column: 11)
!4050 = !DILocation(line: 259, column: 11, scope: !4034)
!4051 = !DILocation(line: 261, column: 25, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 261, column: 8)
!4053 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 260, column: 2)
!4054 = !DILocation(line: 261, column: 40, scope: !4052)
!4055 = !DILocation(line: 261, column: 8, scope: !4052)
!4056 = !DILocation(line: 261, column: 8, scope: !4053)
!4057 = !DILocation(line: 264, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 262, column: 6)
!4059 = !DILocation(line: 264, column: 30, scope: !4058)
!4060 = !DILocation(line: 264, column: 47, scope: !4058)
!4061 = !DILocation(line: 265, column: 8, scope: !4058)
!4062 = !DILocation(line: 267, column: 4, scope: !4053)
!4063 = !DILocation(line: 268, column: 2, scope: !4053)
!4064 = !DILocation(line: 269, column: 7, scope: !4034)
!4065 = !DILocation(line: 270, column: 5, scope: !4035)
!4066 = !DILocation(line: 271, column: 14, scope: !4038)
!4067 = !DILocation(line: 271, column: 12, scope: !4035)
!4068 = !DILocation(line: 273, column: 26, scope: !4037)
!4069 = !DILocation(line: 273, column: 50, scope: !4037)
!4070 = !DILocation(line: 273, column: 24, scope: !4037)
!4071 = !DILocation(line: 0, scope: !4037)
!4072 = !DILocation(line: 276, column: 7, scope: !4037)
!4073 = !DILocation(line: 276, column: 20, scope: !4037)
!4074 = !DILocation(line: 278, column: 10, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 278, column: 8)
!4076 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 277, column: 2)
!4077 = !DILocation(line: 279, column: 8, scope: !4075)
!4078 = !DILocation(line: 279, column: 13, scope: !4075)
!4079 = !DILocation(line: 278, column: 8, scope: !4076)
!4080 = !DILocation(line: 281, column: 22, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 280, column: 6)
!4082 = !DILocation(line: 0, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 282, column: 8)
!4084 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 282, column: 8)
!4085 = !DILocation(line: 0, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 288, column: 9)
!4087 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 286, column: 3)
!4088 = !DILocation(line: 282, column: 13, scope: !4084)
!4089 = !DILocation(line: 0, scope: !4084)
!4090 = !DILocation(line: 283, column: 12, scope: !4083)
!4091 = !DILocation(line: 284, column: 8, scope: !4083)
!4092 = !DILocation(line: 282, column: 8, scope: !4084)
!4093 = !DILocation(line: 287, column: 5, scope: !4087)
!4094 = !DILocation(line: 287, column: 26, scope: !4087)
!4095 = !DILocation(line: 288, column: 9, scope: !4086)
!4096 = !DILocation(line: 288, column: 39, scope: !4086)
!4097 = !DILocation(line: 289, column: 9, scope: !4086)
!4098 = !DILocation(line: 290, column: 8, scope: !4086)
!4099 = !DILocation(line: 290, column: 6, scope: !4086)
!4100 = !DILocation(line: 288, column: 9, scope: !4087)
!4101 = !DILocation(line: 291, column: 37, scope: !4086)
!4102 = !DILocation(line: 291, column: 7, scope: !4086)
!4103 = !DILocation(line: 285, column: 7, scope: !4083)
!4104 = !DILocation(line: 282, column: 8, scope: !4083)
!4105 = distinct !{!4105, !4092, !4106}
!4106 = !DILocation(line: 292, column: 3, scope: !4084)
!4107 = !DILocation(line: 293, column: 8, scope: !4081)
!4108 = !DILocation(line: 294, column: 13, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 294, column: 8)
!4110 = !DILocation(line: 0, scope: !4109)
!4111 = !DILocation(line: 295, column: 12, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 294, column: 8)
!4113 = !DILocation(line: 296, column: 8, scope: !4112)
!4114 = !DILocation(line: 294, column: 8, scope: !4109)
!4115 = !DILocation(line: 299, column: 9, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 299, column: 9)
!4117 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 298, column: 3)
!4118 = !DILocation(line: 299, column: 42, scope: !4116)
!4119 = !DILocation(line: 299, column: 40, scope: !4116)
!4120 = !DILocation(line: 299, column: 9, scope: !4117)
!4121 = !DILocation(line: 300, column: 38, scope: !4116)
!4122 = !DILocation(line: 300, column: 7, scope: !4116)
!4123 = !DILocation(line: 297, column: 7, scope: !4112)
!4124 = !DILocation(line: 294, column: 8, scope: !4112)
!4125 = distinct !{!4125, !4114, !4126}
!4126 = !DILocation(line: 301, column: 3, scope: !4109)
!4127 = !DILocation(line: 303, column: 9, scope: !4076)
!4128 = distinct !{!4128, !4072, !4129}
!4129 = !DILocation(line: 304, column: 2, scope: !4037)
!4130 = !DILocation(line: 306, column: 1, scope: !4026)
!4131 = distinct !DISubprogram(name: "single_reg_operand_class", scope: !3, file: !3, line: 752, type: !4132, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4134)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!5, !595}
!4134 = !{!4135}
!4135 = !DILocalVariable(name: "op_num", arg: 1, scope: !4131, file: !3, line: 752, type: !595)
!4136 = !DILocation(line: 0, scope: !4131)
!4137 = !DILocation(line: 754, column: 14, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 754, column: 7)
!4139 = !DILocation(line: 754, column: 18, scope: !4138)
!4140 = !DILocation(line: 754, column: 32, scope: !4138)
!4141 = !DILocation(line: 754, column: 47, scope: !4138)
!4142 = !DILocation(line: 754, column: 7, scope: !4131)
!4143 = !DILocation(line: 756, column: 28, scope: !4131)
!4144 = !DILocation(line: 757, column: 7, scope: !4131)
!4145 = !DILocation(line: 756, column: 10, scope: !4131)
!4146 = !DILocation(line: 756, column: 3, scope: !4131)
!4147 = !DILocation(line: 758, column: 1, scope: !4131)
!4148 = distinct !DISubprogram(name: "ira_get_register_move_cost", scope: !608, file: !608, line: 906, type: !4149, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!595, !37, !5, !5}
!4151 = !{!4152, !4153, !4154}
!4152 = !DILocalVariable(name: "mode", arg: 1, scope: !4148, file: !608, line: 906, type: !37)
!4153 = !DILocalVariable(name: "from", arg: 2, scope: !4148, file: !608, line: 907, type: !5)
!4154 = !DILocalVariable(name: "to", arg: 3, scope: !4148, file: !608, line: 907, type: !5)
!4155 = !DILocation(line: 0, scope: !4148)
!4156 = !DILocation(line: 909, column: 7, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4148, file: !608, line: 909, column: 7)
!4158 = !DILocation(line: 909, column: 36, scope: !4157)
!4159 = !DILocation(line: 909, column: 7, scope: !4148)
!4160 = !DILocation(line: 910, column: 5, scope: !4157)
!4161 = !DILocation(line: 911, column: 10, scope: !4148)
!4162 = !DILocation(line: 911, column: 3, scope: !4148)
!4163 = distinct !DISubprogram(name: "ira_allocate_and_set_costs", scope: !608, file: !608, line: 1156, type: !4164, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4167)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !4166, !5, !595}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173}
!4168 = !DILocalVariable(name: "vec", arg: 1, scope: !4163, file: !608, line: 1156, type: !4166)
!4169 = !DILocalVariable(name: "cover_class", arg: 2, scope: !4163, file: !608, line: 1156, type: !5)
!4170 = !DILocalVariable(name: "val", arg: 3, scope: !4163, file: !608, line: 1156, type: !595)
!4171 = !DILocalVariable(name: "i", scope: !4163, file: !608, line: 1158, type: !595)
!4172 = !DILocalVariable(name: "reg_costs", scope: !4163, file: !608, line: 1158, type: !605)
!4173 = !DILocalVariable(name: "len", scope: !4163, file: !608, line: 1159, type: !595)
!4174 = !DILocation(line: 0, scope: !4163)
!4175 = !DILocation(line: 1161, column: 7, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4163, file: !608, line: 1161, column: 7)
!4177 = !DILocation(line: 1161, column: 12, scope: !4176)
!4178 = !DILocation(line: 1161, column: 7, scope: !4163)
!4179 = !DILocation(line: 1163, column: 22, scope: !4163)
!4180 = !DILocation(line: 1163, column: 8, scope: !4163)
!4181 = !DILocation(line: 1164, column: 9, scope: !4163)
!4182 = !DILocation(line: 1165, column: 8, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4163, file: !608, line: 1165, column: 3)
!4184 = !DILocation(line: 0, scope: !4183)
!4185 = !DILocation(line: 1165, column: 17, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !608, line: 1165, column: 3)
!4187 = !DILocation(line: 1165, column: 3, scope: !4183)
!4188 = !DILocation(line: 1166, column: 5, scope: !4186)
!4189 = !DILocation(line: 1166, column: 18, scope: !4186)
!4190 = !DILocation(line: 1165, column: 25, scope: !4186)
!4191 = !DILocation(line: 1165, column: 3, scope: !4186)
!4192 = distinct !{!4192, !4187, !4193}
!4193 = !DILocation(line: 1166, column: 20, scope: !4183)
!4194 = !DILocation(line: 1167, column: 1, scope: !4163)
!4195 = distinct !DISubprogram(name: "single_reg_class", scope: !3, file: !3, line: 617, type: !4196, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!5, !600, !622, !622}
!4198 = !{!4199, !4200, !4201, !4202, !4203, !4204, !4205}
!4199 = !DILocalVariable(name: "constraints", arg: 1, scope: !4195, file: !3, line: 617, type: !600)
!4200 = !DILocalVariable(name: "op", arg: 2, scope: !4195, file: !3, line: 617, type: !622)
!4201 = !DILocalVariable(name: "equiv_const", arg: 3, scope: !4195, file: !3, line: 617, type: !622)
!4202 = !DILocalVariable(name: "ignore_p", scope: !4195, file: !3, line: 619, type: !595)
!4203 = !DILocalVariable(name: "cl", scope: !4195, file: !3, line: 620, type: !5)
!4204 = !DILocalVariable(name: "next_cl", scope: !4195, file: !3, line: 620, type: !5)
!4205 = !DILocalVariable(name: "c", scope: !4195, file: !3, line: 621, type: !595)
!4206 = !DILocation(line: 0, scope: !4195)
!4207 = !DILocation(line: 692, column: 8, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 690, column: 8)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 633, column: 2)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 631, column: 14)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 629, column: 14)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 627, column: 9)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 624, column: 3)
!4214 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 624, column: 3)
!4215 = !DILocation(line: 680, column: 12, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 679, column: 8)
!4217 = !DILocation(line: 624, column: 8, scope: !4214)
!4218 = !DILocation(line: 623, column: 6, scope: !4195)
!4219 = !DILocation(line: 0, scope: !4214)
!4220 = !DILocation(line: 625, column: 13, scope: !4213)
!4221 = !DILocation(line: 624, column: 3, scope: !4214)
!4222 = !DILocation(line: 631, column: 16, scope: !4210)
!4223 = !DILocation(line: 631, column: 14, scope: !4211)
!4224 = !DILocation(line: 632, column: 7, scope: !4210)
!4225 = !DILocation(line: 645, column: 8, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 645, column: 8)
!4227 = !DILocation(line: 646, column: 8, scope: !4226)
!4228 = !DILocation(line: 646, column: 36, scope: !4226)
!4229 = !DILocation(line: 651, column: 8, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 651, column: 8)
!4231 = !DILocation(line: 652, column: 8, scope: !4230)
!4232 = !DILocation(line: 652, column: 26, scope: !4230)
!4233 = !DILocation(line: 652, column: 42, scope: !4230)
!4234 = !DILocation(line: 652, column: 45, scope: !4230)
!4235 = !DILocation(line: 652, column: 59, scope: !4230)
!4236 = !DILocation(line: 653, column: 8, scope: !4230)
!4237 = !DILocation(line: 654, column: 5, scope: !4230)
!4238 = !DILocation(line: 661, column: 9, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 661, column: 8)
!4240 = !DILocation(line: 661, column: 25, scope: !4239)
!4241 = !DILocation(line: 661, column: 29, scope: !4239)
!4242 = !DILocation(line: 662, column: 9, scope: !4239)
!4243 = !DILocation(line: 662, column: 27, scope: !4239)
!4244 = !DILocation(line: 662, column: 43, scope: !4239)
!4245 = !DILocation(line: 662, column: 46, scope: !4239)
!4246 = !DILocation(line: 662, column: 60, scope: !4239)
!4247 = !DILocation(line: 663, column: 8, scope: !4239)
!4248 = !DILocation(line: 664, column: 5, scope: !4239)
!4249 = !DILocation(line: 679, column: 9, scope: !4216)
!4250 = !DILocation(line: 680, column: 9, scope: !4216)
!4251 = !DILocation(line: 681, column: 8, scope: !4216)
!4252 = !DILocation(line: 682, column: 5, scope: !4216)
!4253 = !DILocation(line: 690, column: 8, scope: !4208)
!4254 = !DILocation(line: 690, column: 22, scope: !4208)
!4255 = !DILocation(line: 691, column: 8, scope: !4208)
!4256 = !DILocation(line: 691, column: 26, scope: !4208)
!4257 = !DILocation(line: 692, column: 5, scope: !4208)
!4258 = !DILocation(line: 692, column: 39, scope: !4208)
!4259 = !DILocation(line: 693, column: 8, scope: !4208)
!4260 = !DILocation(line: 694, column: 5, scope: !4208)
!4261 = !DILocation(line: 703, column: 9, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 703, column: 8)
!4263 = !DILocation(line: 703, column: 23, scope: !4262)
!4264 = !DILocation(line: 704, column: 9, scope: !4262)
!4265 = !DILocation(line: 704, column: 12, scope: !4262)
!4266 = !DILocation(line: 705, column: 8, scope: !4262)
!4267 = !DILocation(line: 706, column: 5, scope: !4262)
!4268 = !DILocation(line: 719, column: 17, scope: !4209)
!4269 = !DILocation(line: 719, column: 15, scope: !4209)
!4270 = !DILocation(line: 721, column: 10, scope: !4209)
!4271 = !DILocation(line: 722, column: 12, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 722, column: 8)
!4273 = !DILocation(line: 722, column: 34, scope: !4272)
!4274 = !DILocation(line: 722, column: 23, scope: !4272)
!4275 = !DILocation(line: 723, column: 12, scope: !4272)
!4276 = !DILocation(line: 724, column: 36, scope: !4272)
!4277 = !DILocation(line: 724, column: 7, scope: !4272)
!4278 = !DILocation(line: 724, column: 5, scope: !4272)
!4279 = !DILocation(line: 722, column: 8, scope: !4209)
!4280 = !DILocation(line: 732, column: 51, scope: !4209)
!4281 = !DILocation(line: 732, column: 26, scope: !4209)
!4282 = !DILocation(line: 733, column: 5, scope: !4209)
!4283 = !DILocation(line: 732, column: 8, scope: !4209)
!4284 = !DILocation(line: 734, column: 12, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 734, column: 8)
!4286 = !DILocation(line: 734, column: 34, scope: !4285)
!4287 = !DILocation(line: 734, column: 23, scope: !4285)
!4288 = !DILocation(line: 735, column: 19, scope: !4285)
!4289 = !DILocation(line: 736, column: 12, scope: !4285)
!4290 = !DILocation(line: 737, column: 36, scope: !4285)
!4291 = !DILocation(line: 737, column: 7, scope: !4285)
!4292 = !DILocation(line: 737, column: 5, scope: !4285)
!4293 = !DILocation(line: 734, column: 8, scope: !4209)
!4294 = !DILocation(line: 0, scope: !4212)
!4295 = !DILocation(line: 626, column: 23, scope: !4213)
!4296 = !DILocation(line: 626, column: 20, scope: !4213)
!4297 = !DILocation(line: 624, column: 3, scope: !4213)
!4298 = distinct !{!4298, !4221, !4299}
!4299 = !DILocation(line: 744, column: 2, scope: !4214)
!4300 = !DILocation(line: 746, column: 1, scope: !4195)
!4301 = distinct !DISubprogram(name: "mark_reg_dead", scope: !3, file: !3, line: 323, type: !4027, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4302)
!4302 = !{!4303, !4304, !4305, !4308, !4311, !4312, !4313, !4314, !4315}
!4303 = !DILocalVariable(name: "reg", arg: 1, scope: !4301, file: !3, line: 323, type: !622)
!4304 = !DILocalVariable(name: "regno", scope: !4301, file: !3, line: 325, type: !595)
!4305 = !DILocalVariable(name: "a", scope: !4306, file: !3, line: 332, type: !613)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 331, column: 5)
!4307 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 330, column: 7)
!4308 = !DILocalVariable(name: "i", scope: !4309, file: !3, line: 348, type: !595)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 347, column: 5)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 346, column: 12)
!4311 = !DILocalVariable(name: "j", scope: !4309, file: !3, line: 349, type: !7)
!4312 = !DILocalVariable(name: "last", scope: !4309, file: !3, line: 350, type: !595)
!4313 = !DILocalVariable(name: "cover_class", scope: !4309, file: !3, line: 351, type: !5)
!4314 = !DILocalVariable(name: "cl", scope: !4309, file: !3, line: 351, type: !5)
!4315 = !DILocalVariable(name: "set_p", scope: !4309, file: !3, line: 352, type: !594)
!4316 = !DILocation(line: 0, scope: !4301)
!4317 = !DILocation(line: 327, column: 3, scope: !4301)
!4318 = !DILocation(line: 328, column: 11, scope: !4301)
!4319 = !DILocation(line: 330, column: 13, scope: !4307)
!4320 = !DILocation(line: 330, column: 7, scope: !4301)
!4321 = !DILocation(line: 332, column: 25, scope: !4306)
!4322 = !DILocation(line: 0, scope: !4306)
!4323 = !DILocation(line: 334, column: 13, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 334, column: 11)
!4325 = !DILocation(line: 334, column: 11, scope: !4306)
!4326 = !DILocation(line: 336, column: 27, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 336, column: 8)
!4328 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 335, column: 2)
!4329 = !DILocation(line: 336, column: 42, scope: !4327)
!4330 = !DILocation(line: 336, column: 10, scope: !4327)
!4331 = !DILocation(line: 336, column: 8, scope: !4328)
!4332 = !DILocation(line: 339, column: 8, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 337, column: 6)
!4334 = !DILocation(line: 339, column: 30, scope: !4333)
!4335 = !DILocation(line: 339, column: 47, scope: !4333)
!4336 = !DILocation(line: 340, column: 8, scope: !4333)
!4337 = !DILocation(line: 342, column: 4, scope: !4328)
!4338 = !DILocation(line: 343, column: 2, scope: !4328)
!4339 = !DILocation(line: 344, column: 7, scope: !4306)
!4340 = !DILocation(line: 345, column: 5, scope: !4307)
!4341 = !DILocation(line: 346, column: 14, scope: !4310)
!4342 = !DILocation(line: 346, column: 12, scope: !4307)
!4343 = !DILocation(line: 350, column: 26, scope: !4309)
!4344 = !DILocation(line: 350, column: 50, scope: !4309)
!4345 = !DILocation(line: 350, column: 24, scope: !4309)
!4346 = !DILocation(line: 0, scope: !4309)
!4347 = !DILocation(line: 354, column: 7, scope: !4309)
!4348 = !DILocation(line: 354, column: 20, scope: !4309)
!4349 = !DILocation(line: 356, column: 8, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 356, column: 8)
!4351 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 355, column: 2)
!4352 = !DILocation(line: 356, column: 8, scope: !4351)
!4353 = !DILocation(line: 359, column: 22, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 357, column: 6)
!4355 = !DILocation(line: 0, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 360, column: 8)
!4357 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 360, column: 8)
!4358 = !DILocation(line: 360, column: 13, scope: !4357)
!4359 = !DILocation(line: 0, scope: !4357)
!4360 = !DILocation(line: 0, scope: !4354)
!4361 = !DILocation(line: 361, column: 12, scope: !4356)
!4362 = !DILocation(line: 362, column: 8, scope: !4356)
!4363 = !DILocation(line: 360, column: 8, scope: !4357)
!4364 = !DILocation(line: 365, column: 5, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 364, column: 5)
!4366 = !DILocation(line: 365, column: 26, scope: !4365)
!4367 = !DILocation(line: 366, column: 9, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 366, column: 9)
!4369 = !DILocation(line: 366, column: 39, scope: !4368)
!4370 = !DILocation(line: 367, column: 9, scope: !4368)
!4371 = !DILocation(line: 367, column: 37, scope: !4368)
!4372 = !DILocation(line: 367, column: 34, scope: !4368)
!4373 = !DILocation(line: 366, column: 9, scope: !4365)
!4374 = !DILocation(line: 363, column: 7, scope: !4356)
!4375 = !DILocation(line: 360, column: 8, scope: !4356)
!4376 = distinct !{!4376, !4363, !4377}
!4377 = !DILocation(line: 370, column: 3, scope: !4357)
!4378 = !DILocation(line: 371, column: 12, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 371, column: 12)
!4380 = !DILocation(line: 371, column: 12, scope: !4354)
!4381 = !DILocation(line: 373, column: 5, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 373, column: 5)
!4383 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 372, column: 3)
!4384 = !DILocation(line: 373, column: 5, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 373, column: 5)
!4386 = !DILocation(line: 0, scope: !4385)
!4387 = !DILocation(line: 375, column: 5, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 375, column: 5)
!4389 = !DILocation(line: 374, column: 46, scope: !4385)
!4390 = !DILocation(line: 374, column: 7, scope: !4385)
!4391 = distinct !{!4391, !4381, !4392}
!4392 = !DILocation(line: 374, column: 61, scope: !4382)
!4393 = !DILocation(line: 0, scope: !4388)
!4394 = !DILocation(line: 376, column: 16, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 375, column: 5)
!4396 = !DILocation(line: 377, column: 5, scope: !4395)
!4397 = !DILocation(line: 379, column: 11, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 379, column: 11)
!4399 = !DILocation(line: 379, column: 41, scope: !4398)
!4400 = !DILocation(line: 380, column: 4, scope: !4398)
!4401 = !DILocation(line: 380, column: 8, scope: !4398)
!4402 = !DILocation(line: 381, column: 11, scope: !4398)
!4403 = !DILocation(line: 381, column: 8, scope: !4398)
!4404 = !DILocation(line: 379, column: 11, scope: !4395)
!4405 = !DILocation(line: 382, column: 39, scope: !4398)
!4406 = !DILocation(line: 382, column: 9, scope: !4398)
!4407 = !DILocation(line: 378, column: 11, scope: !4395)
!4408 = !DILocation(line: 375, column: 5, scope: !4395)
!4409 = distinct !{!4409, !4387, !4410}
!4410 = !DILocation(line: 382, column: 42, scope: !4388)
!4411 = !DILocation(line: 384, column: 8, scope: !4354)
!4412 = !DILocation(line: 385, column: 6, scope: !4354)
!4413 = !DILocation(line: 386, column: 9, scope: !4351)
!4414 = distinct !{!4414, !4347, !4415}
!4415 = !DILocation(line: 387, column: 2, scope: !4309)
!4416 = !DILocation(line: 389, column: 1, scope: !4301)
!4417 = distinct !DISubprogram(name: "clear_allocno_live", scope: !3, file: !3, line: 202, type: !2601, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4418)
!4418 = !{!4419, !4420, !4421, !4422, !4423, !4424}
!4419 = !DILocalVariable(name: "a", arg: 1, scope: !4417, file: !3, line: 202, type: !613)
!4420 = !DILocalVariable(name: "i", scope: !4417, file: !3, line: 204, type: !595)
!4421 = !DILocalVariable(name: "j", scope: !4417, file: !3, line: 205, type: !7)
!4422 = !DILocalVariable(name: "cover_class", scope: !4417, file: !3, line: 206, type: !5)
!4423 = !DILocalVariable(name: "cl", scope: !4417, file: !3, line: 206, type: !5)
!4424 = !DILocalVariable(name: "set_p", scope: !4417, file: !3, line: 207, type: !594)
!4425 = !DILocation(line: 0, scope: !4417)
!4426 = !DILocation(line: 210, column: 3, scope: !4417)
!4427 = !DILocation(line: 210, column: 25, scope: !4417)
!4428 = !DILocation(line: 210, column: 42, scope: !4417)
!4429 = !DILocation(line: 211, column: 24, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 211, column: 7)
!4431 = !DILocation(line: 211, column: 39, scope: !4430)
!4432 = !DILocation(line: 211, column: 7, scope: !4430)
!4433 = !DILocation(line: 211, column: 7, scope: !4417)
!4434 = !DILocation(line: 213, column: 21, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 212, column: 5)
!4436 = !DILocation(line: 0, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 215, column: 7)
!4438 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 215, column: 7)
!4439 = !DILocation(line: 0, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 219, column: 2)
!4441 = !DILocation(line: 215, column: 12, scope: !4438)
!4442 = !DILocation(line: 0, scope: !4438)
!4443 = !DILocation(line: 0, scope: !4435)
!4444 = !DILocation(line: 216, column: 11, scope: !4437)
!4445 = !DILocation(line: 217, column: 7, scope: !4437)
!4446 = !DILocation(line: 215, column: 7, scope: !4438)
!4447 = !DILocation(line: 220, column: 29, scope: !4440)
!4448 = !DILocation(line: 220, column: 53, scope: !4440)
!4449 = !DILocation(line: 220, column: 4, scope: !4440)
!4450 = !DILocation(line: 220, column: 26, scope: !4440)
!4451 = !DILocation(line: 222, column: 8, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 222, column: 8)
!4453 = !DILocation(line: 222, column: 38, scope: !4452)
!4454 = !DILocation(line: 223, column: 8, scope: !4452)
!4455 = !DILocation(line: 223, column: 36, scope: !4452)
!4456 = !DILocation(line: 223, column: 33, scope: !4452)
!4457 = !DILocation(line: 222, column: 8, scope: !4440)
!4458 = !DILocation(line: 218, column: 6, scope: !4437)
!4459 = !DILocation(line: 215, column: 7, scope: !4437)
!4460 = distinct !{!4460, !4446, !4461}
!4461 = !DILocation(line: 225, column: 2, scope: !4438)
!4462 = !DILocation(line: 226, column: 11, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 226, column: 11)
!4464 = !DILocation(line: 226, column: 11, scope: !4435)
!4465 = !DILocation(line: 228, column: 4, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 228, column: 4)
!4467 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 227, column: 2)
!4468 = !DILocation(line: 228, column: 4, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 228, column: 4)
!4470 = !DILocation(line: 0, scope: !4469)
!4471 = !DILocation(line: 230, column: 4, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 230, column: 4)
!4473 = !DILocation(line: 229, column: 45, scope: !4469)
!4474 = !DILocation(line: 229, column: 6, scope: !4469)
!4475 = distinct !{!4475, !4465, !4476}
!4476 = !DILocation(line: 229, column: 60, scope: !4466)
!4477 = !DILocation(line: 0, scope: !4472)
!4478 = !DILocation(line: 231, column: 15, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 230, column: 4)
!4480 = !DILocation(line: 232, column: 4, scope: !4479)
!4481 = !DILocation(line: 234, column: 10, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 234, column: 10)
!4483 = !DILocation(line: 234, column: 40, scope: !4482)
!4484 = !DILocation(line: 235, column: 3, scope: !4482)
!4485 = !DILocation(line: 235, column: 6, scope: !4482)
!4486 = !DILocation(line: 235, column: 31, scope: !4482)
!4487 = !DILocation(line: 235, column: 28, scope: !4482)
!4488 = !DILocation(line: 234, column: 10, scope: !4479)
!4489 = !DILocation(line: 236, column: 38, scope: !4482)
!4490 = !DILocation(line: 236, column: 8, scope: !4482)
!4491 = !DILocation(line: 233, column: 10, scope: !4479)
!4492 = !DILocation(line: 230, column: 4, scope: !4479)
!4493 = distinct !{!4493, !4471, !4494}
!4494 = !DILocation(line: 236, column: 41, scope: !4472)
!4495 = !DILocation(line: 240, column: 24, scope: !4417)
!4496 = !DILocation(line: 240, column: 39, scope: !4417)
!4497 = !DILocation(line: 240, column: 3, scope: !4417)
!4498 = !DILocation(line: 241, column: 1, scope: !4417)
!4499 = distinct !DISubprogram(name: "update_allocno_pressure_excess_length", scope: !3, file: !3, line: 119, type: !2601, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4500)
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4506}
!4501 = !DILocalVariable(name: "a", arg: 1, scope: !4499, file: !3, line: 119, type: !613)
!4502 = !DILocalVariable(name: "start", scope: !4499, file: !3, line: 121, type: !595)
!4503 = !DILocalVariable(name: "i", scope: !4499, file: !3, line: 121, type: !595)
!4504 = !DILocalVariable(name: "cover_class", scope: !4499, file: !3, line: 122, type: !5)
!4505 = !DILocalVariable(name: "cl", scope: !4499, file: !3, line: 122, type: !5)
!4506 = !DILocalVariable(name: "p", scope: !4499, file: !3, line: 123, type: !607)
!4507 = !DILocation(line: 0, scope: !4499)
!4508 = !DILocation(line: 125, column: 17, scope: !4499)
!4509 = !DILocation(line: 0, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 126, column: 3)
!4511 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 126, column: 3)
!4512 = !DILocation(line: 0, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 129, column: 5)
!4514 = !DILocation(line: 126, column: 8, scope: !4511)
!4515 = !DILocation(line: 0, scope: !4511)
!4516 = !DILocation(line: 127, column: 14, scope: !4510)
!4517 = !DILocation(line: 127, column: 59, scope: !4510)
!4518 = !DILocation(line: 126, column: 3, scope: !4511)
!4519 = !DILocation(line: 130, column: 11, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 130, column: 11)
!4521 = !DILocation(line: 130, column: 41, scope: !4520)
!4522 = !DILocation(line: 130, column: 11, scope: !4513)
!4523 = !DILocation(line: 132, column: 11, scope: !4513)
!4524 = !DILocation(line: 134, column: 51, scope: !4513)
!4525 = !DILocation(line: 134, column: 46, scope: !4513)
!4526 = !DILocation(line: 134, column: 16, scope: !4513)
!4527 = !DILocation(line: 136, column: 60, scope: !4513)
!4528 = !DILocation(line: 136, column: 68, scope: !4513)
!4529 = !DILocation(line: 136, column: 46, scope: !4513)
!4530 = !DILocation(line: 137, column: 5, scope: !4513)
!4531 = !DILocation(line: 128, column: 9, scope: !4510)
!4532 = !DILocation(line: 126, column: 3, scope: !4510)
!4533 = distinct !{!4533, !4518, !4534}
!4534 = !DILocation(line: 137, column: 5, scope: !4511)
!4535 = !DILocation(line: 138, column: 1, scope: !4499)
!4536 = distinct !DISubprogram(name: "check_and_make_def_conflict", scope: !3, file: !3, line: 476, type: !4537, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4539)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !595, !595, !5}
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550}
!4540 = !DILocalVariable(name: "alt", arg: 1, scope: !4536, file: !3, line: 476, type: !595)
!4541 = !DILocalVariable(name: "def", arg: 2, scope: !4536, file: !3, line: 476, type: !595)
!4542 = !DILocalVariable(name: "def_cl", arg: 3, scope: !4536, file: !3, line: 476, type: !5)
!4543 = !DILocalVariable(name: "use", scope: !4536, file: !3, line: 478, type: !595)
!4544 = !DILocalVariable(name: "use_match", scope: !4536, file: !3, line: 478, type: !595)
!4545 = !DILocalVariable(name: "a", scope: !4536, file: !3, line: 479, type: !613)
!4546 = !DILocalVariable(name: "use_cl", scope: !4536, file: !3, line: 480, type: !5)
!4547 = !DILocalVariable(name: "acl", scope: !4536, file: !3, line: 480, type: !5)
!4548 = !DILocalVariable(name: "advance_p", scope: !4536, file: !3, line: 481, type: !594)
!4549 = !DILocalVariable(name: "dreg", scope: !4536, file: !3, line: 482, type: !622)
!4550 = !DILocalVariable(name: "alt1", scope: !4551, file: !3, line: 502, type: !595)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 501, column: 5)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 500, column: 3)
!4553 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 500, column: 3)
!4554 = !DILocation(line: 0, scope: !4536)
!4555 = !DILocation(line: 482, column: 14, scope: !4536)
!4556 = !DILocation(line: 484, column: 14, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 484, column: 7)
!4558 = !DILocation(line: 484, column: 7, scope: !4536)
!4559 = !DILocation(line: 487, column: 7, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 487, column: 7)
!4561 = !DILocation(line: 487, column: 23, scope: !4560)
!4562 = !DILocation(line: 487, column: 7, scope: !4536)
!4563 = !DILocation(line: 488, column: 12, scope: !4560)
!4564 = !DILocation(line: 0, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 490, column: 7)
!4566 = !DILocation(line: 490, column: 9, scope: !4565)
!4567 = !DILocation(line: 488, column: 5, scope: !4560)
!4568 = !DILocation(line: 490, column: 22, scope: !4565)
!4569 = !DILocation(line: 490, column: 25, scope: !4565)
!4570 = !DILocation(line: 490, column: 38, scope: !4565)
!4571 = !DILocation(line: 490, column: 7, scope: !4536)
!4572 = !DILocation(line: 493, column: 7, scope: !4536)
!4573 = !DILocation(line: 493, column: 34, scope: !4536)
!4574 = !DILocation(line: 494, column: 9, scope: !4536)
!4575 = !DILocation(line: 495, column: 9, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 495, column: 7)
!4577 = !DILocation(line: 495, column: 7, scope: !4536)
!4578 = !DILocation(line: 0, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 507, column: 11)
!4580 = !DILocation(line: 500, column: 3, scope: !4553)
!4581 = !DILocation(line: 498, column: 13, scope: !4536)
!4582 = !DILocation(line: 500, column: 34, scope: !4552)
!4583 = !DILocation(line: 500, column: 23, scope: !4552)
!4584 = !DILocation(line: 500, column: 21, scope: !4552)
!4585 = !DILocation(line: 504, column: 15, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 504, column: 11)
!4587 = !DILocation(line: 504, column: 22, scope: !4586)
!4588 = !DILocation(line: 504, column: 25, scope: !4586)
!4589 = !DILocation(line: 504, column: 54, scope: !4586)
!4590 = !DILocation(line: 504, column: 11, scope: !4551)
!4591 = !DILocation(line: 507, column: 34, scope: !4579)
!4592 = !DILocation(line: 507, column: 11, scope: !4579)
!4593 = !DILocation(line: 507, column: 11, scope: !4551)
!4594 = !DILocation(line: 510, column: 34, scope: !4579)
!4595 = !DILocation(line: 0, scope: !4551)
!4596 = !DILocation(line: 519, column: 23, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 516, column: 6)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 515, column: 7)
!4599 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 515, column: 7)
!4600 = !DILocation(line: 522, column: 23, scope: !4597)
!4601 = !DILocation(line: 0, scope: !4598)
!4602 = !DILocation(line: 0, scope: !4597)
!4603 = !DILocation(line: 515, column: 12, scope: !4599)
!4604 = !DILocation(line: 0, scope: !4599)
!4605 = !DILocation(line: 515, column: 27, scope: !4598)
!4606 = !DILocation(line: 515, column: 7, scope: !4599)
!4607 = !DILocation(line: 516, column: 30, scope: !4597)
!4608 = !DILocation(line: 516, column: 38, scope: !4597)
!4609 = !DILocation(line: 517, column: 6, scope: !4597)
!4610 = !DILocation(line: 518, column: 6, scope: !4597)
!4611 = !DILocation(line: 518, column: 37, scope: !4597)
!4612 = !DILocation(line: 519, column: 3, scope: !4597)
!4613 = !DILocation(line: 519, column: 34, scope: !4597)
!4614 = !DILocation(line: 519, column: 42, scope: !4597)
!4615 = !DILocation(line: 520, column: 6, scope: !4597)
!4616 = !DILocation(line: 521, column: 3, scope: !4597)
!4617 = !DILocation(line: 521, column: 6, scope: !4597)
!4618 = !DILocation(line: 521, column: 41, scope: !4597)
!4619 = !DILocation(line: 522, column: 3, scope: !4597)
!4620 = !DILocation(line: 522, column: 34, scope: !4597)
!4621 = !DILocation(line: 522, column: 42, scope: !4597)
!4622 = !DILocation(line: 516, column: 6, scope: !4598)
!4623 = !DILocation(line: 515, column: 60, scope: !4598)
!4624 = !DILocation(line: 515, column: 7, scope: !4598)
!4625 = distinct !{!4625, !4606, !4626}
!4626 = !DILocation(line: 523, column: 4, scope: !4599)
!4627 = !DILocation(line: 525, column: 29, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 525, column: 11)
!4629 = !DILocation(line: 525, column: 16, scope: !4628)
!4630 = !DILocation(line: 525, column: 11, scope: !4551)
!4631 = !DILocation(line: 528, column: 19, scope: !4551)
!4632 = !DILocation(line: 531, column: 47, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 531, column: 11)
!4634 = !DILocation(line: 531, column: 56, scope: !4633)
!4635 = !DILocation(line: 531, column: 11, scope: !4551)
!4636 = !DILocation(line: 533, column: 18, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 533, column: 8)
!4638 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 532, column: 2)
!4639 = !DILocation(line: 533, column: 8, scope: !4638)
!4640 = !DILocation(line: 536, column: 8, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 536, column: 8)
!4642 = !DILocation(line: 536, column: 37, scope: !4641)
!4643 = !DILocation(line: 536, column: 8, scope: !4638)
!4644 = !DILocation(line: 539, column: 44, scope: !4641)
!4645 = !DILocation(line: 0, scope: !4641)
!4646 = !DILocation(line: 540, column: 16, scope: !4638)
!4647 = !DILocation(line: 542, column: 2, scope: !4638)
!4648 = !DILocation(line: 500, column: 49, scope: !4552)
!4649 = !DILocation(line: 500, column: 3, scope: !4552)
!4650 = distinct !{!4650, !4580, !4651}
!4651 = !DILocation(line: 543, column: 5, scope: !4553)
!4652 = !DILocation(line: 544, column: 1, scope: !4536)
!4653 = distinct !DISubprogram(name: "check_and_make_def_use_conflict", scope: !3, file: !3, line: 444, type: !4654, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!594, !622, !5, !595, !5, !594}
!4656 = !{!4657, !4658, !4659, !4660, !4661}
!4657 = !DILocalVariable(name: "dreg", arg: 1, scope: !4653, file: !3, line: 444, type: !622)
!4658 = !DILocalVariable(name: "def_cl", arg: 2, scope: !4653, file: !3, line: 444, type: !5)
!4659 = !DILocalVariable(name: "use", arg: 3, scope: !4653, file: !3, line: 445, type: !595)
!4660 = !DILocalVariable(name: "use_cl", arg: 4, scope: !4653, file: !3, line: 445, type: !5)
!4661 = !DILocalVariable(name: "advance_p", arg: 5, scope: !4653, file: !3, line: 446, type: !594)
!4662 = !DILocation(line: 0, scope: !4653)
!4663 = !DILocation(line: 448, column: 9, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 448, column: 7)
!4665 = !DILocation(line: 448, column: 7, scope: !4653)
!4666 = !DILocation(line: 451, column: 37, scope: !4653)
!4667 = !DILocation(line: 451, column: 15, scope: !4653)
!4668 = !DILocation(line: 459, column: 24, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 459, column: 7)
!4670 = !DILocation(line: 459, column: 13, scope: !4669)
!4671 = !DILocation(line: 459, column: 35, scope: !4669)
!4672 = !DILocation(line: 459, column: 11, scope: !4669)
!4673 = !DILocation(line: 460, column: 7, scope: !4669)
!4674 = !DILocation(line: 460, column: 10, scope: !4669)
!4675 = !DILocation(line: 460, column: 41, scope: !4669)
!4676 = !DILocation(line: 459, column: 7, scope: !4653)
!4677 = !DILocation(line: 462, column: 54, scope: !4669)
!4678 = !DILocation(line: 462, column: 31, scope: !4669)
!4679 = !DILocation(line: 462, column: 9, scope: !4669)
!4680 = !DILocation(line: 461, column: 5, scope: !4669)
!4681 = !DILocation(line: 464, column: 11, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 464, column: 7)
!4683 = !DILocation(line: 465, column: 7, scope: !4682)
!4684 = !DILocation(line: 465, column: 37, scope: !4682)
!4685 = !DILocation(line: 465, column: 10, scope: !4682)
!4686 = !DILocation(line: 465, column: 45, scope: !4682)
!4687 = !DILocation(line: 464, column: 7, scope: !4653)
!4688 = !DILocation(line: 467, column: 31, scope: !4682)
!4689 = !DILocation(line: 467, column: 9, scope: !4682)
!4690 = !DILocation(line: 466, column: 5, scope: !4682)
!4691 = !DILocation(line: 470, column: 1, scope: !4653)
!4692 = distinct !DISubprogram(name: "make_pseudo_conflict", scope: !3, file: !3, line: 413, type: !4693, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!594, !622, !5, !622, !594}
!4695 = !{!4696, !4697, !4698, !4699, !4700}
!4696 = !DILocalVariable(name: "reg", arg: 1, scope: !4692, file: !3, line: 413, type: !622)
!4697 = !DILocalVariable(name: "cl", arg: 2, scope: !4692, file: !3, line: 413, type: !5)
!4698 = !DILocalVariable(name: "dreg", arg: 3, scope: !4692, file: !3, line: 413, type: !622)
!4699 = !DILocalVariable(name: "advance_p", arg: 4, scope: !4692, file: !3, line: 413, type: !594)
!4700 = !DILocalVariable(name: "a", scope: !4692, file: !3, line: 415, type: !613)
!4701 = !DILocation(line: 0, scope: !4692)
!4702 = !DILocation(line: 417, column: 7, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 417, column: 7)
!4704 = !DILocation(line: 417, column: 22, scope: !4703)
!4705 = !DILocation(line: 417, column: 7, scope: !4692)
!4706 = !DILocation(line: 418, column: 11, scope: !4703)
!4707 = !DILocation(line: 0, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 420, column: 7)
!4709 = !DILocation(line: 420, column: 9, scope: !4708)
!4710 = !DILocation(line: 418, column: 5, scope: !4703)
!4711 = !DILocation(line: 420, column: 21, scope: !4708)
!4712 = !DILocation(line: 420, column: 24, scope: !4708)
!4713 = !DILocation(line: 420, column: 36, scope: !4708)
!4714 = !DILocation(line: 420, column: 7, scope: !4692)
!4715 = !DILocation(line: 423, column: 7, scope: !4692)
!4716 = !DILocation(line: 423, column: 34, scope: !4692)
!4717 = !DILocation(line: 424, column: 38, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 424, column: 7)
!4719 = !DILocation(line: 424, column: 9, scope: !4718)
!4720 = !DILocation(line: 424, column: 7, scope: !4692)
!4721 = !DILocation(line: 427, column: 7, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 427, column: 7)
!4723 = !DILocation(line: 427, column: 7, scope: !4692)
!4724 = !DILocation(line: 428, column: 15, scope: !4722)
!4725 = !DILocation(line: 428, column: 5, scope: !4722)
!4726 = !DILocation(line: 430, column: 3, scope: !4692)
!4727 = !DILocation(line: 431, column: 3, scope: !4692)
!4728 = !DILocation(line: 432, column: 3, scope: !4692)
!4729 = !DILocation(line: 433, column: 3, scope: !4692)
!4730 = !DILocation(line: 435, column: 3, scope: !4692)
!4731 = !DILocation(line: 436, column: 1, scope: !4692)
!4732 = distinct !DISubprogram(name: "ei_start_1", scope: !186, file: !186, line: 696, type: !4733, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4735)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!3890, !3895}
!4735 = !{!4736, !4737}
!4736 = !DILocalVariable(name: "ev", arg: 1, scope: !4732, file: !186, line: 696, type: !3895)
!4737 = !DILocalVariable(name: "i", scope: !4732, file: !186, line: 698, type: !3890)
!4738 = !DILocation(line: 0, scope: !4732)
!4739 = !DILocation(line: 700, column: 5, scope: !4732)
!4740 = !DILocation(line: 700, column: 11, scope: !4732)
!4741 = !DILocation(line: 701, column: 5, scope: !4732)
!4742 = !DILocation(line: 701, column: 15, scope: !4732)
!4743 = !DILocation(line: 703, column: 3, scope: !4732)
!4744 = distinct !DISubprogram(name: "ei_cond", scope: !186, file: !186, line: 771, type: !4745, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4748)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!594, !3890, !4747}
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!4748 = !{!4749, !4750}
!4749 = !DILocalVariable(name: "ei", arg: 1, scope: !4744, file: !186, line: 771, type: !3890)
!4750 = !DILocalVariable(name: "p", arg: 2, scope: !4744, file: !186, line: 771, type: !4747)
!4751 = !DILocation(line: 0, scope: !4744)
!4752 = !DILocation(line: 773, column: 8, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4744, file: !186, line: 773, column: 7)
!4754 = !DILocation(line: 773, column: 7, scope: !4744)
!4755 = !DILocation(line: 775, column: 12, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4753, file: !186, line: 774, column: 5)
!4757 = !DILocation(line: 776, column: 7, scope: !4756)
!4758 = !DILocation(line: 781, column: 7, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4753, file: !186, line: 779, column: 5)
!4760 = !DILocation(line: 0, scope: !4753)
!4761 = !DILocation(line: 783, column: 1, scope: !4744)
!4762 = distinct !DISubprogram(name: "ei_next", scope: !186, file: !186, line: 736, type: !4763, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4766)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{null, !4765}
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!4766 = !{!4767}
!4767 = !DILocalVariable(name: "i", arg: 1, scope: !4762, file: !186, line: 736, type: !4765)
!4768 = !DILocation(line: 0, scope: !4762)
!4769 = !DILocation(line: 738, column: 3, scope: !4762)
!4770 = !DILocation(line: 739, column: 11, scope: !4762)
!4771 = !DILocation(line: 740, column: 1, scope: !4762)
!4772 = distinct !DISubprogram(name: "ei_end_p", scope: !186, file: !186, line: 721, type: !4773, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4775)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!594, !3890}
!4775 = !{!4776}
!4776 = !DILocalVariable(name: "i", arg: 1, scope: !4772, file: !186, line: 721, type: !3890)
!4777 = !DILocation(line: 723, column: 22, scope: !4772)
!4778 = !DILocation(line: 723, column: 19, scope: !4772)
!4779 = !DILocation(line: 723, column: 10, scope: !4772)
!4780 = !DILocation(line: 723, column: 3, scope: !4772)
!4781 = distinct !DISubprogram(name: "ei_edge", scope: !186, file: !186, line: 752, type: !4782, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!1172, !3890}
!4784 = !{!4785}
!4785 = !DILocalVariable(name: "i", arg: 1, scope: !4781, file: !186, line: 752, type: !3890)
!4786 = !DILocation(line: 754, column: 10, scope: !4781)
!4787 = !DILocation(line: 754, column: 3, scope: !4781)
!4788 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !186, file: !186, line: 150, type: !4789, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!7, !4791}
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!4793 = !{!4794}
!4794 = !DILocalVariable(name: "vec_", arg: 1, scope: !4788, file: !186, line: 150, type: !4791)
!4795 = !DILocation(line: 0, scope: !4788)
!4796 = !DILocation(line: 150, column: 1, scope: !4788)
!4797 = distinct !DISubprogram(name: "ei_container", scope: !186, file: !186, line: 685, type: !4798, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4800)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!1160, !3890}
!4800 = !{!4801}
!4801 = !DILocalVariable(name: "i", arg: 1, scope: !4797, file: !186, line: 685, type: !3890)
!4802 = !DILocation(line: 687, column: 3, scope: !4797)
!4803 = !DILocation(line: 688, column: 10, scope: !4797)
!4804 = !DILocation(line: 688, column: 3, scope: !4797)
!4805 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !186, file: !186, line: 150, type: !4806, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4808)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!1172, !4791, !7}
!4808 = !{!4809, !4810}
!4809 = !DILocalVariable(name: "vec_", arg: 1, scope: !4805, file: !186, line: 150, type: !4791)
!4810 = !DILocalVariable(name: "ix_", arg: 2, scope: !4805, file: !186, line: 150, type: !7)
!4811 = !DILocation(line: 0, scope: !4805)
!4812 = !DILocation(line: 150, column: 1, scope: !4805)
