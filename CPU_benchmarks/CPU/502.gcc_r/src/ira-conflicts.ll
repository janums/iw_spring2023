; ModuleID = 'ira-conflicts.bc'
source_filename = "ira-conflicts.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
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
%struct.ira_allocno = type { i32, i32, i32, i32, %struct.rtx_def*, %struct.ira_allocno*, %struct.ira_loop_tree_node*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ira_allocno_copy*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno_live_range*, i32, i32, i8*, i32, i32, i64, i64, i32, i32, i32, i16, %struct.ira_allocno*, i32*, i32*, i32*, i32*, i32, i32, %struct.ira_allocno*, %struct.ira_allocno*, i32 }
%struct.ira_allocno_copy = type { i32, %struct.ira_allocno*, %struct.ira_allocno*, i32, i8, %struct.rtx_def*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_loop_tree_node* }
%struct.ira_allocno_live_range = type { %struct.ira_allocno*, i32, i32, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.ira_allocno_iterator = type { i32 }
%struct.ira_allocno_conflict_iterator = type { i8, i8*, i32, i32, i32, i32, i64 }
%struct.reg_attrs = type { %union.tree_node*, i64 }
%struct.sparseset_def = type { i32*, i32*, i32, i32, i32, i8, i8, [2 x i32] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.ira_copy_iterator = type { i32 }
%struct.ira_allocno_set_iterator = type { i64*, i32, i32, i32, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@ira_conflicts_p = external dso_local local_unnamed_addr global i8, align 1
@ira_loop_tree_root = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@flag_ira_region = external dso_local local_unnamed_addr global i32, align 4
@conflicts = internal unnamed_addr global i64** null, align 8, !dbg !0
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@ira_no_alloc_regs = external dso_local local_unnamed_addr global i64, align 8
@call_used_reg_set = external dso_local local_unnamed_addr global i64, align 8
@flag_caller_saves = external dso_local local_unnamed_addr global i32, align 4
@optimize = external dso_local local_unnamed_addr global i32, align 4
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@no_caller_save_reg_set = external dso_local local_unnamed_addr global i64, align 8
@internal_flag_ira_verbose = external dso_local local_unnamed_addr global i32, align 4
@ira_dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c";; r%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c";; a%d(r%d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"b%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"l%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" conflicts:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" r%d,\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" a%d(r%d,\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"b%d)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"l%d)\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\0A;;     total conflict hard regs:\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c";;     conflict hard regs:\00", align 1
@ira_conflict_id_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" %d-%d\00", align 1
@ira_allocnos_num = external dso_local local_unnamed_addr global i32, align 4
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.14 = private unnamed_addr constant [58 x i8] c"+++Conflict table will be too big(>%dMB) -- don't use it\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"+++Allocating %ld bytes for conflict table (uncompressed size %ld)\0A\00", align 1
@ira_max_point = external dso_local local_unnamed_addr global i32, align 4
@ira_start_point_ranges = external dso_local local_unnamed_addr global %struct.ira_allocno_live_range**, align 8
@ira_allocnos = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@ira_reg_classes_intersect_p = external dso_local local_unnamed_addr global [27 x [27 x i8]], align 16
@ira_finish_point_ranges = external dso_local local_unnamed_addr global %struct.ira_allocno_live_range**, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@collected_conflict_allocnos = internal unnamed_addr global %struct.ira_allocno** null, align 8, !dbg !1807
@ira_regno_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@recog_data = external dso_local local_unnamed_addr global %struct.recog_data, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"ira-conflicts.c\00", align 1
@ira_curr_regno_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@ira_curr_loop_tree_node = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@regclass_map = external dso_local local_unnamed_addr constant [53 x i32], align 16
@reg_class_size = external dso_local local_unnamed_addr global [27 x i32], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@ira_class_hard_reg_index = external dso_local local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_register_move_cost = external dso_local local_unnamed_addr global [87 x [27 x i16]*], align 16
@ira_class_hard_regs_num = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_copies_num = external dso_local local_unnamed_addr global i32, align 4
@ira_copies = external dso_local local_unnamed_addr global %struct.ira_allocno_copy**, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1813 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1826, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1827, metadata !DIExpression()), !dbg !1828
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1829
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1830
  ret i32 %call, !dbg !1831
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1832 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1836
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1837
  ret i32 %call, !dbg !1838
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1839 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1893, metadata !DIExpression()), !dbg !1894
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1895
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1895
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1895
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1895
  %cmp = icmp uge i8* %0, %1, !dbg !1895
  %conv1 = zext i1 %cmp to i64, !dbg !1895
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1895
  %tobool = icmp eq i64 %expval, 0, !dbg !1895
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1895

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1895
  br label %cond.end, !dbg !1895

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1895
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1895
  %2 = load i8, i8* %0, align 1, !dbg !1895
  %conv3 = zext i8 %2 to i32, !dbg !1895
  br label %cond.end, !dbg !1895

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1895
  ret i32 %cond, !dbg !1896
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1897 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1899, metadata !DIExpression()), !dbg !1900
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1901
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1901
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1901
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1901
  %cmp = icmp uge i8* %0, %1, !dbg !1901
  %conv1 = zext i1 %cmp to i64, !dbg !1901
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1901
  %tobool = icmp eq i64 %expval, 0, !dbg !1901
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1901

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1901
  br label %cond.end, !dbg !1901

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1901
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1901
  %2 = load i8, i8* %0, align 1, !dbg !1901
  %conv3 = zext i8 %2 to i32, !dbg !1901
  br label %cond.end, !dbg !1901

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1901
  ret i32 %cond, !dbg !1902
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1903 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1904
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1904
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1904
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1904
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1904
  %cmp = icmp uge i8* %1, %2, !dbg !1904
  %conv1 = zext i1 %cmp to i64, !dbg !1904
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1904
  %tobool = icmp eq i64 %expval, 0, !dbg !1904
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1904

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1904
  br label %cond.end, !dbg !1904

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1904
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1904
  %3 = load i8, i8* %1, align 1, !dbg !1904
  %conv3 = zext i8 %3 to i32, !dbg !1904
  br label %cond.end, !dbg !1904

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1904
  ret i32 %cond, !dbg !1905
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1910, metadata !DIExpression()), !dbg !1911
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1912
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1913
  ret i32 %call, !dbg !1914
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1915 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1919, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1920, metadata !DIExpression()), !dbg !1921
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1922
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1922
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1922
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1922
  %cmp = icmp uge i8* %0, %1, !dbg !1922
  %conv1 = zext i1 %cmp to i64, !dbg !1922
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1922
  %tobool = icmp eq i64 %expval, 0, !dbg !1922
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1922

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1922
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1922
  br label %cond.end, !dbg !1922

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1922
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1922
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1922
  store i8 %conv2, i8* %0, align 1, !dbg !1922
  %conv6 = and i32 %__c, 255, !dbg !1922
  br label %cond.end, !dbg !1922

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1922
  ret i32 %cond, !dbg !1923
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1924 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1926, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1927, metadata !DIExpression()), !dbg !1928
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1929
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1929
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1929
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1929
  %cmp = icmp uge i8* %0, %1, !dbg !1929
  %conv1 = zext i1 %cmp to i64, !dbg !1929
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1929
  %tobool = icmp eq i64 %expval, 0, !dbg !1929
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1929

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1929
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1929
  br label %cond.end, !dbg !1929

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1929
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1929
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1929
  store i8 %conv2, i8* %0, align 1, !dbg !1929
  %conv6 = and i32 %__c, 255, !dbg !1929
  br label %cond.end, !dbg !1929

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1929
  ret i32 %cond, !dbg !1930
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1931 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1933, metadata !DIExpression()), !dbg !1934
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1935
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1935
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1935
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1935
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1935
  %cmp = icmp uge i8* %1, %2, !dbg !1935
  %conv1 = zext i1 %cmp to i64, !dbg !1935
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1935
  %tobool = icmp eq i64 %expval, 0, !dbg !1935
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1935

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1935
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1935
  br label %cond.end, !dbg !1935

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1935
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1935
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1935
  store i8 %conv4, i8* %1, align 1, !dbg !1935
  %conv6 = and i32 %__c, 255, !dbg !1935
  br label %cond.end, !dbg !1935

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1935
  ret i32 %cond, !dbg !1936
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1937 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1943, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1944, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1945, metadata !DIExpression()), !dbg !1946
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1947
  ret i64 %call, !dbg !1948
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1949 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1951, metadata !DIExpression()), !dbg !1952
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1953
  %0 = load i32, i32* %_flags, align 8, !dbg !1953
  %and = lshr i32 %0, 4, !dbg !1953
  %and.lobit = and i32 %and, 1, !dbg !1953
  ret i32 %and.lobit, !dbg !1954
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1955 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1957, metadata !DIExpression()), !dbg !1958
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1959
  %0 = load i32, i32* %_flags, align 8, !dbg !1959
  %and = lshr i32 %0, 5, !dbg !1959
  %and.lobit = and i32 %and, 1, !dbg !1959
  ret i32 %and.lobit, !dbg !1960
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1961 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1964, metadata !DIExpression()), !dbg !1965
  %__c.off = add i32 %__c, 128, !dbg !1966
  %0 = icmp ult i32 %__c.off, 384, !dbg !1966
  br i1 %0, label %cond.true, label %cond.end, !dbg !1966

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1967
  %1 = load i32*, i32** %call, align 8, !dbg !1968
  %idxprom = sext i32 %__c to i64, !dbg !1969
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1969
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1969
  br label %cond.end, !dbg !1970

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1970
  ret i32 %cond, !dbg !1971
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1972 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1974, metadata !DIExpression()), !dbg !1975
  %__c.off = add i32 %__c, 128, !dbg !1976
  %0 = icmp ult i32 %__c.off, 384, !dbg !1976
  br i1 %0, label %cond.true, label %cond.end, !dbg !1976

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1977
  %1 = load i32*, i32** %call, align 8, !dbg !1978
  %idxprom = sext i32 %__c to i64, !dbg !1979
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1979
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1979
  br label %cond.end, !dbg !1980

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1980
  ret i32 %cond, !dbg !1981
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1982 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1987, metadata !DIExpression()), !dbg !1988
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1989
  %conv = trunc i64 %call to i32, !dbg !1990
  ret i32 %conv, !dbg !1991
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1992 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1996, metadata !DIExpression()), !dbg !1997
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1998
  ret i64 %call, !dbg !1999
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2005, metadata !DIExpression()), !dbg !2006
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2007
  ret i64 %call, !dbg !2008
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2009 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2015, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2016, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2017, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2018, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2019, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2021, metadata !DIExpression()), !dbg !2025
  br label %while.cond, !dbg !2026

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2027
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2020, metadata !DIExpression()), !dbg !2025
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2028
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2026

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2029
  %div = lshr i64 %add, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %div, metadata !2022, metadata !DIExpression()), !dbg !2025
  %mul = mul i64 %div, %__size, !dbg !2032
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2033
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2023, metadata !DIExpression()), !dbg !2025
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %call, metadata !2024, metadata !DIExpression()), !dbg !2025
  %cmp1 = icmp slt i32 %call, 0, !dbg !2035
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2037

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2038
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2040

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2020, metadata !DIExpression()), !dbg !2025
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2025
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2020, metadata !DIExpression()), !dbg !2025
  br label %while.cond, !dbg !2026, !llvm.loop !2042

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2025
  ret i8* %retval.0, !dbg !2044
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2045 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2051, metadata !DIExpression()), !dbg !2052
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2053
  ret double %call, !dbg !2054
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2064, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2065, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %base, metadata !2066, metadata !DIExpression()), !dbg !2067
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2068
  ret i64 %call, !dbg !2069
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2070 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2076, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2077, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %base, metadata !2078, metadata !DIExpression()), !dbg !2079
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2080
  ret i64 %call, !dbg !2081
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2082 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 %base, metadata !2095, metadata !DIExpression()), !dbg !2096
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2097
  ret i64 %call, !dbg !2098
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2104, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %base, metadata !2105, metadata !DIExpression()), !dbg !2106
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2107
  ret i64 %call, !dbg !2108
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2109 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2149, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2150, metadata !DIExpression()), !dbg !2151
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2152
  ret i32 %call, !dbg !2153
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2157, metadata !DIExpression()), !dbg !2158
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2159
  ret i32 %call, !dbg !2160
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2161 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2165, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2166, metadata !DIExpression()), !dbg !2167
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2168
  ret i32 %call, !dbg !2169
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2174, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2176, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2177, metadata !DIExpression()), !dbg !2178
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2179
  ret i32 %call, !dbg !2180
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2181 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2185, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2187, metadata !DIExpression()), !dbg !2188
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2187, metadata !DIExpression(DW_OP_deref)), !dbg !2188
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2189
  ret i32 %call, !dbg !2190
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2191 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2198, metadata !DIExpression(DW_OP_deref)), !dbg !2199
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2200
  ret i32 %call, !dbg !2201
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2227, metadata !DIExpression()), !dbg !2228
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2229
  ret i32 %call, !dbg !2230
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2231 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2234, metadata !DIExpression()), !dbg !2235
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2236
  ret i32 %call, !dbg !2237
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2243, metadata !DIExpression()), !dbg !2244
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2245
  ret i32 %call, !dbg !2246
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2252, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2253, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2254, metadata !DIExpression()), !dbg !2255
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2256
  ret i32 %call, !dbg !2257
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ira_debug_conflicts(i8 zeroext %reg_p) local_unnamed_addr #5 !dbg !2258 {
entry:
  call void @llvm.dbg.value(metadata i8 %reg_p, metadata !2262, metadata !DIExpression()), !dbg !2263
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2264
  tail call fastcc void @print_conflicts(%struct._IO_FILE* %0, i8 zeroext %reg_p) #7, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_conflicts(%struct._IO_FILE* %file, i8 zeroext %reg_p) unnamed_addr #5 !dbg !2267 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %conflict_a = alloca %struct.ira_allocno*, align 8
  %aci = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2271, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 %reg_p, metadata !2272, metadata !DIExpression()), !dbg !2296
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2297
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2298
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2298
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2274, metadata !DIExpression(DW_OP_deref)), !dbg !2296
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2299
  %2 = bitcast %struct.ira_allocno** %conflict_a to i8*, !dbg !2300
  %3 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %aci, i64 0, i32 0, !dbg !2300
  %tobool1 = icmp eq i8 %reg_p, 0, !dbg !2301
  br label %for.cond, !dbg !2299

for.cond:                                         ; preds = %if.end42, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2273, metadata !DIExpression(DW_OP_deref)), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2274, metadata !DIExpression(DW_OP_deref)), !dbg !2296
  %call = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2303
  %tobool = icmp eq i8 %call, 0, !dbg !2299
  br i1 %tobool, label %for.end50, label %for.body, !dbg !2299

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2304
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #8, !dbg !2305
  %4 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %4, metadata !2273, metadata !DIExpression()), !dbg !2296
  br i1 %tobool1, label %if.else, label %if.then, !dbg !2306

if.then:                                          ; preds = %for.body
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 1, !dbg !2307
  %5 = load i32, i32* %regno, align 4, !dbg !2307
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5) #6, !dbg !2308
  br label %if.end13, !dbg !2308

if.else:                                          ; preds = %for.body
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 0, !dbg !2309
  %6 = load i32, i32* %num, align 8, !dbg !2309
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %4, metadata !2273, metadata !DIExpression()), !dbg !2296
  %regno3 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 1, !dbg !2311
  %7 = load i32, i32* %regno3, align 4, !dbg !2311
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7) #6, !dbg !2312
  %8 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2313
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %8, metadata !2273, metadata !DIExpression()), !dbg !2296
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %8, i64 0, i32 6, !dbg !2313
  %9 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !2313
  %bb5 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %9, i64 0, i32 0, !dbg !2315
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb5, align 8, !dbg !2315
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %10, metadata !2295, metadata !DIExpression()), !dbg !2300
  %cmp = icmp eq %struct.basic_block_def* %10, null, !dbg !2316
  br i1 %cmp, label %if.else8, label %if.then6, !dbg !2317

if.then6:                                         ; preds = %if.else
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !2318
  %11 = load i32, i32* %index, align 8, !dbg !2318
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %11) #6, !dbg !2319
  br label %if.end, !dbg !2319

if.else8:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %8, metadata !2273, metadata !DIExpression()), !dbg !2296
  %loop = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %9, i64 0, i32 1, !dbg !2320
  %12 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2320
  %num10 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !2321
  %13 = load i32, i32* %num10, align 8, !dbg !2321
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %13) #6, !dbg !2322
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %call12 = call i32 @putc(i32 41, %struct._IO_FILE* %file) #6, !dbg !2323
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2324
  %14 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2325
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %14, metadata !2273, metadata !DIExpression()), !dbg !2296
  %conflict_allocno_array = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %14, i64 0, i32 23, !dbg !2325
  %15 = load i8*, i8** %conflict_allocno_array, align 8, !dbg !2325
  %cmp15 = icmp eq i8* %15, null, !dbg !2327
  br i1 %cmp15, label %if.end42, label %if.then16, !dbg !2328

if.then16:                                        ; preds = %if.end13
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %14, metadata !2273, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %aci, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  call fastcc void @ira_allocno_conflict_iter_init(%struct.ira_allocno_conflict_iterator* nonnull %aci, %struct.ira_allocno* %14) #7, !dbg !2329
  br i1 %tobool1, label %if.then16.split.us, label %if.then16.if.then16.split_crit_edge, !dbg !2329

if.then16.if.then16.split_crit_edge:              ; preds = %if.then16
  br label %for.cond17, !dbg !2329

if.then16.split.us:                               ; preds = %if.then16
  br label %for.cond17.us, !dbg !2329

for.cond17.us:                                    ; preds = %for.inc.us, %if.then16.split.us
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %conflict_a, metadata !2280, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %aci, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  %call18.us = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(%struct.ira_allocno_conflict_iterator* nonnull %aci, %struct.ira_allocno** nonnull %conflict_a) #7, !dbg !2331
  %tobool19.us = icmp eq i8 %call18.us, 0, !dbg !2329
  br i1 %tobool19.us, label %if.end42.loopexit.us-lcssa.us, label %for.body20.us, !dbg !2329

for.body20.us:                                    ; preds = %for.cond17.us
  call void @llvm.dbg.value(metadata %struct.ira_allocno* undef, metadata !2280, metadata !DIExpression()), !dbg !2300
  %16 = load %struct.ira_allocno*, %struct.ira_allocno** %conflict_a, align 8, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %16, metadata !2280, metadata !DIExpression()), !dbg !2300
  %num26.us = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %16, i64 0, i32 0, !dbg !2336
  %17 = load i32, i32* %num26.us, align 8, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %16, metadata !2280, metadata !DIExpression()), !dbg !2300
  %regno27.us = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %16, i64 0, i32 1, !dbg !2338
  %18 = load i32, i32* %regno27.us, align 4, !dbg !2338
  %call28.us = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %17, i32 %18) #6, !dbg !2339
  %19 = load %struct.ira_allocno*, %struct.ira_allocno** %conflict_a, align 8, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %19, metadata !2280, metadata !DIExpression()), !dbg !2300
  %loop_tree_node29.us = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %19, i64 0, i32 6, !dbg !2340
  %20 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node29.us, align 8, !dbg !2340
  %bb30.us = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %20, i64 0, i32 0, !dbg !2342
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30.us, align 8, !dbg !2342
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %21, metadata !2295, metadata !DIExpression()), !dbg !2300
  %cmp31.us = icmp eq %struct.basic_block_def* %21, null, !dbg !2343
  br i1 %cmp31.us, label %if.else35.us, label %if.then32.us, !dbg !2344

if.then32.us:                                     ; preds = %for.body20.us
  %index33.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 9, !dbg !2345
  %22 = load i32, i32* %index33.us, align 8, !dbg !2345
  %call34.us = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %22) #6, !dbg !2346
  br label %for.inc.us, !dbg !2346

if.else35.us:                                     ; preds = %for.body20.us
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %19, metadata !2280, metadata !DIExpression()), !dbg !2300
  %loop37.us = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %20, i64 0, i32 1, !dbg !2347
  %23 = load %struct.loop*, %struct.loop** %loop37.us, align 8, !dbg !2347
  %num38.us = getelementptr inbounds %struct.loop, %struct.loop* %23, i64 0, i32 0, !dbg !2348
  %24 = load i32, i32* %num38.us, align 8, !dbg !2348
  %call39.us = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %24) #6, !dbg !2349
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.else35.us, %if.then32.us
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %aci, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  call fastcc void @ira_allocno_conflict_iter_next(%struct.ira_allocno_conflict_iterator* nonnull %aci) #7, !dbg !2331
  br label %for.cond17.us, !dbg !2331, !llvm.loop !2350

if.end42.loopexit.us-lcssa.us:                    ; preds = %for.cond17.us
  br label %if.end42.loopexit, !dbg !2352

for.cond17:                                       ; preds = %for.body20, %if.then16.if.then16.split_crit_edge
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %conflict_a, metadata !2280, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %aci, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  %call18 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(%struct.ira_allocno_conflict_iterator* nonnull %aci, %struct.ira_allocno** nonnull %conflict_a) #7, !dbg !2331
  %tobool19 = icmp eq i8 %call18, 0, !dbg !2329
  br i1 %tobool19, label %if.end42.loopexit.us-lcssa, label %for.body20, !dbg !2329

for.body20:                                       ; preds = %for.cond17
  call void @llvm.dbg.value(metadata %struct.ira_allocno* undef, metadata !2280, metadata !DIExpression()), !dbg !2300
  %25 = load %struct.ira_allocno*, %struct.ira_allocno** %conflict_a, align 8, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %25, metadata !2280, metadata !DIExpression()), !dbg !2300
  %regno23 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %25, i64 0, i32 1, !dbg !2353
  %26 = load i32, i32* %regno23, align 4, !dbg !2353
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %26) #6, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %aci, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  call fastcc void @ira_allocno_conflict_iter_next(%struct.ira_allocno_conflict_iterator* nonnull %aci) #7, !dbg !2331
  br label %for.cond17, !dbg !2331, !llvm.loop !2350

if.end42.loopexit.us-lcssa:                       ; preds = %for.cond17
  br label %if.end42.loopexit, !dbg !2352

if.end42.loopexit:                                ; preds = %if.end42.loopexit.us-lcssa.us, %if.end42.loopexit.us-lcssa
  %.pre = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2352
  br label %if.end42, !dbg !2352

if.end42:                                         ; preds = %if.end42.loopexit, %if.end13
  %27 = phi %struct.ira_allocno* [ %.pre, %if.end42.loopexit ], [ %14, %if.end13 ], !dbg !2352
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %27, metadata !2273, metadata !DIExpression()), !dbg !2296
  %total_conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %27, i64 0, i32 27, !dbg !2352
  %28 = load i64, i64* %total_conflict_hard_regs, align 8, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %28, metadata !2279, metadata !DIExpression()), !dbg !2296
  %29 = load i64, i64* @ira_no_alloc_regs, align 8, !dbg !2355
  %neg = xor i64 %29, -1, !dbg !2355
  %and = and i64 %28, %neg, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %and, metadata !2279, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %27, metadata !2273, metadata !DIExpression()), !dbg !2296
  %cover_class = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %27, i64 0, i32 9, !dbg !2356
  %30 = load i32, i32* %cover_class, align 8, !dbg !2356
  %idxprom = zext i32 %30 to i64, !dbg !2356
  %arrayidx = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom, !dbg !2356
  %31 = load i64, i64* %arrayidx, align 8, !dbg !2356
  %and43 = and i64 %and, %31, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %and43, metadata !2279, metadata !DIExpression()), !dbg !2296
  call fastcc void @print_hard_reg_set(%struct._IO_FILE* %file, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %and43) #7, !dbg !2357
  %32 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %32, metadata !2273, metadata !DIExpression()), !dbg !2296
  %conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %32, i64 0, i32 26, !dbg !2358
  %33 = load i64, i64* %conflict_hard_regs, align 8, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %33, metadata !2279, metadata !DIExpression()), !dbg !2296
  %34 = load i64, i64* @ira_no_alloc_regs, align 8, !dbg !2359
  %neg44 = xor i64 %34, -1, !dbg !2359
  %and45 = and i64 %33, %neg44, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %and45, metadata !2279, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %32, metadata !2273, metadata !DIExpression()), !dbg !2296
  %cover_class46 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %32, i64 0, i32 9, !dbg !2360
  %35 = load i32, i32* %cover_class46, align 8, !dbg !2360
  %idxprom47 = zext i32 %35 to i64, !dbg !2360
  %arrayidx48 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom47, !dbg !2360
  %36 = load i64, i64* %arrayidx48, align 8, !dbg !2360
  %and49 = and i64 %and45, %36, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %and49, metadata !2279, metadata !DIExpression()), !dbg !2296
  call fastcc void @print_hard_reg_set(%struct._IO_FILE* %file, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 %and49) #7, !dbg !2361
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #8, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2362
  br label %for.cond, !dbg !2303, !llvm.loop !2363

for.end50:                                        ; preds = %for.cond
  %call51 = call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !2365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2366
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2366
  ret void, !dbg !2366
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_build_conflicts() local_unnamed_addr #5 !dbg !2367 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !2379
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2379
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2380
  %2 = load i8, i8* @ira_conflicts_p, align 1, !dbg !2381
  %tobool = icmp eq i8 %2, 0, !dbg !2381
  br i1 %tobool, label %if.end14, label %if.then, !dbg !2383

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @build_conflict_bit_table() #7, !dbg !2384
  store i8 %call, i8* @ira_conflicts_p, align 1, !dbg !2386
  %tobool1 = icmp eq i8 %call, 0, !dbg !2387
  br i1 %tobool1, label %if.end14, label %if.then2, !dbg !2389

if.then2:                                         ; preds = %if.then
  tail call fastcc void @build_conflicts() #7, !dbg !2390
  %3 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !2392
  tail call void @ira_traverse_loop_tree(i8 zeroext 1, %struct.ira_loop_tree_node* %3, void (%struct.ira_loop_tree_node*)* null, void (%struct.ira_loop_tree_node*)* nonnull @add_copies) #6, !dbg !2393
  %4 = load i32, i32* @flag_ira_region, align 4, !dbg !2394
  %5 = add i32 %4, -1, !dbg !2396
  %6 = icmp ult i32 %5, 2, !dbg !2396
  br i1 %6, label %if.then4, label %if.end, !dbg !2396

if.then4:                                         ; preds = %if.then2
  tail call fastcc void @propagate_copies() #7, !dbg !2397
  br label %if.end, !dbg !2397

if.end:                                           ; preds = %if.then2, %if.then4
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2399
  br label %for.cond, !dbg !2399

for.cond:                                         ; preds = %if.end12, %if.end
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  %call5 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2401
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2399
  br i1 %tobool6, label %for.end, label %for.body, !dbg !2399

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2403
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %7, metadata !2371, metadata !DIExpression()), !dbg !2398
  %conflict_allocno_array = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %7, i64 0, i32 23, !dbg !2403
  %8 = load i8*, i8** %conflict_allocno_array, align 8, !dbg !2403
  %9 = load i64**, i64*** @conflicts, align 8, !dbg !2406
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %7, metadata !2371, metadata !DIExpression()), !dbg !2398
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %7, i64 0, i32 0, !dbg !2407
  %10 = load i32, i32* %num, align 8, !dbg !2407
  %idxprom = sext i32 %10 to i64, !dbg !2406
  %arrayidx = getelementptr inbounds i64*, i64** %9, i64 %idxprom, !dbg !2406
  %11 = bitcast i64** %arrayidx to i8**, !dbg !2406
  %12 = load i8*, i8** %11, align 8, !dbg !2406
  %cmp7 = icmp eq i8* %8, %12, !dbg !2408
  br i1 %cmp7, label %if.end12, label %if.then8, !dbg !2409

if.then8:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %7, metadata !2371, metadata !DIExpression()), !dbg !2398
  call void @ira_free(i8* %12) #6, !dbg !2410
  br label %if.end12, !dbg !2410

if.end12:                                         ; preds = %for.body, %if.then8
  br label %for.cond, !dbg !2401, !llvm.loop !2411

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** bitcast (i64*** @conflicts to i8**), align 8, !dbg !2413
  call void @ira_free(i8* %13) #6, !dbg !2414
  br label %if.end14, !dbg !2415

if.end14:                                         ; preds = %if.then, %entry, %for.end
  %call15 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call18 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call21 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call24 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call27 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call30 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call33 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call36 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call39 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  %call42 = call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !2416
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2418
  br label %for.cond50, !dbg !2418

for.cond50:                                       ; preds = %if.end94, %if.end14
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  %call51 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2419
  %tobool52 = icmp eq i8 %call51, 0, !dbg !2418
  br i1 %tobool52, label %for.end95, label %for.body53, !dbg !2418

for.body53:                                       ; preds = %for.cond50
  %14 = load i32, i32* @flag_caller_saves, align 4, !dbg !2420
  %tobool54 = icmp eq i32 %14, 0, !dbg !2420
  br i1 %tobool54, label %land.lhs.true, label %lor.lhs.false56, !dbg !2422

land.lhs.true:                                    ; preds = %for.body53
  %15 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2423
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %15, metadata !2371, metadata !DIExpression()), !dbg !2398
  %calls_crossed_num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %15, i64 0, i32 30, !dbg !2423
  %16 = load i32, i32* %calls_crossed_num, align 8, !dbg !2423
  %cmp55 = icmp eq i32 %16, 0, !dbg !2424
  br i1 %cmp55, label %lor.lhs.false56, label %if.then79, !dbg !2425

lor.lhs.false56:                                  ; preds = %land.lhs.true, %for.body53
  %17 = load i32, i32* @optimize, align 4, !dbg !2426
  %cmp57 = icmp eq i32 %17, 0, !dbg !2427
  br i1 %cmp57, label %land.lhs.true58, label %lor.lhs.false56.if.else81_crit_edge, !dbg !2428

lor.lhs.false56.if.else81_crit_edge:              ; preds = %lor.lhs.false56
  %.pre = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2429
  br label %if.else81, !dbg !2428

land.lhs.true58:                                  ; preds = %lor.lhs.false56
  %18 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2431
  %19 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2431
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %19, metadata !2371, metadata !DIExpression()), !dbg !2398
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %19, i64 0, i32 1, !dbg !2431
  %20 = load i32, i32* %regno, align 4, !dbg !2431
  %idxprom59 = sext i32 %20 to i64, !dbg !2431
  %arrayidx60 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %18, i64 %idxprom59, !dbg !2431
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx60, align 8, !dbg !2431
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2431
  %rt_reg = bitcast %union.rtunion_def* %22 to %struct.reg_attrs**, !dbg !2431
  %23 = load %struct.reg_attrs*, %struct.reg_attrs** %rt_reg, align 8, !dbg !2431
  call void @llvm.dbg.value(metadata %struct.reg_attrs* %23, metadata !2374, metadata !DIExpression()), !dbg !2432
  %cmp62 = icmp eq %struct.reg_attrs* %23, null, !dbg !2433
  br i1 %cmp62, label %if.else81, label %land.lhs.true63, !dbg !2434

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %decl64 = getelementptr inbounds %struct.reg_attrs, %struct.reg_attrs* %23, i64 0, i32 0, !dbg !2435
  %24 = load %union.tree_node*, %union.tree_node** %decl64, align 8, !dbg !2435
  call void @llvm.dbg.value(metadata %union.tree_node* %24, metadata !2378, metadata !DIExpression()), !dbg !2432
  %cmp65 = icmp eq %union.tree_node* %24, null, !dbg !2436
  br i1 %cmp65, label %if.else81, label %land.lhs.true66, !dbg !2437

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2438
  %bf.load = load i64, i64* %25, align 8, !dbg !2438
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !2438
  %cmp67 = icmp eq i64 %bf.cast3, 32, !dbg !2438
  br i1 %cmp67, label %land.lhs.true74, label %lor.lhs.false68, !dbg !2438

lor.lhs.false68:                                  ; preds = %land.lhs.true66
  %cmp73 = icmp eq i64 %bf.cast3, 29, !dbg !2438
  br i1 %cmp73, label %land.lhs.true74, label %if.else81, !dbg !2439

land.lhs.true74:                                  ; preds = %lor.lhs.false68, %land.lhs.true66
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2440
  %26 = bitcast i40* %artificial_flag to i64*, !dbg !2440
  %bf.load75 = load i64, i64* %26, align 8, !dbg !2440
  %bf.cast775 = and i64 %bf.load75, 4096, !dbg !2440
  %tobool78 = icmp eq i64 %bf.cast775, 0, !dbg !2440
  br i1 %tobool78, label %if.then79, label %if.else81, !dbg !2441

if.then79:                                        ; preds = %land.lhs.true74, %land.lhs.true
  %27 = phi %struct.ira_allocno* [ %19, %land.lhs.true74 ], [ %15, %land.lhs.true ], !dbg !2442
  %28 = load i64, i64* @call_used_reg_set, align 8, !dbg !2442
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %27, metadata !2371, metadata !DIExpression()), !dbg !2398
  %total_conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %27, i64 0, i32 27, !dbg !2442
  %29 = load i64, i64* %total_conflict_hard_regs, align 8, !dbg !2442
  %or = or i64 %29, %28, !dbg !2442
  store i64 %or, i64* %total_conflict_hard_regs, align 8, !dbg !2442
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %27, metadata !2371, metadata !DIExpression()), !dbg !2398
  %conflict_hard_regs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %27, i64 0, i32 26, !dbg !2444
  %30 = load i64, i64* %conflict_hard_regs, align 8, !dbg !2444
  %or80 = or i64 %30, %28, !dbg !2444
  store i64 %or80, i64* %conflict_hard_regs, align 8, !dbg !2444
  br label %if.end94, !dbg !2445

if.else81:                                        ; preds = %lor.lhs.false56.if.else81_crit_edge, %land.lhs.true74, %land.lhs.true63, %land.lhs.true58, %lor.lhs.false68
  %31 = phi %struct.ira_allocno* [ %.pre, %lor.lhs.false56.if.else81_crit_edge ], [ %19, %land.lhs.true74 ], [ %19, %land.lhs.true63 ], [ %19, %land.lhs.true58 ], [ %19, %lor.lhs.false68 ], !dbg !2429
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %31, metadata !2371, metadata !DIExpression()), !dbg !2398
  %calls_crossed_num82 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %31, i64 0, i32 30, !dbg !2429
  %32 = load i32, i32* %calls_crossed_num82, align 8, !dbg !2429
  %cmp83 = icmp eq i32 %32, 0, !dbg !2446
  br i1 %cmp83, label %if.end94, label %if.then84, !dbg !2447

if.then84:                                        ; preds = %if.else81
  %33 = load i64, i64* @no_caller_save_reg_set, align 8, !dbg !2448
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %31, metadata !2371, metadata !DIExpression()), !dbg !2398
  %total_conflict_hard_regs85 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %31, i64 0, i32 27, !dbg !2448
  %34 = load i64, i64* %total_conflict_hard_regs85, align 8, !dbg !2448
  %or86 = or i64 %34, %33, !dbg !2448
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %31, metadata !2371, metadata !DIExpression()), !dbg !2398
  store i64 %or86, i64* %total_conflict_hard_regs85, align 8, !dbg !2450
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %31, metadata !2371, metadata !DIExpression()), !dbg !2398
  %conflict_hard_regs89 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %31, i64 0, i32 26, !dbg !2451
  %35 = load i64, i64* %conflict_hard_regs89, align 8, !dbg !2451
  %or90 = or i64 %35, %33, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %31, metadata !2371, metadata !DIExpression()), !dbg !2398
  store i64 %or90, i64* %conflict_hard_regs89, align 8, !dbg !2452
  br label %if.end94, !dbg !2453

if.end94:                                         ; preds = %if.else81, %if.then84, %if.then79
  br label %for.cond50, !dbg !2419, !llvm.loop !2454

for.end95:                                        ; preds = %for.cond50
  %36 = load i32, i32* @optimize, align 4, !dbg !2456
  %tobool96 = icmp eq i32 %36, 0, !dbg !2456
  br i1 %tobool96, label %if.end106, label %land.lhs.true97, !dbg !2458

land.lhs.true97:                                  ; preds = %for.end95
  %37 = load i8, i8* @ira_conflicts_p, align 1, !dbg !2459
  %tobool98 = icmp ne i8 %37, 0, !dbg !2459
  %38 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2460
  %cmp100 = icmp sgt i32 %38, 2, !dbg !2461
  %or.cond1 = and i1 %tobool98, %cmp100, !dbg !2462
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2463
  %cmp103 = icmp ne %struct._IO_FILE* %39, null, !dbg !2464
  %or.cond2 = and i1 %or.cond1, %cmp103, !dbg !2462
  br i1 %or.cond2, label %if.then105, label %if.end106, !dbg !2462

if.then105:                                       ; preds = %land.lhs.true97
  call fastcc void @print_conflicts(%struct._IO_FILE* nonnull %39, i8 zeroext 0) #7, !dbg !2465
  br label %if.end106, !dbg !2465

if.end106:                                        ; preds = %for.end95, %if.then105, %land.lhs.true97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2466
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2466
  ret void, !dbg !2466
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @build_conflict_bit_table() unnamed_addr #5 !dbg !2467 {
entry:
  %allocno = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %0 = bitcast %struct.ira_allocno** %allocno to i8*, !dbg !2498
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2498
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2499
  %2 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2500
  %sub = add nsw i32 %2, 63, !dbg !2501
  %div = sdiv i32 %sub, 64, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %div, metadata !2497, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 0, metadata !2474, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2481, metadata !DIExpression(DW_OP_deref)), !dbg !2503
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2504
  br label %for.cond.outer, !dbg !2504

for.cond.outer:                                   ; preds = %if.end, %entry
  %allocated_words_num.0.ph = phi i32 [ %add6, %if.end ], [ 0, %entry ]
  br label %for.cond, !dbg !2504

for.cond:                                         ; preds = %for.cond.outer, %for.body
  call void @llvm.dbg.value(metadata i32 %allocated_words_num.0.ph, metadata !2474, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %allocno, metadata !2478, metadata !DIExpression(DW_OP_deref)), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2481, metadata !DIExpression(DW_OP_deref)), !dbg !2503
  %call = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %allocno) #7, !dbg !2506
  %tobool = icmp eq i8 %call, 0, !dbg !2504
  br i1 %tobool, label %for.end, label %for.body, !dbg !2504

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ira_allocno*, %struct.ira_allocno** %allocno, align 8, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !2478, metadata !DIExpression()), !dbg !2503
  %max = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 22, !dbg !2508
  %4 = load i32, i32* %max, align 4, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !2478, metadata !DIExpression()), !dbg !2503
  %min = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 21, !dbg !2511
  %5 = load i32, i32* %min, align 8, !dbg !2511
  %cmp = icmp slt i32 %4, %5, !dbg !2512
  br i1 %cmp, label %for.cond, label %if.end, !dbg !2513, !llvm.loop !2514

if.end:                                           ; preds = %for.body
  %.lcssa12 = phi i32 [ %4, %for.body ], !dbg !2508
  %.lcssa11 = phi i32 [ %5, %for.body ], !dbg !2511
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !2478, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !2478, metadata !DIExpression()), !dbg !2503
  %sub3 = sub nsw i32 %.lcssa12, %.lcssa11, !dbg !2516
  %add4 = add nsw i32 %sub3, 64, !dbg !2517
  %div5 = sdiv i32 %add4, 64, !dbg !2518
  call void @llvm.dbg.value(metadata i32 %div5, metadata !2475, metadata !DIExpression()), !dbg !2503
  %add6 = add nsw i32 %allocated_words_num.0.ph, %div5, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %add6, metadata !2474, metadata !DIExpression()), !dbg !2503
  %conv = sext i32 %add6 to i64, !dbg !2520
  %mul = shl nsw i64 %conv, 3, !dbg !2522
  %6 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2523
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %6, i64 106, i32 1, !dbg !2523
  %7 = load i32, i32* %value, align 8, !dbg !2523
  %conv7 = sext i32 %7 to i64, !dbg !2524
  %mul9 = shl nsw i64 %conv7, 20, !dbg !2525
  %cmp10 = icmp ugt i64 %mul, %mul9, !dbg !2526
  br i1 %cmp10, label %if.then12, label %for.cond.outer, !dbg !2527, !llvm.loop !2514

if.then12:                                        ; preds = %if.end
  %.lcssa13 = phi i32 [ %7, %if.end ], !dbg !2523
  %8 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2528
  %cmp13 = icmp sgt i32 %8, 0, !dbg !2531
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2532
  %cmp15 = icmp ne %struct._IO_FILE* %9, null, !dbg !2533
  %or.cond = and i1 %cmp13, %cmp15, !dbg !2534
  br i1 %or.cond, label %if.then17, label %cleanup, !dbg !2534

if.then17:                                        ; preds = %if.then12
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i32 %.lcssa13) #6, !dbg !2535
  br label %cleanup, !dbg !2535

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2536
  %call23 = call %struct.sparseset_def* @sparseset_alloc(i32 %10) #6, !dbg !2537
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %call23, metadata !2482, metadata !DIExpression()), !dbg !2503
  %11 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2538
  %conv24 = sext i32 %11 to i64, !dbg !2538
  %mul25 = shl nsw i64 %conv24, 3, !dbg !2539
  %call26 = call i8* @ira_allocate(i64 %mul25) #6, !dbg !2540
  store i8* %call26, i8** bitcast (i64*** @conflicts to i8**), align 8, !dbg !2541
  call void @llvm.dbg.value(metadata i32 0, metadata !2474, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2481, metadata !DIExpression(DW_OP_deref)), !dbg !2503
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2542
  br label %for.cond27.outer, !dbg !2542

for.cond27.outer:                                 ; preds = %if.end38, %for.end
  %allocated_words_num.1.ph = phi i32 [ %add44, %if.end38 ], [ 0, %for.end ]
  br label %for.cond27, !dbg !2542

for.cond27:                                       ; preds = %for.cond27.outer, %if.then36
  call void @llvm.dbg.value(metadata i32 %allocated_words_num.1.ph, metadata !2474, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %allocno, metadata !2478, metadata !DIExpression(DW_OP_deref)), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2481, metadata !DIExpression(DW_OP_deref)), !dbg !2503
  %call28 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %allocno) #7, !dbg !2544
  %tobool29 = icmp eq i8 %call28, 0, !dbg !2542
  br i1 %tobool29, label %for.end55, label %for.body30, !dbg !2542

for.body30:                                       ; preds = %for.cond27
  %12 = load %struct.ira_allocno*, %struct.ira_allocno** %allocno, align 8, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %12, metadata !2478, metadata !DIExpression()), !dbg !2503
  %num31 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %12, i64 0, i32 0, !dbg !2546
  %13 = load i32, i32* %num31, align 8, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %13, metadata !2472, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %12, metadata !2478, metadata !DIExpression()), !dbg !2503
  %max32 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %12, i64 0, i32 22, !dbg !2548
  %14 = load i32, i32* %max32, align 4, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %12, metadata !2478, metadata !DIExpression()), !dbg !2503
  %min33 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %12, i64 0, i32 21, !dbg !2550
  %15 = load i32, i32* %min33, align 8, !dbg !2550
  %cmp34 = icmp slt i32 %14, %15, !dbg !2551
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !2552

if.then36:                                        ; preds = %for.body30
  %16 = load i64**, i64*** @conflicts, align 8, !dbg !2553
  %idxprom = sext i32 %13 to i64, !dbg !2553
  %arrayidx37 = getelementptr inbounds i64*, i64** %16, i64 %idxprom, !dbg !2553
  store i64* null, i64** %arrayidx37, align 8, !dbg !2555
  br label %for.cond27, !dbg !2556, !llvm.loop !2557

if.end38:                                         ; preds = %for.body30
  %.lcssa10 = phi i32 [ %13, %for.body30 ], !dbg !2546
  %.lcssa9 = phi i32 [ %14, %for.body30 ], !dbg !2548
  %.lcssa = phi i32 [ %15, %for.body30 ], !dbg !2550
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %12, metadata !2478, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %12, metadata !2478, metadata !DIExpression()), !dbg !2503
  %sub41 = sub nsw i32 %.lcssa9, %.lcssa, !dbg !2559
  %add42 = add nsw i32 %sub41, 64, !dbg !2560
  %div43 = sdiv i32 %add42, 64, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %div43, metadata !2475, metadata !DIExpression()), !dbg !2503
  %add44 = add nsw i32 %allocated_words_num.1.ph, %div43, !dbg !2562
  call void @llvm.dbg.value(metadata i32 %add44, metadata !2474, metadata !DIExpression()), !dbg !2503
  %conv45 = sext i32 %div43 to i64, !dbg !2563
  %mul46 = shl nsw i64 %conv45, 3, !dbg !2564
  %call47 = call i8* @ira_allocate(i64 %mul46) #6, !dbg !2565
  %17 = load i64**, i64*** @conflicts, align 8, !dbg !2566
  %idxprom48 = sext i32 %.lcssa10 to i64, !dbg !2566
  %arrayidx49 = getelementptr inbounds i64*, i64** %17, i64 %idxprom48, !dbg !2566
  %18 = bitcast i64** %arrayidx49 to i8**, !dbg !2567
  store i8* %call47, i8** %18, align 8, !dbg !2567
  %19 = load i64**, i64*** @conflicts, align 8, !dbg !2568
  %arrayidx51 = getelementptr inbounds i64*, i64** %19, i64 %idxprom48, !dbg !2568
  %20 = bitcast i64** %arrayidx51 to i8**, !dbg !2568
  %21 = load i8*, i8** %20, align 8, !dbg !2568
  %call54 = call i8* @memset(i8* %21, i32 0, i64 %mul46) #6, !dbg !2569
  br label %for.cond27.outer, !dbg !2544, !llvm.loop !2557

for.end55:                                        ; preds = %for.cond27
  %allocated_words_num.1.ph.lcssa = phi i32 [ %allocated_words_num.1.ph, %for.cond27 ]
  %22 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2570
  %cmp56 = icmp sgt i32 %22, 0, !dbg !2572
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2573
  %cmp59 = icmp ne %struct._IO_FILE* %23, null, !dbg !2574
  %or.cond1 = and i1 %cmp56, %cmp59, !dbg !2575
  br i1 %or.cond1, label %if.then61, label %if.end69, !dbg !2575

if.then61:                                        ; preds = %for.end55
  %conv62 = sext i32 %allocated_words_num.1.ph.lcssa to i64, !dbg !2576
  %mul63 = shl nsw i64 %conv62, 3, !dbg !2577
  %conv64 = sext i32 %div to i64, !dbg !2578
  %24 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2579
  %conv65 = sext i32 %24 to i64, !dbg !2579
  %mul66 = mul nsw i64 %conv64, %conv65, !dbg !2580
  %mul67 = shl nsw i64 %mul66, 3, !dbg !2581
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %23, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i64 %mul63, i64 %mul67) #6, !dbg !2582
  br label %if.end69, !dbg !2582

if.end69:                                         ; preds = %if.then61, %for.end55
  call void @llvm.dbg.value(metadata i32 0, metadata !2471, metadata !DIExpression()), !dbg !2503
  %25 = bitcast %struct.ira_allocno** %allocno to i64*, !dbg !2583
  br label %for.cond70, !dbg !2590

for.cond70:                                       ; preds = %for.inc141, %if.end69
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc141 ], [ 0, %if.end69 ]
  %j.0 = phi i32 [ %j.1.lcssa, %for.inc141 ], [ undef, %if.end69 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2471, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2476, metadata !DIExpression()), !dbg !2503
  %26 = load i32, i32* @ira_max_point, align 4, !dbg !2591
  %27 = sext i32 %26 to i64, !dbg !2592
  %cmp71 = icmp slt i64 %indvars.iv, %27, !dbg !2592
  br i1 %cmp71, label %for.body73, label %for.end142, !dbg !2593

for.body73:                                       ; preds = %for.cond70
  %28 = load %struct.ira_allocno_live_range**, %struct.ira_allocno_live_range*** @ira_start_point_ranges, align 8, !dbg !2594
  %arrayidx75 = getelementptr inbounds %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %28, i64 %indvars.iv, !dbg !2594
  br label %for.cond76, !dbg !2595

for.cond76:                                       ; preds = %for.inc129, %for.body73
  %r.0.in = phi %struct.ira_allocno_live_range** [ %arrayidx75, %for.body73 ], [ %start_next, %for.inc129 ]
  %j.1 = phi i32 [ %j.0, %for.body73 ], [ %j.3.lcssa, %for.inc129 ]
  %r.0 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %r.0.in, align 8, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !2476, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r.0, metadata !2480, metadata !DIExpression()), !dbg !2503
  %cmp77 = icmp eq %struct.ira_allocno_live_range* %r.0, null, !dbg !2597
  br i1 %cmp77, label %for.end130, label %for.body79, !dbg !2598

for.body79:                                       ; preds = %for.cond76
  %29 = bitcast %struct.ira_allocno_live_range* %r.0 to i64*, !dbg !2599
  %30 = load i64, i64* %29, align 8, !dbg !2599
  store i64 %30, i64* %25, align 8, !dbg !2600
  %.cast = inttoptr i64 %30 to %struct.ira_allocno*, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %.cast, metadata !2478, metadata !DIExpression()), !dbg !2503
  %num81 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %.cast, i64 0, i32 0, !dbg !2601
  %31 = load i32, i32* %num81, align 8, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %31, metadata !2472, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %.cast, metadata !2478, metadata !DIExpression()), !dbg !2503
  %conflict_id = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %.cast, i64 0, i32 24, !dbg !2602
  %32 = load i32, i32* %conflict_id, align 8, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %32, metadata !2473, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %.cast, metadata !2478, metadata !DIExpression()), !dbg !2503
  %cover_class82 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %.cast, i64 0, i32 9, !dbg !2603
  %33 = load i32, i32* %cover_class82, align 8, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %33, metadata !2477, metadata !DIExpression()), !dbg !2503
  call fastcc void @sparseset_set_bit(%struct.sparseset_def* %call23, i32 %31) #7, !dbg !2604
  call fastcc void @sparseset_iter_init(%struct.sparseset_def* %call23) #7, !dbg !2605
  %idxprom92 = zext i32 %33 to i64, !dbg !2607
  %idxprom106 = sext i32 %31 to i64, !dbg !2611
  br label %for.cond83, !dbg !2605

for.cond83:                                       ; preds = %for.inc, %for.body79
  %j.2 = phi i32 [ %j.1, %for.body79 ], [ %j.3, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !2476, metadata !DIExpression()), !dbg !2503
  %call84 = call fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %call23) #7, !dbg !2613
  %tobool86 = icmp eq i8 %call84, 0, !dbg !2613
  br i1 %tobool86, label %land.end, label %land.rhs, !dbg !2613

land.rhs:                                         ; preds = %for.cond83
  %call87 = call fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %call23) #7, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %call87, metadata !2476, metadata !DIExpression()), !dbg !2503
  br label %land.end

land.end:                                         ; preds = %for.cond83, %land.rhs
  %j.3 = phi i32 [ %call87, %land.rhs ], [ %j.2, %for.cond83 ]
  %34 = phi i1 [ true, %land.rhs ], [ false, %for.cond83 ], !dbg !2614
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !2476, metadata !DIExpression()), !dbg !2503
  br i1 %34, label %for.body89, label %for.inc129, !dbg !2605

for.body89:                                       ; preds = %land.end
  %35 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !2615
  %idxprom90 = zext i32 %j.3 to i64, !dbg !2615
  %arrayidx91 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %35, i64 %idxprom90, !dbg !2615
  %36 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx91, align 8, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %36, metadata !2479, metadata !DIExpression()), !dbg !2503
  %cover_class94 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %36, i64 0, i32 9, !dbg !2616
  %37 = load i32, i32* %cover_class94, align 8, !dbg !2616
  %idxprom95 = zext i32 %37 to i64, !dbg !2617
  %arrayidx96 = getelementptr inbounds [27 x [27 x i8]], [27 x [27 x i8]]* @ira_reg_classes_intersect_p, i64 0, i64 %idxprom92, i64 %idxprom95, !dbg !2617
  %38 = load i8, i8* %arrayidx96, align 1, !dbg !2617
  %tobool98 = icmp ne i8 %38, 0, !dbg !2617
  %cmp100 = icmp ne i32 %31, %j.3, !dbg !2618
  %or.cond2 = and i1 %tobool98, %cmp100, !dbg !2619
  br i1 %or.cond2, label %if.then102, label %for.inc, !dbg !2619

if.then102:                                       ; preds = %for.body89
  %conflict_id103 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %36, i64 0, i32 24, !dbg !2620
  %39 = load i32, i32* %conflict_id103, align 8, !dbg !2620
  %40 = load %struct.ira_allocno*, %struct.ira_allocno** %allocno, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %40, metadata !2478, metadata !DIExpression()), !dbg !2503
  %min104 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %40, i64 0, i32 21, !dbg !2620
  %41 = load i32, i32* %min104, align 8, !dbg !2620
  %sub105 = sub nsw i32 %39, %41, !dbg !2620
  %rem = and i32 %sub105, 63, !dbg !2620
  %sh_prom = zext i32 %rem to i64, !dbg !2620
  %shl = shl i64 1, %sh_prom, !dbg !2620
  %42 = load i64**, i64*** @conflicts, align 8, !dbg !2620
  %arrayidx107 = getelementptr inbounds i64*, i64** %42, i64 %idxprom106, !dbg !2620
  %43 = load i64*, i64** %arrayidx107, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %40, metadata !2478, metadata !DIExpression()), !dbg !2503
  %div111 = lshr i32 %sub105, 6, !dbg !2620
  %idxprom112 = zext i32 %div111 to i64, !dbg !2620
  %arrayidx113 = getelementptr inbounds i64, i64* %43, i64 %idxprom112, !dbg !2620
  %44 = load i64, i64* %arrayidx113, align 8, !dbg !2620
  %or = or i64 %44, %shl, !dbg !2620
  store i64 %or, i64* %arrayidx113, align 8, !dbg !2620
  %min114 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %36, i64 0, i32 21, !dbg !2621
  %45 = load i32, i32* %min114, align 8, !dbg !2621
  %sub115 = sub nsw i32 %32, %45, !dbg !2621
  %rem116 = and i32 %sub115, 63, !dbg !2621
  %sh_prom117 = zext i32 %rem116 to i64, !dbg !2621
  %shl118 = shl i64 1, %sh_prom117, !dbg !2621
  %46 = load i64**, i64*** @conflicts, align 8, !dbg !2621
  %arrayidx120 = getelementptr inbounds i64*, i64** %46, i64 %idxprom90, !dbg !2621
  %47 = load i64*, i64** %arrayidx120, align 8, !dbg !2621
  %div123 = lshr i32 %sub115, 6, !dbg !2621
  %idxprom124 = zext i32 %div123 to i64, !dbg !2621
  %arrayidx125 = getelementptr inbounds i64, i64* %47, i64 %idxprom124, !dbg !2621
  %48 = load i64, i64* %arrayidx125, align 8, !dbg !2621
  %or126 = or i64 %48, %shl118, !dbg !2621
  store i64 %or126, i64* %arrayidx125, align 8, !dbg !2621
  br label %for.inc, !dbg !2622

for.inc:                                          ; preds = %for.body89, %if.then102
  call fastcc void @sparseset_iter_next(%struct.sparseset_def* %call23) #7, !dbg !2613
  br label %for.cond83, !dbg !2613, !llvm.loop !2623

for.inc129:                                       ; preds = %land.end
  %j.3.lcssa = phi i32 [ %j.3, %land.end ]
  call void @llvm.dbg.value(metadata i32 %j.3.lcssa, metadata !2476, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %j.3.lcssa, metadata !2476, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %j.3.lcssa, metadata !2476, metadata !DIExpression()), !dbg !2503
  %start_next = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.0, i64 0, i32 4, !dbg !2625
  br label %for.cond76, !dbg !2626, !llvm.loop !2627

for.end130:                                       ; preds = %for.cond76
  %j.1.lcssa = phi i32 [ %j.1, %for.cond76 ]
  call void @llvm.dbg.value(metadata i32 %j.1.lcssa, metadata !2476, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %j.1.lcssa, metadata !2476, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %j.1.lcssa, metadata !2476, metadata !DIExpression()), !dbg !2503
  %49 = load %struct.ira_allocno_live_range**, %struct.ira_allocno_live_range*** @ira_finish_point_ranges, align 8, !dbg !2629
  %arrayidx132 = getelementptr inbounds %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %49, i64 %indvars.iv, !dbg !2629
  br label %for.cond133, !dbg !2631

for.cond133:                                      ; preds = %for.body136, %for.end130
  %r.1.in = phi %struct.ira_allocno_live_range** [ %arrayidx132, %for.end130 ], [ %finish_next, %for.body136 ]
  %r.1 = load %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range** %r.1.in, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.ira_allocno_live_range* %r.1, metadata !2480, metadata !DIExpression()), !dbg !2503
  %cmp134 = icmp eq %struct.ira_allocno_live_range* %r.1, null, !dbg !2633
  br i1 %cmp134, label %for.inc141, label %for.body136, !dbg !2635

for.body136:                                      ; preds = %for.cond133
  %allocno137 = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.1, i64 0, i32 0, !dbg !2636
  %50 = load %struct.ira_allocno*, %struct.ira_allocno** %allocno137, align 8, !dbg !2636
  %num138 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %50, i64 0, i32 0, !dbg !2636
  %51 = load i32, i32* %num138, align 8, !dbg !2636
  call void @sparseset_clear_bit(%struct.sparseset_def* %call23, i32 %51) #6, !dbg !2637
  %finish_next = getelementptr inbounds %struct.ira_allocno_live_range, %struct.ira_allocno_live_range* %r.1, i64 0, i32 5, !dbg !2638
  br label %for.cond133, !dbg !2639, !llvm.loop !2640

for.inc141:                                       ; preds = %for.cond133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i32 undef, metadata !2471, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2503
  br label %for.cond70, !dbg !2643, !llvm.loop !2644

for.end142:                                       ; preds = %for.cond70
  %52 = bitcast %struct.sparseset_def* %call23 to i8*, !dbg !2646
  call void @free(i8* %52) #6, !dbg !2646
  br label %cleanup, !dbg !2647

cleanup:                                          ; preds = %if.then12, %if.then17, %for.end142
  %retval.0 = phi i8 [ 1, %for.end142 ], [ 0, %if.then17 ], [ 0, %if.then12 ], !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2648
  ret i8 %retval.0, !dbg !2648
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_conflicts() unnamed_addr #5 !dbg !2649 {
entry:
  %0 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2654
  %conv = sext i32 %0 to i64, !dbg !2654
  %mul = shl nsw i64 %conv, 3, !dbg !2655
  %call = tail call i8* @ira_allocate(i64 %mul) #6, !dbg !2656
  store i8* %call, i8** bitcast (%struct.ira_allocno*** @collected_conflict_allocnos to i8**), align 8, !dbg !2657
  %call1 = tail call i32 @max_reg_num() #6, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2651, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2660
  %1 = sext i32 %call1 to i64, !dbg !2661
  br label %for.cond, !dbg !2661

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc15 ], [ %1, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2662
  call void @llvm.dbg.value(metadata i32 undef, metadata !2651, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2660
  %cmp = icmp sgt i64 %indvars.iv.next, 52, !dbg !2663
  br i1 %cmp, label %for.body, label %for.end16, !dbg !2665

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_regno_allocno_map, align 8, !dbg !2666
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %2, i64 %indvars.iv.next, !dbg !2666
  br label %for.cond3, !dbg !2668

for.cond3:                                        ; preds = %for.inc13, %for.body
  %a.0.in = phi %struct.ira_allocno** [ %arrayidx, %for.body ], [ %next_regno_allocno, %for.inc13 ]
  %a.0 = load %struct.ira_allocno*, %struct.ira_allocno** %a.0.in, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.0, metadata !2652, metadata !DIExpression()), !dbg !2660
  %cmp4 = icmp eq %struct.ira_allocno* %a.0, null, !dbg !2670
  br i1 %cmp4, label %for.inc15, label %for.body6, !dbg !2672

for.body6:                                        ; preds = %for.cond3
  tail call fastcc void @build_allocno_conflicts(%struct.ira_allocno* nonnull %a.0) #7, !dbg !2673
  br label %for.cond8, !dbg !2675

for.cond8:                                        ; preds = %for.body11, %for.body6
  %a.0.pn = phi %struct.ira_allocno* [ %a.0, %for.body6 ], [ %cap.0, %for.body11 ]
  %cap.0.in = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0.pn, i64 0, i32 16, !dbg !2677
  %cap.0 = load %struct.ira_allocno*, %struct.ira_allocno** %cap.0.in, align 8, !dbg !2677
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %cap.0, metadata !2653, metadata !DIExpression()), !dbg !2660
  %cmp9 = icmp eq %struct.ira_allocno* %cap.0, null, !dbg !2678
  br i1 %cmp9, label %for.inc13, label %for.body11, !dbg !2680

for.body11:                                       ; preds = %for.cond8
  tail call fastcc void @build_allocno_conflicts(%struct.ira_allocno* nonnull %cap.0) #7, !dbg !2681
  br label %for.cond8, !dbg !2682, !llvm.loop !2683

for.inc13:                                        ; preds = %for.cond8
  %next_regno_allocno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 5, !dbg !2685
  br label %for.cond3, !dbg !2686, !llvm.loop !2687

for.inc15:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata i32 undef, metadata !2651, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2660
  br label %for.cond, !dbg !2689, !llvm.loop !2690

for.end16:                                        ; preds = %for.cond
  %3 = load i8*, i8** bitcast (%struct.ira_allocno*** @collected_conflict_allocnos to i8**), align 8, !dbg !2692
  tail call void @ira_free(i8* %3) #6, !dbg !2693
  ret void, !dbg !2694
}

declare dso_local void @ira_traverse_loop_tree(i8 zeroext, %struct.ira_loop_tree_node*, void (%struct.ira_loop_tree_node*)*, void (%struct.ira_loop_tree_node*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @add_copies(%struct.ira_loop_tree_node* %loop_tree_node) #5 !dbg !2695 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %loop_tree_node, metadata !2699, metadata !DIExpression()), !dbg !2702
  %bb1 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_tree_node, i64 0, i32 0, !dbg !2703
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2700, metadata !DIExpression()), !dbg !2702
  %cmp = icmp eq %struct.basic_block_def* %0, null, !dbg !2704
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2706

if.end:                                           ; preds = %entry
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 7, !dbg !2707
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2707
  %1 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2707
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %1, i64 0, i32 0, !dbg !2707
  br label %for.cond, !dbg !2707

for.cond:                                         ; preds = %for.inc, %if.end
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end ], [ %rt_rtx25, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2709
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2701, metadata !DIExpression()), !dbg !2702
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2710
  br i1 %tobool, label %cleanup.cont.loopexit, label %land.rhs, !dbg !2710

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2710
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %2, i64 0, i32 1, !dbg !2710
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2710
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2710
  %rt_rtx = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !2710
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2710
  %cmp4 = icmp eq %struct.rtx_def* %insn.0, %5, !dbg !2710
  br i1 %cmp4, label %cleanup.cont.loopexit, label %for.body, !dbg !2707

for.body:                                         ; preds = %land.rhs
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2712
  %bf.load = load i32, i32* %6, align 8, !dbg !2712
  %bf.clear = and i32 %bf.load, 65535, !dbg !2712
  %cmp5 = icmp eq i32 %bf.clear, 8, !dbg !2712
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false, !dbg !2712

lor.lhs.false:                                    ; preds = %for.body
  %cmp8 = icmp eq i32 %bf.clear, 7, !dbg !2712
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false9, !dbg !2712

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %cmp12 = icmp eq i32 %bf.clear, 9, !dbg !2712
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false13, !dbg !2712

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %cmp16 = icmp eq i32 %bf.clear, 10, !dbg !2712
  br i1 %cmp16, label %land.lhs.true, label %for.inc, !dbg !2712

land.lhs.true:                                    ; preds = %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false, %for.body
  %cmp19 = icmp eq i32 %bf.clear, 7, !dbg !2712
  br i1 %cmp19, label %for.inc, label %if.then20, !dbg !2714

if.then20:                                        ; preds = %land.lhs.true
  tail call fastcc void @add_insn_allocno_copies(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2715
  br label %for.inc, !dbg !2715

for.inc:                                          ; preds = %lor.lhs.false13, %land.lhs.true, %if.then20
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2710
  %rt_rtx25 = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !2710
  br label %for.cond, !dbg !2710, !llvm.loop !2716

cleanup.cont.loopexit:                            ; preds = %for.cond, %land.rhs
  br label %cleanup.cont, !dbg !2718

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !2718
}

; Function Attrs: nounwind uwtable
define internal fastcc void @propagate_copies() unnamed_addr #5 !dbg !2719 {
entry:
  %cp = alloca %struct.ira_allocno_copy*, align 8
  %ci = alloca %struct.ira_copy_iterator, align 4
  %0 = bitcast %struct.ira_allocno_copy** %cp to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2732
  %1 = bitcast %struct.ira_copy_iterator* %ci to i8*, !dbg !2733
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2733
  call void @llvm.dbg.value(metadata %struct.ira_copy_iterator* %ci, metadata !2722, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  call fastcc void @ira_copy_iter_init(%struct.ira_copy_iterator* nonnull %ci) #7, !dbg !2735
  br label %for.cond, !dbg !2735

for.cond:                                         ; preds = %for.cond.backedge, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy** %cp, metadata !2721, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.ira_copy_iterator* %ci, metadata !2722, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  %call = call fastcc zeroext i8 @ira_copy_iter_cond(%struct.ira_copy_iterator* nonnull %ci, %struct.ira_allocno_copy** nonnull %cp) #7, !dbg !2737
  %tobool = icmp eq i8 %call, 0, !dbg !2735
  br i1 %tobool, label %for.end, label %for.body, !dbg !2735

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_allocno_copy*, %struct.ira_allocno_copy** %cp, align 8, !dbg !2739
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %2, metadata !2721, metadata !DIExpression()), !dbg !2734
  %first = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %2, i64 0, i32 1, !dbg !2741
  %3 = load %struct.ira_allocno*, %struct.ira_allocno** %first, align 8, !dbg !2741
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !2727, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %2, metadata !2721, metadata !DIExpression()), !dbg !2734
  %second = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %2, i64 0, i32 2, !dbg !2742
  %4 = load %struct.ira_allocno*, %struct.ira_allocno** %second, align 8, !dbg !2742
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %4, metadata !2728, metadata !DIExpression()), !dbg !2734
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 6, !dbg !2743
  %5 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !2743
  %6 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !2745
  %cmp = icmp eq %struct.ira_loop_tree_node* %5, %6, !dbg !2746
  br i1 %cmp, label %for.cond.backedge, label %if.end, !dbg !2747

if.end:                                           ; preds = %for.body
  %parent2 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %5, i64 0, i32 6, !dbg !2748
  %7 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent2, align 8, !dbg !2748
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %7, metadata !2731, metadata !DIExpression()), !dbg !2734
  %cap = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 16, !dbg !2749
  %8 = load %struct.ira_allocno*, %struct.ira_allocno** %cap, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %8, metadata !2729, metadata !DIExpression()), !dbg !2734
  %cmp3 = icmp eq %struct.ira_allocno* %8, null, !dbg !2751
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2752

if.then4:                                         ; preds = %if.end
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %7, i64 0, i32 9, !dbg !2753
  %9 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !2753
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 1, !dbg !2754
  %10 = load i32, i32* %regno, align 4, !dbg !2754
  %idxprom = sext i32 %10 to i64, !dbg !2755
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %9, i64 %idxprom, !dbg !2755
  %11 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !2755
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %11, metadata !2729, metadata !DIExpression()), !dbg !2734
  br label %if.end5, !dbg !2756

if.end5:                                          ; preds = %if.then4, %if.end
  %parent_a1.0 = phi %struct.ira_allocno* [ %11, %if.then4 ], [ %8, %if.end ], !dbg !2757
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %parent_a1.0, metadata !2729, metadata !DIExpression()), !dbg !2734
  %cap6 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 16, !dbg !2758
  %12 = load %struct.ira_allocno*, %struct.ira_allocno** %cap6, align 8, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %12, metadata !2730, metadata !DIExpression()), !dbg !2734
  %cmp7 = icmp eq %struct.ira_allocno* %12, null, !dbg !2760
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !2761

if.then8:                                         ; preds = %if.end5
  %regno_allocno_map9 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %7, i64 0, i32 9, !dbg !2762
  %13 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map9, align 8, !dbg !2762
  %regno10 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %4, i64 0, i32 1, !dbg !2763
  %14 = load i32, i32* %regno10, align 4, !dbg !2763
  %idxprom11 = sext i32 %14 to i64, !dbg !2764
  %arrayidx12 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %13, i64 %idxprom11, !dbg !2764
  %15 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx12, align 8, !dbg !2764
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %15, metadata !2730, metadata !DIExpression()), !dbg !2734
  br label %if.end13, !dbg !2765

if.end13:                                         ; preds = %if.then8, %if.end5
  %parent_a2.0 = phi %struct.ira_allocno* [ %15, %if.then8 ], [ %12, %if.end5 ], !dbg !2766
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %parent_a2.0, metadata !2730, metadata !DIExpression()), !dbg !2734
  %min = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %parent_a1.0, i64 0, i32 21, !dbg !2767
  %16 = load i32, i32* %min, align 8, !dbg !2767
  %conflict_id = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %parent_a2.0, i64 0, i32 24, !dbg !2767
  %17 = load i32, i32* %conflict_id, align 8, !dbg !2767
  %cmp14 = icmp slt i32 %17, %16, !dbg !2767
  br i1 %cmp14, label %if.then28, label %land.lhs.true, !dbg !2767

land.lhs.true:                                    ; preds = %if.end13
  %max = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %parent_a1.0, i64 0, i32 22, !dbg !2767
  %18 = load i32, i32* %max, align 4, !dbg !2767
  %cmp16 = icmp sgt i32 %17, %18, !dbg !2767
  br i1 %cmp16, label %if.then28, label %land.lhs.true17, !dbg !2767

land.lhs.true17:                                  ; preds = %land.lhs.true
  %19 = load i64**, i64*** @conflicts, align 8, !dbg !2767
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %parent_a1.0, i64 0, i32 0, !dbg !2767
  %20 = load i32, i32* %num, align 8, !dbg !2767
  %idxprom18 = sext i32 %20 to i64, !dbg !2767
  %arrayidx19 = getelementptr inbounds i64*, i64** %19, i64 %idxprom18, !dbg !2767
  %21 = load i64*, i64** %arrayidx19, align 8, !dbg !2767
  %sub = sub nsw i32 %17, %16, !dbg !2767
  %div = lshr i32 %sub, 6, !dbg !2767
  %idxprom22 = zext i32 %div to i64, !dbg !2767
  %arrayidx23 = getelementptr inbounds i64, i64* %21, i64 %idxprom22, !dbg !2767
  %22 = load i64, i64* %arrayidx23, align 8, !dbg !2767
  %rem = and i32 %sub, 63, !dbg !2767
  %sh_prom = zext i32 %rem to i64, !dbg !2767
  %shl = shl i64 1, %sh_prom, !dbg !2767
  %and = and i64 %22, %shl, !dbg !2767
  %tobool27 = icmp eq i64 %and, 0, !dbg !2767
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !2769

if.then28:                                        ; preds = %land.lhs.true17, %land.lhs.true, %if.end13
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %2, metadata !2721, metadata !DIExpression()), !dbg !2734
  %freq = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %2, i64 0, i32 3, !dbg !2770
  %23 = load i32, i32* %freq, align 8, !dbg !2770
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %2, metadata !2721, metadata !DIExpression()), !dbg !2734
  %constraint_p = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %2, i64 0, i32 4, !dbg !2771
  %24 = load i8, i8* %constraint_p, align 4, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %2, metadata !2721, metadata !DIExpression()), !dbg !2734
  %insn = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %2, i64 0, i32 5, !dbg !2772
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %2, metadata !2721, metadata !DIExpression()), !dbg !2734
  %loop_tree_node29 = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %2, i64 0, i32 10, !dbg !2773
  %26 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node29, align 8, !dbg !2773
  %call30 = call %struct.ira_allocno_copy* @ira_add_allocno_copy(%struct.ira_allocno* %parent_a1.0, %struct.ira_allocno* %parent_a2.0, i32 %23, i8 zeroext %24, %struct.rtx_def* %25, %struct.ira_loop_tree_node* %26) #6, !dbg !2774
  br label %if.end31, !dbg !2774

if.end31:                                         ; preds = %land.lhs.true17, %if.then28
  br label %for.cond.backedge, !dbg !2737

for.cond.backedge:                                ; preds = %if.end31, %for.body
  br label %for.cond, !dbg !2734, !llvm.loop !2775

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2777
  ret void, !dbg !2777
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* %i) unnamed_addr #0 !dbg !2778 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !2783, metadata !DIExpression()), !dbg !2784
  %n = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !2785
  store i32 0, i32* %n, align 4, !dbg !2786
  ret void, !dbg !2787
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* %i, %struct.ira_allocno** %a) unnamed_addr #0 !dbg !2788 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2793, metadata !DIExpression()), !dbg !2795
  %n1 = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !2796
  %0 = load i32, i32* %n1, align 4, !dbg !2796
  call void @llvm.dbg.value(metadata i32 %0, metadata !2794, metadata !DIExpression()), !dbg !2795
  %1 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2798
  %2 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !2800
  %3 = sext i32 %0 to i64, !dbg !2802
  %4 = sext i32 %1 to i64, !dbg !2802
  br label %for.cond, !dbg !2802

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %3, %entry ], !dbg !2803
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2794, metadata !DIExpression()), !dbg !2795
  %cmp = icmp slt i64 %indvars.iv, %4, !dbg !2804
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !2805

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %2, i64 %indvars.iv, !dbg !2806
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !2806
  %cmp2 = icmp eq %struct.ira_allocno* %5, null, !dbg !2807
  br i1 %cmp2, label %for.inc, label %if.then, !dbg !2808

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.ira_allocno* [ %5, %for.body ], !dbg !2806
  %indvars.iv.lcssa3 = phi i64 [ %indvars.iv, %for.body ], !dbg !2803
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa3, metadata !2794, metadata !DIExpression()), !dbg !2795
  %6 = ptrtoint %struct.ira_allocno* %.lcssa to i64, !dbg !2808
  %7 = trunc i64 %indvars.iv.lcssa3 to i32, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %7, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 %7, metadata !2794, metadata !DIExpression()), !dbg !2795
  %8 = bitcast %struct.ira_allocno** %a to i64*, !dbg !2809
  store i64 %6, i64* %8, align 8, !dbg !2809
  %add = add nsw i32 %7, 1, !dbg !2811
  store i32 %add, i32* %n1, align 4, !dbg !2812
  br label %cleanup, !dbg !2813

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !2814
  call void @llvm.dbg.value(metadata i32 undef, metadata !2794, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2795
  br label %for.cond, !dbg !2815, !llvm.loop !2816

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2818

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %cleanup.loopexit ], !dbg !2795
  ret i8 %retval.0, !dbg !2818
}

declare dso_local void @ira_free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @base_reg_class(i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !2819 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2824, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !2826, metadata !DIExpression()), !dbg !2827
  ret i32 undef, !dbg !2828
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_conflict_iter_init(%struct.ira_allocno_conflict_iterator* %i, %struct.ira_allocno* %allocno) unnamed_addr #0 !dbg !2829 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %i, metadata !2834, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %allocno, metadata !2835, metadata !DIExpression()), !dbg !2836
  %conflict_vec_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %allocno, i64 0, i32 31, !dbg !2837
  %bf.load = load i16, i16* %conflict_vec_p, align 4, !dbg !2837
  %bf.lshr = lshr i16 %bf.load, 11, !dbg !2837
  %0 = trunc i16 %bf.lshr to i8, !dbg !2837
  %conv = and i8 %0, 1, !dbg !2837
  %allocno_conflict_vec_p = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 0, !dbg !2838
  store i8 %conv, i8* %allocno_conflict_vec_p, align 8, !dbg !2839
  %conflict_allocno_array = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %allocno, i64 0, i32 23, !dbg !2840
  %1 = bitcast i8** %conflict_allocno_array to i64*, !dbg !2840
  %2 = load i64, i64* %1, align 8, !dbg !2840
  %vec = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 1, !dbg !2841
  %3 = bitcast i8** %vec to i64*, !dbg !2842
  store i64 %2, i64* %3, align 8, !dbg !2842
  %word_num = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 2, !dbg !2843
  store i32 0, i32* %word_num, align 8, !dbg !2844
  %tobool = icmp eq i8 %conv, 0, !dbg !2845
  %4 = inttoptr i64 %2 to i64*, !dbg !2847
  br i1 %tobool, label %if.else, label %if.then, !dbg !2847

if.then:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 6, !dbg !2848
  store i64 0, i64* %word, align 8, !dbg !2849
  %base_conflict_id = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 5, !dbg !2850
  store i32 0, i32* %base_conflict_id, align 4, !dbg !2851
  %bit_num = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 4, !dbg !2852
  store i32 0, i32* %bit_num, align 8, !dbg !2853
  %size = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 3, !dbg !2854
  store i32 0, i32* %size, align 4, !dbg !2855
  br label %if.end19, !dbg !2856

if.else:                                          ; preds = %entry
  %min = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %allocno, i64 0, i32 21, !dbg !2857
  %5 = load i32, i32* %min, align 8, !dbg !2857
  %max = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %allocno, i64 0, i32 22, !dbg !2860
  %6 = load i32, i32* %max, align 4, !dbg !2860
  %cmp = icmp slt i32 %6, %5, !dbg !2861
  br i1 %cmp, label %if.then3, label %if.else5, !dbg !2862

if.then3:                                         ; preds = %if.else
  %size4 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 3, !dbg !2863
  store i32 0, i32* %size4, align 4, !dbg !2864
  br label %if.end, !dbg !2865

if.else5:                                         ; preds = %if.else
  %sub = sub nsw i32 %6, %5, !dbg !2866
  %add = add nsw i32 %sub, 64, !dbg !2867
  %div = sdiv i32 %add, 64, !dbg !2868
  %mul = shl nsw i32 %div, 3, !dbg !2869
  %size10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 3, !dbg !2870
  store i32 %mul, i32* %size10, align 4, !dbg !2871
  %7 = icmp ugt i32 %sub, -128
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  %8 = phi i1 [ %7, %if.else5 ], [ true, %if.then3 ]
  %bit_num11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 4, !dbg !2872
  store i32 0, i32* %bit_num11, align 8, !dbg !2873
  %9 = load i32, i32* %min, align 8, !dbg !2874
  %base_conflict_id13 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 5, !dbg !2875
  store i32 %9, i32* %base_conflict_id13, align 4, !dbg !2876
  br i1 %8, label %cond.end, label %cond.false, !dbg !2877

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %4, align 8, !dbg !2878
  br label %cond.end, !dbg !2877

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i64 [ %10, %cond.false ], [ 0, %if.end ], !dbg !2877
  %word18 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 6, !dbg !2879
  store i64 %cond, i64* %word18, align 8, !dbg !2880
  br label %if.end19

if.end19:                                         ; preds = %cond.end, %if.then
  ret void, !dbg !2881
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_allocno_conflict_iter_cond(%struct.ira_allocno_conflict_iterator* %i, %struct.ira_allocno** %a) unnamed_addr #0 !dbg !2882 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %i, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2887, metadata !DIExpression()), !dbg !2889
  %allocno_conflict_vec_p = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 0, !dbg !2890
  %0 = load i8, i8* %allocno_conflict_vec_p, align 8, !dbg !2890
  %tobool = icmp eq i8 %0, 0, !dbg !2892
  br i1 %tobool, label %for.cond.preheader, label %if.then, !dbg !2893

for.cond.preheader:                               ; preds = %entry
  %word = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 6, !dbg !2894
  %word_num3 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 2, !dbg !2898
  %size = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 3, !dbg !2900
  %bit_num = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 4, !dbg !2898
  %vec12 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 1, !dbg !2894
  %1 = bitcast i8** %vec12 to i64**, !dbg !2894
  %.pre = load i64, i64* %word, align 8, !dbg !2902
  br label %for.cond, !dbg !2903

if.then:                                          ; preds = %entry
  %vec = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 1, !dbg !2904
  %2 = bitcast i8** %vec to %struct.ira_allocno***, !dbg !2904
  %3 = load %struct.ira_allocno**, %struct.ira_allocno*** %2, align 8, !dbg !2904
  %word_num = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 2, !dbg !2906
  %4 = load i32, i32* %word_num, align 8, !dbg !2906
  %idxprom = zext i32 %4 to i64, !dbg !2907
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %3, i64 %idxprom, !dbg !2907
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !2888, metadata !DIExpression()), !dbg !2889
  %cmp = icmp eq %struct.ira_allocno* %5, null, !dbg !2908
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2910

if.end:                                           ; preds = %if.then
  store %struct.ira_allocno* %5, %struct.ira_allocno** %a, align 8, !dbg !2911
  br label %cleanup, !dbg !2912

for.cond:                                         ; preds = %for.cond.preheader, %if.end9
  %6 = phi i64 [ %.pre, %for.cond.preheader ], [ %10, %if.end9 ], !dbg !2902
  %cmp2 = icmp eq i64 %6, 0, !dbg !2913
  br i1 %cmp2, label %for.body, label %for.cond17.preheader, !dbg !2903

for.cond17.preheader:                             ; preds = %for.cond
  %.lcssa = phi i64 [ %6, %for.cond ], !dbg !2902
  br label %for.cond17, !dbg !2914

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %word_num3, align 8, !dbg !2916
  %inc = add i32 %7, 1, !dbg !2916
  store i32 %inc, i32* %word_num3, align 8, !dbg !2916
  %conv = zext i32 %inc to i64, !dbg !2917
  %mul = shl nuw nsw i64 %conv, 3, !dbg !2918
  %8 = load i32, i32* %size, align 4, !dbg !2919
  %conv5 = zext i32 %8 to i64, !dbg !2920
  %cmp6 = icmp ult i64 %mul, %conv5, !dbg !2921
  br i1 %cmp6, label %if.end9, label %cleanup.loopexit, !dbg !2922

if.end9:                                          ; preds = %for.body
  %mul11 = shl i32 %inc, 6, !dbg !2923
  store i32 %mul11, i32* %bit_num, align 8, !dbg !2924
  %9 = load i64*, i64** %1, align 8, !dbg !2925
  %arrayidx15 = getelementptr inbounds i64, i64* %9, i64 %conv, !dbg !2926
  %10 = load i64, i64* %arrayidx15, align 8, !dbg !2926
  store i64 %10, i64* %word, align 8, !dbg !2927
  br label %for.cond, !dbg !2928, !llvm.loop !2929

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body21
  %11 = phi i64 [ %.lcssa, %for.cond17.preheader ], [ %shr, %for.body21 ], !dbg !2931
  %and = and i64 %11, 1, !dbg !2933
  %cmp19 = icmp eq i64 %and, 0, !dbg !2934
  br i1 %cmp19, label %for.body21, label %for.end26, !dbg !2914

for.body21:                                       ; preds = %for.cond17
  %12 = load i32, i32* %bit_num, align 8, !dbg !2935
  %inc23 = add i32 %12, 1, !dbg !2935
  store i32 %inc23, i32* %bit_num, align 8, !dbg !2935
  %shr = lshr i64 %11, 1, !dbg !2936
  store i64 %shr, i64* %word, align 8, !dbg !2936
  br label %for.cond17, !dbg !2937, !llvm.loop !2938

for.end26:                                        ; preds = %for.cond17
  %13 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_conflict_id_allocno_map, align 8, !dbg !2940
  %14 = load i32, i32* %bit_num, align 8, !dbg !2941
  %base_conflict_id = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 5, !dbg !2942
  %15 = load i32, i32* %base_conflict_id, align 4, !dbg !2942
  %add = add i32 %14, %15, !dbg !2943
  %idxprom28 = zext i32 %add to i64, !dbg !2940
  %arrayidx29 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %13, i64 %idxprom28, !dbg !2940
  %16 = bitcast %struct.ira_allocno** %arrayidx29 to i64*, !dbg !2940
  %17 = load i64, i64* %16, align 8, !dbg !2940
  %18 = bitcast %struct.ira_allocno** %a to i64*, !dbg !2944
  store i64 %17, i64* %18, align 8, !dbg !2944
  br label %cleanup, !dbg !2945

cleanup.loopexit:                                 ; preds = %for.body
  br label %cleanup, !dbg !2946

cleanup:                                          ; preds = %cleanup.loopexit, %if.then, %for.end26, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ 1, %for.end26 ], [ 0, %if.then ], [ 0, %cleanup.loopexit ], !dbg !2947
  ret i8 %retval.0, !dbg !2946
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_conflict_iter_next(%struct.ira_allocno_conflict_iterator* %i) unnamed_addr #0 !dbg !2948 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_conflict_iterator* %i, metadata !2952, metadata !DIExpression()), !dbg !2953
  %allocno_conflict_vec_p = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 0, !dbg !2954
  %0 = load i8, i8* %allocno_conflict_vec_p, align 8, !dbg !2954
  %tobool = icmp eq i8 %0, 0, !dbg !2956
  br i1 %tobool, label %if.else, label %if.then, !dbg !2957

if.then:                                          ; preds = %entry
  %word_num = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 2, !dbg !2958
  %1 = load i32, i32* %word_num, align 8, !dbg !2959
  %inc = add i32 %1, 1, !dbg !2959
  store i32 %inc, i32* %word_num, align 8, !dbg !2959
  br label %if.end, !dbg !2960

if.else:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 6, !dbg !2961
  %2 = load i64, i64* %word, align 8, !dbg !2963
  %shr = lshr i64 %2, 1, !dbg !2963
  store i64 %shr, i64* %word, align 8, !dbg !2963
  %bit_num = getelementptr inbounds %struct.ira_allocno_conflict_iterator, %struct.ira_allocno_conflict_iterator* %i, i64 0, i32 4, !dbg !2964
  %3 = load i32, i32* %bit_num, align 8, !dbg !2965
  %inc1 = add i32 %3, 1, !dbg !2965
  store i32 %inc1, i32* %bit_num, align 8, !dbg !2965
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2966
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_hard_reg_set(%struct._IO_FILE* %file, i8* %title, i64 %set) unnamed_addr #5 !dbg !2967 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2971, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* %title, metadata !2972, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %set, metadata !2973, metadata !DIExpression()), !dbg !2976
  %call = tail call i32 @fputs(i8* %title, %struct._IO_FILE* %file) #6, !dbg !2977
  call void @llvm.dbg.value(metadata i32 -1, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()), !dbg !2976
  br label %for.cond, !dbg !2978

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2980
  %start.0 = phi i32 [ %start.3, %for.inc ], [ -1, %entry ], !dbg !2980
  call void @llvm.dbg.value(metadata i32 %start.0, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2974, metadata !DIExpression()), !dbg !2976
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2981
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2983

for.body:                                         ; preds = %for.cond
  %shl = shl i64 1, %indvars.iv, !dbg !2984
  %and = and i64 %shl, %set, !dbg !2984
  %tobool = icmp eq i64 %and, 0, !dbg !2984
  br i1 %tobool, label %if.end7, label %if.then, !dbg !2987

if.then:                                          ; preds = %for.body
  %cmp1 = icmp eq i64 %indvars.iv, 0, !dbg !2988
  br i1 %cmp1, label %if.then6, label %lor.lhs.false, !dbg !2991

lor.lhs.false:                                    ; preds = %if.then
  %0 = add nuw nsw i64 %indvars.iv, 4294967295, !dbg !2992
  %sh_prom2 = and i64 %0, 4294967295, !dbg !2992
  %shl3 = shl i64 1, %sh_prom2, !dbg !2992
  %and4 = and i64 %shl3, %set, !dbg !2992
  %tobool5 = icmp eq i64 %and4, 0, !dbg !2992
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2993

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2975, metadata !DIExpression()), !dbg !2976
  %1 = trunc i64 %indvars.iv to i32, !dbg !2994
  br label %if.end7, !dbg !2994

if.end7:                                          ; preds = %lor.lhs.false, %for.body, %if.then6
  %start.2 = phi i32 [ %start.0, %for.body ], [ %1, %if.then6 ], [ %start.0, %lor.lhs.false ], !dbg !2980
  call void @llvm.dbg.value(metadata i32 %start.2, metadata !2975, metadata !DIExpression()), !dbg !2976
  %cmp8 = icmp sgt i32 %start.2, -1, !dbg !2995
  br i1 %cmp8, label %land.lhs.true, label %for.inc, !dbg !2997

land.lhs.true:                                    ; preds = %if.end7
  %cmp9 = icmp eq i64 %indvars.iv, 52, !dbg !2998
  br i1 %cmp9, label %if.then15, label %lor.lhs.false10, !dbg !2999

lor.lhs.false10:                                  ; preds = %land.lhs.true
  br i1 %tobool, label %if.then15, label %for.inc, !dbg !3000

if.then15:                                        ; preds = %lor.lhs.false10, %land.lhs.true
  %2 = add nsw i64 %indvars.iv, -1, !dbg !3001
  %3 = trunc i64 %2 to i32, !dbg !3004
  %cmp17 = icmp eq i32 %start.2, %3, !dbg !3004
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !3005

if.then18:                                        ; preds = %if.then15
  %4 = trunc i64 %2 to i32, !dbg !3006
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %4) #6, !dbg !3006
  br label %for.inc, !dbg !3006

if.else:                                          ; preds = %if.then15
  %5 = trunc i64 %indvars.iv to i32, !dbg !3007
  %6 = add i32 %5, -2, !dbg !3007
  %cmp21 = icmp eq i32 %start.2, %6, !dbg !3007
  br i1 %cmp21, label %if.then22, label %if.else24, !dbg !3009

if.then22:                                        ; preds = %if.else
  %add = add nsw i32 %start.2, 1, !dbg !3010
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %start.2, i32 %add) #6, !dbg !3011
  br label %for.inc, !dbg !3011

if.else24:                                        ; preds = %if.else
  %7 = trunc i64 %2 to i32, !dbg !3012
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %start.2, i32 %7) #6, !dbg !3012
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false10, %if.end7, %if.then22, %if.else24, %if.then18
  %start.3 = phi i32 [ %start.2, %lor.lhs.false10 ], [ %start.2, %if.end7 ], [ -1, %if.then22 ], [ -1, %if.else24 ], [ -1, %if.then18 ], !dbg !3013
  call void @llvm.dbg.value(metadata i32 %start.3, metadata !2975, metadata !DIExpression()), !dbg !2976
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3014
  call void @llvm.dbg.value(metadata i32 undef, metadata !2974, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2976
  br label %for.cond, !dbg !3015, !llvm.loop !3016

for.end:                                          ; preds = %for.cond
  %call30 = tail call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !3018
  ret void, !dbg !3019
}

declare dso_local %struct.sparseset_def* @sparseset_alloc(i32) local_unnamed_addr #2

declare dso_local i8* @ira_allocate(i64) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_set_bit(%struct.sparseset_def* %s, i32 %e) unnamed_addr #0 !dbg !3020 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3024, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 %e, metadata !3025, metadata !DIExpression()), !dbg !3026
  %call = tail call fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %s, i32 %e) #7, !dbg !3027
  %tobool = icmp eq i8 %call, 0, !dbg !3027
  br i1 %tobool, label %if.then, label %if.end, !dbg !3029

if.then:                                          ; preds = %entry
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !3030
  %0 = load i32, i32* %members, align 8, !dbg !3031
  %inc = add i32 %0, 1, !dbg !3031
  store i32 %inc, i32* %members, align 8, !dbg !3031
  tail call fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %e, i32 %0) #7, !dbg !3032
  br label %if.end, !dbg !3032

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3033
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_iter_init(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3034 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3038, metadata !DIExpression()), !dbg !3039
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3040
  store i32 0, i32* %iter, align 8, !dbg !3041
  %iter_inc = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 5, !dbg !3042
  store i8 1, i8* %iter_inc, align 4, !dbg !3043
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !3044
  store i8 1, i8* %iterating, align 1, !dbg !3045
  ret void, !dbg !3046
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sparseset_iter_p(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3047 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3051, metadata !DIExpression()), !dbg !3052
  %iterating = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 6, !dbg !3053
  %0 = load i8, i8* %iterating, align 1, !dbg !3053
  %tobool = icmp eq i8 %0, 0, !dbg !3055
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3056

land.lhs.true:                                    ; preds = %entry
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3057
  %1 = load i32, i32* %iter, align 8, !dbg !3057
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !3058
  %2 = load i32, i32* %members, align 8, !dbg !3058
  %cmp = icmp ult i32 %1, %2, !dbg !3059
  br i1 %cmp, label %return, label %if.else, !dbg !3060

if.else:                                          ; preds = %entry, %land.lhs.true
  store i8 0, i8* %iterating, align 1, !dbg !3061
  br label %return, !dbg !3062

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true ], !dbg !3063
  ret i8 %retval.0, !dbg !3064
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @sparseset_iter_elm(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3065 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3069, metadata !DIExpression()), !dbg !3070
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !3071
  %0 = load i32*, i32** %dense, align 8, !dbg !3071
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3072
  %1 = load i32, i32* %iter, align 8, !dbg !3072
  %idxprom = zext i32 %1 to i64, !dbg !3073
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !3073
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3073
  ret i32 %2, !dbg !3074
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_iter_next(%struct.sparseset_def* %s) unnamed_addr #0 !dbg !3075 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3077, metadata !DIExpression()), !dbg !3078
  %iter_inc = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 5, !dbg !3079
  %0 = load i8, i8* %iter_inc, align 4, !dbg !3079
  %conv = zext i8 %0 to i32, !dbg !3080
  %iter = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 4, !dbg !3081
  %1 = load i32, i32* %iter, align 8, !dbg !3082
  %add = add i32 %1, %conv, !dbg !3082
  store i32 %add, i32* %iter, align 8, !dbg !3082
  store i8 1, i8* %iter_inc, align 4, !dbg !3083
  ret void, !dbg !3084
}

declare dso_local void @sparseset_clear_bit(%struct.sparseset_def*, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(%struct.sparseset_def* %s, i32 %e) unnamed_addr #0 !dbg !3085 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 %e, metadata !3090, metadata !DIExpression()), !dbg !3092
  %size = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 3, !dbg !3093
  %0 = load i32, i32* %size, align 4, !dbg !3093
  %cmp = icmp ugt i32 %0, %e, !dbg !3093
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3093

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3093
  br label %cond.end, !dbg !3093

cond.end:                                         ; preds = %entry, %cond.true
  %sparse = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 1, !dbg !3094
  %1 = load i32*, i32** %sparse, align 8, !dbg !3094
  %idxprom = zext i32 %e to i64, !dbg !3095
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3095
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %2, metadata !3091, metadata !DIExpression()), !dbg !3092
  %members = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 2, !dbg !3096
  %3 = load i32, i32* %members, align 8, !dbg !3096
  %cmp1 = icmp ult i32 %2, %3, !dbg !3097
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !3098

land.rhs:                                         ; preds = %cond.end
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !3099
  %4 = load i32*, i32** %dense, align 8, !dbg !3099
  %idxprom2 = zext i32 %2 to i64, !dbg !3100
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i64 %idxprom2, !dbg !3100
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !3100
  %cmp4 = icmp eq i32 %5, %e, !dbg !3101
  %phitmp = zext i1 %cmp4 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %6 = phi i8 [ 0, %cond.end ], [ %phitmp, %land.rhs ]
  ret i8 %6, !dbg !3102
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sparseset_insert_bit(%struct.sparseset_def* %s, i32 %e, i32 %idx) unnamed_addr #0 !dbg !3103 {
entry:
  call void @llvm.dbg.value(metadata %struct.sparseset_def* %s, metadata !3107, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 %e, metadata !3108, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 %idx, metadata !3109, metadata !DIExpression()), !dbg !3110
  %sparse = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 1, !dbg !3111
  %0 = load i32*, i32** %sparse, align 8, !dbg !3111
  %idxprom = zext i32 %e to i64, !dbg !3112
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !3112
  store i32 %idx, i32* %arrayidx, align 4, !dbg !3113
  %dense = getelementptr inbounds %struct.sparseset_def, %struct.sparseset_def* %s, i64 0, i32 0, !dbg !3114
  %1 = load i32*, i32** %dense, align 8, !dbg !3114
  %idxprom1 = zext i32 %idx to i64, !dbg !3115
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %idxprom1, !dbg !3115
  store i32 %e, i32* %arrayidx2, align 4, !dbg !3116
  ret void, !dbg !3117
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @build_allocno_conflicts(%struct.ira_allocno* %a) unnamed_addr #5 !dbg !3118 {
entry:
  %i = alloca i32, align 4
  %asi = alloca %struct.ira_allocno_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a, metadata !3122, metadata !DIExpression()), !dbg !3143
  %0 = bitcast i32* %i to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3144
  %1 = bitcast %struct.ira_allocno_set_iterator* %asi to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3145
  %2 = load i64**, i64*** @conflicts, align 8, !dbg !3146
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 0, !dbg !3147
  %3 = load i32, i32* %num, align 8, !dbg !3147
  %idxprom = sext i32 %3 to i64, !dbg !3146
  %arrayidx = getelementptr inbounds i64*, i64** %2, i64 %idxprom, !dbg !3146
  %4 = load i64*, i64** %arrayidx, align 8, !dbg !3146
  call void @llvm.dbg.value(metadata i64* %4, metadata !3132, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()), !dbg !3143
  %min = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 21, !dbg !3148
  %5 = load i32, i32* %min, align 8, !dbg !3148
  %max = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 22, !dbg !3148
  %6 = load i32, i32* %max, align 4, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %asi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call fastcc void @ira_allocno_set_iter_init(%struct.ira_allocno_set_iterator* nonnull %asi, i64* %4, i32 %5, i32 %6) #7, !dbg !3148
  br label %for.cond, !dbg !3148

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3143
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3124, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32* %i, metadata !3123, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %asi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  %call = call fastcc zeroext i8 @ira_allocno_set_iter_cond(%struct.ira_allocno_set_iterator* nonnull %asi, i32* nonnull %i) #7, !dbg !3150
  %tobool = icmp eq i8 %call, 0, !dbg !3148
  br i1 %tobool, label %for.end, label %for.body, !dbg !3148

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_conflict_id_allocno_map, align 8, !dbg !3152
  %8 = load i32, i32* %i, align 4, !dbg !3154
  call void @llvm.dbg.value(metadata i32 %8, metadata !3123, metadata !DIExpression()), !dbg !3143
  %idxprom1 = sext i32 %8 to i64, !dbg !3152
  %arrayidx2 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %7, i64 %idxprom1, !dbg !3152
  %9 = bitcast %struct.ira_allocno** %arrayidx2 to i64*, !dbg !3152
  %10 = load i64, i64* %9, align 8, !dbg !3152
  %11 = load %struct.ira_allocno**, %struct.ira_allocno*** @collected_conflict_allocnos, align 8, !dbg !3155
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i32 undef, metadata !3124, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3143
  %arrayidx4 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %11, i64 %indvars.iv, !dbg !3155
  %12 = bitcast %struct.ira_allocno** %arrayidx4 to i64*, !dbg !3157
  store i64 %10, i64* %12, align 8, !dbg !3157
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %asi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call fastcc void @ira_allocno_set_iter_next(%struct.ira_allocno_set_iterator* nonnull %asi) #7, !dbg !3150
  br label %for.cond, !dbg !3150, !llvm.loop !3158

for.end:                                          ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !3143
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !3124, metadata !DIExpression()), !dbg !3143
  %13 = trunc i64 %indvars.iv.lcssa to i32, !dbg !3143
  call void @llvm.dbg.value(metadata i32 %13, metadata !3124, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %13, metadata !3124, metadata !DIExpression()), !dbg !3143
  %call5 = call zeroext i8 @ira_conflict_vector_profitable_p(%struct.ira_allocno* %a, i32 %13) #6, !dbg !3160
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3160
  br i1 %tobool6, label %if.else, label %if.then, !dbg !3162

if.then:                                          ; preds = %for.end
  call void @ira_allocate_allocno_conflict_vec(%struct.ira_allocno* %a, i32 %13) #6, !dbg !3163
  %conflict_allocno_array = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 23, !dbg !3165
  %14 = bitcast i8** %conflict_allocno_array to %struct.ira_allocno***, !dbg !3165
  %15 = load %struct.ira_allocno**, %struct.ira_allocno*** %14, align 8, !dbg !3165
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %15, metadata !3131, metadata !DIExpression()), !dbg !3143
  %16 = bitcast %struct.ira_allocno** %15 to i8*, !dbg !3166
  %17 = load i8*, i8** bitcast (%struct.ira_allocno*** @collected_conflict_allocnos to i8**), align 8, !dbg !3167
  %conv = and i64 %indvars.iv.lcssa, 4294967295, !dbg !3168
  %mul = shl nuw nsw i64 %conv, 3, !dbg !3169
  %call7 = call i8* @memcpy(i8* %16, i8* %17, i64 %mul) #6, !dbg !3170
  %arrayidx9 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %15, i64 %conv, !dbg !3171
  store %struct.ira_allocno* null, %struct.ira_allocno** %arrayidx9, align 8, !dbg !3172
  %conflict_allocnos_num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 28, !dbg !3173
  store i32 %13, i32* %conflict_allocnos_num, align 8, !dbg !3174
  br label %if.end24, !dbg !3175

if.else:                                          ; preds = %for.end
  %18 = load i64**, i64*** @conflicts, align 8, !dbg !3176
  %19 = load i32, i32* %num, align 8, !dbg !3178
  %idxprom11 = sext i32 %19 to i64, !dbg !3176
  %arrayidx12 = getelementptr inbounds i64*, i64** %18, i64 %idxprom11, !dbg !3176
  %20 = bitcast i64** %arrayidx12 to i64*, !dbg !3176
  %21 = load i64, i64* %20, align 8, !dbg !3176
  %conflict_allocno_array13 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 23, !dbg !3179
  %22 = bitcast i8** %conflict_allocno_array13 to i64*, !dbg !3180
  store i64 %21, i64* %22, align 8, !dbg !3180
  %23 = load i32, i32* %max, align 4, !dbg !3181
  %24 = load i32, i32* %min, align 8, !dbg !3183
  %cmp = icmp slt i32 %23, %24, !dbg !3184
  br i1 %cmp, label %if.end, label %if.else18, !dbg !3185

if.else18:                                        ; preds = %if.else
  %sub = sub nsw i32 %23, %24, !dbg !3186
  %add = add nsw i32 %sub, 64, !dbg !3187
  %div = sdiv i32 %add, 64, !dbg !3188
  call void @llvm.dbg.value(metadata i32 %div, metadata !3126, metadata !DIExpression()), !dbg !3143
  %phitmp1 = shl nsw i32 %div, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else18
  %conflict_bit_vec_words_num.0 = phi i32 [ %phitmp1, %if.else18 ], [ 0, %if.else ]
  %conflict_allocno_array_size = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 25, !dbg !3189
  store i32 %conflict_bit_vec_words_num.0, i32* %conflict_allocno_array_size, align 4, !dbg !3190
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 6, !dbg !3191
  %25 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !3191
  %parent25 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %25, i64 0, i32 6, !dbg !3192
  %26 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent25, align 8, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %26, metadata !3127, metadata !DIExpression()), !dbg !3143
  %cap = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 16, !dbg !3193
  %27 = load %struct.ira_allocno*, %struct.ira_allocno** %cap, align 8, !dbg !3193
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %27, metadata !3128, metadata !DIExpression()), !dbg !3143
  %cmp26 = icmp eq %struct.ira_allocno* %27, null, !dbg !3195
  br i1 %cmp26, label %land.lhs.true, label %if.end35, !dbg !3196

land.lhs.true:                                    ; preds = %if.end24
  %cmp28 = icmp eq %struct.ira_loop_tree_node* %26, null, !dbg !3197
  br i1 %cmp28, label %cleanup, label %lor.lhs.false, !dbg !3198

lor.lhs.false:                                    ; preds = %land.lhs.true
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %26, i64 0, i32 9, !dbg !3199
  %28 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !3199
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a, i64 0, i32 1, !dbg !3200
  %29 = load i32, i32* %regno, align 4, !dbg !3200
  %idxprom30 = sext i32 %29 to i64, !dbg !3201
  %arrayidx31 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %28, i64 %idxprom30, !dbg !3201
  %30 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx31, align 8, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %30, metadata !3128, metadata !DIExpression()), !dbg !3143
  %cmp32 = icmp eq %struct.ira_allocno* %30, null, !dbg !3202
  br i1 %cmp32, label %cleanup, label %if.end35, !dbg !3203

if.end35:                                         ; preds = %lor.lhs.false, %if.end24
  %parent_a.0 = phi %struct.ira_allocno* [ %30, %lor.lhs.false ], [ %27, %if.end24 ], !dbg !3204
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %parent_a.0, metadata !3128, metadata !DIExpression()), !dbg !3143
  %num36 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %parent_a.0, i64 0, i32 0, !dbg !3205
  %31 = load i32, i32* %num36, align 8, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %31, metadata !3125, metadata !DIExpression()), !dbg !3143
  %32 = load i32, i32* %min, align 8, !dbg !3206
  %33 = load i32, i32* %max, align 4, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %asi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call fastcc void @ira_allocno_set_iter_init(%struct.ira_allocno_set_iterator* nonnull %asi, i64* %4, i32 %32, i32 %33) #7, !dbg !3206
  %regno_allocno_map49 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %26, i64 0, i32 9, !dbg !3208
  %min57 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %parent_a.0, i64 0, i32 21, !dbg !3212
  %idxprom59 = sext i32 %31 to i64, !dbg !3212
  br label %for.cond39, !dbg !3206

for.cond39:                                       ; preds = %for.inc67, %if.end35
  call void @llvm.dbg.value(metadata i32* %i, metadata !3123, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %asi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  %call40 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(%struct.ira_allocno_set_iterator* nonnull %asi, i32* nonnull %i) #7, !dbg !3213
  %tobool41 = icmp eq i8 %call40, 0, !dbg !3206
  br i1 %tobool41, label %cleanup.loopexit, label %for.body42, !dbg !3206

for.body42:                                       ; preds = %for.cond39
  %34 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_conflict_id_allocno_map, align 8, !dbg !3214
  %35 = load i32, i32* %i, align 4, !dbg !3215
  call void @llvm.dbg.value(metadata i32 %35, metadata !3123, metadata !DIExpression()), !dbg !3143
  %idxprom43 = sext i32 %35 to i64, !dbg !3214
  %arrayidx44 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %34, i64 %idxprom43, !dbg !3214
  %36 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx44, align 8, !dbg !3214
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %36, metadata !3129, metadata !DIExpression()), !dbg !3143
  %cap45 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %36, i64 0, i32 16, !dbg !3216
  %37 = load %struct.ira_allocno*, %struct.ira_allocno** %cap45, align 8, !dbg !3216
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %37, metadata !3130, metadata !DIExpression()), !dbg !3143
  %cmp46 = icmp eq %struct.ira_allocno* %37, null, !dbg !3217
  br i1 %cmp46, label %land.lhs.true48, label %if.end56, !dbg !3218

land.lhs.true48:                                  ; preds = %for.body42
  %38 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map49, align 8, !dbg !3219
  %regno50 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %36, i64 0, i32 1, !dbg !3220
  %39 = load i32, i32* %regno50, align 4, !dbg !3220
  %idxprom51 = sext i32 %39 to i64, !dbg !3221
  %arrayidx52 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %38, i64 %idxprom51, !dbg !3221
  %40 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx52, align 8, !dbg !3221
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %40, metadata !3130, metadata !DIExpression()), !dbg !3143
  %cmp53 = icmp eq %struct.ira_allocno* %40, null, !dbg !3222
  br i1 %cmp53, label %for.inc67, label %if.end56, !dbg !3223

if.end56:                                         ; preds = %land.lhs.true48, %for.body42
  %another_parent_a.0 = phi %struct.ira_allocno* [ %40, %land.lhs.true48 ], [ %37, %for.body42 ], !dbg !3208
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %another_parent_a.0, metadata !3130, metadata !DIExpression()), !dbg !3143
  %conflict_id = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %another_parent_a.0, i64 0, i32 24, !dbg !3224
  %41 = load i32, i32* %conflict_id, align 8, !dbg !3224
  %42 = load i32, i32* %min57, align 8, !dbg !3224
  %sub58 = sub nsw i32 %41, %42, !dbg !3224
  %rem = and i32 %sub58, 63, !dbg !3224
  %sh_prom = zext i32 %rem to i64, !dbg !3224
  %shl = shl i64 1, %sh_prom, !dbg !3224
  %43 = load i64**, i64*** @conflicts, align 8, !dbg !3224
  %arrayidx60 = getelementptr inbounds i64*, i64** %43, i64 %idxprom59, !dbg !3224
  %44 = load i64*, i64** %arrayidx60, align 8, !dbg !3224
  %div64 = lshr i32 %sub58, 6, !dbg !3224
  %idxprom65 = zext i32 %div64 to i64, !dbg !3224
  %arrayidx66 = getelementptr inbounds i64, i64* %44, i64 %idxprom65, !dbg !3224
  %45 = load i64, i64* %arrayidx66, align 8, !dbg !3224
  %or = or i64 %45, %shl, !dbg !3224
  store i64 %or, i64* %arrayidx66, align 8, !dbg !3224
  br label %for.inc67, !dbg !3225

for.inc67:                                        ; preds = %land.lhs.true48, %if.end56
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %asi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call fastcc void @ira_allocno_set_iter_next(%struct.ira_allocno_set_iterator* nonnull %asi) #7, !dbg !3213
  br label %for.cond39, !dbg !3213, !llvm.loop !3226

cleanup.loopexit:                                 ; preds = %for.cond39
  br label %cleanup, !dbg !3228

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3228
  ret void, !dbg !3228
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_set_iter_init(%struct.ira_allocno_set_iterator* %i, i64* %vec, i32 %min, i32 %max) unnamed_addr #0 !dbg !3229 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %i, metadata !3234, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64* %vec, metadata !3235, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 %min, metadata !3236, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 %max, metadata !3237, metadata !DIExpression()), !dbg !3238
  %vec1 = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 0, !dbg !3239
  store i64* %vec, i64** %vec1, align 8, !dbg !3240
  %word_num = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 1, !dbg !3241
  store i32 0, i32* %word_num, align 8, !dbg !3242
  %cmp = icmp slt i32 %max, %min, !dbg !3243
  %sub = sub nsw i32 %max, %min, !dbg !3244
  %add = add nsw i32 %sub, 1, !dbg !3244
  %cond = select i1 %cmp, i32 0, i32 %add, !dbg !3244
  %nel = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 2, !dbg !3245
  store i32 %cond, i32* %nel, align 4, !dbg !3246
  %start_val = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 4, !dbg !3247
  store i32 %min, i32* %start_val, align 4, !dbg !3248
  %bit_num = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 3, !dbg !3249
  store i32 0, i32* %bit_num, align 8, !dbg !3250
  %cmp3 = icmp eq i32 %cond, 0, !dbg !3251
  br i1 %cmp3, label %cond.end6, label %cond.false5, !dbg !3252

cond.false5:                                      ; preds = %entry
  %0 = load i64, i64* %vec, align 8, !dbg !3253
  br label %cond.end6, !dbg !3252

cond.end6:                                        ; preds = %entry, %cond.false5
  %cond7 = phi i64 [ %0, %cond.false5 ], [ 0, %entry ], !dbg !3252
  %word = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 5, !dbg !3254
  store i64 %cond7, i64* %word, align 8, !dbg !3255
  ret void, !dbg !3256
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_allocno_set_iter_cond(%struct.ira_allocno_set_iterator* %i, i32* %n) unnamed_addr #0 !dbg !3257 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %i, metadata !3261, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32* %n, metadata !3262, metadata !DIExpression()), !dbg !3263
  %word = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 5, !dbg !3264
  %word_num = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 1, !dbg !3267
  %bit_num = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 3, !dbg !3267
  %nel = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 2, !dbg !3269
  %vec = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 0, !dbg !3264
  %.pre = load i64, i64* %word, align 8, !dbg !3271
  br label %for.cond, !dbg !3272

for.cond:                                         ; preds = %for.inc, %entry
  %0 = phi i64 [ %4, %for.inc ], [ %.pre, %entry ], !dbg !3271
  %cmp = icmp eq i64 %0, 0, !dbg !3273
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !3274

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa4 = phi i64 [ %0, %for.cond ], !dbg !3271
  %.pre1 = load i32, i32* %bit_num, align 8, !dbg !3263
  br label %for.cond6, !dbg !3275

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %word_num, align 8, !dbg !3277
  %inc = add i32 %1, 1, !dbg !3277
  store i32 %inc, i32* %word_num, align 8, !dbg !3277
  %mul = shl i32 %inc, 6, !dbg !3278
  store i32 %mul, i32* %bit_num, align 8, !dbg !3279
  %2 = load i32, i32* %nel, align 4, !dbg !3280
  %cmp3 = icmp ult i32 %mul, %2, !dbg !3281
  br i1 %cmp3, label %for.inc, label %return.loopexit, !dbg !3282

for.inc:                                          ; preds = %for.body
  %3 = load i64*, i64** %vec, align 8, !dbg !3283
  %idxprom = zext i32 %inc to i64, !dbg !3284
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !3284
  %4 = load i64, i64* %arrayidx, align 8, !dbg !3284
  store i64 %4, i64* %word, align 8, !dbg !3285
  br label %for.cond, !dbg !3286, !llvm.loop !3287

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %5 = phi i32 [ %.pre1, %for.cond6.preheader ], [ %inc11, %for.body9 ], !dbg !3263
  %6 = phi i64 [ %.lcssa4, %for.cond6.preheader ], [ %shr, %for.body9 ], !dbg !3289
  %and = and i64 %6, 1, !dbg !3291
  %cmp8 = icmp eq i64 %and, 0, !dbg !3292
  br i1 %cmp8, label %for.body9, label %for.end14, !dbg !3275

for.body9:                                        ; preds = %for.cond6
  %inc11 = add i32 %5, 1, !dbg !3293
  store i32 %inc11, i32* %bit_num, align 8, !dbg !3293
  %shr = lshr i64 %6, 1, !dbg !3294
  store i64 %shr, i64* %word, align 8, !dbg !3294
  br label %for.cond6, !dbg !3295, !llvm.loop !3296

for.end14:                                        ; preds = %for.cond6
  %.lcssa = phi i32 [ %5, %for.cond6 ], !dbg !3263
  %start_val = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 4, !dbg !3298
  %7 = load i32, i32* %start_val, align 4, !dbg !3298
  %add = add nsw i32 %.lcssa, %7, !dbg !3299
  store i32 %add, i32* %n, align 4, !dbg !3300
  br label %return, !dbg !3301

return.loopexit:                                  ; preds = %for.body
  br label %return, !dbg !3302

return:                                           ; preds = %return.loopexit, %for.end14
  %retval.0 = phi i8 [ 1, %for.end14 ], [ 0, %return.loopexit ], !dbg !3263
  ret i8 %retval.0, !dbg !3302
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_set_iter_next(%struct.ira_allocno_set_iterator* %i) unnamed_addr #0 !dbg !3303 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_set_iterator* %i, metadata !3307, metadata !DIExpression()), !dbg !3308
  %word = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 5, !dbg !3309
  %0 = load i64, i64* %word, align 8, !dbg !3310
  %shr = lshr i64 %0, 1, !dbg !3310
  store i64 %shr, i64* %word, align 8, !dbg !3310
  %bit_num = getelementptr inbounds %struct.ira_allocno_set_iterator, %struct.ira_allocno_set_iterator* %i, i64 0, i32 3, !dbg !3311
  %1 = load i32, i32* %bit_num, align 8, !dbg !3312
  %inc = add i32 %1, 1, !dbg !3312
  store i32 %inc, i32* %bit_num, align 8, !dbg !3312
  ret void, !dbg !3313
}

declare dso_local zeroext i8 @ira_conflict_vector_profitable_p(%struct.ira_allocno*, i32) local_unnamed_addr #2

declare dso_local void @ira_allocate_allocno_conflict_vec(%struct.ira_allocno*, i32) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_insn_allocno_copies(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !3314 {
entry:
  %bound_p = alloca [30 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3318, metadata !DIExpression()), !dbg !3332
  %0 = getelementptr inbounds [30 x i8], [30 x i8]* %bound_p, i64 0, i64 0, !dbg !3333
  call void @llvm.lifetime.start.p0i8(i64 30, i8* nonnull %0) #8, !dbg !3333
  call void @llvm.dbg.declare(metadata [30 x i8]* %bound_p, metadata !3324, metadata !DIExpression()), !dbg !3334
  %1 = load i32, i32* @optimize_size, align 4, !dbg !3335
  %tobool = icmp eq i32 %1, 0, !dbg !3335
  br i1 %tobool, label %lor.lhs.false, label %cond.end13, !dbg !3335

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3335
  %tobool1 = icmp eq i32 %2, 0, !dbg !3335
  br i1 %tobool1, label %cond.false, label %land.lhs.true, !dbg !3335

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3335
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3335
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3335
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !3335
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3335
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 8, !dbg !3335
  %6 = load i64, i64* %count, align 8, !dbg !3335
  %tobool2 = icmp eq i64 %6, 0, !dbg !3335
  br i1 %tobool2, label %cond.end13, label %cond.false, !dbg !3335

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3335
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3335
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3335
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 11, !dbg !3335
  %8 = load i32, i32* %frequency, align 8, !dbg !3335
  %.off = add i32 %8, 9, !dbg !3335
  %9 = icmp ugt i32 %.off, 18, !dbg !3335
  br i1 %9, label %cond.true4, label %cond.end13, !dbg !3335

cond.true4:                                       ; preds = %cond.false
  %div11 = sdiv i32 %8, 10, !dbg !3335
  br label %cond.end13, !dbg !3335

cond.end13:                                       ; preds = %land.lhs.true, %entry, %cond.true4, %cond.false
  %cond14 = phi i32 [ 1000, %land.lhs.true ], [ 1000, %entry ], [ %div11, %cond.true4 ], [ 1, %cond.false ], !dbg !3335
  call void @llvm.dbg.value(metadata i32 %cond14, metadata !3331, metadata !DIExpression()), !dbg !3332
  %cmp = icmp eq i32 %cond14, 0, !dbg !3336
  %spec.select = select i1 %cmp, i32 1, i32 %cond14, !dbg !3338
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3331, metadata !DIExpression()), !dbg !3332
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3339
  %bf.load = load i32, i32* %10, align 8, !dbg !3339
  %bf.clear = and i32 %bf.load, 65535, !dbg !3339
  %cmp15 = icmp eq i32 %bf.clear, 8, !dbg !3339
  br i1 %cmp15, label %cond.true28, label %lor.lhs.false16, !dbg !3339

lor.lhs.false16:                                  ; preds = %cond.end13
  %cmp19 = icmp eq i32 %bf.clear, 7, !dbg !3339
  br i1 %cmp19, label %cond.true28, label %lor.lhs.false20, !dbg !3339

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %cmp23 = icmp eq i32 %bf.clear, 9, !dbg !3339
  br i1 %cmp23, label %cond.true28, label %lor.lhs.false24, !dbg !3339

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %cmp27 = icmp eq i32 %bf.clear, 10, !dbg !3339
  br i1 %cmp27, label %cond.true28, label %cond.end48, !dbg !3339

cond.true28:                                      ; preds = %lor.lhs.false24, %lor.lhs.false20, %lor.lhs.false16, %cond.end13
  %u29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3339
  %11 = getelementptr inbounds %union.u, %union.u* %u29, i64 1, i32 0, i32 0, i64 0, !dbg !3339
  %12 = bitcast %union.rtunion_def* %11 to i32**, !dbg !3339
  %13 = load i32*, i32** %12, align 8, !dbg !3339
  %bf.load32 = load i32, i32* %13, align 8, !dbg !3339
  %bf.clear33 = and i32 %bf.load32, 65535, !dbg !3339
  %cmp34 = icmp eq i32 %bf.clear33, 23, !dbg !3339
  %14 = bitcast i32* %13 to %struct.rtx_def*, !dbg !3339
  br i1 %cmp34, label %cond.end48, label %cond.false40, !dbg !3339

cond.false40:                                     ; preds = %cond.true28
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %14) #6, !dbg !3339
  br label %cond.end48, !dbg !3339

cond.end48:                                       ; preds = %lor.lhs.false24, %cond.false40, %cond.true28
  %cond49 = phi %struct.rtx_def* [ %call, %cond.false40 ], [ %14, %cond.true28 ], [ null, %lor.lhs.false24 ], !dbg !3339
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond49, metadata !3319, metadata !DIExpression()), !dbg !3332
  %cmp50 = icmp eq %struct.rtx_def* %cond49, null, !dbg !3341
  br i1 %cmp50, label %if.end146, label %land.lhs.true51, !dbg !3342

land.lhs.true51:                                  ; preds = %cond.end48
  %arrayidx54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond49, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3343
  %15 = bitcast %union.rtunion_def* %arrayidx54 to i32**, !dbg !3343
  %16 = load i32*, i32** %15, align 8, !dbg !3343
  %bf.load56 = load i32, i32* %16, align 8, !dbg !3343
  %bf.clear57 = and i32 %bf.load56, 65535, !dbg !3343
  %cmp58 = icmp eq i32 %bf.clear57, 37, !dbg !3343
  br i1 %cmp58, label %land.lhs.true79, label %lor.lhs.false59, !dbg !3343

lor.lhs.false59:                                  ; preds = %land.lhs.true51
  %cmp66 = icmp eq i32 %bf.clear57, 39, !dbg !3343
  br i1 %cmp66, label %land.lhs.true67, label %if.end146, !dbg !3343

land.lhs.true67:                                  ; preds = %lor.lhs.false59
  %arrayidx74 = getelementptr inbounds i32, i32* %16, i64 2, !dbg !3343
  %17 = bitcast i32* %arrayidx74 to i32**, !dbg !3343
  %18 = load i32*, i32** %17, align 8, !dbg !3343
  %bf.load76 = load i32, i32* %18, align 8, !dbg !3343
  %bf.clear77 = and i32 %bf.load76, 65535, !dbg !3343
  %cmp78 = icmp eq i32 %bf.clear77, 37, !dbg !3343
  br i1 %cmp78, label %land.lhs.true79, label %if.end146, !dbg !3344

land.lhs.true79:                                  ; preds = %land.lhs.true67, %land.lhs.true51
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond49, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3345
  %20 = bitcast %union.rtunion_def* %19 to i32**, !dbg !3345
  %21 = load i32*, i32** %20, align 8, !dbg !3345
  %bf.load84 = load i32, i32* %21, align 8, !dbg !3345
  %bf.clear85 = and i32 %bf.load84, 65535, !dbg !3345
  %cmp86 = icmp eq i32 %bf.clear85, 37, !dbg !3345
  br i1 %cmp86, label %land.lhs.true107, label %lor.lhs.false87, !dbg !3345

lor.lhs.false87:                                  ; preds = %land.lhs.true79
  %cmp94 = icmp eq i32 %bf.clear85, 39, !dbg !3345
  br i1 %cmp94, label %land.lhs.true95, label %if.end146, !dbg !3345

land.lhs.true95:                                  ; preds = %lor.lhs.false87
  %arrayidx102 = getelementptr inbounds i32, i32* %21, i64 2, !dbg !3345
  %22 = bitcast i32* %arrayidx102 to i32**, !dbg !3345
  %23 = load i32*, i32** %22, align 8, !dbg !3345
  %bf.load104 = load i32, i32* %23, align 8, !dbg !3345
  %bf.clear105 = and i32 %bf.load104, 65535, !dbg !3345
  %cmp106 = icmp eq i32 %bf.clear105, 37, !dbg !3345
  br i1 %cmp106, label %land.lhs.true107, label %if.end146, !dbg !3346

land.lhs.true107:                                 ; preds = %land.lhs.true95, %land.lhs.true79
  %call108 = tail call i32 @side_effects_p(%struct.rtx_def* nonnull %cond49) #6, !dbg !3347
  %tobool109 = icmp eq i32 %call108, 0, !dbg !3347
  br i1 %tobool109, label %land.lhs.true110, label %if.end146, !dbg !3348

land.lhs.true110:                                 ; preds = %land.lhs.true107
  %24 = load i32*, i32** %20, align 8, !dbg !3349
  %bf.load115 = load i32, i32* %24, align 8, !dbg !3349
  %bf.clear116 = and i32 %bf.load115, 65535, !dbg !3349
  %cmp117 = icmp eq i32 %bf.clear116, 37, !dbg !3349
  %.cast = bitcast i32* %24 to %struct.rtx_def*, !dbg !3350
  br i1 %cmp117, label %cond.end132, label %cond.false123, !dbg !3349

cond.false123:                                    ; preds = %land.lhs.true110
  %u128 = getelementptr inbounds i32, i32* %24, i64 2, !dbg !3351
  %rt_rtx131 = bitcast i32* %u128 to %struct.rtx_def**, !dbg !3351
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx131, align 8, !dbg !3351
  br label %cond.end132, !dbg !3349

cond.end132:                                      ; preds = %land.lhs.true110, %cond.false123
  %cond133 = phi %struct.rtx_def* [ %25, %cond.false123 ], [ %.cast, %land.lhs.true110 ], !dbg !3349
  %call134 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 1, %struct.rtx_def* %cond133) #6, !dbg !3352
  %cmp135 = icmp eq %struct.rtx_def* %call134, null, !dbg !3353
  br i1 %cmp135, label %if.end146, label %if.then136, !dbg !3354

if.then136:                                       ; preds = %cond.end132
  %rt_rtx140 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**, !dbg !3355
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx140, align 8, !dbg !3355
  %rt_rtx144 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !3357
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx144, align 8, !dbg !3357
  %call145 = tail call fastcc zeroext i8 @process_regs_for_copy(%struct.rtx_def* %26, %struct.rtx_def* %27, i8 zeroext 0, %struct.rtx_def* %insn, i32 %spec.select) #7, !dbg !3358
  br label %cleanup, !dbg !3359

if.end146:                                        ; preds = %cond.end132, %land.lhs.true107, %cond.end48, %land.lhs.true95, %lor.lhs.false87, %land.lhs.true67, %lor.lhs.false59
  %call147 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 1, %struct.rtx_def* null) #6, !dbg !3360
  %tobool148 = icmp eq %struct.rtx_def* %call147, null, !dbg !3360
  br i1 %tobool148, label %cleanup, label %if.end150, !dbg !3362

if.end150:                                        ; preds = %if.end146
  tail call void @extract_insn(%struct.rtx_def* %insn) #6, !dbg !3363
  call void @llvm.dbg.value(metadata i32 0, metadata !3328, metadata !DIExpression()), !dbg !3332
  %28 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3364
  %29 = sext i8 %28 to i64, !dbg !3367
  br label %for.cond, !dbg !3367

for.cond:                                         ; preds = %for.body, %if.end150
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.body ], [ 0, %if.end150 ], !dbg !3368
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !3328, metadata !DIExpression()), !dbg !3332
  %cmp151 = icmp slt i64 %indvars.iv6, %29, !dbg !3369
  br i1 %cmp151, label %for.body, label %for.cond154.preheader, !dbg !3370

for.cond154.preheader:                            ; preds = %for.cond
  br label %for.cond154, !dbg !3371

for.body:                                         ; preds = %for.cond
  %arrayidx153 = getelementptr inbounds [30 x i8], [30 x i8]* %bound_p, i64 0, i64 %indvars.iv6, !dbg !3373
  store i8 0, i8* %arrayidx153, align 1, !dbg !3374
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3332
  br label %for.cond, !dbg !3376, !llvm.loop !3377

for.cond154:                                      ; preds = %for.cond154.preheader, %for.inc242
  %indvars.iv4 = phi i64 [ 0, %for.cond154.preheader ], [ %indvars.iv.next5, %for.inc242 ]
  %.pre2 = phi i8 [ %28, %for.cond154.preheader ], [ %.pre, %for.inc242 ]
  %30 = phi i8 [ %28, %for.cond154.preheader ], [ %.pre, %for.inc242 ], !dbg !3379
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !3328, metadata !DIExpression()), !dbg !3332
  %31 = sext i8 %30 to i64, !dbg !3381
  %cmp156 = icmp slt i64 %indvars.iv4, %31, !dbg !3381
  br i1 %cmp156, label %for.body158, label %for.cond245.preheader, !dbg !3371

for.cond245.preheader:                            ; preds = %for.cond154
  %.lcssa = phi i8 [ %30, %for.cond154 ], !dbg !3379
  %cmp287 = icmp slt i32 %spec.select, 8, !dbg !3382
  %div291 = sdiv i32 %spec.select, 8, !dbg !3382
  %cond293 = select i1 %cmp287, i32 1, i32 %div291, !dbg !3382
  br label %for.cond245, !dbg !3387

for.body158:                                      ; preds = %for.cond154
  %arrayidx160 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv4, !dbg !3388
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx160, align 8, !dbg !3388
  call void @llvm.dbg.value(metadata %struct.rtx_def* %32, metadata !3320, metadata !DIExpression()), !dbg !3332
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i64 0, i32 0, !dbg !3390
  %bf.load161 = load i32, i32* %33, align 8, !dbg !3390
  %bf.clear162 = and i32 %bf.load161, 65535, !dbg !3390
  %cmp163 = icmp eq i32 %bf.clear162, 37, !dbg !3390
  br i1 %cmp163, label %if.end180, label %lor.lhs.false165, !dbg !3390

lor.lhs.false165:                                 ; preds = %for.body158
  %cmp168 = icmp eq i32 %bf.clear162, 39, !dbg !3390
  br i1 %cmp168, label %land.lhs.true170, label %for.inc242, !dbg !3390

land.lhs.true170:                                 ; preds = %lor.lhs.false165
  %arrayidx173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3390
  %34 = bitcast %union.rtunion_def* %arrayidx173 to i32**, !dbg !3390
  %35 = load i32*, i32** %34, align 8, !dbg !3390
  %bf.load175 = load i32, i32* %35, align 8, !dbg !3390
  %bf.clear176 = and i32 %bf.load175, 65535, !dbg !3390
  %cmp177 = icmp eq i32 %bf.clear176, 37, !dbg !3390
  br i1 %cmp177, label %if.end180, label %for.inc242, !dbg !3392

if.end180:                                        ; preds = %land.lhs.true170, %for.body158
  %arrayidx182 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv4, !dbg !3393
  %36 = load i8*, i8** %arrayidx182, align 8, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %36, metadata !3322, metadata !DIExpression()), !dbg !3332
  br label %while.cond, !dbg !3394

while.cond:                                       ; preds = %while.body, %if.end180
  %str.0 = phi i8* [ %36, %if.end180 ], [ %incdec.ptr, %while.body ], !dbg !3395
  call void @llvm.dbg.value(metadata i8* %str.0, metadata !3322, metadata !DIExpression()), !dbg !3332
  %37 = load i8, i8* %str.0, align 1, !dbg !3396
  %cmp184 = icmp eq i8 %37, 32, !dbg !3397
  %cmp187 = icmp eq i8 %37, 9, !dbg !3398
  %or.cond = or i1 %cmp184, %cmp187, !dbg !3399
  br i1 %or.cond, label %while.body, label %for.cond189.preheader, !dbg !3399

for.cond189.preheader:                            ; preds = %while.cond
  %arrayidx228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3400
  %rt_rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**, !dbg !3400
  br label %for.cond189, !dbg !3406

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %str.0, i64 1, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3322, metadata !DIExpression()), !dbg !3332
  br label %while.cond, !dbg !3394, !llvm.loop !3408

for.cond189:                                      ; preds = %for.cond189.preheader, %for.inc239
  %commut_p.0 = phi i8 [ 1, %for.inc239 ], [ 0, %for.cond189.preheader ], !dbg !3409
  %j.0 = phi i32 [ %inc240, %for.inc239 ], [ 0, %for.cond189.preheader ], !dbg !3409
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3329, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8 %commut_p.0, metadata !3323, metadata !DIExpression()), !dbg !3332
  %exitcond = icmp eq i32 %j.0, 2, !dbg !3410
  br i1 %exitcond, label %for.inc242.loopexit, label %for.body192, !dbg !3406

for.body192:                                      ; preds = %for.cond189
  %38 = trunc i64 %indvars.iv4 to i32, !dbg !3411
  %call193 = tail call fastcc i32 @get_dup_num(i32 %38, i8 zeroext %commut_p.0) #7, !dbg !3411
  call void @llvm.dbg.value(metadata i32 %call193, metadata !3330, metadata !DIExpression()), !dbg !3332
  %cmp194 = icmp sgt i32 %call193, -1, !dbg !3412
  br i1 %cmp194, label %if.then196, label %for.inc239, !dbg !3413

if.then196:                                       ; preds = %for.body192
  %idxprom197 = sext i32 %call193 to i64, !dbg !3414
  %arrayidx198 = getelementptr inbounds [30 x i8], [30 x i8]* %bound_p, i64 0, i64 %idxprom197, !dbg !3414
  store i8 1, i8* %arrayidx198, align 1, !dbg !3415
  %arrayidx200 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom197, !dbg !3416
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx200, align 8, !dbg !3416
  call void @llvm.dbg.value(metadata %struct.rtx_def* %39, metadata !3321, metadata !DIExpression()), !dbg !3332
  %40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i64 0, i32 0, !dbg !3417
  %bf.load201 = load i32, i32* %40, align 8, !dbg !3417
  %bf.clear202 = and i32 %bf.load201, 65535, !dbg !3417
  %cmp203 = icmp eq i32 %bf.clear202, 37, !dbg !3417
  br i1 %cmp203, label %land.lhs.true219, label %lor.lhs.false205, !dbg !3417

lor.lhs.false205:                                 ; preds = %if.then196
  %cmp208 = icmp eq i32 %bf.clear202, 39, !dbg !3417
  br i1 %cmp208, label %land.lhs.true210, label %for.inc239, !dbg !3417

land.lhs.true210:                                 ; preds = %lor.lhs.false205
  %arrayidx213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3417
  %41 = bitcast %union.rtunion_def* %arrayidx213 to i32**, !dbg !3417
  %42 = load i32*, i32** %41, align 8, !dbg !3417
  %bf.load215 = load i32, i32* %42, align 8, !dbg !3417
  %bf.clear216 = and i32 %bf.load215, 65535, !dbg !3417
  %cmp217 = icmp eq i32 %bf.clear216, 37, !dbg !3417
  br i1 %cmp217, label %land.lhs.true219, label %for.inc239, !dbg !3418

land.lhs.true219:                                 ; preds = %land.lhs.true210, %if.then196
  %bf.load220 = load i32, i32* %33, align 8, !dbg !3419
  %bf.clear221 = and i32 %bf.load220, 65535, !dbg !3419
  %cmp222 = icmp eq i32 %bf.clear221, 37, !dbg !3419
  br i1 %cmp222, label %cond.end230, label %cond.false225, !dbg !3419

cond.false225:                                    ; preds = %land.lhs.true219
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx229, align 8, !dbg !3420
  br label %cond.end230, !dbg !3419

cond.end230:                                      ; preds = %land.lhs.true219, %cond.false225
  %cond231 = phi %struct.rtx_def* [ %43, %cond.false225 ], [ %32, %land.lhs.true219 ], !dbg !3419
  %call232 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 1, %struct.rtx_def* %cond231) #6, !dbg !3421
  %cmp233 = icmp eq %struct.rtx_def* %call232, null, !dbg !3422
  br i1 %cmp233, label %for.inc239, label %if.then235, !dbg !3423

if.then235:                                       ; preds = %cond.end230
  %call236 = tail call fastcc zeroext i8 @process_regs_for_copy(%struct.rtx_def* %32, %struct.rtx_def* %39, i8 zeroext 1, %struct.rtx_def* null, i32 %spec.select) #7, !dbg !3424
  br label %for.inc239, !dbg !3424

for.inc239:                                       ; preds = %cond.end230, %for.body192, %if.then235, %land.lhs.true210, %lor.lhs.false205
  %inc240 = add nuw nsw i32 %j.0, 1, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %inc240, metadata !3329, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8 1, metadata !3323, metadata !DIExpression()), !dbg !3332
  br label %for.cond189, !dbg !3426, !llvm.loop !3427

for.inc242.loopexit:                              ; preds = %for.cond189
  %.pre.pre = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3379
  br label %for.inc242, !dbg !3429

for.inc242:                                       ; preds = %for.inc242.loopexit, %lor.lhs.false165, %land.lhs.true170
  %.pre = phi i8 [ %.pre.pre, %for.inc242.loopexit ], [ %.pre2, %lor.lhs.false165 ], [ %.pre2, %land.lhs.true170 ], !dbg !3379
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !3429
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3332
  br label %for.cond154, !dbg !3430, !llvm.loop !3431

for.cond245:                                      ; preds = %for.cond245.preheader, %for.inc295
  %indvars.iv = phi i64 [ 0, %for.cond245.preheader ], [ %indvars.iv.next, %for.inc295 ], !dbg !3433
  %44 = phi i8 [ %.lcssa, %for.cond245.preheader ], [ %.pre1, %for.inc295 ], !dbg !3433
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3328, metadata !DIExpression()), !dbg !3332
  %45 = sext i8 %44 to i64, !dbg !3434
  %cmp247 = icmp slt i64 %indvars.iv, %45, !dbg !3434
  br i1 %cmp247, label %for.body249, label %cleanup.loopexit, !dbg !3387

for.body249:                                      ; preds = %for.cond245
  %arrayidx251 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv, !dbg !3435
  %46 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx251, align 8, !dbg !3435
  call void @llvm.dbg.value(metadata %struct.rtx_def* %46, metadata !3320, metadata !DIExpression()), !dbg !3332
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i64 0, i32 0, !dbg !3436
  %bf.load252 = load i32, i32* %47, align 8, !dbg !3436
  %bf.clear253 = and i32 %bf.load252, 65535, !dbg !3436
  %cmp254 = icmp eq i32 %bf.clear253, 37, !dbg !3436
  br i1 %cmp254, label %land.lhs.true270, label %lor.lhs.false256, !dbg !3436

lor.lhs.false256:                                 ; preds = %for.body249
  %cmp259 = icmp eq i32 %bf.clear253, 39, !dbg !3436
  br i1 %cmp259, label %land.lhs.true261, label %for.inc295, !dbg !3436

land.lhs.true261:                                 ; preds = %lor.lhs.false256
  %arrayidx264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3436
  %48 = bitcast %union.rtunion_def* %arrayidx264 to i32**, !dbg !3436
  %49 = load i32*, i32** %48, align 8, !dbg !3436
  %bf.load266 = load i32, i32* %49, align 8, !dbg !3436
  %bf.clear267 = and i32 %bf.load266, 65535, !dbg !3436
  %cmp268 = icmp eq i32 %bf.clear267, 37, !dbg !3436
  br i1 %cmp268, label %land.lhs.true270, label %for.inc295, !dbg !3437

land.lhs.true270:                                 ; preds = %land.lhs.true261, %for.body249
  br i1 %cmp254, label %cond.end281, label %cond.false276, !dbg !3438

cond.false276:                                    ; preds = %land.lhs.true270
  %arrayidx279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3439
  %rt_rtx280 = bitcast %union.rtunion_def* %arrayidx279 to %struct.rtx_def**, !dbg !3439
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx280, align 8, !dbg !3439
  br label %cond.end281, !dbg !3438

cond.end281:                                      ; preds = %land.lhs.true270, %cond.false276
  %cond282 = phi %struct.rtx_def* [ %50, %cond.false276 ], [ %46, %land.lhs.true270 ], !dbg !3438
  %call283 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 1, %struct.rtx_def* %cond282) #6, !dbg !3440
  %cmp284 = icmp eq %struct.rtx_def* %call283, null, !dbg !3441
  br i1 %cmp284, label %for.inc295, label %if.then286, !dbg !3442

if.then286:                                       ; preds = %cond.end281
  %51 = trunc i64 %indvars.iv to i32, !dbg !3443
  call fastcc void @process_reg_shuffles(%struct.rtx_def* %46, i32 %51, i32 %cond293, i8* nonnull %0) #7, !dbg !3443
  br label %for.inc295, !dbg !3443

for.inc295:                                       ; preds = %cond.end281, %lor.lhs.false256, %land.lhs.true261, %if.then286
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3444
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3332
  %.pre1 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3433
  br label %for.cond245, !dbg !3445, !llvm.loop !3446

cleanup.loopexit:                                 ; preds = %for.cond245
  br label %cleanup, !dbg !3448

cleanup:                                          ; preds = %cleanup.loopexit, %if.end146, %if.then136
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %0) #8, !dbg !3448
  ret void, !dbg !3448
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @side_effects_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @process_regs_for_copy(%struct.rtx_def* %reg1, %struct.rtx_def* %reg2, i8 zeroext %constraint_p, %struct.rtx_def* %insn, i32 %freq) unnamed_addr #5 !dbg !3449 {
entry:
  %offset1 = alloca i32, align 4
  %offset2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg1, metadata !3453, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg2, metadata !3454, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 %constraint_p, metadata !3455, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3456, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %freq, metadata !3457, metadata !DIExpression()), !dbg !3470
  %0 = bitcast i32* %offset1 to i8*, !dbg !3471
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3471
  %1 = bitcast i32* %offset2 to i8*, !dbg !3471
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3471
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg1, i64 0, i32 0, !dbg !3472
  %bf.load = load i32, i32* %2, align 8, !dbg !3472
  %bf.clear = and i32 %bf.load, 65535, !dbg !3472
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3472
  br i1 %cmp, label %land.lhs.true7, label %lor.lhs.false, !dbg !3472

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 39, !dbg !3472
  br i1 %cmp3, label %land.lhs.true, label %cond.true, !dbg !3472

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3472
  %3 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3472
  %4 = load i32*, i32** %3, align 8, !dbg !3472
  %bf.load4 = load i32, i32* %4, align 8, !dbg !3472
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !3472
  %cmp6 = icmp eq i32 %bf.clear5, 37, !dbg !3472
  br i1 %cmp6, label %land.lhs.true7, label %cond.true, !dbg !3472

land.lhs.true7:                                   ; preds = %land.lhs.true, %entry
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg2, i64 0, i32 0, !dbg !3472
  %bf.load8 = load i32, i32* %5, align 8, !dbg !3472
  %bf.clear9 = and i32 %bf.load8, 65535, !dbg !3472
  %cmp10 = icmp eq i32 %bf.clear9, 37, !dbg !3472
  br i1 %cmp10, label %cond.end, label %lor.lhs.false11, !dbg !3472

lor.lhs.false11:                                  ; preds = %land.lhs.true7
  %cmp14 = icmp eq i32 %bf.clear9, 39, !dbg !3472
  br i1 %cmp14, label %land.lhs.true15, label %cond.true, !dbg !3472

land.lhs.true15:                                  ; preds = %lor.lhs.false11
  %arrayidx18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3472
  %6 = bitcast %union.rtunion_def* %arrayidx18 to i32**, !dbg !3472
  %7 = load i32*, i32** %6, align 8, !dbg !3472
  %bf.load20 = load i32, i32* %7, align 8, !dbg !3472
  %bf.clear21 = and i32 %bf.load20, 65535, !dbg !3472
  %cmp22 = icmp eq i32 %bf.clear21, 37, !dbg !3472
  br i1 %cmp22, label %cond.end, label %cond.true, !dbg !3472

cond.true:                                        ; preds = %land.lhs.true15, %lor.lhs.false11, %land.lhs.true, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 351, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3472
  %bf.load23.pre = load i32, i32* %2, align 8, !dbg !3473
  br label %cond.end, !dbg !3472

cond.end:                                         ; preds = %land.lhs.true7, %land.lhs.true15, %cond.true
  %bf.load23 = phi i32 [ %bf.load, %land.lhs.true7 ], [ %bf.load, %land.lhs.true15 ], [ %bf.load23.pre, %cond.true ], !dbg !3473
  %bf.clear24 = and i32 %bf.load23, 65535, !dbg !3473
  %cmp25 = icmp eq i32 %bf.clear24, 37, !dbg !3473
  br i1 %cmp25, label %land.rhs, label %land.end, !dbg !3474

land.rhs:                                         ; preds = %cond.end
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg2, i64 0, i32 0, !dbg !3475
  %bf.load26 = load i32, i32* %8, align 8, !dbg !3475
  %bf.clear27 = and i32 %bf.load26, 65535, !dbg !3475
  %cmp28 = icmp eq i32 %bf.clear27, 37, !dbg !3475
  %phitmp1 = zext i1 %cmp28 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %9 = phi i32 [ 0, %cond.end ], [ %phitmp1, %land.rhs ]
  call void @llvm.dbg.value(metadata i32* %offset1, metadata !3461, metadata !DIExpression(DW_OP_deref)), !dbg !3470
  %call = call fastcc %struct.rtx_def* @go_through_subreg(%struct.rtx_def* %reg1, i32* nonnull %offset1) #7, !dbg !3476
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3453, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32* %offset2, metadata !3462, metadata !DIExpression(DW_OP_deref)), !dbg !3470
  %call29 = call fastcc %struct.rtx_def* @go_through_subreg(%struct.rtx_def* %reg2, i32* nonnull %offset2) #7, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call29, metadata !3454, metadata !DIExpression()), !dbg !3470
  %call30 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3478
  %cmp31 = icmp ult i32 %call30, 53, !dbg !3478
  %call33 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3480
  %cmp34 = icmp ult i32 %call33, 53, !dbg !3480
  br i1 %cmp31, label %if.then, label %if.else, !dbg !3481

if.then:                                          ; preds = %land.end
  br i1 %cmp34, label %cleanup, label %if.end, !dbg !3482

if.end:                                           ; preds = %if.then
  %call37 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3484
  %10 = load i32, i32* %offset1, align 4, !dbg !3485
  call void @llvm.dbg.value(metadata i32 %10, metadata !3461, metadata !DIExpression()), !dbg !3470
  %add = add i32 %call37, %10, !dbg !3486
  %11 = load i32, i32* %offset2, align 4, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %11, metadata !3462, metadata !DIExpression()), !dbg !3470
  %sub = sub i32 %add, %11, !dbg !3488
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3458, metadata !DIExpression()), !dbg !3470
  %12 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3489
  %call38 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3490
  %idxprom = zext i32 %call38 to i64, !dbg !3489
  %arrayidx39 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %12, i64 %idxprom, !dbg !3489
  br label %if.end110, !dbg !3491

if.else:                                          ; preds = %land.end
  br i1 %cmp34, label %if.then43, label %if.else50, !dbg !3492

if.then43:                                        ; preds = %if.else
  %call44 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3493
  %13 = load i32, i32* %offset2, align 4, !dbg !3496
  call void @llvm.dbg.value(metadata i32 %13, metadata !3462, metadata !DIExpression()), !dbg !3470
  %add45 = add i32 %call44, %13, !dbg !3497
  %14 = load i32, i32* %offset1, align 4, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %14, metadata !3461, metadata !DIExpression()), !dbg !3470
  %sub46 = sub i32 %add45, %14, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %sub46, metadata !3458, metadata !DIExpression()), !dbg !3470
  %15 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3500
  %call47 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3501
  %idxprom48 = zext i32 %call47 to i64, !dbg !3500
  %arrayidx49 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %15, i64 %idxprom48, !dbg !3500
  br label %if.end110

if.else50:                                        ; preds = %if.else
  %16 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call51 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3502
  %idxprom52 = zext i32 %call51 to i64, !dbg !3502
  %arrayidx53 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %16, i64 %idxprom52, !dbg !3502
  %17 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx53, align 8, !dbg !3502
  %min = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %17, i64 0, i32 21, !dbg !3502
  %18 = load i32, i32* %min, align 8, !dbg !3502
  %19 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call54 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3502
  %idxprom55 = zext i32 %call54 to i64, !dbg !3502
  %arrayidx56 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %19, i64 %idxprom55, !dbg !3502
  %20 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx56, align 8, !dbg !3502
  %conflict_id = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %20, i64 0, i32 24, !dbg !3502
  %21 = load i32, i32* %conflict_id, align 8, !dbg !3502
  %cmp57 = icmp sgt i32 %18, %21, !dbg !3502
  br i1 %cmp57, label %land.lhs.true95, label %land.lhs.true59, !dbg !3502

land.lhs.true59:                                  ; preds = %if.else50
  %22 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call60 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3502
  %idxprom61 = zext i32 %call60 to i64, !dbg !3502
  %arrayidx62 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %22, i64 %idxprom61, !dbg !3502
  %23 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx62, align 8, !dbg !3502
  %conflict_id63 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %23, i64 0, i32 24, !dbg !3502
  %24 = load i32, i32* %conflict_id63, align 8, !dbg !3502
  %25 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call64 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3502
  %idxprom65 = zext i32 %call64 to i64, !dbg !3502
  %arrayidx66 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %25, i64 %idxprom65, !dbg !3502
  %26 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx66, align 8, !dbg !3502
  %max = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %26, i64 0, i32 22, !dbg !3502
  %27 = load i32, i32* %max, align 4, !dbg !3502
  %cmp67 = icmp sgt i32 %24, %27, !dbg !3502
  br i1 %cmp67, label %land.lhs.true95, label %land.lhs.true69, !dbg !3502

land.lhs.true69:                                  ; preds = %land.lhs.true59
  %28 = load i64**, i64*** @conflicts, align 8, !dbg !3502
  %29 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call70 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3502
  %idxprom71 = zext i32 %call70 to i64, !dbg !3502
  %arrayidx72 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %29, i64 %idxprom71, !dbg !3502
  %30 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx72, align 8, !dbg !3502
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %30, i64 0, i32 0, !dbg !3502
  %31 = load i32, i32* %num, align 8, !dbg !3502
  %idxprom73 = sext i32 %31 to i64, !dbg !3502
  %arrayidx74 = getelementptr inbounds i64*, i64** %28, i64 %idxprom73, !dbg !3502
  %32 = load i64*, i64** %arrayidx74, align 8, !dbg !3502
  %33 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call75 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3502
  %idxprom76 = zext i32 %call75 to i64, !dbg !3502
  %arrayidx77 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %33, i64 %idxprom76, !dbg !3502
  %34 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx77, align 8, !dbg !3502
  %conflict_id78 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %34, i64 0, i32 24, !dbg !3502
  %35 = load i32, i32* %conflict_id78, align 8, !dbg !3502
  %36 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call79 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3502
  %idxprom80 = zext i32 %call79 to i64, !dbg !3502
  %arrayidx81 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %36, i64 %idxprom80, !dbg !3502
  %37 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx81, align 8, !dbg !3502
  %min82 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %37, i64 0, i32 21, !dbg !3502
  %38 = load i32, i32* %min82, align 8, !dbg !3502
  %sub83 = sub nsw i32 %35, %38, !dbg !3502
  %div = lshr i32 %sub83, 6, !dbg !3502
  %idxprom84 = zext i32 %div to i64, !dbg !3502
  %arrayidx85 = getelementptr inbounds i64, i64* %32, i64 %idxprom84, !dbg !3502
  %39 = load i64, i64* %arrayidx85, align 8, !dbg !3502
  %40 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call86 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3502
  %idxprom87 = zext i32 %call86 to i64, !dbg !3502
  %arrayidx88 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %40, i64 %idxprom87, !dbg !3502
  %41 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx88, align 8, !dbg !3502
  %conflict_id89 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %41, i64 0, i32 24, !dbg !3502
  %42 = load i32, i32* %conflict_id89, align 8, !dbg !3502
  %43 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3502
  %call90 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3502
  %idxprom91 = zext i32 %call90 to i64, !dbg !3502
  %arrayidx92 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %43, i64 %idxprom91, !dbg !3502
  %44 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx92, align 8, !dbg !3502
  %min93 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %44, i64 0, i32 21, !dbg !3502
  %45 = load i32, i32* %min93, align 8, !dbg !3502
  %sub94 = sub nsw i32 %42, %45, !dbg !3502
  %rem = and i32 %sub94, 63, !dbg !3502
  %sh_prom = zext i32 %rem to i64, !dbg !3502
  %shl = shl i64 1, %sh_prom, !dbg !3502
  %and = and i64 %39, %shl, !dbg !3502
  %tobool = icmp eq i64 %and, 0, !dbg !3502
  br i1 %tobool, label %land.lhs.true95, label %cleanup, !dbg !3504

land.lhs.true95:                                  ; preds = %land.lhs.true69, %land.lhs.true59, %if.else50
  %46 = load i32, i32* %offset1, align 4, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %46, metadata !3461, metadata !DIExpression()), !dbg !3470
  %47 = load i32, i32* %offset2, align 4, !dbg !3506
  call void @llvm.dbg.value(metadata i32 %47, metadata !3462, metadata !DIExpression()), !dbg !3470
  %cmp96 = icmp eq i32 %46, %47, !dbg !3507
  br i1 %cmp96, label %if.then98, label %cleanup, !dbg !3508

if.then98:                                        ; preds = %land.lhs.true95
  %48 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3509
  %call99 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3511
  %idxprom100 = zext i32 %call99 to i64, !dbg !3509
  %arrayidx101 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %48, i64 %idxprom100, !dbg !3509
  %49 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx101, align 8, !dbg !3509
  %50 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3512
  %call102 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call29) #7, !dbg !3513
  %idxprom103 = zext i32 %call102 to i64, !dbg !3512
  %arrayidx104 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %50, i64 %idxprom103, !dbg !3512
  %51 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx104, align 8, !dbg !3512
  %52 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_curr_loop_tree_node, align 8, !dbg !3514
  %call105 = call %struct.ira_allocno_copy* @ira_add_allocno_copy(%struct.ira_allocno* %49, %struct.ira_allocno* %51, i32 %freq, i8 zeroext %constraint_p, %struct.rtx_def* %insn, %struct.ira_loop_tree_node* %52) #6, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy* %call105, metadata !3468, metadata !DIExpression()), !dbg !3470
  %53 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_curr_loop_tree_node, align 8, !dbg !3516
  %local_copies = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %53, i64 0, i32 15, !dbg !3517
  %54 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_copies, align 8, !dbg !3517
  %num106 = getelementptr inbounds %struct.ira_allocno_copy, %struct.ira_allocno_copy* %call105, i64 0, i32 0, !dbg !3518
  %55 = load i32, i32* %num106, align 8, !dbg !3518
  %call107 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %54, i32 %55) #6, !dbg !3519
  br label %cleanup, !dbg !3520

if.end110:                                        ; preds = %if.then43, %if.end
  %allocno_preferenced_hard_regno.0 = phi i32 [ %sub, %if.end ], [ %sub46, %if.then43 ], !dbg !3480
  %a.0.in = phi %struct.ira_allocno** [ %arrayidx39, %if.end ], [ %arrayidx49, %if.then43 ]
  %a.0 = load %struct.ira_allocno*, %struct.ira_allocno** %a.0.in, align 8, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.0, metadata !3464, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %allocno_preferenced_hard_regno.0, metadata !3458, metadata !DIExpression()), !dbg !3470
  %cmp113 = icmp ult i32 %allocno_preferenced_hard_regno.0, 53, !dbg !3521
  br i1 %cmp113, label %if.end116, label %cleanup, !dbg !3523

if.end116:                                        ; preds = %if.end110
  %idxprom117 = sext i32 %allocno_preferenced_hard_regno.0 to i64, !dbg !3524
  %arrayidx118 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom117, !dbg !3524
  %56 = load i32, i32* %arrayidx118, align 4, !dbg !3524
  call void @llvm.dbg.value(metadata i32 %56, metadata !3465, metadata !DIExpression()), !dbg !3470
  %mode119 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 2, !dbg !3525
  %57 = load i32, i32* %mode119, align 8, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %57, metadata !3467, metadata !DIExpression()), !dbg !3470
  %cover_class120 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 9, !dbg !3526
  %58 = load i32, i32* %cover_class120, align 8, !dbg !3526
  call void @llvm.dbg.value(metadata i32 %58, metadata !3466, metadata !DIExpression()), !dbg !3470
  %tobool122 = icmp ne i32 %9, 0, !dbg !3527
  %cmp124 = icmp ne %struct.rtx_def* %insn, null, !dbg !3529
  %or.cond = and i1 %tobool122, %cmp124, !dbg !3530
  br i1 %or.cond, label %land.lhs.true126, label %if.end162, !dbg !3530

land.lhs.true126:                                 ; preds = %if.end116
  %idxprom127 = zext i32 %56 to i64, !dbg !3531
  %arrayidx128 = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %idxprom127, !dbg !3531
  %59 = load i32, i32* %arrayidx128, align 4, !dbg !3531
  %call129 = call i32 @reg_classes_intersect_p(i32 %56, i32 13) #6, !dbg !3532
  %tobool130 = icmp eq i32 %call129, 0, !dbg !3532
  br i1 %tobool130, label %cond.true131, label %cond.false143, !dbg !3532

cond.true131:                                     ; preds = %land.lhs.true126
  %idxprom132 = zext i32 %57 to i64, !dbg !3532
  %arrayidx133 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom132, !dbg !3532
  %60 = load i8, i8* %arrayidx133, align 1, !dbg !3532
  %cmp135 = icmp eq i8 %60, 10, !dbg !3532
  br i1 %cmp135, label %lor.end, label %lor.rhs, !dbg !3532

lor.rhs:                                          ; preds = %cond.true131
  %cmp140 = icmp eq i8 %60, 11, !dbg !3532
  %phitmp = select i1 %cmp140, i32 2, i32 1, !dbg !3532
  br label %lor.end, !dbg !3532

lor.end:                                          ; preds = %lor.rhs, %cond.true131
  %61 = phi i32 [ 2, %cond.true131 ], [ %phitmp, %lor.rhs ]
  br label %cond.end157, !dbg !3532

cond.false143:                                    ; preds = %land.lhs.true126
  %cmp144 = icmp eq i32 %57, 40, !dbg !3532
  br i1 %cmp144, label %cond.end152, label %cond.false147, !dbg !3532

cond.false147:                                    ; preds = %cond.false143
  %idxprom148 = zext i32 %57 to i64, !dbg !3532
  %arrayidx149 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom148, !dbg !3532
  %62 = load i8, i8* %arrayidx149, align 1, !dbg !3532
  %conv151 = zext i8 %62 to i32, !dbg !3532
  %phitmp3 = add nuw nsw i32 %conv151, 3, !dbg !3532
  %phitmp4 = lshr i32 %phitmp3, 2, !dbg !3532
  br label %cond.end152, !dbg !3532

cond.end152:                                      ; preds = %cond.false143, %cond.false147
  %cond153 = phi i32 [ %phitmp4, %cond.false147 ], [ 3, %cond.false143 ]
  br label %cond.end157, !dbg !3532

cond.end157:                                      ; preds = %cond.end152, %lor.end
  %cond158 = phi i32 [ %61, %lor.end ], [ %cond153, %cond.end152 ], !dbg !3532
  %cmp159 = icmp ugt i32 %59, %cond158, !dbg !3533
  br i1 %cmp159, label %if.end162, label %cleanup, !dbg !3534

if.end162:                                        ; preds = %cond.end157, %if.end116
  %idxprom163 = zext i32 %58 to i64, !dbg !3535
  %arrayidx166 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_reg_index, i64 0, i64 %idxprom163, i64 %idxprom117, !dbg !3535
  %63 = load i16, i16* %arrayidx166, align 2, !dbg !3535
  %cmp168 = icmp slt i16 %63, 0, !dbg !3536
  br i1 %cmp168, label %cleanup, label %if.end171, !dbg !3538

if.end171:                                        ; preds = %if.end162
  %call172 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call) #7, !dbg !3539
  %cmp173 = icmp ult i32 %call172, 53, !dbg !3539
  br i1 %cmp173, label %if.then175, label %if.else177, !dbg !3541

if.then175:                                       ; preds = %if.end171
  %call176 = call fastcc i32 @ira_get_register_move_cost(i32 %57, i32 %58, i32 %56) #7, !dbg !3542
  br label %if.end180, !dbg !3543

if.else177:                                       ; preds = %if.end171
  %call178 = call fastcc i32 @ira_get_register_move_cost(i32 %57, i32 %56, i32 %58) #7, !dbg !3544
  br label %if.end180

if.end180:                                        ; preds = %if.else177, %if.then175
  %call176.pn = phi i32 [ %call176, %if.then175 ], [ %call178, %if.else177 ]
  %cost.0 = mul nsw i32 %call176.pn, %freq, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %cost.0, metadata !3459, metadata !DIExpression()), !dbg !3470
  %idxprom182 = sext i16 %63 to i64, !dbg !3546
  br label %for.cond, !dbg !3550

for.cond:                                         ; preds = %if.end216, %if.end180
  %a.1 = phi %struct.ira_allocno* [ %a.0, %if.end180 ], [ %a.2, %if.end216 ], !dbg !3470
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.1, metadata !3464, metadata !DIExpression()), !dbg !3470
  %hard_reg_costs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.1, i64 0, i32 33, !dbg !3551
  %cover_class_cost = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.1, i64 0, i32 10, !dbg !3552
  %64 = load i32, i32* %cover_class_cost, align 4, !dbg !3552
  call fastcc void @ira_allocate_and_set_costs(i32** nonnull %hard_reg_costs, i32 %58, i32 %64) #7, !dbg !3553
  %conflict_hard_reg_costs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.1, i64 0, i32 35, !dbg !3554
  call fastcc void @ira_allocate_and_set_costs(i32** nonnull %conflict_hard_reg_costs, i32 %58, i32 0) #7, !dbg !3555
  %65 = load i32*, i32** %hard_reg_costs, align 8, !dbg !3556
  %arrayidx183 = getelementptr inbounds i32, i32* %65, i64 %idxprom182, !dbg !3556
  %66 = load i32, i32* %arrayidx183, align 4, !dbg !3557
  %sub184 = sub nsw i32 %66, %cost.0, !dbg !3557
  store i32 %sub184, i32* %arrayidx183, align 4, !dbg !3557
  %67 = load i32*, i32** %conflict_hard_reg_costs, align 8, !dbg !3558
  %arrayidx187 = getelementptr inbounds i32, i32* %67, i64 %idxprom182, !dbg !3558
  %68 = load i32, i32* %arrayidx187, align 4, !dbg !3559
  %sub188 = sub nsw i32 %68, %cost.0, !dbg !3559
  store i32 %sub188, i32* %arrayidx187, align 4, !dbg !3559
  %69 = load i32*, i32** %hard_reg_costs, align 8, !dbg !3560
  %arrayidx191 = getelementptr inbounds i32, i32* %69, i64 %idxprom182, !dbg !3560
  %70 = load i32, i32* %arrayidx191, align 4, !dbg !3560
  %71 = load i32, i32* %cover_class_cost, align 4, !dbg !3562
  %cmp193 = icmp slt i32 %70, %71, !dbg !3563
  br i1 %cmp193, label %if.then195, label %if.end200, !dbg !3564

if.then195:                                       ; preds = %for.cond
  store i32 %70, i32* %cover_class_cost, align 4, !dbg !3565
  br label %if.end200, !dbg !3566

if.end200:                                        ; preds = %if.then195, %for.cond
  %cap = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.1, i64 0, i32 16, !dbg !3567
  %72 = load %struct.ira_allocno*, %struct.ira_allocno** %cap, align 8, !dbg !3567
  %cmp201 = icmp eq %struct.ira_allocno* %72, null, !dbg !3569
  br i1 %cmp201, label %if.else205, label %if.then203, !dbg !3570

if.then203:                                       ; preds = %if.end200
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %72, metadata !3464, metadata !DIExpression()), !dbg !3470
  br label %if.end216, !dbg !3571

if.else205:                                       ; preds = %if.end200
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.1, i64 0, i32 6, !dbg !3572
  %73 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !3572
  %parent206 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %73, i64 0, i32 6, !dbg !3574
  %74 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent206, align 8, !dbg !3574
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %74, metadata !3469, metadata !DIExpression()), !dbg !3470
  %cmp207 = icmp eq %struct.ira_loop_tree_node* %74, null, !dbg !3575
  br i1 %cmp207, label %cleanup.loopexit, label %lor.lhs.false209, !dbg !3576

lor.lhs.false209:                                 ; preds = %if.else205
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %74, i64 0, i32 9, !dbg !3577
  %75 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !3577
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.1, i64 0, i32 1, !dbg !3578
  %76 = load i32, i32* %regno, align 4, !dbg !3578
  %idxprom210 = sext i32 %76 to i64, !dbg !3579
  %arrayidx211 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %75, i64 %idxprom210, !dbg !3579
  %77 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx211, align 8, !dbg !3579
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %77, metadata !3464, metadata !DIExpression()), !dbg !3470
  %cmp212 = icmp eq %struct.ira_allocno* %77, null, !dbg !3580
  br i1 %cmp212, label %cleanup.loopexit, label %if.end216, !dbg !3581

if.end216:                                        ; preds = %lor.lhs.false209, %if.then203
  %a.2 = phi %struct.ira_allocno* [ %72, %if.then203 ], [ %77, %lor.lhs.false209 ], !dbg !3582
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.2, metadata !3464, metadata !DIExpression()), !dbg !3470
  br label %for.cond, !dbg !3583, !llvm.loop !3584

cleanup.loopexit:                                 ; preds = %if.else205, %lor.lhs.false209
  br label %cleanup, !dbg !3587

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end157, %land.lhs.true69, %if.end162, %if.end110, %land.lhs.true95, %if.then, %if.then98
  %retval.0 = phi i8 [ 1, %if.then98 ], [ 0, %if.then ], [ 0, %land.lhs.true95 ], [ 0, %land.lhs.true69 ], [ 0, %if.end110 ], [ 0, %cond.end157 ], [ 0, %if.end162 ], [ 1, %cleanup.loopexit ], !dbg !3470
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3587
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3587
  ret i8 %retval.0, !dbg !3587
}

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_dup_num(i32 %op_num, i8 zeroext %use_commut_op_p) unnamed_addr #5 !dbg !3588 {
entry:
  call void @llvm.dbg.value(metadata i32 %op_num, metadata !3592, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 %use_commut_op_p, metadata !3593, metadata !DIExpression()), !dbg !3611
  %cmp = icmp slt i32 %op_num, 0, !dbg !3612
  br i1 %cmp, label %cleanup106, label %lor.lhs.false, !dbg !3614

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3615
  %cmp1 = icmp eq i8 %0, 0, !dbg !3616
  br i1 %cmp1, label %cleanup106, label %if.end, !dbg !3617

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %op_num to i64, !dbg !3618
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom, !dbg !3618
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3618
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3601, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 1, metadata !3599, metadata !DIExpression()), !dbg !3611
  %tobool = icmp eq i8 %use_commut_op_p, 0, !dbg !3619
  br i1 %tobool, label %if.end19, label %if.then3, !dbg !3621

if.then3:                                         ; preds = %if.end
  %arrayidx5 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom, !dbg !3622
  %2 = load i8*, i8** %arrayidx5, align 8, !dbg !3622
  %call = tail call fastcc zeroext i8 @commutative_constraint_p(i8* %2) #7, !dbg !3625
  %tobool6 = icmp eq i8 %call, 0, !dbg !3625
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !3626

if.then7:                                         ; preds = %if.then3
  %inc = add nsw i32 %op_num, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3592, metadata !DIExpression()), !dbg !3611
  br label %if.end19, !dbg !3628

if.else:                                          ; preds = %if.then3
  %cmp8 = icmp sgt i32 %op_num, 0, !dbg !3629
  br i1 %cmp8, label %land.lhs.true, label %if.end19, !dbg !3631

land.lhs.true:                                    ; preds = %if.else
  %sub = add nsw i32 %op_num, -1, !dbg !3632
  %idxprom10 = sext i32 %sub to i64, !dbg !3633
  %arrayidx11 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom10, !dbg !3633
  %3 = load i8*, i8** %arrayidx11, align 8, !dbg !3633
  %call12 = tail call fastcc zeroext i8 @commutative_constraint_p(i8* %3) #7, !dbg !3634
  %tobool14 = icmp ne i8 %call12, 0, !dbg !3634
  %spec.select = zext i1 %tobool14 to i8, !dbg !3635
  %4 = zext i1 %tobool14 to i32, !dbg !3635
  %spec.select2 = sub i32 %op_num, %4, !dbg !3635
  br label %if.end19, !dbg !3635

if.end19:                                         ; preds = %if.end, %land.lhs.true, %if.then7, %if.else
  %commut_op_used_p.2 = phi i8 [ 1, %if.end ], [ 1, %if.then7 ], [ 0, %if.else ], [ %spec.select, %land.lhs.true ], !dbg !3636
  %op_num.addr.2 = phi i32 [ %op_num, %if.end ], [ %inc, %if.then7 ], [ %op_num, %if.else ], [ %spec.select2, %land.lhs.true ]
  call void @llvm.dbg.value(metadata i32 %op_num.addr.2, metadata !3592, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 %commut_op_used_p.2, metadata !3599, metadata !DIExpression()), !dbg !3611
  %idxprom20 = sext i32 %op_num.addr.2 to i64, !dbg !3637
  %arrayidx21 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom20, !dbg !3637
  %5 = load i8*, i8** %arrayidx21, align 8, !dbg !3637
  call void @llvm.dbg.value(metadata i8* %5, metadata !3600, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 0, metadata !3598, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 -1, metadata !3596, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 0, metadata !3594, metadata !DIExpression()), !dbg !3611
  br label %for.cond, !dbg !3638

for.cond:                                         ; preds = %if.end71, %if.end19
  %ignore_p.0 = phi i8 [ 0, %if.end19 ], [ %ignore_p.2, %if.end71 ], !dbg !3639
  %original.0 = phi i32 [ -1, %if.end19 ], [ %original.4, %if.end71 ], !dbg !3640
  %str.0 = phi i8* [ %5, %if.end19 ], [ %add.ptr, %if.end71 ], !dbg !3611
  call void @llvm.dbg.value(metadata i8* %str.0, metadata !3600, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %original.0, metadata !3596, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 %ignore_p.0, metadata !3598, metadata !DIExpression()), !dbg !3611
  %6 = load i8, i8* %str.0, align 1, !dbg !3641
  %conv22 = sext i8 %6 to i32, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %conv22, metadata !3595, metadata !DIExpression()), !dbg !3611
  switch i32 %conv22, label %if.else35 [
    i32 0, label %for.end
    i32 35, label %if.end71
    i32 44, label %if.then33
  ], !dbg !3642

if.then33:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !3598, metadata !DIExpression()), !dbg !3611
  br label %if.end71, !dbg !3643

if.else35:                                        ; preds = %for.cond
  %tobool36 = icmp eq i8 %ignore_p.0, 0, !dbg !3645
  br i1 %tobool36, label %if.then37, label %if.end71, !dbg !3646

if.then37:                                        ; preds = %if.else35
  switch i32 %conv22, label %if.end71 [
    i32 88, label %cleanup106.loopexit
    i32 109, label %cleanup106.loopexit
    i32 111, label %cleanup106.loopexit
    i32 122, label %cond.false
    i32 121, label %cond.false
    i32 120, label %cond.false
    i32 112, label %sw.bb40
    i32 103, label %cleanup106.loopexit
    i32 57, label %sw.bb61
    i32 56, label %sw.bb61
    i32 55, label %sw.bb61
    i32 54, label %sw.bb61
    i32 53, label %sw.bb61
    i32 52, label %sw.bb61
    i32 51, label %sw.bb61
    i32 50, label %sw.bb61
    i32 49, label %sw.bb61
    i32 48, label %sw.bb61
    i32 114, label %cond.end
    i32 65, label %cond.false
    i32 66, label %cond.false
    i32 67, label %cond.false
    i32 68, label %cond.false
    i32 81, label %cond.false
    i32 82, label %cond.false
    i32 83, label %cond.false
    i32 84, label %cond.false
    i32 85, label %cond.false
    i32 87, label %cond.false
    i32 89, label %cond.false
    i32 90, label %cond.false
    i32 97, label %cond.false
    i32 98, label %cond.false
    i32 99, label %cond.false
    i32 100, label %cond.false
    i32 101, label %cond.false
    i32 102, label %cond.false
    i32 104, label %cond.false
    i32 106, label %cond.false
    i32 107, label %cond.false
    i32 108, label %cond.false
    i32 113, label %cond.false
    i32 116, label %cond.false
    i32 117, label %cond.false
    i32 118, label %cond.false
    i32 119, label %cond.false
  ], !dbg !3647

sw.bb40:                                          ; preds = %if.then37
  %call41 = tail call i32 @address_operand(%struct.rtx_def* %1, i32 0) #6, !dbg !3648
  %tobool42 = icmp eq i32 %call41, 0, !dbg !3648
  br i1 %tobool42, label %if.end71, label %cleanup106.loopexit, !dbg !3650

cond.false:                                       ; preds = %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37
  %call49 = tail call i32 @lookup_constraint(i8* %str.0) #6, !dbg !3651
  %call50 = tail call i32 @regclass_for_constraint(i32 %call49) #6, !dbg !3651
  br label %cond.end, !dbg !3652

cond.end:                                         ; preds = %if.then37, %cond.false
  %cond = phi i32 [ %call50, %cond.false ], [ 13, %if.then37 ], !dbg !3652
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3602, metadata !DIExpression()), !dbg !3653
  %cmp51 = icmp eq i32 %cond, 0, !dbg !3654
  br i1 %cmp51, label %if.else54, label %cleanup, !dbg !3656

if.else54:                                        ; preds = %cond.end
  %call55 = tail call i32 @lookup_constraint(i8* %str.0) #6, !dbg !3657
  %call56 = tail call zeroext i8 @constraint_satisfied_p(%struct.rtx_def* %1, i32 %call55) #6, !dbg !3657
  %tobool57 = icmp eq i8 %call56, 0, !dbg !3657
  %spec.select3 = select i1 %tobool57, i32 4, i32 1, !dbg !3659
  br label %cleanup, !dbg !3659

cleanup:                                          ; preds = %cond.end, %if.else54
  %cleanup.dest.slot.0 = phi i32 [ 1, %cond.end ], [ %spec.select3, %if.else54 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 4
  br i1 %cond1, label %if.end71, label %cleanup106.loopexit

sw.bb61:                                          ; preds = %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37, %if.then37
  %cmp62 = icmp ne i32 %original.0, -1, !dbg !3660
  %cmp65 = icmp ne i32 %original.0, %conv22, !dbg !3662
  %or.cond = and i1 %cmp62, %cmp65, !dbg !3663
  br i1 %or.cond, label %cleanup106.loopexit, label %if.end71, !dbg !3663

if.end71:                                         ; preds = %sw.bb40, %if.else35, %if.then33, %cleanup, %if.then37, %sw.bb61, %for.cond
  %ignore_p.2 = phi i8 [ 1, %for.cond ], [ 0, %if.then33 ], [ 0, %cleanup ], [ 0, %sw.bb40 ], [ 0, %if.then37 ], [ 0, %sw.bb61 ], [ %ignore_p.0, %if.else35 ], !dbg !3664
  %original.4 = phi i32 [ %original.0, %for.cond ], [ %original.0, %if.then33 ], [ %original.0, %cleanup ], [ %original.0, %sw.bb40 ], [ %original.0, %if.then37 ], [ %conv22, %sw.bb61 ], [ %original.0, %if.else35 ], !dbg !3640
  call void @llvm.dbg.value(metadata i32 %original.4, metadata !3596, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 %ignore_p.2, metadata !3598, metadata !DIExpression()), !dbg !3611
  %call73 = tail call fastcc i64 @insn_constraint_len(i8 signext %6, i8* %str.0) #7, !dbg !3665
  %add.ptr = getelementptr inbounds i8, i8* %str.0, i64 %call73, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3600, metadata !DIExpression()), !dbg !3611
  br label %for.cond, !dbg !3667, !llvm.loop !3668

for.end:                                          ; preds = %for.cond
  %original.0.lcssa = phi i32 [ %original.0, %for.cond ], !dbg !3640
  call void @llvm.dbg.value(metadata i32 %original.0.lcssa, metadata !3596, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %original.0.lcssa, metadata !3596, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %original.0.lcssa, metadata !3596, metadata !DIExpression()), !dbg !3611
  %cmp74 = icmp eq i32 %original.0.lcssa, -1, !dbg !3671
  br i1 %cmp74, label %cleanup106, label %if.end77, !dbg !3673

if.end77:                                         ; preds = %for.end
  %sub78 = add nsw i32 %original.0.lcssa, -48, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %sub78, metadata !3597, metadata !DIExpression()), !dbg !3611
  br i1 %tobool, label %if.end105, label %if.then80, !dbg !3675

if.then80:                                        ; preds = %if.end77
  %idxprom81 = sext i32 %sub78 to i64, !dbg !3676
  %arrayidx82 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom81, !dbg !3676
  %7 = load i8*, i8** %arrayidx82, align 8, !dbg !3676
  %call83 = tail call fastcc zeroext i8 @commutative_constraint_p(i8* %7) #7, !dbg !3680
  %tobool84 = icmp eq i8 %call83, 0, !dbg !3680
  br i1 %tobool84, label %if.else87, label %if.then85, !dbg !3681

if.then85:                                        ; preds = %if.then80
  %inc86 = add nsw i32 %original.0.lcssa, -47, !dbg !3682
  call void @llvm.dbg.value(metadata i32 %inc86, metadata !3597, metadata !DIExpression()), !dbg !3611
  br label %if.end105, !dbg !3683

if.else87:                                        ; preds = %if.then80
  %cmp88 = icmp sgt i32 %sub78, 0, !dbg !3684
  br i1 %cmp88, label %land.lhs.true90, label %if.else99, !dbg !3686

land.lhs.true90:                                  ; preds = %if.else87
  %sub91 = add nsw i32 %original.0.lcssa, -49, !dbg !3687
  %idxprom92 = sext i32 %sub91 to i64, !dbg !3688
  %arrayidx93 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom92, !dbg !3688
  %8 = load i8*, i8** %arrayidx93, align 8, !dbg !3688
  %call94 = tail call fastcc zeroext i8 @commutative_constraint_p(i8* %8) #7, !dbg !3689
  %tobool96 = icmp eq i8 %call94, 0, !dbg !3689
  br i1 %tobool96, label %if.else99, label %if.then97, !dbg !3690

if.then97:                                        ; preds = %land.lhs.true90
  call void @llvm.dbg.value(metadata i32 %sub91, metadata !3597, metadata !DIExpression()), !dbg !3611
  br label %if.end105, !dbg !3691

if.else99:                                        ; preds = %land.lhs.true90, %if.else87
  %tobool100 = icmp eq i8 %commut_op_used_p.2, 0, !dbg !3692
  br i1 %tobool100, label %cleanup106, label %if.end105, !dbg !3694

if.end105:                                        ; preds = %if.else99, %if.end77, %if.then85, %if.then97
  %dup.2 = phi i32 [ %sub78, %if.end77 ], [ %inc86, %if.then85 ], [ %sub91, %if.then97 ], [ %sub78, %if.else99 ], !dbg !3611
  call void @llvm.dbg.value(metadata i32 %dup.2, metadata !3597, metadata !DIExpression()), !dbg !3611
  br label %cleanup106, !dbg !3695

cleanup106.loopexit:                              ; preds = %cleanup, %if.then37, %if.then37, %if.then37, %if.then37, %sw.bb61, %sw.bb40
  br label %cleanup106, !dbg !3696

cleanup106:                                       ; preds = %cleanup106.loopexit, %if.else99, %for.end, %entry, %lor.lhs.false, %if.end105
  %retval.6 = phi i32 [ %dup.2, %if.end105 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %for.end ], [ -1, %if.else99 ], [ -1, %cleanup106.loopexit ], !dbg !3611
  ret i32 %retval.6, !dbg !3696
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_reg_shuffles(%struct.rtx_def* %reg, i32 %op_num, i32 %freq, i8* %bound_p) unnamed_addr #5 !dbg !3697 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3701, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 %op_num, metadata !3702, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 %freq, metadata !3703, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %bound_p, metadata !3704, metadata !DIExpression()), !dbg !3707
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !3708
  %bf.load = load i32, i32* %0, align 8, !dbg !3708
  %bf.clear = and i32 %bf.load, 65535, !dbg !3708
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3708
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !3708

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 39, !dbg !3708
  br i1 %cmp3, label %land.lhs.true, label %cond.true, !dbg !3708

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3708
  %1 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3708
  %2 = load i32*, i32** %1, align 8, !dbg !3708
  %bf.load4 = load i32, i32* %2, align 8, !dbg !3708
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !3708
  %cmp6 = icmp eq i32 %bf.clear5, 37, !dbg !3708
  br i1 %cmp6, label %cond.end, label %cond.true, !dbg !3708

cond.true:                                        ; preds = %land.lhs.true, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3708
  br label %cond.end, !dbg !3708

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()), !dbg !3707
  %3 = zext i32 %op_num to i64, !dbg !3709
  %4 = zext i32 %op_num to i64, !dbg !3709
  br label %for.cond, !dbg !3709

for.cond:                                         ; preds = %for.inc, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %cond.end ], !dbg !3711
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3705, metadata !DIExpression()), !dbg !3707
  %5 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3712
  %6 = sext i8 %5 to i64, !dbg !3714
  %cmp7 = icmp slt i64 %indvars.iv, %6, !dbg !3714
  br i1 %cmp7, label %for.body, label %for.end, !dbg !3715

for.body:                                         ; preds = %for.cond
  %arrayidx9 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv, !dbg !3716
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx9, align 8, !dbg !3716
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3706, metadata !DIExpression()), !dbg !3707
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !3718
  %bf.load10 = load i32, i32* %8, align 8, !dbg !3718
  %bf.clear11 = and i32 %bf.load10, 65535, !dbg !3718
  %cmp12 = icmp eq i32 %bf.clear11, 37, !dbg !3718
  br i1 %cmp12, label %lor.lhs.false28, label %lor.lhs.false14, !dbg !3718

lor.lhs.false14:                                  ; preds = %for.body
  %cmp17 = icmp eq i32 %bf.clear11, 39, !dbg !3718
  br i1 %cmp17, label %land.lhs.true19, label %for.inc, !dbg !3718

land.lhs.true19:                                  ; preds = %lor.lhs.false14
  %arrayidx22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3718
  %9 = bitcast %union.rtunion_def* %arrayidx22 to i32**, !dbg !3718
  %10 = load i32*, i32** %9, align 8, !dbg !3718
  %bf.load24 = load i32, i32* %10, align 8, !dbg !3718
  %bf.clear25 = and i32 %bf.load24, 65535, !dbg !3718
  %cmp26 = icmp ne i32 %bf.clear25, 37, !dbg !3718
  %cmp29 = icmp eq i64 %indvars.iv, %3, !dbg !3720
  %or.cond = or i1 %cmp26, %cmp29, !dbg !3721
  br i1 %or.cond, label %for.inc, label %lor.lhs.false31, !dbg !3721

lor.lhs.false28:                                  ; preds = %for.body
  %cmp29.old = icmp eq i64 %indvars.iv, %4, !dbg !3720
  br i1 %cmp29.old, label %for.inc, label %lor.lhs.false31, !dbg !3722

lor.lhs.false31:                                  ; preds = %land.lhs.true19, %lor.lhs.false28
  %arrayidx33 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv, !dbg !3723
  %11 = load i32, i32* %arrayidx33, align 4, !dbg !3723
  %cmp34 = icmp eq i32 %11, 1, !dbg !3724
  br i1 %cmp34, label %lor.lhs.false36, label %for.inc, !dbg !3725

lor.lhs.false36:                                  ; preds = %lor.lhs.false31
  %arrayidx38 = getelementptr inbounds i8, i8* %bound_p, i64 %indvars.iv, !dbg !3726
  %12 = load i8, i8* %arrayidx38, align 1, !dbg !3726
  %tobool = icmp eq i8 %12, 0, !dbg !3726
  br i1 %tobool, label %if.end, label %for.inc, !dbg !3727

if.end:                                           ; preds = %lor.lhs.false36
  %call = tail call fastcc zeroext i8 @process_regs_for_copy(%struct.rtx_def* %reg, %struct.rtx_def* %7, i8 zeroext 0, %struct.rtx_def* null, i32 %freq) #7, !dbg !3728
  br label %for.inc, !dbg !3729

for.inc:                                          ; preds = %lor.lhs.false36, %lor.lhs.false31, %lor.lhs.false14, %lor.lhs.false28, %land.lhs.true19, %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3730
  call void @llvm.dbg.value(metadata i32 undef, metadata !3705, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3707
  br label %for.cond, !dbg !3731, !llvm.loop !3732

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3734
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @go_through_subreg(%struct.rtx_def* %x, i32* %offset) unnamed_addr #5 !dbg !3735 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32* %offset, metadata !3740, metadata !DIExpression()), !dbg !3742
  store i32 0, i32* %offset, align 4, !dbg !3743
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3744
  %bf.load = load i32, i32* %0, align 8, !dbg !3744
  %bf.clear = and i32 %bf.load, 65535, !dbg !3744
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3744
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3746

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3747
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3747
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3747
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3741, metadata !DIExpression()), !dbg !3742
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %1) #7, !dbg !3748
  %cmp1 = icmp ult i32 %call, 53, !dbg !3750
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3751

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %1) #7, !dbg !3752
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3753
  %bf.load4 = load i32, i32* %2, align 8, !dbg !3753
  %bf.lshr = lshr i32 %bf.load4, 16, !dbg !3753
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !3753
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3754
  %rt_uint = bitcast %union.rtunion_def* %3 to i32*, !dbg !3754
  %4 = load i32, i32* %rt_uint, align 8, !dbg !3754
  %bf.load9 = load i32, i32* %0, align 8, !dbg !3755
  %bf.lshr10 = lshr i32 %bf.load9, 16, !dbg !3755
  %bf.clear11 = and i32 %bf.lshr10, 255, !dbg !3755
  %call12 = tail call i32 @subreg_regno_offset(i32 %call3, i32 %bf.clear5, i32 %4, i32 %bf.clear11) #6, !dbg !3756
  store i32 %call12, i32* %offset, align 4, !dbg !3757
  br label %cleanup, !dbg !3758

if.else:                                          ; preds = %if.end
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3759
  %rt_uint16 = bitcast %union.rtunion_def* %5 to i32*, !dbg !3759
  %6 = load i32, i32* %rt_uint16, align 8, !dbg !3759
  %div = lshr i32 %6, 2, !dbg !3760
  store i32 %div, i32* %offset, align 4, !dbg !3761
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else, %entry
  %retval.0 = phi %struct.rtx_def* [ %x, %entry ], [ %1, %if.else ], [ %1, %if.then2 ], !dbg !3742
  ret %struct.rtx_def* %retval.0, !dbg !3762
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3763 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3770, metadata !DIExpression()), !dbg !3771
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3772
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3772
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3772
  ret i32 %0, !dbg !3773
}

declare dso_local %struct.ira_allocno_copy* @ira_add_allocno_copy(%struct.ira_allocno*, %struct.ira_allocno*, i32, i8 zeroext, %struct.rtx_def*, %struct.ira_loop_tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i32 @reg_classes_intersect_p(i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 %mode, i32 %from, i32 %to) unnamed_addr #0 !dbg !3774 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3778, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %from, metadata !3779, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %to, metadata !3780, metadata !DIExpression()), !dbg !3781
  %idxprom = zext i32 %mode to i64, !dbg !3782
  %arrayidx = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @ira_register_move_cost, i64 0, i64 %idxprom, !dbg !3782
  %0 = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !3782
  %cmp = icmp eq [27 x i16]* %0, null, !dbg !3784
  br i1 %cmp, label %if.then, label %if.end, !dbg !3785

if.then:                                          ; preds = %entry
  tail call void @ira_init_register_move_cost(i32 %mode) #6, !dbg !3786
  %.pre = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !3787
  br label %if.end, !dbg !3786

if.end:                                           ; preds = %if.then, %entry
  %1 = phi [27 x i16]* [ %.pre, %if.then ], [ %0, %entry ], !dbg !3787
  %idxprom3 = zext i32 %from to i64, !dbg !3787
  %idxprom5 = zext i32 %to to i64, !dbg !3787
  %arrayidx6 = getelementptr inbounds [27 x i16], [27 x i16]* %1, i64 %idxprom3, i64 %idxprom5, !dbg !3787
  %2 = load i16, i16* %arrayidx6, align 2, !dbg !3787
  %conv = zext i16 %2 to i32, !dbg !3787
  ret i32 %conv, !dbg !3788
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocate_and_set_costs(i32** %vec, i32 %cover_class, i32 %val) unnamed_addr #0 !dbg !3789 {
entry:
  call void @llvm.dbg.value(metadata i32** %vec, metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %cover_class, metadata !3795, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %val, metadata !3796, metadata !DIExpression()), !dbg !3800
  %0 = load i32*, i32** %vec, align 8, !dbg !3801
  %cmp = icmp eq i32* %0, null, !dbg !3803
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !3804

if.end:                                           ; preds = %entry
  %call = tail call i32* @ira_allocate_cost_vector(i32 %cover_class) #6, !dbg !3805
  call void @llvm.dbg.value(metadata i32* %call, metadata !3798, metadata !DIExpression()), !dbg !3800
  store i32* %call, i32** %vec, align 8, !dbg !3806
  %idxprom = zext i32 %cover_class to i64, !dbg !3807
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_hard_regs_num, i64 0, i64 %idxprom, !dbg !3807
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %1, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()), !dbg !3800
  %2 = sext i32 %1 to i64, !dbg !3808
  br label %for.cond, !dbg !3808

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !3810
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3797, metadata !DIExpression()), !dbg !3800
  %cmp1 = icmp slt i64 %indvars.iv, %2, !dbg !3811
  br i1 %cmp1, label %for.body, label %cleanup.cont.loopexit, !dbg !3813

for.body:                                         ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds i32, i32* %call, i64 %indvars.iv, !dbg !3814
  store i32 %val, i32* %arrayidx3, align 4, !dbg !3815
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3816
  call void @llvm.dbg.value(metadata i32 undef, metadata !3797, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3800
  br label %for.cond, !dbg !3817, !llvm.loop !3818

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3820

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !3820
}

declare dso_local i32 @subreg_regno_offset(i32, i32, i32, i32) local_unnamed_addr #2

declare dso_local void @ira_init_register_move_cost(i32) local_unnamed_addr #2

declare dso_local i32* @ira_allocate_cost_vector(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @commutative_constraint_p(i8* %str) unnamed_addr #5 !dbg !3821 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !3825, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8 0, metadata !3826, metadata !DIExpression()), !dbg !3828
  br label %for.cond, !dbg !3829

for.cond:                                         ; preds = %if.end17, %entry
  %ignore_p.0 = phi i8 [ 0, %entry ], [ %ignore_p.2, %if.end17 ], !dbg !3831
  %str.addr.0 = phi i8* [ %str, %entry ], [ %add.ptr, %if.end17 ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !3825, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8 %ignore_p.0, metadata !3826, metadata !DIExpression()), !dbg !3828
  %0 = load i8, i8* %str.addr.0, align 1, !dbg !3832
  call void @llvm.dbg.value(metadata i32 undef, metadata !3827, metadata !DIExpression()), !dbg !3828
  %cmp = icmp eq i8 %0, 0, !dbg !3835
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3837

if.end:                                           ; preds = %for.cond
  %conv = sext i8 %0 to i32, !dbg !3832
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3827, metadata !DIExpression()), !dbg !3828
  %call = tail call fastcc i64 @insn_constraint_len(i8 signext %0, i8* %str.addr.0) #7, !dbg !3838
  %add.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 %call, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3825, metadata !DIExpression()), !dbg !3828
  switch i32 %conv, label %if.else9 [
    i32 35, label %if.end17
    i32 44, label %if.end16
  ], !dbg !3840

if.else9:                                         ; preds = %if.end
  %tobool = icmp eq i8 %ignore_p.0, 0, !dbg !3841
  %cmp11 = icmp eq i8 %0, 37, !dbg !3845
  %or.cond = and i1 %tobool, %cmp11, !dbg !3848
  br i1 %or.cond, label %cleanup, label %if.end16, !dbg !3848

if.end16:                                         ; preds = %if.else9, %if.end
  %ignore_p.1 = phi i8 [ 0, %if.end ], [ %ignore_p.0, %if.else9 ], !dbg !3831
  call void @llvm.dbg.value(metadata i8 %ignore_p.1, metadata !3826, metadata !DIExpression()), !dbg !3828
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.end16
  %ignore_p.2 = phi i8 [ %ignore_p.1, %if.end16 ], [ 1, %if.end ], !dbg !3849
  call void @llvm.dbg.value(metadata i8 %ignore_p.2, metadata !3826, metadata !DIExpression()), !dbg !3828
  br label %for.cond, !dbg !3850, !llvm.loop !3851

cleanup:                                          ; preds = %if.else9, %for.cond
  %retval.0 = phi i8 [ 0, %for.cond ], [ 1, %if.else9 ], !dbg !3828
  ret i8 %retval.0, !dbg !3854
}

declare dso_local i32 @address_operand(%struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local i32 @regclass_for_constraint(i32) local_unnamed_addr #2

declare dso_local i32 @lookup_constraint(i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @constraint_satisfied_p(%struct.rtx_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @insn_constraint_len(i8 signext %fc, i8* %str) unnamed_addr #0 !dbg !3855 {
entry:
  call void @llvm.dbg.value(metadata i8 %fc, metadata !3860, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8* %str, metadata !3861, metadata !DIExpression()), !dbg !3862
  %cond = icmp eq i8 %fc, 89, !dbg !3863
  %retval.0 = select i1 %cond, i64 2, i64 1, !dbg !3863
  ret i64 %retval.0, !dbg !3864
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_copy_iter_init(%struct.ira_copy_iterator* %i) unnamed_addr #0 !dbg !3865 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_copy_iterator* %i, metadata !3870, metadata !DIExpression()), !dbg !3871
  %n = getelementptr inbounds %struct.ira_copy_iterator, %struct.ira_copy_iterator* %i, i64 0, i32 0, !dbg !3872
  store i32 0, i32* %n, align 4, !dbg !3873
  ret void, !dbg !3874
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_copy_iter_cond(%struct.ira_copy_iterator* %i, %struct.ira_allocno_copy** %cp) unnamed_addr #0 !dbg !3875 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_copy_iterator* %i, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata %struct.ira_allocno_copy** %cp, metadata !3881, metadata !DIExpression()), !dbg !3883
  %n1 = getelementptr inbounds %struct.ira_copy_iterator, %struct.ira_copy_iterator* %i, i64 0, i32 0, !dbg !3884
  %0 = load i32, i32* %n1, align 4, !dbg !3884
  call void @llvm.dbg.value(metadata i32 %0, metadata !3882, metadata !DIExpression()), !dbg !3883
  %1 = load i32, i32* @ira_copies_num, align 4, !dbg !3886
  %2 = load %struct.ira_allocno_copy**, %struct.ira_allocno_copy*** @ira_copies, align 8, !dbg !3888
  %3 = sext i32 %0 to i64, !dbg !3890
  %4 = sext i32 %1 to i64, !dbg !3890
  br label %for.cond, !dbg !3890

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %3, %entry ], !dbg !3891
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3882, metadata !DIExpression()), !dbg !3883
  %cmp = icmp slt i64 %indvars.iv, %4, !dbg !3892
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !3893

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ira_allocno_copy*, %struct.ira_allocno_copy** %2, i64 %indvars.iv, !dbg !3894
  %5 = load %struct.ira_allocno_copy*, %struct.ira_allocno_copy** %arrayidx, align 8, !dbg !3894
  %cmp2 = icmp eq %struct.ira_allocno_copy* %5, null, !dbg !3895
  br i1 %cmp2, label %for.inc, label %if.then, !dbg !3896

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.ira_allocno_copy* [ %5, %for.body ], !dbg !3894
  %indvars.iv.lcssa3 = phi i64 [ %indvars.iv, %for.body ], !dbg !3891
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa3, metadata !3882, metadata !DIExpression()), !dbg !3883
  %6 = ptrtoint %struct.ira_allocno_copy* %.lcssa to i64, !dbg !3896
  %7 = trunc i64 %indvars.iv.lcssa3 to i32, !dbg !3883
  call void @llvm.dbg.value(metadata i32 %7, metadata !3882, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 %7, metadata !3882, metadata !DIExpression()), !dbg !3883
  %8 = bitcast %struct.ira_allocno_copy** %cp to i64*, !dbg !3897
  store i64 %6, i64* %8, align 8, !dbg !3897
  %add = add nsw i32 %7, 1, !dbg !3899
  store i32 %add, i32* %n1, align 4, !dbg !3900
  br label %cleanup, !dbg !3901

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3902
  call void @llvm.dbg.value(metadata i32 undef, metadata !3882, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3883
  br label %for.cond, !dbg !3903, !llvm.loop !3904

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3906

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %cleanup.loopexit ], !dbg !3883
  ret i8 %retval.0, !dbg !3906
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
!llvm.module.flags = !{!1809, !1810, !1811}
!llvm.ident = !{!1812}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "conflicts", scope: !2, file: !3, line: 51, type: !1804, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !585, globals: !1806, nameTableKind: None)
!3 = !DIFile(filename: "ira-conflicts.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !143, !147, !153, !158, !163, !182, !189, !196, !390, !420, !563}
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
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !564, line: 36, baseType: !7, size: 32, elements: !565)
!564 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!565 = !{!566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!566 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!567 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!568 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!569 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!570 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!571 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!572 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!573 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!574 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!575 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!576 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!577 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!578 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!579 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!580 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!581 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!582 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!583 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!584 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!585 = !{!586, !587, !588, !589, !592, !593, !595, !196, !598, !600, !1803, !1804, !599, !7, !420, !611, !597, !563, !1805, !5}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!588 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !596, line: 42, baseType: !597)
!596 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!597 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_t", file: !602, line: 63, baseType: !603)
!602 = !DIFile(filename: "./ira-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno", file: !602, line: 232, size: 1984, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !1705, !1706, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1755, !1756, !1757, !1758, !1759, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !604, file: !602, line: 237, baseType: !588, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !604, file: !602, line: 239, baseType: !588, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !604, file: !602, line: 242, baseType: !5, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hard_regno", scope: !604, file: !602, line: 249, baseType: !588, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !604, file: !602, line: 251, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !612, line: 50, baseType: !613)
!612 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !421, line: 240, size: 384, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !614, file: !421, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !614, file: !421, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !614, file: !421, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !614, file: !421, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !614, file: !421, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !614, file: !421, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !614, file: !421, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !614, file: !421, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !614, file: !421, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !614, file: !421, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !614, file: !421, line: 321, baseType: !627, size: 320, offset: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !421, line: 315, size: 320, elements: !628)
!628 = !{!629, !1672, !1674, !1703, !1704}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !627, file: !421, line: 316, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 64, elements: !646)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !421, line: 183, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !421, line: 166, size: 64, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !648, !649, !661, !664, !724, !1650, !1651, !1662, !1669}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !632, file: !421, line: 168, baseType: !588, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !632, file: !421, line: 169, baseType: !7, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !632, file: !421, line: 170, baseType: !593, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !632, file: !421, line: 171, baseType: !611, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !632, file: !421, line: 172, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !612, line: 53, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !421, line: 359, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !641, file: !421, line: 360, baseType: !588, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !641, file: !421, line: 361, baseType: !645, size: 64, offset: 64)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 64, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 1)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !632, file: !421, line: 173, baseType: !5, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !632, file: !421, line: 174, baseType: !650, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !421, line: 133, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 115, size: 32, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !651, file: !421, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !651, file: !421, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !651, file: !421, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !651, file: !421, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !651, file: !421, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !651, file: !421, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !651, file: !421, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !651, file: !421, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !632, file: !421, line: 175, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !421, line: 175, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !632, file: !421, line: 176, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !667, line: 75, size: 256, elements: !668)
!667 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!668 = !{!669, !683, !684, !685}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !666, file: !667, line: 76, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !667, line: 68, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !667, line: 63, size: 320, elements: !673)
!673 = !{!674, !676, !677, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !667, line: 64, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !672, file: !667, line: 65, baseType: !675, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !672, file: !667, line: 66, baseType: !7, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !672, file: !667, line: 67, baseType: !679, size: 128, offset: 192)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 128, elements: !681)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !667, line: 29, baseType: !597)
!681 = !{!682}
!682 = !DISubrange(count: 2)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !666, file: !667, line: 77, baseType: !670, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !666, file: !667, line: 78, baseType: !7, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !666, file: !667, line: 79, baseType: !686, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !667, line: 49, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !667, line: 45, size: 832, elements: !689)
!689 = !{!690, !691, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !688, file: !667, line: 46, baseType: !675, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !688, file: !667, line: 47, baseType: !665, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !688, file: !667, line: 48, baseType: !693, size: 704, offset: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !694, line: 164, size: 704, elements: !695)
!694 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!695 = !{!696, !697, !707, !708, !709, !710, !711, !712, !716, !720, !721, !722, !723}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !693, file: !694, line: 166, baseType: !599, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !693, file: !694, line: 167, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !694, line: 157, size: 192, elements: !700)
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !699, file: !694, line: 159, baseType: !590, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !699, file: !694, line: 160, baseType: !698, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !699, file: !694, line: 161, baseType: !704, size: 32, offset: 128)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 32, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 4)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !693, file: !694, line: 168, baseType: !590, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !693, file: !694, line: 169, baseType: !590, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !693, file: !694, line: 170, baseType: !590, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !693, file: !694, line: 171, baseType: !599, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !693, file: !694, line: 172, baseType: !588, size: 32, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !693, file: !694, line: 176, baseType: !713, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!698, !592, !599}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !693, file: !694, line: 177, baseType: !717, size: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !592, !698}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !693, file: !694, line: 178, baseType: !592, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !693, file: !694, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !693, file: !694, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !693, file: !694, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !632, file: !421, line: 177, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !612, line: 56, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !164, line: 3371, size: 1792, elements: !728)
!728 = !{!729, !762, !768, !779, !798, !809, !814, !821, !827, !840, !852, !890, !895, !923, !931, !932, !937, !946, !952, !957, !961, !965, !1277, !1326, !1332, !1339, !1346, !1369, !1394, !1411, !1423, !1445, !1460, !1632}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !727, file: !164, line: 3372, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !164, line: 360, size: 64, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !730, file: !164, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !730, file: !164, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !730, file: !164, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !730, file: !164, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !730, file: !164, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !730, file: !164, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !730, file: !164, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !730, file: !164, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !730, file: !164, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !730, file: !164, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !730, file: !164, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !730, file: !164, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !730, file: !164, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !730, file: !164, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !730, file: !164, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !730, file: !164, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !730, file: !164, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !730, file: !164, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !730, file: !164, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !730, file: !164, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !730, file: !164, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !730, file: !164, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !730, file: !164, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !730, file: !164, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !730, file: !164, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !730, file: !164, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !730, file: !164, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !730, file: !164, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !730, file: !164, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !730, file: !164, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !727, file: !164, line: 3373, baseType: !763, size: 192)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !164, line: 402, size: 192, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !763, file: !164, line: 403, baseType: !730, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !763, file: !164, line: 404, baseType: !725, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !164, line: 405, baseType: !725, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !727, file: !164, line: 3374, baseType: !769, size: 320)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !164, line: 1384, size: 320, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !769, file: !164, line: 1385, baseType: !763, size: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !769, file: !164, line: 1386, baseType: !773, size: 128, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !774, line: 58, baseType: !775)
!774 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 54, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !775, file: !774, line: 56, baseType: !597, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !775, file: !774, line: 57, baseType: !599, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !727, file: !164, line: 3375, baseType: !780, size: 256)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !164, line: 1397, size: 256, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !780, file: !164, line: 1398, baseType: !763, size: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !780, file: !164, line: 1399, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !786, line: 52, size: 256, elements: !787)
!786 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!787 = !{!788, !789, !790, !791, !792, !793, !794}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !785, file: !786, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !785, file: !786, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !785, file: !786, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !785, file: !786, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !785, file: !786, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !785, file: !786, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !785, file: !786, line: 62, baseType: !795, size: 192, offset: 64)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 192, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 3)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !727, file: !164, line: 3376, baseType: !799, size: 256)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !164, line: 1408, size: 256, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !799, file: !164, line: 1409, baseType: !763, size: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !799, file: !164, line: 1410, baseType: !803, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !805, line: 27, size: 192, elements: !806)
!805 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !804, file: !805, line: 29, baseType: !773, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !804, file: !805, line: 30, baseType: !5, size: 32, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !727, file: !164, line: 3377, baseType: !810, size: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !164, line: 1437, size: 256, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !810, file: !164, line: 1438, baseType: !763, size: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !810, file: !164, line: 1439, baseType: !725, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !727, file: !164, line: 3378, baseType: !815, size: 256)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !164, line: 1418, size: 256, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !815, file: !164, line: 1419, baseType: !763, size: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !815, file: !164, line: 1420, baseType: !588, size: 32, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !815, file: !164, line: 1421, baseType: !820, size: 8, offset: 224)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 8, elements: !646)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !727, file: !164, line: 3379, baseType: !822, size: 320)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !164, line: 1428, size: 320, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !822, file: !164, line: 1429, baseType: !763, size: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !822, file: !164, line: 1430, baseType: !725, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !822, file: !164, line: 1431, baseType: !725, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !727, file: !164, line: 3380, baseType: !828, size: 320)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !164, line: 1460, size: 320, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !828, file: !164, line: 1461, baseType: !763, size: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !828, file: !164, line: 1462, baseType: !832, size: 128, offset: 192)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !833, line: 31, size: 128, elements: !834)
!833 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!834 = !{!835, !838, !839}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !832, file: !833, line: 32, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !832, file: !833, line: 33, baseType: !7, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !832, file: !833, line: 34, baseType: !7, size: 32, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !727, file: !164, line: 3381, baseType: !841, size: 384)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !164, line: 2507, size: 384, elements: !842)
!842 = !{!843, !844, !849, !850, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !841, file: !164, line: 2508, baseType: !763, size: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !841, file: !164, line: 2509, baseType: !845, size: 32, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !846, line: 58, baseType: !847)
!846 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !848, line: 44, baseType: !7)
!848 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !841, file: !164, line: 2510, baseType: !7, size: 32, offset: 224)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !841, file: !164, line: 2511, baseType: !725, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !841, file: !164, line: 2512, baseType: !725, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !727, file: !164, line: 3382, baseType: !853, size: 896)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !164, line: 2652, size: 896, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !853, file: !164, line: 2653, baseType: !841, size: 384)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !853, file: !164, line: 2654, baseType: !725, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !853, file: !164, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !853, file: !164, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !853, file: !164, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !853, file: !164, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !853, file: !164, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !853, file: !164, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !853, file: !164, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !853, file: !164, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !853, file: !164, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !853, file: !164, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !853, file: !164, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !853, file: !164, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !853, file: !164, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !853, file: !164, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !853, file: !164, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !853, file: !164, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !853, file: !164, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !853, file: !164, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !853, file: !164, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !853, file: !164, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !853, file: !164, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !853, file: !164, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !853, file: !164, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !853, file: !164, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !853, file: !164, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !853, file: !164, line: 2703, baseType: !7, size: 32, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !853, file: !164, line: 2705, baseType: !725, size: 64, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !853, file: !164, line: 2706, baseType: !725, size: 64, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !853, file: !164, line: 2707, baseType: !725, size: 64, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !853, file: !164, line: 2708, baseType: !725, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !853, file: !164, line: 2711, baseType: !888, size: 64, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !164, line: 2711, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !727, file: !164, line: 3383, baseType: !891, size: 960)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !164, line: 2756, size: 960, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !891, file: !164, line: 2757, baseType: !853, size: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !891, file: !164, line: 2758, baseType: !611, size: 64, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !727, file: !164, line: 3384, baseType: !896, size: 1472)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !164, line: 3114, size: 1472, elements: !897)
!897 = !{!898, !919, !920, !921, !922}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !896, file: !164, line: 3115, baseType: !899, size: 1216)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !164, line: 2984, size: 1216, elements: !900)
!900 = !{!901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !899, file: !164, line: 2985, baseType: !891, size: 960)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !899, file: !164, line: 2986, baseType: !725, size: 64, offset: 960)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !899, file: !164, line: 2987, baseType: !725, size: 64, offset: 1024)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !899, file: !164, line: 2988, baseType: !725, size: 64, offset: 1088)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !899, file: !164, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !899, file: !164, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !899, file: !164, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !899, file: !164, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !899, file: !164, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !899, file: !164, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !899, file: !164, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !899, file: !164, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !899, file: !164, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !899, file: !164, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !899, file: !164, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !899, file: !164, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !899, file: !164, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !899, file: !164, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !896, file: !164, line: 3117, baseType: !725, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !896, file: !164, line: 3119, baseType: !725, size: 64, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !896, file: !164, line: 3121, baseType: !725, size: 64, offset: 1344)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !896, file: !164, line: 3123, baseType: !725, size: 64, offset: 1408)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !727, file: !164, line: 3385, baseType: !924, size: 1088)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !164, line: 2874, size: 1088, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !924, file: !164, line: 2875, baseType: !891, size: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !924, file: !164, line: 2876, baseType: !611, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !924, file: !164, line: 2877, baseType: !929, size: 64, offset: 1024)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !164, line: 2856, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !727, file: !164, line: 3386, baseType: !899, size: 1216)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !727, file: !164, line: 3387, baseType: !933, size: 1280)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !164, line: 3093, size: 1280, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !164, line: 3094, baseType: !899, size: 1216)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !933, file: !164, line: 3095, baseType: !929, size: 64, offset: 1216)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !727, file: !164, line: 3388, baseType: !938, size: 1216)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !164, line: 2824, size: 1216, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !938, file: !164, line: 2825, baseType: !853, size: 896)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !938, file: !164, line: 2827, baseType: !725, size: 64, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !938, file: !164, line: 2828, baseType: !725, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !938, file: !164, line: 2829, baseType: !725, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !938, file: !164, line: 2830, baseType: !725, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !938, file: !164, line: 2831, baseType: !725, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !727, file: !164, line: 3389, baseType: !947, size: 1024)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !164, line: 2850, size: 1024, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !947, file: !164, line: 2851, baseType: !891, size: 960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !947, file: !164, line: 2852, baseType: !588, size: 32, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !947, file: !164, line: 2853, baseType: !588, size: 32, offset: 992)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !727, file: !164, line: 3390, baseType: !953, size: 1024)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !164, line: 2857, size: 1024, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !953, file: !164, line: 2858, baseType: !891, size: 960)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !953, file: !164, line: 2859, baseType: !929, size: 64, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !727, file: !164, line: 3391, baseType: !958, size: 960)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !164, line: 2862, size: 960, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !958, file: !164, line: 2863, baseType: !891, size: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !727, file: !164, line: 3392, baseType: !962, size: 1472)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !164, line: 3304, size: 1472, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !164, line: 3305, baseType: !896, size: 1472)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !727, file: !164, line: 3393, baseType: !966, size: 1792)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !164, line: 3248, size: 1792, elements: !967)
!967 = !{!968, !969, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !966, file: !164, line: 3249, baseType: !896, size: 1472)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !966, file: !164, line: 3251, baseType: !970, size: 64, offset: 1472)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !972, line: 463, size: 1152, elements: !973)
!972 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!973 = !{!974, !977, !1137, !1138, !1141, !1200, !1201, !1202, !1203, !1204, !1205, !1229, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !971, file: !972, line: 464, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !972, line: 464, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !971, file: !972, line: 467, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !148, line: 374, size: 640, elements: !980)
!980 = !{!981, !1112, !1113, !1126, !1127, !1128, !1129, !1130, !1131, !1133, !1135, !1136}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !979, file: !148, line: 377, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !612, line: 111, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !148, line: 217, size: 832, elements: !985)
!985 = !{!986, !1021, !1022, !1023, !1082, !1086, !1087, !1088, !1106, !1107, !1108, !1109, !1110, !1111}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !984, file: !148, line: 219, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !148, line: 151, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !148, line: 151, size: 128, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !989, file: !148, line: 151, baseType: !992, size: 128)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !148, line: 150, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !148, line: 150, size: 128, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !993, file: !148, line: 150, baseType: !7, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !993, file: !148, line: 150, baseType: !7, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !993, file: !148, line: 150, baseType: !998, size: 64, offset: 64)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 64, elements: !646)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !612, line: 108, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !148, line: 122, size: 512, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1013, !1014, !1015, !1016, !1017, !1018, !1019}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1001, file: !148, line: 124, baseType: !983, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1001, file: !148, line: 125, baseType: !983, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1001, file: !148, line: 131, baseType: !1006, size: 64, offset: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !148, line: 128, size: 64, elements: !1007)
!1007 = !{!1008, !1012}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1006, file: !148, line: 129, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !612, line: 66, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !612, line: 65, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1006, file: !148, line: 130, baseType: !611, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1001, file: !148, line: 134, baseType: !592, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1001, file: !148, line: 137, baseType: !725, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1001, file: !148, line: 138, baseType: !845, size: 32, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1001, file: !148, line: 142, baseType: !7, size: 32, offset: 352)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !148, line: 144, baseType: !588, size: 32, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1001, file: !148, line: 145, baseType: !588, size: 32, offset: 416)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1001, file: !148, line: 146, baseType: !1020, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !148, line: 119, baseType: !599)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !984, file: !148, line: 220, baseType: !987, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !984, file: !148, line: 223, baseType: !592, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !984, file: !148, line: 226, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 100, size: 1216, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1036, !1037, !1038, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1072, !1080, !1081}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1025, file: !135, line: 102, baseType: !588, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1025, file: !135, line: 105, baseType: !7, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1025, file: !135, line: 108, baseType: !983, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1025, file: !135, line: 111, baseType: !983, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1025, file: !135, line: 114, baseType: !1032, size: 64, offset: 192)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !135, line: 41, size: 64, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1032, file: !135, line: 42, baseType: !134, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1032, file: !135, line: 43, baseType: !7, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1025, file: !135, line: 117, baseType: !7, size: 32, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1025, file: !135, line: 120, baseType: !7, size: 32, offset: 288)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1025, file: !135, line: 123, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !135, line: 87, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !135, line: 87, size: 128, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1041, file: !135, line: 87, baseType: !1044, size: 128)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !135, line: 85, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !135, line: 85, size: 128, elements: !1046)
!1046 = !{!1047, !1048, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1045, file: !135, line: 85, baseType: !7, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1045, file: !135, line: 85, baseType: !7, size: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1045, file: !135, line: 85, baseType: !1050, size: 64, offset: 64)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 64, elements: !646)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !135, line: 84, baseType: !1024)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1025, file: !135, line: 126, baseType: !1024, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1025, file: !135, line: 129, baseType: !1024, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1025, file: !135, line: 132, baseType: !592, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1025, file: !135, line: 139, baseType: !725, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1025, file: !135, line: 143, baseType: !773, size: 128, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1025, file: !135, line: 146, baseType: !773, size: 128, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1025, file: !135, line: 148, baseType: !587, size: 8, offset: 896)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1025, file: !135, line: 149, baseType: !587, size: 8, offset: 904)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1025, file: !135, line: 153, baseType: !143, size: 32, offset: 928)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1025, file: !135, line: 156, baseType: !1062, size: 64, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !135, line: 48, size: 320, elements: !1064)
!1064 = !{!1065, !1069, !1070, !1071}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1063, file: !135, line: 50, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !612, line: 58, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !612, line: 57, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1063, file: !135, line: 59, baseType: !773, size: 128, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1063, file: !135, line: 64, baseType: !587, size: 8, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1063, file: !135, line: 67, baseType: !1062, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1025, file: !135, line: 159, baseType: !1073, size: 64, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !135, line: 72, size: 256, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1074, file: !135, line: 74, baseType: !1000, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1074, file: !135, line: 77, baseType: !1073, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1074, file: !135, line: 78, baseType: !1073, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1074, file: !135, line: 81, baseType: !1073, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1025, file: !135, line: 162, baseType: !587, size: 8, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1025, file: !135, line: 166, baseType: !725, size: 64, offset: 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !984, file: !148, line: 229, baseType: !1083, size: 128, offset: 256)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 128, elements: !681)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !148, line: 229, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !984, file: !148, line: 232, baseType: !983, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !984, file: !148, line: 233, baseType: !983, size: 64, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !984, file: !148, line: 238, baseType: !1089, size: 64, offset: 512)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !148, line: 235, size: 64, elements: !1090)
!1090 = !{!1091, !1097}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1089, file: !148, line: 236, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !148, line: 273, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1093, file: !148, line: 275, baseType: !1009, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1093, file: !148, line: 278, baseType: !1009, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1089, file: !148, line: 237, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !148, line: 259, size: 320, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1099, file: !148, line: 261, baseType: !611, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1099, file: !148, line: 262, baseType: !611, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1099, file: !148, line: 266, baseType: !611, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1099, file: !148, line: 267, baseType: !611, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1099, file: !148, line: 270, baseType: !588, size: 32, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !984, file: !148, line: 241, baseType: !1020, size: 64, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !984, file: !148, line: 244, baseType: !588, size: 32, offset: 640)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !984, file: !148, line: 247, baseType: !588, size: 32, offset: 672)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !984, file: !148, line: 250, baseType: !588, size: 32, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !984, file: !148, line: 253, baseType: !588, size: 32, offset: 736)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !148, line: 256, baseType: !588, size: 32, offset: 768)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !979, file: !148, line: 378, baseType: !982, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !979, file: !148, line: 381, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !148, line: 282, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !148, line: 282, size: 128, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1116, file: !148, line: 282, baseType: !1119, size: 128)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !148, line: 281, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !148, line: 281, size: 128, elements: !1121)
!1121 = !{!1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1120, file: !148, line: 281, baseType: !7, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1120, file: !148, line: 281, baseType: !7, size: 32, offset: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1120, file: !148, line: 281, baseType: !1125, size: 64, offset: 64)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 64, elements: !646)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !979, file: !148, line: 384, baseType: !588, size: 32, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !979, file: !148, line: 387, baseType: !588, size: 32, offset: 224)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !979, file: !148, line: 390, baseType: !588, size: 32, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !979, file: !148, line: 394, baseType: !1114, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !979, file: !148, line: 396, baseType: !147, size: 32, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !979, file: !148, line: 399, baseType: !1132, size: 64, offset: 416)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !681)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !979, file: !148, line: 402, baseType: !1134, size: 64, offset: 480)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !681)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !979, file: !148, line: 406, baseType: !588, size: 32, offset: 544)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !979, file: !148, line: 409, baseType: !588, size: 32, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !971, file: !972, line: 470, baseType: !1010, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !971, file: !972, line: 473, baseType: !1139, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !972, line: 166, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !971, file: !972, line: 476, baseType: !1142, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !135, line: 187, size: 256, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1199}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1143, file: !135, line: 189, baseType: !588, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1143, file: !135, line: 192, baseType: !1039, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1143, file: !135, line: 197, baseType: !1148, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1149, line: 144, baseType: !1150)
!1149 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1149, line: 100, size: 896, elements: !1152)
!1152 = !{!1153, !1161, !1166, !1171, !1173, !1176, !1177, !1178, !1179, !1180, !1185, !1187, !1188, !1193, !1198}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1151, file: !1149, line: 102, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1149, line: 52, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1149, line: 47, baseType: !7)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1151, file: !1149, line: 105, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1149, line: 59, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!588, !1159, !1159}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1151, file: !1149, line: 108, baseType: !1167, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1149, line: 63, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !592}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1151, file: !1149, line: 111, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1151, file: !1149, line: 114, baseType: !1174, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1175, line: 46, baseType: !597)
!1175 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1151, file: !1149, line: 117, baseType: !1174, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1151, file: !1149, line: 120, baseType: !1174, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1151, file: !1149, line: 124, baseType: !7, size: 32, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1151, file: !1149, line: 128, baseType: !7, size: 32, offset: 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1151, file: !1149, line: 131, baseType: !1181, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1149, line: 75, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!592, !1174, !1174}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1151, file: !1149, line: 132, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1149, line: 78, baseType: !1168)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1151, file: !1149, line: 135, baseType: !592, size: 64, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1151, file: !1149, line: 136, baseType: !1189, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1149, line: 82, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!592, !592, !1174, !1174}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1151, file: !1149, line: 137, baseType: !1194, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1149, line: 83, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !592, !592}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1151, file: !1149, line: 141, baseType: !7, size: 32, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1143, file: !135, line: 200, baseType: !1024, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !971, file: !972, line: 479, baseType: !1148, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !971, file: !972, line: 484, baseType: !725, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !971, file: !972, line: 488, baseType: !725, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !971, file: !972, line: 493, baseType: !725, size: 64, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !971, file: !972, line: 496, baseType: !725, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !971, file: !972, line: 501, baseType: !1206, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !159, line: 2355, size: 576, elements: !1208)
!1208 = !{!1209, !1212, !1213, !1214, !1215, !1217, !1218, !1223, !1224, !1225, !1226, !1227, !1228}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1207, file: !159, line: 2356, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !159, line: 2356, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1207, file: !159, line: 2357, baseType: !593, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1207, file: !159, line: 2358, baseType: !588, size: 32, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1207, file: !159, line: 2359, baseType: !588, size: 32, offset: 160)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1207, file: !159, line: 2360, baseType: !1216, size: 128, offset: 192)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 128, elements: !705)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1207, file: !159, line: 2364, baseType: !588, size: 32, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1207, file: !159, line: 2367, baseType: !1219, size: 128, offset: 384)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !159, line: 2349, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1219, file: !159, line: 2351, baseType: !611, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1219, file: !159, line: 2352, baseType: !599, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1207, file: !159, line: 2371, baseType: !158, size: 32, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1207, file: !159, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1207, file: !159, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1207, file: !159, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1207, file: !159, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1207, file: !159, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !971, file: !972, line: 504, baseType: !1230, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !972, line: 504, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !971, file: !972, line: 507, baseType: !1148, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !971, file: !972, line: 510, baseType: !588, size: 32, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !971, file: !972, line: 513, baseType: !588, size: 32, offset: 864)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !971, file: !972, line: 516, baseType: !845, size: 32, offset: 896)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !971, file: !972, line: 519, baseType: !845, size: 32, offset: 928)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !971, file: !972, line: 522, baseType: !7, size: 32, offset: 960)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !971, file: !972, line: 523, baseType: !7, size: 32, offset: 992)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !971, file: !972, line: 528, baseType: !593, size: 64, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !971, file: !972, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !971, file: !972, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !971, file: !972, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !971, file: !972, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !971, file: !972, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !971, file: !972, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !971, file: !972, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !971, file: !972, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !971, file: !972, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !971, file: !972, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !971, file: !972, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !971, file: !972, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !971, file: !972, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !971, file: !972, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !971, file: !972, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !971, file: !972, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !966, file: !164, line: 3254, baseType: !725, size: 64, offset: 1536)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !966, file: !164, line: 3257, baseType: !725, size: 64, offset: 1600)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !966, file: !164, line: 3258, baseType: !725, size: 64, offset: 1664)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !966, file: !164, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !966, file: !164, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !966, file: !164, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !966, file: !164, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !966, file: !164, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !966, file: !164, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !966, file: !164, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !966, file: !164, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !966, file: !164, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !966, file: !164, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !966, file: !164, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !966, file: !164, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !966, file: !164, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !966, file: !164, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !966, file: !164, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !966, file: !164, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !966, file: !164, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !966, file: !164, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !164, line: 3394, baseType: !1278, size: 1344)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !164, line: 2279, size: 1344, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1305, !1306, !1307, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1278, file: !164, line: 2280, baseType: !763, size: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1278, file: !164, line: 2281, baseType: !725, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1278, file: !164, line: 2282, baseType: !725, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1278, file: !164, line: 2283, baseType: !725, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1278, file: !164, line: 2284, baseType: !725, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1278, file: !164, line: 2285, baseType: !7, size: 32, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1278, file: !164, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1278, file: !164, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1278, file: !164, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1278, file: !164, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1278, file: !164, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1278, file: !164, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1278, file: !164, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1278, file: !164, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1278, file: !164, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1278, file: !164, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1278, file: !164, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1278, file: !164, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1278, file: !164, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1278, file: !164, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1278, file: !164, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1278, file: !164, line: 2305, baseType: !7, size: 32, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1278, file: !164, line: 2306, baseType: !1303, size: 32, offset: 544)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1304, line: 31, baseType: !588)
!1304 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1278, file: !164, line: 2307, baseType: !725, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1278, file: !164, line: 2308, baseType: !725, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1278, file: !164, line: 2314, baseType: !1308, size: 64, offset: 704)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !164, line: 2309, size: 64, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1308, file: !164, line: 2310, baseType: !588, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1308, file: !164, line: 2311, baseType: !593, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1308, file: !164, line: 2312, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !164, line: 2277, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1278, file: !164, line: 2315, baseType: !725, size: 64, offset: 768)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1278, file: !164, line: 2316, baseType: !725, size: 64, offset: 832)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1278, file: !164, line: 2317, baseType: !725, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1278, file: !164, line: 2318, baseType: !725, size: 64, offset: 960)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1278, file: !164, line: 2319, baseType: !725, size: 64, offset: 1024)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1278, file: !164, line: 2320, baseType: !725, size: 64, offset: 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1278, file: !164, line: 2321, baseType: !725, size: 64, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1278, file: !164, line: 2322, baseType: !725, size: 64, offset: 1216)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1278, file: !164, line: 2324, baseType: !1324, size: 64, offset: 1280)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !164, line: 2324, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !727, file: !164, line: 3395, baseType: !1327, size: 320)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !164, line: 1469, size: 320, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1327, file: !164, line: 1470, baseType: !763, size: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1327, file: !164, line: 1471, baseType: !725, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1327, file: !164, line: 1472, baseType: !725, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !727, file: !164, line: 3396, baseType: !1333, size: 320)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !164, line: 1482, size: 320, elements: !1334)
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1333, file: !164, line: 1483, baseType: !763, size: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1333, file: !164, line: 1484, baseType: !588, size: 32, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1333, file: !164, line: 1485, baseType: !1338, size: 64, offset: 256)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 64, elements: !646)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !727, file: !164, line: 3397, baseType: !1340, size: 384)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !164, line: 1829, size: 384, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1340, file: !164, line: 1830, baseType: !763, size: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1340, file: !164, line: 1831, baseType: !845, size: 32, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1340, file: !164, line: 1832, baseType: !725, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1340, file: !164, line: 1835, baseType: !1338, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !727, file: !164, line: 3398, baseType: !1347, size: 704)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !164, line: 1898, size: 704, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1356}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1347, file: !164, line: 1899, baseType: !763, size: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1347, file: !164, line: 1902, baseType: !725, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1347, file: !164, line: 1905, baseType: !1066, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1347, file: !164, line: 1908, baseType: !7, size: 32, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1347, file: !164, line: 1911, baseType: !1354, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !164, line: 1876, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1347, file: !164, line: 1914, baseType: !1357, size: 256, offset: 448)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !164, line: 1883, size: 256, elements: !1358)
!1358 = !{!1359, !1361, !1362, !1367}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1357, file: !164, line: 1884, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1357, file: !164, line: 1885, baseType: !1360, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1357, file: !164, line: 1891, baseType: !1363, size: 64, offset: 128)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !164, line: 1891, size: 64, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1363, file: !164, line: 1891, baseType: !1066, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1363, file: !164, line: 1891, baseType: !725, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1357, file: !164, line: 1892, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !727, file: !164, line: 3399, baseType: !1370, size: 704)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !164, line: 2008, size: 704, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1389, !1390, !1391, !1392, !1393}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1370, file: !164, line: 2009, baseType: !763, size: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1370, file: !164, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1370, file: !164, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1370, file: !164, line: 2014, baseType: !845, size: 32, offset: 224)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1370, file: !164, line: 2016, baseType: !725, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1370, file: !164, line: 2017, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !164, line: 183, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !164, line: 183, size: 128, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1380, file: !164, line: 183, baseType: !1383, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !164, line: 182, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !164, line: 182, size: 128, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1384, file: !164, line: 182, baseType: !7, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1384, file: !164, line: 182, baseType: !7, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1384, file: !164, line: 182, baseType: !1338, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1370, file: !164, line: 2019, baseType: !725, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1370, file: !164, line: 2020, baseType: !725, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1370, file: !164, line: 2021, baseType: !725, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1370, file: !164, line: 2022, baseType: !725, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1370, file: !164, line: 2023, baseType: !725, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !727, file: !164, line: 3400, baseType: !1395, size: 832)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !164, line: 2430, size: 832, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1395, file: !164, line: 2431, baseType: !763, size: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1395, file: !164, line: 2433, baseType: !725, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1395, file: !164, line: 2434, baseType: !725, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1395, file: !164, line: 2435, baseType: !725, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1395, file: !164, line: 2436, baseType: !725, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1395, file: !164, line: 2437, baseType: !1378, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1395, file: !164, line: 2438, baseType: !725, size: 64, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1395, file: !164, line: 2440, baseType: !725, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1395, file: !164, line: 2441, baseType: !725, size: 64, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1395, file: !164, line: 2443, baseType: !1407, size: 128, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !164, line: 182, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !164, line: 182, size: 128, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1408, file: !164, line: 182, baseType: !1383, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !727, file: !164, line: 3401, baseType: !1412, size: 320)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !164, line: 3327, size: 320, elements: !1413)
!1413 = !{!1414, !1415, !1422}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1412, file: !164, line: 3329, baseType: !763, size: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1412, file: !164, line: 3330, baseType: !1416, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !164, line: 3320, size: 192, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1417, file: !164, line: 3322, baseType: !1416, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1417, file: !164, line: 3323, baseType: !1416, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1417, file: !164, line: 3324, baseType: !725, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1412, file: !164, line: 3331, baseType: !1416, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !727, file: !164, line: 3402, baseType: !1424, size: 256)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !164, line: 1540, size: 256, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1424, file: !164, line: 1541, baseType: !763, size: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1424, file: !164, line: 1542, baseType: !1428, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !164, line: 1538, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !164, line: 1538, size: 192, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1430, file: !164, line: 1538, baseType: !1433, size: 192)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !164, line: 1537, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !164, line: 1537, size: 192, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1434, file: !164, line: 1537, baseType: !7, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1434, file: !164, line: 1537, baseType: !7, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1434, file: !164, line: 1537, baseType: !1439, size: 128, offset: 64)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 128, elements: !646)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !164, line: 1535, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !164, line: 1532, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1441, file: !164, line: 1533, baseType: !725, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1441, file: !164, line: 1534, baseType: !725, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !727, file: !164, line: 3403, baseType: !1446, size: 512)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !164, line: 1938, size: 512, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1457, !1458, !1459}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1446, file: !164, line: 1939, baseType: !763, size: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1446, file: !164, line: 1940, baseType: !845, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1446, file: !164, line: 1941, baseType: !163, size: 32, offset: 224)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1446, file: !164, line: 1946, baseType: !1452, size: 32, offset: 256)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !164, line: 1942, size: 32, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1452, file: !164, line: 1943, baseType: !182, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1452, file: !164, line: 1944, baseType: !189, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1452, file: !164, line: 1945, baseType: !196, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1446, file: !164, line: 1950, baseType: !1009, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1446, file: !164, line: 1951, baseType: !1009, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1446, file: !164, line: 1953, baseType: !1338, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !727, file: !164, line: 3404, baseType: !1461, size: 1664)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !164, line: 3337, size: 1664, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !164, line: 3338, baseType: !763, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1461, file: !164, line: 3341, baseType: !1465, size: 1472, offset: 192)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1466, line: 410, size: 1472, elements: !1467)
!1466 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1465, file: !1466, line: 412, baseType: !588, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1465, file: !1466, line: 413, baseType: !588, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1465, file: !1466, line: 414, baseType: !588, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1465, file: !1466, line: 415, baseType: !588, size: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1465, file: !1466, line: 416, baseType: !588, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1465, file: !1466, line: 417, baseType: !588, size: 32, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1465, file: !1466, line: 418, baseType: !587, size: 8, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1465, file: !1466, line: 419, baseType: !587, size: 8, offset: 200)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1465, file: !1466, line: 420, baseType: !1477, size: 8, offset: 208)
!1477 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1465, file: !1466, line: 421, baseType: !1477, size: 8, offset: 216)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1465, file: !1466, line: 422, baseType: !1477, size: 8, offset: 224)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1465, file: !1466, line: 423, baseType: !1477, size: 8, offset: 232)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1465, file: !1466, line: 424, baseType: !1477, size: 8, offset: 240)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1465, file: !1466, line: 425, baseType: !1477, size: 8, offset: 248)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1465, file: !1466, line: 426, baseType: !1477, size: 8, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1465, file: !1466, line: 427, baseType: !1477, size: 8, offset: 264)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1465, file: !1466, line: 428, baseType: !1477, size: 8, offset: 272)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1465, file: !1466, line: 429, baseType: !1477, size: 8, offset: 280)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1465, file: !1466, line: 430, baseType: !1477, size: 8, offset: 288)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1465, file: !1466, line: 431, baseType: !1477, size: 8, offset: 296)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1465, file: !1466, line: 432, baseType: !1477, size: 8, offset: 304)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1465, file: !1466, line: 433, baseType: !1477, size: 8, offset: 312)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1465, file: !1466, line: 434, baseType: !1477, size: 8, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1465, file: !1466, line: 435, baseType: !1477, size: 8, offset: 328)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1465, file: !1466, line: 436, baseType: !1477, size: 8, offset: 336)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1465, file: !1466, line: 437, baseType: !1477, size: 8, offset: 344)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1465, file: !1466, line: 438, baseType: !1477, size: 8, offset: 352)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1465, file: !1466, line: 439, baseType: !1477, size: 8, offset: 360)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1465, file: !1466, line: 440, baseType: !1477, size: 8, offset: 368)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1465, file: !1466, line: 441, baseType: !1477, size: 8, offset: 376)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1465, file: !1466, line: 442, baseType: !1477, size: 8, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1465, file: !1466, line: 443, baseType: !1477, size: 8, offset: 392)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1465, file: !1466, line: 444, baseType: !1477, size: 8, offset: 400)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1465, file: !1466, line: 445, baseType: !1477, size: 8, offset: 408)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1465, file: !1466, line: 446, baseType: !1477, size: 8, offset: 416)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1465, file: !1466, line: 447, baseType: !1477, size: 8, offset: 424)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1465, file: !1466, line: 448, baseType: !1477, size: 8, offset: 432)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1465, file: !1466, line: 449, baseType: !1477, size: 8, offset: 440)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1465, file: !1466, line: 450, baseType: !1477, size: 8, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1465, file: !1466, line: 451, baseType: !1477, size: 8, offset: 456)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1465, file: !1466, line: 452, baseType: !1477, size: 8, offset: 464)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1465, file: !1466, line: 453, baseType: !1477, size: 8, offset: 472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1465, file: !1466, line: 454, baseType: !1477, size: 8, offset: 480)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1465, file: !1466, line: 455, baseType: !1477, size: 8, offset: 488)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1465, file: !1466, line: 456, baseType: !1477, size: 8, offset: 496)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1465, file: !1466, line: 457, baseType: !1477, size: 8, offset: 504)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1465, file: !1466, line: 458, baseType: !1477, size: 8, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1465, file: !1466, line: 459, baseType: !1477, size: 8, offset: 520)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1465, file: !1466, line: 460, baseType: !1477, size: 8, offset: 528)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1465, file: !1466, line: 461, baseType: !1477, size: 8, offset: 536)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1465, file: !1466, line: 462, baseType: !1477, size: 8, offset: 544)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1465, file: !1466, line: 463, baseType: !1477, size: 8, offset: 552)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1465, file: !1466, line: 464, baseType: !1477, size: 8, offset: 560)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1465, file: !1466, line: 465, baseType: !1477, size: 8, offset: 568)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1465, file: !1466, line: 466, baseType: !1477, size: 8, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1465, file: !1466, line: 467, baseType: !1477, size: 8, offset: 584)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1465, file: !1466, line: 468, baseType: !1477, size: 8, offset: 592)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1465, file: !1466, line: 469, baseType: !1477, size: 8, offset: 600)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1465, file: !1466, line: 470, baseType: !1477, size: 8, offset: 608)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1465, file: !1466, line: 471, baseType: !1477, size: 8, offset: 616)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1465, file: !1466, line: 472, baseType: !1477, size: 8, offset: 624)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1465, file: !1466, line: 473, baseType: !1477, size: 8, offset: 632)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1465, file: !1466, line: 474, baseType: !1477, size: 8, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1465, file: !1466, line: 475, baseType: !1477, size: 8, offset: 648)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1465, file: !1466, line: 476, baseType: !1477, size: 8, offset: 656)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1465, file: !1466, line: 477, baseType: !1477, size: 8, offset: 664)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1465, file: !1466, line: 478, baseType: !1477, size: 8, offset: 672)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1465, file: !1466, line: 479, baseType: !1477, size: 8, offset: 680)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1465, file: !1466, line: 480, baseType: !1477, size: 8, offset: 688)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1465, file: !1466, line: 481, baseType: !1477, size: 8, offset: 696)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1465, file: !1466, line: 482, baseType: !1477, size: 8, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1465, file: !1466, line: 483, baseType: !1477, size: 8, offset: 712)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1465, file: !1466, line: 484, baseType: !1477, size: 8, offset: 720)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1465, file: !1466, line: 485, baseType: !1477, size: 8, offset: 728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1465, file: !1466, line: 486, baseType: !1477, size: 8, offset: 736)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1465, file: !1466, line: 487, baseType: !1477, size: 8, offset: 744)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1465, file: !1466, line: 488, baseType: !1477, size: 8, offset: 752)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1465, file: !1466, line: 489, baseType: !1477, size: 8, offset: 760)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1465, file: !1466, line: 490, baseType: !1477, size: 8, offset: 768)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1465, file: !1466, line: 491, baseType: !1477, size: 8, offset: 776)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1465, file: !1466, line: 492, baseType: !1477, size: 8, offset: 784)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1465, file: !1466, line: 493, baseType: !1477, size: 8, offset: 792)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1465, file: !1466, line: 494, baseType: !1477, size: 8, offset: 800)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1465, file: !1466, line: 495, baseType: !1477, size: 8, offset: 808)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1465, file: !1466, line: 496, baseType: !1477, size: 8, offset: 816)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1465, file: !1466, line: 497, baseType: !1477, size: 8, offset: 824)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1465, file: !1466, line: 498, baseType: !1477, size: 8, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1465, file: !1466, line: 499, baseType: !1477, size: 8, offset: 840)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1465, file: !1466, line: 500, baseType: !1477, size: 8, offset: 848)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1465, file: !1466, line: 501, baseType: !1477, size: 8, offset: 856)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1465, file: !1466, line: 502, baseType: !1477, size: 8, offset: 864)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1465, file: !1466, line: 503, baseType: !1477, size: 8, offset: 872)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1465, file: !1466, line: 504, baseType: !1477, size: 8, offset: 880)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1465, file: !1466, line: 505, baseType: !1477, size: 8, offset: 888)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1465, file: !1466, line: 506, baseType: !1477, size: 8, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1465, file: !1466, line: 507, baseType: !1477, size: 8, offset: 904)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1465, file: !1466, line: 508, baseType: !1477, size: 8, offset: 912)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1465, file: !1466, line: 509, baseType: !1477, size: 8, offset: 920)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1465, file: !1466, line: 510, baseType: !1477, size: 8, offset: 928)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1465, file: !1466, line: 511, baseType: !1477, size: 8, offset: 936)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1465, file: !1466, line: 512, baseType: !1477, size: 8, offset: 944)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1465, file: !1466, line: 513, baseType: !1477, size: 8, offset: 952)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1465, file: !1466, line: 514, baseType: !1477, size: 8, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1465, file: !1466, line: 515, baseType: !1477, size: 8, offset: 968)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1465, file: !1466, line: 516, baseType: !1477, size: 8, offset: 976)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1465, file: !1466, line: 517, baseType: !1477, size: 8, offset: 984)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1465, file: !1466, line: 518, baseType: !1477, size: 8, offset: 992)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1465, file: !1466, line: 519, baseType: !1477, size: 8, offset: 1000)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1465, file: !1466, line: 520, baseType: !1477, size: 8, offset: 1008)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1465, file: !1466, line: 521, baseType: !1477, size: 8, offset: 1016)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1465, file: !1466, line: 522, baseType: !1477, size: 8, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1465, file: !1466, line: 523, baseType: !1477, size: 8, offset: 1032)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1465, file: !1466, line: 524, baseType: !1477, size: 8, offset: 1040)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1465, file: !1466, line: 525, baseType: !1477, size: 8, offset: 1048)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1465, file: !1466, line: 526, baseType: !1477, size: 8, offset: 1056)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1465, file: !1466, line: 527, baseType: !1477, size: 8, offset: 1064)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1465, file: !1466, line: 528, baseType: !1477, size: 8, offset: 1072)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1465, file: !1466, line: 529, baseType: !1477, size: 8, offset: 1080)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1465, file: !1466, line: 530, baseType: !1477, size: 8, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1465, file: !1466, line: 531, baseType: !1477, size: 8, offset: 1096)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1465, file: !1466, line: 532, baseType: !1477, size: 8, offset: 1104)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1465, file: !1466, line: 533, baseType: !1477, size: 8, offset: 1112)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1465, file: !1466, line: 534, baseType: !1477, size: 8, offset: 1120)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1465, file: !1466, line: 535, baseType: !1477, size: 8, offset: 1128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1465, file: !1466, line: 536, baseType: !1477, size: 8, offset: 1136)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1465, file: !1466, line: 537, baseType: !1477, size: 8, offset: 1144)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1465, file: !1466, line: 538, baseType: !1477, size: 8, offset: 1152)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1465, file: !1466, line: 539, baseType: !1477, size: 8, offset: 1160)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1465, file: !1466, line: 540, baseType: !1477, size: 8, offset: 1168)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1465, file: !1466, line: 541, baseType: !1477, size: 8, offset: 1176)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1465, file: !1466, line: 542, baseType: !1477, size: 8, offset: 1184)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1465, file: !1466, line: 543, baseType: !1477, size: 8, offset: 1192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1465, file: !1466, line: 544, baseType: !1477, size: 8, offset: 1200)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1465, file: !1466, line: 545, baseType: !1477, size: 8, offset: 1208)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1465, file: !1466, line: 546, baseType: !1477, size: 8, offset: 1216)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1465, file: !1466, line: 547, baseType: !1477, size: 8, offset: 1224)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1465, file: !1466, line: 548, baseType: !1477, size: 8, offset: 1232)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1465, file: !1466, line: 549, baseType: !1477, size: 8, offset: 1240)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1465, file: !1466, line: 550, baseType: !1477, size: 8, offset: 1248)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1465, file: !1466, line: 551, baseType: !1477, size: 8, offset: 1256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1465, file: !1466, line: 552, baseType: !1477, size: 8, offset: 1264)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1465, file: !1466, line: 553, baseType: !1477, size: 8, offset: 1272)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1465, file: !1466, line: 554, baseType: !1477, size: 8, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1465, file: !1466, line: 555, baseType: !1477, size: 8, offset: 1288)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1465, file: !1466, line: 556, baseType: !1477, size: 8, offset: 1296)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1465, file: !1466, line: 557, baseType: !1477, size: 8, offset: 1304)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1465, file: !1466, line: 558, baseType: !1477, size: 8, offset: 1312)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1465, file: !1466, line: 559, baseType: !1477, size: 8, offset: 1320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1465, file: !1466, line: 560, baseType: !1477, size: 8, offset: 1328)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1465, file: !1466, line: 561, baseType: !1477, size: 8, offset: 1336)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1465, file: !1466, line: 562, baseType: !1477, size: 8, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1465, file: !1466, line: 563, baseType: !1477, size: 8, offset: 1352)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1465, file: !1466, line: 564, baseType: !1477, size: 8, offset: 1360)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1465, file: !1466, line: 565, baseType: !1477, size: 8, offset: 1368)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1465, file: !1466, line: 566, baseType: !1477, size: 8, offset: 1376)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1465, file: !1466, line: 567, baseType: !1477, size: 8, offset: 1384)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1465, file: !1466, line: 568, baseType: !1477, size: 8, offset: 1392)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1465, file: !1466, line: 569, baseType: !1477, size: 8, offset: 1400)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1465, file: !1466, line: 570, baseType: !1477, size: 8, offset: 1408)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1465, file: !1466, line: 571, baseType: !1477, size: 8, offset: 1416)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1465, file: !1466, line: 572, baseType: !1477, size: 8, offset: 1424)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1465, file: !1466, line: 573, baseType: !1477, size: 8, offset: 1432)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1465, file: !1466, line: 574, baseType: !1477, size: 8, offset: 1440)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !727, file: !164, line: 3405, baseType: !1633, size: 384)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !164, line: 3352, size: 384, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1633, file: !164, line: 3353, baseType: !763, size: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1633, file: !164, line: 3356, baseType: !1637, size: 192, offset: 192)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1466, line: 578, size: 192, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1637, file: !1466, line: 580, baseType: !588, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1637, file: !1466, line: 581, baseType: !588, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1637, file: !1466, line: 582, baseType: !588, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1637, file: !1466, line: 583, baseType: !588, size: 32, offset: 96)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1637, file: !1466, line: 584, baseType: !587, size: 8, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1637, file: !1466, line: 585, baseType: !587, size: 8, offset: 136)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1637, file: !1466, line: 586, baseType: !587, size: 8, offset: 144)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1637, file: !1466, line: 587, baseType: !587, size: 8, offset: 152)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1637, file: !1466, line: 588, baseType: !587, size: 8, offset: 160)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1637, file: !1466, line: 589, baseType: !587, size: 8, offset: 168)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1637, file: !1466, line: 590, baseType: !587, size: 8, offset: 176)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !632, file: !421, line: 178, baseType: !983, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !632, file: !421, line: 179, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !421, line: 150, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !421, line: 142, size: 320, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1654, file: !421, line: 144, baseType: !725, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1654, file: !421, line: 145, baseType: !611, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1654, file: !421, line: 146, baseType: !611, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1654, file: !421, line: 147, baseType: !1303, size: 32, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1654, file: !421, line: 148, baseType: !7, size: 32, offset: 224)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1654, file: !421, line: 149, baseType: !587, size: 8, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !632, file: !421, line: 180, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !421, line: 162, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !421, line: 159, size: 128, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1665, file: !421, line: 160, baseType: !725, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1665, file: !421, line: 161, baseType: !599, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !632, file: !421, line: 181, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !421, line: 181, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !627, file: !421, line: 317, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 64, elements: !646)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !627, file: !421, line: 318, baseType: !1675, size: 320)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !421, line: 188, size: 320, elements: !1676)
!1676 = !{!1677, !1679, !1702}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1675, file: !421, line: 190, baseType: !1678, size: 192)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 192, elements: !796)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1675, file: !421, line: 193, baseType: !1680, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !421, line: 206, size: 320, elements: !1682)
!1682 = !{!1683, !1687, !1688, !1689, !1701}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1681, file: !421, line: 208, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !612, line: 62, baseType: !1686)
!1686 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !612, line: 61, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1681, file: !421, line: 211, baseType: !7, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1681, file: !421, line: 214, baseType: !599, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1681, file: !421, line: 224, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !421, line: 202, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !421, line: 202, size: 128, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1692, file: !421, line: 202, baseType: !1695, size: 128)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !421, line: 200, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !421, line: 200, size: 128, elements: !1697)
!1697 = !{!1698, !1699, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1696, file: !421, line: 200, baseType: !7, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1696, file: !421, line: 200, baseType: !7, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1696, file: !421, line: 200, baseType: !645, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1681, file: !421, line: 234, baseType: !1690, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1675, file: !421, line: 197, baseType: !599, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !627, file: !421, line: 319, baseType: !785, size: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !627, file: !421, line: 320, baseType: !804, size: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "next_regno_allocno", scope: !604, file: !602, line: 255, baseType: !601, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !604, file: !602, line: 260, baseType: !1707, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_loop_tree_node_t", file: !602, line: 73, baseType: !1708)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_loop_tree_node", file: !602, line: 83, size: 1728, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1726, !1728, !1729, !1730}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1709, file: !602, line: 86, baseType: !982, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !1709, file: !602, line: 87, baseType: !1024, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "subloop_next", scope: !1709, file: !602, line: 90, baseType: !1707, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1709, file: !602, line: 90, baseType: !1707, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "subloops", scope: !1709, file: !602, line: 93, baseType: !1707, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1709, file: !602, line: 93, baseType: !1707, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1709, file: !602, line: 95, baseType: !1707, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1709, file: !602, line: 98, baseType: !588, size: 32, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "to_remove_p", scope: !1709, file: !602, line: 105, baseType: !587, size: 8, offset: 480)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "regno_allocno_map", scope: !1709, file: !602, line: 114, baseType: !600, size: 64, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "entered_from_non_parent_p", scope: !1709, file: !602, line: 119, baseType: !587, size: 8, offset: 576)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "reg_pressure", scope: !1709, file: !602, line: 123, baseType: !1723, size: 864, offset: 608)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 864, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 27)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "all_allocnos", scope: !1709, file: !602, line: 127, baseType: !1727, size: 64, offset: 1472)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !612, line: 47, baseType: !665)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "border_allocnos", scope: !1709, file: !602, line: 130, baseType: !1727, size: 64, offset: 1536)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "modified_regnos", scope: !1709, file: !602, line: 134, baseType: !1727, size: 64, offset: 1600)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "local_copies", scope: !1709, file: !602, line: 137, baseType: !1727, size: 64, offset: 1664)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nrefs", scope: !604, file: !602, line: 266, baseType: !588, size: 32, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !604, file: !602, line: 268, baseType: !588, size: 32, offset: 352)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class", scope: !604, file: !602, line: 271, baseType: !390, size: 32, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class_cost", scope: !604, file: !602, line: 274, baseType: !588, size: 32, offset: 416)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "updated_cover_class_cost", scope: !604, file: !602, line: 274, baseType: !588, size: 32, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "memory_cost", scope: !604, file: !602, line: 282, baseType: !588, size: 32, offset: 480)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "updated_memory_cost", scope: !604, file: !602, line: 282, baseType: !588, size: 32, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "excess_pressure_points_num", scope: !604, file: !602, line: 288, baseType: !588, size: 32, offset: 544)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "allocno_copies", scope: !604, file: !602, line: 292, baseType: !1740, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_copy_t", file: !602, line: 64, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_copy", file: !602, line: 506, size: 640, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1742, file: !602, line: 509, baseType: !588, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1742, file: !602, line: 512, baseType: !601, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !1742, file: !602, line: 512, baseType: !601, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1742, file: !602, line: 514, baseType: !588, size: 32, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_p", scope: !1742, file: !602, line: 515, baseType: !587, size: 8, offset: 224)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1742, file: !602, line: 521, baseType: !611, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_first_allocno_copy", scope: !1742, file: !602, line: 524, baseType: !1740, size: 64, offset: 320)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "next_first_allocno_copy", scope: !1742, file: !602, line: 524, baseType: !1740, size: 64, offset: 384)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_second_allocno_copy", scope: !1742, file: !602, line: 527, baseType: !1740, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "next_second_allocno_copy", scope: !1742, file: !602, line: 527, baseType: !1740, size: 64, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !1742, file: !602, line: 529, baseType: !1707, size: 64, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !604, file: !602, line: 295, baseType: !601, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cap_member", scope: !604, file: !602, line: 298, baseType: !601, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "first_coalesced_allocno", scope: !604, file: !602, line: 302, baseType: !601, size: 64, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "next_coalesced_allocno", scope: !604, file: !602, line: 303, baseType: !601, size: 64, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "live_ranges", scope: !604, file: !602, line: 308, baseType: !1760, size: 64, offset: 896)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocno_live_range_t", file: !602, line: 62, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_live_range", file: !602, line: 199, size: 320, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "allocno", scope: !1762, file: !602, line: 202, baseType: !601, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1762, file: !602, line: 204, baseType: !588, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1762, file: !602, line: 204, baseType: !588, size: 32, offset: 96)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1762, file: !602, line: 207, baseType: !1760, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "start_next", scope: !1762, file: !602, line: 209, baseType: !1760, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "finish_next", scope: !1762, file: !602, line: 209, baseType: !1760, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !604, file: !602, line: 314, baseType: !588, size: 32, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !604, file: !602, line: 314, baseType: !588, size: 32, offset: 992)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array", scope: !604, file: !602, line: 319, baseType: !592, size: 64, offset: 1024)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_id", scope: !604, file: !602, line: 322, baseType: !588, size: 32, offset: 1088)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array_size", scope: !604, file: !602, line: 324, baseType: !7, size: 32, offset: 1120)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_regs", scope: !604, file: !602, line: 329, baseType: !595, size: 64, offset: 1152)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "total_conflict_hard_regs", scope: !604, file: !602, line: 329, baseType: !595, size: 64, offset: 1216)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocnos_num", scope: !604, file: !602, line: 332, baseType: !588, size: 32, offset: 1280)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "call_freq", scope: !604, file: !602, line: 335, baseType: !588, size: 32, offset: 1312)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "calls_crossed_num", scope: !604, file: !602, line: 337, baseType: !588, size: 32, offset: 1344)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest_p", scope: !604, file: !602, line: 342, baseType: !7, size: 1, offset: 1376, flags: DIFlagBitField, extraData: i64 1376)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "somewhere_renamed_p", scope: !604, file: !602, line: 346, baseType: !7, size: 1, offset: 1377, flags: DIFlagBitField, extraData: i64 1376)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "child_renamed_p", scope: !604, file: !602, line: 349, baseType: !7, size: 1, offset: 1378, flags: DIFlagBitField, extraData: i64 1376)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dont_reassign_p", scope: !604, file: !602, line: 354, baseType: !7, size: 1, offset: 1379, flags: DIFlagBitField, extraData: i64 1376)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "no_stack_reg_p", scope: !604, file: !602, line: 359, baseType: !7, size: 1, offset: 1380, flags: DIFlagBitField, extraData: i64 1376)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "total_no_stack_reg_p", scope: !604, file: !602, line: 359, baseType: !7, size: 1, offset: 1381, flags: DIFlagBitField, extraData: i64 1376)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "bad_spill_p", scope: !604, file: !602, line: 364, baseType: !7, size: 1, offset: 1382, flags: DIFlagBitField, extraData: i64 1376)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "in_graph_p", scope: !604, file: !602, line: 367, baseType: !7, size: 1, offset: 1383, flags: DIFlagBitField, extraData: i64 1376)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "assigned_p", scope: !604, file: !602, line: 370, baseType: !7, size: 1, offset: 1384, flags: DIFlagBitField, extraData: i64 1376)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "may_be_spilled_p", scope: !604, file: !602, line: 373, baseType: !7, size: 1, offset: 1385, flags: DIFlagBitField, extraData: i64 1376)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "splay_removed_p", scope: !604, file: !602, line: 376, baseType: !7, size: 1, offset: 1386, flags: DIFlagBitField, extraData: i64 1376)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_vec_p", scope: !604, file: !602, line: 381, baseType: !7, size: 1, offset: 1387, flags: DIFlagBitField, extraData: i64 1376)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest", scope: !604, file: !602, line: 385, baseType: !601, size: 64, offset: 1408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "hard_reg_costs", scope: !604, file: !602, line: 400, baseType: !1794, size: 64, offset: 1472)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "updated_hard_reg_costs", scope: !604, file: !602, line: 400, baseType: !1794, size: 64, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_reg_costs", scope: !604, file: !602, line: 407, baseType: !1794, size: 64, offset: 1600)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "updated_conflict_hard_reg_costs", scope: !604, file: !602, line: 407, baseType: !1794, size: 64, offset: 1664)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "left_conflicts_size", scope: !604, file: !602, line: 411, baseType: !588, size: 32, offset: 1728)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "available_regs_num", scope: !604, file: !602, line: 414, baseType: !588, size: 32, offset: 1760)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "next_bucket_allocno", scope: !604, file: !602, line: 417, baseType: !601, size: 64, offset: 1792)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bucket_allocno", scope: !604, file: !602, line: 418, baseType: !601, size: 64, offset: 1856)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !604, file: !602, line: 420, baseType: !588, size: 32, offset: 1920)
!1803 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!1805 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1806 = !{!0, !1807}
!1807 = !DIGlobalVariableExpression(var: !1808, expr: !DIExpression())
!1808 = distinct !DIGlobalVariable(name: "collected_conflict_allocnos", scope: !2, file: !3, line: 558, type: !600, isLocal: true, isDefinition: true)
!1809 = !{i32 2, !"Dwarf Version", i32 4}
!1810 = !{i32 2, !"Debug Info Version", i32 3}
!1811 = !{i32 1, !"wchar_size", i32 4}
!1812 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1813 = distinct !DISubprogram(name: "vprintf", scope: !1814, file: !1814, line: 39, type: !1815, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1825)
!1814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!588, !1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !593)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1819, file: !3, baseType: !7, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1819, file: !3, baseType: !7, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1819, file: !3, baseType: !592, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1819, file: !3, baseType: !592, size: 64, offset: 128)
!1825 = !{!1826, !1827}
!1826 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1813, file: !1814, line: 39, type: !1817)
!1827 = !DILocalVariable(name: "__arg", arg: 2, scope: !1813, file: !1814, line: 39, type: !1818)
!1828 = !DILocation(line: 0, scope: !1813)
!1829 = !DILocation(line: 41, column: 20, scope: !1813)
!1830 = !DILocation(line: 41, column: 10, scope: !1813)
!1831 = !DILocation(line: 41, column: 3, scope: !1813)
!1832 = distinct !DISubprogram(name: "getchar", scope: !1814, file: !1814, line: 47, type: !1833, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!588}
!1835 = !{}
!1836 = !DILocation(line: 49, column: 16, scope: !1832)
!1837 = !DILocation(line: 49, column: 10, scope: !1832)
!1838 = !DILocation(line: 49, column: 3, scope: !1832)
!1839 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1814, file: !1814, line: 56, type: !1840, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!588, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1844, line: 7, baseType: !1845)
!1844 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1846, line: 49, size: 1728, elements: !1847)
!1846 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1863, !1865, !1866, !1867, !1870, !1871, !1872, !1873, !1876, !1878, !1881, !1884, !1885, !1886, !1887, !1888}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1845, file: !1846, line: 51, baseType: !588, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1845, file: !1846, line: 54, baseType: !590, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1845, file: !1846, line: 55, baseType: !590, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1845, file: !1846, line: 56, baseType: !590, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1845, file: !1846, line: 57, baseType: !590, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1845, file: !1846, line: 58, baseType: !590, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1845, file: !1846, line: 59, baseType: !590, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1845, file: !1846, line: 60, baseType: !590, size: 64, offset: 448)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1845, file: !1846, line: 61, baseType: !590, size: 64, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1845, file: !1846, line: 64, baseType: !590, size: 64, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1845, file: !1846, line: 65, baseType: !590, size: 64, offset: 640)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1845, file: !1846, line: 66, baseType: !590, size: 64, offset: 704)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1845, file: !1846, line: 68, baseType: !1861, size: 64, offset: 768)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1846, line: 36, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1845, file: !1846, line: 70, baseType: !1864, size: 64, offset: 832)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1845, file: !1846, line: 72, baseType: !588, size: 32, offset: 896)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1845, file: !1846, line: 73, baseType: !588, size: 32, offset: 928)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1845, file: !1846, line: 74, baseType: !1868, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1869, line: 152, baseType: !599)
!1869 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1845, file: !1846, line: 77, baseType: !1805, size: 16, offset: 1024)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1845, file: !1846, line: 78, baseType: !1477, size: 8, offset: 1040)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1845, file: !1846, line: 79, baseType: !820, size: 8, offset: 1048)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1845, file: !1846, line: 81, baseType: !1874, size: 64, offset: 1088)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1846, line: 43, baseType: null)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1845, file: !1846, line: 89, baseType: !1877, size: 64, offset: 1152)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1869, line: 153, baseType: !599)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1845, file: !1846, line: 91, baseType: !1879, size: 64, offset: 1216)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1846, line: 37, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1845, file: !1846, line: 92, baseType: !1882, size: 64, offset: 1280)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1846, line: 38, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1845, file: !1846, line: 93, baseType: !1864, size: 64, offset: 1344)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1845, file: !1846, line: 94, baseType: !592, size: 64, offset: 1408)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1845, file: !1846, line: 95, baseType: !1174, size: 64, offset: 1472)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1845, file: !1846, line: 96, baseType: !588, size: 32, offset: 1536)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1845, file: !1846, line: 98, baseType: !1889, size: 160, offset: 1568)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 160, elements: !1890)
!1890 = !{!1891}
!1891 = !DISubrange(count: 20)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "__fp", arg: 1, scope: !1839, file: !1814, line: 56, type: !1842)
!1894 = !DILocation(line: 0, scope: !1839)
!1895 = !DILocation(line: 58, column: 10, scope: !1839)
!1896 = !DILocation(line: 58, column: 3, scope: !1839)
!1897 = distinct !DISubprogram(name: "getc_unlocked", scope: !1814, file: !1814, line: 66, type: !1840, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "__fp", arg: 1, scope: !1897, file: !1814, line: 66, type: !1842)
!1900 = !DILocation(line: 0, scope: !1897)
!1901 = !DILocation(line: 68, column: 10, scope: !1897)
!1902 = !DILocation(line: 68, column: 3, scope: !1897)
!1903 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1814, file: !1814, line: 73, type: !1833, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1904 = !DILocation(line: 75, column: 10, scope: !1903)
!1905 = !DILocation(line: 75, column: 3, scope: !1903)
!1906 = distinct !DISubprogram(name: "putchar", scope: !1814, file: !1814, line: 82, type: !1907, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!588, !588}
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "__c", arg: 1, scope: !1906, file: !1814, line: 82, type: !588)
!1911 = !DILocation(line: 0, scope: !1906)
!1912 = !DILocation(line: 84, column: 21, scope: !1906)
!1913 = !DILocation(line: 84, column: 10, scope: !1906)
!1914 = !DILocation(line: 84, column: 3, scope: !1906)
!1915 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1814, file: !1814, line: 91, type: !1916, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!588, !588, !1842}
!1918 = !{!1919, !1920}
!1919 = !DILocalVariable(name: "__c", arg: 1, scope: !1915, file: !1814, line: 91, type: !588)
!1920 = !DILocalVariable(name: "__stream", arg: 2, scope: !1915, file: !1814, line: 91, type: !1842)
!1921 = !DILocation(line: 0, scope: !1915)
!1922 = !DILocation(line: 93, column: 10, scope: !1915)
!1923 = !DILocation(line: 93, column: 3, scope: !1915)
!1924 = distinct !DISubprogram(name: "putc_unlocked", scope: !1814, file: !1814, line: 101, type: !1916, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1925)
!1925 = !{!1926, !1927}
!1926 = !DILocalVariable(name: "__c", arg: 1, scope: !1924, file: !1814, line: 101, type: !588)
!1927 = !DILocalVariable(name: "__stream", arg: 2, scope: !1924, file: !1814, line: 101, type: !1842)
!1928 = !DILocation(line: 0, scope: !1924)
!1929 = !DILocation(line: 103, column: 10, scope: !1924)
!1930 = !DILocation(line: 103, column: 3, scope: !1924)
!1931 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1814, file: !1814, line: 108, type: !1907, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1932)
!1932 = !{!1933}
!1933 = !DILocalVariable(name: "__c", arg: 1, scope: !1931, file: !1814, line: 108, type: !588)
!1934 = !DILocation(line: 0, scope: !1931)
!1935 = !DILocation(line: 110, column: 10, scope: !1931)
!1936 = !DILocation(line: 110, column: 3, scope: !1931)
!1937 = distinct !DISubprogram(name: "getline", scope: !1814, file: !1814, line: 118, type: !1938, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1942)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1940, !589, !1941, !1842}
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1869, line: 193, baseType: !599)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1942 = !{!1943, !1944, !1945}
!1943 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1937, file: !1814, line: 118, type: !589)
!1944 = !DILocalVariable(name: "__n", arg: 2, scope: !1937, file: !1814, line: 118, type: !1941)
!1945 = !DILocalVariable(name: "__stream", arg: 3, scope: !1937, file: !1814, line: 118, type: !1842)
!1946 = !DILocation(line: 0, scope: !1937)
!1947 = !DILocation(line: 120, column: 10, scope: !1937)
!1948 = !DILocation(line: 120, column: 3, scope: !1937)
!1949 = distinct !DISubprogram(name: "feof_unlocked", scope: !1814, file: !1814, line: 128, type: !1840, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1950)
!1950 = !{!1951}
!1951 = !DILocalVariable(name: "__stream", arg: 1, scope: !1949, file: !1814, line: 128, type: !1842)
!1952 = !DILocation(line: 0, scope: !1949)
!1953 = !DILocation(line: 130, column: 10, scope: !1949)
!1954 = !DILocation(line: 130, column: 3, scope: !1949)
!1955 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1814, file: !1814, line: 135, type: !1840, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1956)
!1956 = !{!1957}
!1957 = !DILocalVariable(name: "__stream", arg: 1, scope: !1955, file: !1814, line: 135, type: !1842)
!1958 = !DILocation(line: 0, scope: !1955)
!1959 = !DILocation(line: 137, column: 10, scope: !1955)
!1960 = !DILocation(line: 137, column: 3, scope: !1955)
!1961 = distinct !DISubprogram(name: "tolower", scope: !1962, file: !1962, line: 207, type: !1907, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1963)
!1962 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1963 = !{!1964}
!1964 = !DILocalVariable(name: "__c", arg: 1, scope: !1961, file: !1962, line: 207, type: !588)
!1965 = !DILocation(line: 0, scope: !1961)
!1966 = !DILocation(line: 209, column: 22, scope: !1961)
!1967 = !DILocation(line: 209, column: 39, scope: !1961)
!1968 = !DILocation(line: 209, column: 38, scope: !1961)
!1969 = !DILocation(line: 209, column: 37, scope: !1961)
!1970 = !DILocation(line: 209, column: 10, scope: !1961)
!1971 = !DILocation(line: 209, column: 3, scope: !1961)
!1972 = distinct !DISubprogram(name: "toupper", scope: !1962, file: !1962, line: 213, type: !1907, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "__c", arg: 1, scope: !1972, file: !1962, line: 213, type: !588)
!1975 = !DILocation(line: 0, scope: !1972)
!1976 = !DILocation(line: 215, column: 22, scope: !1972)
!1977 = !DILocation(line: 215, column: 39, scope: !1972)
!1978 = !DILocation(line: 215, column: 38, scope: !1972)
!1979 = !DILocation(line: 215, column: 37, scope: !1972)
!1980 = !DILocation(line: 215, column: 10, scope: !1972)
!1981 = !DILocation(line: 215, column: 3, scope: !1972)
!1982 = distinct !DISubprogram(name: "atoi", scope: !1983, file: !1983, line: 361, type: !1984, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1983 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!588, !593}
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1982, file: !1983, line: 361, type: !593)
!1988 = !DILocation(line: 0, scope: !1982)
!1989 = !DILocation(line: 363, column: 16, scope: !1982)
!1990 = !DILocation(line: 363, column: 10, scope: !1982)
!1991 = !DILocation(line: 363, column: 3, scope: !1982)
!1992 = distinct !DISubprogram(name: "atol", scope: !1983, file: !1983, line: 366, type: !1993, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!599, !593}
!1995 = !{!1996}
!1996 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1992, file: !1983, line: 366, type: !593)
!1997 = !DILocation(line: 0, scope: !1992)
!1998 = !DILocation(line: 368, column: 10, scope: !1992)
!1999 = !DILocation(line: 368, column: 3, scope: !1992)
!2000 = distinct !DISubprogram(name: "atoll", scope: !1983, file: !1983, line: 373, type: !2001, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!2003, !593}
!2003 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2000, file: !1983, line: 373, type: !593)
!2006 = !DILocation(line: 0, scope: !2000)
!2007 = !DILocation(line: 375, column: 10, scope: !2000)
!2008 = !DILocation(line: 375, column: 3, scope: !2000)
!2009 = distinct !DISubprogram(name: "bsearch", scope: !2010, file: !2010, line: 20, type: !2011, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2014)
!2010 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!592, !1159, !1159, !1174, !1174, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1983, line: 808, baseType: !1163)
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2015 = !DILocalVariable(name: "__key", arg: 1, scope: !2009, file: !2010, line: 20, type: !1159)
!2016 = !DILocalVariable(name: "__base", arg: 2, scope: !2009, file: !2010, line: 20, type: !1159)
!2017 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2009, file: !2010, line: 20, type: !1174)
!2018 = !DILocalVariable(name: "__size", arg: 4, scope: !2009, file: !2010, line: 20, type: !1174)
!2019 = !DILocalVariable(name: "__compar", arg: 5, scope: !2009, file: !2010, line: 21, type: !2013)
!2020 = !DILocalVariable(name: "__l", scope: !2009, file: !2010, line: 23, type: !1174)
!2021 = !DILocalVariable(name: "__u", scope: !2009, file: !2010, line: 23, type: !1174)
!2022 = !DILocalVariable(name: "__idx", scope: !2009, file: !2010, line: 23, type: !1174)
!2023 = !DILocalVariable(name: "__p", scope: !2009, file: !2010, line: 24, type: !1159)
!2024 = !DILocalVariable(name: "__comparison", scope: !2009, file: !2010, line: 25, type: !588)
!2025 = !DILocation(line: 0, scope: !2009)
!2026 = !DILocation(line: 29, column: 3, scope: !2009)
!2027 = !DILocation(line: 27, column: 7, scope: !2009)
!2028 = !DILocation(line: 29, column: 14, scope: !2009)
!2029 = !DILocation(line: 31, column: 20, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2009, file: !2010, line: 30, column: 5)
!2031 = !DILocation(line: 31, column: 27, scope: !2030)
!2032 = !DILocation(line: 32, column: 56, scope: !2030)
!2033 = !DILocation(line: 32, column: 47, scope: !2030)
!2034 = !DILocation(line: 33, column: 22, scope: !2030)
!2035 = !DILocation(line: 34, column: 24, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2030, file: !2010, line: 34, column: 11)
!2037 = !DILocation(line: 34, column: 11, scope: !2030)
!2038 = !DILocation(line: 36, column: 29, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !2010, line: 36, column: 16)
!2040 = !DILocation(line: 36, column: 16, scope: !2036)
!2041 = !DILocation(line: 37, column: 14, scope: !2039)
!2042 = distinct !{!2042, !2026, !2043}
!2043 = !DILocation(line: 40, column: 5, scope: !2009)
!2044 = !DILocation(line: 43, column: 1, scope: !2009)
!2045 = distinct !DISubprogram(name: "atof", scope: !2046, file: !2046, line: 25, type: !2047, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2046 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!2049, !593}
!2049 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2045, file: !2046, line: 25, type: !593)
!2052 = !DILocation(line: 0, scope: !2045)
!2053 = !DILocation(line: 27, column: 10, scope: !2045)
!2054 = !DILocation(line: 27, column: 3, scope: !2045)
!2055 = distinct !DISubprogram(name: "strtoimax", scope: !2056, file: !2056, line: 324, type: !2057, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2063)
!2056 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!2059, !1817, !2062, !588}
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2060, line: 101, baseType: !2061)
!2060 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1869, line: 72, baseType: !599)
!2062 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !589)
!2063 = !{!2064, !2065, !2066}
!2064 = !DILocalVariable(name: "nptr", arg: 1, scope: !2055, file: !2056, line: 324, type: !1817)
!2065 = !DILocalVariable(name: "endptr", arg: 2, scope: !2055, file: !2056, line: 324, type: !2062)
!2066 = !DILocalVariable(name: "base", arg: 3, scope: !2055, file: !2056, line: 324, type: !588)
!2067 = !DILocation(line: 0, scope: !2055)
!2068 = !DILocation(line: 327, column: 10, scope: !2055)
!2069 = !DILocation(line: 327, column: 3, scope: !2055)
!2070 = distinct !DISubprogram(name: "strtoumax", scope: !2056, file: !2056, line: 336, type: !2071, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2073, !1817, !2062, !588}
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2060, line: 102, baseType: !2074)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1869, line: 73, baseType: !597)
!2075 = !{!2076, !2077, !2078}
!2076 = !DILocalVariable(name: "nptr", arg: 1, scope: !2070, file: !2056, line: 336, type: !1817)
!2077 = !DILocalVariable(name: "endptr", arg: 2, scope: !2070, file: !2056, line: 336, type: !2062)
!2078 = !DILocalVariable(name: "base", arg: 3, scope: !2070, file: !2056, line: 336, type: !588)
!2079 = !DILocation(line: 0, scope: !2070)
!2080 = !DILocation(line: 339, column: 10, scope: !2070)
!2081 = !DILocation(line: 339, column: 3, scope: !2070)
!2082 = distinct !DISubprogram(name: "wcstoimax", scope: !2056, file: !2056, line: 348, type: !2083, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!2059, !2085, !2089, !588}
!2085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2056, line: 34, baseType: !588)
!2089 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2090)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "nptr", arg: 1, scope: !2082, file: !2056, line: 348, type: !2085)
!2094 = !DILocalVariable(name: "endptr", arg: 2, scope: !2082, file: !2056, line: 348, type: !2089)
!2095 = !DILocalVariable(name: "base", arg: 3, scope: !2082, file: !2056, line: 348, type: !588)
!2096 = !DILocation(line: 0, scope: !2082)
!2097 = !DILocation(line: 351, column: 10, scope: !2082)
!2098 = !DILocation(line: 351, column: 3, scope: !2082)
!2099 = distinct !DISubprogram(name: "wcstoumax", scope: !2056, file: !2056, line: 362, type: !2100, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2073, !2085, !2089, !588}
!2102 = !{!2103, !2104, !2105}
!2103 = !DILocalVariable(name: "nptr", arg: 1, scope: !2099, file: !2056, line: 362, type: !2085)
!2104 = !DILocalVariable(name: "endptr", arg: 2, scope: !2099, file: !2056, line: 362, type: !2089)
!2105 = !DILocalVariable(name: "base", arg: 3, scope: !2099, file: !2056, line: 362, type: !588)
!2106 = !DILocation(line: 0, scope: !2099)
!2107 = !DILocation(line: 365, column: 10, scope: !2099)
!2108 = !DILocation(line: 365, column: 3, scope: !2099)
!2109 = distinct !DISubprogram(name: "stat", scope: !2110, file: !2110, line: 453, type: !2111, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!588, !593, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2115, line: 46, size: 1152, elements: !2116)
!2115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2116 = !{!2117, !2119, !2121, !2123, !2125, !2127, !2129, !2130, !2131, !2132, !2134, !2136, !2144, !2145, !2146}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2114, file: !2115, line: 48, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1869, line: 145, baseType: !597)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2114, file: !2115, line: 53, baseType: !2120, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1869, line: 148, baseType: !597)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2114, file: !2115, line: 61, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1869, line: 151, baseType: !597)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2114, file: !2115, line: 62, baseType: !2124, size: 32, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1869, line: 150, baseType: !7)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2114, file: !2115, line: 64, baseType: !2126, size: 32, offset: 224)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1869, line: 146, baseType: !7)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2114, file: !2115, line: 65, baseType: !2128, size: 32, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1869, line: 147, baseType: !7)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2114, file: !2115, line: 67, baseType: !588, size: 32, offset: 288)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2114, file: !2115, line: 69, baseType: !2118, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2114, file: !2115, line: 74, baseType: !1868, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2114, file: !2115, line: 78, baseType: !2133, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1869, line: 174, baseType: !599)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2114, file: !2115, line: 80, baseType: !2135, size: 64, offset: 512)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1869, line: 179, baseType: !599)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2114, file: !2115, line: 91, baseType: !2137, size: 128, offset: 576)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2138, line: 10, size: 128, elements: !2139)
!2138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2139 = !{!2140, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2137, file: !2138, line: 12, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1869, line: 160, baseType: !599)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2137, file: !2138, line: 16, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1869, line: 196, baseType: !599)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2114, file: !2115, line: 92, baseType: !2137, size: 128, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2114, file: !2115, line: 93, baseType: !2137, size: 128, offset: 832)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2114, file: !2115, line: 106, baseType: !2147, size: 192, offset: 960)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2143, size: 192, elements: !796)
!2148 = !{!2149, !2150}
!2149 = !DILocalVariable(name: "__path", arg: 1, scope: !2109, file: !2110, line: 453, type: !593)
!2150 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2109, file: !2110, line: 453, type: !2113)
!2151 = !DILocation(line: 0, scope: !2109)
!2152 = !DILocation(line: 455, column: 10, scope: !2109)
!2153 = !DILocation(line: 455, column: 3, scope: !2109)
!2154 = distinct !DISubprogram(name: "lstat", scope: !2110, file: !2110, line: 460, type: !2111, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2155 = !{!2156, !2157}
!2156 = !DILocalVariable(name: "__path", arg: 1, scope: !2154, file: !2110, line: 460, type: !593)
!2157 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2154, file: !2110, line: 460, type: !2113)
!2158 = !DILocation(line: 0, scope: !2154)
!2159 = !DILocation(line: 462, column: 10, scope: !2154)
!2160 = !DILocation(line: 462, column: 3, scope: !2154)
!2161 = distinct !DISubprogram(name: "fstat", scope: !2110, file: !2110, line: 467, type: !2162, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!588, !588, !2113}
!2164 = !{!2165, !2166}
!2165 = !DILocalVariable(name: "__fd", arg: 1, scope: !2161, file: !2110, line: 467, type: !588)
!2166 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2161, file: !2110, line: 467, type: !2113)
!2167 = !DILocation(line: 0, scope: !2161)
!2168 = !DILocation(line: 469, column: 10, scope: !2161)
!2169 = !DILocation(line: 469, column: 3, scope: !2161)
!2170 = distinct !DISubprogram(name: "fstatat", scope: !2110, file: !2110, line: 474, type: !2171, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!588, !588, !593, !2113, !588}
!2173 = !{!2174, !2175, !2176, !2177}
!2174 = !DILocalVariable(name: "__fd", arg: 1, scope: !2170, file: !2110, line: 474, type: !588)
!2175 = !DILocalVariable(name: "__filename", arg: 2, scope: !2170, file: !2110, line: 474, type: !593)
!2176 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2170, file: !2110, line: 474, type: !2113)
!2177 = !DILocalVariable(name: "__flag", arg: 4, scope: !2170, file: !2110, line: 474, type: !588)
!2178 = !DILocation(line: 0, scope: !2170)
!2179 = !DILocation(line: 477, column: 10, scope: !2170)
!2180 = !DILocation(line: 477, column: 3, scope: !2170)
!2181 = distinct !DISubprogram(name: "mknod", scope: !2110, file: !2110, line: 483, type: !2182, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!588, !593, !2124, !2118}
!2184 = !{!2185, !2186, !2187}
!2185 = !DILocalVariable(name: "__path", arg: 1, scope: !2181, file: !2110, line: 483, type: !593)
!2186 = !DILocalVariable(name: "__mode", arg: 2, scope: !2181, file: !2110, line: 483, type: !2124)
!2187 = !DILocalVariable(name: "__dev", arg: 3, scope: !2181, file: !2110, line: 483, type: !2118)
!2188 = !DILocation(line: 0, scope: !2181)
!2189 = !DILocation(line: 485, column: 10, scope: !2181)
!2190 = !DILocation(line: 485, column: 3, scope: !2181)
!2191 = distinct !DISubprogram(name: "mknodat", scope: !2110, file: !2110, line: 491, type: !2192, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!588, !588, !593, !2124, !2118}
!2194 = !{!2195, !2196, !2197, !2198}
!2195 = !DILocalVariable(name: "__fd", arg: 1, scope: !2191, file: !2110, line: 491, type: !588)
!2196 = !DILocalVariable(name: "__path", arg: 2, scope: !2191, file: !2110, line: 491, type: !593)
!2197 = !DILocalVariable(name: "__mode", arg: 3, scope: !2191, file: !2110, line: 491, type: !2124)
!2198 = !DILocalVariable(name: "__dev", arg: 4, scope: !2191, file: !2110, line: 491, type: !2118)
!2199 = !DILocation(line: 0, scope: !2191)
!2200 = !DILocation(line: 494, column: 10, scope: !2191)
!2201 = !DILocation(line: 494, column: 3, scope: !2191)
!2202 = distinct !DISubprogram(name: "stat64", scope: !2110, file: !2110, line: 502, type: !2203, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!588, !593, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2115, line: 119, size: 1152, elements: !2207)
!2207 = !{!2208, !2209, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2221, !2222, !2223, !2224}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2206, file: !2115, line: 121, baseType: !2118, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2206, file: !2115, line: 123, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1869, line: 149, baseType: !597)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2206, file: !2115, line: 124, baseType: !2122, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2206, file: !2115, line: 125, baseType: !2124, size: 32, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2206, file: !2115, line: 132, baseType: !2126, size: 32, offset: 224)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2206, file: !2115, line: 133, baseType: !2128, size: 32, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2206, file: !2115, line: 135, baseType: !588, size: 32, offset: 288)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2206, file: !2115, line: 136, baseType: !2118, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2206, file: !2115, line: 137, baseType: !1868, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2206, file: !2115, line: 143, baseType: !2133, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2206, file: !2115, line: 144, baseType: !2220, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1869, line: 180, baseType: !599)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2206, file: !2115, line: 152, baseType: !2137, size: 128, offset: 576)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2206, file: !2115, line: 153, baseType: !2137, size: 128, offset: 704)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2206, file: !2115, line: 154, baseType: !2137, size: 128, offset: 832)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2206, file: !2115, line: 164, baseType: !2147, size: 192, offset: 960)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "__path", arg: 1, scope: !2202, file: !2110, line: 502, type: !593)
!2227 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2202, file: !2110, line: 502, type: !2205)
!2228 = !DILocation(line: 0, scope: !2202)
!2229 = !DILocation(line: 504, column: 10, scope: !2202)
!2230 = !DILocation(line: 504, column: 3, scope: !2202)
!2231 = distinct !DISubprogram(name: "lstat64", scope: !2110, file: !2110, line: 509, type: !2203, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2232 = !{!2233, !2234}
!2233 = !DILocalVariable(name: "__path", arg: 1, scope: !2231, file: !2110, line: 509, type: !593)
!2234 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2231, file: !2110, line: 509, type: !2205)
!2235 = !DILocation(line: 0, scope: !2231)
!2236 = !DILocation(line: 511, column: 10, scope: !2231)
!2237 = !DILocation(line: 511, column: 3, scope: !2231)
!2238 = distinct !DISubprogram(name: "fstat64", scope: !2110, file: !2110, line: 516, type: !2239, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!588, !588, !2205}
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "__fd", arg: 1, scope: !2238, file: !2110, line: 516, type: !588)
!2243 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2238, file: !2110, line: 516, type: !2205)
!2244 = !DILocation(line: 0, scope: !2238)
!2245 = !DILocation(line: 518, column: 10, scope: !2238)
!2246 = !DILocation(line: 518, column: 3, scope: !2238)
!2247 = distinct !DISubprogram(name: "fstatat64", scope: !2110, file: !2110, line: 523, type: !2248, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!588, !588, !593, !2205, !588}
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DILocalVariable(name: "__fd", arg: 1, scope: !2247, file: !2110, line: 523, type: !588)
!2252 = !DILocalVariable(name: "__filename", arg: 2, scope: !2247, file: !2110, line: 523, type: !593)
!2253 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2247, file: !2110, line: 523, type: !2205)
!2254 = !DILocalVariable(name: "__flag", arg: 4, scope: !2247, file: !2110, line: 523, type: !588)
!2255 = !DILocation(line: 0, scope: !2247)
!2256 = !DILocation(line: 526, column: 10, scope: !2247)
!2257 = !DILocation(line: 526, column: 3, scope: !2247)
!2258 = distinct !DISubprogram(name: "ira_debug_conflicts", scope: !3, file: !3, line: 751, type: !2259, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !587}
!2261 = !{!2262}
!2262 = !DILocalVariable(name: "reg_p", arg: 1, scope: !2258, file: !3, line: 751, type: !587)
!2263 = !DILocation(line: 0, scope: !2258)
!2264 = !DILocation(line: 753, column: 20, scope: !2258)
!2265 = !DILocation(line: 753, column: 3, scope: !2258)
!2266 = !DILocation(line: 754, column: 1, scope: !2258)
!2267 = distinct !DISubprogram(name: "print_conflicts", scope: !3, file: !3, line: 690, type: !2268, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !1842, !587}
!2270 = !{!2271, !2272, !2273, !2274, !2279, !2280, !2284, !2295}
!2271 = !DILocalVariable(name: "file", arg: 1, scope: !2267, file: !3, line: 690, type: !1842)
!2272 = !DILocalVariable(name: "reg_p", arg: 2, scope: !2267, file: !3, line: 690, type: !587)
!2273 = !DILocalVariable(name: "a", scope: !2267, file: !3, line: 692, type: !601)
!2274 = !DILocalVariable(name: "ai", scope: !2267, file: !3, line: 693, type: !2275)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_iterator", file: !602, line: 935, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 932, size: 32, elements: !2277)
!2277 = !{!2278}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2276, file: !602, line: 934, baseType: !588, size: 32)
!2279 = !DILocalVariable(name: "conflicting_hard_regs", scope: !2267, file: !3, line: 694, type: !595)
!2280 = !DILocalVariable(name: "conflict_a", scope: !2281, file: !3, line: 698, type: !601)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 697, column: 5)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 696, column: 3)
!2283 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 696, column: 3)
!2284 = !DILocalVariable(name: "aci", scope: !2281, file: !3, line: 699, type: !2285)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_conflict_iterator", file: !602, line: 1040, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 1012, size: 320, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "allocno_conflict_vec_p", scope: !2286, file: !602, line: 1015, baseType: !587, size: 8)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2286, file: !602, line: 1018, baseType: !592, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !2286, file: !602, line: 1022, baseType: !7, size: 32, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2286, file: !602, line: 1026, baseType: !7, size: 32, offset: 160)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !2286, file: !602, line: 1030, baseType: !7, size: 32, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "base_conflict_id", scope: !2286, file: !602, line: 1035, baseType: !588, size: 32, offset: 224)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2286, file: !602, line: 1039, baseType: !597, size: 64, offset: 256)
!2295 = !DILocalVariable(name: "bb", scope: !2281, file: !3, line: 700, type: !982)
!2296 = !DILocation(line: 0, scope: !2267)
!2297 = !DILocation(line: 692, column: 3, scope: !2267)
!2298 = !DILocation(line: 693, column: 3, scope: !2267)
!2299 = !DILocation(line: 696, column: 3, scope: !2283)
!2300 = !DILocation(line: 0, scope: !2281)
!2301 = !DILocation(line: 0, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 702, column: 11)
!2303 = !DILocation(line: 696, column: 3, scope: !2282)
!2304 = !DILocation(line: 698, column: 7, scope: !2281)
!2305 = !DILocation(line: 699, column: 7, scope: !2281)
!2306 = !DILocation(line: 702, column: 11, scope: !2281)
!2307 = !DILocation(line: 703, column: 27, scope: !2302)
!2308 = !DILocation(line: 703, column: 2, scope: !2302)
!2309 = !DILocation(line: 706, column: 34, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 705, column: 2)
!2311 = !DILocation(line: 706, column: 51, scope: !2310)
!2312 = !DILocation(line: 706, column: 4, scope: !2310)
!2313 = !DILocation(line: 707, column: 14, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 707, column: 8)
!2315 = !DILocation(line: 707, column: 42, scope: !2314)
!2316 = !DILocation(line: 707, column: 46, scope: !2314)
!2317 = !DILocation(line: 707, column: 8, scope: !2310)
!2318 = !DILocation(line: 708, column: 32, scope: !2314)
!2319 = !DILocation(line: 708, column: 6, scope: !2314)
!2320 = !DILocation(line: 710, column: 56, scope: !2314)
!2321 = !DILocation(line: 710, column: 62, scope: !2314)
!2322 = !DILocation(line: 710, column: 6, scope: !2314)
!2323 = !DILocation(line: 711, column: 4, scope: !2310)
!2324 = !DILocation(line: 713, column: 7, scope: !2281)
!2325 = !DILocation(line: 714, column: 11, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 714, column: 11)
!2327 = !DILocation(line: 714, column: 46, scope: !2326)
!2328 = !DILocation(line: 714, column: 11, scope: !2281)
!2329 = !DILocation(line: 715, column: 2, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 715, column: 2)
!2331 = !DILocation(line: 715, column: 2, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 715, column: 2)
!2333 = !DILocation(line: 0, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 717, column: 10)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 716, column: 4)
!2336 = !DILocation(line: 721, column: 31, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 720, column: 8)
!2338 = !DILocation(line: 722, column: 5, scope: !2337)
!2339 = !DILocation(line: 721, column: 3, scope: !2337)
!2340 = !DILocation(line: 723, column: 13, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 723, column: 7)
!2342 = !DILocation(line: 723, column: 50, scope: !2341)
!2343 = !DILocation(line: 723, column: 54, scope: !2341)
!2344 = !DILocation(line: 723, column: 7, scope: !2337)
!2345 = !DILocation(line: 724, column: 32, scope: !2341)
!2346 = !DILocation(line: 724, column: 5, scope: !2341)
!2347 = !DILocation(line: 727, column: 44, scope: !2341)
!2348 = !DILocation(line: 727, column: 50, scope: !2341)
!2349 = !DILocation(line: 726, column: 5, scope: !2341)
!2350 = distinct !{!2350, !2329, !2351}
!2351 = !DILocation(line: 729, column: 4, scope: !2330)
!2352 = !DILocation(line: 730, column: 7, scope: !2281)
!2353 = !DILocation(line: 718, column: 32, scope: !2334)
!2354 = !DILocation(line: 718, column: 8, scope: !2334)
!2355 = !DILocation(line: 732, column: 7, scope: !2281)
!2356 = !DILocation(line: 733, column: 7, scope: !2281)
!2357 = !DILocation(line: 735, column: 7, scope: !2281)
!2358 = !DILocation(line: 737, column: 7, scope: !2281)
!2359 = !DILocation(line: 739, column: 7, scope: !2281)
!2360 = !DILocation(line: 740, column: 7, scope: !2281)
!2361 = !DILocation(line: 742, column: 7, scope: !2281)
!2362 = !DILocation(line: 744, column: 5, scope: !2282)
!2363 = distinct !{!2363, !2299, !2364}
!2364 = !DILocation(line: 744, column: 5, scope: !2283)
!2365 = !DILocation(line: 745, column: 3, scope: !2267)
!2366 = !DILocation(line: 746, column: 1, scope: !2267)
!2367 = distinct !DISubprogram(name: "ira_build_conflicts", scope: !3, file: !3, line: 761, type: !2368, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null}
!2370 = !{!2371, !2372, !2373, !2374, !2378}
!2371 = !DILocalVariable(name: "a", scope: !2367, file: !3, line: 763, type: !601)
!2372 = !DILocalVariable(name: "ai", scope: !2367, file: !3, line: 764, type: !2275)
!2373 = !DILocalVariable(name: "temp_hard_reg_set", scope: !2367, file: !3, line: 765, type: !595)
!2374 = !DILocalVariable(name: "attrs", scope: !2375, file: !3, line: 800, type: !1663)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 799, column: 5)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 798, column: 3)
!2377 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 798, column: 3)
!2378 = !DILocalVariable(name: "decl", scope: !2375, file: !3, line: 801, type: !725)
!2379 = !DILocation(line: 763, column: 3, scope: !2367)
!2380 = !DILocation(line: 764, column: 3, scope: !2367)
!2381 = !DILocation(line: 767, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 767, column: 7)
!2383 = !DILocation(line: 767, column: 7, scope: !2367)
!2384 = !DILocation(line: 769, column: 25, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 768, column: 5)
!2386 = !DILocation(line: 769, column: 23, scope: !2385)
!2387 = !DILocation(line: 770, column: 11, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 770, column: 11)
!2389 = !DILocation(line: 770, column: 11, scope: !2385)
!2390 = !DILocation(line: 772, column: 4, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 771, column: 2)
!2392 = !DILocation(line: 773, column: 34, scope: !2391)
!2393 = !DILocation(line: 773, column: 4, scope: !2391)
!2394 = !DILocation(line: 775, column: 8, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 775, column: 8)
!2396 = !DILocation(line: 776, column: 8, scope: !2395)
!2397 = !DILocation(line: 777, column: 6, scope: !2395)
!2398 = !DILocation(line: 0, scope: !2367)
!2399 = !DILocation(line: 780, column: 4, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 780, column: 4)
!2401 = !DILocation(line: 780, column: 4, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 780, column: 4)
!2403 = !DILocation(line: 782, column: 12, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 782, column: 12)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 781, column: 6)
!2406 = !DILocation(line: 783, column: 8, scope: !2404)
!2407 = !DILocation(line: 783, column: 18, scope: !2404)
!2408 = !DILocation(line: 783, column: 5, scope: !2404)
!2409 = !DILocation(line: 782, column: 12, scope: !2405)
!2410 = !DILocation(line: 784, column: 3, scope: !2404)
!2411 = distinct !{!2411, !2399, !2412}
!2412 = !DILocation(line: 785, column: 6, scope: !2400)
!2413 = !DILocation(line: 786, column: 14, scope: !2391)
!2414 = !DILocation(line: 786, column: 4, scope: !2391)
!2415 = !DILocation(line: 787, column: 2, scope: !2391)
!2416 = !DILocation(line: 789, column: 9, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 789, column: 7)
!2418 = !DILocation(line: 798, column: 3, scope: !2377)
!2419 = !DILocation(line: 798, column: 3, scope: !2376)
!2420 = !DILocation(line: 803, column: 14, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 803, column: 11)
!2422 = !DILocation(line: 803, column: 32, scope: !2421)
!2423 = !DILocation(line: 803, column: 35, scope: !2421)
!2424 = !DILocation(line: 803, column: 65, scope: !2421)
!2425 = !DILocation(line: 806, column: 4, scope: !2421)
!2426 = !DILocation(line: 806, column: 8, scope: !2421)
!2427 = !DILocation(line: 806, column: 17, scope: !2421)
!2428 = !DILocation(line: 807, column: 8, scope: !2421)
!2429 = !DILocation(line: 817, column: 16, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 817, column: 16)
!2431 = !DILocation(line: 807, column: 20, scope: !2421)
!2432 = !DILocation(line: 0, scope: !2375)
!2433 = !DILocation(line: 807, column: 67, scope: !2421)
!2434 = !DILocation(line: 808, column: 8, scope: !2421)
!2435 = !DILocation(line: 808, column: 26, scope: !2421)
!2436 = !DILocation(line: 808, column: 32, scope: !2421)
!2437 = !DILocation(line: 809, column: 8, scope: !2421)
!2438 = !DILocation(line: 809, column: 11, scope: !2421)
!2439 = !DILocation(line: 810, column: 8, scope: !2421)
!2440 = !DILocation(line: 810, column: 13, scope: !2421)
!2441 = !DILocation(line: 803, column: 11, scope: !2375)
!2442 = !DILocation(line: 812, column: 4, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 811, column: 2)
!2444 = !DILocation(line: 814, column: 4, scope: !2443)
!2445 = !DILocation(line: 816, column: 2, scope: !2443)
!2446 = !DILocation(line: 817, column: 46, scope: !2430)
!2447 = !DILocation(line: 817, column: 16, scope: !2421)
!2448 = !DILocation(line: 819, column: 4, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 818, column: 2)
!2450 = !DILocation(line: 821, column: 4, scope: !2449)
!2451 = !DILocation(line: 823, column: 4, scope: !2449)
!2452 = !DILocation(line: 825, column: 4, scope: !2449)
!2453 = !DILocation(line: 827, column: 2, scope: !2449)
!2454 = distinct !{!2454, !2418, !2455}
!2455 = !DILocation(line: 828, column: 5, scope: !2377)
!2456 = !DILocation(line: 829, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 829, column: 7)
!2458 = !DILocation(line: 829, column: 16, scope: !2457)
!2459 = !DILocation(line: 829, column: 19, scope: !2457)
!2460 = !DILocation(line: 830, column: 10, scope: !2457)
!2461 = !DILocation(line: 830, column: 36, scope: !2457)
!2462 = !DILocation(line: 830, column: 7, scope: !2457)
!2463 = !DILocation(line: 830, column: 43, scope: !2457)
!2464 = !DILocation(line: 830, column: 57, scope: !2457)
!2465 = !DILocation(line: 831, column: 5, scope: !2457)
!2466 = !DILocation(line: 832, column: 1, scope: !2367)
!2467 = distinct !DISubprogram(name: "build_conflict_bit_table", scope: !3, file: !3, line: 68, type: !2468, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!587}
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2497}
!2471 = !DILocalVariable(name: "i", scope: !2467, file: !3, line: 70, type: !588)
!2472 = !DILocalVariable(name: "num", scope: !2467, file: !3, line: 70, type: !588)
!2473 = !DILocalVariable(name: "id", scope: !2467, file: !3, line: 70, type: !588)
!2474 = !DILocalVariable(name: "allocated_words_num", scope: !2467, file: !3, line: 70, type: !588)
!2475 = !DILocalVariable(name: "conflict_bit_vec_words_num", scope: !2467, file: !3, line: 70, type: !588)
!2476 = !DILocalVariable(name: "j", scope: !2467, file: !3, line: 71, type: !7)
!2477 = !DILocalVariable(name: "cover_class", scope: !2467, file: !3, line: 72, type: !390)
!2478 = !DILocalVariable(name: "allocno", scope: !2467, file: !3, line: 73, type: !601)
!2479 = !DILocalVariable(name: "live_a", scope: !2467, file: !3, line: 73, type: !601)
!2480 = !DILocalVariable(name: "r", scope: !2467, file: !3, line: 74, type: !1760)
!2481 = !DILocalVariable(name: "ai", scope: !2467, file: !3, line: 75, type: !2275)
!2482 = !DILocalVariable(name: "allocnos_live", scope: !2467, file: !3, line: 76, type: !2483)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "sparseset", file: !2484, line: 41, baseType: !2485)
!2484 = !DIFile(filename: "./sparseset.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sparseset_def", file: !2484, line: 31, size: 320, elements: !2487)
!2487 = !{!2488, !2490, !2491, !2492, !2493, !2494, !2495, !2496}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dense", scope: !2486, file: !2484, line: 33, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sparse", scope: !2486, file: !2484, line: 34, baseType: !2489, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !2486, file: !2484, line: 35, baseType: !7, size: 32, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2486, file: !2484, line: 36, baseType: !7, size: 32, offset: 160)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2486, file: !2484, line: 37, baseType: !7, size: 32, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "iter_inc", scope: !2486, file: !2484, line: 38, baseType: !587, size: 8, offset: 224)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "iterating", scope: !2486, file: !2484, line: 39, baseType: !587, size: 8, offset: 232)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2486, file: !2484, line: 40, baseType: !1134, size: 64, offset: 256)
!2497 = !DILocalVariable(name: "allocno_set_words", scope: !2467, file: !3, line: 77, type: !588)
!2498 = !DILocation(line: 73, column: 3, scope: !2467)
!2499 = !DILocation(line: 75, column: 3, scope: !2467)
!2500 = !DILocation(line: 79, column: 24, scope: !2467)
!2501 = !DILocation(line: 79, column: 56, scope: !2467)
!2502 = !DILocation(line: 79, column: 61, scope: !2467)
!2503 = !DILocation(line: 0, scope: !2467)
!2504 = !DILocation(line: 81, column: 3, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 81, column: 3)
!2506 = !DILocation(line: 81, column: 3, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 81, column: 3)
!2508 = !DILocation(line: 83, column: 11, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 83, column: 11)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 82, column: 5)
!2511 = !DILocation(line: 83, column: 35, scope: !2509)
!2512 = !DILocation(line: 83, column: 33, scope: !2509)
!2513 = !DILocation(line: 83, column: 11, scope: !2510)
!2514 = distinct !{!2514, !2504, !2515}
!2515 = !DILocation(line: 99, column: 5, scope: !2505)
!2516 = !DILocation(line: 86, column: 28, scope: !2510)
!2517 = !DILocation(line: 86, column: 52, scope: !2510)
!2518 = !DILocation(line: 87, column: 5, scope: !2510)
!2519 = !DILocation(line: 88, column: 27, scope: !2510)
!2520 = !DILocation(line: 89, column: 11, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 89, column: 11)
!2522 = !DILocation(line: 89, column: 52, scope: !2521)
!2523 = !DILocation(line: 90, column: 27, scope: !2521)
!2524 = !DILocation(line: 90, column: 6, scope: !2521)
!2525 = !DILocation(line: 90, column: 62, scope: !2521)
!2526 = !DILocation(line: 90, column: 4, scope: !2521)
!2527 = !DILocation(line: 89, column: 11, scope: !2510)
!2528 = !DILocation(line: 92, column: 8, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 92, column: 8)
!2530 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 91, column: 2)
!2531 = !DILocation(line: 92, column: 34, scope: !2529)
!2532 = !DILocation(line: 92, column: 41, scope: !2529)
!2533 = !DILocation(line: 92, column: 55, scope: !2529)
!2534 = !DILocation(line: 92, column: 38, scope: !2529)
!2535 = !DILocation(line: 93, column: 6, scope: !2529)
!2536 = !DILocation(line: 100, column: 36, scope: !2467)
!2537 = !DILocation(line: 100, column: 19, scope: !2467)
!2538 = !DILocation(line: 102, column: 14, scope: !2467)
!2539 = !DILocation(line: 102, column: 12, scope: !2467)
!2540 = !DILocation(line: 101, column: 33, scope: !2467)
!2541 = !DILocation(line: 101, column: 13, scope: !2467)
!2542 = !DILocation(line: 104, column: 3, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 104, column: 3)
!2544 = !DILocation(line: 104, column: 3, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 104, column: 3)
!2546 = !DILocation(line: 106, column: 13, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 105, column: 5)
!2548 = !DILocation(line: 107, column: 11, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 107, column: 11)
!2550 = !DILocation(line: 107, column: 35, scope: !2549)
!2551 = !DILocation(line: 107, column: 33, scope: !2549)
!2552 = !DILocation(line: 107, column: 11, scope: !2547)
!2553 = !DILocation(line: 109, column: 4, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 108, column: 2)
!2555 = !DILocation(line: 109, column: 19, scope: !2554)
!2556 = !DILocation(line: 110, column: 4, scope: !2554)
!2557 = distinct !{!2557, !2542, !2558}
!2558 = !DILocation(line: 121, column: 5, scope: !2543)
!2559 = !DILocation(line: 113, column: 28, scope: !2547)
!2560 = !DILocation(line: 113, column: 52, scope: !2547)
!2561 = !DILocation(line: 114, column: 5, scope: !2547)
!2562 = !DILocation(line: 115, column: 27, scope: !2547)
!2563 = !DILocation(line: 118, column: 9, scope: !2547)
!2564 = !DILocation(line: 118, column: 7, scope: !2547)
!2565 = !DILocation(line: 117, column: 21, scope: !2547)
!2566 = !DILocation(line: 116, column: 7, scope: !2547)
!2567 = !DILocation(line: 117, column: 2, scope: !2547)
!2568 = !DILocation(line: 119, column: 15, scope: !2547)
!2569 = !DILocation(line: 119, column: 7, scope: !2547)
!2570 = !DILocation(line: 122, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 122, column: 7)
!2572 = !DILocation(line: 122, column: 33, scope: !2571)
!2573 = !DILocation(line: 122, column: 40, scope: !2571)
!2574 = !DILocation(line: 122, column: 54, scope: !2571)
!2575 = !DILocation(line: 122, column: 37, scope: !2571)
!2576 = !DILocation(line: 126, column: 8, scope: !2571)
!2577 = !DILocation(line: 126, column: 35, scope: !2571)
!2578 = !DILocation(line: 127, column: 8, scope: !2571)
!2579 = !DILocation(line: 127, column: 35, scope: !2571)
!2580 = !DILocation(line: 127, column: 33, scope: !2571)
!2581 = !DILocation(line: 127, column: 52, scope: !2571)
!2582 = !DILocation(line: 123, column: 5, scope: !2571)
!2583 = !DILocation(line: 0, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 131, column: 2)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 130, column: 7)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 130, column: 7)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 129, column: 5)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 128, column: 3)
!2589 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 128, column: 3)
!2590 = !DILocation(line: 128, column: 8, scope: !2589)
!2591 = !DILocation(line: 128, column: 19, scope: !2588)
!2592 = !DILocation(line: 128, column: 17, scope: !2588)
!2593 = !DILocation(line: 128, column: 3, scope: !2589)
!2594 = !DILocation(line: 130, column: 16, scope: !2586)
!2595 = !DILocation(line: 130, column: 12, scope: !2586)
!2596 = !DILocation(line: 0, scope: !2586)
!2597 = !DILocation(line: 130, column: 45, scope: !2585)
!2598 = !DILocation(line: 130, column: 7, scope: !2586)
!2599 = !DILocation(line: 132, column: 17, scope: !2584)
!2600 = !DILocation(line: 132, column: 12, scope: !2584)
!2601 = !DILocation(line: 133, column: 10, scope: !2584)
!2602 = !DILocation(line: 134, column: 9, scope: !2584)
!2603 = !DILocation(line: 135, column: 18, scope: !2584)
!2604 = !DILocation(line: 136, column: 4, scope: !2584)
!2605 = !DILocation(line: 137, column: 4, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 137, column: 4)
!2607 = !DILocation(line: 0, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 140, column: 12)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 138, column: 6)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 137, column: 4)
!2611 = !DILocation(line: 0, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 144, column: 3)
!2613 = !DILocation(line: 137, column: 4, scope: !2610)
!2614 = !DILocation(line: 0, scope: !2610)
!2615 = !DILocation(line: 139, column: 17, scope: !2609)
!2616 = !DILocation(line: 141, column: 19, scope: !2608)
!2617 = !DILocation(line: 140, column: 12, scope: !2608)
!2618 = !DILocation(line: 143, column: 12, scope: !2608)
!2619 = !DILocation(line: 143, column: 5, scope: !2608)
!2620 = !DILocation(line: 145, column: 5, scope: !2612)
!2621 = !DILocation(line: 149, column: 5, scope: !2612)
!2622 = !DILocation(line: 152, column: 3, scope: !2612)
!2623 = distinct !{!2623, !2605, !2624}
!2624 = !DILocation(line: 153, column: 6, scope: !2606)
!2625 = !DILocation(line: 130, column: 61, scope: !2585)
!2626 = !DILocation(line: 130, column: 7, scope: !2585)
!2627 = distinct !{!2627, !2598, !2628}
!2628 = !DILocation(line: 154, column: 2, scope: !2586)
!2629 = !DILocation(line: 156, column: 16, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 156, column: 7)
!2631 = !DILocation(line: 156, column: 12, scope: !2630)
!2632 = !DILocation(line: 0, scope: !2630)
!2633 = !DILocation(line: 156, column: 46, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 156, column: 7)
!2635 = !DILocation(line: 156, column: 7, scope: !2630)
!2636 = !DILocation(line: 157, column: 38, scope: !2634)
!2637 = !DILocation(line: 157, column: 2, scope: !2634)
!2638 = !DILocation(line: 156, column: 62, scope: !2634)
!2639 = !DILocation(line: 156, column: 7, scope: !2634)
!2640 = distinct !{!2640, !2635, !2641}
!2641 = !DILocation(line: 157, column: 62, scope: !2630)
!2642 = !DILocation(line: 128, column: 35, scope: !2588)
!2643 = !DILocation(line: 128, column: 3, scope: !2588)
!2644 = distinct !{!2644, !2593, !2645}
!2645 = !DILocation(line: 158, column: 5, scope: !2589)
!2646 = !DILocation(line: 159, column: 3, scope: !2467)
!2647 = !DILocation(line: 160, column: 3, scope: !2467)
!2648 = !DILocation(line: 161, column: 1, scope: !2467)
!2649 = distinct !DISubprogram(name: "build_conflicts", scope: !3, file: !3, line: 636, type: !2368, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2650)
!2650 = !{!2651, !2652, !2653}
!2651 = !DILocalVariable(name: "i", scope: !2649, file: !3, line: 638, type: !588)
!2652 = !DILocalVariable(name: "a", scope: !2649, file: !3, line: 639, type: !601)
!2653 = !DILocalVariable(name: "cap", scope: !2649, file: !3, line: 639, type: !601)
!2654 = !DILocation(line: 643, column: 13, scope: !2649)
!2655 = !DILocation(line: 643, column: 11, scope: !2649)
!2656 = !DILocation(line: 642, column: 25, scope: !2649)
!2657 = !DILocation(line: 642, column: 5, scope: !2649)
!2658 = !DILocation(line: 644, column: 12, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 644, column: 3)
!2660 = !DILocation(line: 0, scope: !2649)
!2661 = !DILocation(line: 644, column: 8, scope: !2659)
!2662 = !DILocation(line: 0, scope: !2659)
!2663 = !DILocation(line: 644, column: 34, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 644, column: 3)
!2665 = !DILocation(line: 644, column: 3, scope: !2659)
!2666 = !DILocation(line: 645, column: 14, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 645, column: 5)
!2668 = !DILocation(line: 645, column: 10, scope: !2667)
!2669 = !DILocation(line: 0, scope: !2667)
!2670 = !DILocation(line: 646, column: 5, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 645, column: 5)
!2672 = !DILocation(line: 645, column: 5, scope: !2667)
!2673 = !DILocation(line: 649, column: 2, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 648, column: 7)
!2675 = !DILocation(line: 650, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 650, column: 2)
!2677 = !DILocation(line: 0, scope: !2676)
!2678 = !DILocation(line: 650, column: 34, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 650, column: 2)
!2680 = !DILocation(line: 650, column: 2, scope: !2676)
!2681 = !DILocation(line: 651, column: 4, scope: !2679)
!2682 = !DILocation(line: 650, column: 2, scope: !2679)
!2683 = distinct !{!2683, !2680, !2684}
!2684 = !DILocation(line: 651, column: 32, scope: !2676)
!2685 = !DILocation(line: 647, column: 7, scope: !2671)
!2686 = !DILocation(line: 645, column: 5, scope: !2671)
!2687 = distinct !{!2687, !2672, !2688}
!2688 = !DILocation(line: 652, column: 7, scope: !2667)
!2689 = !DILocation(line: 644, column: 3, scope: !2664)
!2690 = distinct !{!2690, !2665, !2691}
!2691 = !DILocation(line: 652, column: 7, scope: !2659)
!2692 = !DILocation(line: 653, column: 13, scope: !2649)
!2693 = !DILocation(line: 653, column: 3, scope: !2649)
!2694 = !DILocation(line: 654, column: 1, scope: !2649)
!2695 = distinct !DISubprogram(name: "add_copies", scope: !3, file: !3, line: 515, type: !2696, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !1707}
!2698 = !{!2699, !2700, !2701}
!2699 = !DILocalVariable(name: "loop_tree_node", arg: 1, scope: !2695, file: !3, line: 515, type: !1707)
!2700 = !DILocalVariable(name: "bb", scope: !2695, file: !3, line: 517, type: !982)
!2701 = !DILocalVariable(name: "insn", scope: !2695, file: !3, line: 518, type: !611)
!2702 = !DILocation(line: 0, scope: !2695)
!2703 = !DILocation(line: 520, column: 24, scope: !2695)
!2704 = !DILocation(line: 521, column: 10, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 521, column: 7)
!2706 = !DILocation(line: 521, column: 7, scope: !2695)
!2707 = !DILocation(line: 523, column: 3, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 523, column: 3)
!2709 = !DILocation(line: 0, scope: !2708)
!2710 = !DILocation(line: 523, column: 3, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 523, column: 3)
!2712 = !DILocation(line: 524, column: 9, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 524, column: 9)
!2714 = !DILocation(line: 524, column: 9, scope: !2711)
!2715 = !DILocation(line: 525, column: 7, scope: !2713)
!2716 = distinct !{!2716, !2707, !2717}
!2717 = !DILocation(line: 525, column: 36, scope: !2708)
!2718 = !DILocation(line: 526, column: 1, scope: !2695)
!2719 = distinct !DISubprogram(name: "propagate_copies", scope: !3, file: !3, line: 531, type: !2368, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2720)
!2720 = !{!2721, !2722, !2727, !2728, !2729, !2730, !2731}
!2721 = !DILocalVariable(name: "cp", scope: !2719, file: !3, line: 533, type: !1740)
!2722 = !DILocalVariable(name: "ci", scope: !2719, file: !3, line: 534, type: !2723)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_copy_iterator", file: !602, line: 975, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 972, size: 32, elements: !2725)
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2724, file: !602, line: 974, baseType: !588, size: 32)
!2727 = !DILocalVariable(name: "a1", scope: !2719, file: !3, line: 535, type: !601)
!2728 = !DILocalVariable(name: "a2", scope: !2719, file: !3, line: 535, type: !601)
!2729 = !DILocalVariable(name: "parent_a1", scope: !2719, file: !3, line: 535, type: !601)
!2730 = !DILocalVariable(name: "parent_a2", scope: !2719, file: !3, line: 535, type: !601)
!2731 = !DILocalVariable(name: "parent", scope: !2719, file: !3, line: 536, type: !1707)
!2732 = !DILocation(line: 533, column: 3, scope: !2719)
!2733 = !DILocation(line: 534, column: 3, scope: !2719)
!2734 = !DILocation(line: 0, scope: !2719)
!2735 = !DILocation(line: 538, column: 3, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 538, column: 3)
!2737 = !DILocation(line: 538, column: 3, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 538, column: 3)
!2739 = !DILocation(line: 540, column: 12, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 539, column: 5)
!2741 = !DILocation(line: 540, column: 16, scope: !2740)
!2742 = !DILocation(line: 541, column: 16, scope: !2740)
!2743 = !DILocation(line: 542, column: 11, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 542, column: 11)
!2745 = !DILocation(line: 542, column: 42, scope: !2744)
!2746 = !DILocation(line: 542, column: 39, scope: !2744)
!2747 = !DILocation(line: 542, column: 11, scope: !2740)
!2748 = !DILocation(line: 545, column: 45, scope: !2740)
!2749 = !DILocation(line: 546, column: 24, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 546, column: 11)
!2751 = !DILocation(line: 546, column: 42, scope: !2750)
!2752 = !DILocation(line: 546, column: 11, scope: !2740)
!2753 = !DILocation(line: 547, column: 22, scope: !2750)
!2754 = !DILocation(line: 547, column: 40, scope: !2750)
!2755 = !DILocation(line: 547, column: 14, scope: !2750)
!2756 = !DILocation(line: 547, column: 2, scope: !2750)
!2757 = !DILocation(line: 0, scope: !2750)
!2758 = !DILocation(line: 548, column: 24, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 548, column: 11)
!2760 = !DILocation(line: 548, column: 42, scope: !2759)
!2761 = !DILocation(line: 548, column: 11, scope: !2740)
!2762 = !DILocation(line: 549, column: 22, scope: !2759)
!2763 = !DILocation(line: 549, column: 40, scope: !2759)
!2764 = !DILocation(line: 549, column: 14, scope: !2759)
!2765 = !DILocation(line: 549, column: 2, scope: !2759)
!2766 = !DILocation(line: 0, scope: !2759)
!2767 = !DILocation(line: 551, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 551, column: 11)
!2769 = !DILocation(line: 551, column: 11, scope: !2740)
!2770 = !DILocation(line: 552, column: 50, scope: !2768)
!2771 = !DILocation(line: 553, column: 14, scope: !2768)
!2772 = !DILocation(line: 553, column: 32, scope: !2768)
!2773 = !DILocation(line: 553, column: 42, scope: !2768)
!2774 = !DILocation(line: 552, column: 2, scope: !2768)
!2775 = distinct !{!2775, !2735, !2776}
!2776 = !DILocation(line: 554, column: 5, scope: !2736)
!2777 = !DILocation(line: 555, column: 1, scope: !2719)
!2778 = distinct !DISubprogram(name: "ira_allocno_iter_init", scope: !602, file: !602, line: 939, type: !2779, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2782)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2782 = !{!2783}
!2783 = !DILocalVariable(name: "i", arg: 1, scope: !2778, file: !602, line: 939, type: !2781)
!2784 = !DILocation(line: 0, scope: !2778)
!2785 = !DILocation(line: 941, column: 6, scope: !2778)
!2786 = !DILocation(line: 941, column: 8, scope: !2778)
!2787 = !DILocation(line: 942, column: 1, scope: !2778)
!2788 = distinct !DISubprogram(name: "ira_allocno_iter_cond", scope: !602, file: !602, line: 947, type: !2789, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!587, !2781, !600}
!2791 = !{!2792, !2793, !2794}
!2792 = !DILocalVariable(name: "i", arg: 1, scope: !2788, file: !602, line: 947, type: !2781)
!2793 = !DILocalVariable(name: "a", arg: 2, scope: !2788, file: !602, line: 947, type: !600)
!2794 = !DILocalVariable(name: "n", scope: !2788, file: !602, line: 949, type: !588)
!2795 = !DILocation(line: 0, scope: !2788)
!2796 = !DILocation(line: 951, column: 15, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2788, file: !602, line: 951, column: 3)
!2798 = !DILocation(line: 0, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2797, file: !602, line: 951, column: 3)
!2800 = !DILocation(line: 0, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2799, file: !602, line: 952, column: 9)
!2802 = !DILocation(line: 951, column: 8, scope: !2797)
!2803 = !DILocation(line: 0, scope: !2797)
!2804 = !DILocation(line: 951, column: 20, scope: !2799)
!2805 = !DILocation(line: 951, column: 3, scope: !2797)
!2806 = !DILocation(line: 952, column: 9, scope: !2801)
!2807 = !DILocation(line: 952, column: 25, scope: !2801)
!2808 = !DILocation(line: 952, column: 9, scope: !2799)
!2809 = !DILocation(line: 954, column: 5, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2801, file: !602, line: 953, column: 7)
!2811 = !DILocation(line: 955, column: 11, scope: !2810)
!2812 = !DILocation(line: 955, column: 7, scope: !2810)
!2813 = !DILocation(line: 956, column: 2, scope: !2810)
!2814 = !DILocation(line: 951, column: 41, scope: !2799)
!2815 = !DILocation(line: 951, column: 3, scope: !2799)
!2816 = distinct !{!2816, !2805, !2817}
!2817 = !DILocation(line: 957, column: 7, scope: !2797)
!2818 = !DILocation(line: 959, column: 1, scope: !2788)
!2819 = distinct !DISubprogram(name: "base_reg_class", scope: !2820, file: !2820, line: 25, type: !2821, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2820 = !DIFile(filename: "./addresses.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!390, !5, !420, !420}
!2823 = !{!2824, !2825, !2826}
!2824 = !DILocalVariable(name: "mode", arg: 1, scope: !2819, file: !2820, line: 25, type: !5)
!2825 = !DILocalVariable(name: "outer_code", arg: 2, scope: !2819, file: !2820, line: 26, type: !420)
!2826 = !DILocalVariable(name: "index_code", arg: 3, scope: !2819, file: !2820, line: 27, type: !420)
!2827 = !DILocation(line: 0, scope: !2819)
!2828 = !DILocation(line: 39, column: 3, scope: !2819)
!2829 = distinct !DISubprogram(name: "ira_allocno_conflict_iter_init", scope: !602, file: !602, line: 1044, type: !2830, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2833)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2832, !601}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "i", arg: 1, scope: !2829, file: !602, line: 1044, type: !2832)
!2835 = !DILocalVariable(name: "allocno", arg: 2, scope: !2829, file: !602, line: 1045, type: !601)
!2836 = !DILocation(line: 0, scope: !2829)
!2837 = !DILocation(line: 1047, column: 31, scope: !2829)
!2838 = !DILocation(line: 1047, column: 6, scope: !2829)
!2839 = !DILocation(line: 1047, column: 29, scope: !2829)
!2840 = !DILocation(line: 1048, column: 12, scope: !2829)
!2841 = !DILocation(line: 1048, column: 6, scope: !2829)
!2842 = !DILocation(line: 1048, column: 10, scope: !2829)
!2843 = !DILocation(line: 1049, column: 6, scope: !2829)
!2844 = !DILocation(line: 1049, column: 15, scope: !2829)
!2845 = !DILocation(line: 1050, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2829, file: !602, line: 1050, column: 7)
!2847 = !DILocation(line: 1050, column: 7, scope: !2829)
!2848 = !DILocation(line: 1051, column: 53, scope: !2846)
!2849 = !DILocation(line: 1051, column: 58, scope: !2846)
!2850 = !DILocation(line: 1051, column: 31, scope: !2846)
!2851 = !DILocation(line: 1051, column: 48, scope: !2846)
!2852 = !DILocation(line: 1051, column: 18, scope: !2846)
!2853 = !DILocation(line: 1051, column: 26, scope: !2846)
!2854 = !DILocation(line: 1051, column: 8, scope: !2846)
!2855 = !DILocation(line: 1051, column: 13, scope: !2846)
!2856 = !DILocation(line: 1051, column: 5, scope: !2846)
!2857 = !DILocation(line: 1054, column: 11, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !602, line: 1054, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2846, file: !602, line: 1053, column: 5)
!2860 = !DILocation(line: 1054, column: 35, scope: !2858)
!2861 = !DILocation(line: 1054, column: 33, scope: !2858)
!2862 = !DILocation(line: 1054, column: 11, scope: !2859)
!2863 = !DILocation(line: 1055, column: 5, scope: !2858)
!2864 = !DILocation(line: 1055, column: 10, scope: !2858)
!2865 = !DILocation(line: 1055, column: 2, scope: !2858)
!2866 = !DILocation(line: 1057, column: 36, scope: !2858)
!2867 = !DILocation(line: 1058, column: 7, scope: !2858)
!2868 = !DILocation(line: 1059, column: 6, scope: !2858)
!2869 = !DILocation(line: 1059, column: 22, scope: !2858)
!2870 = !DILocation(line: 1057, column: 5, scope: !2858)
!2871 = !DILocation(line: 1057, column: 10, scope: !2858)
!2872 = !DILocation(line: 1060, column: 10, scope: !2859)
!2873 = !DILocation(line: 1060, column: 18, scope: !2859)
!2874 = !DILocation(line: 1061, column: 29, scope: !2859)
!2875 = !DILocation(line: 1061, column: 10, scope: !2859)
!2876 = !DILocation(line: 1061, column: 27, scope: !2859)
!2877 = !DILocation(line: 1062, column: 18, scope: !2859)
!2878 = !DILocation(line: 1062, column: 37, scope: !2859)
!2879 = !DILocation(line: 1062, column: 10, scope: !2859)
!2880 = !DILocation(line: 1062, column: 15, scope: !2859)
!2881 = !DILocation(line: 1064, column: 1, scope: !2829)
!2882 = distinct !DISubprogram(name: "ira_allocno_conflict_iter_cond", scope: !602, file: !602, line: 1070, type: !2883, scopeLine: 1072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!587, !2832, !600}
!2885 = !{!2886, !2887, !2888}
!2886 = !DILocalVariable(name: "i", arg: 1, scope: !2882, file: !602, line: 1070, type: !2832)
!2887 = !DILocalVariable(name: "a", arg: 2, scope: !2882, file: !602, line: 1071, type: !600)
!2888 = !DILocalVariable(name: "conflict_allocno", scope: !2882, file: !602, line: 1073, type: !601)
!2889 = !DILocation(line: 0, scope: !2882)
!2890 = !DILocation(line: 1075, column: 10, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2882, file: !602, line: 1075, column: 7)
!2892 = !DILocation(line: 1075, column: 7, scope: !2891)
!2893 = !DILocation(line: 1075, column: 7, scope: !2882)
!2894 = !DILocation(line: 0, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !602, line: 1086, column: 7)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !602, line: 1086, column: 7)
!2897 = distinct !DILexicalBlock(scope: !2891, file: !602, line: 1084, column: 5)
!2898 = !DILocation(line: 0, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !602, line: 1087, column: 2)
!2900 = !DILocation(line: 0, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2899, file: !602, line: 1091, column: 8)
!2902 = !DILocation(line: 1086, column: 17, scope: !2895)
!2903 = !DILocation(line: 1086, column: 7, scope: !2896)
!2904 = !DILocation(line: 1077, column: 48, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2891, file: !602, line: 1076, column: 5)
!2906 = !DILocation(line: 1077, column: 56, scope: !2905)
!2907 = !DILocation(line: 1077, column: 26, scope: !2905)
!2908 = !DILocation(line: 1078, column: 28, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2905, file: !602, line: 1078, column: 11)
!2910 = !DILocation(line: 1078, column: 11, scope: !2905)
!2911 = !DILocation(line: 1080, column: 10, scope: !2905)
!2912 = !DILocation(line: 1081, column: 7, scope: !2905)
!2913 = !DILocation(line: 1086, column: 22, scope: !2895)
!2914 = !DILocation(line: 1098, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2897, file: !602, line: 1098, column: 7)
!2916 = !DILocation(line: 1088, column: 15, scope: !2899)
!2917 = !DILocation(line: 1091, column: 8, scope: !2901)
!2918 = !DILocation(line: 1091, column: 20, scope: !2901)
!2919 = !DILocation(line: 1091, column: 50, scope: !2901)
!2920 = !DILocation(line: 1091, column: 47, scope: !2901)
!2921 = !DILocation(line: 1091, column: 44, scope: !2901)
!2922 = !DILocation(line: 1091, column: 8, scope: !2899)
!2923 = !DILocation(line: 1094, column: 29, scope: !2899)
!2924 = !DILocation(line: 1094, column: 15, scope: !2899)
!2925 = !DILocation(line: 1086, column: 59, scope: !2895)
!2926 = !DILocation(line: 1086, column: 38, scope: !2895)
!2927 = !DILocation(line: 1086, column: 36, scope: !2895)
!2928 = !DILocation(line: 1086, column: 7, scope: !2895)
!2929 = distinct !{!2929, !2903, !2930}
!2930 = !DILocation(line: 1095, column: 2, scope: !2896)
!2931 = !DILocation(line: 1098, column: 18, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2915, file: !602, line: 1098, column: 7)
!2933 = !DILocation(line: 1098, column: 23, scope: !2932)
!2934 = !DILocation(line: 1098, column: 28, scope: !2932)
!2935 = !DILocation(line: 1099, column: 12, scope: !2932)
!2936 = !DILocation(line: 1098, column: 42, scope: !2932)
!2937 = !DILocation(line: 1098, column: 7, scope: !2932)
!2938 = distinct !{!2938, !2914, !2939}
!2939 = !DILocation(line: 1099, column: 12, scope: !2915)
!2940 = !DILocation(line: 1101, column: 12, scope: !2897)
!2941 = !DILocation(line: 1101, column: 43, scope: !2897)
!2942 = !DILocation(line: 1101, column: 56, scope: !2897)
!2943 = !DILocation(line: 1101, column: 51, scope: !2897)
!2944 = !DILocation(line: 1101, column: 10, scope: !2897)
!2945 = !DILocation(line: 1103, column: 7, scope: !2897)
!2946 = !DILocation(line: 1105, column: 1, scope: !2882)
!2947 = !DILocation(line: 0, scope: !2891)
!2948 = distinct !DISubprogram(name: "ira_allocno_conflict_iter_next", scope: !602, file: !602, line: 1109, type: !2949, scopeLine: 1110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2832}
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "i", arg: 1, scope: !2948, file: !602, line: 1109, type: !2832)
!2953 = !DILocation(line: 0, scope: !2948)
!2954 = !DILocation(line: 1111, column: 10, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2948, file: !602, line: 1111, column: 7)
!2956 = !DILocation(line: 1111, column: 7, scope: !2955)
!2957 = !DILocation(line: 1111, column: 7, scope: !2948)
!2958 = !DILocation(line: 1112, column: 8, scope: !2955)
!2959 = !DILocation(line: 1112, column: 16, scope: !2955)
!2960 = !DILocation(line: 1112, column: 5, scope: !2955)
!2961 = !DILocation(line: 1115, column: 10, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2955, file: !602, line: 1114, column: 5)
!2963 = !DILocation(line: 1115, column: 15, scope: !2962)
!2964 = !DILocation(line: 1116, column: 10, scope: !2962)
!2965 = !DILocation(line: 1116, column: 17, scope: !2962)
!2966 = !DILocation(line: 1118, column: 1, scope: !2948)
!2967 = distinct !DISubprogram(name: "print_hard_reg_set", scope: !3, file: !3, line: 660, type: !2968, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !1842, !593, !595}
!2970 = !{!2971, !2972, !2973, !2974, !2975}
!2971 = !DILocalVariable(name: "file", arg: 1, scope: !2967, file: !3, line: 660, type: !1842)
!2972 = !DILocalVariable(name: "title", arg: 2, scope: !2967, file: !3, line: 660, type: !593)
!2973 = !DILocalVariable(name: "set", arg: 3, scope: !2967, file: !3, line: 660, type: !595)
!2974 = !DILocalVariable(name: "i", scope: !2967, file: !3, line: 662, type: !588)
!2975 = !DILocalVariable(name: "start", scope: !2967, file: !3, line: 662, type: !588)
!2976 = !DILocation(line: 0, scope: !2967)
!2977 = !DILocation(line: 664, column: 3, scope: !2967)
!2978 = !DILocation(line: 665, column: 8, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 665, column: 3)
!2980 = !DILocation(line: 0, scope: !2979)
!2981 = !DILocation(line: 665, column: 29, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 665, column: 3)
!2983 = !DILocation(line: 665, column: 3, scope: !2979)
!2984 = !DILocation(line: 667, column: 11, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 667, column: 11)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 666, column: 5)
!2987 = !DILocation(line: 667, column: 11, scope: !2986)
!2988 = !DILocation(line: 669, column: 10, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 669, column: 8)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 668, column: 2)
!2991 = !DILocation(line: 669, column: 15, scope: !2989)
!2992 = !DILocation(line: 669, column: 20, scope: !2989)
!2993 = !DILocation(line: 669, column: 8, scope: !2990)
!2994 = !DILocation(line: 670, column: 6, scope: !2989)
!2995 = !DILocation(line: 672, column: 17, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 672, column: 11)
!2997 = !DILocation(line: 673, column: 4, scope: !2996)
!2998 = !DILocation(line: 673, column: 10, scope: !2996)
!2999 = !DILocation(line: 673, column: 39, scope: !2996)
!3000 = !DILocation(line: 672, column: 11, scope: !2986)
!3001 = !DILocation(line: 675, column: 19, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 675, column: 8)
!3003 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 674, column: 2)
!3004 = !DILocation(line: 675, column: 14, scope: !3002)
!3005 = !DILocation(line: 675, column: 8, scope: !3003)
!3006 = !DILocation(line: 676, column: 6, scope: !3002)
!3007 = !DILocation(line: 677, column: 19, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 677, column: 13)
!3009 = !DILocation(line: 677, column: 13, scope: !3002)
!3010 = !DILocation(line: 678, column: 44, scope: !3008)
!3011 = !DILocation(line: 678, column: 6, scope: !3008)
!3012 = !DILocation(line: 680, column: 6, scope: !3008)
!3013 = !DILocation(line: 0, scope: !2986)
!3014 = !DILocation(line: 665, column: 55, scope: !2982)
!3015 = !DILocation(line: 665, column: 3, scope: !2982)
!3016 = distinct !{!3016, !2983, !3017}
!3017 = !DILocation(line: 683, column: 5, scope: !2979)
!3018 = !DILocation(line: 684, column: 3, scope: !2967)
!3019 = !DILocation(line: 685, column: 1, scope: !2967)
!3020 = distinct !DISubprogram(name: "sparseset_set_bit", scope: !2484, file: !2484, line: 106, type: !3021, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2483, !7}
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "s", arg: 1, scope: !3020, file: !2484, line: 106, type: !2483)
!3025 = !DILocalVariable(name: "e", arg: 2, scope: !3020, file: !2484, line: 106, type: !7)
!3026 = !DILocation(line: 0, scope: !3020)
!3027 = !DILocation(line: 108, column: 8, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3020, file: !2484, line: 108, column: 7)
!3029 = !DILocation(line: 108, column: 7, scope: !3020)
!3030 = !DILocation(line: 109, column: 36, scope: !3028)
!3031 = !DILocation(line: 109, column: 43, scope: !3028)
!3032 = !DILocation(line: 109, column: 5, scope: !3028)
!3033 = !DILocation(line: 110, column: 1, scope: !3020)
!3034 = distinct !DISubprogram(name: "sparseset_iter_init", scope: !2484, file: !2484, line: 126, type: !3035, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !2483}
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "s", arg: 1, scope: !3034, file: !2484, line: 126, type: !2483)
!3039 = !DILocation(line: 0, scope: !3034)
!3040 = !DILocation(line: 128, column: 6, scope: !3034)
!3041 = !DILocation(line: 128, column: 11, scope: !3034)
!3042 = !DILocation(line: 129, column: 6, scope: !3034)
!3043 = !DILocation(line: 129, column: 15, scope: !3034)
!3044 = !DILocation(line: 130, column: 6, scope: !3034)
!3045 = !DILocation(line: 130, column: 16, scope: !3034)
!3046 = !DILocation(line: 131, column: 1, scope: !3034)
!3047 = distinct !DISubprogram(name: "sparseset_iter_p", scope: !2484, file: !2484, line: 134, type: !3048, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!587, !2483}
!3050 = !{!3051}
!3051 = !DILocalVariable(name: "s", arg: 1, scope: !3047, file: !2484, line: 134, type: !2483)
!3052 = !DILocation(line: 0, scope: !3047)
!3053 = !DILocation(line: 136, column: 10, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3047, file: !2484, line: 136, column: 7)
!3055 = !DILocation(line: 136, column: 7, scope: !3054)
!3056 = !DILocation(line: 136, column: 20, scope: !3054)
!3057 = !DILocation(line: 136, column: 26, scope: !3054)
!3058 = !DILocation(line: 136, column: 36, scope: !3054)
!3059 = !DILocation(line: 136, column: 31, scope: !3054)
!3060 = !DILocation(line: 136, column: 7, scope: !3047)
!3061 = !DILocation(line: 139, column: 25, scope: !3054)
!3062 = !DILocation(line: 139, column: 5, scope: !3054)
!3063 = !DILocation(line: 0, scope: !3054)
!3064 = !DILocation(line: 140, column: 1, scope: !3047)
!3065 = distinct !DISubprogram(name: "sparseset_iter_elm", scope: !2484, file: !2484, line: 143, type: !3066, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!7, !2483}
!3068 = !{!3069}
!3069 = !DILocalVariable(name: "s", arg: 1, scope: !3065, file: !2484, line: 143, type: !2483)
!3070 = !DILocation(line: 0, scope: !3065)
!3071 = !DILocation(line: 145, column: 13, scope: !3065)
!3072 = !DILocation(line: 145, column: 22, scope: !3065)
!3073 = !DILocation(line: 145, column: 10, scope: !3065)
!3074 = !DILocation(line: 145, column: 3, scope: !3065)
!3075 = distinct !DISubprogram(name: "sparseset_iter_next", scope: !2484, file: !2484, line: 149, type: !3035, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3076)
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !2484, line: 149, type: !2483)
!3078 = !DILocation(line: 0, scope: !3075)
!3079 = !DILocation(line: 151, column: 17, scope: !3075)
!3080 = !DILocation(line: 151, column: 14, scope: !3075)
!3081 = !DILocation(line: 151, column: 6, scope: !3075)
!3082 = !DILocation(line: 151, column: 11, scope: !3075)
!3083 = !DILocation(line: 152, column: 15, scope: !3075)
!3084 = !DILocation(line: 153, column: 1, scope: !3075)
!3085 = distinct !DISubprogram(name: "sparseset_bit_p", scope: !2484, file: !2484, line: 81, type: !3086, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!587, !2483, !7}
!3088 = !{!3089, !3090, !3091}
!3089 = !DILocalVariable(name: "s", arg: 1, scope: !3085, file: !2484, line: 81, type: !2483)
!3090 = !DILocalVariable(name: "e", arg: 2, scope: !3085, file: !2484, line: 81, type: !7)
!3091 = !DILocalVariable(name: "idx", scope: !3085, file: !2484, line: 83, type: !7)
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocation(line: 85, column: 3, scope: !3085)
!3094 = !DILocation(line: 87, column: 12, scope: !3085)
!3095 = !DILocation(line: 87, column: 9, scope: !3085)
!3096 = !DILocation(line: 89, column: 19, scope: !3085)
!3097 = !DILocation(line: 89, column: 14, scope: !3085)
!3098 = !DILocation(line: 89, column: 27, scope: !3085)
!3099 = !DILocation(line: 89, column: 33, scope: !3085)
!3100 = !DILocation(line: 89, column: 30, scope: !3085)
!3101 = !DILocation(line: 89, column: 44, scope: !3085)
!3102 = !DILocation(line: 89, column: 3, scope: !3085)
!3103 = distinct !DISubprogram(name: "sparseset_insert_bit", scope: !2484, file: !2484, line: 96, type: !3104, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !2483, !7, !7}
!3106 = !{!3107, !3108, !3109}
!3107 = !DILocalVariable(name: "s", arg: 1, scope: !3103, file: !2484, line: 96, type: !2483)
!3108 = !DILocalVariable(name: "e", arg: 2, scope: !3103, file: !2484, line: 96, type: !7)
!3109 = !DILocalVariable(name: "idx", arg: 3, scope: !3103, file: !2484, line: 96, type: !7)
!3110 = !DILocation(line: 0, scope: !3103)
!3111 = !DILocation(line: 98, column: 6, scope: !3103)
!3112 = !DILocation(line: 98, column: 3, scope: !3103)
!3113 = !DILocation(line: 98, column: 16, scope: !3103)
!3114 = !DILocation(line: 99, column: 6, scope: !3103)
!3115 = !DILocation(line: 99, column: 3, scope: !3103)
!3116 = !DILocation(line: 99, column: 17, scope: !3103)
!3117 = !DILocation(line: 100, column: 1, scope: !3103)
!3118 = distinct !DISubprogram(name: "build_allocno_conflicts", scope: !3, file: !3, line: 564, type: !3119, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !601}
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133}
!3122 = !DILocalVariable(name: "a", arg: 1, scope: !3118, file: !3, line: 564, type: !601)
!3123 = !DILocalVariable(name: "i", scope: !3118, file: !3, line: 566, type: !588)
!3124 = !DILocalVariable(name: "px", scope: !3118, file: !3, line: 566, type: !588)
!3125 = !DILocalVariable(name: "parent_num", scope: !3118, file: !3, line: 566, type: !588)
!3126 = !DILocalVariable(name: "conflict_bit_vec_words_num", scope: !3118, file: !3, line: 567, type: !588)
!3127 = !DILocalVariable(name: "parent", scope: !3118, file: !3, line: 568, type: !1707)
!3128 = !DILocalVariable(name: "parent_a", scope: !3118, file: !3, line: 569, type: !601)
!3129 = !DILocalVariable(name: "another_a", scope: !3118, file: !3, line: 569, type: !601)
!3130 = !DILocalVariable(name: "another_parent_a", scope: !3118, file: !3, line: 569, type: !601)
!3131 = !DILocalVariable(name: "vec", scope: !3118, file: !3, line: 570, type: !600)
!3132 = !DILocalVariable(name: "allocno_conflicts", scope: !3118, file: !3, line: 571, type: !598)
!3133 = !DILocalVariable(name: "asi", scope: !3118, file: !3, line: 572, type: !3134)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_set_iterator", file: !602, line: 656, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 637, size: 256, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3135, file: !602, line: 640, baseType: !598, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !3135, file: !602, line: 643, baseType: !7, size: 32, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !3135, file: !602, line: 646, baseType: !7, size: 32, offset: 96)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !3135, file: !602, line: 649, baseType: !7, size: 32, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "start_val", scope: !3135, file: !602, line: 652, baseType: !588, size: 32, offset: 160)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !3135, file: !602, line: 655, baseType: !597, size: 64, offset: 192)
!3143 = !DILocation(line: 0, scope: !3118)
!3144 = !DILocation(line: 566, column: 3, scope: !3118)
!3145 = !DILocation(line: 572, column: 3, scope: !3118)
!3146 = !DILocation(line: 574, column: 23, scope: !3118)
!3147 = !DILocation(line: 574, column: 33, scope: !3118)
!3148 = !DILocation(line: 576, column: 3, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 576, column: 3)
!3150 = !DILocation(line: 576, column: 3, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 576, column: 3)
!3152 = !DILocation(line: 579, column: 19, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 578, column: 5)
!3154 = !DILocation(line: 579, column: 47, scope: !3153)
!3155 = !DILocation(line: 582, column: 7, scope: !3153)
!3156 = !DILocation(line: 582, column: 37, scope: !3153)
!3157 = !DILocation(line: 582, column: 41, scope: !3153)
!3158 = distinct !{!3158, !3148, !3159}
!3159 = !DILocation(line: 583, column: 5, scope: !3149)
!3160 = !DILocation(line: 584, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 584, column: 7)
!3162 = !DILocation(line: 584, column: 7, scope: !3118)
!3163 = !DILocation(line: 586, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 585, column: 5)
!3165 = !DILocation(line: 587, column: 30, scope: !3164)
!3166 = !DILocation(line: 588, column: 15, scope: !3164)
!3167 = !DILocation(line: 588, column: 20, scope: !3164)
!3168 = !DILocation(line: 588, column: 74, scope: !3164)
!3169 = !DILocation(line: 588, column: 72, scope: !3164)
!3170 = !DILocation(line: 588, column: 7, scope: !3164)
!3171 = !DILocation(line: 589, column: 7, scope: !3164)
!3172 = !DILocation(line: 589, column: 15, scope: !3164)
!3173 = !DILocation(line: 590, column: 7, scope: !3164)
!3174 = !DILocation(line: 590, column: 41, scope: !3164)
!3175 = !DILocation(line: 591, column: 5, scope: !3164)
!3176 = !DILocation(line: 594, column: 44, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 593, column: 5)
!3178 = !DILocation(line: 594, column: 54, scope: !3177)
!3179 = !DILocation(line: 594, column: 7, scope: !3177)
!3180 = !DILocation(line: 594, column: 42, scope: !3177)
!3181 = !DILocation(line: 595, column: 11, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 595, column: 11)
!3183 = !DILocation(line: 595, column: 29, scope: !3182)
!3184 = !DILocation(line: 595, column: 27, scope: !3182)
!3185 = !DILocation(line: 595, column: 11, scope: !3177)
!3186 = !DILocation(line: 599, column: 24, scope: !3182)
!3187 = !DILocation(line: 599, column: 42, scope: !3182)
!3188 = !DILocation(line: 600, column: 7, scope: !3182)
!3189 = !DILocation(line: 601, column: 7, scope: !3177)
!3190 = !DILocation(line: 602, column: 2, scope: !3177)
!3191 = !DILocation(line: 604, column: 12, scope: !3118)
!3192 = !DILocation(line: 604, column: 40, scope: !3118)
!3193 = !DILocation(line: 605, column: 19, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 605, column: 7)
!3195 = !DILocation(line: 605, column: 36, scope: !3194)
!3196 = !DILocation(line: 606, column: 7, scope: !3194)
!3197 = !DILocation(line: 606, column: 18, scope: !3194)
!3198 = !DILocation(line: 607, column: 4, scope: !3194)
!3199 = !DILocation(line: 607, column: 27, scope: !3194)
!3200 = !DILocation(line: 607, column: 45, scope: !3194)
!3201 = !DILocation(line: 607, column: 19, scope: !3194)
!3202 = !DILocation(line: 608, column: 4, scope: !3194)
!3203 = !DILocation(line: 605, column: 7, scope: !3118)
!3204 = !DILocation(line: 0, scope: !3194)
!3205 = !DILocation(line: 612, column: 16, scope: !3118)
!3206 = !DILocation(line: 613, column: 3, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 613, column: 3)
!3208 = !DILocation(line: 0, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 619, column: 11)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 615, column: 5)
!3211 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 613, column: 3)
!3212 = !DILocation(line: 0, scope: !3210)
!3213 = !DILocation(line: 613, column: 3, scope: !3211)
!3214 = !DILocation(line: 616, column: 19, scope: !3210)
!3215 = !DILocation(line: 616, column: 47, scope: !3210)
!3216 = !DILocation(line: 619, column: 31, scope: !3209)
!3217 = !DILocation(line: 619, column: 56, scope: !3209)
!3218 = !DILocation(line: 620, column: 4, scope: !3209)
!3219 = !DILocation(line: 620, column: 36, scope: !3209)
!3220 = !DILocation(line: 621, column: 8, scope: !3209)
!3221 = !DILocation(line: 620, column: 28, scope: !3209)
!3222 = !DILocation(line: 621, column: 37, scope: !3209)
!3223 = !DILocation(line: 619, column: 11, scope: !3210)
!3224 = !DILocation(line: 626, column: 7, scope: !3210)
!3225 = !DILocation(line: 630, column: 5, scope: !3210)
!3226 = distinct !{!3226, !3206, !3227}
!3227 = !DILocation(line: 630, column: 5, scope: !3207)
!3228 = !DILocation(line: 631, column: 1, scope: !3118)
!3229 = distinct !DISubprogram(name: "ira_allocno_set_iter_init", scope: !602, file: !602, line: 661, type: !3230, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3233)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !3232, !598, !588, !588}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3233 = !{!3234, !3235, !3236, !3237}
!3234 = !DILocalVariable(name: "i", arg: 1, scope: !3229, file: !602, line: 661, type: !3232)
!3235 = !DILocalVariable(name: "vec", arg: 2, scope: !3229, file: !602, line: 662, type: !598)
!3236 = !DILocalVariable(name: "min", arg: 3, scope: !3229, file: !602, line: 662, type: !588)
!3237 = !DILocalVariable(name: "max", arg: 4, scope: !3229, file: !602, line: 662, type: !588)
!3238 = !DILocation(line: 0, scope: !3229)
!3239 = !DILocation(line: 664, column: 6, scope: !3229)
!3240 = !DILocation(line: 664, column: 10, scope: !3229)
!3241 = !DILocation(line: 665, column: 6, scope: !3229)
!3242 = !DILocation(line: 665, column: 15, scope: !3229)
!3243 = !DILocation(line: 666, column: 16, scope: !3229)
!3244 = !DILocation(line: 666, column: 12, scope: !3229)
!3245 = !DILocation(line: 666, column: 6, scope: !3229)
!3246 = !DILocation(line: 666, column: 10, scope: !3229)
!3247 = !DILocation(line: 667, column: 6, scope: !3229)
!3248 = !DILocation(line: 667, column: 16, scope: !3229)
!3249 = !DILocation(line: 668, column: 6, scope: !3229)
!3250 = !DILocation(line: 668, column: 14, scope: !3229)
!3251 = !DILocation(line: 669, column: 20, scope: !3229)
!3252 = !DILocation(line: 669, column: 13, scope: !3229)
!3253 = !DILocation(line: 669, column: 31, scope: !3229)
!3254 = !DILocation(line: 669, column: 6, scope: !3229)
!3255 = !DILocation(line: 669, column: 11, scope: !3229)
!3256 = !DILocation(line: 670, column: 1, scope: !3229)
!3257 = distinct !DISubprogram(name: "ira_allocno_set_iter_cond", scope: !602, file: !602, line: 676, type: !3258, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!587, !3232, !1794}
!3260 = !{!3261, !3262}
!3261 = !DILocalVariable(name: "i", arg: 1, scope: !3257, file: !602, line: 676, type: !3232)
!3262 = !DILocalVariable(name: "n", arg: 2, scope: !3257, file: !602, line: 676, type: !1794)
!3263 = !DILocation(line: 0, scope: !3257)
!3264 = !DILocation(line: 0, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !602, line: 679, column: 3)
!3266 = distinct !DILexicalBlock(scope: !3257, file: !602, line: 679, column: 3)
!3267 = !DILocation(line: 0, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3265, file: !602, line: 680, column: 5)
!3269 = !DILocation(line: 0, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !602, line: 685, column: 11)
!3271 = !DILocation(line: 679, column: 13, scope: !3265)
!3272 = !DILocation(line: 679, column: 3, scope: !3257)
!3273 = !DILocation(line: 679, column: 18, scope: !3265)
!3274 = !DILocation(line: 679, column: 3, scope: !3266)
!3275 = !DILocation(line: 690, column: 3, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3257, file: !602, line: 690, column: 3)
!3277 = !DILocation(line: 681, column: 18, scope: !3268)
!3278 = !DILocation(line: 682, column: 32, scope: !3268)
!3279 = !DILocation(line: 682, column: 18, scope: !3268)
!3280 = !DILocation(line: 685, column: 28, scope: !3270)
!3281 = !DILocation(line: 685, column: 22, scope: !3270)
!3282 = !DILocation(line: 685, column: 11, scope: !3268)
!3283 = !DILocation(line: 679, column: 37, scope: !3265)
!3284 = !DILocation(line: 679, column: 34, scope: !3265)
!3285 = !DILocation(line: 679, column: 32, scope: !3265)
!3286 = !DILocation(line: 679, column: 3, scope: !3265)
!3287 = distinct !{!3287, !3274, !3288}
!3288 = !DILocation(line: 687, column: 5, scope: !3266)
!3289 = !DILocation(line: 690, column: 14, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3276, file: !602, line: 690, column: 3)
!3291 = !DILocation(line: 690, column: 19, scope: !3290)
!3292 = !DILocation(line: 690, column: 24, scope: !3290)
!3293 = !DILocation(line: 691, column: 15, scope: !3290)
!3294 = !DILocation(line: 690, column: 38, scope: !3290)
!3295 = !DILocation(line: 690, column: 3, scope: !3290)
!3296 = distinct !{!3296, !3275, !3297}
!3297 = !DILocation(line: 691, column: 15, scope: !3276)
!3298 = !DILocation(line: 693, column: 30, scope: !3257)
!3299 = !DILocation(line: 693, column: 25, scope: !3257)
!3300 = !DILocation(line: 693, column: 6, scope: !3257)
!3301 = !DILocation(line: 695, column: 3, scope: !3257)
!3302 = !DILocation(line: 696, column: 1, scope: !3257)
!3303 = distinct !DISubprogram(name: "ira_allocno_set_iter_next", scope: !602, file: !602, line: 700, type: !3304, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !3232}
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "i", arg: 1, scope: !3303, file: !602, line: 700, type: !3232)
!3308 = !DILocation(line: 0, scope: !3303)
!3309 = !DILocation(line: 702, column: 6, scope: !3303)
!3310 = !DILocation(line: 702, column: 11, scope: !3303)
!3311 = !DILocation(line: 703, column: 6, scope: !3303)
!3312 = !DILocation(line: 703, column: 13, scope: !3303)
!3313 = !DILocation(line: 704, column: 1, scope: !3303)
!3314 = distinct !DISubprogram(name: "add_insn_allocno_copies", scope: !3, file: !3, line: 448, type: !3315, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !611}
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324, !3328, !3329, !3330, !3331}
!3318 = !DILocalVariable(name: "insn", arg: 1, scope: !3314, file: !3, line: 448, type: !611)
!3319 = !DILocalVariable(name: "set", scope: !3314, file: !3, line: 450, type: !611)
!3320 = !DILocalVariable(name: "operand", scope: !3314, file: !3, line: 450, type: !611)
!3321 = !DILocalVariable(name: "dup", scope: !3314, file: !3, line: 450, type: !611)
!3322 = !DILocalVariable(name: "str", scope: !3314, file: !3, line: 451, type: !593)
!3323 = !DILocalVariable(name: "commut_p", scope: !3314, file: !3, line: 452, type: !587)
!3324 = !DILocalVariable(name: "bound_p", scope: !3314, file: !3, line: 452, type: !3325)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 240, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 30)
!3328 = !DILocalVariable(name: "i", scope: !3314, file: !3, line: 453, type: !588)
!3329 = !DILocalVariable(name: "j", scope: !3314, file: !3, line: 453, type: !588)
!3330 = !DILocalVariable(name: "n", scope: !3314, file: !3, line: 453, type: !588)
!3331 = !DILocalVariable(name: "freq", scope: !3314, file: !3, line: 453, type: !588)
!3332 = !DILocation(line: 0, scope: !3314)
!3333 = !DILocation(line: 452, column: 3, scope: !3314)
!3334 = !DILocation(line: 452, column: 18, scope: !3314)
!3335 = !DILocation(line: 455, column: 10, scope: !3314)
!3336 = !DILocation(line: 456, column: 12, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 456, column: 7)
!3338 = !DILocation(line: 456, column: 7, scope: !3314)
!3339 = !DILocation(line: 458, column: 14, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 458, column: 7)
!3341 = !DILocation(line: 458, column: 33, scope: !3340)
!3342 = !DILocation(line: 459, column: 7, scope: !3340)
!3343 = !DILocation(line: 459, column: 10, scope: !3340)
!3344 = !DILocation(line: 459, column: 40, scope: !3340)
!3345 = !DILocation(line: 459, column: 43, scope: !3340)
!3346 = !DILocation(line: 460, column: 7, scope: !3340)
!3347 = !DILocation(line: 460, column: 12, scope: !3340)
!3348 = !DILocation(line: 461, column: 7, scope: !3340)
!3349 = !DILocation(line: 462, column: 4, scope: !3340)
!3350 = !DILocation(line: 0, scope: !3340)
!3351 = !DILocation(line: 464, column: 6, scope: !3340)
!3352 = !DILocation(line: 461, column: 10, scope: !3340)
!3353 = !DILocation(line: 464, column: 34, scope: !3340)
!3354 = !DILocation(line: 458, column: 7, scope: !3314)
!3355 = !DILocation(line: 466, column: 30, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 465, column: 5)
!3357 = !DILocation(line: 466, column: 46, scope: !3356)
!3358 = !DILocation(line: 466, column: 7, scope: !3356)
!3359 = !DILocation(line: 467, column: 7, scope: !3356)
!3360 = !DILocation(line: 471, column: 9, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 471, column: 7)
!3362 = !DILocation(line: 471, column: 7, scope: !3314)
!3363 = !DILocation(line: 473, column: 3, scope: !3314)
!3364 = !DILocation(line: 0, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 474, column: 3)
!3366 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 474, column: 3)
!3367 = !DILocation(line: 474, column: 8, scope: !3366)
!3368 = !DILocation(line: 0, scope: !3366)
!3369 = !DILocation(line: 474, column: 17, scope: !3365)
!3370 = !DILocation(line: 474, column: 3, scope: !3366)
!3371 = !DILocation(line: 476, column: 3, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 476, column: 3)
!3373 = !DILocation(line: 475, column: 5, scope: !3365)
!3374 = !DILocation(line: 475, column: 16, scope: !3365)
!3375 = !DILocation(line: 474, column: 43, scope: !3365)
!3376 = !DILocation(line: 474, column: 3, scope: !3365)
!3377 = distinct !{!3377, !3370, !3378}
!3378 = !DILocation(line: 475, column: 18, scope: !3366)
!3379 = !DILocation(line: 476, column: 30, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 476, column: 3)
!3381 = !DILocation(line: 476, column: 17, scope: !3380)
!3382 = !DILocation(line: 0, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 500, column: 11)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 498, column: 5)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 497, column: 3)
!3386 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 497, column: 3)
!3387 = !DILocation(line: 497, column: 3, scope: !3386)
!3388 = !DILocation(line: 478, column: 17, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 477, column: 5)
!3390 = !DILocation(line: 479, column: 13, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 479, column: 11)
!3392 = !DILocation(line: 479, column: 11, scope: !3389)
!3393 = !DILocation(line: 481, column: 13, scope: !3389)
!3394 = !DILocation(line: 482, column: 7, scope: !3389)
!3395 = !DILocation(line: 0, scope: !3389)
!3396 = !DILocation(line: 482, column: 14, scope: !3389)
!3397 = !DILocation(line: 482, column: 19, scope: !3389)
!3398 = !DILocation(line: 482, column: 34, scope: !3389)
!3399 = !DILocation(line: 482, column: 26, scope: !3389)
!3400 = !DILocation(line: 0, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 489, column: 10)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 486, column: 4)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 485, column: 6)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 484, column: 7)
!3405 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 484, column: 7)
!3406 = !DILocation(line: 484, column: 7, scope: !3405)
!3407 = !DILocation(line: 483, column: 5, scope: !3389)
!3408 = distinct !{!3408, !3394, !3407}
!3409 = !DILocation(line: 0, scope: !3405)
!3410 = !DILocation(line: 484, column: 39, scope: !3404)
!3411 = !DILocation(line: 485, column: 11, scope: !3403)
!3412 = !DILocation(line: 485, column: 38, scope: !3403)
!3413 = !DILocation(line: 485, column: 6, scope: !3404)
!3414 = !DILocation(line: 487, column: 6, scope: !3402)
!3415 = !DILocation(line: 487, column: 17, scope: !3402)
!3416 = !DILocation(line: 488, column: 12, scope: !3402)
!3417 = !DILocation(line: 489, column: 10, scope: !3401)
!3418 = !DILocation(line: 490, column: 3, scope: !3401)
!3419 = !DILocation(line: 491, column: 7, scope: !3401)
!3420 = !DILocation(line: 493, column: 9, scope: !3401)
!3421 = !DILocation(line: 490, column: 6, scope: !3401)
!3422 = !DILocation(line: 493, column: 31, scope: !3401)
!3423 = !DILocation(line: 489, column: 10, scope: !3402)
!3424 = !DILocation(line: 494, column: 8, scope: !3401)
!3425 = !DILocation(line: 484, column: 45, scope: !3404)
!3426 = !DILocation(line: 484, column: 7, scope: !3404)
!3427 = distinct !{!3427, !3406, !3428}
!3428 = !DILocation(line: 495, column: 4, scope: !3405)
!3429 = !DILocation(line: 476, column: 43, scope: !3380)
!3430 = !DILocation(line: 476, column: 3, scope: !3380)
!3431 = distinct !{!3431, !3371, !3432}
!3432 = !DILocation(line: 496, column: 5, scope: !3372)
!3433 = !DILocation(line: 497, column: 30, scope: !3385)
!3434 = !DILocation(line: 497, column: 17, scope: !3385)
!3435 = !DILocation(line: 499, column: 17, scope: !3384)
!3436 = !DILocation(line: 500, column: 11, scope: !3383)
!3437 = !DILocation(line: 501, column: 4, scope: !3383)
!3438 = !DILocation(line: 502, column: 8, scope: !3383)
!3439 = !DILocation(line: 503, column: 20, scope: !3383)
!3440 = !DILocation(line: 501, column: 7, scope: !3383)
!3441 = !DILocation(line: 503, column: 42, scope: !3383)
!3442 = !DILocation(line: 500, column: 11, scope: !3384)
!3443 = !DILocation(line: 509, column: 2, scope: !3383)
!3444 = !DILocation(line: 497, column: 43, scope: !3385)
!3445 = !DILocation(line: 497, column: 3, scope: !3385)
!3446 = distinct !{!3446, !3387, !3447}
!3447 = !DILocation(line: 510, column: 5, scope: !3386)
!3448 = !DILocation(line: 511, column: 1, scope: !3314)
!3449 = distinct !DISubprogram(name: "process_regs_for_copy", scope: !3, file: !3, line: 340, type: !3450, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!587, !611, !611, !587, !611, !588}
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3453 = !DILocalVariable(name: "reg1", arg: 1, scope: !3449, file: !3, line: 340, type: !611)
!3454 = !DILocalVariable(name: "reg2", arg: 2, scope: !3449, file: !3, line: 340, type: !611)
!3455 = !DILocalVariable(name: "constraint_p", arg: 3, scope: !3449, file: !3, line: 340, type: !587)
!3456 = !DILocalVariable(name: "insn", arg: 4, scope: !3449, file: !3, line: 341, type: !611)
!3457 = !DILocalVariable(name: "freq", arg: 5, scope: !3449, file: !3, line: 341, type: !588)
!3458 = !DILocalVariable(name: "allocno_preferenced_hard_regno", scope: !3449, file: !3, line: 343, type: !588)
!3459 = !DILocalVariable(name: "cost", scope: !3449, file: !3, line: 343, type: !588)
!3460 = !DILocalVariable(name: "index", scope: !3449, file: !3, line: 343, type: !588)
!3461 = !DILocalVariable(name: "offset1", scope: !3449, file: !3, line: 343, type: !588)
!3462 = !DILocalVariable(name: "offset2", scope: !3449, file: !3, line: 343, type: !588)
!3463 = !DILocalVariable(name: "only_regs_p", scope: !3449, file: !3, line: 344, type: !587)
!3464 = !DILocalVariable(name: "a", scope: !3449, file: !3, line: 345, type: !601)
!3465 = !DILocalVariable(name: "rclass", scope: !3449, file: !3, line: 346, type: !390)
!3466 = !DILocalVariable(name: "cover_class", scope: !3449, file: !3, line: 346, type: !390)
!3467 = !DILocalVariable(name: "mode", scope: !3449, file: !3, line: 347, type: !5)
!3468 = !DILocalVariable(name: "cp", scope: !3449, file: !3, line: 348, type: !1740)
!3469 = !DILocalVariable(name: "parent", scope: !3449, file: !3, line: 349, type: !1707)
!3470 = !DILocation(line: 0, scope: !3449)
!3471 = !DILocation(line: 343, column: 3, scope: !3449)
!3472 = !DILocation(line: 351, column: 3, scope: !3449)
!3473 = !DILocation(line: 352, column: 17, scope: !3449)
!3474 = !DILocation(line: 352, column: 30, scope: !3449)
!3475 = !DILocation(line: 352, column: 33, scope: !3449)
!3476 = !DILocation(line: 353, column: 10, scope: !3449)
!3477 = !DILocation(line: 354, column: 10, scope: !3449)
!3478 = !DILocation(line: 357, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 357, column: 7)
!3480 = !DILocation(line: 0, scope: !3479)
!3481 = !DILocation(line: 357, column: 7, scope: !3449)
!3482 = !DILocation(line: 359, column: 11, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 358, column: 5)
!3484 = !DILocation(line: 361, column: 40, scope: !3483)
!3485 = !DILocation(line: 361, column: 55, scope: !3483)
!3486 = !DILocation(line: 361, column: 53, scope: !3483)
!3487 = !DILocation(line: 361, column: 65, scope: !3483)
!3488 = !DILocation(line: 361, column: 63, scope: !3483)
!3489 = !DILocation(line: 362, column: 11, scope: !3483)
!3490 = !DILocation(line: 362, column: 38, scope: !3483)
!3491 = !DILocation(line: 363, column: 5, scope: !3483)
!3492 = !DILocation(line: 364, column: 12, scope: !3479)
!3493 = !DILocation(line: 366, column: 40, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 365, column: 5)
!3495 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 364, column: 12)
!3496 = !DILocation(line: 366, column: 55, scope: !3494)
!3497 = !DILocation(line: 366, column: 53, scope: !3494)
!3498 = !DILocation(line: 366, column: 65, scope: !3494)
!3499 = !DILocation(line: 366, column: 63, scope: !3494)
!3500 = !DILocation(line: 367, column: 11, scope: !3494)
!3501 = !DILocation(line: 367, column: 38, scope: !3494)
!3502 = !DILocation(line: 369, column: 13, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 369, column: 12)
!3504 = !DILocation(line: 371, column: 5, scope: !3503)
!3505 = !DILocation(line: 371, column: 8, scope: !3503)
!3506 = !DILocation(line: 371, column: 19, scope: !3503)
!3507 = !DILocation(line: 371, column: 16, scope: !3503)
!3508 = !DILocation(line: 369, column: 12, scope: !3495)
!3509 = !DILocation(line: 373, column: 34, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 372, column: 5)
!3511 = !DILocation(line: 373, column: 61, scope: !3510)
!3512 = !DILocation(line: 374, column: 6, scope: !3510)
!3513 = !DILocation(line: 374, column: 33, scope: !3510)
!3514 = !DILocation(line: 376, column: 6, scope: !3510)
!3515 = !DILocation(line: 373, column: 12, scope: !3510)
!3516 = !DILocation(line: 377, column: 23, scope: !3510)
!3517 = !DILocation(line: 377, column: 48, scope: !3510)
!3518 = !DILocation(line: 377, column: 66, scope: !3510)
!3519 = !DILocation(line: 377, column: 7, scope: !3510)
!3520 = !DILocation(line: 378, column: 7, scope: !3510)
!3521 = !DILocation(line: 382, column: 9, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 382, column: 7)
!3523 = !DILocation(line: 382, column: 7, scope: !3449)
!3524 = !DILocation(line: 385, column: 12, scope: !3449)
!3525 = !DILocation(line: 386, column: 10, scope: !3449)
!3526 = !DILocation(line: 387, column: 17, scope: !3449)
!3527 = !DILocation(line: 388, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 388, column: 7)
!3529 = !DILocation(line: 388, column: 27, scope: !3528)
!3530 = !DILocation(line: 388, column: 19, scope: !3528)
!3531 = !DILocation(line: 389, column: 10, scope: !3528)
!3532 = !DILocation(line: 389, column: 47, scope: !3528)
!3533 = !DILocation(line: 389, column: 33, scope: !3528)
!3534 = !DILocation(line: 388, column: 7, scope: !3449)
!3535 = !DILocation(line: 392, column: 11, scope: !3449)
!3536 = !DILocation(line: 393, column: 13, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 393, column: 7)
!3538 = !DILocation(line: 393, column: 7, scope: !3449)
!3539 = !DILocation(line: 396, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 396, column: 7)
!3541 = !DILocation(line: 396, column: 7, scope: !3449)
!3542 = !DILocation(line: 397, column: 12, scope: !3540)
!3543 = !DILocation(line: 397, column: 5, scope: !3540)
!3544 = !DILocation(line: 399, column: 12, scope: !3540)
!3545 = !DILocation(line: 0, scope: !3540)
!3546 = !DILocation(line: 0, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 401, column: 5)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 400, column: 3)
!3549 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 400, column: 3)
!3550 = !DILocation(line: 400, column: 3, scope: !3449)
!3551 = !DILocation(line: 403, column: 4, scope: !3547)
!3552 = !DILocation(line: 404, column: 3, scope: !3547)
!3553 = !DILocation(line: 402, column: 7, scope: !3547)
!3554 = !DILocation(line: 406, column: 4, scope: !3547)
!3555 = !DILocation(line: 405, column: 7, scope: !3547)
!3556 = !DILocation(line: 407, column: 7, scope: !3547)
!3557 = !DILocation(line: 407, column: 41, scope: !3547)
!3558 = !DILocation(line: 408, column: 7, scope: !3547)
!3559 = !DILocation(line: 408, column: 50, scope: !3547)
!3560 = !DILocation(line: 409, column: 11, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 409, column: 11)
!3562 = !DILocation(line: 409, column: 47, scope: !3561)
!3563 = !DILocation(line: 409, column: 45, scope: !3561)
!3564 = !DILocation(line: 409, column: 11, scope: !3547)
!3565 = !DILocation(line: 410, column: 31, scope: !3561)
!3566 = !DILocation(line: 410, column: 2, scope: !3561)
!3567 = !DILocation(line: 411, column: 11, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 411, column: 11)
!3569 = !DILocation(line: 411, column: 27, scope: !3568)
!3570 = !DILocation(line: 411, column: 11, scope: !3547)
!3571 = !DILocation(line: 412, column: 2, scope: !3568)
!3572 = !DILocation(line: 413, column: 26, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 413, column: 16)
!3574 = !DILocation(line: 413, column: 54, scope: !3573)
!3575 = !DILocation(line: 413, column: 62, scope: !3573)
!3576 = !DILocation(line: 414, column: 9, scope: !3573)
!3577 = !DILocation(line: 414, column: 25, scope: !3573)
!3578 = !DILocation(line: 414, column: 43, scope: !3573)
!3579 = !DILocation(line: 414, column: 17, scope: !3573)
!3580 = !DILocation(line: 414, column: 63, scope: !3573)
!3581 = !DILocation(line: 413, column: 16, scope: !3568)
!3582 = !DILocation(line: 0, scope: !3568)
!3583 = !DILocation(line: 400, column: 3, scope: !3548)
!3584 = distinct !{!3584, !3585, !3586}
!3585 = !DILocation(line: 400, column: 3, scope: !3549)
!3586 = !DILocation(line: 416, column: 5, scope: !3549)
!3587 = !DILocation(line: 418, column: 1, scope: !3449)
!3588 = distinct !DISubprogram(name: "get_dup_num", scope: !3, file: !3, line: 199, type: !3589, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!588, !588, !587}
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3592 = !DILocalVariable(name: "op_num", arg: 1, scope: !3588, file: !3, line: 199, type: !588)
!3593 = !DILocalVariable(name: "use_commut_op_p", arg: 2, scope: !3588, file: !3, line: 199, type: !587)
!3594 = !DILocalVariable(name: "curr_alt", scope: !3588, file: !3, line: 201, type: !588)
!3595 = !DILocalVariable(name: "c", scope: !3588, file: !3, line: 201, type: !588)
!3596 = !DILocalVariable(name: "original", scope: !3588, file: !3, line: 201, type: !588)
!3597 = !DILocalVariable(name: "dup", scope: !3588, file: !3, line: 201, type: !588)
!3598 = !DILocalVariable(name: "ignore_p", scope: !3588, file: !3, line: 202, type: !587)
!3599 = !DILocalVariable(name: "commut_op_used_p", scope: !3588, file: !3, line: 202, type: !587)
!3600 = !DILocalVariable(name: "str", scope: !3588, file: !3, line: 203, type: !593)
!3601 = !DILocalVariable(name: "op", scope: !3588, file: !3, line: 204, type: !611)
!3602 = !DILocalVariable(name: "cl", scope: !3603, file: !3, line: 267, type: !390)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 266, column: 6)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 235, column: 4)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 233, column: 16)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 228, column: 16)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 226, column: 11)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 222, column: 5)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 221, column: 3)
!3610 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 221, column: 3)
!3611 = !DILocation(line: 0, scope: !3588)
!3612 = !DILocation(line: 206, column: 14, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 206, column: 7)
!3614 = !DILocation(line: 206, column: 18, scope: !3613)
!3615 = !DILocation(line: 206, column: 32, scope: !3613)
!3616 = !DILocation(line: 206, column: 47, scope: !3613)
!3617 = !DILocation(line: 206, column: 7, scope: !3588)
!3618 = !DILocation(line: 208, column: 8, scope: !3588)
!3619 = !DILocation(line: 210, column: 7, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 210, column: 7)
!3621 = !DILocation(line: 210, column: 7, scope: !3588)
!3622 = !DILocation(line: 212, column: 37, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 212, column: 11)
!3624 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 211, column: 5)
!3625 = !DILocation(line: 212, column: 11, scope: !3623)
!3626 = !DILocation(line: 212, column: 11, scope: !3624)
!3627 = !DILocation(line: 213, column: 8, scope: !3623)
!3628 = !DILocation(line: 213, column: 2, scope: !3623)
!3629 = !DILocation(line: 214, column: 23, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 214, column: 16)
!3631 = !DILocation(line: 214, column: 27, scope: !3630)
!3632 = !DILocation(line: 215, column: 22, scope: !3630)
!3633 = !DILocation(line: 214, column: 56, scope: !3630)
!3634 = !DILocation(line: 214, column: 30, scope: !3630)
!3635 = !DILocation(line: 214, column: 16, scope: !3623)
!3636 = !DILocation(line: 209, column: 20, scope: !3588)
!3637 = !DILocation(line: 220, column: 9, scope: !3588)
!3638 = !DILocation(line: 221, column: 8, scope: !3610)
!3639 = !DILocation(line: 0, scope: !3610)
!3640 = !DILocation(line: 221, column: 35, scope: !3610)
!3641 = !DILocation(line: 223, column: 11, scope: !3608)
!3642 = !DILocation(line: 224, column: 11, scope: !3608)
!3643 = !DILocation(line: 232, column: 2, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 229, column: 2)
!3645 = !DILocation(line: 233, column: 18, scope: !3605)
!3646 = !DILocation(line: 233, column: 16, scope: !3606)
!3647 = !DILocation(line: 234, column: 2, scope: !3605)
!3648 = !DILocation(line: 251, column: 10, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 251, column: 10)
!3650 = !DILocation(line: 251, column: 10, scope: !3604)
!3651 = !DILocation(line: 270, column: 24, scope: !3603)
!3652 = !DILocation(line: 269, column: 14, scope: !3603)
!3653 = !DILocation(line: 0, scope: !3603)
!3654 = !DILocation(line: 271, column: 15, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 271, column: 12)
!3656 = !DILocation(line: 271, column: 12, scope: !3603)
!3657 = !DILocation(line: 274, column: 17, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 274, column: 17)
!3659 = !DILocation(line: 274, column: 17, scope: !3655)
!3660 = !DILocation(line: 282, column: 19, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 282, column: 10)
!3662 = !DILocation(line: 282, column: 37, scope: !3661)
!3663 = !DILocation(line: 282, column: 25, scope: !3661)
!3664 = !DILocation(line: 0, scope: !3607)
!3665 = !DILocation(line: 287, column: 14, scope: !3608)
!3666 = !DILocation(line: 287, column: 11, scope: !3608)
!3667 = !DILocation(line: 221, column: 3, scope: !3609)
!3668 = distinct !{!3668, !3669, !3670}
!3669 = !DILocation(line: 221, column: 3, scope: !3610)
!3670 = !DILocation(line: 288, column: 5, scope: !3610)
!3671 = !DILocation(line: 289, column: 16, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 289, column: 7)
!3673 = !DILocation(line: 289, column: 7, scope: !3588)
!3674 = !DILocation(line: 291, column: 18, scope: !3588)
!3675 = !DILocation(line: 292, column: 7, scope: !3588)
!3676 = !DILocation(line: 294, column: 37, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 294, column: 11)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 293, column: 5)
!3679 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 292, column: 7)
!3680 = !DILocation(line: 294, column: 11, scope: !3677)
!3681 = !DILocation(line: 294, column: 11, scope: !3678)
!3682 = !DILocation(line: 295, column: 5, scope: !3677)
!3683 = !DILocation(line: 295, column: 2, scope: !3677)
!3684 = !DILocation(line: 296, column: 20, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 296, column: 16)
!3686 = !DILocation(line: 297, column: 9, scope: !3685)
!3687 = !DILocation(line: 297, column: 65, scope: !3685)
!3688 = !DILocation(line: 297, column: 38, scope: !3685)
!3689 = !DILocation(line: 297, column: 12, scope: !3685)
!3690 = !DILocation(line: 296, column: 16, scope: !3677)
!3691 = !DILocation(line: 298, column: 2, scope: !3685)
!3692 = !DILocation(line: 299, column: 18, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 299, column: 16)
!3694 = !DILocation(line: 299, column: 16, scope: !3685)
!3695 = !DILocation(line: 302, column: 3, scope: !3588)
!3696 = !DILocation(line: 303, column: 1, scope: !3588)
!3697 = distinct !DISubprogram(name: "process_reg_shuffles", scope: !3, file: !3, line: 425, type: !3698, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !611, !588, !588, !586}
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706}
!3701 = !DILocalVariable(name: "reg", arg: 1, scope: !3697, file: !3, line: 425, type: !611)
!3702 = !DILocalVariable(name: "op_num", arg: 2, scope: !3697, file: !3, line: 425, type: !588)
!3703 = !DILocalVariable(name: "freq", arg: 3, scope: !3697, file: !3, line: 425, type: !588)
!3704 = !DILocalVariable(name: "bound_p", arg: 4, scope: !3697, file: !3, line: 425, type: !586)
!3705 = !DILocalVariable(name: "i", scope: !3697, file: !3, line: 427, type: !588)
!3706 = !DILocalVariable(name: "another_reg", scope: !3697, file: !3, line: 428, type: !611)
!3707 = !DILocation(line: 0, scope: !3697)
!3708 = !DILocation(line: 430, column: 3, scope: !3697)
!3709 = !DILocation(line: 431, column: 8, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 431, column: 3)
!3711 = !DILocation(line: 0, scope: !3710)
!3712 = !DILocation(line: 431, column: 30, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 431, column: 3)
!3714 = !DILocation(line: 431, column: 17, scope: !3713)
!3715 = !DILocation(line: 431, column: 3, scope: !3710)
!3716 = !DILocation(line: 433, column: 21, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 432, column: 5)
!3718 = !DILocation(line: 435, column: 12, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 435, column: 11)
!3720 = !DILocation(line: 435, column: 49, scope: !3719)
!3721 = !DILocation(line: 435, column: 39, scope: !3719)
!3722 = !DILocation(line: 436, column: 4, scope: !3719)
!3723 = !DILocation(line: 436, column: 7, scope: !3719)
!3724 = !DILocation(line: 436, column: 34, scope: !3719)
!3725 = !DILocation(line: 437, column: 4, scope: !3719)
!3726 = !DILocation(line: 437, column: 7, scope: !3719)
!3727 = !DILocation(line: 435, column: 11, scope: !3717)
!3728 = !DILocation(line: 440, column: 7, scope: !3717)
!3729 = !DILocation(line: 441, column: 5, scope: !3717)
!3730 = !DILocation(line: 431, column: 43, scope: !3713)
!3731 = !DILocation(line: 431, column: 3, scope: !3713)
!3732 = distinct !{!3732, !3715, !3733}
!3733 = !DILocation(line: 441, column: 5, scope: !3710)
!3734 = !DILocation(line: 442, column: 1, scope: !3697)
!3735 = distinct !DISubprogram(name: "go_through_subreg", scope: !3, file: !3, line: 313, type: !3736, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!611, !611, !1794}
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "x", arg: 1, scope: !3735, file: !3, line: 313, type: !611)
!3740 = !DILocalVariable(name: "offset", arg: 2, scope: !3735, file: !3, line: 313, type: !1794)
!3741 = !DILocalVariable(name: "reg", scope: !3735, file: !3, line: 315, type: !611)
!3742 = !DILocation(line: 0, scope: !3735)
!3743 = !DILocation(line: 317, column: 11, scope: !3735)
!3744 = !DILocation(line: 318, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 318, column: 7)
!3746 = !DILocation(line: 318, column: 7, scope: !3735)
!3747 = !DILocation(line: 321, column: 9, scope: !3735)
!3748 = !DILocation(line: 323, column: 7, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 323, column: 7)
!3750 = !DILocation(line: 323, column: 19, scope: !3749)
!3751 = !DILocation(line: 323, column: 7, scope: !3735)
!3752 = !DILocation(line: 324, column: 36, scope: !3749)
!3753 = !DILocation(line: 324, column: 49, scope: !3749)
!3754 = !DILocation(line: 325, column: 8, scope: !3749)
!3755 = !DILocation(line: 325, column: 25, scope: !3749)
!3756 = !DILocation(line: 324, column: 15, scope: !3749)
!3757 = !DILocation(line: 324, column: 13, scope: !3749)
!3758 = !DILocation(line: 324, column: 5, scope: !3749)
!3759 = !DILocation(line: 327, column: 16, scope: !3749)
!3760 = !DILocation(line: 327, column: 32, scope: !3749)
!3761 = !DILocation(line: 327, column: 13, scope: !3749)
!3762 = !DILocation(line: 329, column: 1, scope: !3735)
!3763 = distinct !DISubprogram(name: "rhs_regno", scope: !421, file: !421, line: 1051, type: !3764, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3769)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!7, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !612, line: 51, baseType: !3767)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!3769 = !{!3770}
!3770 = !DILocalVariable(name: "x", arg: 1, scope: !3763, file: !421, line: 1051, type: !3766)
!3771 = !DILocation(line: 0, scope: !3763)
!3772 = !DILocation(line: 1053, column: 10, scope: !3763)
!3773 = !DILocation(line: 1053, column: 3, scope: !3763)
!3774 = distinct !DISubprogram(name: "ira_get_register_move_cost", scope: !602, file: !602, line: 906, type: !3775, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!588, !5, !390, !390}
!3777 = !{!3778, !3779, !3780}
!3778 = !DILocalVariable(name: "mode", arg: 1, scope: !3774, file: !602, line: 906, type: !5)
!3779 = !DILocalVariable(name: "from", arg: 2, scope: !3774, file: !602, line: 907, type: !390)
!3780 = !DILocalVariable(name: "to", arg: 3, scope: !3774, file: !602, line: 907, type: !390)
!3781 = !DILocation(line: 0, scope: !3774)
!3782 = !DILocation(line: 909, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3774, file: !602, line: 909, column: 7)
!3784 = !DILocation(line: 909, column: 36, scope: !3783)
!3785 = !DILocation(line: 909, column: 7, scope: !3774)
!3786 = !DILocation(line: 910, column: 5, scope: !3783)
!3787 = !DILocation(line: 911, column: 10, scope: !3774)
!3788 = !DILocation(line: 911, column: 3, scope: !3774)
!3789 = distinct !DISubprogram(name: "ira_allocate_and_set_costs", scope: !602, file: !602, line: 1156, type: !3790, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3793)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3792, !390, !588}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799}
!3794 = !DILocalVariable(name: "vec", arg: 1, scope: !3789, file: !602, line: 1156, type: !3792)
!3795 = !DILocalVariable(name: "cover_class", arg: 2, scope: !3789, file: !602, line: 1156, type: !390)
!3796 = !DILocalVariable(name: "val", arg: 3, scope: !3789, file: !602, line: 1156, type: !588)
!3797 = !DILocalVariable(name: "i", scope: !3789, file: !602, line: 1158, type: !588)
!3798 = !DILocalVariable(name: "reg_costs", scope: !3789, file: !602, line: 1158, type: !1794)
!3799 = !DILocalVariable(name: "len", scope: !3789, file: !602, line: 1159, type: !588)
!3800 = !DILocation(line: 0, scope: !3789)
!3801 = !DILocation(line: 1161, column: 7, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3789, file: !602, line: 1161, column: 7)
!3803 = !DILocation(line: 1161, column: 12, scope: !3802)
!3804 = !DILocation(line: 1161, column: 7, scope: !3789)
!3805 = !DILocation(line: 1163, column: 22, scope: !3789)
!3806 = !DILocation(line: 1163, column: 8, scope: !3789)
!3807 = !DILocation(line: 1164, column: 9, scope: !3789)
!3808 = !DILocation(line: 1165, column: 8, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3789, file: !602, line: 1165, column: 3)
!3810 = !DILocation(line: 0, scope: !3809)
!3811 = !DILocation(line: 1165, column: 17, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3809, file: !602, line: 1165, column: 3)
!3813 = !DILocation(line: 1165, column: 3, scope: !3809)
!3814 = !DILocation(line: 1166, column: 5, scope: !3812)
!3815 = !DILocation(line: 1166, column: 18, scope: !3812)
!3816 = !DILocation(line: 1165, column: 25, scope: !3812)
!3817 = !DILocation(line: 1165, column: 3, scope: !3812)
!3818 = distinct !{!3818, !3813, !3819}
!3819 = !DILocation(line: 1166, column: 20, scope: !3809)
!3820 = !DILocation(line: 1167, column: 1, scope: !3789)
!3821 = distinct !DISubprogram(name: "commutative_constraint_p", scope: !3, file: !3, line: 167, type: !3822, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!587, !593}
!3824 = !{!3825, !3826, !3827}
!3825 = !DILocalVariable(name: "str", arg: 1, scope: !3821, file: !3, line: 167, type: !593)
!3826 = !DILocalVariable(name: "ignore_p", scope: !3821, file: !3, line: 169, type: !587)
!3827 = !DILocalVariable(name: "c", scope: !3821, file: !3, line: 170, type: !588)
!3828 = !DILocation(line: 0, scope: !3821)
!3829 = !DILocation(line: 172, column: 8, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 172, column: 3)
!3831 = !DILocation(line: 0, scope: !3830)
!3832 = !DILocation(line: 174, column: 11, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 173, column: 5)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 172, column: 3)
!3835 = !DILocation(line: 175, column: 13, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 175, column: 11)
!3837 = !DILocation(line: 175, column: 11, scope: !3833)
!3838 = !DILocation(line: 177, column: 14, scope: !3833)
!3839 = !DILocation(line: 177, column: 11, scope: !3833)
!3840 = !DILocation(line: 178, column: 11, scope: !3833)
!3841 = !DILocation(line: 182, column: 18, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 182, column: 16)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 180, column: 16)
!3844 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 178, column: 11)
!3845 = !DILocation(line: 186, column: 10, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 186, column: 8)
!3847 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 183, column: 2)
!3848 = !DILocation(line: 182, column: 16, scope: !3843)
!3849 = !DILocation(line: 0, scope: !3844)
!3850 = !DILocation(line: 172, column: 3, scope: !3834)
!3851 = distinct !{!3851, !3852, !3853}
!3852 = !DILocation(line: 172, column: 3, scope: !3830)
!3853 = !DILocation(line: 189, column: 5, scope: !3830)
!3854 = !DILocation(line: 191, column: 1, scope: !3821)
!3855 = distinct !DISubprogram(name: "insn_constraint_len", scope: !3856, file: !3856, line: 177, type: !3857, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3859)
!3856 = !DIFile(filename: "./tm-preds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!1174, !591, !593}
!3859 = !{!3860, !3861}
!3860 = !DILocalVariable(name: "fc", arg: 1, scope: !3855, file: !3856, line: 177, type: !591)
!3861 = !DILocalVariable(name: "str", arg: 2, scope: !3855, file: !3856, line: 177, type: !593)
!3862 = !DILocation(line: 0, scope: !3855)
!3863 = !DILocation(line: 179, column: 3, scope: !3855)
!3864 = !DILocation(line: 185, column: 1, scope: !3855)
!3865 = distinct !DISubprogram(name: "ira_copy_iter_init", scope: !602, file: !602, line: 979, type: !3866, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3869)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!3869 = !{!3870}
!3870 = !DILocalVariable(name: "i", arg: 1, scope: !3865, file: !602, line: 979, type: !3868)
!3871 = !DILocation(line: 0, scope: !3865)
!3872 = !DILocation(line: 981, column: 6, scope: !3865)
!3873 = !DILocation(line: 981, column: 8, scope: !3865)
!3874 = !DILocation(line: 982, column: 1, scope: !3865)
!3875 = distinct !DISubprogram(name: "ira_copy_iter_cond", scope: !602, file: !602, line: 987, type: !3876, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3879)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!587, !3868, !3878}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!3879 = !{!3880, !3881, !3882}
!3880 = !DILocalVariable(name: "i", arg: 1, scope: !3875, file: !602, line: 987, type: !3868)
!3881 = !DILocalVariable(name: "cp", arg: 2, scope: !3875, file: !602, line: 987, type: !3878)
!3882 = !DILocalVariable(name: "n", scope: !3875, file: !602, line: 989, type: !588)
!3883 = !DILocation(line: 0, scope: !3875)
!3884 = !DILocation(line: 991, column: 15, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3875, file: !602, line: 991, column: 3)
!3886 = !DILocation(line: 0, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3885, file: !602, line: 991, column: 3)
!3888 = !DILocation(line: 0, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3887, file: !602, line: 992, column: 9)
!3890 = !DILocation(line: 991, column: 8, scope: !3885)
!3891 = !DILocation(line: 0, scope: !3885)
!3892 = !DILocation(line: 991, column: 20, scope: !3887)
!3893 = !DILocation(line: 991, column: 3, scope: !3885)
!3894 = !DILocation(line: 992, column: 9, scope: !3889)
!3895 = !DILocation(line: 992, column: 23, scope: !3889)
!3896 = !DILocation(line: 992, column: 9, scope: !3887)
!3897 = !DILocation(line: 994, column: 6, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3889, file: !602, line: 993, column: 7)
!3899 = !DILocation(line: 995, column: 11, scope: !3898)
!3900 = !DILocation(line: 995, column: 7, scope: !3898)
!3901 = !DILocation(line: 996, column: 2, scope: !3898)
!3902 = !DILocation(line: 991, column: 39, scope: !3887)
!3903 = !DILocation(line: 991, column: 3, scope: !3887)
!3904 = distinct !{!3904, !3893, !3905}
!3905 = !DILocation(line: 997, column: 7, scope: !3885)
!3906 = !DILocation(line: 999, column: 1, scope: !3875)
