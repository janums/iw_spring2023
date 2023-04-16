; ModuleID = 'loop-init.bc'
source_filename = "loop-init.c"
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
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [12 x i8] c"loop-init.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"loop2\00", align 1
@pass_loop2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_handle_loop2, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 125, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [11 x i8] c"loop2_init\00", align 1
@pass_rtl_loop_init = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8 ()* null, i32 ()* @rtl_loop_init, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 125, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1694
@.str.4 = private unnamed_addr constant [11 x i8] c"loop2_done\00", align 1
@pass_rtl_loop_done = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8 ()* null, i32 ()* @rtl_loop_done, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 125, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1722
@.str.5 = private unnamed_addr constant [16 x i8] c"loop2_invariant\00", align 1
@pass_rtl_move_loop_invariants = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8 ()* @gate_rtl_move_loop_invariants, i32 ()* @rtl_move_loop_invariants, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 126, i32 0, i32 0, i32 0, i32 0, i32 394241 } }, align 8, !dbg !1724
@.str.6 = private unnamed_addr constant [15 x i8] c"loop2_unswitch\00", align 1
@pass_rtl_unswitch = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8 ()* @gate_rtl_unswitch, i32 ()* @rtl_unswitch, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1726
@.str.7 = private unnamed_addr constant [13 x i8] c"loop2_unroll\00", align 1
@pass_rtl_unroll_and_peel_loops = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8 ()* @gate_rtl_unroll_and_peel_loops, i32 ()* @rtl_unroll_and_peel_loops, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1728
@.str.8 = private unnamed_addr constant [13 x i8] c"loop2_doloop\00", align 1
@pass_rtl_doloop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8 ()* @gate_rtl_doloop, i32 ()* @rtl_doloop, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 129, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1730
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_move_loop_invariants = external dso_local local_unnamed_addr global i32, align 4
@flag_unswitch_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_peel_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_unroll_loops = external dso_local local_unnamed_addr global i32, align 4
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@flag_unroll_all_loops = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1736 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1749, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1750, metadata !DIExpression()), !dbg !1751
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1752
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1753
  ret i32 %call, !dbg !1754
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1755 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1759
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1760
  ret i32 %call, !dbg !1761
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1762 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1817, metadata !DIExpression()), !dbg !1818
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1819
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1819
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1819
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1819
  %cmp = icmp uge i8* %0, %1, !dbg !1819
  %conv1 = zext i1 %cmp to i64, !dbg !1819
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1819
  %tobool = icmp eq i64 %expval, 0, !dbg !1819
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1819

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1819
  br label %cond.end, !dbg !1819

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1819
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1819
  %2 = load i8, i8* %0, align 1, !dbg !1819
  %conv3 = zext i8 %2 to i32, !dbg !1819
  br label %cond.end, !dbg !1819

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1819
  ret i32 %cond, !dbg !1820
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1821 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1823, metadata !DIExpression()), !dbg !1824
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1825
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1825
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1825
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1825
  %cmp = icmp uge i8* %0, %1, !dbg !1825
  %conv1 = zext i1 %cmp to i64, !dbg !1825
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1825
  %tobool = icmp eq i64 %expval, 0, !dbg !1825
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1825

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1825
  br label %cond.end, !dbg !1825

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1825
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1825
  %2 = load i8, i8* %0, align 1, !dbg !1825
  %conv3 = zext i8 %2 to i32, !dbg !1825
  br label %cond.end, !dbg !1825

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1825
  ret i32 %cond, !dbg !1826
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1827 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1828
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1828
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1828
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1828
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1828
  %cmp = icmp uge i8* %1, %2, !dbg !1828
  %conv1 = zext i1 %cmp to i64, !dbg !1828
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1828
  %tobool = icmp eq i64 %expval, 0, !dbg !1828
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1828

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1828
  br label %cond.end, !dbg !1828

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1828
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1828
  %3 = load i8, i8* %1, align 1, !dbg !1828
  %conv3 = zext i8 %3 to i32, !dbg !1828
  br label %cond.end, !dbg !1828

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1828
  ret i32 %cond, !dbg !1829
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1830 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1834, metadata !DIExpression()), !dbg !1835
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1836
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1837
  ret i32 %call, !dbg !1838
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1839 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1843, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1844, metadata !DIExpression()), !dbg !1845
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1846
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1846
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1846
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1846
  %cmp = icmp uge i8* %0, %1, !dbg !1846
  %conv1 = zext i1 %cmp to i64, !dbg !1846
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1846
  %tobool = icmp eq i64 %expval, 0, !dbg !1846
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1846

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1846
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1846
  br label %cond.end, !dbg !1846

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1846
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1846
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1846
  store i8 %conv2, i8* %0, align 1, !dbg !1846
  %conv6 = and i32 %__c, 255, !dbg !1846
  br label %cond.end, !dbg !1846

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1846
  ret i32 %cond, !dbg !1847
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1848 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1851, metadata !DIExpression()), !dbg !1852
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1853
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1853
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1853
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1853
  %cmp = icmp uge i8* %0, %1, !dbg !1853
  %conv1 = zext i1 %cmp to i64, !dbg !1853
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1853
  %tobool = icmp eq i64 %expval, 0, !dbg !1853
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1853

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1853
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1853
  br label %cond.end, !dbg !1853

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1853
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1853
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1853
  store i8 %conv2, i8* %0, align 1, !dbg !1853
  %conv6 = and i32 %__c, 255, !dbg !1853
  br label %cond.end, !dbg !1853

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1853
  ret i32 %cond, !dbg !1854
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1855 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1857, metadata !DIExpression()), !dbg !1858
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1859
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1859
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1859
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1859
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1859
  %cmp = icmp uge i8* %1, %2, !dbg !1859
  %conv1 = zext i1 %cmp to i64, !dbg !1859
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1859
  %tobool = icmp eq i64 %expval, 0, !dbg !1859
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1859

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1859
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1859
  br label %cond.end, !dbg !1859

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1859
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1859
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1859
  store i8 %conv4, i8* %1, align 1, !dbg !1859
  %conv6 = and i32 %__c, 255, !dbg !1859
  br label %cond.end, !dbg !1859

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1859
  ret i32 %cond, !dbg !1860
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1861 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1868, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1869, metadata !DIExpression()), !dbg !1870
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1871
  ret i64 %call, !dbg !1872
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1873 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1875, metadata !DIExpression()), !dbg !1876
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1877
  %0 = load i32, i32* %_flags, align 8, !dbg !1877
  %and = lshr i32 %0, 4, !dbg !1877
  %and.lobit = and i32 %and, 1, !dbg !1877
  ret i32 %and.lobit, !dbg !1878
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1879 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1881, metadata !DIExpression()), !dbg !1882
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1883
  %0 = load i32, i32* %_flags, align 8, !dbg !1883
  %and = lshr i32 %0, 5, !dbg !1883
  %and.lobit = and i32 %and, 1, !dbg !1883
  ret i32 %and.lobit, !dbg !1884
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1885 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1888, metadata !DIExpression()), !dbg !1889
  %__c.off = add i32 %__c, 128, !dbg !1890
  %0 = icmp ult i32 %__c.off, 384, !dbg !1890
  br i1 %0, label %cond.true, label %cond.end, !dbg !1890

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1891
  %1 = load i32*, i32** %call, align 8, !dbg !1892
  %idxprom = sext i32 %__c to i64, !dbg !1893
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1893
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1893
  br label %cond.end, !dbg !1894

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1894
  ret i32 %cond, !dbg !1895
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1896 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1898, metadata !DIExpression()), !dbg !1899
  %__c.off = add i32 %__c, 128, !dbg !1900
  %0 = icmp ult i32 %__c.off, 384, !dbg !1900
  br i1 %0, label %cond.true, label %cond.end, !dbg !1900

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1901
  %1 = load i32*, i32** %call, align 8, !dbg !1902
  %idxprom = sext i32 %__c to i64, !dbg !1903
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1903
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1903
  br label %cond.end, !dbg !1904

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1904
  ret i32 %cond, !dbg !1905
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1911, metadata !DIExpression()), !dbg !1912
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1913
  %conv = trunc i64 %call to i32, !dbg !1914
  ret i32 %conv, !dbg !1915
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1916 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1920, metadata !DIExpression()), !dbg !1921
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1922
  ret i64 %call, !dbg !1923
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1924 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1929, metadata !DIExpression()), !dbg !1930
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1931
  ret i64 %call, !dbg !1932
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1933 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1939, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1940, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1941, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1942, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1943, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1945, metadata !DIExpression()), !dbg !1949
  br label %while.cond, !dbg !1950

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1951
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1949
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1945, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1944, metadata !DIExpression()), !dbg !1949
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1952
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1950

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1953
  %div = lshr i64 %add, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %div, metadata !1946, metadata !DIExpression()), !dbg !1949
  %mul = mul i64 %div, %__size, !dbg !1956
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1957
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1947, metadata !DIExpression()), !dbg !1949
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %call, metadata !1948, metadata !DIExpression()), !dbg !1949
  %cmp1 = icmp slt i32 %call, 0, !dbg !1959
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1961

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1962
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1964

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1944, metadata !DIExpression()), !dbg !1949
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1949
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1949
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1945, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1944, metadata !DIExpression()), !dbg !1949
  br label %while.cond, !dbg !1950, !llvm.loop !1966

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1949
  ret i8* %retval.0, !dbg !1968
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1969 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1975, metadata !DIExpression()), !dbg !1976
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1977
  ret double %call, !dbg !1978
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1979 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1989, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %base, metadata !1990, metadata !DIExpression()), !dbg !1991
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1992
  ret i64 %call, !dbg !1993
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1994 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2000, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2001, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %base, metadata !2002, metadata !DIExpression()), !dbg !2003
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2004
  ret i64 %call, !dbg !2005
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2006 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2017, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2018, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %base, metadata !2019, metadata !DIExpression()), !dbg !2020
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2021
  ret i64 %call, !dbg !2022
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2023 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2027, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2028, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %base, metadata !2029, metadata !DIExpression()), !dbg !2030
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2031
  ret i64 %call, !dbg !2032
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2033 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2073, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2074, metadata !DIExpression()), !dbg !2075
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2076
  ret i32 %call, !dbg !2077
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2078 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2080, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2081, metadata !DIExpression()), !dbg !2082
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2083
  ret i32 %call, !dbg !2084
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2085 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2089, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2090, metadata !DIExpression()), !dbg !2091
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2092
  ret i32 %call, !dbg !2093
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2098, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2099, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2101, metadata !DIExpression()), !dbg !2102
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2103
  ret i32 %call, !dbg !2104
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2105 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2109, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2111, metadata !DIExpression()), !dbg !2112
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2111, metadata !DIExpression(DW_OP_deref)), !dbg !2112
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2113
  ret i32 %call, !dbg !2114
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2115 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2119, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2120, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2122, metadata !DIExpression()), !dbg !2123
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2122, metadata !DIExpression(DW_OP_deref)), !dbg !2123
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2124
  ret i32 %call, !dbg !2125
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2126 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2150, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2151, metadata !DIExpression()), !dbg !2152
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2153
  ret i32 %call, !dbg !2154
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2155 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2158, metadata !DIExpression()), !dbg !2159
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2160
  ret i32 %call, !dbg !2161
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2167, metadata !DIExpression()), !dbg !2168
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2169
  ret i32 %call, !dbg !2170
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2175, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2178, metadata !DIExpression()), !dbg !2179
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2180
  ret i32 %call, !dbg !2181
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @loop_optimizer_init(i32 %flags) local_unnamed_addr #4 !dbg !2182 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2186, metadata !DIExpression()), !dbg !2191
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2192
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2192
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2192
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2192
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2192

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2192
  br label %cond.end, !dbg !2192

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 32) #6, !dbg !2193
  %2 = bitcast i8* %call to %struct.loops*, !dbg !2193
  call void @llvm.dbg.value(metadata %struct.loops* %2, metadata !2187, metadata !DIExpression()), !dbg !2191
  %call1 = tail call i32 @flow_loops_find(%struct.loops* %2) #6, !dbg !2194
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2195
  %x_current_loops3 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 4, !dbg !2195
  %4 = bitcast %struct.loops** %x_current_loops3 to i8**, !dbg !2196
  store i8* %call, i8** %4, align 8, !dbg !2196
  %and = and i32 %flags, 16, !dbg !2197
  %tobool4 = icmp eq i32 %and, 0, !dbg !2197
  br i1 %tobool4, label %if.else, label %if.then, !dbg !2199

if.then:                                          ; preds = %cond.end
  %and5 = and i32 %flags, -25, !dbg !2200
  %cmp = icmp eq i32 %and5, 0, !dbg !2200
  br i1 %cmp, label %cond.end8, label %cond.true6, !dbg !2200

cond.true6:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2200
  br label %cond.end8, !dbg !2200

cond.end8:                                        ; preds = %if.then, %cond.true6
  tail call fastcc void @loops_state_set(i32 16) #7, !dbg !2202
  br label %if.end, !dbg !2203

if.else:                                          ; preds = %cond.end
  tail call void @disambiguate_loops_with_multiple_latches() #6, !dbg !2204
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end8
  %and10 = and i32 %flags, 1, !dbg !2205
  %tobool11 = icmp eq i32 %and10, 0, !dbg !2205
  br i1 %tobool11, label %if.end17, label %if.then12, !dbg !2206

if.then12:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !2188, metadata !DIExpression()), !dbg !2207
  %5 = trunc i32 %flags to i8, !dbg !2208
  %tobool14 = icmp slt i8 %5, 0, !dbg !2208
  %spec.select = select i1 %tobool14, i32 3, i32 1, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2188, metadata !DIExpression()), !dbg !2207
  tail call void @create_preheaders(i32 %spec.select) #6, !dbg !2211
  br label %if.end17, !dbg !2212

if.end17:                                         ; preds = %if.end, %if.then12
  %and18 = and i32 %flags, 2, !dbg !2213
  %tobool19 = icmp eq i32 %and18, 0, !dbg !2213
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2215

if.then20:                                        ; preds = %if.end17
  tail call void @force_single_succ_latches() #6, !dbg !2216
  br label %if.end21, !dbg !2216

if.end21:                                         ; preds = %if.end17, %if.then20
  %and22 = and i32 %flags, 4, !dbg !2217
  %tobool23 = icmp eq i32 %and22, 0, !dbg !2217
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !2219

if.then24:                                        ; preds = %if.end21
  %call25 = tail call zeroext i8 @mark_irreducible_loops() #6, !dbg !2220
  br label %if.end26, !dbg !2220

if.end26:                                         ; preds = %if.end21, %if.then24
  %and27 = and i32 %flags, 8, !dbg !2221
  %tobool28 = icmp eq i32 %and27, 0, !dbg !2221
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !2223

if.then29:                                        ; preds = %if.end26
  tail call void @record_loop_exits() #6, !dbg !2224
  br label %if.end30, !dbg !2224

if.end30:                                         ; preds = %if.end26, %if.then29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2225
  tail call void @flow_loops_dump(%struct._IO_FILE* %6, void (%struct.loop*, %struct._IO_FILE*, i32)* null, i32 1) #6, !dbg !2226
  ret void, !dbg !2227
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #1

declare dso_local i32 @flow_loops_find(%struct.loops*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_set(i32 %flags) unnamed_addr #0 !dbg !2228 {
entry:
  call void @llvm.dbg.value(metadata i32 16, metadata !2230, metadata !DIExpression()), !dbg !2231
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2232
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2232
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2232
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !2233
  %2 = load i32, i32* %state, align 8, !dbg !2234
  %or = or i32 %2, 16, !dbg !2234
  store i32 %or, i32* %state, align 8, !dbg !2234
  ret void, !dbg !2235
}

declare dso_local void @disambiguate_loops_with_multiple_latches() local_unnamed_addr #1

declare dso_local void @create_preheaders(i32) local_unnamed_addr #1

declare dso_local void @force_single_succ_latches() local_unnamed_addr #1

declare dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #1

declare dso_local void @record_loop_exits() local_unnamed_addr #1

declare dso_local void @flow_loops_dump(%struct._IO_FILE*, void (%struct.loop*, %struct._IO_FILE*, i32)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @loop_optimizer_finalize() local_unnamed_addr #4 !dbg !2236 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2248
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2249
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2250
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2250
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2250
  %cmp = icmp eq %struct.loops* %3, null, !dbg !2250
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2250

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2250
  br label %cond.end, !dbg !2250

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2240, metadata !DIExpression(DW_OP_deref)), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2251
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !2252
  br label %for.cond, !dbg !2252

for.cond:                                         ; preds = %for.body, %cond.end
  %4 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2246, metadata !DIExpression()), !dbg !2251
  %tobool = icmp eq %struct.loop* %4, null, !dbg !2252
  br i1 %tobool, label %for.end, label %for.body, !dbg !2252

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2246, metadata !DIExpression()), !dbg !2251
  call void @free_simple_loop_desc(%struct.loop* nonnull %4) #6, !dbg !2256
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2240, metadata !DIExpression(DW_OP_deref)), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2251
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !2254
  br label %for.cond, !dbg !2254, !llvm.loop !2258

for.end:                                          ; preds = %for.cond
  %call = call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !2260
  %tobool1 = icmp eq i8 %call, 0, !dbg !2260
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2262

if.then:                                          ; preds = %for.end
  call void @release_recorded_exits() #6, !dbg !2263
  br label %if.end, !dbg !2263

if.end:                                           ; preds = %for.end, %if.then
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2264
  %x_current_loops3 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 4, !dbg !2264
  %6 = load %struct.loops*, %struct.loops** %x_current_loops3, align 8, !dbg !2264
  call void @flow_loops_free(%struct.loops* %6) #6, !dbg !2265
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2266
  %x_current_loops5 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 4, !dbg !2266
  %8 = bitcast %struct.loops** %x_current_loops5 to i8**, !dbg !2266
  %9 = load i8*, i8** %8, align 8, !dbg !2266
  call void @ggc_free(i8* %9) #6, !dbg !2267
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2268
  %x_current_loops7 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 4, !dbg !2268
  store %struct.loops* null, %struct.loops** %x_current_loops7, align 8, !dbg !2269
  %cfg = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2270
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2270
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 0, !dbg !2270
  br label %for.cond9, !dbg !2270

for.cond9:                                        ; preds = %for.body11, %if.end
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.end ], [ %next_bb, %for.body11 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2272
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2247, metadata !DIExpression()), !dbg !2251
  %tobool10 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2270
  br i1 %tobool10, label %for.end13, label %for.body11, !dbg !2270

for.body11:                                       ; preds = %for.cond9
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 3, !dbg !2273
  store %struct.loop* null, %struct.loop** %loop_father, align 8, !dbg !2276
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2277
  br label %for.cond9, !dbg !2277, !llvm.loop !2278

for.end13:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2280
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2280
  ret void, !dbg !2280
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2281 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2287, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2288, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 0, metadata !2289, metadata !DIExpression()), !dbg !2293
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2294
  store i32 0, i32* %idx, align 8, !dbg !2295
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2296
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2296
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2296
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2296
  br i1 %tobool, label %if.then, label %if.end, !dbg !2298

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2299
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2301
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2302
  br label %cleanup, !dbg !2303

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !2304
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #7, !dbg !2304
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2305
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2306
  call void @llvm.dbg.value(metadata i32 1, metadata !2292, metadata !DIExpression()), !dbg !2293
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2307
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2307
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2307
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2307
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2307
  br label %while.cond79, !dbg !2310

while.cond79:                                     ; preds = %if.end, %if.end111
  %5 = phi %struct.loop* [ %4, %if.end ], [ %25, %if.end111 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %26, %if.end111 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %27, %if.end111 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %28, %if.end111 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %29, %if.end111 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %30, %if.end111 ]
  %11 = phi %struct.loop* [ %4, %if.end ], [ %31, %if.end111 ]
  %12 = phi %struct.loop* [ %4, %if.end ], [ %32, %if.end111 ], !dbg !2312
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2290, metadata !DIExpression()), !dbg !2293
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !2315
  %13 = load i32, i32* %num81, align 8, !dbg !2315
  %cmp82 = icmp slt i32 %13, 1, !dbg !2316
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2317

if.then83:                                        ; preds = %while.cond79
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2318
  %tobool85 = icmp eq %struct.VEC_int_heap* %14, null, !dbg !2318
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2318

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %14, i64 0, i32 0, !dbg !2318
  br label %cond.end90, !dbg !2318

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2318
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !2290, metadata !DIExpression()), !dbg !2293
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 0, !dbg !2318
  %15 = load i32, i32* %num92, align 8, !dbg !2318
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %15) #7, !dbg !2318
  br label %if.end94, !dbg !2318

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !2290, metadata !DIExpression()), !dbg !2293
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !2319
  %16 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2319
  %cmp96 = icmp eq %struct.loop* %16, null, !dbg !2321
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2322

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2323

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2290, metadata !DIExpression()), !dbg !2293
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2325
  %17 = load %struct.loop*, %struct.loop** %inner98, align 8, !dbg !2325
  br label %if.end111, !dbg !2326

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %18 = phi %struct.loop* [ %5, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %19 = phi %struct.loop* [ %6, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %20 = phi %struct.loop* [ %7, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %21 = phi %struct.loop* [ %8, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2327
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2290, metadata !DIExpression()), !dbg !2293
  %cmp101 = icmp eq %struct.loop* %21, null, !dbg !2328
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2329

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !2290, metadata !DIExpression()), !dbg !2293
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %20, i64 0, i32 9, !dbg !2330
  %22 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2330
  %cmp103 = icmp eq %struct.loop* %22, null, !dbg !2331
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %23 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2332
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !2290, metadata !DIExpression()), !dbg !2293
  br i1 %23, label %while.body104, label %while.end106, !dbg !2323

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #7, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2290, metadata !DIExpression()), !dbg !2293
  br label %while.cond100, !dbg !2323, !llvm.loop !2334

while.end106:                                     ; preds = %land.end
  %.lcssa4 = phi %struct.loop* [ %18, %land.end ]
  %.lcssa = phi %struct.loop* [ %19, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2336
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2338

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa4, metadata !2290, metadata !DIExpression()), !dbg !2293
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa4, i64 0, i32 9, !dbg !2339
  %24 = load %struct.loop*, %struct.loop** %next110, align 8, !dbg !2339
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
  br label %while.cond79, !dbg !2310, !llvm.loop !2340

if.end114.loopexit:                               ; preds = %while.end106
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #7, !dbg !2342
  br label %cleanup, !dbg !2343

cleanup:                                          ; preds = %if.end114.loopexit, %if.then
  ret void, !dbg !2343
}

declare dso_local void @free_simple_loop_desc(%struct.loop*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2344 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2349, metadata !DIExpression()), !dbg !2351
  %0 = bitcast i32* %anum to i8*, !dbg !2352
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2352
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2351
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2351
  br label %while.cond, !dbg !2353

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2354
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2354
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2354

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2354
  br label %cond.end, !dbg !2354

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2354
  %2 = load i32, i32* %idx, align 8, !dbg !2354
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2350, metadata !DIExpression(DW_OP_deref)), !dbg !2351
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #7, !dbg !2354
  %tobool2 = icmp eq i32 %call, 0, !dbg !2353
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2353

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2355
  %inc = add i32 %3, 1, !dbg !2355
  store i32 %inc, i32* %idx, align 8, !dbg !2355
  %4 = load i32, i32* %anum, align 4, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %4, metadata !2350, metadata !DIExpression()), !dbg !2351
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #7, !dbg !2358
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2359
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2360
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2362, !llvm.loop !2363

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #7, !dbg !2365
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2366
  br label %cleanup, !dbg !2367

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2367

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2367
  ret void, !dbg !2367
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 %flags) unnamed_addr #0 !dbg !2368 {
entry:
  call void @llvm.dbg.value(metadata i32 8, metadata !2372, metadata !DIExpression()), !dbg !2373
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2374
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2374
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2374
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !2375
  %2 = load i32, i32* %state, align 8, !dbg !2375
  %and = lshr i32 %2, 3, !dbg !2376
  %3 = trunc i32 %and to i8, !dbg !2376
  %4 = and i8 %3, 1, !dbg !2376
  ret i8 %4, !dbg !2377
}

declare dso_local void @release_recorded_exits() local_unnamed_addr #1

declare dso_local void @flow_loops_free(%struct.loops*) local_unnamed_addr #1

declare dso_local void @ggc_free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_loop2() #4 !dbg !2378 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2379
  %cmp = icmp sgt i32 %0, 0, !dbg !2380
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2381

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* @flag_move_loop_invariants, align 4, !dbg !2382
  %2 = load i32, i32* @flag_unswitch_loops, align 4, !dbg !2383
  %3 = or i32 %1, %2, !dbg !2384
  %4 = load i32, i32* @flag_peel_loops, align 4, !dbg !2385
  %5 = or i32 %3, %4, !dbg !2384
  %6 = icmp eq i32 %5, 0, !dbg !2384
  br i1 %6, label %lor.rhs, label %land.end, !dbg !2384

lor.rhs:                                          ; preds = %land.rhs
  %7 = load i32, i32* @flag_unroll_loops, align 4, !dbg !2386
  %tobool4 = icmp ne i32 %7, 0, !dbg !2387
  %phitmp = zext i1 %tobool4 to i8, !dbg !2387
  br label %land.end, !dbg !2387

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %8 = phi i8 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i8 %8, !dbg !2388
}

; Function Attrs: nounwind uwtable
define internal i32 @rtl_loop_init() #4 !dbg !2389 {
entry:
  %call = tail call i32 @current_ir_type() #6, !dbg !2390
  %cmp = icmp eq i32 %call, 2, !dbg !2390
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2390

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2390
  br label %cond.end, !dbg !2390

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2391
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2391
  br i1 %tobool, label %if.end, label %if.then, !dbg !2393

if.then:                                          ; preds = %cond.end
  %1 = load i32, i32* @dump_flags, align 4, !dbg !2394
  tail call void @dump_flow_info(%struct._IO_FILE* nonnull %0, i32 %1) #6, !dbg !2395
  br label %if.end, !dbg !2395

if.end:                                           ; preds = %cond.end, %if.then
  tail call void @loop_optimizer_init(i32 7) #7, !dbg !2396
  ret i32 0, !dbg !2397
}

; Function Attrs: nounwind uwtable
define internal i32 @rtl_loop_done() #4 !dbg !2398 {
entry:
  tail call void @loop_optimizer_finalize() #7, !dbg !2399
  tail call void @free_dominance_info(i32 1) #6, !dbg !2400
  %call = tail call zeroext i8 @cleanup_cfg(i32 0) #6, !dbg !2401
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2402
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2402
  br i1 %tobool, label %if.end, label %if.then, !dbg !2404

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !2405
  tail call void @dump_flow_info(%struct._IO_FILE* nonnull %0, i32 %1) #6, !dbg !2406
  br label %if.end, !dbg !2406

if.end:                                           ; preds = %entry, %if.then
  ret i32 0, !dbg !2407
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_move_loop_invariants() #4 !dbg !2408 {
entry:
  %0 = load i32, i32* @flag_move_loop_invariants, align 4, !dbg !2409
  %conv = trunc i32 %0 to i8, !dbg !2409
  ret i8 %conv, !dbg !2410
}

; Function Attrs: nounwind uwtable
define internal i32 @rtl_move_loop_invariants() #4 !dbg !2411 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !2412
  %cmp = icmp ugt i32 %call, 1, !dbg !2414
  br i1 %cmp, label %if.then, label %if.end, !dbg !2415

if.then:                                          ; preds = %entry
  tail call void @move_loop_invariants() #6, !dbg !2416
  br label %if.end, !dbg !2416

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !2417
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_unswitch() #4 !dbg !2418 {
entry:
  %0 = load i32, i32* @flag_unswitch_loops, align 4, !dbg !2419
  %conv = trunc i32 %0 to i8, !dbg !2419
  ret i8 %conv, !dbg !2420
}

; Function Attrs: nounwind uwtable
define internal i32 @rtl_unswitch() #4 !dbg !2421 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !2422
  %cmp = icmp ugt i32 %call, 1, !dbg !2424
  br i1 %cmp, label %if.then, label %if.end, !dbg !2425

if.then:                                          ; preds = %entry
  tail call void @unswitch_loops() #6, !dbg !2426
  br label %if.end, !dbg !2426

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !2427
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_unroll_and_peel_loops() #4 !dbg !2428 {
entry:
  %0 = load i32, i32* @flag_peel_loops, align 4, !dbg !2429
  %1 = load i32, i32* @flag_unroll_loops, align 4, !dbg !2430
  %2 = or i32 %0, %1, !dbg !2431
  %3 = icmp eq i32 %2, 0, !dbg !2431
  br i1 %3, label %lor.rhs, label %lor.end, !dbg !2431

lor.rhs:                                          ; preds = %entry
  %4 = load i32, i32* @flag_unroll_all_loops, align 4, !dbg !2432
  %tobool2 = icmp ne i32 %4, 0, !dbg !2433
  %phitmp = zext i1 %tobool2 to i8, !dbg !2433
  br label %lor.end, !dbg !2433

lor.end:                                          ; preds = %entry, %lor.rhs
  %5 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %5, !dbg !2434
}

; Function Attrs: nounwind uwtable
define internal i32 @rtl_unroll_and_peel_loops() #4 !dbg !2435 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !2440
  %cmp = icmp ugt i32 %call, 1, !dbg !2441
  br i1 %cmp, label %if.then, label %if.end13, !dbg !2442

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2437, metadata !DIExpression()), !dbg !2443
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2444
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2444
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2446

if.then1:                                         ; preds = %if.then
  tail call void @df_dump(%struct._IO_FILE* nonnull %0) #6, !dbg !2447
  br label %if.end, !dbg !2447

if.end:                                           ; preds = %if.then, %if.then1
  %1 = load i32, i32* @flag_peel_loops, align 4, !dbg !2448
  %tobool2 = icmp ne i32 %1, 0, !dbg !2448
  %spec.select = zext i1 %tobool2 to i32, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2437, metadata !DIExpression()), !dbg !2443
  %2 = load i32, i32* @flag_unroll_loops, align 4, !dbg !2451
  %tobool5 = icmp eq i32 %2, 0, !dbg !2451
  %or7 = or i32 %spec.select, 2, !dbg !2453
  %flags.1 = select i1 %tobool5, i32 %spec.select, i32 %or7, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !2437, metadata !DIExpression()), !dbg !2443
  %3 = load i32, i32* @flag_unroll_all_loops, align 4, !dbg !2454
  %tobool9 = icmp eq i32 %3, 0, !dbg !2454
  %or11 = or i32 %flags.1, 4, !dbg !2456
  %spec.select1 = select i1 %tobool9, i32 %flags.1, i32 %or11, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2437, metadata !DIExpression()), !dbg !2443
  tail call void @unroll_and_peel_loops(i32 %spec.select1) #6, !dbg !2458
  br label %if.end13, !dbg !2459

if.end13:                                         ; preds = %if.end, %entry
  ret i32 0, !dbg !2460
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_doloop() #4 !dbg !2461 {
entry:
  ret i8 0, !dbg !2462
}

; Function Attrs: nounwind uwtable
define internal i32 @rtl_doloop() #4 !dbg !2463 {
entry:
  ret i32 0, !dbg !2464
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2465 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2469, metadata !DIExpression()), !dbg !2470
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2471
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2471
  ret %struct.VEC_int_heap* %0, !dbg !2471
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2472 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2473
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2473
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2473
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2473
  br i1 %tobool, label %return, label %if.end, !dbg !2475

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2476
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2476
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2476
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2476

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2476
  br label %cond.end, !dbg !2476

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2476
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !2476
  br label %return, !dbg !2477

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2478
  ret i32 %retval.0, !dbg !2479
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !2480 {
entry:
  unreachable, !dbg !2489
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !2490 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2497, metadata !DIExpression()), !dbg !2499
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2500
  %0 = load i32, i32* %num1, align 4, !dbg !2500
  %inc = add i32 %0, 1, !dbg !2500
  store i32 %inc, i32* %num1, align 4, !dbg !2500
  %idxprom = zext i32 %0 to i64, !dbg !2500
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2500
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2498, metadata !DIExpression()), !dbg !2499
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !2500
  ret i32* %arrayidx, !dbg !2500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2501 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2507, metadata !DIExpression()), !dbg !2509
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2510
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2510
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2510
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2510

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2510
  br label %cond.end, !dbg !2510

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2510
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !2510
  call void @llvm.dbg.value(metadata i32 %call, metadata !2508, metadata !DIExpression()), !dbg !2509
  %cmp = icmp eq i32 %call, 0, !dbg !2511
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2513

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2514
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2514
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2514

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2514
  br label %cond.end8, !dbg !2514

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2514
  %sub = add i32 %call, -1, !dbg !2514
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #7, !dbg !2514
  br label %cleanup, !dbg !2515

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2509
  ret %struct.loop* %retval.0, !dbg !2516
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !2517 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2521, metadata !DIExpression()), !dbg !2522
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2523
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2523

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2523
  %0 = load i32, i32* %num, align 8, !dbg !2523
  br label %cond.end, !dbg !2523

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2523
  ret i32 %cond, !dbg !2523
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2524 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2529, metadata !DIExpression()), !dbg !2530
  br label %land.end, !dbg !2531

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2531
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2531
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2531
  ret %struct.loop* %0, !dbg !2531
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !2532 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !2540, metadata !DIExpression()), !dbg !2541
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !2542
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2542

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2542
  %0 = load i32, i32* %num, align 4, !dbg !2542
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2542
  br i1 %cmp, label %if.then, label %if.else, !dbg !2544

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2545
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2545
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2545
  br label %return, !dbg !2545

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2547

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !2549
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2549
  store i32 %storemerge, i32* %ptr, align 4, !dbg !2549
  ret i32 %retval.0, !dbg !2544
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !2550 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !2554, metadata !DIExpression()), !dbg !2555
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2556
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2556
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2556
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2556
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2556
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2556
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2556

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2556
  br label %cond.end, !dbg !2556

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2556
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #7, !dbg !2556
  ret %struct.loop* %call, !dbg !2557
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !2558 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !2563, metadata !DIExpression()), !dbg !2564
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !2565
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !2565
  br i1 %tobool, label %if.end, label %if.then, !dbg !2567

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !2567
  tail call void @free(i8* nonnull %1) #6, !dbg !2565
  br label %if.end, !dbg !2565

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !2567
  ret void, !dbg !2567
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i32 @current_ir_type() local_unnamed_addr #1

declare dso_local void @dump_flow_info(%struct._IO_FILE*, i32) local_unnamed_addr #1

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #1

declare dso_local zeroext i8 @cleanup_cfg(i32) local_unnamed_addr #1

declare dso_local void @move_loop_invariants() local_unnamed_addr #1

declare dso_local void @unswitch_loops() local_unnamed_addr #1

declare dso_local void @df_dump(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @unroll_and_peel_loops(i32) local_unnamed_addr #1

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
!llvm.module.flags = !{!1732, !1733, !1734}
!llvm.ident = !{!1735}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_loop2", scope: !2, file: !3, line: 154, type: !1696, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573, globals: !1693, nameTableKind: None)
!3 = !DIFile(filename: "loop-init.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !386, !390, !397}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !378, line: 31, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385}
!380 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !378, line: 91, baseType: !7, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !391, line: 104, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396}
!393 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 74, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!400 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!572 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!573 = !{!574, !575, !576, !577, !580, !581, !583, !1680, !600}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!576 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !378, line: 187, size: 256, elements: !585)
!585 = !{!586, !587, !1678, !1679}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !584, file: !378, line: 189, baseType: !576, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !584, file: !378, line: 192, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !378, line: 87, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !378, line: 87, size: 128, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !590, file: !378, line: 87, baseType: !593, size: 128)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !378, line: 85, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !378, line: 85, size: 128, elements: !595)
!595 = !{!596, !597, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !594, file: !378, line: 85, baseType: !7, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !594, file: !378, line: 85, baseType: !7, size: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !594, file: !378, line: 85, baseType: !599, size: 64, offset: 64)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 64, elements: !673)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !378, line: 84, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !378, line: 100, size: 1216, elements: !603)
!603 = !{!604, !605, !606, !1642, !1643, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1668, !1676, !1677}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !602, file: !378, line: 102, baseType: !576, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !602, file: !378, line: 105, baseType: !7, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !602, file: !378, line: 108, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !609)
!609 = !{!610, !1609, !1610, !1611, !1612, !1616, !1617, !1618, !1636, !1637, !1638, !1639, !1640, !1641}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !608, file: !135, line: 219, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !613, file: !135, line: 151, baseType: !616, size: 128)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !617, file: !135, line: 150, baseType: !7, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !617, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !617, file: !135, line: 150, baseType: !622, size: 64, offset: 64)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 64, elements: !673)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !624, line: 108, baseType: !625)
!624 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !627)
!627 = !{!628, !629, !630, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !626, file: !135, line: 124, baseType: !607, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !626, file: !135, line: 125, baseType: !607, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !626, file: !135, line: 131, baseType: !631, size: 64, offset: 128)
!631 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !632)
!632 = !{!633, !637}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !631, file: !135, line: 129, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !624, line: 66, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !624, line: 65, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !631, file: !135, line: 130, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !624, line: 50, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !641, line: 240, size: 384, elements: !642)
!641 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !640, file: !641, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !640, file: !641, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !640, file: !641, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !640, file: !641, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !640, file: !641, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !640, file: !641, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !640, file: !641, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !640, file: !641, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !640, file: !641, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !640, file: !641, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !640, file: !641, line: 321, baseType: !654, size: 320, offset: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !641, line: 315, size: 320, elements: !655)
!655 = !{!656, !1568, !1570, !1599, !1600}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !654, file: !641, line: 316, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 64, elements: !673)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !641, line: 183, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !641, line: 166, size: 64, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !675, !676, !688, !691, !753, !1546, !1547, !1558, !1565}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !659, file: !641, line: 168, baseType: !576, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !659, file: !641, line: 169, baseType: !7, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !659, file: !641, line: 170, baseType: !581, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !659, file: !641, line: 171, baseType: !638, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !659, file: !641, line: 172, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !624, line: 53, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !641, line: 359, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !668, file: !641, line: 360, baseType: !576, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !668, file: !641, line: 361, baseType: !672, size: 64, offset: 64)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 64, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 1)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !659, file: !641, line: 173, baseType: !5, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !659, file: !641, line: 174, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !641, line: 133, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 115, size: 32, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !678, file: !641, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !678, file: !641, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !678, file: !641, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !678, file: !641, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !678, file: !641, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !678, file: !641, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !678, file: !641, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !678, file: !641, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !659, file: !641, line: 175, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !641, line: 175, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !659, file: !641, line: 176, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !694, line: 75, size: 256, elements: !695)
!694 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!695 = !{!696, !711, !712, !713}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !693, file: !694, line: 76, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !694, line: 68, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !694, line: 63, size: 320, elements: !700)
!700 = !{!701, !703, !704, !705}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !694, line: 64, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !699, file: !694, line: 65, baseType: !702, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !699, file: !694, line: 66, baseType: !7, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !699, file: !694, line: 67, baseType: !706, size: 128, offset: 192)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 128, elements: !709)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !694, line: 29, baseType: !708)
!708 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!709 = !{!710}
!710 = !DISubrange(count: 2)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !693, file: !694, line: 77, baseType: !697, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !693, file: !694, line: 78, baseType: !7, size: 32, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !693, file: !694, line: 79, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !694, line: 49, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !694, line: 45, size: 832, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !716, file: !694, line: 46, baseType: !702, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !716, file: !694, line: 47, baseType: !692, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !716, file: !694, line: 48, baseType: !721, size: 704, offset: 128)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !722, line: 164, size: 704, elements: !723)
!722 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!723 = !{!724, !726, !736, !737, !738, !739, !740, !741, !745, !749, !750, !751, !752}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !721, file: !722, line: 166, baseType: !725, size: 64)
!725 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !721, file: !722, line: 167, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !722, line: 157, size: 192, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !728, file: !722, line: 159, baseType: !578, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !728, file: !722, line: 160, baseType: !727, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !728, file: !722, line: 161, baseType: !733, size: 32, offset: 128)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 32, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 4)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !721, file: !722, line: 168, baseType: !578, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !721, file: !722, line: 169, baseType: !578, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !721, file: !722, line: 170, baseType: !578, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !721, file: !722, line: 171, baseType: !725, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !721, file: !722, line: 172, baseType: !576, size: 32, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !721, file: !722, line: 176, baseType: !742, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!727, !580, !725}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !721, file: !722, line: 177, baseType: !746, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !580, !727}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !721, file: !722, line: 178, baseType: !580, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !721, file: !722, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !721, file: !722, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !721, file: !722, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !659, file: !641, line: 177, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !624, line: 56, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !757)
!757 = !{!758, !791, !797, !808, !827, !838, !843, !850, !856, !869, !881, !919, !924, !952, !960, !961, !966, !975, !981, !986, !990, !994, !1170, !1219, !1225, !1232, !1239, !1265, !1290, !1307, !1319, !1341, !1356, !1528}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !756, file: !151, line: 3372, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !759, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !759, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !759, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !759, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !759, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !759, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !759, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !759, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !759, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !759, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !759, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !759, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !759, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !759, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !759, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !759, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !759, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !759, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !759, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !759, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !759, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !759, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !759, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !759, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !759, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !759, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !759, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !759, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !759, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !759, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !756, file: !151, line: 3373, baseType: !792, size: 192)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !793)
!793 = !{!794, !795, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !792, file: !151, line: 403, baseType: !759, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !792, file: !151, line: 404, baseType: !754, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !151, line: 405, baseType: !754, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !756, file: !151, line: 3374, baseType: !798, size: 320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !798, file: !151, line: 1385, baseType: !792, size: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !798, file: !151, line: 1386, baseType: !802, size: 128, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !803, line: 58, baseType: !804)
!803 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !803, line: 54, size: 128, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !804, file: !803, line: 56, baseType: !708, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !804, file: !803, line: 57, baseType: !725, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !756, file: !151, line: 3375, baseType: !809, size: 256)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !809, file: !151, line: 1398, baseType: !792, size: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !809, file: !151, line: 1399, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !815, line: 52, size: 256, elements: !816)
!815 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!816 = !{!817, !818, !819, !820, !821, !822, !823}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !814, file: !815, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !814, file: !815, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !814, file: !815, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !814, file: !815, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !814, file: !815, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !814, file: !815, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !814, file: !815, line: 62, baseType: !824, size: 192, offset: 64)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 192, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 3)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !756, file: !151, line: 3376, baseType: !828, size: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !828, file: !151, line: 1409, baseType: !792, size: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !828, file: !151, line: 1410, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !834, line: 27, size: 192, elements: !835)
!834 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !833, file: !834, line: 29, baseType: !802, size: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !833, file: !834, line: 30, baseType: !5, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !756, file: !151, line: 3377, baseType: !839, size: 256)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !839, file: !151, line: 1438, baseType: !792, size: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !839, file: !151, line: 1439, baseType: !754, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !756, file: !151, line: 3378, baseType: !844, size: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !845)
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !844, file: !151, line: 1419, baseType: !792, size: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !844, file: !151, line: 1420, baseType: !576, size: 32, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !844, file: !151, line: 1421, baseType: !849, size: 8, offset: 224)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 8, elements: !673)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !756, file: !151, line: 3379, baseType: !851, size: 320)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !851, file: !151, line: 1429, baseType: !792, size: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !851, file: !151, line: 1430, baseType: !754, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !851, file: !151, line: 1431, baseType: !754, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !756, file: !151, line: 3380, baseType: !857, size: 320)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !857, file: !151, line: 1461, baseType: !792, size: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !857, file: !151, line: 1462, baseType: !861, size: 128, offset: 192)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !862, line: 31, size: 128, elements: !863)
!862 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!863 = !{!864, !867, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !861, file: !862, line: 32, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !861, file: !862, line: 33, baseType: !7, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !861, file: !862, line: 34, baseType: !7, size: 32, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !756, file: !151, line: 3381, baseType: !870, size: 384)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !871)
!871 = !{!872, !873, !878, !879, !880}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !870, file: !151, line: 2508, baseType: !792, size: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !870, file: !151, line: 2509, baseType: !874, size: 32, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !875, line: 58, baseType: !876)
!875 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !877, line: 44, baseType: !7)
!877 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !870, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !870, file: !151, line: 2511, baseType: !754, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !870, file: !151, line: 2512, baseType: !754, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !756, file: !151, line: 3382, baseType: !882, size: 896)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !882, file: !151, line: 2653, baseType: !870, size: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !882, file: !151, line: 2654, baseType: !754, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !882, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !882, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !882, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !882, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !882, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !882, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !882, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !882, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !882, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !882, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !882, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !882, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !882, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !882, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !882, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !882, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !882, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !882, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !882, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !882, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !882, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !882, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !882, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !882, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !882, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !882, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !882, file: !151, line: 2705, baseType: !754, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !882, file: !151, line: 2706, baseType: !754, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !882, file: !151, line: 2707, baseType: !754, size: 64, offset: 704)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !882, file: !151, line: 2708, baseType: !754, size: 64, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !882, file: !151, line: 2711, baseType: !917, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !756, file: !151, line: 3383, baseType: !920, size: 960)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !920, file: !151, line: 2757, baseType: !882, size: 896)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !920, file: !151, line: 2758, baseType: !638, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !756, file: !151, line: 3384, baseType: !925, size: 1472)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !926)
!926 = !{!927, !948, !949, !950, !951}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !925, file: !151, line: 3115, baseType: !928, size: 1216)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !928, file: !151, line: 2985, baseType: !920, size: 960)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !928, file: !151, line: 2986, baseType: !754, size: 64, offset: 960)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !928, file: !151, line: 2987, baseType: !754, size: 64, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !928, file: !151, line: 2988, baseType: !754, size: 64, offset: 1088)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !928, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !928, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !928, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !928, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !928, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !928, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !928, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !928, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !928, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !928, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !928, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !928, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !928, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !928, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !925, file: !151, line: 3117, baseType: !754, size: 64, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !925, file: !151, line: 3119, baseType: !754, size: 64, offset: 1280)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !925, file: !151, line: 3121, baseType: !754, size: 64, offset: 1344)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !925, file: !151, line: 3123, baseType: !754, size: 64, offset: 1408)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !756, file: !151, line: 3385, baseType: !953, size: 1088)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !953, file: !151, line: 2875, baseType: !920, size: 960)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !953, file: !151, line: 2876, baseType: !638, size: 64, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !953, file: !151, line: 2877, baseType: !958, size: 64, offset: 1024)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !756, file: !151, line: 3386, baseType: !928, size: 1216)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !756, file: !151, line: 3387, baseType: !962, size: 1280)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !151, line: 3094, baseType: !928, size: 1216)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !962, file: !151, line: 3095, baseType: !958, size: 64, offset: 1216)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !756, file: !151, line: 3388, baseType: !967, size: 1216)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !967, file: !151, line: 2825, baseType: !882, size: 896)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !967, file: !151, line: 2827, baseType: !754, size: 64, offset: 896)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !967, file: !151, line: 2828, baseType: !754, size: 64, offset: 960)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !967, file: !151, line: 2829, baseType: !754, size: 64, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !967, file: !151, line: 2830, baseType: !754, size: 64, offset: 1088)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !967, file: !151, line: 2831, baseType: !754, size: 64, offset: 1152)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !756, file: !151, line: 3389, baseType: !976, size: 1024)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !976, file: !151, line: 2851, baseType: !920, size: 960)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !976, file: !151, line: 2852, baseType: !576, size: 32, offset: 960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !976, file: !151, line: 2853, baseType: !576, size: 32, offset: 992)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !756, file: !151, line: 3390, baseType: !982, size: 1024)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !982, file: !151, line: 2858, baseType: !920, size: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !982, file: !151, line: 2859, baseType: !958, size: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !756, file: !151, line: 3391, baseType: !987, size: 960)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !987, file: !151, line: 2863, baseType: !920, size: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !756, file: !151, line: 3392, baseType: !991, size: 1472)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !991, file: !151, line: 3305, baseType: !925, size: 1472)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !756, file: !151, line: 3393, baseType: !995, size: 1792)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !996)
!996 = !{!997, !998, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !995, file: !151, line: 3249, baseType: !925, size: 1472)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !995, file: !151, line: 3251, baseType: !999, size: 64, offset: 1472)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1001, line: 463, size: 1152, elements: !1002)
!1001 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1002 = !{!1003, !1006, !1037, !1038, !1041, !1042, !1094, !1095, !1096, !1097, !1098, !1122, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1000, file: !1001, line: 464, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1001, line: 464, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1000, file: !1001, line: 467, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1009)
!1009 = !{!1010, !1012, !1013, !1026, !1027, !1028, !1029, !1030, !1031, !1033, !1035, !1036}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1008, file: !135, line: 377, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !624, line: 111, baseType: !607)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1008, file: !135, line: 378, baseType: !1011, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1008, file: !135, line: 381, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1016, file: !135, line: 282, baseType: !1019, size: 128)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1020, file: !135, line: 281, baseType: !7, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1020, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1020, file: !135, line: 281, baseType: !1025, size: 64, offset: 64)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 64, elements: !673)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1008, file: !135, line: 384, baseType: !576, size: 32, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1008, file: !135, line: 387, baseType: !576, size: 32, offset: 224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1008, file: !135, line: 390, baseType: !576, size: 32, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1008, file: !135, line: 394, baseType: !1014, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1008, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1008, file: !135, line: 399, baseType: !1032, size: 64, offset: 416)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !709)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1008, file: !135, line: 402, baseType: !1034, size: 64, offset: 480)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !709)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1008, file: !135, line: 406, baseType: !576, size: 32, offset: 544)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1008, file: !135, line: 409, baseType: !576, size: 32, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1000, file: !1001, line: 470, baseType: !635, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1000, file: !1001, line: 473, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1001, line: 166, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1000, file: !1001, line: 476, baseType: !583, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1000, file: !1001, line: 479, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1044, line: 144, baseType: !1045)
!1044 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1044, line: 100, size: 896, elements: !1047)
!1047 = !{!1048, !1056, !1061, !1066, !1068, !1071, !1072, !1073, !1074, !1075, !1080, !1082, !1083, !1088, !1093}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1046, file: !1044, line: 102, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1044, line: 52, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1044, line: 47, baseType: !7)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1046, file: !1044, line: 105, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1044, line: 59, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!576, !1054, !1054}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1046, file: !1044, line: 108, baseType: !1062, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1044, line: 63, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !580}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1046, file: !1044, line: 111, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1046, file: !1044, line: 114, baseType: !1069, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1070, line: 46, baseType: !708)
!1070 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1046, file: !1044, line: 117, baseType: !1069, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1046, file: !1044, line: 120, baseType: !1069, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1046, file: !1044, line: 124, baseType: !7, size: 32, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1046, file: !1044, line: 128, baseType: !7, size: 32, offset: 480)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1046, file: !1044, line: 131, baseType: !1076, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1044, line: 75, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!580, !1069, !1069}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1046, file: !1044, line: 132, baseType: !1081, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1044, line: 78, baseType: !1063)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1046, file: !1044, line: 135, baseType: !580, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1046, file: !1044, line: 136, baseType: !1084, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1044, line: 82, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!580, !580, !1069, !1069}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1046, file: !1044, line: 137, baseType: !1089, size: 64, offset: 768)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1044, line: 83, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !580, !580}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1046, file: !1044, line: 141, baseType: !7, size: 32, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1000, file: !1001, line: 484, baseType: !754, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1000, file: !1001, line: 488, baseType: !754, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1000, file: !1001, line: 493, baseType: !754, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1000, file: !1001, line: 496, baseType: !754, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1000, file: !1001, line: 501, baseType: !1099, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1101)
!1101 = !{!1102, !1105, !1106, !1107, !1108, !1110, !1111, !1116, !1117, !1118, !1119, !1120, !1121}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1100, file: !146, line: 2356, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1100, file: !146, line: 2357, baseType: !581, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1100, file: !146, line: 2358, baseType: !576, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1100, file: !146, line: 2359, baseType: !576, size: 32, offset: 160)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1100, file: !146, line: 2360, baseType: !1109, size: 128, offset: 192)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 128, elements: !734)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1100, file: !146, line: 2364, baseType: !576, size: 32, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1100, file: !146, line: 2367, baseType: !1112, size: 128, offset: 384)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1112, file: !146, line: 2351, baseType: !638, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1112, file: !146, line: 2352, baseType: !725, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1100, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1100, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1100, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1100, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1100, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1100, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1000, file: !1001, line: 504, baseType: !1123, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1001, line: 504, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1000, file: !1001, line: 507, baseType: !1043, size: 64, offset: 768)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1000, file: !1001, line: 510, baseType: !576, size: 32, offset: 832)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1000, file: !1001, line: 513, baseType: !576, size: 32, offset: 864)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1000, file: !1001, line: 516, baseType: !874, size: 32, offset: 896)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1000, file: !1001, line: 519, baseType: !874, size: 32, offset: 928)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1000, file: !1001, line: 522, baseType: !7, size: 32, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1000, file: !1001, line: 523, baseType: !7, size: 32, offset: 992)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1000, file: !1001, line: 528, baseType: !581, size: 64, offset: 1024)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1000, file: !1001, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1000, file: !1001, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1000, file: !1001, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1000, file: !1001, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1000, file: !1001, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1000, file: !1001, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1000, file: !1001, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1000, file: !1001, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1000, file: !1001, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1000, file: !1001, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1000, file: !1001, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1000, file: !1001, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1000, file: !1001, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1000, file: !1001, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1000, file: !1001, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1000, file: !1001, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !995, file: !151, line: 3254, baseType: !754, size: 64, offset: 1536)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !995, file: !151, line: 3257, baseType: !754, size: 64, offset: 1600)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !995, file: !151, line: 3258, baseType: !754, size: 64, offset: 1664)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !995, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !995, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !995, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !995, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !995, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !995, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !995, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !995, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !995, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !995, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !995, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !995, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !995, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !995, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !995, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !995, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !995, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !995, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !151, line: 3394, baseType: !1171, size: 1344)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1198, !1199, !1200, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1171, file: !151, line: 2280, baseType: !792, size: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1171, file: !151, line: 2281, baseType: !754, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1171, file: !151, line: 2282, baseType: !754, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1171, file: !151, line: 2283, baseType: !754, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1171, file: !151, line: 2284, baseType: !754, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1171, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1171, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1171, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1171, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1171, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1171, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1171, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1171, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1171, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1171, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1171, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1171, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1171, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1171, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1171, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1171, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1171, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1171, file: !151, line: 2306, baseType: !1196, size: 32, offset: 544)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1197, line: 31, baseType: !576)
!1197 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1171, file: !151, line: 2307, baseType: !754, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1171, file: !151, line: 2308, baseType: !754, size: 64, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1171, file: !151, line: 2314, baseType: !1201, size: 64, offset: 704)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1201, file: !151, line: 2310, baseType: !576, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1201, file: !151, line: 2311, baseType: !581, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1201, file: !151, line: 2312, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1171, file: !151, line: 2315, baseType: !754, size: 64, offset: 768)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1171, file: !151, line: 2316, baseType: !754, size: 64, offset: 832)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1171, file: !151, line: 2317, baseType: !754, size: 64, offset: 896)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1171, file: !151, line: 2318, baseType: !754, size: 64, offset: 960)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1171, file: !151, line: 2319, baseType: !754, size: 64, offset: 1024)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1171, file: !151, line: 2320, baseType: !754, size: 64, offset: 1088)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1171, file: !151, line: 2321, baseType: !754, size: 64, offset: 1152)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1171, file: !151, line: 2322, baseType: !754, size: 64, offset: 1216)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1171, file: !151, line: 2324, baseType: !1217, size: 64, offset: 1280)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !756, file: !151, line: 3395, baseType: !1220, size: 320)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1220, file: !151, line: 1470, baseType: !792, size: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1220, file: !151, line: 1471, baseType: !754, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1220, file: !151, line: 1472, baseType: !754, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !756, file: !151, line: 3396, baseType: !1226, size: 320)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1227)
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1226, file: !151, line: 1483, baseType: !792, size: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1226, file: !151, line: 1484, baseType: !576, size: 32, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1226, file: !151, line: 1485, baseType: !1231, size: 64, offset: 256)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 64, elements: !673)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !756, file: !151, line: 3397, baseType: !1233, size: 384)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1233, file: !151, line: 1830, baseType: !792, size: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1233, file: !151, line: 1831, baseType: !874, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1233, file: !151, line: 1832, baseType: !754, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1233, file: !151, line: 1835, baseType: !1231, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !756, file: !151, line: 3398, baseType: !1240, size: 704)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1248, !1249, !1252}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1240, file: !151, line: 1899, baseType: !792, size: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1240, file: !151, line: 1902, baseType: !754, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1240, file: !151, line: 1905, baseType: !1245, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !624, line: 58, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !624, line: 57, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1240, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1240, file: !151, line: 1911, baseType: !1250, size: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1240, file: !151, line: 1914, baseType: !1253, size: 256, offset: 448)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1254)
!1254 = !{!1255, !1257, !1258, !1263}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1253, file: !151, line: 1884, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1253, file: !151, line: 1885, baseType: !1256, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1253, file: !151, line: 1891, baseType: !1259, size: 64, offset: 128)
!1259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !151, line: 1891, size: 64, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1259, file: !151, line: 1891, baseType: !1245, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1259, file: !151, line: 1891, baseType: !754, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1253, file: !151, line: 1892, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !756, file: !151, line: 3399, baseType: !1266, size: 704)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1285, !1286, !1287, !1288, !1289}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1266, file: !151, line: 2009, baseType: !792, size: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1266, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1266, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1266, file: !151, line: 2014, baseType: !874, size: 32, offset: 224)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1266, file: !151, line: 2016, baseType: !754, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1266, file: !151, line: 2017, baseType: !1274, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1276, file: !151, line: 183, baseType: !1279, size: 128)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1281)
!1281 = !{!1282, !1283, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1280, file: !151, line: 182, baseType: !7, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1280, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1280, file: !151, line: 182, baseType: !1231, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1266, file: !151, line: 2019, baseType: !754, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1266, file: !151, line: 2020, baseType: !754, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1266, file: !151, line: 2021, baseType: !754, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1266, file: !151, line: 2022, baseType: !754, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1266, file: !151, line: 2023, baseType: !754, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !756, file: !151, line: 3400, baseType: !1291, size: 832)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1291, file: !151, line: 2431, baseType: !792, size: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1291, file: !151, line: 2433, baseType: !754, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1291, file: !151, line: 2434, baseType: !754, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1291, file: !151, line: 2435, baseType: !754, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1291, file: !151, line: 2436, baseType: !754, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1291, file: !151, line: 2437, baseType: !1274, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1291, file: !151, line: 2438, baseType: !754, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1291, file: !151, line: 2440, baseType: !754, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1291, file: !151, line: 2441, baseType: !754, size: 64, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1291, file: !151, line: 2443, baseType: !1303, size: 128, offset: 704)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1304, file: !151, line: 182, baseType: !1279, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !756, file: !151, line: 3401, baseType: !1308, size: 320)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1309)
!1309 = !{!1310, !1311, !1318}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1308, file: !151, line: 3329, baseType: !792, size: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1308, file: !151, line: 3330, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1313, file: !151, line: 3322, baseType: !1312, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1313, file: !151, line: 3323, baseType: !1312, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1313, file: !151, line: 3324, baseType: !754, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1308, file: !151, line: 3331, baseType: !1312, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !756, file: !151, line: 3402, baseType: !1320, size: 256)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1320, file: !151, line: 1541, baseType: !792, size: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1320, file: !151, line: 1542, baseType: !1324, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1326, file: !151, line: 1538, baseType: !1329, size: 192)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1330, file: !151, line: 1537, baseType: !7, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1330, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1330, file: !151, line: 1537, baseType: !1335, size: 128, offset: 64)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 128, elements: !673)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1337, file: !151, line: 1533, baseType: !754, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1337, file: !151, line: 1534, baseType: !754, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !756, file: !151, line: 3403, baseType: !1342, size: 512)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1353, !1354, !1355}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1342, file: !151, line: 1939, baseType: !792, size: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1342, file: !151, line: 1940, baseType: !874, size: 32, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1342, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1342, file: !151, line: 1946, baseType: !1348, size: 32, offset: 256)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1349)
!1349 = !{!1350, !1351, !1352}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1348, file: !151, line: 1943, baseType: !169, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1348, file: !151, line: 1944, baseType: !176, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1348, file: !151, line: 1945, baseType: !183, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1342, file: !151, line: 1950, baseType: !634, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1342, file: !151, line: 1951, baseType: !634, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1342, file: !151, line: 1953, baseType: !1231, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !756, file: !151, line: 3404, baseType: !1357, size: 1664)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1357, file: !151, line: 3338, baseType: !792, size: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1357, file: !151, line: 3341, baseType: !1361, size: 1472, offset: 192)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1362, line: 410, size: 1472, elements: !1363)
!1362 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1361, file: !1362, line: 412, baseType: !576, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1361, file: !1362, line: 413, baseType: !576, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1361, file: !1362, line: 414, baseType: !576, size: 32, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1361, file: !1362, line: 415, baseType: !576, size: 32, offset: 96)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1361, file: !1362, line: 416, baseType: !576, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1361, file: !1362, line: 417, baseType: !576, size: 32, offset: 160)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1361, file: !1362, line: 418, baseType: !575, size: 8, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1361, file: !1362, line: 419, baseType: !575, size: 8, offset: 200)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1361, file: !1362, line: 420, baseType: !1373, size: 8, offset: 208)
!1373 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1361, file: !1362, line: 421, baseType: !1373, size: 8, offset: 216)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1361, file: !1362, line: 422, baseType: !1373, size: 8, offset: 224)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1361, file: !1362, line: 423, baseType: !1373, size: 8, offset: 232)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1361, file: !1362, line: 424, baseType: !1373, size: 8, offset: 240)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1361, file: !1362, line: 425, baseType: !1373, size: 8, offset: 248)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1361, file: !1362, line: 426, baseType: !1373, size: 8, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1361, file: !1362, line: 427, baseType: !1373, size: 8, offset: 264)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1361, file: !1362, line: 428, baseType: !1373, size: 8, offset: 272)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1361, file: !1362, line: 429, baseType: !1373, size: 8, offset: 280)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1361, file: !1362, line: 430, baseType: !1373, size: 8, offset: 288)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1361, file: !1362, line: 431, baseType: !1373, size: 8, offset: 296)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1361, file: !1362, line: 432, baseType: !1373, size: 8, offset: 304)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1361, file: !1362, line: 433, baseType: !1373, size: 8, offset: 312)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1361, file: !1362, line: 434, baseType: !1373, size: 8, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1361, file: !1362, line: 435, baseType: !1373, size: 8, offset: 328)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1361, file: !1362, line: 436, baseType: !1373, size: 8, offset: 336)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1361, file: !1362, line: 437, baseType: !1373, size: 8, offset: 344)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1361, file: !1362, line: 438, baseType: !1373, size: 8, offset: 352)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1361, file: !1362, line: 439, baseType: !1373, size: 8, offset: 360)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1361, file: !1362, line: 440, baseType: !1373, size: 8, offset: 368)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1361, file: !1362, line: 441, baseType: !1373, size: 8, offset: 376)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1361, file: !1362, line: 442, baseType: !1373, size: 8, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1361, file: !1362, line: 443, baseType: !1373, size: 8, offset: 392)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1361, file: !1362, line: 444, baseType: !1373, size: 8, offset: 400)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1361, file: !1362, line: 445, baseType: !1373, size: 8, offset: 408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1361, file: !1362, line: 446, baseType: !1373, size: 8, offset: 416)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1361, file: !1362, line: 447, baseType: !1373, size: 8, offset: 424)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1361, file: !1362, line: 448, baseType: !1373, size: 8, offset: 432)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1361, file: !1362, line: 449, baseType: !1373, size: 8, offset: 440)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1361, file: !1362, line: 450, baseType: !1373, size: 8, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1361, file: !1362, line: 451, baseType: !1373, size: 8, offset: 456)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1361, file: !1362, line: 452, baseType: !1373, size: 8, offset: 464)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1361, file: !1362, line: 453, baseType: !1373, size: 8, offset: 472)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1361, file: !1362, line: 454, baseType: !1373, size: 8, offset: 480)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1361, file: !1362, line: 455, baseType: !1373, size: 8, offset: 488)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1361, file: !1362, line: 456, baseType: !1373, size: 8, offset: 496)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1361, file: !1362, line: 457, baseType: !1373, size: 8, offset: 504)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1361, file: !1362, line: 458, baseType: !1373, size: 8, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1361, file: !1362, line: 459, baseType: !1373, size: 8, offset: 520)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1361, file: !1362, line: 460, baseType: !1373, size: 8, offset: 528)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1361, file: !1362, line: 461, baseType: !1373, size: 8, offset: 536)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1361, file: !1362, line: 462, baseType: !1373, size: 8, offset: 544)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1361, file: !1362, line: 463, baseType: !1373, size: 8, offset: 552)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1361, file: !1362, line: 464, baseType: !1373, size: 8, offset: 560)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1361, file: !1362, line: 465, baseType: !1373, size: 8, offset: 568)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1361, file: !1362, line: 466, baseType: !1373, size: 8, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1361, file: !1362, line: 467, baseType: !1373, size: 8, offset: 584)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1361, file: !1362, line: 468, baseType: !1373, size: 8, offset: 592)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1361, file: !1362, line: 469, baseType: !1373, size: 8, offset: 600)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1361, file: !1362, line: 470, baseType: !1373, size: 8, offset: 608)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1361, file: !1362, line: 471, baseType: !1373, size: 8, offset: 616)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1361, file: !1362, line: 472, baseType: !1373, size: 8, offset: 624)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1361, file: !1362, line: 473, baseType: !1373, size: 8, offset: 632)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1361, file: !1362, line: 474, baseType: !1373, size: 8, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1361, file: !1362, line: 475, baseType: !1373, size: 8, offset: 648)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1361, file: !1362, line: 476, baseType: !1373, size: 8, offset: 656)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1361, file: !1362, line: 477, baseType: !1373, size: 8, offset: 664)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1361, file: !1362, line: 478, baseType: !1373, size: 8, offset: 672)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1361, file: !1362, line: 479, baseType: !1373, size: 8, offset: 680)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1361, file: !1362, line: 480, baseType: !1373, size: 8, offset: 688)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1361, file: !1362, line: 481, baseType: !1373, size: 8, offset: 696)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1361, file: !1362, line: 482, baseType: !1373, size: 8, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1361, file: !1362, line: 483, baseType: !1373, size: 8, offset: 712)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1361, file: !1362, line: 484, baseType: !1373, size: 8, offset: 720)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1361, file: !1362, line: 485, baseType: !1373, size: 8, offset: 728)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1361, file: !1362, line: 486, baseType: !1373, size: 8, offset: 736)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1361, file: !1362, line: 487, baseType: !1373, size: 8, offset: 744)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1361, file: !1362, line: 488, baseType: !1373, size: 8, offset: 752)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1361, file: !1362, line: 489, baseType: !1373, size: 8, offset: 760)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1361, file: !1362, line: 490, baseType: !1373, size: 8, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1361, file: !1362, line: 491, baseType: !1373, size: 8, offset: 776)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1361, file: !1362, line: 492, baseType: !1373, size: 8, offset: 784)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1361, file: !1362, line: 493, baseType: !1373, size: 8, offset: 792)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1361, file: !1362, line: 494, baseType: !1373, size: 8, offset: 800)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1361, file: !1362, line: 495, baseType: !1373, size: 8, offset: 808)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1361, file: !1362, line: 496, baseType: !1373, size: 8, offset: 816)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1361, file: !1362, line: 497, baseType: !1373, size: 8, offset: 824)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1361, file: !1362, line: 498, baseType: !1373, size: 8, offset: 832)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1361, file: !1362, line: 499, baseType: !1373, size: 8, offset: 840)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1361, file: !1362, line: 500, baseType: !1373, size: 8, offset: 848)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1361, file: !1362, line: 501, baseType: !1373, size: 8, offset: 856)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1361, file: !1362, line: 502, baseType: !1373, size: 8, offset: 864)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1361, file: !1362, line: 503, baseType: !1373, size: 8, offset: 872)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1361, file: !1362, line: 504, baseType: !1373, size: 8, offset: 880)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1361, file: !1362, line: 505, baseType: !1373, size: 8, offset: 888)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1361, file: !1362, line: 506, baseType: !1373, size: 8, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1361, file: !1362, line: 507, baseType: !1373, size: 8, offset: 904)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1361, file: !1362, line: 508, baseType: !1373, size: 8, offset: 912)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1361, file: !1362, line: 509, baseType: !1373, size: 8, offset: 920)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1361, file: !1362, line: 510, baseType: !1373, size: 8, offset: 928)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1361, file: !1362, line: 511, baseType: !1373, size: 8, offset: 936)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1361, file: !1362, line: 512, baseType: !1373, size: 8, offset: 944)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1361, file: !1362, line: 513, baseType: !1373, size: 8, offset: 952)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1361, file: !1362, line: 514, baseType: !1373, size: 8, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1361, file: !1362, line: 515, baseType: !1373, size: 8, offset: 968)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1361, file: !1362, line: 516, baseType: !1373, size: 8, offset: 976)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1361, file: !1362, line: 517, baseType: !1373, size: 8, offset: 984)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1361, file: !1362, line: 518, baseType: !1373, size: 8, offset: 992)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1361, file: !1362, line: 519, baseType: !1373, size: 8, offset: 1000)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1361, file: !1362, line: 520, baseType: !1373, size: 8, offset: 1008)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1361, file: !1362, line: 521, baseType: !1373, size: 8, offset: 1016)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1361, file: !1362, line: 522, baseType: !1373, size: 8, offset: 1024)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1361, file: !1362, line: 523, baseType: !1373, size: 8, offset: 1032)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1361, file: !1362, line: 524, baseType: !1373, size: 8, offset: 1040)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1361, file: !1362, line: 525, baseType: !1373, size: 8, offset: 1048)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1361, file: !1362, line: 526, baseType: !1373, size: 8, offset: 1056)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1361, file: !1362, line: 527, baseType: !1373, size: 8, offset: 1064)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1361, file: !1362, line: 528, baseType: !1373, size: 8, offset: 1072)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1361, file: !1362, line: 529, baseType: !1373, size: 8, offset: 1080)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1361, file: !1362, line: 530, baseType: !1373, size: 8, offset: 1088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1361, file: !1362, line: 531, baseType: !1373, size: 8, offset: 1096)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1361, file: !1362, line: 532, baseType: !1373, size: 8, offset: 1104)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1361, file: !1362, line: 533, baseType: !1373, size: 8, offset: 1112)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1361, file: !1362, line: 534, baseType: !1373, size: 8, offset: 1120)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1361, file: !1362, line: 535, baseType: !1373, size: 8, offset: 1128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1361, file: !1362, line: 536, baseType: !1373, size: 8, offset: 1136)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1361, file: !1362, line: 537, baseType: !1373, size: 8, offset: 1144)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1361, file: !1362, line: 538, baseType: !1373, size: 8, offset: 1152)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1361, file: !1362, line: 539, baseType: !1373, size: 8, offset: 1160)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1361, file: !1362, line: 540, baseType: !1373, size: 8, offset: 1168)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1361, file: !1362, line: 541, baseType: !1373, size: 8, offset: 1176)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1361, file: !1362, line: 542, baseType: !1373, size: 8, offset: 1184)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1361, file: !1362, line: 543, baseType: !1373, size: 8, offset: 1192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1361, file: !1362, line: 544, baseType: !1373, size: 8, offset: 1200)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1361, file: !1362, line: 545, baseType: !1373, size: 8, offset: 1208)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1361, file: !1362, line: 546, baseType: !1373, size: 8, offset: 1216)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1361, file: !1362, line: 547, baseType: !1373, size: 8, offset: 1224)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1361, file: !1362, line: 548, baseType: !1373, size: 8, offset: 1232)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1361, file: !1362, line: 549, baseType: !1373, size: 8, offset: 1240)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1361, file: !1362, line: 550, baseType: !1373, size: 8, offset: 1248)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1361, file: !1362, line: 551, baseType: !1373, size: 8, offset: 1256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1361, file: !1362, line: 552, baseType: !1373, size: 8, offset: 1264)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1361, file: !1362, line: 553, baseType: !1373, size: 8, offset: 1272)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1361, file: !1362, line: 554, baseType: !1373, size: 8, offset: 1280)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1361, file: !1362, line: 555, baseType: !1373, size: 8, offset: 1288)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1361, file: !1362, line: 556, baseType: !1373, size: 8, offset: 1296)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1361, file: !1362, line: 557, baseType: !1373, size: 8, offset: 1304)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1361, file: !1362, line: 558, baseType: !1373, size: 8, offset: 1312)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1361, file: !1362, line: 559, baseType: !1373, size: 8, offset: 1320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1361, file: !1362, line: 560, baseType: !1373, size: 8, offset: 1328)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1361, file: !1362, line: 561, baseType: !1373, size: 8, offset: 1336)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1361, file: !1362, line: 562, baseType: !1373, size: 8, offset: 1344)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1361, file: !1362, line: 563, baseType: !1373, size: 8, offset: 1352)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1361, file: !1362, line: 564, baseType: !1373, size: 8, offset: 1360)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1361, file: !1362, line: 565, baseType: !1373, size: 8, offset: 1368)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1361, file: !1362, line: 566, baseType: !1373, size: 8, offset: 1376)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1361, file: !1362, line: 567, baseType: !1373, size: 8, offset: 1384)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1361, file: !1362, line: 568, baseType: !1373, size: 8, offset: 1392)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1361, file: !1362, line: 569, baseType: !1373, size: 8, offset: 1400)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1361, file: !1362, line: 570, baseType: !1373, size: 8, offset: 1408)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1361, file: !1362, line: 571, baseType: !1373, size: 8, offset: 1416)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1361, file: !1362, line: 572, baseType: !1373, size: 8, offset: 1424)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1361, file: !1362, line: 573, baseType: !1373, size: 8, offset: 1432)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1361, file: !1362, line: 574, baseType: !1373, size: 8, offset: 1440)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !756, file: !151, line: 3405, baseType: !1529, size: 384)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1529, file: !151, line: 3353, baseType: !792, size: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1529, file: !151, line: 3356, baseType: !1533, size: 192, offset: 192)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1362, line: 578, size: 192, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1533, file: !1362, line: 580, baseType: !576, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1533, file: !1362, line: 581, baseType: !576, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1533, file: !1362, line: 582, baseType: !576, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1533, file: !1362, line: 583, baseType: !576, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1533, file: !1362, line: 584, baseType: !575, size: 8, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1533, file: !1362, line: 585, baseType: !575, size: 8, offset: 136)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1533, file: !1362, line: 586, baseType: !575, size: 8, offset: 144)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1533, file: !1362, line: 587, baseType: !575, size: 8, offset: 152)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1533, file: !1362, line: 588, baseType: !575, size: 8, offset: 160)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1533, file: !1362, line: 589, baseType: !575, size: 8, offset: 168)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1533, file: !1362, line: 590, baseType: !575, size: 8, offset: 176)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !659, file: !641, line: 178, baseType: !607, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !659, file: !641, line: 179, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !641, line: 150, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !641, line: 142, size: 320, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1550, file: !641, line: 144, baseType: !754, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1550, file: !641, line: 145, baseType: !638, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1550, file: !641, line: 146, baseType: !638, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1550, file: !641, line: 147, baseType: !1196, size: 32, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1550, file: !641, line: 148, baseType: !7, size: 32, offset: 224)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1550, file: !641, line: 149, baseType: !575, size: 8, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !659, file: !641, line: 180, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !641, line: 162, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !641, line: 159, size: 128, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1561, file: !641, line: 160, baseType: !754, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1561, file: !641, line: 161, baseType: !725, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !659, file: !641, line: 181, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !641, line: 181, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !654, file: !641, line: 317, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 64, elements: !673)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !654, file: !641, line: 318, baseType: !1571, size: 320)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !641, line: 188, size: 320, elements: !1572)
!1572 = !{!1573, !1575, !1598}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1571, file: !641, line: 190, baseType: !1574, size: 192)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 192, elements: !825)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1571, file: !641, line: 193, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !641, line: 206, size: 320, elements: !1578)
!1578 = !{!1579, !1583, !1584, !1585, !1597}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1577, file: !641, line: 208, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !624, line: 62, baseType: !1582)
!1582 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !624, line: 61, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1577, file: !641, line: 211, baseType: !7, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1577, file: !641, line: 214, baseType: !725, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1577, file: !641, line: 224, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !641, line: 202, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !641, line: 202, size: 128, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1588, file: !641, line: 202, baseType: !1591, size: 128)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !641, line: 200, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !641, line: 200, size: 128, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1592, file: !641, line: 200, baseType: !7, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1592, file: !641, line: 200, baseType: !7, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1592, file: !641, line: 200, baseType: !672, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1577, file: !641, line: 234, baseType: !1586, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1571, file: !641, line: 197, baseType: !725, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !654, file: !641, line: 319, baseType: !814, size: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !654, file: !641, line: 320, baseType: !833, size: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !626, file: !135, line: 134, baseType: !580, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !626, file: !135, line: 137, baseType: !754, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !626, file: !135, line: 138, baseType: !874, size: 32, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !626, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !135, line: 144, baseType: !576, size: 32, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !626, file: !135, line: 145, baseType: !576, size: 32, offset: 416)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !626, file: !135, line: 146, baseType: !1608, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !725)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !608, file: !135, line: 220, baseType: !611, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !608, file: !135, line: 223, baseType: !580, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !608, file: !135, line: 226, baseType: !601, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !608, file: !135, line: 229, baseType: !1613, size: 128, offset: 256)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1614, size: 128, elements: !709)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !608, file: !135, line: 232, baseType: !607, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !608, file: !135, line: 233, baseType: !607, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !608, file: !135, line: 238, baseType: !1619, size: 64, offset: 512)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1620)
!1620 = !{!1621, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1619, file: !135, line: 236, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1623, file: !135, line: 275, baseType: !634, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1623, file: !135, line: 278, baseType: !634, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1619, file: !135, line: 237, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1629, file: !135, line: 261, baseType: !638, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1629, file: !135, line: 262, baseType: !638, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1629, file: !135, line: 266, baseType: !638, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1629, file: !135, line: 267, baseType: !638, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1629, file: !135, line: 270, baseType: !576, size: 32, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !608, file: !135, line: 241, baseType: !1608, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !608, file: !135, line: 244, baseType: !576, size: 32, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !608, file: !135, line: 247, baseType: !576, size: 32, offset: 672)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !608, file: !135, line: 250, baseType: !576, size: 32, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !608, file: !135, line: 253, baseType: !576, size: 32, offset: 736)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !135, line: 256, baseType: !576, size: 32, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !602, file: !378, line: 111, baseType: !607, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !602, file: !378, line: 114, baseType: !1644, size: 64, offset: 192)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !378, line: 41, size: 64, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1644, file: !378, line: 42, baseType: !377, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1644, file: !378, line: 43, baseType: !7, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !602, file: !378, line: 117, baseType: !7, size: 32, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !602, file: !378, line: 120, baseType: !7, size: 32, offset: 288)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !602, file: !378, line: 123, baseType: !588, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !602, file: !378, line: 126, baseType: !601, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !378, line: 129, baseType: !601, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !602, file: !378, line: 132, baseType: !580, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !602, file: !378, line: 139, baseType: !754, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !602, file: !378, line: 143, baseType: !802, size: 128, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !602, file: !378, line: 146, baseType: !802, size: 128, offset: 768)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !602, file: !378, line: 148, baseType: !575, size: 8, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !602, file: !378, line: 149, baseType: !575, size: 8, offset: 904)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !602, file: !378, line: 153, baseType: !386, size: 32, offset: 928)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !602, file: !378, line: 156, baseType: !1661, size: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !378, line: 48, size: 320, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1667}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1662, file: !378, line: 50, baseType: !1245, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1662, file: !378, line: 59, baseType: !802, size: 128, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1662, file: !378, line: 64, baseType: !575, size: 8, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1662, file: !378, line: 67, baseType: !1661, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !602, file: !378, line: 159, baseType: !1669, size: 64, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !378, line: 72, size: 256, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1670, file: !378, line: 74, baseType: !625, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1670, file: !378, line: 77, baseType: !1669, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1670, file: !378, line: 78, baseType: !1669, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1670, file: !378, line: 81, baseType: !1669, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !602, file: !378, line: 162, baseType: !575, size: 8, offset: 1088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !602, file: !378, line: 166, baseType: !754, size: 64, offset: 1152)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !584, file: !378, line: 197, baseType: !1043, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !584, file: !378, line: 200, baseType: !601, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1682, line: 32, baseType: !1683)
!1682 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1682, line: 32, size: 96, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1683, file: !1682, line: 32, baseType: !1686, size: 96)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1682, line: 31, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1682, line: 31, size: 96, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1687, file: !1682, line: 31, baseType: !7, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1687, file: !1682, line: 31, baseType: !7, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1687, file: !1682, line: 31, baseType: !1692, size: 32, offset: 64)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 32, elements: !673)
!1693 = !{!0, !1694, !1722, !1724, !1726, !1728, !1730}
!1694 = !DIGlobalVariableExpression(var: !1695, expr: !DIExpression())
!1695 = distinct !DIGlobalVariable(name: "pass_rtl_loop_init", scope: !2, file: !3, line: 188, type: !1696, isLocal: false, isDefinition: true)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !391, line: 162, size: 640, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1696, file: !391, line: 164, baseType: !1699, size: 640)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !391, line: 114, size: 640, elements: !1700)
!1700 = !{!1701, !1702, !1703, !1707, !1711, !1713, !1714, !1715, !1717, !1718, !1719, !1720, !1721}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1699, file: !391, line: 117, baseType: !390, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1699, file: !391, line: 121, baseType: !581, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1699, file: !391, line: 125, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!575}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1699, file: !391, line: 130, baseType: !1708, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!7}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1699, file: !391, line: 133, baseType: !1712, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1699, file: !391, line: 136, baseType: !1712, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1699, file: !391, line: 139, baseType: !576, size: 32, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1699, file: !391, line: 143, baseType: !1716, size: 32, offset: 416)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !398, line: 80, baseType: !397)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1699, file: !391, line: 146, baseType: !7, size: 32, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1699, file: !391, line: 147, baseType: !7, size: 32, offset: 480)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1699, file: !391, line: 148, baseType: !7, size: 32, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1699, file: !391, line: 151, baseType: !7, size: 32, offset: 544)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1699, file: !391, line: 152, baseType: !7, size: 32, offset: 576)
!1722 = !DIGlobalVariableExpression(var: !1723, expr: !DIExpression())
!1723 = distinct !DIGlobalVariable(name: "pass_rtl_loop_done", scope: !2, file: !3, line: 223, type: !1696, isLocal: false, isDefinition: true)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(name: "pass_rtl_move_loop_invariants", scope: !2, file: !3, line: 258, type: !1696, isLocal: false, isDefinition: true)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(name: "pass_rtl_unswitch", scope: !2, file: !3, line: 295, type: !1696, isLocal: false, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(name: "pass_rtl_unroll_and_peel_loops", scope: !2, file: !3, line: 343, type: !1696, isLocal: false, isDefinition: true)
!1730 = !DIGlobalVariableExpression(var: !1731, expr: !DIExpression())
!1731 = distinct !DIGlobalVariable(name: "pass_rtl_doloop", scope: !2, file: !3, line: 384, type: !1696, isLocal: false, isDefinition: true)
!1732 = !{i32 2, !"Dwarf Version", i32 4}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 1, !"wchar_size", i32 4}
!1735 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1736 = distinct !DISubprogram(name: "vprintf", scope: !1737, file: !1737, line: 39, type: !1738, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1748)
!1737 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!576, !1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !581)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1742, file: !3, baseType: !7, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1742, file: !3, baseType: !7, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1742, file: !3, baseType: !580, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1742, file: !3, baseType: !580, size: 64, offset: 128)
!1748 = !{!1749, !1750}
!1749 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1736, file: !1737, line: 39, type: !1740)
!1750 = !DILocalVariable(name: "__arg", arg: 2, scope: !1736, file: !1737, line: 39, type: !1741)
!1751 = !DILocation(line: 0, scope: !1736)
!1752 = !DILocation(line: 41, column: 20, scope: !1736)
!1753 = !DILocation(line: 41, column: 10, scope: !1736)
!1754 = !DILocation(line: 41, column: 3, scope: !1736)
!1755 = distinct !DISubprogram(name: "getchar", scope: !1737, file: !1737, line: 47, type: !1756, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!576}
!1758 = !{}
!1759 = !DILocation(line: 49, column: 16, scope: !1755)
!1760 = !DILocation(line: 49, column: 10, scope: !1755)
!1761 = !DILocation(line: 49, column: 3, scope: !1755)
!1762 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1737, file: !1737, line: 56, type: !1763, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1816)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!576, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1767, line: 7, baseType: !1768)
!1767 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1769, line: 49, size: 1728, elements: !1770)
!1769 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1786, !1788, !1789, !1790, !1793, !1795, !1796, !1797, !1800, !1802, !1805, !1808, !1809, !1810, !1811, !1812}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1768, file: !1769, line: 51, baseType: !576, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1768, file: !1769, line: 54, baseType: !578, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1768, file: !1769, line: 55, baseType: !578, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1768, file: !1769, line: 56, baseType: !578, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1768, file: !1769, line: 57, baseType: !578, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1768, file: !1769, line: 58, baseType: !578, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1768, file: !1769, line: 59, baseType: !578, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1768, file: !1769, line: 60, baseType: !578, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1768, file: !1769, line: 61, baseType: !578, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1768, file: !1769, line: 64, baseType: !578, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1768, file: !1769, line: 65, baseType: !578, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1768, file: !1769, line: 66, baseType: !578, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1768, file: !1769, line: 68, baseType: !1784, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1769, line: 36, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1768, file: !1769, line: 70, baseType: !1787, size: 64, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1768, file: !1769, line: 72, baseType: !576, size: 32, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1768, file: !1769, line: 73, baseType: !576, size: 32, offset: 928)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1768, file: !1769, line: 74, baseType: !1791, size: 64, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1792, line: 152, baseType: !725)
!1792 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1768, file: !1769, line: 77, baseType: !1794, size: 16, offset: 1024)
!1794 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1768, file: !1769, line: 78, baseType: !1373, size: 8, offset: 1040)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1768, file: !1769, line: 79, baseType: !849, size: 8, offset: 1048)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1768, file: !1769, line: 81, baseType: !1798, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1769, line: 43, baseType: null)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1768, file: !1769, line: 89, baseType: !1801, size: 64, offset: 1152)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1792, line: 153, baseType: !725)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1768, file: !1769, line: 91, baseType: !1803, size: 64, offset: 1216)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1769, line: 37, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1768, file: !1769, line: 92, baseType: !1806, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1769, line: 38, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1768, file: !1769, line: 93, baseType: !1787, size: 64, offset: 1344)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1768, file: !1769, line: 94, baseType: !580, size: 64, offset: 1408)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1768, file: !1769, line: 95, baseType: !1069, size: 64, offset: 1472)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1768, file: !1769, line: 96, baseType: !576, size: 32, offset: 1536)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1768, file: !1769, line: 98, baseType: !1813, size: 160, offset: 1568)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 160, elements: !1814)
!1814 = !{!1815}
!1815 = !DISubrange(count: 20)
!1816 = !{!1817}
!1817 = !DILocalVariable(name: "__fp", arg: 1, scope: !1762, file: !1737, line: 56, type: !1765)
!1818 = !DILocation(line: 0, scope: !1762)
!1819 = !DILocation(line: 58, column: 10, scope: !1762)
!1820 = !DILocation(line: 58, column: 3, scope: !1762)
!1821 = distinct !DISubprogram(name: "getc_unlocked", scope: !1737, file: !1737, line: 66, type: !1763, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1822 = !{!1823}
!1823 = !DILocalVariable(name: "__fp", arg: 1, scope: !1821, file: !1737, line: 66, type: !1765)
!1824 = !DILocation(line: 0, scope: !1821)
!1825 = !DILocation(line: 68, column: 10, scope: !1821)
!1826 = !DILocation(line: 68, column: 3, scope: !1821)
!1827 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1737, file: !1737, line: 73, type: !1756, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1828 = !DILocation(line: 75, column: 10, scope: !1827)
!1829 = !DILocation(line: 75, column: 3, scope: !1827)
!1830 = distinct !DISubprogram(name: "putchar", scope: !1737, file: !1737, line: 82, type: !1831, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!576, !576}
!1833 = !{!1834}
!1834 = !DILocalVariable(name: "__c", arg: 1, scope: !1830, file: !1737, line: 82, type: !576)
!1835 = !DILocation(line: 0, scope: !1830)
!1836 = !DILocation(line: 84, column: 21, scope: !1830)
!1837 = !DILocation(line: 84, column: 10, scope: !1830)
!1838 = !DILocation(line: 84, column: 3, scope: !1830)
!1839 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1737, file: !1737, line: 91, type: !1840, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!576, !576, !1765}
!1842 = !{!1843, !1844}
!1843 = !DILocalVariable(name: "__c", arg: 1, scope: !1839, file: !1737, line: 91, type: !576)
!1844 = !DILocalVariable(name: "__stream", arg: 2, scope: !1839, file: !1737, line: 91, type: !1765)
!1845 = !DILocation(line: 0, scope: !1839)
!1846 = !DILocation(line: 93, column: 10, scope: !1839)
!1847 = !DILocation(line: 93, column: 3, scope: !1839)
!1848 = distinct !DISubprogram(name: "putc_unlocked", scope: !1737, file: !1737, line: 101, type: !1840, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1849 = !{!1850, !1851}
!1850 = !DILocalVariable(name: "__c", arg: 1, scope: !1848, file: !1737, line: 101, type: !576)
!1851 = !DILocalVariable(name: "__stream", arg: 2, scope: !1848, file: !1737, line: 101, type: !1765)
!1852 = !DILocation(line: 0, scope: !1848)
!1853 = !DILocation(line: 103, column: 10, scope: !1848)
!1854 = !DILocation(line: 103, column: 3, scope: !1848)
!1855 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1737, file: !1737, line: 108, type: !1831, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "__c", arg: 1, scope: !1855, file: !1737, line: 108, type: !576)
!1858 = !DILocation(line: 0, scope: !1855)
!1859 = !DILocation(line: 110, column: 10, scope: !1855)
!1860 = !DILocation(line: 110, column: 3, scope: !1855)
!1861 = distinct !DISubprogram(name: "getline", scope: !1737, file: !1737, line: 118, type: !1862, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1866)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!1864, !577, !1865, !1765}
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1792, line: 193, baseType: !725)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1866 = !{!1867, !1868, !1869}
!1867 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1861, file: !1737, line: 118, type: !577)
!1868 = !DILocalVariable(name: "__n", arg: 2, scope: !1861, file: !1737, line: 118, type: !1865)
!1869 = !DILocalVariable(name: "__stream", arg: 3, scope: !1861, file: !1737, line: 118, type: !1765)
!1870 = !DILocation(line: 0, scope: !1861)
!1871 = !DILocation(line: 120, column: 10, scope: !1861)
!1872 = !DILocation(line: 120, column: 3, scope: !1861)
!1873 = distinct !DISubprogram(name: "feof_unlocked", scope: !1737, file: !1737, line: 128, type: !1763, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1874)
!1874 = !{!1875}
!1875 = !DILocalVariable(name: "__stream", arg: 1, scope: !1873, file: !1737, line: 128, type: !1765)
!1876 = !DILocation(line: 0, scope: !1873)
!1877 = !DILocation(line: 130, column: 10, scope: !1873)
!1878 = !DILocation(line: 130, column: 3, scope: !1873)
!1879 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1737, file: !1737, line: 135, type: !1763, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1880 = !{!1881}
!1881 = !DILocalVariable(name: "__stream", arg: 1, scope: !1879, file: !1737, line: 135, type: !1765)
!1882 = !DILocation(line: 0, scope: !1879)
!1883 = !DILocation(line: 137, column: 10, scope: !1879)
!1884 = !DILocation(line: 137, column: 3, scope: !1879)
!1885 = distinct !DISubprogram(name: "tolower", scope: !1886, file: !1886, line: 207, type: !1831, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1887)
!1886 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "__c", arg: 1, scope: !1885, file: !1886, line: 207, type: !576)
!1889 = !DILocation(line: 0, scope: !1885)
!1890 = !DILocation(line: 209, column: 22, scope: !1885)
!1891 = !DILocation(line: 209, column: 39, scope: !1885)
!1892 = !DILocation(line: 209, column: 38, scope: !1885)
!1893 = !DILocation(line: 209, column: 37, scope: !1885)
!1894 = !DILocation(line: 209, column: 10, scope: !1885)
!1895 = !DILocation(line: 209, column: 3, scope: !1885)
!1896 = distinct !DISubprogram(name: "toupper", scope: !1886, file: !1886, line: 213, type: !1831, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1897 = !{!1898}
!1898 = !DILocalVariable(name: "__c", arg: 1, scope: !1896, file: !1886, line: 213, type: !576)
!1899 = !DILocation(line: 0, scope: !1896)
!1900 = !DILocation(line: 215, column: 22, scope: !1896)
!1901 = !DILocation(line: 215, column: 39, scope: !1896)
!1902 = !DILocation(line: 215, column: 38, scope: !1896)
!1903 = !DILocation(line: 215, column: 37, scope: !1896)
!1904 = !DILocation(line: 215, column: 10, scope: !1896)
!1905 = !DILocation(line: 215, column: 3, scope: !1896)
!1906 = distinct !DISubprogram(name: "atoi", scope: !1907, file: !1907, line: 361, type: !1908, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1907 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!576, !581}
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1906, file: !1907, line: 361, type: !581)
!1912 = !DILocation(line: 0, scope: !1906)
!1913 = !DILocation(line: 363, column: 16, scope: !1906)
!1914 = !DILocation(line: 363, column: 10, scope: !1906)
!1915 = !DILocation(line: 363, column: 3, scope: !1906)
!1916 = distinct !DISubprogram(name: "atol", scope: !1907, file: !1907, line: 366, type: !1917, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!725, !581}
!1919 = !{!1920}
!1920 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1916, file: !1907, line: 366, type: !581)
!1921 = !DILocation(line: 0, scope: !1916)
!1922 = !DILocation(line: 368, column: 10, scope: !1916)
!1923 = !DILocation(line: 368, column: 3, scope: !1916)
!1924 = distinct !DISubprogram(name: "atoll", scope: !1907, file: !1907, line: 373, type: !1925, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1927, !581}
!1927 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1928 = !{!1929}
!1929 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1924, file: !1907, line: 373, type: !581)
!1930 = !DILocation(line: 0, scope: !1924)
!1931 = !DILocation(line: 375, column: 10, scope: !1924)
!1932 = !DILocation(line: 375, column: 3, scope: !1924)
!1933 = distinct !DISubprogram(name: "bsearch", scope: !1934, file: !1934, line: 20, type: !1935, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1938)
!1934 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!580, !1054, !1054, !1069, !1069, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1907, line: 808, baseType: !1058)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1939 = !DILocalVariable(name: "__key", arg: 1, scope: !1933, file: !1934, line: 20, type: !1054)
!1940 = !DILocalVariable(name: "__base", arg: 2, scope: !1933, file: !1934, line: 20, type: !1054)
!1941 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1933, file: !1934, line: 20, type: !1069)
!1942 = !DILocalVariable(name: "__size", arg: 4, scope: !1933, file: !1934, line: 20, type: !1069)
!1943 = !DILocalVariable(name: "__compar", arg: 5, scope: !1933, file: !1934, line: 21, type: !1937)
!1944 = !DILocalVariable(name: "__l", scope: !1933, file: !1934, line: 23, type: !1069)
!1945 = !DILocalVariable(name: "__u", scope: !1933, file: !1934, line: 23, type: !1069)
!1946 = !DILocalVariable(name: "__idx", scope: !1933, file: !1934, line: 23, type: !1069)
!1947 = !DILocalVariable(name: "__p", scope: !1933, file: !1934, line: 24, type: !1054)
!1948 = !DILocalVariable(name: "__comparison", scope: !1933, file: !1934, line: 25, type: !576)
!1949 = !DILocation(line: 0, scope: !1933)
!1950 = !DILocation(line: 29, column: 3, scope: !1933)
!1951 = !DILocation(line: 27, column: 7, scope: !1933)
!1952 = !DILocation(line: 29, column: 14, scope: !1933)
!1953 = !DILocation(line: 31, column: 20, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1933, file: !1934, line: 30, column: 5)
!1955 = !DILocation(line: 31, column: 27, scope: !1954)
!1956 = !DILocation(line: 32, column: 56, scope: !1954)
!1957 = !DILocation(line: 32, column: 47, scope: !1954)
!1958 = !DILocation(line: 33, column: 22, scope: !1954)
!1959 = !DILocation(line: 34, column: 24, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !1934, line: 34, column: 11)
!1961 = !DILocation(line: 34, column: 11, scope: !1954)
!1962 = !DILocation(line: 36, column: 29, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1960, file: !1934, line: 36, column: 16)
!1964 = !DILocation(line: 36, column: 16, scope: !1960)
!1965 = !DILocation(line: 37, column: 14, scope: !1963)
!1966 = distinct !{!1966, !1950, !1967}
!1967 = !DILocation(line: 40, column: 5, scope: !1933)
!1968 = !DILocation(line: 43, column: 1, scope: !1933)
!1969 = distinct !DISubprogram(name: "atof", scope: !1970, file: !1970, line: 25, type: !1971, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1970 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!1973, !581}
!1973 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1969, file: !1970, line: 25, type: !581)
!1976 = !DILocation(line: 0, scope: !1969)
!1977 = !DILocation(line: 27, column: 10, scope: !1969)
!1978 = !DILocation(line: 27, column: 3, scope: !1969)
!1979 = distinct !DISubprogram(name: "strtoimax", scope: !1980, file: !1980, line: 324, type: !1981, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1980 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1983, !1740, !1986, !576}
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1984, line: 101, baseType: !1985)
!1984 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1792, line: 72, baseType: !725)
!1986 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !577)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "nptr", arg: 1, scope: !1979, file: !1980, line: 324, type: !1740)
!1989 = !DILocalVariable(name: "endptr", arg: 2, scope: !1979, file: !1980, line: 324, type: !1986)
!1990 = !DILocalVariable(name: "base", arg: 3, scope: !1979, file: !1980, line: 324, type: !576)
!1991 = !DILocation(line: 0, scope: !1979)
!1992 = !DILocation(line: 327, column: 10, scope: !1979)
!1993 = !DILocation(line: 327, column: 3, scope: !1979)
!1994 = distinct !DISubprogram(name: "strtoumax", scope: !1980, file: !1980, line: 336, type: !1995, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1997, !1740, !1986, !576}
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1984, line: 102, baseType: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1792, line: 73, baseType: !708)
!1999 = !{!2000, !2001, !2002}
!2000 = !DILocalVariable(name: "nptr", arg: 1, scope: !1994, file: !1980, line: 336, type: !1740)
!2001 = !DILocalVariable(name: "endptr", arg: 2, scope: !1994, file: !1980, line: 336, type: !1986)
!2002 = !DILocalVariable(name: "base", arg: 3, scope: !1994, file: !1980, line: 336, type: !576)
!2003 = !DILocation(line: 0, scope: !1994)
!2004 = !DILocation(line: 339, column: 10, scope: !1994)
!2005 = !DILocation(line: 339, column: 3, scope: !1994)
!2006 = distinct !DISubprogram(name: "wcstoimax", scope: !1980, file: !1980, line: 348, type: !2007, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2016)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!1983, !2009, !2013, !576}
!2009 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2010)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1980, line: 34, baseType: !576)
!2013 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2014)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2016 = !{!2017, !2018, !2019}
!2017 = !DILocalVariable(name: "nptr", arg: 1, scope: !2006, file: !1980, line: 348, type: !2009)
!2018 = !DILocalVariable(name: "endptr", arg: 2, scope: !2006, file: !1980, line: 348, type: !2013)
!2019 = !DILocalVariable(name: "base", arg: 3, scope: !2006, file: !1980, line: 348, type: !576)
!2020 = !DILocation(line: 0, scope: !2006)
!2021 = !DILocation(line: 351, column: 10, scope: !2006)
!2022 = !DILocation(line: 351, column: 3, scope: !2006)
!2023 = distinct !DISubprogram(name: "wcstoumax", scope: !1980, file: !1980, line: 362, type: !2024, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1997, !2009, !2013, !576}
!2026 = !{!2027, !2028, !2029}
!2027 = !DILocalVariable(name: "nptr", arg: 1, scope: !2023, file: !1980, line: 362, type: !2009)
!2028 = !DILocalVariable(name: "endptr", arg: 2, scope: !2023, file: !1980, line: 362, type: !2013)
!2029 = !DILocalVariable(name: "base", arg: 3, scope: !2023, file: !1980, line: 362, type: !576)
!2030 = !DILocation(line: 0, scope: !2023)
!2031 = !DILocation(line: 365, column: 10, scope: !2023)
!2032 = !DILocation(line: 365, column: 3, scope: !2023)
!2033 = distinct !DISubprogram(name: "stat", scope: !2034, file: !2034, line: 453, type: !2035, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2034 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!576, !581, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2039, line: 46, size: 1152, elements: !2040)
!2039 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2040 = !{!2041, !2043, !2045, !2047, !2049, !2051, !2053, !2054, !2055, !2056, !2058, !2060, !2068, !2069, !2070}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2038, file: !2039, line: 48, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1792, line: 145, baseType: !708)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2038, file: !2039, line: 53, baseType: !2044, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1792, line: 148, baseType: !708)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2038, file: !2039, line: 61, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1792, line: 151, baseType: !708)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2038, file: !2039, line: 62, baseType: !2048, size: 32, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1792, line: 150, baseType: !7)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2038, file: !2039, line: 64, baseType: !2050, size: 32, offset: 224)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1792, line: 146, baseType: !7)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2038, file: !2039, line: 65, baseType: !2052, size: 32, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1792, line: 147, baseType: !7)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2038, file: !2039, line: 67, baseType: !576, size: 32, offset: 288)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2038, file: !2039, line: 69, baseType: !2042, size: 64, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2038, file: !2039, line: 74, baseType: !1791, size: 64, offset: 384)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2038, file: !2039, line: 78, baseType: !2057, size: 64, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1792, line: 174, baseType: !725)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2038, file: !2039, line: 80, baseType: !2059, size: 64, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1792, line: 179, baseType: !725)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2038, file: !2039, line: 91, baseType: !2061, size: 128, offset: 576)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2062, line: 10, size: 128, elements: !2063)
!2062 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2063 = !{!2064, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2061, file: !2062, line: 12, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1792, line: 160, baseType: !725)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2061, file: !2062, line: 16, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1792, line: 196, baseType: !725)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2038, file: !2039, line: 92, baseType: !2061, size: 128, offset: 704)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2038, file: !2039, line: 93, baseType: !2061, size: 128, offset: 832)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2038, file: !2039, line: 106, baseType: !2071, size: 192, offset: 960)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2067, size: 192, elements: !825)
!2072 = !{!2073, !2074}
!2073 = !DILocalVariable(name: "__path", arg: 1, scope: !2033, file: !2034, line: 453, type: !581)
!2074 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2033, file: !2034, line: 453, type: !2037)
!2075 = !DILocation(line: 0, scope: !2033)
!2076 = !DILocation(line: 455, column: 10, scope: !2033)
!2077 = !DILocation(line: 455, column: 3, scope: !2033)
!2078 = distinct !DISubprogram(name: "lstat", scope: !2034, file: !2034, line: 460, type: !2035, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2079)
!2079 = !{!2080, !2081}
!2080 = !DILocalVariable(name: "__path", arg: 1, scope: !2078, file: !2034, line: 460, type: !581)
!2081 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2078, file: !2034, line: 460, type: !2037)
!2082 = !DILocation(line: 0, scope: !2078)
!2083 = !DILocation(line: 462, column: 10, scope: !2078)
!2084 = !DILocation(line: 462, column: 3, scope: !2078)
!2085 = distinct !DISubprogram(name: "fstat", scope: !2034, file: !2034, line: 467, type: !2086, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!576, !576, !2037}
!2088 = !{!2089, !2090}
!2089 = !DILocalVariable(name: "__fd", arg: 1, scope: !2085, file: !2034, line: 467, type: !576)
!2090 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2085, file: !2034, line: 467, type: !2037)
!2091 = !DILocation(line: 0, scope: !2085)
!2092 = !DILocation(line: 469, column: 10, scope: !2085)
!2093 = !DILocation(line: 469, column: 3, scope: !2085)
!2094 = distinct !DISubprogram(name: "fstatat", scope: !2034, file: !2034, line: 474, type: !2095, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!576, !576, !581, !2037, !576}
!2097 = !{!2098, !2099, !2100, !2101}
!2098 = !DILocalVariable(name: "__fd", arg: 1, scope: !2094, file: !2034, line: 474, type: !576)
!2099 = !DILocalVariable(name: "__filename", arg: 2, scope: !2094, file: !2034, line: 474, type: !581)
!2100 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2094, file: !2034, line: 474, type: !2037)
!2101 = !DILocalVariable(name: "__flag", arg: 4, scope: !2094, file: !2034, line: 474, type: !576)
!2102 = !DILocation(line: 0, scope: !2094)
!2103 = !DILocation(line: 477, column: 10, scope: !2094)
!2104 = !DILocation(line: 477, column: 3, scope: !2094)
!2105 = distinct !DISubprogram(name: "mknod", scope: !2034, file: !2034, line: 483, type: !2106, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!576, !581, !2048, !2042}
!2108 = !{!2109, !2110, !2111}
!2109 = !DILocalVariable(name: "__path", arg: 1, scope: !2105, file: !2034, line: 483, type: !581)
!2110 = !DILocalVariable(name: "__mode", arg: 2, scope: !2105, file: !2034, line: 483, type: !2048)
!2111 = !DILocalVariable(name: "__dev", arg: 3, scope: !2105, file: !2034, line: 483, type: !2042)
!2112 = !DILocation(line: 0, scope: !2105)
!2113 = !DILocation(line: 485, column: 10, scope: !2105)
!2114 = !DILocation(line: 485, column: 3, scope: !2105)
!2115 = distinct !DISubprogram(name: "mknodat", scope: !2034, file: !2034, line: 491, type: !2116, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!576, !576, !581, !2048, !2042}
!2118 = !{!2119, !2120, !2121, !2122}
!2119 = !DILocalVariable(name: "__fd", arg: 1, scope: !2115, file: !2034, line: 491, type: !576)
!2120 = !DILocalVariable(name: "__path", arg: 2, scope: !2115, file: !2034, line: 491, type: !581)
!2121 = !DILocalVariable(name: "__mode", arg: 3, scope: !2115, file: !2034, line: 491, type: !2048)
!2122 = !DILocalVariable(name: "__dev", arg: 4, scope: !2115, file: !2034, line: 491, type: !2042)
!2123 = !DILocation(line: 0, scope: !2115)
!2124 = !DILocation(line: 494, column: 10, scope: !2115)
!2125 = !DILocation(line: 494, column: 3, scope: !2115)
!2126 = distinct !DISubprogram(name: "stat64", scope: !2034, file: !2034, line: 502, type: !2127, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!576, !581, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2039, line: 119, size: 1152, elements: !2131)
!2131 = !{!2132, !2133, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2145, !2146, !2147, !2148}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2130, file: !2039, line: 121, baseType: !2042, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2130, file: !2039, line: 123, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1792, line: 149, baseType: !708)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2130, file: !2039, line: 124, baseType: !2046, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2130, file: !2039, line: 125, baseType: !2048, size: 32, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2130, file: !2039, line: 132, baseType: !2050, size: 32, offset: 224)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2130, file: !2039, line: 133, baseType: !2052, size: 32, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2130, file: !2039, line: 135, baseType: !576, size: 32, offset: 288)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2130, file: !2039, line: 136, baseType: !2042, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2130, file: !2039, line: 137, baseType: !1791, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2130, file: !2039, line: 143, baseType: !2057, size: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2130, file: !2039, line: 144, baseType: !2144, size: 64, offset: 512)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1792, line: 180, baseType: !725)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2130, file: !2039, line: 152, baseType: !2061, size: 128, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2130, file: !2039, line: 153, baseType: !2061, size: 128, offset: 704)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2130, file: !2039, line: 154, baseType: !2061, size: 128, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2130, file: !2039, line: 164, baseType: !2071, size: 192, offset: 960)
!2149 = !{!2150, !2151}
!2150 = !DILocalVariable(name: "__path", arg: 1, scope: !2126, file: !2034, line: 502, type: !581)
!2151 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2126, file: !2034, line: 502, type: !2129)
!2152 = !DILocation(line: 0, scope: !2126)
!2153 = !DILocation(line: 504, column: 10, scope: !2126)
!2154 = !DILocation(line: 504, column: 3, scope: !2126)
!2155 = distinct !DISubprogram(name: "lstat64", scope: !2034, file: !2034, line: 509, type: !2127, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "__path", arg: 1, scope: !2155, file: !2034, line: 509, type: !581)
!2158 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2155, file: !2034, line: 509, type: !2129)
!2159 = !DILocation(line: 0, scope: !2155)
!2160 = !DILocation(line: 511, column: 10, scope: !2155)
!2161 = !DILocation(line: 511, column: 3, scope: !2155)
!2162 = distinct !DISubprogram(name: "fstat64", scope: !2034, file: !2034, line: 516, type: !2163, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!576, !576, !2129}
!2165 = !{!2166, !2167}
!2166 = !DILocalVariable(name: "__fd", arg: 1, scope: !2162, file: !2034, line: 516, type: !576)
!2167 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2162, file: !2034, line: 516, type: !2129)
!2168 = !DILocation(line: 0, scope: !2162)
!2169 = !DILocation(line: 518, column: 10, scope: !2162)
!2170 = !DILocation(line: 518, column: 3, scope: !2162)
!2171 = distinct !DISubprogram(name: "fstatat64", scope: !2034, file: !2034, line: 523, type: !2172, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!576, !576, !581, !2129, !576}
!2174 = !{!2175, !2176, !2177, !2178}
!2175 = !DILocalVariable(name: "__fd", arg: 1, scope: !2171, file: !2034, line: 523, type: !576)
!2176 = !DILocalVariable(name: "__filename", arg: 2, scope: !2171, file: !2034, line: 523, type: !581)
!2177 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2171, file: !2034, line: 523, type: !2129)
!2178 = !DILocalVariable(name: "__flag", arg: 4, scope: !2171, file: !2034, line: 523, type: !576)
!2179 = !DILocation(line: 0, scope: !2171)
!2180 = !DILocation(line: 526, column: 10, scope: !2171)
!2181 = !DILocation(line: 526, column: 3, scope: !2171)
!2182 = distinct !DISubprogram(name: "loop_optimizer_init", scope: !3, file: !3, line: 43, type: !2183, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !7}
!2185 = !{!2186, !2187, !2188}
!2186 = !DILocalVariable(name: "flags", arg: 1, scope: !2182, file: !3, line: 43, type: !7)
!2187 = !DILocalVariable(name: "loops", scope: !2182, file: !3, line: 45, type: !583)
!2188 = !DILocalVariable(name: "cp_flags", scope: !2189, file: !3, line: 71, type: !576)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 70, column: 5)
!2190 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 69, column: 7)
!2191 = !DILocation(line: 0, scope: !2182)
!2192 = !DILocation(line: 47, column: 3, scope: !2182)
!2193 = !DILocation(line: 48, column: 11, scope: !2182)
!2194 = !DILocation(line: 52, column: 3, scope: !2182)
!2195 = !DILocation(line: 53, column: 3, scope: !2182)
!2196 = !DILocation(line: 53, column: 17, scope: !2182)
!2197 = !DILocation(line: 55, column: 13, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 55, column: 7)
!2199 = !DILocation(line: 55, column: 7, scope: !2182)
!2200 = !DILocation(line: 61, column: 7, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 56, column: 5)
!2202 = !DILocation(line: 63, column: 7, scope: !2201)
!2203 = !DILocation(line: 64, column: 5, scope: !2201)
!2204 = !DILocation(line: 66, column: 5, scope: !2198)
!2205 = !DILocation(line: 69, column: 13, scope: !2190)
!2206 = !DILocation(line: 69, column: 7, scope: !2182)
!2207 = !DILocation(line: 0, scope: !2189)
!2208 = !DILocation(line: 73, column: 17, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 73, column: 11)
!2210 = !DILocation(line: 73, column: 11, scope: !2189)
!2211 = !DILocation(line: 76, column: 7, scope: !2189)
!2212 = !DILocation(line: 77, column: 5, scope: !2189)
!2213 = !DILocation(line: 80, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 80, column: 7)
!2215 = !DILocation(line: 80, column: 7, scope: !2182)
!2216 = !DILocation(line: 81, column: 5, scope: !2214)
!2217 = !DILocation(line: 84, column: 13, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 84, column: 7)
!2219 = !DILocation(line: 84, column: 7, scope: !2182)
!2220 = !DILocation(line: 85, column: 5, scope: !2218)
!2221 = !DILocation(line: 87, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 87, column: 7)
!2223 = !DILocation(line: 87, column: 7, scope: !2182)
!2224 = !DILocation(line: 88, column: 5, scope: !2222)
!2225 = !DILocation(line: 91, column: 20, scope: !2182)
!2226 = !DILocation(line: 91, column: 3, scope: !2182)
!2227 = !DILocation(line: 97, column: 1, scope: !2182)
!2228 = distinct !DISubprogram(name: "loops_state_set", scope: !378, file: !378, line: 479, type: !2183, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2229)
!2229 = !{!2230}
!2230 = !DILocalVariable(name: "flags", arg: 1, scope: !2228, file: !378, line: 479, type: !7)
!2231 = !DILocation(line: 0, scope: !2228)
!2232 = !DILocation(line: 481, column: 3, scope: !2228)
!2233 = !DILocation(line: 481, column: 18, scope: !2228)
!2234 = !DILocation(line: 481, column: 24, scope: !2228)
!2235 = !DILocation(line: 482, column: 1, scope: !2228)
!2236 = distinct !DISubprogram(name: "loop_optimizer_finalize", scope: !3, file: !3, line: 102, type: !2237, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null}
!2239 = !{!2240, !2246, !2247}
!2240 = !DILocalVariable(name: "li", scope: !2236, file: !3, line: 104, type: !2241)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !378, line: 515, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 508, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2242, file: !378, line: 511, baseType: !1680, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2242, file: !378, line: 514, baseType: !7, size: 32, offset: 64)
!2246 = !DILocalVariable(name: "loop", scope: !2236, file: !3, line: 105, type: !601)
!2247 = !DILocalVariable(name: "bb", scope: !2236, file: !3, line: 106, type: !1011)
!2248 = !DILocation(line: 104, column: 3, scope: !2236)
!2249 = !DILocation(line: 105, column: 3, scope: !2236)
!2250 = !DILocation(line: 108, column: 3, scope: !2236)
!2251 = !DILocation(line: 0, scope: !2236)
!2252 = !DILocation(line: 110, column: 3, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 110, column: 3)
!2254 = !DILocation(line: 110, column: 3, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 110, column: 3)
!2256 = !DILocation(line: 112, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 111, column: 5)
!2258 = distinct !{!2258, !2252, !2259}
!2259 = !DILocation(line: 113, column: 5, scope: !2253)
!2260 = !DILocation(line: 116, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 116, column: 7)
!2262 = !DILocation(line: 116, column: 7, scope: !2236)
!2263 = !DILocation(line: 117, column: 5, scope: !2261)
!2264 = !DILocation(line: 118, column: 20, scope: !2236)
!2265 = !DILocation(line: 118, column: 3, scope: !2236)
!2266 = !DILocation(line: 119, column: 13, scope: !2236)
!2267 = !DILocation(line: 119, column: 3, scope: !2236)
!2268 = !DILocation(line: 120, column: 3, scope: !2236)
!2269 = !DILocation(line: 120, column: 17, scope: !2236)
!2270 = !DILocation(line: 122, column: 3, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 122, column: 3)
!2272 = !DILocation(line: 0, scope: !2271)
!2273 = !DILocation(line: 124, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 123, column: 5)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 122, column: 3)
!2276 = !DILocation(line: 124, column: 23, scope: !2274)
!2277 = !DILocation(line: 122, column: 3, scope: !2275)
!2278 = distinct !{!2278, !2270, !2279}
!2279 = !DILocation(line: 125, column: 5, scope: !2271)
!2280 = !DILocation(line: 134, column: 1, scope: !2236)
!2281 = distinct !DISubprogram(name: "fel_init", scope: !378, file: !378, line: 535, type: !2282, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2284, !2285, !7}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292}
!2287 = !DILocalVariable(name: "li", arg: 1, scope: !2281, file: !378, line: 535, type: !2284)
!2288 = !DILocalVariable(name: "loop", arg: 2, scope: !2281, file: !378, line: 535, type: !2285)
!2289 = !DILocalVariable(name: "flags", arg: 3, scope: !2281, file: !378, line: 535, type: !7)
!2290 = !DILocalVariable(name: "aloop", scope: !2281, file: !378, line: 537, type: !601)
!2291 = !DILocalVariable(name: "i", scope: !2281, file: !378, line: 538, type: !7)
!2292 = !DILocalVariable(name: "mn", scope: !2281, file: !378, line: 539, type: !576)
!2293 = !DILocation(line: 0, scope: !2281)
!2294 = !DILocation(line: 541, column: 7, scope: !2281)
!2295 = !DILocation(line: 541, column: 11, scope: !2281)
!2296 = !DILocation(line: 542, column: 8, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2281, file: !378, line: 542, column: 7)
!2298 = !DILocation(line: 542, column: 7, scope: !2281)
!2299 = !DILocation(line: 544, column: 11, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !378, line: 543, column: 5)
!2301 = !DILocation(line: 544, column: 20, scope: !2300)
!2302 = !DILocation(line: 545, column: 13, scope: !2300)
!2303 = !DILocation(line: 546, column: 7, scope: !2300)
!2304 = !DILocation(line: 549, column: 18, scope: !2281)
!2305 = !DILocation(line: 549, column: 7, scope: !2281)
!2306 = !DILocation(line: 549, column: 16, scope: !2281)
!2307 = !DILocation(line: 0, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !378, line: 560, column: 12)
!2309 = distinct !DILexicalBlock(scope: !2281, file: !378, line: 552, column: 7)
!2310 = !DILocation(line: 590, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2308, file: !378, line: 587, column: 5)
!2312 = !DILocation(line: 592, column: 8, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !378, line: 592, column: 8)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !378, line: 591, column: 2)
!2315 = !DILocation(line: 592, column: 15, scope: !2313)
!2316 = !DILocation(line: 592, column: 19, scope: !2313)
!2317 = !DILocation(line: 592, column: 8, scope: !2314)
!2318 = !DILocation(line: 593, column: 6, scope: !2313)
!2319 = !DILocation(line: 595, column: 15, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !378, line: 595, column: 8)
!2321 = !DILocation(line: 595, column: 21, scope: !2320)
!2322 = !DILocation(line: 595, column: 8, scope: !2314)
!2323 = !DILocation(line: 599, column: 8, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !378, line: 598, column: 6)
!2325 = !DILocation(line: 596, column: 21, scope: !2320)
!2326 = !DILocation(line: 596, column: 6, scope: !2320)
!2327 = !DILocation(line: 599, column: 15, scope: !2324)
!2328 = !DILocation(line: 599, column: 21, scope: !2324)
!2329 = !DILocation(line: 599, column: 29, scope: !2324)
!2330 = !DILocation(line: 599, column: 39, scope: !2324)
!2331 = !DILocation(line: 599, column: 44, scope: !2324)
!2332 = !DILocation(line: 0, scope: !2324)
!2333 = !DILocation(line: 600, column: 11, scope: !2324)
!2334 = distinct !{!2334, !2323, !2335}
!2335 = !DILocation(line: 600, column: 28, scope: !2324)
!2336 = !DILocation(line: 601, column: 18, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2324, file: !378, line: 601, column: 12)
!2338 = !DILocation(line: 601, column: 12, scope: !2324)
!2339 = !DILocation(line: 603, column: 23, scope: !2324)
!2340 = distinct !{!2340, !2310, !2341}
!2341 = !DILocation(line: 605, column: 2, scope: !2311)
!2342 = !DILocation(line: 608, column: 3, scope: !2281)
!2343 = !DILocation(line: 609, column: 1, scope: !2281)
!2344 = distinct !DISubprogram(name: "fel_next", scope: !378, file: !378, line: 518, type: !2345, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2284, !2285}
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "li", arg: 1, scope: !2344, file: !378, line: 518, type: !2284)
!2349 = !DILocalVariable(name: "loop", arg: 2, scope: !2344, file: !378, line: 518, type: !2285)
!2350 = !DILocalVariable(name: "anum", scope: !2344, file: !378, line: 520, type: !576)
!2351 = !DILocation(line: 0, scope: !2344)
!2352 = !DILocation(line: 520, column: 3, scope: !2344)
!2353 = !DILocation(line: 522, column: 3, scope: !2344)
!2354 = !DILocation(line: 522, column: 10, scope: !2344)
!2355 = !DILocation(line: 524, column: 14, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2344, file: !378, line: 523, column: 5)
!2357 = !DILocation(line: 525, column: 25, scope: !2356)
!2358 = !DILocation(line: 525, column: 15, scope: !2356)
!2359 = !DILocation(line: 525, column: 13, scope: !2356)
!2360 = !DILocation(line: 526, column: 11, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !378, line: 526, column: 11)
!2362 = !DILocation(line: 526, column: 11, scope: !2356)
!2363 = distinct !{!2363, !2353, !2364}
!2364 = !DILocation(line: 528, column: 5, scope: !2344)
!2365 = !DILocation(line: 530, column: 3, scope: !2344)
!2366 = !DILocation(line: 531, column: 9, scope: !2344)
!2367 = !DILocation(line: 532, column: 1, scope: !2344)
!2368 = distinct !DISubprogram(name: "loops_state_satisfies_p", scope: !378, file: !378, line: 471, type: !2369, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!575, !7}
!2371 = !{!2372}
!2372 = !DILocalVariable(name: "flags", arg: 1, scope: !2368, file: !378, line: 471, type: !7)
!2373 = !DILocation(line: 0, scope: !2368)
!2374 = !DILocation(line: 473, column: 11, scope: !2368)
!2375 = !DILocation(line: 473, column: 26, scope: !2368)
!2376 = !DILocation(line: 473, column: 10, scope: !2368)
!2377 = !DILocation(line: 473, column: 3, scope: !2368)
!2378 = distinct !DISubprogram(name: "gate_handle_loop2", scope: !3, file: !3, line: 141, type: !1705, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2379 = !DILocation(line: 143, column: 11, scope: !2378)
!2380 = !DILocation(line: 143, column: 20, scope: !2378)
!2381 = !DILocation(line: 144, column: 6, scope: !2378)
!2382 = !DILocation(line: 144, column: 10, scope: !2378)
!2383 = !DILocation(line: 145, column: 18, scope: !2378)
!2384 = !DILocation(line: 145, column: 15, scope: !2378)
!2385 = !DILocation(line: 146, column: 18, scope: !2378)
!2386 = !DILocation(line: 147, column: 18, scope: !2378)
!2387 = !DILocation(line: 147, column: 15, scope: !2378)
!2388 = !DILocation(line: 143, column: 3, scope: !2378)
!2389 = distinct !DISubprogram(name: "rtl_loop_init", scope: !3, file: !3, line: 177, type: !1709, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2390 = !DILocation(line: 179, column: 3, scope: !2389)
!2391 = !DILocation(line: 181, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 181, column: 7)
!2393 = !DILocation(line: 181, column: 7, scope: !2389)
!2394 = !DILocation(line: 182, column: 32, scope: !2392)
!2395 = !DILocation(line: 182, column: 5, scope: !2392)
!2396 = !DILocation(line: 184, column: 3, scope: !2389)
!2397 = !DILocation(line: 185, column: 3, scope: !2389)
!2398 = distinct !DISubprogram(name: "rtl_loop_done", scope: !3, file: !3, line: 211, type: !1709, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2399 = !DILocation(line: 213, column: 3, scope: !2398)
!2400 = !DILocation(line: 214, column: 3, scope: !2398)
!2401 = !DILocation(line: 216, column: 3, scope: !2398)
!2402 = !DILocation(line: 217, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 217, column: 7)
!2404 = !DILocation(line: 217, column: 7, scope: !2398)
!2405 = !DILocation(line: 218, column: 32, scope: !2403)
!2406 = !DILocation(line: 218, column: 5, scope: !2403)
!2407 = !DILocation(line: 220, column: 3, scope: !2398)
!2408 = distinct !DISubprogram(name: "gate_rtl_move_loop_invariants", scope: !3, file: !3, line: 245, type: !1705, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2409 = !DILocation(line: 247, column: 10, scope: !2408)
!2410 = !DILocation(line: 247, column: 3, scope: !2408)
!2411 = distinct !DISubprogram(name: "rtl_move_loop_invariants", scope: !3, file: !3, line: 251, type: !1709, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2412 = !DILocation(line: 253, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 253, column: 7)
!2414 = !DILocation(line: 253, column: 26, scope: !2413)
!2415 = !DILocation(line: 253, column: 7, scope: !2411)
!2416 = !DILocation(line: 254, column: 5, scope: !2413)
!2417 = !DILocation(line: 255, column: 3, scope: !2411)
!2418 = distinct !DISubprogram(name: "gate_rtl_unswitch", scope: !3, file: !3, line: 282, type: !1705, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2419 = !DILocation(line: 284, column: 10, scope: !2418)
!2420 = !DILocation(line: 284, column: 3, scope: !2418)
!2421 = distinct !DISubprogram(name: "rtl_unswitch", scope: !3, file: !3, line: 288, type: !1709, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2422 = !DILocation(line: 290, column: 7, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 290, column: 7)
!2424 = !DILocation(line: 290, column: 26, scope: !2423)
!2425 = !DILocation(line: 290, column: 7, scope: !2421)
!2426 = !DILocation(line: 291, column: 5, scope: !2423)
!2427 = !DILocation(line: 292, column: 3, scope: !2421)
!2428 = distinct !DISubprogram(name: "gate_rtl_unroll_and_peel_loops", scope: !3, file: !3, line: 317, type: !1705, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2429 = !DILocation(line: 319, column: 11, scope: !2428)
!2430 = !DILocation(line: 319, column: 30, scope: !2428)
!2431 = !DILocation(line: 319, column: 27, scope: !2428)
!2432 = !DILocation(line: 319, column: 51, scope: !2428)
!2433 = !DILocation(line: 319, column: 48, scope: !2428)
!2434 = !DILocation(line: 319, column: 3, scope: !2428)
!2435 = distinct !DISubprogram(name: "rtl_unroll_and_peel_loops", scope: !3, file: !3, line: 323, type: !1709, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2436 = !{!2437}
!2437 = !DILocalVariable(name: "flags", scope: !2438, file: !3, line: 327, type: !576)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 326, column: 5)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 325, column: 7)
!2440 = !DILocation(line: 325, column: 7, scope: !2439)
!2441 = !DILocation(line: 325, column: 26, scope: !2439)
!2442 = !DILocation(line: 325, column: 7, scope: !2435)
!2443 = !DILocation(line: 0, scope: !2438)
!2444 = !DILocation(line: 328, column: 11, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 328, column: 11)
!2446 = !DILocation(line: 328, column: 11, scope: !2438)
!2447 = !DILocation(line: 329, column: 2, scope: !2445)
!2448 = !DILocation(line: 331, column: 11, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 331, column: 11)
!2450 = !DILocation(line: 331, column: 11, scope: !2438)
!2451 = !DILocation(line: 333, column: 11, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 333, column: 11)
!2453 = !DILocation(line: 333, column: 11, scope: !2438)
!2454 = !DILocation(line: 335, column: 11, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 335, column: 11)
!2456 = !DILocation(line: 336, column: 8, scope: !2455)
!2457 = !DILocation(line: 335, column: 11, scope: !2438)
!2458 = !DILocation(line: 338, column: 7, scope: !2438)
!2459 = !DILocation(line: 339, column: 5, scope: !2438)
!2460 = !DILocation(line: 340, column: 3, scope: !2435)
!2461 = distinct !DISubprogram(name: "gate_rtl_doloop", scope: !3, file: !3, line: 365, type: !1705, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2462 = !DILocation(line: 370, column: 3, scope: !2461)
!2463 = distinct !DISubprogram(name: "rtl_doloop", scope: !3, file: !3, line: 375, type: !1709, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2464 = !DILocation(line: 381, column: 3, scope: !2463)
!2465 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1682, file: !1682, line: 32, type: !2466, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!1680, !576}
!2468 = !{!2469}
!2469 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2465, file: !1682, line: 32, type: !576)
!2470 = !DILocation(line: 0, scope: !2465)
!2471 = !DILocation(line: 32, column: 1, scope: !2465)
!2472 = distinct !DISubprogram(name: "number_of_loops", scope: !378, file: !378, line: 459, type: !1709, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!2473 = !DILocation(line: 461, column: 8, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2472, file: !378, line: 461, column: 7)
!2475 = !DILocation(line: 461, column: 7, scope: !2472)
!2476 = !DILocation(line: 464, column: 10, scope: !2472)
!2477 = !DILocation(line: 464, column: 3, scope: !2472)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 465, column: 1, scope: !2472)
!2480 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !378, file: !378, line: 85, type: !2481, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2485)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!576, !2483, !7, !2285}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!2485 = !{!2486, !2487, !2488}
!2486 = !DILocalVariable(name: "vec_", arg: 1, scope: !2480, file: !378, line: 85, type: !2483)
!2487 = !DILocalVariable(name: "ix_", arg: 2, scope: !2480, file: !378, line: 85, type: !7)
!2488 = !DILocalVariable(name: "ptr", arg: 3, scope: !2480, file: !378, line: 85, type: !2285)
!2489 = !DILocation(line: 0, scope: !2480)
!2490 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1682, file: !1682, line: 31, type: !2491, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2495)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!2493, !2494, !576}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!2495 = !{!2496, !2497, !2498}
!2496 = !DILocalVariable(name: "vec_", arg: 1, scope: !2490, file: !1682, line: 31, type: !2494)
!2497 = !DILocalVariable(name: "obj_", arg: 2, scope: !2490, file: !1682, line: 31, type: !576)
!2498 = !DILocalVariable(name: "slot_", scope: !2490, file: !1682, line: 31, type: !2493)
!2499 = !DILocation(line: 0, scope: !2490)
!2500 = !DILocation(line: 31, column: 1, scope: !2490)
!2501 = distinct !DISubprogram(name: "loop_outer", scope: !378, file: !378, line: 434, type: !2502, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!601, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "loop", arg: 1, scope: !2501, file: !378, line: 434, type: !2504)
!2508 = !DILocalVariable(name: "n", scope: !2501, file: !378, line: 436, type: !7)
!2509 = !DILocation(line: 0, scope: !2501)
!2510 = !DILocation(line: 436, column: 16, scope: !2501)
!2511 = !DILocation(line: 438, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2501, file: !378, line: 438, column: 7)
!2513 = !DILocation(line: 438, column: 7, scope: !2501)
!2514 = !DILocation(line: 441, column: 10, scope: !2501)
!2515 = !DILocation(line: 441, column: 3, scope: !2501)
!2516 = !DILocation(line: 442, column: 1, scope: !2501)
!2517 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !378, file: !378, line: 85, type: !2518, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!7, !2483}
!2520 = !{!2521}
!2521 = !DILocalVariable(name: "vec_", arg: 1, scope: !2517, file: !378, line: 85, type: !2483)
!2522 = !DILocation(line: 0, scope: !2517)
!2523 = !DILocation(line: 85, column: 1, scope: !2517)
!2524 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !378, file: !378, line: 85, type: !2525, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!600, !2483, !7}
!2527 = !{!2528, !2529}
!2528 = !DILocalVariable(name: "vec_", arg: 1, scope: !2524, file: !378, line: 85, type: !2483)
!2529 = !DILocalVariable(name: "ix_", arg: 2, scope: !2524, file: !378, line: 85, type: !7)
!2530 = !DILocation(line: 0, scope: !2524)
!2531 = !DILocation(line: 85, column: 1, scope: !2524)
!2532 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1682, file: !1682, line: 31, type: !2533, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2537)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!576, !2535, !7, !2493}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!2537 = !{!2538, !2539, !2540}
!2538 = !DILocalVariable(name: "vec_", arg: 1, scope: !2532, file: !1682, line: 31, type: !2535)
!2539 = !DILocalVariable(name: "ix_", arg: 2, scope: !2532, file: !1682, line: 31, type: !7)
!2540 = !DILocalVariable(name: "ptr", arg: 3, scope: !2532, file: !1682, line: 31, type: !2493)
!2541 = !DILocation(line: 0, scope: !2532)
!2542 = !DILocation(line: 31, column: 1, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2532, file: !1682, line: 31, column: 1)
!2544 = !DILocation(line: 31, column: 1, scope: !2532)
!2545 = !DILocation(line: 31, column: 1, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !1682, line: 31, column: 1)
!2547 = !DILocation(line: 31, column: 1, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !1682, line: 31, column: 1)
!2549 = !DILocation(line: 0, scope: !2543)
!2550 = distinct !DISubprogram(name: "get_loop", scope: !378, file: !378, line: 417, type: !2551, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!601, !7}
!2553 = !{!2554}
!2554 = !DILocalVariable(name: "num", arg: 1, scope: !2550, file: !378, line: 417, type: !7)
!2555 = !DILocation(line: 0, scope: !2550)
!2556 = !DILocation(line: 419, column: 10, scope: !2550)
!2557 = !DILocation(line: 419, column: 3, scope: !2550)
!2558 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1682, file: !1682, line: 32, type: !2559, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "vec_", arg: 1, scope: !2558, file: !1682, line: 32, type: !2561)
!2564 = !DILocation(line: 0, scope: !2558)
!2565 = !DILocation(line: 32, column: 1, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2558, file: !1682, line: 32, column: 1)
!2567 = !DILocation(line: 32, column: 1, scope: !2558)
