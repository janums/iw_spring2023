; ModuleID = 'tree-ssanames.bc'
source_filename = "tree-ssanames.c"
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
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { %struct.htab*, i8**, i8** }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, {}*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type opaque
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [16 x i8] c"tree-ssanames.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"release_ssa\00", align 1
@pass_release_ssa_names = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8 ()* null, i32 ()* @release_dead_ssa_names, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 1 } }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Released %i names, %.2f%%\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1692 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1705, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1706, metadata !DIExpression()), !dbg !1707
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1708
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1709
  ret i32 %call, !dbg !1710
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1711 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1715
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1716
  ret i32 %call, !dbg !1717
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1718 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1773, metadata !DIExpression()), !dbg !1774
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1775
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1775
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1775
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1775
  %cmp = icmp uge i8* %0, %1, !dbg !1775
  %conv1 = zext i1 %cmp to i64, !dbg !1775
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1775
  %tobool = icmp eq i64 %expval, 0, !dbg !1775
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1775

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1775
  br label %cond.end, !dbg !1775

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1775
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1775
  %2 = load i8, i8* %0, align 1, !dbg !1775
  %conv3 = zext i8 %2 to i32, !dbg !1775
  br label %cond.end, !dbg !1775

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1775
  ret i32 %cond, !dbg !1776
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1777 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1779, metadata !DIExpression()), !dbg !1780
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1781
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1781
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1781
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1781
  %cmp = icmp uge i8* %0, %1, !dbg !1781
  %conv1 = zext i1 %cmp to i64, !dbg !1781
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1781
  %tobool = icmp eq i64 %expval, 0, !dbg !1781
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1781

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1781
  br label %cond.end, !dbg !1781

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1781
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1781
  %2 = load i8, i8* %0, align 1, !dbg !1781
  %conv3 = zext i8 %2 to i32, !dbg !1781
  br label %cond.end, !dbg !1781

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1781
  ret i32 %cond, !dbg !1782
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1783 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1784
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1784
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1784
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1784
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1784
  %cmp = icmp uge i8* %1, %2, !dbg !1784
  %conv1 = zext i1 %cmp to i64, !dbg !1784
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1784
  %tobool = icmp eq i64 %expval, 0, !dbg !1784
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1784

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1784
  br label %cond.end, !dbg !1784

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1784
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1784
  %3 = load i8, i8* %1, align 1, !dbg !1784
  %conv3 = zext i8 %3 to i32, !dbg !1784
  br label %cond.end, !dbg !1784

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1784
  ret i32 %cond, !dbg !1785
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1786 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1790, metadata !DIExpression()), !dbg !1791
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1792
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1793
  ret i32 %call, !dbg !1794
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1795 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1800, metadata !DIExpression()), !dbg !1801
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1802
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1802
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1802
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1802
  %cmp = icmp uge i8* %0, %1, !dbg !1802
  %conv1 = zext i1 %cmp to i64, !dbg !1802
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1802
  %tobool = icmp eq i64 %expval, 0, !dbg !1802
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1802

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1802
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1802
  br label %cond.end, !dbg !1802

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1802
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1802
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1802
  store i8 %conv2, i8* %0, align 1, !dbg !1802
  %conv6 = and i32 %__c, 255, !dbg !1802
  br label %cond.end, !dbg !1802

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1802
  ret i32 %cond, !dbg !1803
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1804 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1806, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1807, metadata !DIExpression()), !dbg !1808
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1809
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1809
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1809
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1809
  %cmp = icmp uge i8* %0, %1, !dbg !1809
  %conv1 = zext i1 %cmp to i64, !dbg !1809
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1809
  %tobool = icmp eq i64 %expval, 0, !dbg !1809
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1809

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1809
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1809
  br label %cond.end, !dbg !1809

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1809
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1809
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1809
  store i8 %conv2, i8* %0, align 1, !dbg !1809
  %conv6 = and i32 %__c, 255, !dbg !1809
  br label %cond.end, !dbg !1809

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1809
  ret i32 %cond, !dbg !1810
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1811 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1813, metadata !DIExpression()), !dbg !1814
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1815
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1815
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1815
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1815
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1815
  %cmp = icmp uge i8* %1, %2, !dbg !1815
  %conv1 = zext i1 %cmp to i64, !dbg !1815
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1815
  %tobool = icmp eq i64 %expval, 0, !dbg !1815
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1815

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1815
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1815
  br label %cond.end, !dbg !1815

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1815
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1815
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1815
  store i8 %conv4, i8* %1, align 1, !dbg !1815
  %conv6 = and i32 %__c, 255, !dbg !1815
  br label %cond.end, !dbg !1815

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1815
  ret i32 %cond, !dbg !1816
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1817 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1823, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1824, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1825, metadata !DIExpression()), !dbg !1826
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1827
  ret i64 %call, !dbg !1828
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1829 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1831, metadata !DIExpression()), !dbg !1832
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1833
  %0 = load i32, i32* %_flags, align 8, !dbg !1833
  %and = lshr i32 %0, 4, !dbg !1833
  %and.lobit = and i32 %and, 1, !dbg !1833
  ret i32 %and.lobit, !dbg !1834
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1835 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1837, metadata !DIExpression()), !dbg !1838
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1839
  %0 = load i32, i32* %_flags, align 8, !dbg !1839
  %and = lshr i32 %0, 5, !dbg !1839
  %and.lobit = and i32 %and, 1, !dbg !1839
  ret i32 %and.lobit, !dbg !1840
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1841 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1844, metadata !DIExpression()), !dbg !1845
  %__c.off = add i32 %__c, 128, !dbg !1846
  %0 = icmp ult i32 %__c.off, 384, !dbg !1846
  br i1 %0, label %cond.true, label %cond.end, !dbg !1846

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1847
  %1 = load i32*, i32** %call, align 8, !dbg !1848
  %idxprom = sext i32 %__c to i64, !dbg !1849
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1849
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1849
  br label %cond.end, !dbg !1850

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1850
  ret i32 %cond, !dbg !1851
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1852 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1854, metadata !DIExpression()), !dbg !1855
  %__c.off = add i32 %__c, 128, !dbg !1856
  %0 = icmp ult i32 %__c.off, 384, !dbg !1856
  br i1 %0, label %cond.true, label %cond.end, !dbg !1856

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1857
  %1 = load i32*, i32** %call, align 8, !dbg !1858
  %idxprom = sext i32 %__c to i64, !dbg !1859
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1859
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1859
  br label %cond.end, !dbg !1860

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1860
  ret i32 %cond, !dbg !1861
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1862 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1867, metadata !DIExpression()), !dbg !1868
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1869
  %conv = trunc i64 %call to i32, !dbg !1870
  ret i32 %conv, !dbg !1871
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1876, metadata !DIExpression()), !dbg !1877
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1878
  ret i64 %call, !dbg !1879
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1880 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1885, metadata !DIExpression()), !dbg !1886
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1887
  ret i64 %call, !dbg !1888
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1889 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1895, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1896, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1897, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1898, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1899, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, metadata !1900, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1901, metadata !DIExpression()), !dbg !1905
  br label %while.cond, !dbg !1906

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1907
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1901, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1900, metadata !DIExpression()), !dbg !1905
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1908
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1906

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1909
  %div = lshr i64 %add, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %div, metadata !1902, metadata !DIExpression()), !dbg !1905
  %mul = mul i64 %div, %__size, !dbg !1912
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1913
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1903, metadata !DIExpression()), !dbg !1905
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %call, metadata !1904, metadata !DIExpression()), !dbg !1905
  %cmp1 = icmp slt i32 %call, 0, !dbg !1915
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1917

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1918
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1920

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1900, metadata !DIExpression()), !dbg !1905
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1905
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1901, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1900, metadata !DIExpression()), !dbg !1905
  br label %while.cond, !dbg !1906, !llvm.loop !1922

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1905
  ret i8* %retval.0, !dbg !1924
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1925 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1931, metadata !DIExpression()), !dbg !1932
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1933
  ret double %call, !dbg !1934
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1935 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1944, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1945, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %base, metadata !1946, metadata !DIExpression()), !dbg !1947
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1948
  ret i64 %call, !dbg !1949
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1950 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1956, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1957, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %base, metadata !1958, metadata !DIExpression()), !dbg !1959
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1960
  ret i64 %call, !dbg !1961
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1962 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1973, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1974, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %base, metadata !1975, metadata !DIExpression()), !dbg !1976
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1977
  ret i64 %call, !dbg !1978
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1979 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1983, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1984, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i32 %base, metadata !1985, metadata !DIExpression()), !dbg !1986
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1987
  ret i64 %call, !dbg !1988
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1989 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2032, metadata !DIExpression()), !dbg !2033
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2034
  ret i32 %call, !dbg !2035
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2039, metadata !DIExpression()), !dbg !2040
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2041
  ret i32 %call, !dbg !2042
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2043 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2048, metadata !DIExpression()), !dbg !2049
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2050
  ret i32 %call, !dbg !2051
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2052 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2056, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2057, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2058, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2059, metadata !DIExpression()), !dbg !2060
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2061
  ret i32 %call, !dbg !2062
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2063 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2067, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2068, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2069, metadata !DIExpression()), !dbg !2070
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2069, metadata !DIExpression(DW_OP_deref)), !dbg !2070
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2071
  ret i32 %call, !dbg !2072
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2073 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2080, metadata !DIExpression()), !dbg !2081
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2080, metadata !DIExpression(DW_OP_deref)), !dbg !2081
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2082
  ret i32 %call, !dbg !2083
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2108, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2109, metadata !DIExpression()), !dbg !2110
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2111
  ret i32 %call, !dbg !2112
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2116, metadata !DIExpression()), !dbg !2117
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2118
  ret i32 %call, !dbg !2119
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2120 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2124, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2125, metadata !DIExpression()), !dbg !2126
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2127
  ret i32 %call, !dbg !2128
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2133, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2134, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2136, metadata !DIExpression()), !dbg !2137
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2138
  ret i32 %call, !dbg !2139
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_ssanames(%struct.function* %fn, i32 %size) local_unnamed_addr #4 !dbg !2140 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !2144, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 %size, metadata !2145, metadata !DIExpression()), !dbg !2146
  %0 = icmp sgt i32 %size, 50, !dbg !2147
  %spec.select = select i1 %0, i32 %size, i32 50, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2145, metadata !DIExpression()), !dbg !2146
  %call = tail call fastcc %struct.VEC_tree_gc* @VEC_tree_gc_alloc(i32 %spec.select) #7, !dbg !2148
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 3, !dbg !2149
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2149
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !2149
  store %struct.VEC_tree_gc* %call, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2150
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2151
  %ssa_names2 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 2, !dbg !2151
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names2, align 8, !dbg !2151
  %tobool = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !2151
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2151

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !2151
  br label %cond.end, !dbg !2151

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2151
  %call5 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* null) #7, !dbg !2151
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2152
  %free_ssanames = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 7, !dbg !2152
  store %union.tree_node* null, %union.tree_node** %free_ssanames, align 8, !dbg !2153
  %call7 = tail call %struct.bitmap_head_def* @bitmap_gc_alloc_stat() #6, !dbg !2154
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2155
  %syms_to_rename = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 9, !dbg !2155
  store %struct.bitmap_head_def* %call7, %struct.bitmap_head_def** %syms_to_rename, align 8, !dbg !2156
  ret void, !dbg !2157
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_gc* @VEC_tree_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2158 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2162, metadata !DIExpression()), !dbg !2163
  %call = tail call i8* @vec_gc_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !2164
  %0 = bitcast i8* %call to %struct.VEC_tree_gc*, !dbg !2164
  ret %struct.VEC_tree_gc* %0, !dbg !2164
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2171, metadata !DIExpression()), !dbg !2173
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2174
  %0 = load i32, i32* %num1, align 8, !dbg !2174
  %inc = add i32 %0, 1, !dbg !2174
  store i32 %inc, i32* %num1, align 8, !dbg !2174
  %idxprom = zext i32 %0 to i64, !dbg !2174
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2174
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !2172, metadata !DIExpression()), !dbg !2173
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !2174
  ret %union.tree_node** %arrayidx, !dbg !2174
}

declare dso_local %struct.bitmap_head_def* @bitmap_gc_alloc_stat() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @fini_ssanames() local_unnamed_addr #4 !dbg !2175 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2178
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2178
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2178
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !2178
  tail call fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** nonnull %ssa_names) #7, !dbg !2178
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2179
  %gimple_df2 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 3, !dbg !2179
  %3 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df2, align 8, !dbg !2179
  %free_ssanames = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %3, i64 0, i32 7, !dbg !2179
  store %union.tree_node* null, %union.tree_node** %free_ssanames, align 8, !dbg !2180
  ret void, !dbg !2181
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** %vec_) unnamed_addr #0 !dbg !2182 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !2187, metadata !DIExpression()), !dbg !2188
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2189
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2189
  br i1 %tobool, label %if.end, label %if.then, !dbg !2191

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_gc* %0 to i8*, !dbg !2191
  tail call void @ggc_free(i8* nonnull %1) #6, !dbg !2189
  br label %if.end, !dbg !2189

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_gc* null, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2191
  ret void, !dbg !2191
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @make_ssa_name_fn(%struct.function* %fn, %union.tree_node* %var, %union.gimple_statement_d* %stmt) local_unnamed_addr #4 !dbg !2192 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !2196, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2197, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2198, metadata !DIExpression()), !dbg !2204
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2205
  %bf.load = load i64, i64* %0, align 8, !dbg !2205
  %bf.cast = and i64 %bf.load, 65535, !dbg !2205
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2205
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2205
  %cmp = icmp eq i32 %1, 3, !dbg !2205
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2205

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2205
  br label %cond.end, !dbg !2205

cond.end:                                         ; preds = %entry, %cond.true
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 3, !dbg !2206
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2206
  %free_ssanames = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 7, !dbg !2206
  %3 = load %union.tree_node*, %union.tree_node** %free_ssanames, align 8, !dbg !2206
  %tobool = icmp eq %union.tree_node* %3, null, !dbg !2206
  br i1 %tobool, label %if.else, label %if.then, !dbg !2208

if.then:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2199, metadata !DIExpression()), !dbg !2204
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2209
  %4 = bitcast %union.tree_node** %chain to i64*, !dbg !2209
  %5 = load i64, i64* %4, align 8, !dbg !2209
  %6 = bitcast %union.tree_node** %free_ssanames to i64*, !dbg !2211
  store i64 %5, i64* %6, align 8, !dbg !2211
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2212
  %gimple_df7 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 3, !dbg !2212
  %8 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df7, align 8, !dbg !2212
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %8, i64 0, i32 2, !dbg !2212
  %9 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2212
  %tobool8 = icmp eq %struct.VEC_tree_gc* %9, null, !dbg !2212
  br i1 %tobool8, label %cond.end15, label %cond.true9, !dbg !2212

cond.true9:                                       ; preds = %if.then
  %base13 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %9, i64 0, i32 0, !dbg !2212
  br label %cond.end15, !dbg !2212

cond.end15:                                       ; preds = %if.then, %cond.true9
  %cond16 = phi %struct.VEC_tree_base* [ %base13, %cond.true9 ], [ null, %if.then ], !dbg !2212
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2212
  %10 = bitcast %union.tree_node** %version to i32*, !dbg !2212
  %11 = load i32, i32* %10, align 8, !dbg !2212
  %call = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond16, i32 %11) #7, !dbg !2212
  %cmp17 = icmp eq %union.tree_node* %call, null, !dbg !2212
  br i1 %cmp17, label %cond.end20, label %cond.true18, !dbg !2212

cond.true18:                                      ; preds = %cond.end15
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2212
  br label %cond.end20, !dbg !2212

cond.end20:                                       ; preds = %cond.end15, %cond.true18
  %12 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2213
  %ssa_names23 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %12, i64 0, i32 2, !dbg !2213
  %13 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names23, align 8, !dbg !2213
  %tobool24 = icmp eq %struct.VEC_tree_gc* %13, null, !dbg !2213
  br i1 %tobool24, label %cond.end30, label %cond.true25, !dbg !2213

cond.true25:                                      ; preds = %cond.end20
  %base28 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %13, i64 0, i32 0, !dbg !2213
  br label %cond.end30, !dbg !2213

cond.end30:                                       ; preds = %cond.end20, %cond.true25
  %cond31 = phi %struct.VEC_tree_base* [ %base28, %cond.true25 ], [ null, %cond.end20 ], !dbg !2213
  %14 = load i32, i32* %10, align 8, !dbg !2213
  %call34 = tail call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %cond31, i32 %14, %union.tree_node* nonnull %3) #7, !dbg !2213
  br label %if.end, !dbg !2214

if.else:                                          ; preds = %cond.end
  %call35 = tail call %union.tree_node* @make_node_stat(i32 141) #6, !dbg !2215
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !2199, metadata !DIExpression()), !dbg !2204
  %15 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2217
  %ssa_names37 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %15, i64 0, i32 2, !dbg !2217
  %16 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names37, align 8, !dbg !2217
  %tobool38 = icmp eq %struct.VEC_tree_gc* %16, null, !dbg !2217
  br i1 %tobool38, label %cond.end44, label %cond.true39, !dbg !2217

cond.true39:                                      ; preds = %if.else
  %base42 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %16, i64 0, i32 0, !dbg !2217
  br label %cond.end44, !dbg !2217

cond.end44:                                       ; preds = %if.else, %cond.true39
  %cond45 = phi %struct.VEC_tree_base* [ %base42, %cond.true39 ], [ null, %if.else ], !dbg !2217
  %call46 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond45) #7, !dbg !2217
  %version48 = getelementptr inbounds %union.tree_node, %union.tree_node* %call35, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2218
  %17 = bitcast %union.tree_node** %version48 to i32*, !dbg !2218
  store i32 %call46, i32* %17, align 8, !dbg !2219
  %18 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2220
  %ssa_names50 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %18, i64 0, i32 2, !dbg !2220
  %call51 = tail call fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** nonnull %ssa_names50, %union.tree_node* %call35) #7, !dbg !2220
  br label %if.end

if.end:                                           ; preds = %cond.end44, %cond.end30
  %t.0 = phi %union.tree_node* [ %3, %cond.end30 ], [ %call35, %cond.end44 ], !dbg !2221
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !2199, metadata !DIExpression()), !dbg !2204
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2222
  %19 = bitcast %union.tree_node** %type to i64*, !dbg !2222
  %20 = load i64, i64* %19, align 8, !dbg !2222
  %type54 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2223
  %21 = bitcast %union.tree_node** %type54 to i64*, !dbg !2224
  store i64 %20, i64* %21, align 8, !dbg !2224
  %var56 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2225
  %22 = bitcast i32* %var56 to %union.tree_node**, !dbg !2225
  store %union.tree_node* %var, %union.tree_node** %22, align 8, !dbg !2226
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2227
  %23 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2227
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %23, align 8, !dbg !2228
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2229
  %24 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !2229
  store %struct.ptr_info_def* null, %struct.ptr_info_def** %24, align 8, !dbg !2230
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2231
  %bf.load60 = load i64, i64* %25, align 8, !dbg !2232
  %bf.clear64 = and i64 %bf.load60, -4328521729, !dbg !2233
  store i64 %bf.clear64, i64* %25, align 8, !dbg !2233
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2234
  call void @llvm.dbg.value(metadata i40* %imm_uses, metadata !2200, metadata !DIExpression()), !dbg !2204
  %use = getelementptr inbounds i40, i40* %imm_uses, i64 3, !dbg !2235
  %26 = bitcast i40* %use to %union.tree_node***, !dbg !2235
  store %union.tree_node** null, %union.tree_node*** %26, align 8, !dbg !2236
  %27 = bitcast i40* %imm_uses to i40**, !dbg !2237
  store i40* %imm_uses, i40** %27, align 8, !dbg !2237
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2238
  %28 = bitcast i40* %next to i40**, !dbg !2239
  store i40* %imm_uses, i40** %28, align 8, !dbg !2239
  %loc = getelementptr inbounds i40, i40* %imm_uses, i64 2, !dbg !2240
  %ssa_name66 = bitcast i40* %loc to %union.tree_node**, !dbg !2241
  store %union.tree_node* %t.0, %union.tree_node** %ssa_name66, align 8, !dbg !2242
  ret %union.tree_node* %t.0, !dbg !2243
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2244 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2250, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2251, metadata !DIExpression()), !dbg !2252
  br label %land.end, !dbg !2253

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2253
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2253
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2253
  ret %union.tree_node* %0, !dbg !2253
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2254 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2260, metadata !DIExpression()), !dbg !2262
  %idxprom = zext i32 %ix_ to i64, !dbg !2263
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2263
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2263
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2261, metadata !DIExpression()), !dbg !2262
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !2263
  ret %union.tree_node* %0, !dbg !2263
}

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2268, metadata !DIExpression()), !dbg !2269
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2270
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2270

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2270
  %0 = load i32, i32* %num, align 8, !dbg !2270
  br label %cond.end, !dbg !2270

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2270
  ret i32 %cond, !dbg !2270
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 1) #7, !dbg !2278
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2278
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2278
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2278

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2278
  br label %cond.end, !dbg !2278

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2278
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !2278
  ret %union.tree_node** %call1, !dbg !2278
}

; Function Attrs: nounwind uwtable
define dso_local void @release_ssa_name(%union.tree_node* %var) local_unnamed_addr #4 !dbg !2279 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2283, metadata !DIExpression()), !dbg !2289
  %tobool = icmp eq %union.tree_node* %var, null, !dbg !2290
  br i1 %tobool, label %if.end49, label %if.end, !dbg !2292

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2293
  %bf.load = load i64, i64* %0, align 8, !dbg !2293
  %bf.cast1 = and i64 %bf.load, 4294967296, !dbg !2293
  %tobool1 = icmp eq i64 %bf.cast1, 0, !dbg !2293
  br i1 %tobool1, label %if.end3, label %if.end49, !dbg !2295

if.end3:                                          ; preds = %if.end
  %call = tail call zeroext i8 @name_registered_for_update_p(%union.tree_node* nonnull %var) #6, !dbg !2296
  %tobool4 = icmp eq i8 %call, 0, !dbg !2296
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2298

if.then5:                                         ; preds = %if.end3
  tail call void @release_ssa_name_after_update_ssa(%union.tree_node* nonnull %var) #6, !dbg !2299
  br label %if.end49, !dbg !2301

if.end6:                                          ; preds = %if.end3
  %bf.load8 = load i64, i64* %0, align 8, !dbg !2302
  %bf.cast112 = and i64 %bf.load8, 33554432, !dbg !2302
  %tobool12 = icmp eq i64 %bf.cast112, 0, !dbg !2302
  br i1 %tobool12, label %if.then13, label %if.end49, !dbg !2303

if.then13:                                        ; preds = %if.end6
  %var14 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2304
  %1 = bitcast i32* %var14 to i64*, !dbg !2304
  %2 = load i64, i64* %1, align 8, !dbg !2304
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2305
  %3 = bitcast %union.tree_node** %version to i32*, !dbg !2305
  %4 = load i32, i32* %3, align 8, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %4, metadata !2287, metadata !DIExpression()), !dbg !2306
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2307
  %5 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2307
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %5, metadata !2288, metadata !DIExpression()), !dbg !2306
  %6 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2308
  %tobool17 = icmp eq i32 %6, 0, !dbg !2308
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !2310

if.then18:                                        ; preds = %if.then13
  tail call void @insert_debug_temp_for_var_def(%struct.gimple_stmt_iterator* null, %union.tree_node* nonnull %var) #6, !dbg !2311
  br label %if.end19, !dbg !2311

if.end19:                                         ; preds = %if.then13, %if.then18
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2306
  %7 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !2306
  br label %while.cond, !dbg !2312

while.cond:                                       ; preds = %while.body, %if.end19
  %8 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %7, align 8, !dbg !2313
  %cmp = icmp eq %struct.ssa_use_operand_d* %8, %5, !dbg !2314
  br i1 %cmp, label %while.end, label %while.body, !dbg !2312

while.body:                                       ; preds = %while.cond
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %8) #7, !dbg !2315
  br label %while.cond, !dbg !2312, !llvm.loop !2316

while.end:                                        ; preds = %while.cond
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2318
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 3, !dbg !2318
  %10 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2318
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %10, i64 0, i32 2, !dbg !2318
  %11 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2318
  %tobool21 = icmp eq %struct.VEC_tree_gc* %11, null, !dbg !2318
  br i1 %tobool21, label %cond.end, label %cond.true, !dbg !2318

cond.true:                                        ; preds = %while.end
  %base25 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %11, i64 0, i32 0, !dbg !2318
  br label %cond.end, !dbg !2318

cond.end:                                         ; preds = %while.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base25, %cond.true ], [ null, %while.end ], !dbg !2318
  %12 = load i32, i32* %3, align 8, !dbg !2318
  %call28 = tail call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %cond, i32 %12, %union.tree_node* null) #7, !dbg !2318
  %13 = bitcast %union.tree_node* %var to i8*, !dbg !2319
  %call29 = tail call i64 @tree_size(%union.tree_node* nonnull %var) #6, !dbg !2320
  %call30 = tail call i8* @memset(i8* nonnull %13, i32 0, i64 %call29) #6, !dbg !2321
  %14 = bitcast i40* %imm_uses to i40**, !dbg !2322
  store i40* %imm_uses, i40** %14, align 8, !dbg !2322
  %15 = bitcast i40* %next to i40**, !dbg !2323
  store i40* %imm_uses, i40** %15, align 8, !dbg !2323
  %loc = getelementptr inbounds i40, i40* %imm_uses, i64 2, !dbg !2324
  %ssa_name32 = bitcast i40* %loc to %union.tree_node**, !dbg !2325
  store %union.tree_node* %var, %union.tree_node** %ssa_name32, align 8, !dbg !2326
  %bf.load34 = load i64, i64* %0, align 8, !dbg !2327
  %bf.clear35 = and i64 %bf.load34, -33619968, !dbg !2327
  store i32 %4, i32* %3, align 8, !dbg !2328
  store i64 %2, i64* %1, align 8, !dbg !2329
  %bf.set43 = or i64 %bf.clear35, 33554573, !dbg !2330
  store i64 %bf.set43, i64* %0, align 8, !dbg !2330
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2331
  %gimple_df45 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 3, !dbg !2331
  %17 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df45, align 8, !dbg !2331
  %free_ssanames = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %17, i64 0, i32 7, !dbg !2331
  %18 = bitcast %union.tree_node** %free_ssanames to i64*, !dbg !2331
  %19 = load i64, i64* %18, align 8, !dbg !2331
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2332
  %20 = bitcast %union.tree_node** %chain to i64*, !dbg !2333
  store i64 %19, i64* %20, align 8, !dbg !2333
  %21 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df45, align 8, !dbg !2334
  %free_ssanames48 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %21, i64 0, i32 7, !dbg !2334
  store %union.tree_node* %var, %union.tree_node** %free_ssanames48, align 8, !dbg !2335
  br label %if.end49, !dbg !2336

if.end49:                                         ; preds = %if.end6, %if.end, %entry, %if.then5, %cond.end
  ret void, !dbg !2337
}

declare dso_local zeroext i8 @name_registered_for_update_p(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @release_ssa_name_after_update_ssa(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @insert_debug_temp_for_var_def(%struct.gimple_stmt_iterator*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !2338 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !2343, metadata !DIExpression()), !dbg !2344
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !2345
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2345
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !2347
  br i1 %cmp, label %return, label %if.end, !dbg !2348

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !2349
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2349
  %2 = load i64, i64* %1, align 8, !dbg !2349
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !2350
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !2351
  store i64 %2, i64* %3, align 8, !dbg !2351
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !2352
  %5 = load i64, i64* %4, align 8, !dbg !2352
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !2353
  %7 = load i64*, i64** %6, align 8, !dbg !2353
  store i64 %5, i64* %7, align 8, !dbg !2354
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2355
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !2356
  br label %return, !dbg !2357

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2357
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local i64 @tree_size(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @duplicate_ssa_name(%union.tree_node* %name, %union.gimple_statement_d* %stmt) local_unnamed_addr #4 !dbg !2358 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !2362, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2363, metadata !DIExpression()), !dbg !2366
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2367
  %0 = bitcast i32* %var to %union.tree_node**, !dbg !2367
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2367
  %call = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %1, %union.gimple_statement_d* %stmt) #7, !dbg !2368
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2364, metadata !DIExpression()), !dbg !2366
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2369
  %2 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !2369
  %3 = load %struct.ptr_info_def*, %struct.ptr_info_def** %2, align 8, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %3, metadata !2365, metadata !DIExpression()), !dbg !2366
  %tobool = icmp eq %struct.ptr_info_def* %3, null, !dbg !2370
  br i1 %tobool, label %if.end, label %if.then, !dbg !2372

if.then:                                          ; preds = %entry
  tail call void @duplicate_ssa_name_ptr_info(%union.tree_node* %call, %struct.ptr_info_def* nonnull %3) #7, !dbg !2373
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %entry, %if.then
  ret %union.tree_node* %call, !dbg !2374
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2375 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2377, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2378, metadata !DIExpression()), !dbg !2379
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2380
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #7, !dbg !2381
  ret %union.tree_node* %call, !dbg !2382
}

; Function Attrs: nounwind uwtable
define dso_local void @duplicate_ssa_name_ptr_info(%union.tree_node* %name, %struct.ptr_info_def* %ptr_info) local_unnamed_addr #4 !dbg !2383 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %ptr_info, metadata !2388, metadata !DIExpression()), !dbg !2390
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2391
  %0 = bitcast %union.tree_node** %type to i64**, !dbg !2391
  %1 = load i64*, i64** %0, align 8, !dbg !2391
  %bf.load = load i64, i64* %1, align 8, !dbg !2391
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2391
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2391
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !2391

lor.lhs.false:                                    ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 12, !dbg !2391
  br i1 %cmp7, label %cond.end, label %cond.true, !dbg !2391

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2391
  br label %cond.end, !dbg !2391

cond.end:                                         ; preds = %entry, %lor.lhs.false, %cond.true
  %ptr_info8 = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2392
  %2 = bitcast %union.tree_node** %ptr_info8 to %struct.ptr_info_def**, !dbg !2392
  %3 = load %struct.ptr_info_def*, %struct.ptr_info_def** %2, align 8, !dbg !2392
  %tobool = icmp eq %struct.ptr_info_def* %3, null, !dbg !2392
  br i1 %tobool, label %cond.end11, label %cond.true9, !dbg !2392

cond.true9:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2392
  br label %cond.end11, !dbg !2392

cond.end11:                                       ; preds = %cond.end, %cond.true9
  %tobool13 = icmp eq %struct.ptr_info_def* %ptr_info, null, !dbg !2393
  br i1 %tobool13, label %cleanup.cont, label %if.end, !dbg !2395

if.end:                                           ; preds = %cond.end11
  %call = tail call i8* @ggc_alloc_stat(i64 16) #6, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %call, metadata !2389, metadata !DIExpression()), !dbg !2390
  %4 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %ptr_info, i64 0, i32 0, i32 0, !dbg !2397
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !2397
  %5 = bitcast %union.tree_node** %ptr_info8 to i8**, !dbg !2398
  store i8* %call, i8** %5, align 8, !dbg !2398
  br label %cleanup.cont, !dbg !2399

cleanup.cont:                                     ; preds = %cond.end11, %if.end
  ret void, !dbg !2399
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @release_defs(%union.gimple_statement_d* %stmt) local_unnamed_addr #4 !dbg !2400 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2404, metadata !DIExpression()), !dbg !2419
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2420
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2420
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2421
  %call = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %1) #7, !dbg !2421
  %tobool = icmp eq i8 %call, 0, !dbg !2421
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2421

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2421
  br label %cond.end, !dbg !2421

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2406, metadata !DIExpression(DW_OP_deref)), !dbg !2419
  %call1 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !2422
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2405, metadata !DIExpression()), !dbg !2419
  br label %for.cond, !dbg !2422

for.cond:                                         ; preds = %for.inc, %cond.end
  %def.0 = phi %union.tree_node* [ %call1, %cond.end ], [ %call4, %for.inc ], !dbg !2424
  call void @llvm.dbg.value(metadata %union.tree_node* %def.0, metadata !2405, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2406, metadata !DIExpression(DW_OP_deref)), !dbg !2419
  %call2 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2425
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2425
  br i1 %tobool3, label %for.body, label %for.end, !dbg !2422

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %def.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2427
  %bf.load = load i64, i64* %2, align 8, !dbg !2427
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2429
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2429
  br i1 %cmp, label %if.then, label %for.inc, !dbg !2430

if.then:                                          ; preds = %for.body
  call void @release_ssa_name(%union.tree_node* %def.0) #7, !dbg !2431
  br label %for.inc, !dbg !2431

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2406, metadata !DIExpression(DW_OP_deref)), !dbg !2419
  %call4 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2425
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2405, metadata !DIExpression()), !dbg !2419
  br label %for.cond, !dbg !2425, !llvm.loop !2432

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2434
  ret void, !dbg !2434
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !2435 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !2441, metadata !DIExpression()), !dbg !2442
  %tobool = icmp eq %struct.function* %fun, null, !dbg !2443
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !2444

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !2445
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2445
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !2446
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !2447

land.rhs:                                         ; preds = %land.lhs.true
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 10, !dbg !2448
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !2448
  %bf.clear = and i8 %bf.load, 1, !dbg !2448
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.clear, %land.rhs ]
  ret i8 %1, !dbg !2449
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2450 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 10, metadata !2457, metadata !DIExpression()), !dbg !2458
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !2459
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2460
  store i32 1, i32* %iter_type, align 4, !dbg !2461
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !2462
  ret %union.tree_node* %call, !dbg !2463
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2464 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2470, metadata !DIExpression()), !dbg !2471
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2472
  %0 = load i8, i8* %done, align 8, !dbg !2472
  ret i8 %0, !dbg !2473
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2474 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2478, metadata !DIExpression()), !dbg !2480
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2481
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2481
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2483
  br i1 %tobool, label %if.end, label %if.then, !dbg !2484

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2485
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !2485
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2479, metadata !DIExpression()), !dbg !2480
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !2487
  %2 = load i64*, i64** %1, align 8, !dbg !2487
  %3 = load i64, i64* %2, align 8, !dbg !2488
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2489
  store i64 %3, i64* %4, align 8, !dbg !2489
  br label %cleanup, !dbg !2490

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !2491
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !2491
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !2493
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !2494

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !2495
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !2495
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !2495
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2479, metadata !DIExpression()), !dbg !2480
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !2497
  %8 = load i64*, i64** %7, align 8, !dbg !2497
  %9 = load i64, i64* %8, align 8, !dbg !2498
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !2499
  store i64 %9, i64* %10, align 8, !dbg !2499
  br label %cleanup, !dbg !2500

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2501
  store i8 1, i8* %done, align 8, !dbg !2502
  br label %cleanup, !dbg !2503

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !2480
  ret %union.tree_node* %retval.0, !dbg !2504
}

; Function Attrs: nounwind uwtable
define dso_local void @replace_ssa_name_symbol(%union.tree_node* %ssa_name, %union.tree_node* %sym) local_unnamed_addr #4 !dbg !2505 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ssa_name, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata %union.tree_node* %sym, metadata !2510, metadata !DIExpression()), !dbg !2511
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2512
  %0 = bitcast i32* %var to %union.tree_node**, !dbg !2512
  store %union.tree_node* %sym, %union.tree_node** %0, align 8, !dbg !2513
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %sym, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2514
  %1 = bitcast %union.tree_node** %type to i64*, !dbg !2514
  %2 = load i64, i64* %1, align 8, !dbg !2514
  %type3 = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2515
  %3 = bitcast %union.tree_node** %type3 to i64*, !dbg !2516
  store i64 %2, i64* %3, align 8, !dbg !2516
  ret void, !dbg !2517
}

; Function Attrs: nounwind uwtable
define internal i32 @release_dead_ssa_names() #4 !dbg !2518 {
entry:
  %rvi = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2534
  %0 = bitcast %struct.referenced_var_iterator* %rvi to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2535
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2534
  %call = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2536
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2520, metadata !DIExpression()), !dbg !2534
  br label %for.cond, !dbg !2536

for.cond:                                         ; preds = %for.body, %entry
  %t.0 = phi %union.tree_node* [ %call, %entry ], [ %call2, %for.body ], !dbg !2538
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !2520, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2534
  %call1 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2539
  %tobool = icmp eq i8 %call1, 0, !dbg !2539
  br i1 %tobool, label %for.body, label %for.end, !dbg !2536

for.body:                                         ; preds = %for.cond
  call void @set_current_def(%union.tree_node* %t.0, %union.tree_node* null) #6, !dbg !2541
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2534
  %call2 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2539
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2520, metadata !DIExpression()), !dbg !2534
  br label %for.cond, !dbg !2539, !llvm.loop !2542

for.end:                                          ; preds = %for.cond
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2544
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !2544
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2544
  %free_ssanames = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 7, !dbg !2544
  %3 = load %union.tree_node*, %union.tree_node** %free_ssanames, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2520, metadata !DIExpression()), !dbg !2534
  br label %for.cond3, !dbg !2546

for.cond3:                                        ; preds = %for.body5, %for.end
  %n.0 = phi i32 [ 0, %for.end ], [ %inc, %for.body5 ], !dbg !2534
  %t.1 = phi %union.tree_node* [ %3, %for.end ], [ %4, %for.body5 ], !dbg !2547
  call void @llvm.dbg.value(metadata %union.tree_node* %t.1, metadata !2520, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !2522, metadata !DIExpression()), !dbg !2534
  %tobool4 = icmp eq %union.tree_node* %t.1, null, !dbg !2548
  br i1 %tobool4, label %for.end9, label %for.body5, !dbg !2548

for.body5:                                        ; preds = %for.cond3
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %t.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2549
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !2549
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2521, metadata !DIExpression()), !dbg !2534
  store %union.tree_node* null, %union.tree_node** %chain, align 8, !dbg !2552
  %inc = add nuw nsw i32 %n.0, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2522, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2520, metadata !DIExpression()), !dbg !2534
  br label %for.cond3, !dbg !2554, !llvm.loop !2555

for.end9:                                         ; preds = %for.cond3
  %n.0.lcssa = phi i32 [ %n.0, %for.cond3 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2534
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2557
  %free_ssanames12 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 7, !dbg !2557
  store %union.tree_node* null, %union.tree_node** %free_ssanames12, align 8, !dbg !2558
  %6 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2559
  %call13 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* %6) #6, !dbg !2560
  call void @cgraph_node_remove_callees(%struct.cgraph_node* %call13) #6, !dbg !2561
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2562
  %tobool14 = icmp eq %struct._IO_FILE* %7, null, !dbg !2562
  br i1 %tobool14, label %if.end, label %if.then, !dbg !2564

if.then:                                          ; preds = %for.end9
  %conv = sitofp i32 %n.0.lcssa to double, !dbg !2565
  %mul = fmul double %conv, 1.000000e+02, !dbg !2566
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2567
  %gimple_df16 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 3, !dbg !2567
  %9 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df16, align 8, !dbg !2567
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %9, i64 0, i32 2, !dbg !2567
  %10 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2567
  %tobool17 = icmp eq %struct.VEC_tree_gc* %10, null, !dbg !2567
  br i1 %tobool17, label %cond.end, label %cond.true, !dbg !2567

cond.true:                                        ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %10, i64 0, i32 0, !dbg !2567
  br label %cond.end, !dbg !2567

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.then ], !dbg !2567
  %call21 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2567
  %conv22 = uitofp i32 %call21 to double, !dbg !2567
  %div = fdiv double %mul, %conv22, !dbg !2568
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %n.0.lcssa, double %div) #6, !dbg !2569
  br label %if.end, !dbg !2569

if.end:                                           ; preds = %for.end9, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2570
  ret i32 0, !dbg !2571
}

declare dso_local i8* @vec_gc_p_reserve_exact(i8*, i32) local_unnamed_addr #1

declare dso_local void @ggc_free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2572 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 1, metadata !2577, metadata !DIExpression()), !dbg !2579
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2580
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2580
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2580

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2580
  br label %cond.end, !dbg !2580

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2580
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !2580
  %tobool1 = icmp eq i32 %call, 0, !dbg !2580
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2578, metadata !DIExpression()), !dbg !2579
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2580

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_gc** %vec_ to i8**, !dbg !2581
  %2 = load i8*, i8** %1, align 8, !dbg !2581
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !2581
  store i8* %call3, i8** %1, align 8, !dbg !2581
  br label %if.end, !dbg !2581

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2580
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2583 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 1, metadata !2588, metadata !DIExpression()), !dbg !2589
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2590
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2590

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !2590
  %0 = load i32, i32* %alloc, align 4, !dbg !2590
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2590
  %1 = load i32, i32* %num, align 8, !dbg !2590
  %cmp1 = icmp ne i32 %0, %1, !dbg !2590
  %phitmp = zext i1 %cmp1 to i32, !dbg !2590
  br label %cond.end, !dbg !2590

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2590

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2590
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 10, metadata !2597, metadata !DIExpression()), !dbg !2598
  br i1 false, label %entry.cond.end12_crit_edge, label %cond.true10, !dbg !2599

entry.cond.end12_crit_edge:                       ; preds = %entry
  br label %cond.end12, !dbg !2599

cond.true10:                                      ; preds = %entry
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2600
  br label %cond.end12, !dbg !2599

cond.end12:                                       ; preds = %entry.cond.end12_crit_edge, %cond.true10
  %cond13 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ undef, %entry.cond.end12_crit_edge ], !dbg !2599
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !2601
  store %struct.def_optype_d* %cond13, %struct.def_optype_d** %defs, align 8, !dbg !2602
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2603
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !2604
  br i1 true, label %land.lhs.true32, label %cond.end12.if.end42_crit_edge, !dbg !2605

cond.end12.if.end42_crit_edge:                    ; preds = %cond.end12
  br label %if.end42, !dbg !2605

land.lhs.true32:                                  ; preds = %cond.end12
  br i1 true, label %if.end42, label %land.lhs.true35, !dbg !2607

land.lhs.true35:                                  ; preds = %land.lhs.true32
  br i1 undef, label %land.lhs.true35.if.end42_crit_edge, label %if.then38, !dbg !2608

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  br label %if.end42, !dbg !2608

if.then38:                                        ; preds = %land.lhs.true35
  br label %if.end42, !dbg !2609

if.end42:                                         ; preds = %land.lhs.true35.if.end42_crit_edge, %cond.end12.if.end42_crit_edge, %land.lhs.true32, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2610
  store i8 0, i8* %done, align 8, !dbg !2611
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !2612
  store i32 0, i32* %phi_i, align 8, !dbg !2613
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2614
  store i32 0, i32* %num_phi, align 4, !dbg !2615
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2616
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2617
  ret void, !dbg !2618
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2619 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2626, metadata !DIExpression()), !dbg !2627
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !2628
  %tobool = icmp eq i8 %call, 0, !dbg !2628
  br i1 %tobool, label %return, label %if.end, !dbg !2630

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !2631
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !2631
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !2631
  br label %return, !dbg !2632

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !2627
  ret %struct.def_optype_d* %retval.0, !dbg !2633
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2634 {
entry:
  unreachable, !dbg !2639
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2640 {
entry:
  unreachable, !dbg !2645
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2646 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2648, metadata !DIExpression()), !dbg !2649
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2650
  %tobool = icmp eq i8 %call, 0, !dbg !2650
  br i1 %tobool, label %return, label %if.end, !dbg !2652

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2653
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !2653
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2653
  br label %return, !dbg !2654

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2649
  ret %union.tree_node* %retval.0, !dbg !2655
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2656 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2660, metadata !DIExpression()), !dbg !2661
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2662
  %cmp = icmp eq i32 %call, 0, !dbg !2663
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2664

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2665
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2666
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2667
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2668 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2672, metadata !DIExpression()), !dbg !2673
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2674
  %bf.load = load i32, i32* %0, align 8, !dbg !2674
  %bf.clear = and i32 %bf.load, 255, !dbg !2674
  ret i32 %bf.clear, !dbg !2675
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2676 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2678, metadata !DIExpression()), !dbg !2679
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2680
  %cmp = icmp ugt i32 %call, 5, !dbg !2681
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2682

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2683
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2684
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2685
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2686 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2690, metadata !DIExpression()), !dbg !2691
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2692
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2692
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2693
  ret %union.tree_node* %1, !dbg !2694
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !2695 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !2700, metadata !DIExpression()), !dbg !2701
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !2702
  ret %union.tree_node* %0, !dbg !2703
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2704 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2709, metadata !DIExpression()), !dbg !2710
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2711
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2712
  %call = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %0) #7, !dbg !2713
  %call1 = tail call fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %call) #7, !dbg !2714
  %1 = bitcast i8* %call1 to %union.tree_node*, !dbg !2715
  ret %union.tree_node* %1, !dbg !2716
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2717 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2723, metadata !DIExpression()), !dbg !2724
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2725
  %call = tail call fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) #7, !dbg !2726
  ret i8 %call, !dbg !2727
}

declare dso_local void @set_current_def(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2728 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2730, metadata !DIExpression()), !dbg !2731
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2732
  %call = tail call fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) #7, !dbg !2733
  %0 = bitcast i8* %call to %union.tree_node*, !dbg !2734
  ret %union.tree_node* %0, !dbg !2735
}

declare dso_local void @cgraph_node_remove_callees(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %table) unnamed_addr #0 !dbg !2736 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !2741, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata %struct.htab* %table, metadata !2742, metadata !DIExpression()), !dbg !2745
  %htab = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 0, !dbg !2746
  store %struct.htab* %table, %struct.htab** %htab, align 8, !dbg !2747
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %table, i64 0, i32 3, !dbg !2748
  %0 = bitcast i8*** %entries to i64*, !dbg !2748
  %1 = load i64, i64* %0, align 8, !dbg !2748
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !2749
  %2 = bitcast i8*** %slot to i64*, !dbg !2750
  store i64 %1, i64* %2, align 8, !dbg !2750
  %.cast = inttoptr i64 %1 to i8**, !dbg !2751
  %call = tail call i64 @htab_size(%struct.htab* %table) #6, !dbg !2752
  %add.ptr = getelementptr inbounds i8*, i8** %.cast, i64 %call, !dbg !2753
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !2754
  store i8** %add.ptr, i8*** %limit, align 8, !dbg !2755
  %.pre3 = load i8**, i8*** %slot, align 8, !dbg !2756
  br label %do.body, !dbg !2757

do.body:                                          ; preds = %do.cond, %entry
  %3 = phi i8** [ %incdec.ptr, %do.cond ], [ %.pre3, %entry ]
  %indvars2 = bitcast i8** %3 to i64*, !dbg !2756
  %4 = load i64, i64* %indvars2, align 8, !dbg !2758
  %switch1 = icmp ult i64 %4, 2, !dbg !2759
  br i1 %switch1, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !2761
  store i8** %incdec.ptr, i8*** %slot, align 8, !dbg !2761
  %cmp6 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !2762
  br i1 %cmp6, label %do.body, label %do.end, !dbg !2763, !llvm.loop !2764

do.end:                                           ; preds = %do.body, %do.cond
  %5 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ]
  %6 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ], !dbg !2766
  %cmp9 = icmp ult i8** %6, %add.ptr, !dbg !2768
  br i1 %cmp9, label %if.then10, label %return, !dbg !2769

if.then10:                                        ; preds = %do.end
  %7 = load i8*, i8** %5, align 8, !dbg !2770
  br label %return, !dbg !2771

return:                                           ; preds = %do.end, %if.then10
  %retval.0 = phi i8* [ %7, %if.then10 ], [ null, %do.end ], !dbg !2745
  ret i8* %retval.0, !dbg !2772
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %fun) unnamed_addr #0 !dbg !2773 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !2777, metadata !DIExpression()), !dbg !2778
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !2779
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2779
  %tobool = icmp eq %struct.gimple_df* %0, null, !dbg !2781
  br i1 %tobool, label %return, label %if.end, !dbg !2782

if.end:                                           ; preds = %entry
  %referenced_vars = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 0, !dbg !2783
  %1 = load %struct.htab*, %struct.htab** %referenced_vars, align 8, !dbg !2783
  br label %return, !dbg !2784

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.htab* [ %1, %if.end ], [ null, %entry ], !dbg !2778
  ret %struct.htab* %retval.0, !dbg !2785
}

declare dso_local i64 @htab_size(%struct.htab*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !2792, metadata !DIExpression()), !dbg !2793
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !2794
  %0 = load i8**, i8*** %slot, align 8, !dbg !2794
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !2796
  %1 = load i8**, i8*** %limit, align 8, !dbg !2796
  %cmp = icmp uge i8** %0, %1, !dbg !2797
  %. = zext i1 %cmp to i8, !dbg !2793
  ret i8 %., !dbg !2798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !2799 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !2803, metadata !DIExpression()), !dbg !2806
  %slot1 = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !2807
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !2806
  %.pre = load i8**, i8*** %slot1, align 8, !dbg !2808
  %.pre3 = load i8**, i8*** %limit, align 8, !dbg !2809
  br label %while.cond, !dbg !2810

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8** [ %.pre, %entry ], [ %incdec.ptr, %while.body ], !dbg !2808
  %retval.0 = phi i8* [ undef, %entry ], [ %spec.select2, %while.body ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !2808
  store i8** %incdec.ptr, i8*** %slot1, align 8, !dbg !2808
  %cmp = icmp ult i8** %incdec.ptr, %.pre3, !dbg !2811
  br i1 %cmp, label %while.body, label %return, !dbg !2810

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %incdec.ptr, align 8, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %1, metadata !2804, metadata !DIExpression()), !dbg !2813
  %switch1 = icmp ult i8* %1, inttoptr (i64 2 to i8*), !dbg !2814
  %spec.select2 = select i1 %switch1, i8* %retval.0, i8* %1, !dbg !2814
  br i1 %switch1, label %while.cond, label %return, !llvm.loop !2816

return:                                           ; preds = %while.cond, %while.body
  %retval.2 = phi i8* [ %spec.select2, %while.body ], [ null, %while.cond ], !dbg !2806
  ret i8* %retval.2, !dbg !2818
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
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1688, !1689, !1690}
!llvm.ident = !{!1691}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_release_ssa_names", scope: !2, file: !3, line: 346, type: !1662, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !478, globals: !1661, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssanames.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !25, !32, !39, !233, !239, !244, !249, !256, !263, !439}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!9 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!38 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!41 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!47 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!48 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!49 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!50 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!51 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!52 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!53 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!54 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!55 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!56 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!57 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!58 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!59 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!60 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!61 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!62 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!63 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!64 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!65 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!66 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!67 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!68 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!69 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!70 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!71 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!72 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!73 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!74 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!75 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!76 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!77 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!78 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!79 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!80 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!81 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!82 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!83 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!84 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!85 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!86 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!87 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!88 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!89 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!90 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!91 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!92 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!93 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!94 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!95 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!96 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!97 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!98 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!99 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!100 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!101 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!102 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!103 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!104 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!105 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!106 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!107 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!108 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!109 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!110 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!111 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!112 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!113 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!114 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!115 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!116 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!117 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!118 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!119 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!120 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!123 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!124 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!125 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!126 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!127 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!128 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!129 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!130 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!131 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!132 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!133 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!134 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!135 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!136 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!137 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!138 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!139 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!140 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!141 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!142 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!143 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!144 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!145 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!146 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!147 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!148 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!149 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!150 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!151 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!152 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!153 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!154 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!155 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!156 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!157 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!158 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!159 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!160 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!161 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!162 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!163 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!164 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!165 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!166 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!167 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!168 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!169 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!170 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!171 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!172 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!173 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!174 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!175 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!176 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!177 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!178 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!179 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!180 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!181 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!182 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!183 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!184 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!185 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!186 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!187 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!188 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!189 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!190 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!191 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!192 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!193 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!196 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!203 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!204 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!205 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!206 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!207 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!208 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!209 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!210 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!213 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!215 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!216 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!217 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!218 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!219 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!224 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!226 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!227 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!228 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!229 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!230 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!231 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!232 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !234, line: 363, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!235 = !{!236, !237, !238}
!236 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!237 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !234, line: 355, baseType: !7, size: 32, elements: !240)
!240 = !{!241, !242, !243}
!241 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!242 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!243 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !245, line: 474, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!246 = !{!247, !248}
!247 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!248 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !250, line: 119, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255}
!252 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !257, line: 104, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!258 = !{!259, !260, !261, !262}
!259 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!260 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!261 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!262 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !264, line: 74, baseType: !7, size: 32, elements: !265)
!264 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!266 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!267 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!268 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!269 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!270 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!271 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!272 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!273 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!274 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!275 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!276 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!277 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!278 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!279 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!280 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!281 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!282 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!283 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!284 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!285 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!286 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!287 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!288 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!289 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!290 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!291 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!292 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!293 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!294 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!295 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!296 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!297 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!298 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!299 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!300 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!301 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!302 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!303 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!304 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!305 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!306 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!307 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!308 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!309 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!310 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!311 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!312 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!313 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!314 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!315 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!316 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!317 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!318 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!319 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!320 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!321 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!322 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!323 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!324 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!325 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!326 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!327 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!328 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!329 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!330 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!331 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!332 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!333 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!334 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!335 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!336 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!337 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!338 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!339 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!340 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!341 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!342 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!343 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!344 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!345 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!346 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!347 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!348 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!349 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!350 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!351 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!352 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!353 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!354 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!355 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!356 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!357 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!358 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!359 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!360 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!361 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!362 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!363 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!364 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!365 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!366 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!367 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!368 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!369 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!370 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!371 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!372 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!373 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!374 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!375 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!376 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!377 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!378 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!379 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!380 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!381 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!382 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!383 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!384 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!385 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!386 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!438 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !440, line: 51, baseType: !7, size: 32, elements: !441)
!440 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!442 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!443 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!444 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!445 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!446 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!447 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!448 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!449 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!450 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!451 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!452 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!453 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!454 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!455 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!456 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!457 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!458 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!459 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!460 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!461 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!462 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!463 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!464 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!465 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!466 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!467 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!468 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!469 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!470 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!471 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!472 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!473 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!474 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!475 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!476 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!477 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!478 = !{!479, !480, !481, !482, !485, !486, !488, !39, !1386, !1126, !7}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!481 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !489, line: 56, baseType: !490)
!489 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !492)
!492 = !{!493, !526, !532, !545, !552, !559, !564, !573, !579, !592, !604, !642, !650, !678, !695, !696, !701, !710, !716, !721, !725, !729, !1310, !1359, !1365, !1371, !1378, !1391, !1405, !1422, !1434, !1456, !1471, !1643}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !491, file: !6, line: 3372, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !494, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !494, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !494, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !494, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !494, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !494, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !494, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !494, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !494, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !494, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !494, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !494, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !494, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !494, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !494, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !494, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !494, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !494, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !494, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !494, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !494, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !494, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !494, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !494, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !494, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !494, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !494, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !494, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !494, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !494, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !491, file: !6, line: 3373, baseType: !527, size: 192)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !528)
!528 = !{!529, !530, !531}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !527, file: !6, line: 403, baseType: !494, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !527, file: !6, line: 404, baseType: !488, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !6, line: 405, baseType: !488, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !491, file: !6, line: 3374, baseType: !533, size: 320)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !6, line: 1385, baseType: !527, size: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !533, file: !6, line: 1386, baseType: !537, size: 128, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !538, line: 58, baseType: !539)
!538 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !538, line: 54, size: 128, elements: !540)
!540 = !{!541, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !539, file: !538, line: 56, baseType: !542, size: 64)
!542 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !539, file: !538, line: 57, baseType: !544, size: 64, offset: 64)
!544 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !491, file: !6, line: 3375, baseType: !546, size: 256)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !546, file: !6, line: 1398, baseType: !527, size: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !546, file: !6, line: 1399, baseType: !550, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !491, file: !6, line: 3376, baseType: !553, size: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !553, file: !6, line: 1409, baseType: !527, size: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !553, file: !6, line: 1410, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !491, file: !6, line: 3377, baseType: !560, size: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !560, file: !6, line: 1438, baseType: !527, size: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !560, file: !6, line: 1439, baseType: !488, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !491, file: !6, line: 3378, baseType: !565, size: 256)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !566)
!566 = !{!567, !568, !569}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !565, file: !6, line: 1419, baseType: !527, size: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !565, file: !6, line: 1420, baseType: !481, size: 32, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !565, file: !6, line: 1421, baseType: !570, size: 8, offset: 224)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 8, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 1)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !491, file: !6, line: 3379, baseType: !574, size: 320)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !574, file: !6, line: 1429, baseType: !527, size: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !574, file: !6, line: 1430, baseType: !488, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !574, file: !6, line: 1431, baseType: !488, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !491, file: !6, line: 3380, baseType: !580, size: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !6, line: 1461, baseType: !527, size: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !580, file: !6, line: 1462, baseType: !584, size: 128, offset: 192)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !585, line: 31, size: 128, elements: !586)
!585 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!586 = !{!587, !590, !591}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !584, file: !585, line: 32, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !584, file: !585, line: 33, baseType: !7, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !584, file: !585, line: 34, baseType: !7, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !491, file: !6, line: 3381, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !594)
!594 = !{!595, !596, !601, !602, !603}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !593, file: !6, line: 2508, baseType: !527, size: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !593, file: !6, line: 2509, baseType: !597, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !598, line: 58, baseType: !599)
!598 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !600, line: 44, baseType: !7)
!600 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !593, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !593, file: !6, line: 2511, baseType: !488, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !593, file: !6, line: 2512, baseType: !488, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !491, file: !6, line: 3382, baseType: !605, size: 896)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !605, file: !6, line: 2653, baseType: !593, size: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !6, line: 2654, baseType: !488, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !605, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !605, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !605, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !605, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !605, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !605, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !605, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !605, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !605, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !605, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !605, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !605, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !605, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !605, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !605, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !605, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !605, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !605, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !605, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !605, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !605, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !605, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !605, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !605, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !605, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !605, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !605, file: !6, line: 2705, baseType: !488, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !605, file: !6, line: 2706, baseType: !488, size: 64, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !605, file: !6, line: 2707, baseType: !488, size: 64, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !605, file: !6, line: 2708, baseType: !488, size: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !605, file: !6, line: 2711, baseType: !640, size: 64, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !491, file: !6, line: 3383, baseType: !643, size: 960)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !643, file: !6, line: 2757, baseType: !605, size: 896)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !643, file: !6, line: 2758, baseType: !647, size: 64, offset: 896)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !489, line: 50, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !489, line: 49, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !491, file: !6, line: 3384, baseType: !651, size: 1472)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !652)
!652 = !{!653, !674, !675, !676, !677}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !651, file: !6, line: 3115, baseType: !654, size: 1216)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !654, file: !6, line: 2985, baseType: !643, size: 960)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !654, file: !6, line: 2986, baseType: !488, size: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !654, file: !6, line: 2987, baseType: !488, size: 64, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !654, file: !6, line: 2988, baseType: !488, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !654, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !654, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !654, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !654, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !654, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !654, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !654, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !654, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !654, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !654, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !654, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !654, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !654, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !654, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !651, file: !6, line: 3117, baseType: !488, size: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !651, file: !6, line: 3119, baseType: !488, size: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !651, file: !6, line: 3121, baseType: !488, size: 64, offset: 1344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !651, file: !6, line: 3123, baseType: !488, size: 64, offset: 1408)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !491, file: !6, line: 3385, baseType: !679, size: 1088)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !679, file: !6, line: 2875, baseType: !643, size: 960)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !679, file: !6, line: 2876, baseType: !647, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !679, file: !6, line: 2877, baseType: !684, size: 64, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !686, line: 172, size: 128, elements: !687)
!686 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!687 = !{!688, !689, !690, !691, !692, !693, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !685, file: !686, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !685, file: !686, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !685, file: !686, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !685, file: !686, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !685, file: !686, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !685, file: !686, line: 195, baseType: !7, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !685, file: !686, line: 199, baseType: !488, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !491, file: !6, line: 3386, baseType: !654, size: 1216)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !491, file: !6, line: 3387, baseType: !697, size: 1280)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !697, file: !6, line: 3094, baseType: !654, size: 1216)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !697, file: !6, line: 3095, baseType: !684, size: 64, offset: 1216)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !491, file: !6, line: 3388, baseType: !702, size: 1216)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !702, file: !6, line: 2825, baseType: !605, size: 896)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !702, file: !6, line: 2827, baseType: !488, size: 64, offset: 896)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !702, file: !6, line: 2828, baseType: !488, size: 64, offset: 960)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !702, file: !6, line: 2829, baseType: !488, size: 64, offset: 1024)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !702, file: !6, line: 2830, baseType: !488, size: 64, offset: 1088)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !702, file: !6, line: 2831, baseType: !488, size: 64, offset: 1152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !491, file: !6, line: 3389, baseType: !711, size: 1024)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !6, line: 2851, baseType: !643, size: 960)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !711, file: !6, line: 2852, baseType: !481, size: 32, offset: 960)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !711, file: !6, line: 2853, baseType: !481, size: 32, offset: 992)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !491, file: !6, line: 3390, baseType: !717, size: 1024)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !717, file: !6, line: 2858, baseType: !643, size: 960)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !717, file: !6, line: 2859, baseType: !684, size: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !491, file: !6, line: 3391, baseType: !722, size: 960)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !722, file: !6, line: 2863, baseType: !643, size: 960)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !491, file: !6, line: 3392, baseType: !726, size: 1472)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !726, file: !6, line: 3305, baseType: !651, size: 1472)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !491, file: !6, line: 3393, baseType: !730, size: 1792)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !731)
!731 = !{!732, !733, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !730, file: !6, line: 3249, baseType: !651, size: 1472)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !730, file: !6, line: 3251, baseType: !734, size: 64, offset: 1472)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !736, line: 463, size: 1152, elements: !737)
!736 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!737 = !{!738, !741, !1057, !1058, !1230, !1233, !1234, !1235, !1236, !1237, !1238, !1262, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !735, file: !736, line: 464, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !736, line: 464, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !735, file: !736, line: 467, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !234, line: 374, size: 640, elements: !744)
!744 = !{!745, !1032, !1033, !1046, !1047, !1048, !1049, !1050, !1051, !1053, !1055, !1056}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !743, file: !234, line: 377, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !489, line: 111, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !234, line: 217, size: 832, elements: !749)
!749 = !{!750, !995, !996, !997, !1000, !1006, !1007, !1008, !1026, !1027, !1028, !1029, !1030, !1031}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !748, file: !234, line: 219, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !234, line: 151, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !234, line: 151, size: 128, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !753, file: !234, line: 151, baseType: !756, size: 128)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !234, line: 150, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !234, line: 150, size: 128, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !757, file: !234, line: 150, baseType: !7, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !757, file: !234, line: 150, baseType: !7, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !757, file: !234, line: 150, baseType: !762, size: 64, offset: 64)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 64, elements: !571)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !489, line: 108, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !234, line: 122, size: 512, elements: !766)
!766 = !{!767, !768, !769, !987, !988, !989, !990, !991, !992, !993}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !765, file: !234, line: 124, baseType: !747, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !765, file: !234, line: 125, baseType: !747, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !765, file: !234, line: 131, baseType: !770, size: 64, offset: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !234, line: 128, size: 64, elements: !771)
!771 = !{!772, !986}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !770, file: !234, line: 129, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !489, line: 66, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !440, line: 143, size: 192, elements: !776)
!776 = !{!777, !984, !985}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !775, file: !440, line: 145, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !489, line: 69, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !440, line: 136, size: 192, elements: !781)
!781 = !{!782, !982, !983}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !780, file: !440, line: 137, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !489, line: 58, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !440, line: 737, size: 768, elements: !786)
!786 = !{!787, !804, !837, !843, !848, !853, !860, !866, !872, !877, !891, !896, !902, !907, !917, !922, !940, !947, !954, !960, !965, !971, !977}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !785, file: !440, line: 738, baseType: !788, size: 256)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !440, line: 271, size: 256, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !788, file: !440, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !788, file: !440, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !788, file: !440, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !788, file: !440, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !788, file: !440, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !788, file: !440, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !788, file: !440, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !788, file: !440, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !788, file: !440, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !788, file: !440, line: 312, baseType: !7, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !788, file: !440, line: 316, baseType: !597, size: 32, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !788, file: !440, line: 319, baseType: !7, size: 32, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !788, file: !440, line: 323, baseType: !747, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !788, file: !440, line: 327, baseType: !488, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !785, file: !440, line: 739, baseType: !805, size: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !440, line: 350, size: 448, elements: !806)
!806 = !{!807, !835}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !805, file: !440, line: 353, baseType: !808, size: 384)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !440, line: 333, size: 384, elements: !809)
!809 = !{!810, !811, !818}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !808, file: !440, line: 336, baseType: !788, size: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !808, file: !440, line: 343, baseType: !812, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !250, line: 37, size: 128, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !813, file: !250, line: 39, baseType: !812, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !813, file: !250, line: 40, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !808, file: !440, line: 344, baseType: !819, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !250, line: 45, size: 320, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !250, line: 47, baseType: !819, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !820, file: !250, line: 48, baseType: !824, size: 256, offset: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !825)
!825 = !{!826, !828, !829, !834}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !824, file: !6, line: 1884, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !6, line: 1885, baseType: !827, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !824, file: !6, line: 1891, baseType: !830, size: 64, offset: 128)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !6, line: 1891, size: 64, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !830, file: !6, line: 1891, baseType: !783, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !830, file: !6, line: 1891, baseType: !488, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !824, file: !6, line: 1892, baseType: !817, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !805, file: !440, line: 359, baseType: !836, size: 64, offset: 384)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 64, elements: !571)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !785, file: !440, line: 740, baseType: !838, size: 512)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !440, line: 365, size: 512, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !838, file: !440, line: 368, baseType: !808, size: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !838, file: !440, line: 373, baseType: !488, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !838, file: !440, line: 374, baseType: !488, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !785, file: !440, line: 741, baseType: !844, size: 576)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !440, line: 380, size: 576, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !844, file: !440, line: 383, baseType: !838, size: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !844, file: !440, line: 389, baseType: !836, size: 64, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !785, file: !440, line: 742, baseType: !849, size: 320)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !440, line: 395, size: 320, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !849, file: !440, line: 397, baseType: !788, size: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !849, file: !440, line: 400, baseType: !773, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !785, file: !440, line: 743, baseType: !854, size: 448)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !440, line: 406, size: 448, elements: !855)
!855 = !{!856, !857, !858, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !854, file: !440, line: 408, baseType: !788, size: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !854, file: !440, line: 412, baseType: !488, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !854, file: !440, line: 420, baseType: !488, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !854, file: !440, line: 423, baseType: !773, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !785, file: !440, line: 744, baseType: !861, size: 384)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !440, line: 429, size: 384, elements: !862)
!862 = !{!863, !864, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !861, file: !440, line: 431, baseType: !788, size: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !861, file: !440, line: 434, baseType: !488, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !861, file: !440, line: 437, baseType: !773, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !785, file: !440, line: 745, baseType: !867, size: 384)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !440, line: 443, size: 384, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !867, file: !440, line: 445, baseType: !788, size: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !867, file: !440, line: 449, baseType: !488, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !867, file: !440, line: 453, baseType: !773, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !785, file: !440, line: 746, baseType: !873, size: 320)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !440, line: 459, size: 320, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !873, file: !440, line: 461, baseType: !788, size: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !873, file: !440, line: 464, baseType: !488, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !785, file: !440, line: 747, baseType: !878, size: 768)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !440, line: 469, size: 768, elements: !879)
!879 = !{!880, !881, !882, !883, !884}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !878, file: !440, line: 471, baseType: !788, size: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !878, file: !440, line: 474, baseType: !7, size: 32, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !878, file: !440, line: 475, baseType: !7, size: 32, offset: 288)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !878, file: !440, line: 478, baseType: !488, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !878, file: !440, line: 481, baseType: !885, size: 384, offset: 384)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 384, elements: !571)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !886, file: !6, line: 1920, baseType: !824, size: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !886, file: !6, line: 1921, baseType: !488, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !886, file: !6, line: 1922, baseType: !597, size: 32, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !785, file: !440, line: 748, baseType: !892, size: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !440, line: 487, size: 320, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !892, file: !440, line: 490, baseType: !788, size: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !892, file: !440, line: 494, baseType: !481, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !785, file: !440, line: 749, baseType: !897, size: 384)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !440, line: 500, size: 384, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !897, file: !440, line: 502, baseType: !788, size: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !897, file: !440, line: 506, baseType: !773, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !897, file: !440, line: 510, baseType: !773, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !785, file: !440, line: 750, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !440, line: 529, size: 320, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !903, file: !440, line: 531, baseType: !788, size: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !903, file: !440, line: 540, baseType: !773, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !785, file: !440, line: 751, baseType: !908, size: 704)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !440, line: 546, size: 704, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !908, file: !440, line: 549, baseType: !838, size: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !908, file: !440, line: 553, baseType: !486, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !908, file: !440, line: 557, baseType: !480, size: 8, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !908, file: !440, line: 558, baseType: !480, size: 8, offset: 584)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !908, file: !440, line: 559, baseType: !480, size: 8, offset: 592)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !908, file: !440, line: 560, baseType: !480, size: 8, offset: 600)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !908, file: !440, line: 566, baseType: !836, size: 64, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !785, file: !440, line: 752, baseType: !918, size: 384)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !440, line: 571, size: 384, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !918, file: !440, line: 573, baseType: !849, size: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !918, file: !440, line: 577, baseType: !488, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !785, file: !440, line: 753, baseType: !923, size: 576)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !440, line: 600, size: 576, elements: !924)
!924 = !{!925, !926, !927, !930, !939}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !923, file: !440, line: 602, baseType: !849, size: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !923, file: !440, line: 605, baseType: !488, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !923, file: !440, line: 609, baseType: !928, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !929, line: 46, baseType: !542)
!929 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!930 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !923, file: !440, line: 612, baseType: !931, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !440, line: 581, size: 320, elements: !933)
!933 = !{!934, !935, !936, !937, !938}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !932, file: !440, line: 583, baseType: !39, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !932, file: !440, line: 586, baseType: !488, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !932, file: !440, line: 589, baseType: !488, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !932, file: !440, line: 592, baseType: !488, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !932, file: !440, line: 595, baseType: !488, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !923, file: !440, line: 616, baseType: !773, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !785, file: !440, line: 754, baseType: !941, size: 512)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !440, line: 622, size: 512, elements: !942)
!942 = !{!943, !944, !945, !946}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !941, file: !440, line: 624, baseType: !849, size: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !941, file: !440, line: 628, baseType: !488, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !941, file: !440, line: 632, baseType: !488, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !941, file: !440, line: 636, baseType: !488, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !785, file: !440, line: 755, baseType: !948, size: 704)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !440, line: 642, size: 704, elements: !949)
!949 = !{!950, !951, !952, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !948, file: !440, line: 644, baseType: !941, size: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !948, file: !440, line: 648, baseType: !488, size: 64, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !948, file: !440, line: 652, baseType: !488, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !948, file: !440, line: 653, baseType: !488, size: 64, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !785, file: !440, line: 756, baseType: !955, size: 448)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !440, line: 663, size: 448, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !955, file: !440, line: 665, baseType: !849, size: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !955, file: !440, line: 668, baseType: !488, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !955, file: !440, line: 673, baseType: !488, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !785, file: !440, line: 757, baseType: !961, size: 384)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !440, line: 694, size: 384, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !961, file: !440, line: 696, baseType: !849, size: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !961, file: !440, line: 699, baseType: !488, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !785, file: !440, line: 758, baseType: !966, size: 384)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !440, line: 681, size: 384, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !966, file: !440, line: 683, baseType: !788, size: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !966, file: !440, line: 686, baseType: !488, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !966, file: !440, line: 689, baseType: !488, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !785, file: !440, line: 759, baseType: !972, size: 384)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !440, line: 707, size: 384, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !972, file: !440, line: 709, baseType: !788, size: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !972, file: !440, line: 712, baseType: !488, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !972, file: !440, line: 712, baseType: !488, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !785, file: !440, line: 760, baseType: !978, size: 320)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !440, line: 718, size: 320, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !978, file: !440, line: 720, baseType: !788, size: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !978, file: !440, line: 723, baseType: !488, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !780, file: !440, line: 138, baseType: !779, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !440, line: 139, baseType: !779, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !775, file: !440, line: 146, baseType: !778, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !775, file: !440, line: 152, baseType: !773, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !770, file: !234, line: 130, baseType: !647, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !765, file: !234, line: 134, baseType: !485, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !765, file: !234, line: 137, baseType: !488, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !765, file: !234, line: 138, baseType: !597, size: 32, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !765, file: !234, line: 142, baseType: !7, size: 32, offset: 352)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !234, line: 144, baseType: !481, size: 32, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !765, file: !234, line: 145, baseType: !481, size: 32, offset: 416)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !765, file: !234, line: 146, baseType: !994, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !234, line: 119, baseType: !544)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !748, file: !234, line: 220, baseType: !751, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !748, file: !234, line: 223, baseType: !485, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !748, file: !234, line: 226, baseType: !998, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !234, line: 185, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !748, file: !234, line: 229, baseType: !1001, size: 128, offset: 256)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 128, elements: !1004)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !234, line: 229, flags: DIFlagFwdDecl)
!1004 = !{!1005}
!1005 = !DISubrange(count: 2)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !748, file: !234, line: 232, baseType: !747, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !748, file: !234, line: 233, baseType: !747, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !748, file: !234, line: 238, baseType: !1009, size: 64, offset: 512)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !234, line: 235, size: 64, elements: !1010)
!1010 = !{!1011, !1017}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1009, file: !234, line: 236, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !234, line: 273, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1013, file: !234, line: 275, baseType: !773, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1013, file: !234, line: 278, baseType: !773, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1009, file: !234, line: 237, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !234, line: 259, size: 320, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1019, file: !234, line: 261, baseType: !647, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1019, file: !234, line: 262, baseType: !647, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1019, file: !234, line: 266, baseType: !647, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1019, file: !234, line: 267, baseType: !647, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1019, file: !234, line: 270, baseType: !481, size: 32, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !748, file: !234, line: 241, baseType: !994, size: 64, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !748, file: !234, line: 244, baseType: !481, size: 32, offset: 640)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !748, file: !234, line: 247, baseType: !481, size: 32, offset: 672)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !748, file: !234, line: 250, baseType: !481, size: 32, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !748, file: !234, line: 253, baseType: !481, size: 32, offset: 736)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !234, line: 256, baseType: !481, size: 32, offset: 768)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !743, file: !234, line: 378, baseType: !746, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !743, file: !234, line: 381, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !234, line: 282, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !234, line: 282, size: 128, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1036, file: !234, line: 282, baseType: !1039, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !234, line: 281, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !234, line: 281, size: 128, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1040, file: !234, line: 281, baseType: !7, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1040, file: !234, line: 281, baseType: !7, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1040, file: !234, line: 281, baseType: !1045, size: 64, offset: 64)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 64, elements: !571)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !743, file: !234, line: 384, baseType: !481, size: 32, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !743, file: !234, line: 387, baseType: !481, size: 32, offset: 224)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !743, file: !234, line: 390, baseType: !481, size: 32, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !743, file: !234, line: 394, baseType: !1034, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !743, file: !234, line: 396, baseType: !233, size: 32, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !743, file: !234, line: 399, baseType: !1052, size: 64, offset: 416)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !1004)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !743, file: !234, line: 402, baseType: !1054, size: 64, offset: 480)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1004)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !743, file: !234, line: 406, baseType: !481, size: 32, offset: 544)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !743, file: !234, line: 409, baseType: !481, size: 32, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !735, file: !736, line: 470, baseType: !774, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !735, file: !736, line: 473, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !686, line: 39, size: 1152, elements: !1061)
!1061 = !{!1062, !1112, !1125, !1137, !1138, !1207, !1208, !1212, !1213, !1214, !1215, !1216}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1060, file: !686, line: 41, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1064, line: 144, baseType: !1065)
!1064 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1064, line: 100, size: 896, elements: !1067)
!1067 = !{!1068, !1076, !1081, !1086, !1088, !1089, !1090, !1091, !1092, !1093, !1098, !1100, !1101, !1106, !1111}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1066, file: !1064, line: 102, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1064, line: 52, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1064, line: 47, baseType: !7)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1066, file: !1064, line: 105, baseType: !1077, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1064, line: 59, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!481, !1074, !1074}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1066, file: !1064, line: 108, baseType: !1082, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1064, line: 63, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !485}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1066, file: !1064, line: 111, baseType: !1087, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1066, file: !1064, line: 114, baseType: !928, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1066, file: !1064, line: 117, baseType: !928, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1066, file: !1064, line: 120, baseType: !928, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1066, file: !1064, line: 124, baseType: !7, size: 32, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1066, file: !1064, line: 128, baseType: !7, size: 32, offset: 480)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1066, file: !1064, line: 131, baseType: !1094, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1064, line: 75, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!485, !928, !928}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1066, file: !1064, line: 132, baseType: !1099, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1064, line: 78, baseType: !1083)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1066, file: !1064, line: 135, baseType: !485, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1066, file: !1064, line: 136, baseType: !1102, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1064, line: 82, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!485, !485, !928, !928}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1066, file: !1064, line: 137, baseType: !1107, size: 64, offset: 768)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1064, line: 83, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !485, !485}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1066, file: !1064, line: 141, baseType: !7, size: 32, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1060, file: !686, line: 48, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !440, line: 35, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !440, line: 35, size: 128, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1115, file: !440, line: 35, baseType: !1118, size: 128)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !440, line: 33, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !440, line: 33, size: 128, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1119, file: !440, line: 33, baseType: !7, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1119, file: !440, line: 33, baseType: !7, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1119, file: !440, line: 33, baseType: !1124, size: 64, offset: 64)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 64, elements: !571)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1060, file: !686, line: 51, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1128, file: !6, line: 183, baseType: !1131, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1132, file: !6, line: 182, baseType: !7, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1132, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1132, file: !6, line: 182, baseType: !836, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1060, file: !686, line: 54, baseType: !488, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1060, file: !686, line: 57, baseType: !1139, size: 128, offset: 256)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1140, line: 31, size: 128, elements: !1141)
!1140 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1139, file: !1140, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1139, file: !1140, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1139, file: !1140, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1139, file: !1140, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1139, file: !1140, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1139, file: !1140, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1139, file: !1140, line: 56, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !489, line: 47, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1152, line: 75, size: 256, elements: !1153)
!1152 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1153 = !{!1154, !1166, !1167, !1168}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1151, file: !1152, line: 76, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1152, line: 68, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1152, line: 63, size: 320, elements: !1158)
!1158 = !{!1159, !1161, !1162, !1163}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1157, file: !1152, line: 64, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1157, file: !1152, line: 65, baseType: !1160, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1157, file: !1152, line: 66, baseType: !7, size: 32, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1157, file: !1152, line: 67, baseType: !1164, size: 128, offset: 192)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 128, elements: !1004)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1152, line: 29, baseType: !542)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1151, file: !1152, line: 77, baseType: !1155, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1151, file: !1152, line: 78, baseType: !7, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1151, file: !1152, line: 79, baseType: !1169, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1152, line: 49, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1152, line: 45, size: 832, elements: !1172)
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1171, file: !1152, line: 46, baseType: !1160, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1171, file: !1152, line: 47, baseType: !1150, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1171, file: !1152, line: 48, baseType: !1176, size: 704, offset: 128)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1177, line: 164, size: 704, elements: !1178)
!1177 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1178 = !{!1179, !1180, !1190, !1191, !1192, !1193, !1194, !1195, !1199, !1203, !1204, !1205, !1206}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1176, file: !1177, line: 166, baseType: !544, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1176, file: !1177, line: 167, baseType: !1181, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1177, line: 157, size: 192, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1182, file: !1177, line: 159, baseType: !483, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1182, file: !1177, line: 160, baseType: !1181, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1182, file: !1177, line: 161, baseType: !1187, size: 32, offset: 128)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 32, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 4)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1176, file: !1177, line: 168, baseType: !483, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1176, file: !1177, line: 169, baseType: !483, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1176, file: !1177, line: 170, baseType: !483, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1176, file: !1177, line: 171, baseType: !544, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1176, file: !1177, line: 172, baseType: !481, size: 32, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1176, file: !1177, line: 176, baseType: !1196, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1181, !485, !544}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1176, file: !1177, line: 177, baseType: !1200, size: 64, offset: 512)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !485, !1181}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1176, file: !1177, line: 178, baseType: !485, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1176, file: !1177, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1176, file: !1177, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1176, file: !1177, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1060, file: !686, line: 60, baseType: !1139, size: 128, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1060, file: !686, line: 64, baseType: !1209, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1211, line: 33, flags: DIFlagFwdDecl)
!1211 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1060, file: !686, line: 67, baseType: !488, size: 64, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1060, file: !686, line: 73, baseType: !1063, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1060, file: !686, line: 77, baseType: !1149, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1060, file: !686, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1060, file: !686, line: 82, baseType: !1217, size: 320, offset: 832)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !250, line: 62, size: 320, elements: !1218)
!1218 = !{!1219, !1225, !1226, !1227, !1228, !1229}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1217, file: !250, line: 63, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !250, line: 56, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1221, file: !250, line: 57, baseType: !1220, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1221, file: !250, line: 58, baseType: !570, size: 8, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1217, file: !250, line: 64, baseType: !7, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1217, file: !250, line: 66, baseType: !7, size: 32, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1217, file: !250, line: 68, baseType: !480, size: 8, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1217, file: !250, line: 70, baseType: !812, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1217, file: !250, line: 71, baseType: !819, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !735, file: !736, line: 476, baseType: !1231, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !736, line: 476, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !735, file: !736, line: 479, baseType: !1063, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !735, file: !736, line: 484, baseType: !488, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !735, file: !736, line: 488, baseType: !488, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !735, file: !736, line: 493, baseType: !488, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !735, file: !736, line: 496, baseType: !488, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !735, file: !736, line: 501, baseType: !1239, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !245, line: 2355, size: 576, elements: !1241)
!1241 = !{!1242, !1245, !1246, !1247, !1248, !1250, !1251, !1256, !1257, !1258, !1259, !1260, !1261}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1240, file: !245, line: 2356, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !245, line: 2356, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1240, file: !245, line: 2357, baseType: !486, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1240, file: !245, line: 2358, baseType: !481, size: 32, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1240, file: !245, line: 2359, baseType: !481, size: 32, offset: 160)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1240, file: !245, line: 2360, baseType: !1249, size: 128, offset: 192)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 128, elements: !1188)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1240, file: !245, line: 2364, baseType: !481, size: 32, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1240, file: !245, line: 2367, baseType: !1252, size: 128, offset: 384)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !245, line: 2349, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1252, file: !245, line: 2351, baseType: !647, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1252, file: !245, line: 2352, baseType: !544, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1240, file: !245, line: 2371, baseType: !244, size: 32, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1240, file: !245, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1240, file: !245, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1240, file: !245, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1240, file: !245, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1240, file: !245, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !735, file: !736, line: 504, baseType: !1263, size: 64, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !736, line: 504, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !735, file: !736, line: 507, baseType: !1063, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !735, file: !736, line: 510, baseType: !481, size: 32, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !735, file: !736, line: 513, baseType: !481, size: 32, offset: 864)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !735, file: !736, line: 516, baseType: !597, size: 32, offset: 896)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !735, file: !736, line: 519, baseType: !597, size: 32, offset: 928)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !735, file: !736, line: 522, baseType: !7, size: 32, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !735, file: !736, line: 523, baseType: !7, size: 32, offset: 992)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !735, file: !736, line: 528, baseType: !486, size: 64, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !735, file: !736, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !735, file: !736, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !735, file: !736, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !735, file: !736, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !735, file: !736, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !735, file: !736, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !735, file: !736, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !735, file: !736, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !735, file: !736, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !735, file: !736, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !735, file: !736, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !735, file: !736, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !735, file: !736, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !735, file: !736, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !735, file: !736, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !735, file: !736, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !730, file: !6, line: 3254, baseType: !488, size: 64, offset: 1536)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !730, file: !6, line: 3257, baseType: !488, size: 64, offset: 1600)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !730, file: !6, line: 3258, baseType: !488, size: 64, offset: 1664)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !730, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !730, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !730, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !730, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !730, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !730, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !730, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !730, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !730, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !730, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !730, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !730, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !730, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !730, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !730, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !730, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !730, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !730, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !6, line: 3394, baseType: !1311, size: 1344)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1338, !1339, !1340, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1311, file: !6, line: 2280, baseType: !527, size: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1311, file: !6, line: 2281, baseType: !488, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1311, file: !6, line: 2282, baseType: !488, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1311, file: !6, line: 2283, baseType: !488, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1311, file: !6, line: 2284, baseType: !488, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1311, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1311, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1311, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1311, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1311, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1311, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1311, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1311, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1311, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1311, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1311, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1311, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1311, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1311, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1311, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1311, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1311, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1311, file: !6, line: 2306, baseType: !1336, size: 32, offset: 544)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1337, line: 31, baseType: !481)
!1337 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1311, file: !6, line: 2307, baseType: !488, size: 64, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1311, file: !6, line: 2308, baseType: !488, size: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1311, file: !6, line: 2314, baseType: !1341, size: 64, offset: 704)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1341, file: !6, line: 2310, baseType: !481, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1341, file: !6, line: 2311, baseType: !486, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1341, file: !6, line: 2312, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1311, file: !6, line: 2315, baseType: !488, size: 64, offset: 768)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1311, file: !6, line: 2316, baseType: !488, size: 64, offset: 832)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1311, file: !6, line: 2317, baseType: !488, size: 64, offset: 896)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1311, file: !6, line: 2318, baseType: !488, size: 64, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1311, file: !6, line: 2319, baseType: !488, size: 64, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1311, file: !6, line: 2320, baseType: !488, size: 64, offset: 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1311, file: !6, line: 2321, baseType: !488, size: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1311, file: !6, line: 2322, baseType: !488, size: 64, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1311, file: !6, line: 2324, baseType: !1357, size: 64, offset: 1280)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !491, file: !6, line: 3395, baseType: !1360, size: 320)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1360, file: !6, line: 1470, baseType: !527, size: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1360, file: !6, line: 1471, baseType: !488, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1360, file: !6, line: 1472, baseType: !488, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !491, file: !6, line: 3396, baseType: !1366, size: 320)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1366, file: !6, line: 1483, baseType: !527, size: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1366, file: !6, line: 1484, baseType: !481, size: 32, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1366, file: !6, line: 1485, baseType: !836, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !491, file: !6, line: 3397, baseType: !1372, size: 384)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1372, file: !6, line: 1830, baseType: !527, size: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1372, file: !6, line: 1831, baseType: !597, size: 32, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1372, file: !6, line: 1832, baseType: !488, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1372, file: !6, line: 1835, baseType: !836, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !491, file: !6, line: 3398, baseType: !1379, size: 704)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1390}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1379, file: !6, line: 1899, baseType: !527, size: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1379, file: !6, line: 1902, baseType: !488, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1379, file: !6, line: 1905, baseType: !783, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1379, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1379, file: !6, line: 1911, baseType: !1386, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !686, line: 117, size: 128, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1387, file: !686, line: 120, baseType: !1139, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1379, file: !6, line: 1914, baseType: !824, size: 256, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !491, file: !6, line: 3399, baseType: !1392, size: 704)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1392, file: !6, line: 2009, baseType: !527, size: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1392, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1392, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1392, file: !6, line: 2014, baseType: !597, size: 32, offset: 224)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1392, file: !6, line: 2016, baseType: !488, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1392, file: !6, line: 2017, baseType: !1126, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1392, file: !6, line: 2019, baseType: !488, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1392, file: !6, line: 2020, baseType: !488, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1392, file: !6, line: 2021, baseType: !488, size: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1392, file: !6, line: 2022, baseType: !488, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1392, file: !6, line: 2023, baseType: !488, size: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !491, file: !6, line: 3400, baseType: !1406, size: 832)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1406, file: !6, line: 2431, baseType: !527, size: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1406, file: !6, line: 2433, baseType: !488, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1406, file: !6, line: 2434, baseType: !488, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1406, file: !6, line: 2435, baseType: !488, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1406, file: !6, line: 2436, baseType: !488, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1406, file: !6, line: 2437, baseType: !1126, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1406, file: !6, line: 2438, baseType: !488, size: 64, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1406, file: !6, line: 2440, baseType: !488, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1406, file: !6, line: 2441, baseType: !488, size: 64, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1406, file: !6, line: 2443, baseType: !1418, size: 128, offset: 704)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1419, file: !6, line: 182, baseType: !1131, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !491, file: !6, line: 3401, baseType: !1423, size: 320)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1424)
!1424 = !{!1425, !1426, !1433}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1423, file: !6, line: 3329, baseType: !527, size: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1423, file: !6, line: 3330, baseType: !1427, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1429)
!1429 = !{!1430, !1431, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1428, file: !6, line: 3322, baseType: !1427, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1428, file: !6, line: 3323, baseType: !1427, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1428, file: !6, line: 3324, baseType: !488, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1423, file: !6, line: 3331, baseType: !1427, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !491, file: !6, line: 3402, baseType: !1435, size: 256)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1435, file: !6, line: 1541, baseType: !527, size: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1435, file: !6, line: 1542, baseType: !1439, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1441, file: !6, line: 1538, baseType: !1444, size: 192)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1445, file: !6, line: 1537, baseType: !7, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1445, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1445, file: !6, line: 1537, baseType: !1450, size: 128, offset: 64)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1451, size: 128, elements: !571)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1452, file: !6, line: 1533, baseType: !488, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1452, file: !6, line: 1534, baseType: !488, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !491, file: !6, line: 3403, baseType: !1457, size: 512)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1468, !1469, !1470}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1457, file: !6, line: 1939, baseType: !527, size: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1457, file: !6, line: 1940, baseType: !597, size: 32, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1457, file: !6, line: 1941, baseType: !5, size: 32, offset: 224)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1457, file: !6, line: 1946, baseType: !1463, size: 32, offset: 256)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1464)
!1464 = !{!1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1463, file: !6, line: 1943, baseType: !25, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1463, file: !6, line: 1944, baseType: !32, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1463, file: !6, line: 1945, baseType: !39, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1457, file: !6, line: 1950, baseType: !773, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1457, file: !6, line: 1951, baseType: !773, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1457, file: !6, line: 1953, baseType: !836, size: 64, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !491, file: !6, line: 3404, baseType: !1472, size: 1664)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1472, file: !6, line: 3338, baseType: !527, size: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1472, file: !6, line: 3341, baseType: !1476, size: 1472, offset: 192)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1477, line: 410, size: 1472, elements: !1478)
!1477 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1476, file: !1477, line: 412, baseType: !481, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1476, file: !1477, line: 413, baseType: !481, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1476, file: !1477, line: 414, baseType: !481, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1476, file: !1477, line: 415, baseType: !481, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1476, file: !1477, line: 416, baseType: !481, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1476, file: !1477, line: 417, baseType: !481, size: 32, offset: 160)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1476, file: !1477, line: 418, baseType: !480, size: 8, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1476, file: !1477, line: 419, baseType: !480, size: 8, offset: 200)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1476, file: !1477, line: 420, baseType: !1488, size: 8, offset: 208)
!1488 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1476, file: !1477, line: 421, baseType: !1488, size: 8, offset: 216)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1476, file: !1477, line: 422, baseType: !1488, size: 8, offset: 224)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1476, file: !1477, line: 423, baseType: !1488, size: 8, offset: 232)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1476, file: !1477, line: 424, baseType: !1488, size: 8, offset: 240)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1476, file: !1477, line: 425, baseType: !1488, size: 8, offset: 248)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1476, file: !1477, line: 426, baseType: !1488, size: 8, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1476, file: !1477, line: 427, baseType: !1488, size: 8, offset: 264)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1476, file: !1477, line: 428, baseType: !1488, size: 8, offset: 272)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1476, file: !1477, line: 429, baseType: !1488, size: 8, offset: 280)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1476, file: !1477, line: 430, baseType: !1488, size: 8, offset: 288)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1476, file: !1477, line: 431, baseType: !1488, size: 8, offset: 296)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1476, file: !1477, line: 432, baseType: !1488, size: 8, offset: 304)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1476, file: !1477, line: 433, baseType: !1488, size: 8, offset: 312)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1476, file: !1477, line: 434, baseType: !1488, size: 8, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1476, file: !1477, line: 435, baseType: !1488, size: 8, offset: 328)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1476, file: !1477, line: 436, baseType: !1488, size: 8, offset: 336)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1476, file: !1477, line: 437, baseType: !1488, size: 8, offset: 344)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1476, file: !1477, line: 438, baseType: !1488, size: 8, offset: 352)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1476, file: !1477, line: 439, baseType: !1488, size: 8, offset: 360)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1476, file: !1477, line: 440, baseType: !1488, size: 8, offset: 368)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1476, file: !1477, line: 441, baseType: !1488, size: 8, offset: 376)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1476, file: !1477, line: 442, baseType: !1488, size: 8, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1476, file: !1477, line: 443, baseType: !1488, size: 8, offset: 392)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1476, file: !1477, line: 444, baseType: !1488, size: 8, offset: 400)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1476, file: !1477, line: 445, baseType: !1488, size: 8, offset: 408)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1476, file: !1477, line: 446, baseType: !1488, size: 8, offset: 416)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1476, file: !1477, line: 447, baseType: !1488, size: 8, offset: 424)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1476, file: !1477, line: 448, baseType: !1488, size: 8, offset: 432)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1476, file: !1477, line: 449, baseType: !1488, size: 8, offset: 440)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1476, file: !1477, line: 450, baseType: !1488, size: 8, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1476, file: !1477, line: 451, baseType: !1488, size: 8, offset: 456)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1476, file: !1477, line: 452, baseType: !1488, size: 8, offset: 464)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1476, file: !1477, line: 453, baseType: !1488, size: 8, offset: 472)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1476, file: !1477, line: 454, baseType: !1488, size: 8, offset: 480)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1476, file: !1477, line: 455, baseType: !1488, size: 8, offset: 488)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1476, file: !1477, line: 456, baseType: !1488, size: 8, offset: 496)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1476, file: !1477, line: 457, baseType: !1488, size: 8, offset: 504)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1476, file: !1477, line: 458, baseType: !1488, size: 8, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1476, file: !1477, line: 459, baseType: !1488, size: 8, offset: 520)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1476, file: !1477, line: 460, baseType: !1488, size: 8, offset: 528)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1476, file: !1477, line: 461, baseType: !1488, size: 8, offset: 536)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1476, file: !1477, line: 462, baseType: !1488, size: 8, offset: 544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1476, file: !1477, line: 463, baseType: !1488, size: 8, offset: 552)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1476, file: !1477, line: 464, baseType: !1488, size: 8, offset: 560)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1476, file: !1477, line: 465, baseType: !1488, size: 8, offset: 568)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1476, file: !1477, line: 466, baseType: !1488, size: 8, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1476, file: !1477, line: 467, baseType: !1488, size: 8, offset: 584)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1476, file: !1477, line: 468, baseType: !1488, size: 8, offset: 592)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1476, file: !1477, line: 469, baseType: !1488, size: 8, offset: 600)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1476, file: !1477, line: 470, baseType: !1488, size: 8, offset: 608)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1476, file: !1477, line: 471, baseType: !1488, size: 8, offset: 616)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1476, file: !1477, line: 472, baseType: !1488, size: 8, offset: 624)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1476, file: !1477, line: 473, baseType: !1488, size: 8, offset: 632)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1476, file: !1477, line: 474, baseType: !1488, size: 8, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1476, file: !1477, line: 475, baseType: !1488, size: 8, offset: 648)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1476, file: !1477, line: 476, baseType: !1488, size: 8, offset: 656)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1476, file: !1477, line: 477, baseType: !1488, size: 8, offset: 664)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1476, file: !1477, line: 478, baseType: !1488, size: 8, offset: 672)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1476, file: !1477, line: 479, baseType: !1488, size: 8, offset: 680)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1476, file: !1477, line: 480, baseType: !1488, size: 8, offset: 688)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1476, file: !1477, line: 481, baseType: !1488, size: 8, offset: 696)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1476, file: !1477, line: 482, baseType: !1488, size: 8, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1476, file: !1477, line: 483, baseType: !1488, size: 8, offset: 712)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1476, file: !1477, line: 484, baseType: !1488, size: 8, offset: 720)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1476, file: !1477, line: 485, baseType: !1488, size: 8, offset: 728)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1476, file: !1477, line: 486, baseType: !1488, size: 8, offset: 736)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1476, file: !1477, line: 487, baseType: !1488, size: 8, offset: 744)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1476, file: !1477, line: 488, baseType: !1488, size: 8, offset: 752)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1476, file: !1477, line: 489, baseType: !1488, size: 8, offset: 760)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1476, file: !1477, line: 490, baseType: !1488, size: 8, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1476, file: !1477, line: 491, baseType: !1488, size: 8, offset: 776)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1476, file: !1477, line: 492, baseType: !1488, size: 8, offset: 784)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1476, file: !1477, line: 493, baseType: !1488, size: 8, offset: 792)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1476, file: !1477, line: 494, baseType: !1488, size: 8, offset: 800)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1476, file: !1477, line: 495, baseType: !1488, size: 8, offset: 808)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1476, file: !1477, line: 496, baseType: !1488, size: 8, offset: 816)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1476, file: !1477, line: 497, baseType: !1488, size: 8, offset: 824)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1476, file: !1477, line: 498, baseType: !1488, size: 8, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1476, file: !1477, line: 499, baseType: !1488, size: 8, offset: 840)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1476, file: !1477, line: 500, baseType: !1488, size: 8, offset: 848)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1476, file: !1477, line: 501, baseType: !1488, size: 8, offset: 856)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1476, file: !1477, line: 502, baseType: !1488, size: 8, offset: 864)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1476, file: !1477, line: 503, baseType: !1488, size: 8, offset: 872)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1476, file: !1477, line: 504, baseType: !1488, size: 8, offset: 880)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1476, file: !1477, line: 505, baseType: !1488, size: 8, offset: 888)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1476, file: !1477, line: 506, baseType: !1488, size: 8, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1476, file: !1477, line: 507, baseType: !1488, size: 8, offset: 904)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1476, file: !1477, line: 508, baseType: !1488, size: 8, offset: 912)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1476, file: !1477, line: 509, baseType: !1488, size: 8, offset: 920)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1476, file: !1477, line: 510, baseType: !1488, size: 8, offset: 928)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1476, file: !1477, line: 511, baseType: !1488, size: 8, offset: 936)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1476, file: !1477, line: 512, baseType: !1488, size: 8, offset: 944)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1476, file: !1477, line: 513, baseType: !1488, size: 8, offset: 952)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1476, file: !1477, line: 514, baseType: !1488, size: 8, offset: 960)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1476, file: !1477, line: 515, baseType: !1488, size: 8, offset: 968)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1476, file: !1477, line: 516, baseType: !1488, size: 8, offset: 976)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1476, file: !1477, line: 517, baseType: !1488, size: 8, offset: 984)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1476, file: !1477, line: 518, baseType: !1488, size: 8, offset: 992)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1476, file: !1477, line: 519, baseType: !1488, size: 8, offset: 1000)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1476, file: !1477, line: 520, baseType: !1488, size: 8, offset: 1008)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1476, file: !1477, line: 521, baseType: !1488, size: 8, offset: 1016)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1476, file: !1477, line: 522, baseType: !1488, size: 8, offset: 1024)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1476, file: !1477, line: 523, baseType: !1488, size: 8, offset: 1032)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1476, file: !1477, line: 524, baseType: !1488, size: 8, offset: 1040)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1476, file: !1477, line: 525, baseType: !1488, size: 8, offset: 1048)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1476, file: !1477, line: 526, baseType: !1488, size: 8, offset: 1056)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1476, file: !1477, line: 527, baseType: !1488, size: 8, offset: 1064)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1476, file: !1477, line: 528, baseType: !1488, size: 8, offset: 1072)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1476, file: !1477, line: 529, baseType: !1488, size: 8, offset: 1080)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1476, file: !1477, line: 530, baseType: !1488, size: 8, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1476, file: !1477, line: 531, baseType: !1488, size: 8, offset: 1096)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1476, file: !1477, line: 532, baseType: !1488, size: 8, offset: 1104)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1476, file: !1477, line: 533, baseType: !1488, size: 8, offset: 1112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1476, file: !1477, line: 534, baseType: !1488, size: 8, offset: 1120)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1476, file: !1477, line: 535, baseType: !1488, size: 8, offset: 1128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1476, file: !1477, line: 536, baseType: !1488, size: 8, offset: 1136)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1476, file: !1477, line: 537, baseType: !1488, size: 8, offset: 1144)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1476, file: !1477, line: 538, baseType: !1488, size: 8, offset: 1152)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1476, file: !1477, line: 539, baseType: !1488, size: 8, offset: 1160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1476, file: !1477, line: 540, baseType: !1488, size: 8, offset: 1168)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1476, file: !1477, line: 541, baseType: !1488, size: 8, offset: 1176)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1476, file: !1477, line: 542, baseType: !1488, size: 8, offset: 1184)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1476, file: !1477, line: 543, baseType: !1488, size: 8, offset: 1192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1476, file: !1477, line: 544, baseType: !1488, size: 8, offset: 1200)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1476, file: !1477, line: 545, baseType: !1488, size: 8, offset: 1208)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1476, file: !1477, line: 546, baseType: !1488, size: 8, offset: 1216)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1476, file: !1477, line: 547, baseType: !1488, size: 8, offset: 1224)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1476, file: !1477, line: 548, baseType: !1488, size: 8, offset: 1232)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1476, file: !1477, line: 549, baseType: !1488, size: 8, offset: 1240)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1476, file: !1477, line: 550, baseType: !1488, size: 8, offset: 1248)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1476, file: !1477, line: 551, baseType: !1488, size: 8, offset: 1256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1476, file: !1477, line: 552, baseType: !1488, size: 8, offset: 1264)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1476, file: !1477, line: 553, baseType: !1488, size: 8, offset: 1272)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1476, file: !1477, line: 554, baseType: !1488, size: 8, offset: 1280)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1476, file: !1477, line: 555, baseType: !1488, size: 8, offset: 1288)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1476, file: !1477, line: 556, baseType: !1488, size: 8, offset: 1296)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1476, file: !1477, line: 557, baseType: !1488, size: 8, offset: 1304)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1476, file: !1477, line: 558, baseType: !1488, size: 8, offset: 1312)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1476, file: !1477, line: 559, baseType: !1488, size: 8, offset: 1320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1476, file: !1477, line: 560, baseType: !1488, size: 8, offset: 1328)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1476, file: !1477, line: 561, baseType: !1488, size: 8, offset: 1336)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1476, file: !1477, line: 562, baseType: !1488, size: 8, offset: 1344)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1476, file: !1477, line: 563, baseType: !1488, size: 8, offset: 1352)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1476, file: !1477, line: 564, baseType: !1488, size: 8, offset: 1360)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1476, file: !1477, line: 565, baseType: !1488, size: 8, offset: 1368)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1476, file: !1477, line: 566, baseType: !1488, size: 8, offset: 1376)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1476, file: !1477, line: 567, baseType: !1488, size: 8, offset: 1384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1476, file: !1477, line: 568, baseType: !1488, size: 8, offset: 1392)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1476, file: !1477, line: 569, baseType: !1488, size: 8, offset: 1400)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1476, file: !1477, line: 570, baseType: !1488, size: 8, offset: 1408)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1476, file: !1477, line: 571, baseType: !1488, size: 8, offset: 1416)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1476, file: !1477, line: 572, baseType: !1488, size: 8, offset: 1424)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1476, file: !1477, line: 573, baseType: !1488, size: 8, offset: 1432)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1476, file: !1477, line: 574, baseType: !1488, size: 8, offset: 1440)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !491, file: !6, line: 3405, baseType: !1644, size: 384)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1644, file: !6, line: 3353, baseType: !527, size: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1644, file: !6, line: 3356, baseType: !1648, size: 192, offset: 192)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1477, line: 578, size: 192, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1648, file: !1477, line: 580, baseType: !481, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1648, file: !1477, line: 581, baseType: !481, size: 32, offset: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1648, file: !1477, line: 582, baseType: !481, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1648, file: !1477, line: 583, baseType: !481, size: 32, offset: 96)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1648, file: !1477, line: 584, baseType: !480, size: 8, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1648, file: !1477, line: 585, baseType: !480, size: 8, offset: 136)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1648, file: !1477, line: 586, baseType: !480, size: 8, offset: 144)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1648, file: !1477, line: 587, baseType: !480, size: 8, offset: 152)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1648, file: !1477, line: 588, baseType: !480, size: 8, offset: 160)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1648, file: !1477, line: 589, baseType: !480, size: 8, offset: 168)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1648, file: !1477, line: 590, baseType: !480, size: 8, offset: 176)
!1661 = !{!0}
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !257, line: 156, size: 640, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1662, file: !257, line: 158, baseType: !1665, size: 640)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !257, line: 114, size: 640, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1673, !1677, !1679, !1680, !1681, !1683, !1684, !1685, !1686, !1687}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1665, file: !257, line: 117, baseType: !256, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1665, file: !257, line: 121, baseType: !486, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1665, file: !257, line: 125, baseType: !1670, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!480}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1665, file: !257, line: 130, baseType: !1674, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!7}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1665, file: !257, line: 133, baseType: !1678, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1665, file: !257, line: 136, baseType: !1678, size: 64, offset: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1665, file: !257, line: 139, baseType: !481, size: 32, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1665, file: !257, line: 143, baseType: !1682, size: 32, offset: 416)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !264, line: 80, baseType: !263)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1665, file: !257, line: 146, baseType: !7, size: 32, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1665, file: !257, line: 147, baseType: !7, size: 32, offset: 480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1665, file: !257, line: 148, baseType: !7, size: 32, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1665, file: !257, line: 151, baseType: !7, size: 32, offset: 544)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1665, file: !257, line: 152, baseType: !7, size: 32, offset: 576)
!1688 = !{i32 2, !"Dwarf Version", i32 4}
!1689 = !{i32 2, !"Debug Info Version", i32 3}
!1690 = !{i32 1, !"wchar_size", i32 4}
!1691 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1692 = distinct !DISubprogram(name: "vprintf", scope: !1693, file: !1693, line: 39, type: !1694, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1704)
!1693 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!481, !1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !486)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1703}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1698, file: !3, baseType: !7, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1698, file: !3, baseType: !7, size: 32, offset: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1698, file: !3, baseType: !485, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1698, file: !3, baseType: !485, size: 64, offset: 128)
!1704 = !{!1705, !1706}
!1705 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1692, file: !1693, line: 39, type: !1696)
!1706 = !DILocalVariable(name: "__arg", arg: 2, scope: !1692, file: !1693, line: 39, type: !1697)
!1707 = !DILocation(line: 0, scope: !1692)
!1708 = !DILocation(line: 41, column: 20, scope: !1692)
!1709 = !DILocation(line: 41, column: 10, scope: !1692)
!1710 = !DILocation(line: 41, column: 3, scope: !1692)
!1711 = distinct !DISubprogram(name: "getchar", scope: !1693, file: !1693, line: 47, type: !1712, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!481}
!1714 = !{}
!1715 = !DILocation(line: 49, column: 16, scope: !1711)
!1716 = !DILocation(line: 49, column: 10, scope: !1711)
!1717 = !DILocation(line: 49, column: 3, scope: !1711)
!1718 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1693, file: !1693, line: 56, type: !1719, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1772)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!481, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1723, line: 7, baseType: !1724)
!1723 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1725, line: 49, size: 1728, elements: !1726)
!1725 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1742, !1744, !1745, !1746, !1749, !1751, !1752, !1753, !1756, !1758, !1761, !1764, !1765, !1766, !1767, !1768}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1724, file: !1725, line: 51, baseType: !481, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1724, file: !1725, line: 54, baseType: !483, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1724, file: !1725, line: 55, baseType: !483, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1724, file: !1725, line: 56, baseType: !483, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1724, file: !1725, line: 57, baseType: !483, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1724, file: !1725, line: 58, baseType: !483, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1724, file: !1725, line: 59, baseType: !483, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1724, file: !1725, line: 60, baseType: !483, size: 64, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1724, file: !1725, line: 61, baseType: !483, size: 64, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1724, file: !1725, line: 64, baseType: !483, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1724, file: !1725, line: 65, baseType: !483, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1724, file: !1725, line: 66, baseType: !483, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1724, file: !1725, line: 68, baseType: !1740, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1725, line: 36, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1724, file: !1725, line: 70, baseType: !1743, size: 64, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1724, file: !1725, line: 72, baseType: !481, size: 32, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1724, file: !1725, line: 73, baseType: !481, size: 32, offset: 928)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1724, file: !1725, line: 74, baseType: !1747, size: 64, offset: 960)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1748, line: 152, baseType: !544)
!1748 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1724, file: !1725, line: 77, baseType: !1750, size: 16, offset: 1024)
!1750 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1724, file: !1725, line: 78, baseType: !1488, size: 8, offset: 1040)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1724, file: !1725, line: 79, baseType: !570, size: 8, offset: 1048)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1724, file: !1725, line: 81, baseType: !1754, size: 64, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1725, line: 43, baseType: null)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1724, file: !1725, line: 89, baseType: !1757, size: 64, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1748, line: 153, baseType: !544)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1724, file: !1725, line: 91, baseType: !1759, size: 64, offset: 1216)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1725, line: 37, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1724, file: !1725, line: 92, baseType: !1762, size: 64, offset: 1280)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1725, line: 38, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1724, file: !1725, line: 93, baseType: !1743, size: 64, offset: 1344)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1724, file: !1725, line: 94, baseType: !485, size: 64, offset: 1408)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1724, file: !1725, line: 95, baseType: !928, size: 64, offset: 1472)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1724, file: !1725, line: 96, baseType: !481, size: 32, offset: 1536)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1724, file: !1725, line: 98, baseType: !1769, size: 160, offset: 1568)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 160, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 20)
!1772 = !{!1773}
!1773 = !DILocalVariable(name: "__fp", arg: 1, scope: !1718, file: !1693, line: 56, type: !1721)
!1774 = !DILocation(line: 0, scope: !1718)
!1775 = !DILocation(line: 58, column: 10, scope: !1718)
!1776 = !DILocation(line: 58, column: 3, scope: !1718)
!1777 = distinct !DISubprogram(name: "getc_unlocked", scope: !1693, file: !1693, line: 66, type: !1719, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1778)
!1778 = !{!1779}
!1779 = !DILocalVariable(name: "__fp", arg: 1, scope: !1777, file: !1693, line: 66, type: !1721)
!1780 = !DILocation(line: 0, scope: !1777)
!1781 = !DILocation(line: 68, column: 10, scope: !1777)
!1782 = !DILocation(line: 68, column: 3, scope: !1777)
!1783 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1693, file: !1693, line: 73, type: !1712, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1784 = !DILocation(line: 75, column: 10, scope: !1783)
!1785 = !DILocation(line: 75, column: 3, scope: !1783)
!1786 = distinct !DISubprogram(name: "putchar", scope: !1693, file: !1693, line: 82, type: !1787, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!481, !481}
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "__c", arg: 1, scope: !1786, file: !1693, line: 82, type: !481)
!1791 = !DILocation(line: 0, scope: !1786)
!1792 = !DILocation(line: 84, column: 21, scope: !1786)
!1793 = !DILocation(line: 84, column: 10, scope: !1786)
!1794 = !DILocation(line: 84, column: 3, scope: !1786)
!1795 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1693, file: !1693, line: 91, type: !1796, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!481, !481, !1721}
!1798 = !{!1799, !1800}
!1799 = !DILocalVariable(name: "__c", arg: 1, scope: !1795, file: !1693, line: 91, type: !481)
!1800 = !DILocalVariable(name: "__stream", arg: 2, scope: !1795, file: !1693, line: 91, type: !1721)
!1801 = !DILocation(line: 0, scope: !1795)
!1802 = !DILocation(line: 93, column: 10, scope: !1795)
!1803 = !DILocation(line: 93, column: 3, scope: !1795)
!1804 = distinct !DISubprogram(name: "putc_unlocked", scope: !1693, file: !1693, line: 101, type: !1796, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1805)
!1805 = !{!1806, !1807}
!1806 = !DILocalVariable(name: "__c", arg: 1, scope: !1804, file: !1693, line: 101, type: !481)
!1807 = !DILocalVariable(name: "__stream", arg: 2, scope: !1804, file: !1693, line: 101, type: !1721)
!1808 = !DILocation(line: 0, scope: !1804)
!1809 = !DILocation(line: 103, column: 10, scope: !1804)
!1810 = !DILocation(line: 103, column: 3, scope: !1804)
!1811 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1693, file: !1693, line: 108, type: !1787, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1812 = !{!1813}
!1813 = !DILocalVariable(name: "__c", arg: 1, scope: !1811, file: !1693, line: 108, type: !481)
!1814 = !DILocation(line: 0, scope: !1811)
!1815 = !DILocation(line: 110, column: 10, scope: !1811)
!1816 = !DILocation(line: 110, column: 3, scope: !1811)
!1817 = distinct !DISubprogram(name: "getline", scope: !1693, file: !1693, line: 118, type: !1818, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1820, !482, !1821, !1721}
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1748, line: 193, baseType: !544)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!1822 = !{!1823, !1824, !1825}
!1823 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1817, file: !1693, line: 118, type: !482)
!1824 = !DILocalVariable(name: "__n", arg: 2, scope: !1817, file: !1693, line: 118, type: !1821)
!1825 = !DILocalVariable(name: "__stream", arg: 3, scope: !1817, file: !1693, line: 118, type: !1721)
!1826 = !DILocation(line: 0, scope: !1817)
!1827 = !DILocation(line: 120, column: 10, scope: !1817)
!1828 = !DILocation(line: 120, column: 3, scope: !1817)
!1829 = distinct !DISubprogram(name: "feof_unlocked", scope: !1693, file: !1693, line: 128, type: !1719, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1830)
!1830 = !{!1831}
!1831 = !DILocalVariable(name: "__stream", arg: 1, scope: !1829, file: !1693, line: 128, type: !1721)
!1832 = !DILocation(line: 0, scope: !1829)
!1833 = !DILocation(line: 130, column: 10, scope: !1829)
!1834 = !DILocation(line: 130, column: 3, scope: !1829)
!1835 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1693, file: !1693, line: 135, type: !1719, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1836 = !{!1837}
!1837 = !DILocalVariable(name: "__stream", arg: 1, scope: !1835, file: !1693, line: 135, type: !1721)
!1838 = !DILocation(line: 0, scope: !1835)
!1839 = !DILocation(line: 137, column: 10, scope: !1835)
!1840 = !DILocation(line: 137, column: 3, scope: !1835)
!1841 = distinct !DISubprogram(name: "tolower", scope: !1842, file: !1842, line: 207, type: !1787, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1843)
!1842 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "__c", arg: 1, scope: !1841, file: !1842, line: 207, type: !481)
!1845 = !DILocation(line: 0, scope: !1841)
!1846 = !DILocation(line: 209, column: 22, scope: !1841)
!1847 = !DILocation(line: 209, column: 39, scope: !1841)
!1848 = !DILocation(line: 209, column: 38, scope: !1841)
!1849 = !DILocation(line: 209, column: 37, scope: !1841)
!1850 = !DILocation(line: 209, column: 10, scope: !1841)
!1851 = !DILocation(line: 209, column: 3, scope: !1841)
!1852 = distinct !DISubprogram(name: "toupper", scope: !1842, file: !1842, line: 213, type: !1787, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "__c", arg: 1, scope: !1852, file: !1842, line: 213, type: !481)
!1855 = !DILocation(line: 0, scope: !1852)
!1856 = !DILocation(line: 215, column: 22, scope: !1852)
!1857 = !DILocation(line: 215, column: 39, scope: !1852)
!1858 = !DILocation(line: 215, column: 38, scope: !1852)
!1859 = !DILocation(line: 215, column: 37, scope: !1852)
!1860 = !DILocation(line: 215, column: 10, scope: !1852)
!1861 = !DILocation(line: 215, column: 3, scope: !1852)
!1862 = distinct !DISubprogram(name: "atoi", scope: !1863, file: !1863, line: 361, type: !1864, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1866)
!1863 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!481, !486}
!1866 = !{!1867}
!1867 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1862, file: !1863, line: 361, type: !486)
!1868 = !DILocation(line: 0, scope: !1862)
!1869 = !DILocation(line: 363, column: 16, scope: !1862)
!1870 = !DILocation(line: 363, column: 10, scope: !1862)
!1871 = !DILocation(line: 363, column: 3, scope: !1862)
!1872 = distinct !DISubprogram(name: "atol", scope: !1863, file: !1863, line: 366, type: !1873, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!544, !486}
!1875 = !{!1876}
!1876 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1872, file: !1863, line: 366, type: !486)
!1877 = !DILocation(line: 0, scope: !1872)
!1878 = !DILocation(line: 368, column: 10, scope: !1872)
!1879 = !DILocation(line: 368, column: 3, scope: !1872)
!1880 = distinct !DISubprogram(name: "atoll", scope: !1863, file: !1863, line: 373, type: !1881, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1884)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1883, !486}
!1883 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1884 = !{!1885}
!1885 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1880, file: !1863, line: 373, type: !486)
!1886 = !DILocation(line: 0, scope: !1880)
!1887 = !DILocation(line: 375, column: 10, scope: !1880)
!1888 = !DILocation(line: 375, column: 3, scope: !1880)
!1889 = distinct !DISubprogram(name: "bsearch", scope: !1890, file: !1890, line: 20, type: !1891, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!485, !1074, !1074, !928, !928, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1863, line: 808, baseType: !1078)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1895 = !DILocalVariable(name: "__key", arg: 1, scope: !1889, file: !1890, line: 20, type: !1074)
!1896 = !DILocalVariable(name: "__base", arg: 2, scope: !1889, file: !1890, line: 20, type: !1074)
!1897 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1889, file: !1890, line: 20, type: !928)
!1898 = !DILocalVariable(name: "__size", arg: 4, scope: !1889, file: !1890, line: 20, type: !928)
!1899 = !DILocalVariable(name: "__compar", arg: 5, scope: !1889, file: !1890, line: 21, type: !1893)
!1900 = !DILocalVariable(name: "__l", scope: !1889, file: !1890, line: 23, type: !928)
!1901 = !DILocalVariable(name: "__u", scope: !1889, file: !1890, line: 23, type: !928)
!1902 = !DILocalVariable(name: "__idx", scope: !1889, file: !1890, line: 23, type: !928)
!1903 = !DILocalVariable(name: "__p", scope: !1889, file: !1890, line: 24, type: !1074)
!1904 = !DILocalVariable(name: "__comparison", scope: !1889, file: !1890, line: 25, type: !481)
!1905 = !DILocation(line: 0, scope: !1889)
!1906 = !DILocation(line: 29, column: 3, scope: !1889)
!1907 = !DILocation(line: 27, column: 7, scope: !1889)
!1908 = !DILocation(line: 29, column: 14, scope: !1889)
!1909 = !DILocation(line: 31, column: 20, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1889, file: !1890, line: 30, column: 5)
!1911 = !DILocation(line: 31, column: 27, scope: !1910)
!1912 = !DILocation(line: 32, column: 56, scope: !1910)
!1913 = !DILocation(line: 32, column: 47, scope: !1910)
!1914 = !DILocation(line: 33, column: 22, scope: !1910)
!1915 = !DILocation(line: 34, column: 24, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !1890, line: 34, column: 11)
!1917 = !DILocation(line: 34, column: 11, scope: !1910)
!1918 = !DILocation(line: 36, column: 29, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !1890, line: 36, column: 16)
!1920 = !DILocation(line: 36, column: 16, scope: !1916)
!1921 = !DILocation(line: 37, column: 14, scope: !1919)
!1922 = distinct !{!1922, !1906, !1923}
!1923 = !DILocation(line: 40, column: 5, scope: !1889)
!1924 = !DILocation(line: 43, column: 1, scope: !1889)
!1925 = distinct !DISubprogram(name: "atof", scope: !1926, file: !1926, line: 25, type: !1927, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1930)
!1926 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!1929, !486}
!1929 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1925, file: !1926, line: 25, type: !486)
!1932 = !DILocation(line: 0, scope: !1925)
!1933 = !DILocation(line: 27, column: 10, scope: !1925)
!1934 = !DILocation(line: 27, column: 3, scope: !1925)
!1935 = distinct !DISubprogram(name: "strtoimax", scope: !1936, file: !1936, line: 324, type: !1937, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1943)
!1936 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1939, !1696, !1942, !481}
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1940, line: 101, baseType: !1941)
!1940 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1748, line: 72, baseType: !544)
!1942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !482)
!1943 = !{!1944, !1945, !1946}
!1944 = !DILocalVariable(name: "nptr", arg: 1, scope: !1935, file: !1936, line: 324, type: !1696)
!1945 = !DILocalVariable(name: "endptr", arg: 2, scope: !1935, file: !1936, line: 324, type: !1942)
!1946 = !DILocalVariable(name: "base", arg: 3, scope: !1935, file: !1936, line: 324, type: !481)
!1947 = !DILocation(line: 0, scope: !1935)
!1948 = !DILocation(line: 327, column: 10, scope: !1935)
!1949 = !DILocation(line: 327, column: 3, scope: !1935)
!1950 = distinct !DISubprogram(name: "strtoumax", scope: !1936, file: !1936, line: 336, type: !1951, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1953, !1696, !1942, !481}
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1940, line: 102, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1748, line: 73, baseType: !542)
!1955 = !{!1956, !1957, !1958}
!1956 = !DILocalVariable(name: "nptr", arg: 1, scope: !1950, file: !1936, line: 336, type: !1696)
!1957 = !DILocalVariable(name: "endptr", arg: 2, scope: !1950, file: !1936, line: 336, type: !1942)
!1958 = !DILocalVariable(name: "base", arg: 3, scope: !1950, file: !1936, line: 336, type: !481)
!1959 = !DILocation(line: 0, scope: !1950)
!1960 = !DILocation(line: 339, column: 10, scope: !1950)
!1961 = !DILocation(line: 339, column: 3, scope: !1950)
!1962 = distinct !DISubprogram(name: "wcstoimax", scope: !1936, file: !1936, line: 348, type: !1963, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1939, !1965, !1969, !481}
!1965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1936, line: 34, baseType: !481)
!1969 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1970)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "nptr", arg: 1, scope: !1962, file: !1936, line: 348, type: !1965)
!1974 = !DILocalVariable(name: "endptr", arg: 2, scope: !1962, file: !1936, line: 348, type: !1969)
!1975 = !DILocalVariable(name: "base", arg: 3, scope: !1962, file: !1936, line: 348, type: !481)
!1976 = !DILocation(line: 0, scope: !1962)
!1977 = !DILocation(line: 351, column: 10, scope: !1962)
!1978 = !DILocation(line: 351, column: 3, scope: !1962)
!1979 = distinct !DISubprogram(name: "wcstoumax", scope: !1936, file: !1936, line: 362, type: !1980, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1953, !1965, !1969, !481}
!1982 = !{!1983, !1984, !1985}
!1983 = !DILocalVariable(name: "nptr", arg: 1, scope: !1979, file: !1936, line: 362, type: !1965)
!1984 = !DILocalVariable(name: "endptr", arg: 2, scope: !1979, file: !1936, line: 362, type: !1969)
!1985 = !DILocalVariable(name: "base", arg: 3, scope: !1979, file: !1936, line: 362, type: !481)
!1986 = !DILocation(line: 0, scope: !1979)
!1987 = !DILocation(line: 365, column: 10, scope: !1979)
!1988 = !DILocation(line: 365, column: 3, scope: !1979)
!1989 = distinct !DISubprogram(name: "stat", scope: !1990, file: !1990, line: 453, type: !1991, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!1990 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!481, !486, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1995, line: 46, size: 1152, elements: !1996)
!1995 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1996 = !{!1997, !1999, !2001, !2003, !2005, !2007, !2009, !2010, !2011, !2012, !2014, !2016, !2024, !2025, !2026}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1994, file: !1995, line: 48, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1748, line: 145, baseType: !542)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1994, file: !1995, line: 53, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1748, line: 148, baseType: !542)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1994, file: !1995, line: 61, baseType: !2002, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1748, line: 151, baseType: !542)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1994, file: !1995, line: 62, baseType: !2004, size: 32, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1748, line: 150, baseType: !7)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1994, file: !1995, line: 64, baseType: !2006, size: 32, offset: 224)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1748, line: 146, baseType: !7)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1994, file: !1995, line: 65, baseType: !2008, size: 32, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1748, line: 147, baseType: !7)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1994, file: !1995, line: 67, baseType: !481, size: 32, offset: 288)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1994, file: !1995, line: 69, baseType: !1998, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1994, file: !1995, line: 74, baseType: !1747, size: 64, offset: 384)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1994, file: !1995, line: 78, baseType: !2013, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1748, line: 174, baseType: !544)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1994, file: !1995, line: 80, baseType: !2015, size: 64, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1748, line: 179, baseType: !544)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1994, file: !1995, line: 91, baseType: !2017, size: 128, offset: 576)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2018, line: 10, size: 128, elements: !2019)
!2018 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2019 = !{!2020, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2017, file: !2018, line: 12, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1748, line: 160, baseType: !544)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2017, file: !2018, line: 16, baseType: !2023, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1748, line: 196, baseType: !544)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1994, file: !1995, line: 92, baseType: !2017, size: 128, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1994, file: !1995, line: 93, baseType: !2017, size: 128, offset: 832)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1994, file: !1995, line: 106, baseType: !2027, size: 192, offset: 960)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2023, size: 192, elements: !2028)
!2028 = !{!2029}
!2029 = !DISubrange(count: 3)
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "__path", arg: 1, scope: !1989, file: !1990, line: 453, type: !486)
!2032 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1989, file: !1990, line: 453, type: !1993)
!2033 = !DILocation(line: 0, scope: !1989)
!2034 = !DILocation(line: 455, column: 10, scope: !1989)
!2035 = !DILocation(line: 455, column: 3, scope: !1989)
!2036 = distinct !DISubprogram(name: "lstat", scope: !1990, file: !1990, line: 460, type: !1991, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2037 = !{!2038, !2039}
!2038 = !DILocalVariable(name: "__path", arg: 1, scope: !2036, file: !1990, line: 460, type: !486)
!2039 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2036, file: !1990, line: 460, type: !1993)
!2040 = !DILocation(line: 0, scope: !2036)
!2041 = !DILocation(line: 462, column: 10, scope: !2036)
!2042 = !DILocation(line: 462, column: 3, scope: !2036)
!2043 = distinct !DISubprogram(name: "fstat", scope: !1990, file: !1990, line: 467, type: !2044, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!481, !481, !1993}
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "__fd", arg: 1, scope: !2043, file: !1990, line: 467, type: !481)
!2048 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2043, file: !1990, line: 467, type: !1993)
!2049 = !DILocation(line: 0, scope: !2043)
!2050 = !DILocation(line: 469, column: 10, scope: !2043)
!2051 = !DILocation(line: 469, column: 3, scope: !2043)
!2052 = distinct !DISubprogram(name: "fstatat", scope: !1990, file: !1990, line: 474, type: !2053, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!481, !481, !486, !1993, !481}
!2055 = !{!2056, !2057, !2058, !2059}
!2056 = !DILocalVariable(name: "__fd", arg: 1, scope: !2052, file: !1990, line: 474, type: !481)
!2057 = !DILocalVariable(name: "__filename", arg: 2, scope: !2052, file: !1990, line: 474, type: !486)
!2058 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2052, file: !1990, line: 474, type: !1993)
!2059 = !DILocalVariable(name: "__flag", arg: 4, scope: !2052, file: !1990, line: 474, type: !481)
!2060 = !DILocation(line: 0, scope: !2052)
!2061 = !DILocation(line: 477, column: 10, scope: !2052)
!2062 = !DILocation(line: 477, column: 3, scope: !2052)
!2063 = distinct !DISubprogram(name: "mknod", scope: !1990, file: !1990, line: 483, type: !2064, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!481, !486, !2004, !1998}
!2066 = !{!2067, !2068, !2069}
!2067 = !DILocalVariable(name: "__path", arg: 1, scope: !2063, file: !1990, line: 483, type: !486)
!2068 = !DILocalVariable(name: "__mode", arg: 2, scope: !2063, file: !1990, line: 483, type: !2004)
!2069 = !DILocalVariable(name: "__dev", arg: 3, scope: !2063, file: !1990, line: 483, type: !1998)
!2070 = !DILocation(line: 0, scope: !2063)
!2071 = !DILocation(line: 485, column: 10, scope: !2063)
!2072 = !DILocation(line: 485, column: 3, scope: !2063)
!2073 = distinct !DISubprogram(name: "mknodat", scope: !1990, file: !1990, line: 491, type: !2074, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!481, !481, !486, !2004, !1998}
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DILocalVariable(name: "__fd", arg: 1, scope: !2073, file: !1990, line: 491, type: !481)
!2078 = !DILocalVariable(name: "__path", arg: 2, scope: !2073, file: !1990, line: 491, type: !486)
!2079 = !DILocalVariable(name: "__mode", arg: 3, scope: !2073, file: !1990, line: 491, type: !2004)
!2080 = !DILocalVariable(name: "__dev", arg: 4, scope: !2073, file: !1990, line: 491, type: !1998)
!2081 = !DILocation(line: 0, scope: !2073)
!2082 = !DILocation(line: 494, column: 10, scope: !2073)
!2083 = !DILocation(line: 494, column: 3, scope: !2073)
!2084 = distinct !DISubprogram(name: "stat64", scope: !1990, file: !1990, line: 502, type: !2085, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!481, !486, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1995, line: 119, size: 1152, elements: !2089)
!2089 = !{!2090, !2091, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2103, !2104, !2105, !2106}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2088, file: !1995, line: 121, baseType: !1998, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2088, file: !1995, line: 123, baseType: !2092, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1748, line: 149, baseType: !542)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2088, file: !1995, line: 124, baseType: !2002, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2088, file: !1995, line: 125, baseType: !2004, size: 32, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2088, file: !1995, line: 132, baseType: !2006, size: 32, offset: 224)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2088, file: !1995, line: 133, baseType: !2008, size: 32, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2088, file: !1995, line: 135, baseType: !481, size: 32, offset: 288)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2088, file: !1995, line: 136, baseType: !1998, size: 64, offset: 320)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2088, file: !1995, line: 137, baseType: !1747, size: 64, offset: 384)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2088, file: !1995, line: 143, baseType: !2013, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2088, file: !1995, line: 144, baseType: !2102, size: 64, offset: 512)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1748, line: 180, baseType: !544)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2088, file: !1995, line: 152, baseType: !2017, size: 128, offset: 576)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2088, file: !1995, line: 153, baseType: !2017, size: 128, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2088, file: !1995, line: 154, baseType: !2017, size: 128, offset: 832)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2088, file: !1995, line: 164, baseType: !2027, size: 192, offset: 960)
!2107 = !{!2108, !2109}
!2108 = !DILocalVariable(name: "__path", arg: 1, scope: !2084, file: !1990, line: 502, type: !486)
!2109 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2084, file: !1990, line: 502, type: !2087)
!2110 = !DILocation(line: 0, scope: !2084)
!2111 = !DILocation(line: 504, column: 10, scope: !2084)
!2112 = !DILocation(line: 504, column: 3, scope: !2084)
!2113 = distinct !DISubprogram(name: "lstat64", scope: !1990, file: !1990, line: 509, type: !2085, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2114 = !{!2115, !2116}
!2115 = !DILocalVariable(name: "__path", arg: 1, scope: !2113, file: !1990, line: 509, type: !486)
!2116 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2113, file: !1990, line: 509, type: !2087)
!2117 = !DILocation(line: 0, scope: !2113)
!2118 = !DILocation(line: 511, column: 10, scope: !2113)
!2119 = !DILocation(line: 511, column: 3, scope: !2113)
!2120 = distinct !DISubprogram(name: "fstat64", scope: !1990, file: !1990, line: 516, type: !2121, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!481, !481, !2087}
!2123 = !{!2124, !2125}
!2124 = !DILocalVariable(name: "__fd", arg: 1, scope: !2120, file: !1990, line: 516, type: !481)
!2125 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2120, file: !1990, line: 516, type: !2087)
!2126 = !DILocation(line: 0, scope: !2120)
!2127 = !DILocation(line: 518, column: 10, scope: !2120)
!2128 = !DILocation(line: 518, column: 3, scope: !2120)
!2129 = distinct !DISubprogram(name: "fstatat64", scope: !1990, file: !1990, line: 523, type: !2130, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!481, !481, !486, !2087, !481}
!2132 = !{!2133, !2134, !2135, !2136}
!2133 = !DILocalVariable(name: "__fd", arg: 1, scope: !2129, file: !1990, line: 523, type: !481)
!2134 = !DILocalVariable(name: "__filename", arg: 2, scope: !2129, file: !1990, line: 523, type: !486)
!2135 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2129, file: !1990, line: 523, type: !2087)
!2136 = !DILocalVariable(name: "__flag", arg: 4, scope: !2129, file: !1990, line: 523, type: !481)
!2137 = !DILocation(line: 0, scope: !2129)
!2138 = !DILocation(line: 526, column: 10, scope: !2129)
!2139 = !DILocation(line: 526, column: 3, scope: !2129)
!2140 = distinct !DISubprogram(name: "init_ssanames", scope: !3, file: !3, line: 75, type: !2141, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !734, !481}
!2143 = !{!2144, !2145}
!2144 = !DILocalVariable(name: "fn", arg: 1, scope: !2140, file: !3, line: 75, type: !734)
!2145 = !DILocalVariable(name: "size", arg: 2, scope: !2140, file: !3, line: 75, type: !481)
!2146 = !DILocation(line: 0, scope: !2140)
!2147 = !DILocation(line: 77, column: 7, scope: !2140)
!2148 = !DILocation(line: 80, column: 19, scope: !2140)
!2149 = !DILocation(line: 80, column: 3, scope: !2140)
!2150 = !DILocation(line: 80, column: 17, scope: !2140)
!2151 = !DILocation(line: 89, column: 3, scope: !2140)
!2152 = !DILocation(line: 90, column: 3, scope: !2140)
!2153 = !DILocation(line: 90, column: 22, scope: !2140)
!2154 = !DILocation(line: 92, column: 25, scope: !2140)
!2155 = !DILocation(line: 92, column: 3, scope: !2140)
!2156 = !DILocation(line: 92, column: 23, scope: !2140)
!2157 = !DILocation(line: 93, column: 1, scope: !2140)
!2158 = distinct !DISubprogram(name: "VEC_tree_gc_alloc", scope: !6, file: !6, line: 183, type: !2159, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!1126, !481}
!2161 = !{!2162}
!2162 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2158, file: !6, line: 183, type: !481)
!2163 = !DILocation(line: 0, scope: !2158)
!2164 = !DILocation(line: 183, column: 1, scope: !2158)
!2165 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !6, file: !6, line: 182, type: !2166, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!817, !2168, !488}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "vec_", arg: 1, scope: !2165, file: !6, line: 182, type: !2168)
!2171 = !DILocalVariable(name: "obj_", arg: 2, scope: !2165, file: !6, line: 182, type: !488)
!2172 = !DILocalVariable(name: "slot_", scope: !2165, file: !6, line: 182, type: !817)
!2173 = !DILocation(line: 0, scope: !2165)
!2174 = !DILocation(line: 182, column: 1, scope: !2165)
!2175 = distinct !DISubprogram(name: "fini_ssanames", scope: !3, file: !3, line: 98, type: !2176, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null}
!2178 = !DILocation(line: 100, column: 3, scope: !2175)
!2179 = !DILocation(line: 101, column: 3, scope: !2175)
!2180 = !DILocation(line: 101, column: 24, scope: !2175)
!2181 = !DILocation(line: 102, column: 1, scope: !2175)
!2182 = distinct !DISubprogram(name: "VEC_tree_gc_free", scope: !6, file: !6, line: 183, type: !2183, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!2186 = !{!2187}
!2187 = !DILocalVariable(name: "vec_", arg: 1, scope: !2182, file: !6, line: 183, type: !2185)
!2188 = !DILocation(line: 0, scope: !2182)
!2189 = !DILocation(line: 183, column: 1, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2182, file: !6, line: 183, column: 1)
!2191 = !DILocation(line: 183, column: 1, scope: !2182)
!2192 = distinct !DISubprogram(name: "make_ssa_name_fn", scope: !3, file: !3, line: 121, type: !2193, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!488, !734, !488, !783}
!2195 = !{!2196, !2197, !2198, !2199, !2200}
!2196 = !DILocalVariable(name: "fn", arg: 1, scope: !2192, file: !3, line: 121, type: !734)
!2197 = !DILocalVariable(name: "var", arg: 2, scope: !2192, file: !3, line: 121, type: !488)
!2198 = !DILocalVariable(name: "stmt", arg: 3, scope: !2192, file: !3, line: 121, type: !783)
!2199 = !DILocalVariable(name: "t", scope: !2192, file: !3, line: 123, type: !488)
!2200 = !DILocalVariable(name: "imm", scope: !2192, file: !3, line: 124, type: !2201)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !250, line: 30, baseType: !2202)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !6, line: 1893, baseType: !824)
!2204 = !DILocation(line: 0, scope: !2192)
!2205 = !DILocation(line: 126, column: 3, scope: !2192)
!2206 = !DILocation(line: 129, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 129, column: 7)
!2208 = !DILocation(line: 129, column: 7, scope: !2192)
!2209 = !DILocation(line: 132, column: 28, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 130, column: 5)
!2211 = !DILocation(line: 132, column: 26, scope: !2210)
!2212 = !DILocation(line: 139, column: 7, scope: !2210)
!2213 = !DILocation(line: 140, column: 7, scope: !2210)
!2214 = !DILocation(line: 141, column: 5, scope: !2210)
!2215 = !DILocation(line: 144, column: 11, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 143, column: 5)
!2217 = !DILocation(line: 145, column: 30, scope: !2216)
!2218 = !DILocation(line: 145, column: 7, scope: !2216)
!2219 = !DILocation(line: 145, column: 28, scope: !2216)
!2220 = !DILocation(line: 146, column: 7, scope: !2216)
!2221 = !DILocation(line: 0, scope: !2207)
!2222 = !DILocation(line: 152, column: 19, scope: !2192)
!2223 = !DILocation(line: 152, column: 3, scope: !2192)
!2224 = !DILocation(line: 152, column: 17, scope: !2192)
!2225 = !DILocation(line: 153, column: 3, scope: !2192)
!2226 = !DILocation(line: 153, column: 20, scope: !2192)
!2227 = !DILocation(line: 154, column: 3, scope: !2192)
!2228 = !DILocation(line: 154, column: 25, scope: !2192)
!2229 = !DILocation(line: 155, column: 3, scope: !2192)
!2230 = !DILocation(line: 155, column: 25, scope: !2192)
!2231 = !DILocation(line: 156, column: 3, scope: !2192)
!2232 = !DILocation(line: 156, column: 29, scope: !2192)
!2233 = !DILocation(line: 157, column: 31, scope: !2192)
!2234 = !DILocation(line: 158, column: 11, scope: !2192)
!2235 = !DILocation(line: 159, column: 8, scope: !2192)
!2236 = !DILocation(line: 159, column: 12, scope: !2192)
!2237 = !DILocation(line: 160, column: 13, scope: !2192)
!2238 = !DILocation(line: 161, column: 8, scope: !2192)
!2239 = !DILocation(line: 161, column: 13, scope: !2192)
!2240 = !DILocation(line: 162, column: 8, scope: !2192)
!2241 = !DILocation(line: 162, column: 12, scope: !2192)
!2242 = !DILocation(line: 162, column: 21, scope: !2192)
!2243 = !DILocation(line: 164, column: 3, scope: !2192)
!2244 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !6, file: !6, line: 182, type: !2245, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!488, !2247, !7}
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!2249 = !{!2250, !2251}
!2250 = !DILocalVariable(name: "vec_", arg: 1, scope: !2244, file: !6, line: 182, type: !2247)
!2251 = !DILocalVariable(name: "ix_", arg: 2, scope: !2244, file: !6, line: 182, type: !7)
!2252 = !DILocation(line: 0, scope: !2244)
!2253 = !DILocation(line: 182, column: 1, scope: !2244)
!2254 = distinct !DISubprogram(name: "VEC_tree_base_replace", scope: !6, file: !6, line: 182, type: !2255, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!488, !2168, !7, !488}
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "vec_", arg: 1, scope: !2254, file: !6, line: 182, type: !2168)
!2259 = !DILocalVariable(name: "ix_", arg: 2, scope: !2254, file: !6, line: 182, type: !7)
!2260 = !DILocalVariable(name: "obj_", arg: 3, scope: !2254, file: !6, line: 182, type: !488)
!2261 = !DILocalVariable(name: "old_obj_", scope: !2254, file: !6, line: 182, type: !488)
!2262 = !DILocation(line: 0, scope: !2254)
!2263 = !DILocation(line: 182, column: 1, scope: !2254)
!2264 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !6, file: !6, line: 182, type: !2265, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!7, !2247}
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "vec_", arg: 1, scope: !2264, file: !6, line: 182, type: !2247)
!2269 = !DILocation(line: 0, scope: !2264)
!2270 = !DILocation(line: 182, column: 1, scope: !2264)
!2271 = distinct !DISubprogram(name: "VEC_tree_gc_safe_push", scope: !6, file: !6, line: 183, type: !2272, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!817, !2185, !488}
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "vec_", arg: 1, scope: !2271, file: !6, line: 183, type: !2185)
!2276 = !DILocalVariable(name: "obj_", arg: 2, scope: !2271, file: !6, line: 183, type: !488)
!2277 = !DILocation(line: 0, scope: !2271)
!2278 = !DILocation(line: 183, column: 1, scope: !2271)
!2279 = distinct !DISubprogram(name: "release_ssa_name", scope: !3, file: !3, line: 177, type: !2280, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !488}
!2282 = !{!2283, !2284, !2287, !2288}
!2283 = !DILocalVariable(name: "var", arg: 1, scope: !2279, file: !3, line: 177, type: !488)
!2284 = !DILocalVariable(name: "saved_ssa_name_var", scope: !2285, file: !3, line: 204, type: !488)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 203, column: 5)
!2286 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 202, column: 7)
!2287 = !DILocalVariable(name: "saved_ssa_name_version", scope: !2285, file: !3, line: 205, type: !481)
!2288 = !DILocalVariable(name: "imm", scope: !2285, file: !3, line: 206, type: !2201)
!2289 = !DILocation(line: 0, scope: !2279)
!2290 = !DILocation(line: 179, column: 8, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 179, column: 7)
!2292 = !DILocation(line: 179, column: 7, scope: !2279)
!2293 = !DILocation(line: 184, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 184, column: 7)
!2295 = !DILocation(line: 184, column: 7, scope: !2279)
!2296 = !DILocation(line: 189, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 189, column: 7)
!2298 = !DILocation(line: 189, column: 7, scope: !2279)
!2299 = !DILocation(line: 191, column: 7, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 190, column: 5)
!2301 = !DILocation(line: 192, column: 7, scope: !2300)
!2302 = !DILocation(line: 202, column: 9, scope: !2286)
!2303 = !DILocation(line: 202, column: 7, scope: !2279)
!2304 = !DILocation(line: 204, column: 33, scope: !2285)
!2305 = !DILocation(line: 205, column: 36, scope: !2285)
!2306 = !DILocation(line: 0, scope: !2285)
!2307 = !DILocation(line: 206, column: 29, scope: !2285)
!2308 = !DILocation(line: 208, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 208, column: 11)
!2310 = !DILocation(line: 208, column: 11, scope: !2285)
!2311 = !DILocation(line: 209, column: 2, scope: !2309)
!2312 = !DILocation(line: 214, column: 7, scope: !2285)
!2313 = !DILocation(line: 214, column: 19, scope: !2285)
!2314 = !DILocation(line: 214, column: 24, scope: !2285)
!2315 = !DILocation(line: 215, column: 2, scope: !2285)
!2316 = distinct !{!2316, !2312, !2317}
!2317 = !DILocation(line: 215, column: 27, scope: !2285)
!2318 = !DILocation(line: 217, column: 7, scope: !2285)
!2319 = !DILocation(line: 219, column: 15, scope: !2285)
!2320 = !DILocation(line: 219, column: 23, scope: !2285)
!2321 = !DILocation(line: 219, column: 7, scope: !2285)
!2322 = !DILocation(line: 221, column: 17, scope: !2285)
!2323 = !DILocation(line: 222, column: 17, scope: !2285)
!2324 = !DILocation(line: 223, column: 12, scope: !2285)
!2325 = !DILocation(line: 223, column: 16, scope: !2285)
!2326 = !DILocation(line: 223, column: 25, scope: !2285)
!2327 = !DILocation(line: 227, column: 7, scope: !2285)
!2328 = !DILocation(line: 230, column: 30, scope: !2285)
!2329 = !DILocation(line: 234, column: 26, scope: !2285)
!2330 = !DILocation(line: 237, column: 35, scope: !2285)
!2331 = !DILocation(line: 240, column: 26, scope: !2285)
!2332 = !DILocation(line: 240, column: 7, scope: !2285)
!2333 = !DILocation(line: 240, column: 24, scope: !2285)
!2334 = !DILocation(line: 241, column: 7, scope: !2285)
!2335 = !DILocation(line: 241, column: 28, scope: !2285)
!2336 = !DILocation(line: 242, column: 5, scope: !2285)
!2337 = !DILocation(line: 243, column: 1, scope: !2279)
!2338 = distinct !DISubprogram(name: "delink_imm_use", scope: !2339, file: !2339, line: 188, type: !2340, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2339 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2340 = !DISubroutineType(types: !2341)
!2341 = !{null, !2202}
!2342 = !{!2343}
!2343 = !DILocalVariable(name: "linknode", arg: 1, scope: !2338, file: !2339, line: 188, type: !2202)
!2344 = !DILocation(line: 0, scope: !2338)
!2345 = !DILocation(line: 191, column: 17, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2338, file: !2339, line: 191, column: 7)
!2347 = !DILocation(line: 191, column: 22, scope: !2346)
!2348 = !DILocation(line: 191, column: 7, scope: !2338)
!2349 = !DILocation(line: 194, column: 36, scope: !2338)
!2350 = !DILocation(line: 194, column: 19, scope: !2338)
!2351 = !DILocation(line: 194, column: 24, scope: !2338)
!2352 = !DILocation(line: 195, column: 36, scope: !2338)
!2353 = !DILocation(line: 195, column: 13, scope: !2338)
!2354 = !DILocation(line: 195, column: 24, scope: !2338)
!2355 = !DILocation(line: 196, column: 18, scope: !2338)
!2356 = !DILocation(line: 197, column: 18, scope: !2338)
!2357 = !DILocation(line: 198, column: 1, scope: !2338)
!2358 = distinct !DISubprogram(name: "duplicate_ssa_name", scope: !3, file: !3, line: 248, type: !2359, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!488, !488, !783}
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DILocalVariable(name: "name", arg: 1, scope: !2358, file: !3, line: 248, type: !488)
!2363 = !DILocalVariable(name: "stmt", arg: 2, scope: !2358, file: !3, line: 248, type: !783)
!2364 = !DILocalVariable(name: "new_name", scope: !2358, file: !3, line: 250, type: !488)
!2365 = !DILocalVariable(name: "old_ptr_info", scope: !2358, file: !3, line: 251, type: !1386)
!2366 = !DILocation(line: 0, scope: !2358)
!2367 = !DILocation(line: 250, column: 34, scope: !2358)
!2368 = !DILocation(line: 250, column: 19, scope: !2358)
!2369 = !DILocation(line: 251, column: 39, scope: !2358)
!2370 = !DILocation(line: 253, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 253, column: 7)
!2372 = !DILocation(line: 253, column: 7, scope: !2358)
!2373 = !DILocation(line: 254, column: 5, scope: !2371)
!2374 = !DILocation(line: 256, column: 3, scope: !2358)
!2375 = distinct !DISubprogram(name: "make_ssa_name", scope: !2339, file: !2339, line: 1245, type: !2359, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2376 = !{!2377, !2378}
!2377 = !DILocalVariable(name: "var", arg: 1, scope: !2375, file: !2339, line: 1245, type: !488)
!2378 = !DILocalVariable(name: "stmt", arg: 2, scope: !2375, file: !2339, line: 1245, type: !783)
!2379 = !DILocation(line: 0, scope: !2375)
!2380 = !DILocation(line: 1247, column: 28, scope: !2375)
!2381 = !DILocation(line: 1247, column: 10, scope: !2375)
!2382 = !DILocation(line: 1247, column: 3, scope: !2375)
!2383 = distinct !DISubprogram(name: "duplicate_ssa_name_ptr_info", scope: !3, file: !3, line: 264, type: !2384, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !488, !1386}
!2386 = !{!2387, !2388, !2389}
!2387 = !DILocalVariable(name: "name", arg: 1, scope: !2383, file: !3, line: 264, type: !488)
!2388 = !DILocalVariable(name: "ptr_info", arg: 2, scope: !2383, file: !3, line: 264, type: !1386)
!2389 = !DILocalVariable(name: "new_ptr_info", scope: !2383, file: !3, line: 266, type: !1386)
!2390 = !DILocation(line: 0, scope: !2383)
!2391 = !DILocation(line: 268, column: 3, scope: !2383)
!2392 = !DILocation(line: 269, column: 3, scope: !2383)
!2393 = !DILocation(line: 271, column: 8, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 271, column: 7)
!2395 = !DILocation(line: 271, column: 7, scope: !2383)
!2396 = !DILocation(line: 274, column: 18, scope: !2383)
!2397 = !DILocation(line: 275, column: 19, scope: !2383)
!2398 = !DILocation(line: 277, column: 28, scope: !2383)
!2399 = !DILocation(line: 278, column: 1, scope: !2383)
!2400 = distinct !DISubprogram(name: "release_defs", scope: !3, file: !3, line: 284, type: !2401, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !783}
!2403 = !{!2404, !2405, !2406}
!2404 = !DILocalVariable(name: "stmt", arg: 1, scope: !2400, file: !3, line: 284, type: !783)
!2405 = !DILocalVariable(name: "def", scope: !2400, file: !3, line: 286, type: !488)
!2406 = !DILocalVariable(name: "iter", scope: !2400, file: !3, line: 287, type: !2407)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !250, line: 140, baseType: !2408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !250, line: 131, size: 320, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2414, !2416, !2417, !2418}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2408, file: !250, line: 133, baseType: !480, size: 8)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2408, file: !250, line: 134, baseType: !249, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2408, file: !250, line: 135, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !250, line: 42, baseType: !812)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2408, file: !250, line: 136, baseType: !2415, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !250, line: 50, baseType: !819)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2408, file: !250, line: 137, baseType: !481, size: 32, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2408, file: !250, line: 138, baseType: !481, size: 32, offset: 224)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2408, file: !250, line: 139, baseType: !783, size: 64, offset: 256)
!2419 = !DILocation(line: 0, scope: !2400)
!2420 = !DILocation(line: 287, column: 3, scope: !2400)
!2421 = !DILocation(line: 291, column: 3, scope: !2400)
!2422 = !DILocation(line: 293, column: 3, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 293, column: 3)
!2424 = !DILocation(line: 0, scope: !2423)
!2425 = !DILocation(line: 293, column: 3, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 293, column: 3)
!2427 = !DILocation(line: 294, column: 9, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 294, column: 9)
!2429 = !DILocation(line: 294, column: 25, scope: !2428)
!2430 = !DILocation(line: 294, column: 9, scope: !2426)
!2431 = !DILocation(line: 295, column: 7, scope: !2428)
!2432 = distinct !{!2432, !2422, !2433}
!2433 = !DILocation(line: 295, column: 28, scope: !2423)
!2434 = !DILocation(line: 296, column: 1, scope: !2400)
!2435 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !2339, file: !2339, line: 33, type: !2436, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2440)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!480, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!2440 = !{!2441}
!2441 = !DILocalVariable(name: "fun", arg: 1, scope: !2435, file: !2339, line: 33, type: !2438)
!2442 = !DILocation(line: 0, scope: !2435)
!2443 = !DILocation(line: 35, column: 10, scope: !2435)
!2444 = !DILocation(line: 35, column: 14, scope: !2435)
!2445 = !DILocation(line: 35, column: 22, scope: !2435)
!2446 = !DILocation(line: 35, column: 17, scope: !2435)
!2447 = !DILocation(line: 35, column: 32, scope: !2435)
!2448 = !DILocation(line: 35, column: 51, scope: !2435)
!2449 = !DILocation(line: 35, column: 3, scope: !2435)
!2450 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2339, file: !2339, line: 792, type: !2451, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!488, !2453, !783, !481}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "ptr", arg: 1, scope: !2450, file: !2339, line: 792, type: !2453)
!2456 = !DILocalVariable(name: "stmt", arg: 2, scope: !2450, file: !2339, line: 792, type: !783)
!2457 = !DILocalVariable(name: "flags", arg: 3, scope: !2450, file: !2339, line: 792, type: !481)
!2458 = !DILocation(line: 0, scope: !2450)
!2459 = !DILocation(line: 794, column: 3, scope: !2450)
!2460 = !DILocation(line: 795, column: 8, scope: !2450)
!2461 = !DILocation(line: 795, column: 18, scope: !2450)
!2462 = !DILocation(line: 796, column: 10, scope: !2450)
!2463 = !DILocation(line: 796, column: 3, scope: !2450)
!2464 = distinct !DISubprogram(name: "op_iter_done", scope: !2339, file: !2339, line: 652, type: !2465, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!480, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2469 = !{!2470}
!2470 = !DILocalVariable(name: "ptr", arg: 1, scope: !2464, file: !2339, line: 652, type: !2467)
!2471 = !DILocation(line: 0, scope: !2464)
!2472 = !DILocation(line: 654, column: 15, scope: !2464)
!2473 = !DILocation(line: 654, column: 3, scope: !2464)
!2474 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2339, file: !2339, line: 699, type: !2475, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!488, !2453}
!2477 = !{!2478, !2479}
!2478 = !DILocalVariable(name: "ptr", arg: 1, scope: !2474, file: !2339, line: 699, type: !2453)
!2479 = !DILocalVariable(name: "val", scope: !2474, file: !2339, line: 701, type: !488)
!2480 = !DILocation(line: 0, scope: !2474)
!2481 = !DILocation(line: 705, column: 12, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2474, file: !2339, line: 705, column: 7)
!2483 = !DILocation(line: 705, column: 7, scope: !2482)
!2484 = !DILocation(line: 705, column: 7, scope: !2474)
!2485 = !DILocation(line: 707, column: 13, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !2339, line: 706, column: 5)
!2487 = !DILocation(line: 708, column: 24, scope: !2486)
!2488 = !DILocation(line: 708, column: 30, scope: !2486)
!2489 = !DILocation(line: 708, column: 17, scope: !2486)
!2490 = !DILocation(line: 709, column: 7, scope: !2486)
!2491 = !DILocation(line: 711, column: 12, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2474, file: !2339, line: 711, column: 7)
!2493 = !DILocation(line: 711, column: 7, scope: !2492)
!2494 = !DILocation(line: 711, column: 7, scope: !2474)
!2495 = !DILocation(line: 713, column: 13, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !2339, line: 712, column: 5)
!2497 = !DILocation(line: 714, column: 24, scope: !2496)
!2498 = !DILocation(line: 714, column: 30, scope: !2496)
!2499 = !DILocation(line: 714, column: 17, scope: !2496)
!2500 = !DILocation(line: 715, column: 7, scope: !2496)
!2501 = !DILocation(line: 718, column: 8, scope: !2474)
!2502 = !DILocation(line: 718, column: 13, scope: !2474)
!2503 = !DILocation(line: 719, column: 3, scope: !2474)
!2504 = !DILocation(line: 721, column: 1, scope: !2474)
!2505 = distinct !DISubprogram(name: "replace_ssa_name_symbol", scope: !3, file: !3, line: 302, type: !2506, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !488, !488}
!2508 = !{!2509, !2510}
!2509 = !DILocalVariable(name: "ssa_name", arg: 1, scope: !2505, file: !3, line: 302, type: !488)
!2510 = !DILocalVariable(name: "sym", arg: 2, scope: !2505, file: !3, line: 302, type: !488)
!2511 = !DILocation(line: 0, scope: !2505)
!2512 = !DILocation(line: 304, column: 3, scope: !2505)
!2513 = !DILocation(line: 304, column: 27, scope: !2505)
!2514 = !DILocation(line: 305, column: 26, scope: !2505)
!2515 = !DILocation(line: 305, column: 3, scope: !2505)
!2516 = !DILocation(line: 305, column: 24, scope: !2505)
!2517 = !DILocation(line: 306, column: 1, scope: !2505)
!2518 = distinct !DISubprogram(name: "release_dead_ssa_names", scope: !3, file: !3, line: 313, type: !1675, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2519)
!2519 = !{!2520, !2521, !2522, !2523}
!2520 = !DILocalVariable(name: "t", scope: !2518, file: !3, line: 315, type: !488)
!2521 = !DILocalVariable(name: "next", scope: !2518, file: !3, line: 315, type: !488)
!2522 = !DILocalVariable(name: "n", scope: !2518, file: !3, line: 316, type: !481)
!2523 = !DILocalVariable(name: "rvi", scope: !2518, file: !3, line: 317, type: !2524)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenced_var_iterator", file: !686, line: 336, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 333, size: 192, elements: !2526)
!2526 = !{!2527}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "hti", scope: !2525, file: !686, line: 335, baseType: !2528, size: 192)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_iterator", file: !686, line: 98, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 93, size: 192, elements: !2530)
!2530 = !{!2531, !2532, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "htab", scope: !2529, file: !686, line: 95, baseType: !1063, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2529, file: !686, line: 96, baseType: !1087, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2529, file: !686, line: 97, baseType: !1087, size: 64, offset: 128)
!2534 = !DILocation(line: 0, scope: !2518)
!2535 = !DILocation(line: 317, column: 3, scope: !2518)
!2536 = !DILocation(line: 321, column: 3, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 321, column: 3)
!2538 = !DILocation(line: 0, scope: !2537)
!2539 = !DILocation(line: 321, column: 3, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 321, column: 3)
!2541 = !DILocation(line: 322, column: 5, scope: !2540)
!2542 = distinct !{!2542, !2536, !2543}
!2543 = !DILocation(line: 322, column: 29, scope: !2537)
!2544 = !DILocation(line: 324, column: 12, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 324, column: 3)
!2546 = !DILocation(line: 324, column: 8, scope: !2545)
!2547 = !DILocation(line: 0, scope: !2545)
!2548 = !DILocation(line: 324, column: 3, scope: !2545)
!2549 = !DILocation(line: 326, column: 14, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 325, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 324, column: 3)
!2552 = !DILocation(line: 332, column: 22, scope: !2550)
!2553 = !DILocation(line: 333, column: 8, scope: !2550)
!2554 = !DILocation(line: 324, column: 3, scope: !2551)
!2555 = distinct !{!2555, !2548, !2556}
!2556 = !DILocation(line: 334, column: 5, scope: !2545)
!2557 = !DILocation(line: 335, column: 3, scope: !2518)
!2558 = !DILocation(line: 335, column: 24, scope: !2518)
!2559 = !DILocation(line: 339, column: 44, scope: !2518)
!2560 = !DILocation(line: 339, column: 31, scope: !2518)
!2561 = !DILocation(line: 339, column: 3, scope: !2518)
!2562 = !DILocation(line: 341, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 341, column: 7)
!2564 = !DILocation(line: 341, column: 7, scope: !2518)
!2565 = !DILocation(line: 342, column: 59, scope: !2563)
!2566 = !DILocation(line: 342, column: 61, scope: !2563)
!2567 = !DILocation(line: 342, column: 71, scope: !2563)
!2568 = !DILocation(line: 342, column: 69, scope: !2563)
!2569 = !DILocation(line: 342, column: 5, scope: !2563)
!2570 = !DILocation(line: 344, column: 1, scope: !2518)
!2571 = !DILocation(line: 343, column: 3, scope: !2518)
!2572 = distinct !DISubprogram(name: "VEC_tree_gc_reserve", scope: !6, file: !6, line: 183, type: !2573, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!481, !2185, !481}
!2575 = !{!2576, !2577, !2578}
!2576 = !DILocalVariable(name: "vec_", arg: 1, scope: !2572, file: !6, line: 183, type: !2185)
!2577 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2572, file: !6, line: 183, type: !481)
!2578 = !DILocalVariable(name: "extend", scope: !2572, file: !6, line: 183, type: !481)
!2579 = !DILocation(line: 0, scope: !2572)
!2580 = !DILocation(line: 183, column: 1, scope: !2572)
!2581 = !DILocation(line: 183, column: 1, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2572, file: !6, line: 183, column: 1)
!2583 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !6, file: !6, line: 182, type: !2584, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!481, !2168, !481}
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "vec_", arg: 1, scope: !2583, file: !6, line: 182, type: !2168)
!2588 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2583, file: !6, line: 182, type: !481)
!2589 = !DILocation(line: 0, scope: !2583)
!2590 = !DILocation(line: 182, column: 1, scope: !2583)
!2591 = distinct !DISubprogram(name: "op_iter_init", scope: !2339, file: !2339, line: 742, type: !2592, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2453, !783, !481}
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "ptr", arg: 1, scope: !2591, file: !2339, line: 742, type: !2453)
!2596 = !DILocalVariable(name: "stmt", arg: 2, scope: !2591, file: !2339, line: 742, type: !783)
!2597 = !DILocalVariable(name: "flags", arg: 3, scope: !2591, file: !2339, line: 742, type: !481)
!2598 = !DILocation(line: 0, scope: !2591)
!2599 = !DILocation(line: 748, column: 15, scope: !2591)
!2600 = !DILocation(line: 748, column: 52, scope: !2591)
!2601 = !DILocation(line: 748, column: 8, scope: !2591)
!2602 = !DILocation(line: 748, column: 13, scope: !2591)
!2603 = !DILocation(line: 753, column: 8, scope: !2591)
!2604 = !DILocation(line: 753, column: 13, scope: !2591)
!2605 = !DILocation(line: 755, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2591, file: !2339, line: 754, column: 7)
!2607 = !DILocation(line: 756, column: 7, scope: !2606)
!2608 = !DILocation(line: 754, column: 7, scope: !2591)
!2609 = !DILocation(line: 757, column: 5, scope: !2606)
!2610 = !DILocation(line: 758, column: 8, scope: !2591)
!2611 = !DILocation(line: 758, column: 13, scope: !2591)
!2612 = !DILocation(line: 760, column: 8, scope: !2591)
!2613 = !DILocation(line: 760, column: 14, scope: !2591)
!2614 = !DILocation(line: 761, column: 8, scope: !2591)
!2615 = !DILocation(line: 761, column: 16, scope: !2591)
!2616 = !DILocation(line: 762, column: 8, scope: !2591)
!2617 = !DILocation(line: 762, column: 17, scope: !2591)
!2618 = !DILocation(line: 763, column: 1, scope: !2591)
!2619 = distinct !DISubprogram(name: "gimple_def_ops", scope: !440, file: !440, line: 1292, type: !2620, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!812, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !489, line: 60, baseType: !2623)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!2625 = !{!2626}
!2626 = !DILocalVariable(name: "g", arg: 1, scope: !2619, file: !440, line: 1292, type: !2622)
!2627 = !DILocation(line: 0, scope: !2619)
!2628 = !DILocation(line: 1294, column: 8, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !440, line: 1294, column: 7)
!2630 = !DILocation(line: 1294, column: 7, scope: !2619)
!2631 = !DILocation(line: 1296, column: 26, scope: !2619)
!2632 = !DILocation(line: 1296, column: 3, scope: !2619)
!2633 = !DILocation(line: 1297, column: 1, scope: !2619)
!2634 = distinct !DISubprogram(name: "gimple_vdef", scope: !440, file: !440, line: 1375, type: !2635, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!488, !2622}
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "g", arg: 1, scope: !2634, file: !440, line: 1375, type: !2622)
!2639 = !DILocation(line: 0, scope: !2634)
!2640 = distinct !DISubprogram(name: "gimple_use_ops", scope: !440, file: !440, line: 1313, type: !2641, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!819, !2622}
!2643 = !{!2644}
!2644 = !DILocalVariable(name: "g", arg: 1, scope: !2640, file: !440, line: 1313, type: !2622)
!2645 = !DILocation(line: 0, scope: !2640)
!2646 = distinct !DISubprogram(name: "gimple_vuse", scope: !440, file: !440, line: 1365, type: !2635, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2647)
!2647 = !{!2648}
!2648 = !DILocalVariable(name: "g", arg: 1, scope: !2646, file: !440, line: 1365, type: !2622)
!2649 = !DILocation(line: 0, scope: !2646)
!2650 = !DILocation(line: 1367, column: 8, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !440, line: 1367, column: 7)
!2652 = !DILocation(line: 1367, column: 7, scope: !2646)
!2653 = !DILocation(line: 1369, column: 23, scope: !2646)
!2654 = !DILocation(line: 1369, column: 3, scope: !2646)
!2655 = !DILocation(line: 1370, column: 1, scope: !2646)
!2656 = distinct !DISubprogram(name: "gimple_has_ops", scope: !440, file: !440, line: 1274, type: !2657, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!480, !2622}
!2659 = !{!2660}
!2660 = !DILocalVariable(name: "g", arg: 1, scope: !2656, file: !440, line: 1274, type: !2622)
!2661 = !DILocation(line: 0, scope: !2656)
!2662 = !DILocation(line: 1276, column: 10, scope: !2656)
!2663 = !DILocation(line: 1276, column: 26, scope: !2656)
!2664 = !DILocation(line: 1276, column: 41, scope: !2656)
!2665 = !DILocation(line: 1276, column: 44, scope: !2656)
!2666 = !DILocation(line: 1276, column: 60, scope: !2656)
!2667 = !DILocation(line: 1276, column: 3, scope: !2656)
!2668 = distinct !DISubprogram(name: "gimple_code", scope: !440, file: !440, line: 1052, type: !2669, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!439, !2622}
!2671 = !{!2672}
!2672 = !DILocalVariable(name: "g", arg: 1, scope: !2668, file: !440, line: 1052, type: !2622)
!2673 = !DILocation(line: 0, scope: !2668)
!2674 = !DILocation(line: 1054, column: 20, scope: !2668)
!2675 = !DILocation(line: 1054, column: 3, scope: !2668)
!2676 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !440, file: !440, line: 1283, type: !2657, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2677 = !{!2678}
!2678 = !DILocalVariable(name: "g", arg: 1, scope: !2676, file: !440, line: 1283, type: !2622)
!2679 = !DILocation(line: 0, scope: !2676)
!2680 = !DILocation(line: 1285, column: 10, scope: !2676)
!2681 = !DILocation(line: 1285, column: 26, scope: !2676)
!2682 = !DILocation(line: 1285, column: 43, scope: !2676)
!2683 = !DILocation(line: 1285, column: 46, scope: !2676)
!2684 = !DILocation(line: 1285, column: 62, scope: !2676)
!2685 = !DILocation(line: 1285, column: 3, scope: !2676)
!2686 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2339, file: !2339, line: 427, type: !2687, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!488, !2201}
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "use", arg: 1, scope: !2686, file: !2339, line: 427, type: !2201)
!2691 = !DILocation(line: 0, scope: !2686)
!2692 = !DILocation(line: 429, column: 17, scope: !2686)
!2693 = !DILocation(line: 429, column: 10, scope: !2686)
!2694 = !DILocation(line: 429, column: 3, scope: !2686)
!2695 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2339, file: !2339, line: 434, type: !2696, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!488, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !250, line: 27, baseType: !817)
!2699 = !{!2700}
!2700 = !DILocalVariable(name: "def", arg: 1, scope: !2695, file: !2339, line: 434, type: !2698)
!2701 = !DILocation(line: 0, scope: !2695)
!2702 = !DILocation(line: 436, column: 10, scope: !2695)
!2703 = !DILocation(line: 436, column: 3, scope: !2695)
!2704 = distinct !DISubprogram(name: "first_referenced_var", scope: !2339, file: !2339, line: 105, type: !2705, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2708)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!488, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2708 = !{!2709}
!2709 = !DILocalVariable(name: "iter", arg: 1, scope: !2704, file: !2339, line: 105, type: !2707)
!2710 = !DILocation(line: 0, scope: !2704)
!2711 = !DILocation(line: 107, column: 44, scope: !2704)
!2712 = !DILocation(line: 108, column: 33, scope: !2704)
!2713 = !DILocation(line: 108, column: 9, scope: !2704)
!2714 = !DILocation(line: 107, column: 17, scope: !2704)
!2715 = !DILocation(line: 107, column: 10, scope: !2704)
!2716 = !DILocation(line: 107, column: 3, scope: !2704)
!2717 = distinct !DISubprogram(name: "end_referenced_vars_p", scope: !2339, file: !2339, line: 115, type: !2718, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2722)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!480, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2722 = !{!2723}
!2723 = !DILocalVariable(name: "iter", arg: 1, scope: !2717, file: !2339, line: 115, type: !2720)
!2724 = !DILocation(line: 0, scope: !2717)
!2725 = !DILocation(line: 117, column: 29, scope: !2717)
!2726 = !DILocation(line: 117, column: 10, scope: !2717)
!2727 = !DILocation(line: 117, column: 3, scope: !2717)
!2728 = distinct !DISubprogram(name: "next_referenced_var", scope: !2339, file: !2339, line: 124, type: !2705, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "iter", arg: 1, scope: !2728, file: !2339, line: 124, type: !2707)
!2731 = !DILocation(line: 0, scope: !2728)
!2732 = !DILocation(line: 126, column: 43, scope: !2728)
!2733 = !DILocation(line: 126, column: 17, scope: !2728)
!2734 = !DILocation(line: 126, column: 10, scope: !2728)
!2735 = !DILocation(line: 126, column: 3, scope: !2728)
!2736 = distinct !DISubprogram(name: "first_htab_element", scope: !2339, file: !2339, line: 58, type: !2737, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!485, !2739, !1063}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "hti", arg: 1, scope: !2736, file: !2339, line: 58, type: !2739)
!2742 = !DILocalVariable(name: "table", arg: 2, scope: !2736, file: !2339, line: 58, type: !1063)
!2743 = !DILocalVariable(name: "x", scope: !2744, file: !2339, line: 65, type: !485)
!2744 = distinct !DILexicalBlock(scope: !2736, file: !2339, line: 64, column: 5)
!2745 = !DILocation(line: 0, scope: !2736)
!2746 = !DILocation(line: 60, column: 8, scope: !2736)
!2747 = !DILocation(line: 60, column: 13, scope: !2736)
!2748 = !DILocation(line: 61, column: 22, scope: !2736)
!2749 = !DILocation(line: 61, column: 8, scope: !2736)
!2750 = !DILocation(line: 61, column: 13, scope: !2736)
!2751 = !DILocation(line: 62, column: 21, scope: !2736)
!2752 = !DILocation(line: 62, column: 28, scope: !2736)
!2753 = !DILocation(line: 62, column: 26, scope: !2736)
!2754 = !DILocation(line: 62, column: 8, scope: !2736)
!2755 = !DILocation(line: 62, column: 14, scope: !2736)
!2756 = !DILocation(line: 65, column: 22, scope: !2744)
!2757 = !DILocation(line: 63, column: 3, scope: !2736)
!2758 = !DILocation(line: 65, column: 15, scope: !2744)
!2759 = !DILocation(line: 66, column: 33, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2744, file: !2339, line: 66, column: 11)
!2761 = !DILocation(line: 68, column: 14, scope: !2736)
!2762 = !DILocation(line: 68, column: 28, scope: !2736)
!2763 = !DILocation(line: 68, column: 5, scope: !2744)
!2764 = distinct !{!2764, !2757, !2765}
!2765 = !DILocation(line: 68, column: 40, scope: !2736)
!2766 = !DILocation(line: 70, column: 12, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2736, file: !2339, line: 70, column: 7)
!2768 = !DILocation(line: 70, column: 17, scope: !2767)
!2769 = !DILocation(line: 70, column: 7, scope: !2736)
!2770 = !DILocation(line: 71, column: 12, scope: !2767)
!2771 = !DILocation(line: 71, column: 5, scope: !2767)
!2772 = !DILocation(line: 73, column: 1, scope: !2736)
!2773 = distinct !DISubprogram(name: "gimple_referenced_vars", scope: !2339, file: !2339, line: 40, type: !2774, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!1063, !2438}
!2776 = !{!2777}
!2777 = !DILocalVariable(name: "fun", arg: 1, scope: !2773, file: !2339, line: 40, type: !2438)
!2778 = !DILocation(line: 0, scope: !2773)
!2779 = !DILocation(line: 42, column: 13, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2773, file: !2339, line: 42, column: 7)
!2781 = !DILocation(line: 42, column: 8, scope: !2780)
!2782 = !DILocation(line: 42, column: 7, scope: !2773)
!2783 = !DILocation(line: 44, column: 26, scope: !2773)
!2784 = !DILocation(line: 44, column: 3, scope: !2773)
!2785 = !DILocation(line: 45, column: 1, scope: !2773)
!2786 = distinct !DISubprogram(name: "end_htab_p", scope: !2339, file: !2339, line: 79, type: !2787, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2791)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!480, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2791 = !{!2792}
!2792 = !DILocalVariable(name: "hti", arg: 1, scope: !2786, file: !2339, line: 79, type: !2789)
!2793 = !DILocation(line: 0, scope: !2786)
!2794 = !DILocation(line: 81, column: 12, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2786, file: !2339, line: 81, column: 7)
!2796 = !DILocation(line: 81, column: 25, scope: !2795)
!2797 = !DILocation(line: 81, column: 17, scope: !2795)
!2798 = !DILocation(line: 84, column: 1, scope: !2786)
!2799 = distinct !DISubprogram(name: "next_htab_element", scope: !2339, file: !2339, line: 90, type: !2800, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!485, !2739}
!2802 = !{!2803, !2804}
!2803 = !DILocalVariable(name: "hti", arg: 1, scope: !2799, file: !2339, line: 90, type: !2739)
!2804 = !DILocalVariable(name: "x", scope: !2805, file: !2339, line: 94, type: !485)
!2805 = distinct !DILexicalBlock(scope: !2799, file: !2339, line: 93, column: 5)
!2806 = !DILocation(line: 0, scope: !2799)
!2807 = !DILocation(line: 94, column: 22, scope: !2805)
!2808 = !DILocation(line: 92, column: 10, scope: !2799)
!2809 = !DILocation(line: 92, column: 31, scope: !2799)
!2810 = !DILocation(line: 92, column: 3, scope: !2799)
!2811 = !DILocation(line: 92, column: 24, scope: !2799)
!2812 = !DILocation(line: 94, column: 15, scope: !2805)
!2813 = !DILocation(line: 0, scope: !2805)
!2814 = !DILocation(line: 95, column: 33, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2805, file: !2339, line: 95, column: 11)
!2816 = distinct !{!2816, !2810, !2817}
!2817 = !DILocation(line: 97, column: 5, scope: !2799)
!2818 = !DILocation(line: 99, column: 1, scope: !2799)
