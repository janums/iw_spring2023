; ModuleID = 'tree-chrec.bc'
source_filename = "tree-chrec.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
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
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.tree_exp = type { %struct.tree_common, i32, %union.tree_node*, [1 x %union.tree_node*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@chrec_dont_know = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"(chrec_apply \0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  (varying_loop = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c")\0A  (chrec = \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c")\0A  (x = \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c")\0A  (res = \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tree-chrec.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@chrec_known = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@chrec_not_analyzed_yet = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@tree_code_length = external dso_local local_unnamed_addr constant [0 x i8], align 1
@dconstm1 = external dso_local global %struct.real_value, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@dconst2 = external dso_local global %struct.real_value, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@flag_wrapv = external dso_local local_unnamed_addr global i32, align 4
@flag_trapv = external dso_local local_unnamed_addr global i32, align 4
@flag_strict_overflow = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1763 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1777, metadata !DIExpression()), !dbg !1778
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1779
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1780
  ret i32 %call, !dbg !1781
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1782 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1786
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1787
  ret i32 %call, !dbg !1788
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1789 {
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

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1848 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1850, metadata !DIExpression()), !dbg !1851
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1852
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1852
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1852
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1852
  %cmp = icmp uge i8* %0, %1, !dbg !1852
  %conv1 = zext i1 %cmp to i64, !dbg !1852
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1852
  %tobool = icmp eq i64 %expval, 0, !dbg !1852
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1852

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1852
  br label %cond.end, !dbg !1852

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1852
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1852
  %2 = load i8, i8* %0, align 1, !dbg !1852
  %conv3 = zext i8 %2 to i32, !dbg !1852
  br label %cond.end, !dbg !1852

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1852
  ret i32 %cond, !dbg !1853
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1854 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1855
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1855
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1855
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1855
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1855
  %cmp = icmp uge i8* %1, %2, !dbg !1855
  %conv1 = zext i1 %cmp to i64, !dbg !1855
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1855
  %tobool = icmp eq i64 %expval, 0, !dbg !1855
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1855

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1855
  br label %cond.end, !dbg !1855

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1855
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1855
  %3 = load i8, i8* %1, align 1, !dbg !1855
  %conv3 = zext i8 %3 to i32, !dbg !1855
  br label %cond.end, !dbg !1855

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1855
  ret i32 %cond, !dbg !1856
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1857 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1861, metadata !DIExpression()), !dbg !1862
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1863
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1864
  ret i32 %call, !dbg !1865
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1866 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1870, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1871, metadata !DIExpression()), !dbg !1872
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1873
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1873
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1873
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1873
  %cmp = icmp uge i8* %0, %1, !dbg !1873
  %conv1 = zext i1 %cmp to i64, !dbg !1873
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1873
  %tobool = icmp eq i64 %expval, 0, !dbg !1873
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1873

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1873
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1873
  br label %cond.end, !dbg !1873

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1873
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1873
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1873
  store i8 %conv2, i8* %0, align 1, !dbg !1873
  %conv6 = and i32 %__c, 255, !dbg !1873
  br label %cond.end, !dbg !1873

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1873
  ret i32 %cond, !dbg !1874
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1875 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1877, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1878, metadata !DIExpression()), !dbg !1879
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1880
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1880
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1880
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1880
  %cmp = icmp uge i8* %0, %1, !dbg !1880
  %conv1 = zext i1 %cmp to i64, !dbg !1880
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1880
  %tobool = icmp eq i64 %expval, 0, !dbg !1880
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1880

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1880
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1880
  br label %cond.end, !dbg !1880

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1880
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1880
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1880
  store i8 %conv2, i8* %0, align 1, !dbg !1880
  %conv6 = and i32 %__c, 255, !dbg !1880
  br label %cond.end, !dbg !1880

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1880
  ret i32 %cond, !dbg !1881
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1882 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1884, metadata !DIExpression()), !dbg !1885
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1886
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1886
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1886
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1886
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1886
  %cmp = icmp uge i8* %1, %2, !dbg !1886
  %conv1 = zext i1 %cmp to i64, !dbg !1886
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1886
  %tobool = icmp eq i64 %expval, 0, !dbg !1886
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1886

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1886
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1886
  br label %cond.end, !dbg !1886

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1886
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1886
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1886
  store i8 %conv4, i8* %1, align 1, !dbg !1886
  %conv6 = and i32 %__c, 255, !dbg !1886
  br label %cond.end, !dbg !1886

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1886
  ret i32 %cond, !dbg !1887
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1888 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1894, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1895, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1896, metadata !DIExpression()), !dbg !1897
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1898
  ret i64 %call, !dbg !1899
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1902, metadata !DIExpression()), !dbg !1903
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1904
  %0 = load i32, i32* %_flags, align 8, !dbg !1904
  %and = lshr i32 %0, 4, !dbg !1904
  %and.lobit = and i32 %and, 1, !dbg !1904
  ret i32 %and.lobit, !dbg !1905
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1908, metadata !DIExpression()), !dbg !1909
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1910
  %0 = load i32, i32* %_flags, align 8, !dbg !1910
  %and = lshr i32 %0, 5, !dbg !1910
  %and.lobit = and i32 %and, 1, !dbg !1910
  ret i32 %and.lobit, !dbg !1911
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1912 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1915, metadata !DIExpression()), !dbg !1916
  %__c.off = add i32 %__c, 128, !dbg !1917
  %0 = icmp ult i32 %__c.off, 384, !dbg !1917
  br i1 %0, label %cond.true, label %cond.end, !dbg !1917

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1918
  %1 = load i32*, i32** %call, align 8, !dbg !1919
  %idxprom = sext i32 %__c to i64, !dbg !1920
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1920
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1920
  br label %cond.end, !dbg !1921

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1921
  ret i32 %cond, !dbg !1922
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1923 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1925, metadata !DIExpression()), !dbg !1926
  %__c.off = add i32 %__c, 128, !dbg !1927
  %0 = icmp ult i32 %__c.off, 384, !dbg !1927
  br i1 %0, label %cond.true, label %cond.end, !dbg !1927

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1928
  %1 = load i32*, i32** %call, align 8, !dbg !1929
  %idxprom = sext i32 %__c to i64, !dbg !1930
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1930
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1930
  br label %cond.end, !dbg !1931

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1931
  ret i32 %cond, !dbg !1932
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1933 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1938, metadata !DIExpression()), !dbg !1939
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1940
  %conv = trunc i64 %call to i32, !dbg !1941
  ret i32 %conv, !dbg !1942
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1943 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1947, metadata !DIExpression()), !dbg !1948
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1949
  ret i64 %call, !dbg !1950
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1951 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1956, metadata !DIExpression()), !dbg !1957
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1958
  ret i64 %call, !dbg !1959
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1960 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1966, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1967, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1968, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1969, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1970, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 0, metadata !1971, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1972, metadata !DIExpression()), !dbg !1976
  br label %while.cond, !dbg !1977

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1978
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1976
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1972, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1971, metadata !DIExpression()), !dbg !1976
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1979
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1977

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1980
  %div = lshr i64 %add, 1, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %div, metadata !1973, metadata !DIExpression()), !dbg !1976
  %mul = mul i64 %div, %__size, !dbg !1983
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1984
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1974, metadata !DIExpression()), !dbg !1976
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %call, metadata !1975, metadata !DIExpression()), !dbg !1976
  %cmp1 = icmp slt i32 %call, 0, !dbg !1986
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1988

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1989
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1991

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1971, metadata !DIExpression()), !dbg !1976
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1976
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1976
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1972, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1971, metadata !DIExpression()), !dbg !1976
  br label %while.cond, !dbg !1977, !llvm.loop !1993

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1976
  ret i8* %retval.0, !dbg !1995
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1996 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2002, metadata !DIExpression()), !dbg !2003
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2004
  ret double %call, !dbg !2005
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2006 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2015, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 %base, metadata !2017, metadata !DIExpression()), !dbg !2018
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2019
  ret i64 %call, !dbg !2020
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2021 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2027, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2028, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %base, metadata !2029, metadata !DIExpression()), !dbg !2030
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2031
  ret i64 %call, !dbg !2032
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2033 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2045, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %base, metadata !2046, metadata !DIExpression()), !dbg !2047
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2048
  ret i64 %call, !dbg !2049
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2055, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i32 %base, metadata !2056, metadata !DIExpression()), !dbg !2057
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2058
  ret i64 %call, !dbg !2059
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2060 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2101, metadata !DIExpression()), !dbg !2102
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2103
  ret i32 %call, !dbg !2104
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2108, metadata !DIExpression()), !dbg !2109
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2110
  ret i32 %call, !dbg !2111
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2112 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2119
  ret i32 %call, !dbg !2120
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2125, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2126, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2128, metadata !DIExpression()), !dbg !2129
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2130
  ret i32 %call, !dbg !2131
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2132 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2139
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2140
  ret i32 %call, !dbg !2141
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2142 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2146, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2147, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2149, metadata !DIExpression()), !dbg !2150
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2149, metadata !DIExpression(DW_OP_deref)), !dbg !2150
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2151
  ret i32 %call, !dbg !2152
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2178, metadata !DIExpression()), !dbg !2179
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2180
  ret i32 %call, !dbg !2181
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2182 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2184, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2185, metadata !DIExpression()), !dbg !2186
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2187
  ret i32 %call, !dbg !2188
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2194, metadata !DIExpression()), !dbg !2195
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2196
  ret i32 %call, !dbg !2197
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2202, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2203, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2205, metadata !DIExpression()), !dbg !2206
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2207
  ret i32 %call, !dbg !2208
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) local_unnamed_addr #4 !dbg !2209 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2213, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !2215, metadata !DIExpression()), !dbg !2217
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op0) #7, !dbg !2218
  %tobool = icmp eq i8 %call, 0, !dbg !2218
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2220

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op1) #7, !dbg !2221
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2221
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2222

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = tail call fastcc %union.tree_node* @chrec_fold_automatically_generated_operands(%union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2223
  br label %cleanup, !dbg !2224

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i32 @integer_zerop(%union.tree_node* %op0) #6, !dbg !2225
  %tobool6 = icmp eq i32 %call5, 0, !dbg !2225
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !2227

if.then7:                                         ; preds = %if.end
  %call8 = tail call %union.tree_node* @chrec_convert(%union.tree_node* %type, %union.tree_node* %op1, %union.gimple_statement_d* null) #7, !dbg !2228
  br label %cleanup, !dbg !2229

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @integer_zerop(%union.tree_node* %op1) #6, !dbg !2230
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2230
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2232

if.then12:                                        ; preds = %if.end9
  %call13 = tail call %union.tree_node* @chrec_convert(%union.tree_node* %type, %union.tree_node* %op0, %union.gimple_statement_d* null) #7, !dbg !2233
  br label %cleanup, !dbg !2234

if.end14:                                         ; preds = %if.end9
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2235
  %bf.load = load i64, i64* %0, align 8, !dbg !2235
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2235
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2235
  br i1 %cmp, label %if.end24, label %lor.lhs.false16, !dbg !2235

lor.lhs.false16:                                  ; preds = %if.end14
  %cmp21 = icmp eq i64 %bf.cast1, 12, !dbg !2235
  %spec.select = select i1 %cmp21, i32 66, i32 63, !dbg !2237
  br label %if.end24, !dbg !2237

if.end24:                                         ; preds = %lor.lhs.false16, %if.end14
  %code.0 = phi i32 [ 66, %if.end14 ], [ %spec.select, %lor.lhs.false16 ], !dbg !2238
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call25 = tail call fastcc %union.tree_node* @chrec_fold_plus_1(i32 %code.0, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2239
  br label %cleanup, !dbg !2240

cleanup:                                          ; preds = %if.end24, %if.then12, %if.then7, %if.then
  %retval.0 = phi %union.tree_node* [ %call4, %if.then ], [ %call8, %if.then7 ], [ %call13, %if.then12 ], [ %call25, %if.end24 ], !dbg !2217
  ret %union.tree_node* %retval.0, !dbg !2241
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec) unnamed_addr #0 !dbg !2242 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2248, metadata !DIExpression()), !dbg !2249
  %0 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2250
  %cmp = icmp eq %union.tree_node* %0, %chrec, !dbg !2251
  %1 = load %union.tree_node*, %union.tree_node** @chrec_known, align 8, !dbg !2252
  %cmp1 = icmp eq %union.tree_node* %1, %chrec, !dbg !2252
  %2 = or i1 %cmp, %cmp1, !dbg !2252
  %conv = zext i1 %2 to i8, !dbg !2253
  ret i8 %conv, !dbg !2254
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @chrec_fold_automatically_generated_operands(%union.tree_node* %op0, %union.tree_node* %op1) unnamed_addr #0 !dbg !2255 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !2260, metadata !DIExpression()), !dbg !2261
  %0 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2262
  %cmp = icmp eq %union.tree_node* %0, %op0, !dbg !2264
  %cmp1 = icmp eq %union.tree_node* %0, %op1, !dbg !2265
  %or.cond = or i1 %cmp, %cmp1, !dbg !2266
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2266

if.then:                                          ; preds = %entry
  br label %return, !dbg !2267

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @chrec_known, align 8, !dbg !2268
  %cmp2 = icmp eq %union.tree_node* %1, %op0, !dbg !2270
  %cmp4 = icmp eq %union.tree_node* %1, %op1, !dbg !2271
  %or.cond1 = or i1 %cmp2, %cmp4, !dbg !2272
  br i1 %or.cond1, label %if.then5, label %if.end6, !dbg !2272

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !2273

if.end6:                                          ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** @chrec_not_analyzed_yet, align 8, !dbg !2274
  %cmp7 = icmp eq %union.tree_node* %2, %op0, !dbg !2276
  %cmp9 = icmp eq %union.tree_node* %2, %op1, !dbg !2277
  %or.cond2 = or i1 %cmp7, %cmp9, !dbg !2278
  br i1 %or.cond2, label %if.then10, label %if.end11, !dbg !2278

if.then10:                                        ; preds = %if.end6
  br label %return, !dbg !2279

if.end11:                                         ; preds = %if.end6
  br label %return, !dbg !2280

return:                                           ; preds = %if.end11, %if.then10, %if.then5, %if.then
  %retval.0.in = phi %union.tree_node** [ @chrec_dont_know, %if.then ], [ @chrec_known, %if.then5 ], [ @chrec_not_analyzed_yet, %if.then10 ], [ @chrec_dont_know, %if.end11 ]
  %retval.0 = load %union.tree_node*, %union.tree_node** %retval.0.in, align 8, !dbg !2261
  ret %union.tree_node* %retval.0, !dbg !2281
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_convert(%union.tree_node* %type, %union.tree_node* %chrec, %union.gimple_statement_d* %at_stmt) local_unnamed_addr #4 !dbg !2282 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2286, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %at_stmt, metadata !2288, metadata !DIExpression()), !dbg !2289
  %call = tail call fastcc %union.tree_node* @chrec_convert_1(%union.tree_node* %type, %union.tree_node* %chrec, %union.gimple_statement_d* %at_stmt, i8 zeroext 1) #7, !dbg !2290
  ret %union.tree_node* %call, !dbg !2291
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @chrec_fold_plus_1(i32 %code, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) unnamed_addr #4 !dbg !2292 {
entry:
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %code, metadata !2296, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2297, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !2298, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !2299, metadata !DIExpression()), !dbg !2305
  %cmp = icmp eq i32 %code, 66, !dbg !2306
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2307
  %cond = select i1 %cmp, %union.tree_node* %0, %union.tree_node* %type, !dbg !2307
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !2300, metadata !DIExpression()), !dbg !2305
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op0) #7, !dbg !2308
  %tobool = icmp eq i8 %call, 0, !dbg !2308
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2310

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op1) #7, !dbg !2311
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2311
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2312

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = tail call fastcc %union.tree_node* @chrec_fold_automatically_generated_operands(%union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2313
  br label %cleanup136, !dbg !2314

if.end:                                           ; preds = %lor.lhs.false
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2315
  %bf.load = load i64, i64* %1, align 8, !dbg !2315
  %2 = trunc i64 %bf.load to i16, !dbg !2315
  switch i16 %2, label %sw.default52 [
    i16 146, label %sw.bb
    i16 116, label %sw.bb47
    i16 113, label %sw.bb47
  ], !dbg !2316

sw.bb:                                            ; preds = %if.end
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2317
  %bf.load6 = load i64, i64* %3, align 8, !dbg !2317
  %4 = trunc i64 %bf.load6 to i16, !dbg !2317
  switch i16 %4, label %sw.default [
    i16 146, label %sw.bb9
    i16 116, label %sw.bb11
    i16 113, label %sw.bb11
  ], !dbg !2318

sw.bb9:                                           ; preds = %sw.bb
  %call10 = tail call fastcc %union.tree_node* @chrec_fold_plus_poly_poly(i32 %code, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2319
  br label %cleanup136, !dbg !2321

sw.bb11:                                          ; preds = %sw.bb, %sw.bb
  %call12 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op1, i32* null) #7, !dbg !2322
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2322
  br i1 %tobool13, label %sw.default, label %if.then14, !dbg !2324

if.then14:                                        ; preds = %sw.bb11
  %5 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2325
  br label %cleanup136, !dbg !2326

sw.default:                                       ; preds = %sw.bb11, %sw.bb
  switch i32 %code, label %if.else [
    i32 63, label %if.then21
    i32 66, label %if.then21
  ], !dbg !2327

if.then21:                                        ; preds = %sw.default, %sw.default
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2329
  %6 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2329
  %7 = load %struct.tree_int_cst*, %struct.tree_int_cst** %6, align 8, !dbg !2329
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %7, i64 0, i32 1, i32 0, !dbg !2329
  %8 = load i64, i64* %low, align 8, !dbg !2329
  %conv23 = trunc i64 %8 to i32, !dbg !2329
  %arrayidx26 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2330
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx26, align 8, !dbg !2330
  %call27 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %9, %union.tree_node* %op1) #7, !dbg !2331
  %arrayidx30 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2332
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8, !dbg !2332
  %call31 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv23, %union.tree_node* %call27, %union.tree_node* %10) #7, !dbg !2333
  br label %cleanup136, !dbg !2334

if.else:                                          ; preds = %sw.default
  %operands33 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2335
  %11 = bitcast %union.tree_node** %operands33 to %struct.tree_int_cst**, !dbg !2335
  %12 = load %struct.tree_int_cst*, %struct.tree_int_cst** %11, align 8, !dbg !2335
  %low37 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %12, i64 0, i32 1, i32 0, !dbg !2335
  %13 = load i64, i64* %low37, align 8, !dbg !2335
  %conv38 = trunc i64 %13 to i32, !dbg !2335
  %arrayidx41 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands33, i64 1, !dbg !2336
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx41, align 8, !dbg !2336
  %call42 = tail call %union.tree_node* @chrec_fold_minus(%union.tree_node* %type, %union.tree_node* %14, %union.tree_node* %op1) #7, !dbg !2337
  %arrayidx45 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands33, i64 2, !dbg !2338
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx45, align 8, !dbg !2338
  %call46 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv38, %union.tree_node* %call42, %union.tree_node* %15) #7, !dbg !2339
  br label %cleanup136, !dbg !2340

sw.bb47:                                          ; preds = %if.end, %if.end
  %call48 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op0, i32* null) #7, !dbg !2341
  %tobool49 = icmp eq i8 %call48, 0, !dbg !2341
  br i1 %tobool49, label %sw.default52, label %if.then50, !dbg !2343

if.then50:                                        ; preds = %sw.bb47
  %16 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2344
  br label %cleanup136, !dbg !2345

sw.default52:                                     ; preds = %sw.bb47, %if.end
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2346
  %bf.load54 = load i64, i64* %17, align 8, !dbg !2346
  %18 = trunc i64 %bf.load54 to i16, !dbg !2346
  switch i16 %18, label %sw.default113 [
    i16 146, label %sw.bb57
    i16 116, label %sw.bb108
    i16 113, label %sw.bb108
  ], !dbg !2347

sw.bb57:                                          ; preds = %sw.default52
  switch i32 %code, label %if.else79 [
    i32 63, label %if.then63
    i32 66, label %if.then63
  ], !dbg !2348

if.then63:                                        ; preds = %sw.bb57, %sw.bb57
  %operands65 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2350
  %19 = bitcast %union.tree_node** %operands65 to %struct.tree_int_cst**, !dbg !2350
  %20 = load %struct.tree_int_cst*, %struct.tree_int_cst** %19, align 8, !dbg !2350
  %low69 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %20, i64 0, i32 1, i32 0, !dbg !2350
  %21 = load i64, i64* %low69, align 8, !dbg !2350
  %conv70 = trunc i64 %21 to i32, !dbg !2350
  %arrayidx73 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands65, i64 1, !dbg !2351
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx73, align 8, !dbg !2351
  %call74 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %22) #7, !dbg !2352
  %arrayidx77 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands65, i64 2, !dbg !2353
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx77, align 8, !dbg !2353
  %call78 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv70, %union.tree_node* %call74, %union.tree_node* %23) #7, !dbg !2354
  br label %cleanup136, !dbg !2355

if.else79:                                        ; preds = %sw.bb57
  %operands81 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2356
  %24 = bitcast %union.tree_node** %operands81 to %struct.tree_int_cst**, !dbg !2356
  %25 = load %struct.tree_int_cst*, %struct.tree_int_cst** %24, align 8, !dbg !2356
  %low85 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %25, i64 0, i32 1, i32 0, !dbg !2356
  %26 = load i64, i64* %low85, align 8, !dbg !2356
  %conv86 = trunc i64 %26 to i32, !dbg !2356
  %arrayidx89 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands81, i64 1, !dbg !2357
  %27 = load %union.tree_node*, %union.tree_node** %arrayidx89, align 8, !dbg !2357
  %call90 = tail call %union.tree_node* @chrec_fold_minus(%union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %27) #7, !dbg !2358
  %arrayidx93 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands81, i64 2, !dbg !2359
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx93, align 8, !dbg !2359
  %29 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2360
  %bf.load95 = load i64, i64* %29, align 8, !dbg !2360
  %bf.cast971 = and i64 %bf.load95, 65535, !dbg !2360
  %cmp98 = icmp eq i64 %bf.cast971, 9, !dbg !2360
  br i1 %cmp98, label %cond.true100, label %cond.false102, !dbg !2360

cond.true100:                                     ; preds = %if.else79
  %call101 = tail call %union.tree_node* @build_real(%union.tree_node* %type, %struct.real_value* nonnull byval(%struct.real_value) align 8 @dconstm1) #6, !dbg !2361
  br label %cond.end104, !dbg !2360

cond.false102:                                    ; preds = %if.else79
  %call103 = tail call %union.tree_node* @build_int_cst_type(%union.tree_node* %type, i64 -1) #6, !dbg !2362
  br label %cond.end104, !dbg !2360

cond.end104:                                      ; preds = %cond.false102, %cond.true100
  %cond105 = phi %union.tree_node* [ %call101, %cond.true100 ], [ %call103, %cond.false102 ], !dbg !2360
  %call106 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %28, %union.tree_node* %cond105) #7, !dbg !2363
  %call107 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv86, %union.tree_node* %call90, %union.tree_node* %call106) #7, !dbg !2364
  br label %cleanup136, !dbg !2365

sw.bb108:                                         ; preds = %sw.default52, %sw.default52
  %call109 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op1, i32* null) #7, !dbg !2366
  %tobool110 = icmp eq i8 %call109, 0, !dbg !2366
  br i1 %tobool110, label %sw.default113, label %if.then111, !dbg !2368

if.then111:                                       ; preds = %sw.bb108
  %30 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2369
  br label %cleanup136, !dbg !2370

sw.default113:                                    ; preds = %sw.bb108, %sw.default52
  %31 = bitcast i32* %size to i8*, !dbg !2371
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #8, !dbg !2371
  call void @llvm.dbg.value(metadata i32 0, metadata !2301, metadata !DIExpression()), !dbg !2372
  store i32 0, i32* %size, align 4, !dbg !2373
  call void @llvm.dbg.value(metadata i32* %size, metadata !2301, metadata !DIExpression(DW_OP_deref)), !dbg !2372
  %call114 = call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op0, i32* nonnull %size) #7, !dbg !2374
  %tobool116 = icmp eq i8 %call114, 0, !dbg !2374
  br i1 %tobool116, label %lor.lhs.false117, label %land.lhs.true, !dbg !2376

lor.lhs.false117:                                 ; preds = %sw.default113
  call void @llvm.dbg.value(metadata i32* %size, metadata !2301, metadata !DIExpression(DW_OP_deref)), !dbg !2372
  %call118 = call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op1, i32* nonnull %size) #7, !dbg !2377
  %tobool120 = icmp eq i8 %call118, 0, !dbg !2377
  br i1 %tobool120, label %lor.lhs.false117.if.else126_crit_edge, label %land.lhs.true, !dbg !2378

lor.lhs.false117.if.else126_crit_edge:            ; preds = %lor.lhs.false117
  %.pre = load i32, i32* %size, align 4, !dbg !2379
  %.pre2 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2381
  %value128.phi.trans.insert = getelementptr inbounds %struct.param_info, %struct.param_info* %.pre2, i64 63, i32 1, !dbg !2382
  %.pre3 = load i32, i32* %value128.phi.trans.insert, align 8, !dbg !2381
  br label %if.else126, !dbg !2378

land.lhs.true:                                    ; preds = %lor.lhs.false117, %sw.default113
  %32 = load i32, i32* %size, align 4, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %32, metadata !2301, metadata !DIExpression()), !dbg !2372
  %33 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2384
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %33, i64 63, i32 1, !dbg !2384
  %34 = load i32, i32* %value, align 8, !dbg !2384
  %cmp122 = icmp slt i32 %32, %34, !dbg !2385
  br i1 %cmp122, label %if.then124, label %if.else126, !dbg !2386

if.then124:                                       ; preds = %land.lhs.true
  %call125 = call %union.tree_node* @build2_stat(i32 %code, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) #6, !dbg !2387
  br label %cleanup, !dbg !2388

if.else126:                                       ; preds = %lor.lhs.false117.if.else126_crit_edge, %land.lhs.true
  %35 = phi i32 [ %.pre3, %lor.lhs.false117.if.else126_crit_edge ], [ %34, %land.lhs.true ], !dbg !2381
  %36 = phi i32 [ %.pre, %lor.lhs.false117.if.else126_crit_edge ], [ %32, %land.lhs.true ], !dbg !2379
  call void @llvm.dbg.value(metadata i32 %36, metadata !2301, metadata !DIExpression()), !dbg !2372
  %cmp129 = icmp slt i32 %36, %35, !dbg !2389
  br i1 %cmp129, label %if.then131, label %if.else135, !dbg !2390

if.then131:                                       ; preds = %if.else126
  %call132 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %op0) #6, !dbg !2391
  %call133 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %cond, %union.tree_node* %op1) #6, !dbg !2391
  %call134 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %code, %union.tree_node* %type, %union.tree_node* %call132, %union.tree_node* %call133) #6, !dbg !2391
  br label %cleanup, !dbg !2392

if.else135:                                       ; preds = %if.else126
  %37 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2393
  br label %cleanup, !dbg !2394

cleanup:                                          ; preds = %if.else135, %if.then131, %if.then124
  %retval.0 = phi %union.tree_node* [ %call125, %if.then124 ], [ %call134, %if.then131 ], [ %37, %if.else135 ], !dbg !2395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #8, !dbg !2396
  br label %cleanup136

cleanup136:                                       ; preds = %cleanup, %if.then111, %cond.end104, %if.then63, %if.then50, %if.else, %if.then21, %if.then14, %sw.bb9, %if.then
  %retval.1 = phi %union.tree_node* [ %call4, %if.then ], [ %retval.0, %cleanup ], [ %30, %if.then111 ], [ %call78, %if.then63 ], [ %call107, %cond.end104 ], [ %16, %if.then50 ], [ %call31, %if.then21 ], [ %call46, %if.else ], [ %5, %if.then14 ], [ %call10, %sw.bb9 ], !dbg !2305
  ret %union.tree_node* %retval.1, !dbg !2397
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_fold_minus(%union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) local_unnamed_addr #4 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !2402, metadata !DIExpression()), !dbg !2403
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op0) #7, !dbg !2404
  %tobool = icmp eq i8 %call, 0, !dbg !2404
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2406

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op1) #7, !dbg !2407
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2407
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2408

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = tail call fastcc %union.tree_node* @chrec_fold_automatically_generated_operands(%union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2409
  br label %return, !dbg !2410

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i32 @integer_zerop(%union.tree_node* %op1) #6, !dbg !2411
  %tobool6 = icmp eq i32 %call5, 0, !dbg !2411
  br i1 %tobool6, label %if.end8, label %return, !dbg !2413

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc %union.tree_node* @chrec_fold_plus_1(i32 64, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2414
  br label %return, !dbg !2415

return:                                           ; preds = %if.end, %if.end8, %if.then
  %retval.0 = phi %union.tree_node* [ %call4, %if.then ], [ %call9, %if.end8 ], [ %op0, %if.end ], !dbg !2403
  ret %union.tree_node* %retval.0, !dbg !2416
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) local_unnamed_addr #4 !dbg !2417 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !2421, metadata !DIExpression()), !dbg !2422
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op0) #7, !dbg !2423
  %tobool = icmp eq i8 %call, 0, !dbg !2423
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2425

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %op1) #7, !dbg !2426
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2426
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2427

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = tail call fastcc %union.tree_node* @chrec_fold_automatically_generated_operands(%union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2428
  br label %return, !dbg !2429

if.end:                                           ; preds = %lor.lhs.false
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2430
  %bf.load = load i64, i64* %0, align 8, !dbg !2430
  %1 = trunc i64 %bf.load to i16, !dbg !2430
  switch i16 %1, label %sw.default41 [
    i16 146, label %sw.bb
    i16 116, label %sw.bb36
    i16 113, label %sw.bb36
  ], !dbg !2431

sw.bb:                                            ; preds = %if.end
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2432
  %bf.load6 = load i64, i64* %2, align 8, !dbg !2432
  %3 = trunc i64 %bf.load6 to i16, !dbg !2432
  switch i16 %3, label %sw.default [
    i16 146, label %sw.bb9
    i16 116, label %sw.bb11
    i16 113, label %sw.bb11
  ], !dbg !2434

sw.bb9:                                           ; preds = %sw.bb
  %call10 = tail call fastcc %union.tree_node* @chrec_fold_multiply_poly_poly(%union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) #7, !dbg !2435
  br label %return, !dbg !2437

sw.bb11:                                          ; preds = %sw.bb, %sw.bb
  %call12 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op1, i32* null) #7, !dbg !2438
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2438
  br i1 %tobool13, label %sw.default, label %if.then14, !dbg !2440

if.then14:                                        ; preds = %sw.bb11
  %4 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2441
  br label %return, !dbg !2442

sw.default:                                       ; preds = %sw.bb11, %sw.bb
  %call16 = tail call i32 @integer_onep(%union.tree_node* %op1) #6, !dbg !2443
  %tobool17 = icmp eq i32 %call16, 0, !dbg !2443
  br i1 %tobool17, label %if.end19, label %return, !dbg !2445

if.end19:                                         ; preds = %sw.default
  %call20 = tail call i32 @integer_zerop(%union.tree_node* %op1) #6, !dbg !2446
  %tobool21 = icmp eq i32 %call20, 0, !dbg !2446
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !2448

if.then22:                                        ; preds = %if.end19
  %call23 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 0) #6, !dbg !2449
  br label %return, !dbg !2450

if.end24:                                         ; preds = %if.end19
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2451
  %5 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2451
  %6 = load %struct.tree_int_cst*, %struct.tree_int_cst** %5, align 8, !dbg !2451
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %6, i64 0, i32 1, i32 0, !dbg !2451
  %7 = load i64, i64* %low, align 8, !dbg !2451
  %conv26 = trunc i64 %7 to i32, !dbg !2451
  %arrayidx29 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2452
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx29, align 8, !dbg !2452
  %call30 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %8, %union.tree_node* %op1) #7, !dbg !2453
  %arrayidx33 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2454
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx33, align 8, !dbg !2454
  %call34 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %9, %union.tree_node* %op1) #7, !dbg !2455
  %call35 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv26, %union.tree_node* %call30, %union.tree_node* %call34) #7, !dbg !2456
  ret %union.tree_node* %call35, !dbg !2457

sw.bb36:                                          ; preds = %if.end, %if.end
  %call37 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op0, i32* null) #7, !dbg !2458
  %tobool38 = icmp eq i8 %call37, 0, !dbg !2458
  br i1 %tobool38, label %sw.default41, label %if.then39, !dbg !2460

if.then39:                                        ; preds = %sw.bb36
  %10 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2461
  br label %return, !dbg !2462

sw.default41:                                     ; preds = %sw.bb36, %if.end
  %call42 = tail call i32 @integer_onep(%union.tree_node* %op0) #6, !dbg !2463
  %tobool43 = icmp eq i32 %call42, 0, !dbg !2463
  br i1 %tobool43, label %if.end45, label %return, !dbg !2465

if.end45:                                         ; preds = %sw.default41
  %call46 = tail call i32 @integer_zerop(%union.tree_node* %op0) #6, !dbg !2466
  %tobool47 = icmp eq i32 %call46, 0, !dbg !2466
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !2468

if.then48:                                        ; preds = %if.end45
  %call49 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 0) #6, !dbg !2469
  br label %return, !dbg !2470

if.end50:                                         ; preds = %if.end45
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2471
  %bf.load52 = load i64, i64* %11, align 8, !dbg !2471
  %12 = trunc i64 %bf.load52 to i16, !dbg !2471
  switch i16 %12, label %sw.default77 [
    i16 146, label %sw.bb55
    i16 116, label %sw.bb72
    i16 113, label %sw.bb72
  ], !dbg !2472

sw.bb55:                                          ; preds = %if.end50
  %operands57 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2473
  %13 = bitcast %union.tree_node** %operands57 to %struct.tree_int_cst**, !dbg !2473
  %14 = load %struct.tree_int_cst*, %struct.tree_int_cst** %13, align 8, !dbg !2473
  %low61 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %14, i64 0, i32 1, i32 0, !dbg !2473
  %15 = load i64, i64* %low61, align 8, !dbg !2473
  %conv62 = trunc i64 %15 to i32, !dbg !2473
  %arrayidx65 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands57, i64 1, !dbg !2475
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx65, align 8, !dbg !2475
  %call66 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %16, %union.tree_node* %op0) #7, !dbg !2476
  %arrayidx69 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands57, i64 2, !dbg !2477
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx69, align 8, !dbg !2477
  %call70 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %17, %union.tree_node* %op0) #7, !dbg !2478
  %call71 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv62, %union.tree_node* %call66, %union.tree_node* %call70) #7, !dbg !2479
  ret %union.tree_node* %call71, !dbg !2457

sw.bb72:                                          ; preds = %if.end50, %if.end50
  %call73 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %op1, i32* null) #7, !dbg !2480
  %tobool74 = icmp eq i8 %call73, 0, !dbg !2480
  br i1 %tobool74, label %sw.default77, label %if.then75, !dbg !2482

if.then75:                                        ; preds = %sw.bb72
  %18 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2483
  br label %return, !dbg !2484

sw.default77:                                     ; preds = %sw.bb72, %if.end50
  %call78 = tail call i32 @integer_onep(%union.tree_node* %op1) #6, !dbg !2485
  %tobool79 = icmp eq i32 %call78, 0, !dbg !2485
  br i1 %tobool79, label %if.end81, label %return, !dbg !2487

if.end81:                                         ; preds = %sw.default77
  %call82 = tail call i32 @integer_zerop(%union.tree_node* %op1) #6, !dbg !2488
  %tobool83 = icmp eq i32 %call82, 0, !dbg !2488
  br i1 %tobool83, label %if.end86, label %if.then84, !dbg !2490

if.then84:                                        ; preds = %if.end81
  %call85 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 0) #6, !dbg !2491
  br label %return, !dbg !2492

if.end86:                                         ; preds = %if.end81
  %call87 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) #6, !dbg !2493
  br label %return, !dbg !2494

return:                                           ; preds = %sw.default, %sw.default77, %sw.default41, %if.end86, %if.then84, %if.then75, %if.then48, %if.then39, %if.then22, %if.then14, %sw.bb9, %if.then
  %retval.0 = phi %union.tree_node* [ %call4, %if.then ], [ %call49, %if.then48 ], [ %call85, %if.then84 ], [ %call87, %if.end86 ], [ %18, %if.then75 ], [ %10, %if.then39 ], [ %call23, %if.then22 ], [ %4, %if.then14 ], [ %call10, %sw.bb9 ], [ %op0, %sw.default ], [ %op1, %sw.default41 ], [ %op0, %sw.default77 ], !dbg !2422
  ret %union.tree_node* %retval.0, !dbg !2457
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @chrec_fold_multiply_poly_poly(%union.tree_node* %type, %union.tree_node* %poly0, %union.tree_node* %poly1) unnamed_addr #0 !dbg !2495 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2497, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %union.tree_node* %poly0, metadata !2498, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %union.tree_node* %poly1, metadata !2499, metadata !DIExpression()), !dbg !2506
  %call = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %poly0) #7, !dbg !2507
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !2504, metadata !DIExpression()), !dbg !2506
  %call1 = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %poly1) #7, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.loop* %call1, metadata !2505, metadata !DIExpression()), !dbg !2506
  %tobool = icmp eq %union.tree_node* %poly0, null, !dbg !2509
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2509

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2509
  br label %cond.end, !dbg !2509

cond.end:                                         ; preds = %entry, %cond.true
  %tobool2 = icmp eq %union.tree_node* %poly1, null, !dbg !2510
  br i1 %tobool2, label %cond.true3, label %cond.end5, !dbg !2510

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2510
  br label %cond.end5, !dbg !2510

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2511
  %bf.load = load i64, i64* %0, align 8, !dbg !2511
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2511
  %cmp = icmp eq i64 %bf.cast1, 146, !dbg !2511
  br i1 %cmp, label %cond.end9, label %cond.true7, !dbg !2511

cond.true7:                                       ; preds = %cond.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2511
  br label %cond.end9, !dbg !2511

cond.end9:                                        ; preds = %cond.end5, %cond.true7
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2512
  %bf.load12 = load i64, i64* %1, align 8, !dbg !2512
  %bf.cast142 = and i64 %bf.load12, 65535, !dbg !2512
  %cmp15 = icmp eq i64 %bf.cast142, 146, !dbg !2512
  br i1 %cmp15, label %cond.end18, label %cond.true16, !dbg !2512

cond.true16:                                      ; preds = %cond.end9
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2512
  br label %cond.end18, !dbg !2512

cond.end18:                                       ; preds = %cond.end9, %cond.true16
  %call20 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly0) #7, !dbg !2513
  %call21 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly1) #7, !dbg !2513
  %cmp22 = icmp eq %union.tree_node* %call20, %call21, !dbg !2513
  br i1 %cmp22, label %cond.end25, label %cond.true23, !dbg !2513

cond.true23:                                      ; preds = %cond.end18
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2513
  br label %cond.end25, !dbg !2513

cond.end25:                                       ; preds = %cond.end18, %cond.true23
  %call27 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly0) #7, !dbg !2514
  %cmp28 = icmp eq %union.tree_node* %call27, %type, !dbg !2514
  br i1 %cmp28, label %cond.end31, label %cond.true29, !dbg !2514

cond.true29:                                      ; preds = %cond.end25
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2514
  br label %cond.end31, !dbg !2514

cond.end31:                                       ; preds = %cond.end25, %cond.true29
  %call33 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call, %struct.loop* %call1) #6, !dbg !2515
  %tobool34 = icmp eq i8 %call33, 0, !dbg !2515
  br i1 %tobool34, label %if.end, label %if.then, !dbg !2517

if.then:                                          ; preds = %cond.end31
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2518
  %2 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2518
  %3 = load %struct.tree_int_cst*, %struct.tree_int_cst** %2, align 8, !dbg !2518
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %3, i64 0, i32 1, i32 0, !dbg !2518
  %4 = load i64, i64* %low, align 8, !dbg !2518
  %conv = trunc i64 %4 to i32, !dbg !2518
  %arrayidx38 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2519
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8, !dbg !2519
  %call39 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %5, %union.tree_node* %poly0) #7, !dbg !2520
  %arrayidx42 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2521
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx42, align 8, !dbg !2521
  %call43 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv, %union.tree_node* %call39, %union.tree_node* %6) #7, !dbg !2522
  br label %cleanup, !dbg !2523

if.end:                                           ; preds = %cond.end31
  %call44 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call1, %struct.loop* %call) #6, !dbg !2524
  %tobool45 = icmp eq i8 %call44, 0, !dbg !2524
  br i1 %tobool45, label %if.end62, label %if.then46, !dbg !2526

if.then46:                                        ; preds = %if.end
  %operands48 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2527
  %7 = bitcast %union.tree_node** %operands48 to %struct.tree_int_cst**, !dbg !2527
  %8 = load %struct.tree_int_cst*, %struct.tree_int_cst** %7, align 8, !dbg !2527
  %low52 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %8, i64 0, i32 1, i32 0, !dbg !2527
  %9 = load i64, i64* %low52, align 8, !dbg !2527
  %conv53 = trunc i64 %9 to i32, !dbg !2527
  %arrayidx56 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands48, i64 1, !dbg !2528
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx56, align 8, !dbg !2528
  %call57 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %10, %union.tree_node* %poly1) #7, !dbg !2529
  %arrayidx60 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands48, i64 2, !dbg !2530
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx60, align 8, !dbg !2530
  %call61 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv53, %union.tree_node* %call57, %union.tree_node* %11) #7, !dbg !2531
  br label %cleanup, !dbg !2532

if.end62:                                         ; preds = %if.end
  %cmp63 = icmp eq %struct.loop* %call, %call1, !dbg !2533
  br i1 %cmp63, label %cond.end67, label %cond.true65, !dbg !2533

cond.true65:                                      ; preds = %if.end62
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2533
  br label %cond.end67, !dbg !2533

cond.end67:                                       ; preds = %if.end62, %cond.true65
  %operands70 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2534
  %arrayidx71 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands70, i64 1, !dbg !2534
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx71, align 8, !dbg !2534
  %operands73 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2535
  %arrayidx74 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands73, i64 1, !dbg !2535
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx74, align 8, !dbg !2535
  %call75 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %12, %union.tree_node* %13) #7, !dbg !2536
  call void @llvm.dbg.value(metadata %union.tree_node* %call75, metadata !2500, metadata !DIExpression()), !dbg !2506
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx71, align 8, !dbg !2537
  %arrayidx81 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands73, i64 2, !dbg !2538
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx81, align 8, !dbg !2538
  %call82 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %14, %union.tree_node* %15) #7, !dbg !2539
  call void @llvm.dbg.value(metadata %union.tree_node* %call82, metadata !2501, metadata !DIExpression()), !dbg !2506
  %arrayidx85 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands70, i64 2, !dbg !2540
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx85, align 8, !dbg !2540
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx74, align 8, !dbg !2541
  %call89 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %16, %union.tree_node* %17) #7, !dbg !2542
  %call90 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %call82, %union.tree_node* %call89) #7, !dbg !2543
  call void @llvm.dbg.value(metadata %union.tree_node* %call90, metadata !2501, metadata !DIExpression()), !dbg !2506
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx85, align 8, !dbg !2544
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx81, align 8, !dbg !2545
  %call97 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %18, %union.tree_node* %19) #7, !dbg !2546
  call void @llvm.dbg.value(metadata %union.tree_node* %call97, metadata !2502, metadata !DIExpression()), !dbg !2506
  %call98 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %call90, %union.tree_node* %call97) #7, !dbg !2547
  call void @llvm.dbg.value(metadata %union.tree_node* %call98, metadata !2501, metadata !DIExpression()), !dbg !2506
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2548
  %bf.load100 = load i64, i64* %20, align 8, !dbg !2548
  %bf.cast1023 = and i64 %bf.load100, 65535, !dbg !2548
  %cmp103 = icmp eq i64 %bf.cast1023, 9, !dbg !2548
  br i1 %cmp103, label %cond.true105, label %cond.false107, !dbg !2548

cond.true105:                                     ; preds = %cond.end67
  %call106 = tail call %union.tree_node* @build_real(%union.tree_node* %type, %struct.real_value* nonnull byval(%struct.real_value) align 8 @dconst2) #6, !dbg !2549
  br label %cond.end109, !dbg !2548

cond.false107:                                    ; preds = %cond.end67
  %call108 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 2) #6, !dbg !2550
  br label %cond.end109, !dbg !2548

cond.end109:                                      ; preds = %cond.false107, %cond.true105
  %cond110 = phi %union.tree_node* [ %call106, %cond.true105 ], [ %call108, %cond.false107 ], !dbg !2548
  %call111 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %cond110, %union.tree_node* %call97) #7, !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %call111, metadata !2502, metadata !DIExpression()), !dbg !2506
  %21 = bitcast %union.tree_node** %operands70 to %struct.tree_int_cst**, !dbg !2552
  %22 = load %struct.tree_int_cst*, %struct.tree_int_cst** %21, align 8, !dbg !2552
  %low117 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %22, i64 0, i32 1, i32 0, !dbg !2552
  %23 = load i64, i64* %low117, align 8, !dbg !2552
  %conv118 = trunc i64 %23 to i32, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %conv118, metadata !2503, metadata !DIExpression()), !dbg !2506
  %call119 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv118, %union.tree_node* %call98, %union.tree_node* %call111) #7, !dbg !2553
  %call120 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv118, %union.tree_node* %call75, %union.tree_node* %call119) #7, !dbg !2554
  br label %cleanup, !dbg !2555

cleanup:                                          ; preds = %cond.end109, %if.then46, %if.then
  %retval.0 = phi %union.tree_node* [ %call43, %if.then ], [ %call61, %if.then46 ], [ %call120, %cond.end109 ], !dbg !2506
  ret %union.tree_node* %retval.0, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @tree_contains_chrecs(%union.tree_node* %expr, i32* %size) local_unnamed_addr #4 !dbg !2557 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2562, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32* %size, metadata !2563, metadata !DIExpression()), !dbg !2566
  %cmp = icmp eq %union.tree_node* %expr, null, !dbg !2567
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2569

if.end:                                           ; preds = %entry
  %tobool = icmp eq i32* %size, null, !dbg !2570
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2572

if.then1:                                         ; preds = %if.end
  %0 = load i32, i32* %size, align 4, !dbg !2573
  %inc = add nsw i32 %0, 1, !dbg !2573
  store i32 %inc, i32* %size, align 4, !dbg !2573
  br label %if.end2, !dbg !2574

if.end2:                                          ; preds = %if.end, %if.then1
  %call = tail call fastcc zeroext i8 @tree_is_chrec(%union.tree_node* nonnull %expr) #7, !dbg !2575
  %tobool3 = icmp eq i8 %call, 0, !dbg !2575
  br i1 %tobool3, label %if.end5, label %cleanup, !dbg !2577

if.end5:                                          ; preds = %if.end2
  %call6 = tail call fastcc i32 @tree_operand_length(%union.tree_node* nonnull %expr) #7, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2565, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2566
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2579
  %1 = sext i32 %call6 to i64, !dbg !2583
  br label %for.cond, !dbg !2583

for.cond:                                         ; preds = %for.inc, %if.end5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end5 ], !dbg !2584
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2564, metadata !DIExpression()), !dbg !2566
  %cmp7 = icmp slt i64 %indvars.iv, %1, !dbg !2585
  br i1 %cmp7, label %for.body, label %cleanup.loopexit, !dbg !2586

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 %indvars.iv, !dbg !2579
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2579
  %call8 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %2, i32* %size) #7, !dbg !2587
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2587
  br i1 %tobool9, label %for.inc, label %cleanup.loopexit, !dbg !2588

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 undef, metadata !2564, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2566
  br label %for.cond, !dbg !2590, !llvm.loop !2591

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %for.body ]
  br label %cleanup, !dbg !2593

cleanup:                                          ; preds = %cleanup.loopexit, %if.end2, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 1, %if.end2 ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2566
  ret i8 %retval.0, !dbg !2593
}

declare dso_local i32 @integer_onep(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @build_polynomial_chrec(i32 %loop_num, %union.tree_node* %left, %union.tree_node* %right) unnamed_addr #0 !dbg !2594 {
entry:
  %val = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %union.tree_node* %left, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %union.tree_node* %right, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %val, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %val) #8, !dbg !2603
  %0 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2604
  %cmp = icmp eq %union.tree_node* %0, %left, !dbg !2606
  %cmp1 = icmp eq %union.tree_node* %0, %right, !dbg !2607
  %or.cond = or i1 %cmp, %cmp1, !dbg !2608
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2608

if.then:                                          ; preds = %entry
  br label %cleanup, !dbg !2609

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %val, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2602
  %call = call fastcc zeroext i8 @no_evolution_in_loop_p(%union.tree_node* %left, i32 %loop_num, i8* nonnull %val) #7, !dbg !2610
  %tobool = icmp ne i8 %call, 0, !dbg !2610
  %1 = load i8, i8* %val, align 1, !dbg !2612
  call void @llvm.dbg.value(metadata i8 %1, metadata !2601, metadata !DIExpression()), !dbg !2602
  %tobool3 = icmp ne i8 %1, 0, !dbg !2612
  %or.cond1 = and i1 %tobool, %tobool3, !dbg !2613
  br i1 %or.cond1, label %if.end5, label %if.then4, !dbg !2613

if.then4:                                         ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2614
  br label %cleanup, !dbg !2615

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %right, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2616
  %3 = bitcast %union.tree_node** %type to i64**, !dbg !2616
  %4 = load i64*, i64** %3, align 8, !dbg !2616
  %bf.load = load i64, i64* %4, align 8, !dbg !2616
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2616
  %cmp6 = icmp eq i64 %bf.cast2, 10, !dbg !2616
  br i1 %cmp6, label %cond.true, label %lor.lhs.false7, !dbg !2616

lor.lhs.false7:                                   ; preds = %if.end5
  %cmp14 = icmp eq i64 %bf.cast2, 12, !dbg !2616
  br i1 %cmp14, label %cond.true, label %cond.end, !dbg !2616

cond.true:                                        ; preds = %lor.lhs.false7, %if.end5
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2616
  br label %cond.end, !dbg !2616

cond.end:                                         ; preds = %lor.lhs.false7, %cond.true
  %type16 = getelementptr inbounds %union.tree_node, %union.tree_node* %left, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2617
  %5 = bitcast %union.tree_node** %type16 to i64**, !dbg !2617
  %6 = load i64*, i64** %5, align 8, !dbg !2617
  %bf.load18 = load i64, i64* %6, align 8, !dbg !2617
  %bf.cast204 = and i64 %bf.load18, 65535, !dbg !2617
  %cmp21 = icmp eq i64 %bf.cast204, 10, !dbg !2617
  %7 = bitcast i64* %6 to %union.tree_node*, !dbg !2617
  br i1 %cmp21, label %if.then30, label %lor.lhs.false22, !dbg !2617

lor.lhs.false22:                                  ; preds = %cond.end
  %cmp29 = icmp eq i64 %bf.cast204, 12, !dbg !2617
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !2619

if.then30:                                        ; preds = %lor.lhs.false22, %cond.end
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2620
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2620
  %cmp33 = icmp eq %union.tree_node* %8, %9, !dbg !2620
  br i1 %cmp33, label %if.end47, label %cond.true34, !dbg !2620

cond.true34:                                      ; preds = %if.then30
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2620
  br label %if.end47, !dbg !2620

if.else:                                          ; preds = %lor.lhs.false22
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2621
  %cmp42 = icmp eq %union.tree_node* %10, %7, !dbg !2621
  br i1 %cmp42, label %if.end47, label %cond.true43, !dbg !2621

cond.true43:                                      ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2621
  br label %if.end47, !dbg !2621

if.end47:                                         ; preds = %cond.true43, %if.else, %cond.true34, %if.then30
  %call48 = call fastcc zeroext i8 @chrec_zerop(%union.tree_node* %right) #7, !dbg !2622
  %tobool49 = icmp eq i8 %call48, 0, !dbg !2622
  br i1 %tobool49, label %if.end51, label %cleanup, !dbg !2624

if.end51:                                         ; preds = %if.end47
  %11 = load %union.tree_node*, %union.tree_node** %type16, align 8, !dbg !2625
  %conv = zext i32 %loop_num to i64, !dbg !2625
  %call54 = call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv) #6, !dbg !2625
  %call55 = call %union.tree_node* @build3_stat(i32 146, %union.tree_node* %11, %union.tree_node* %call54, %union.tree_node* %left, %union.tree_node* %right) #6, !dbg !2625
  br label %cleanup, !dbg !2626

cleanup:                                          ; preds = %if.end47, %if.end51, %if.then4, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ %call55, %if.end51 ], [ %2, %if.then4 ], [ %left, %if.end47 ], !dbg !2602
  call void @llvm.dbg.value(metadata i8* %val, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2602
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %val) #8, !dbg !2627
  ret %union.tree_node* %retval.0, !dbg !2627
}

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_apply(i32 %var, %union.tree_node* %chrec, %union.tree_node* %x) local_unnamed_addr #4 !dbg !2628 {
entry:
  call void @llvm.dbg.value(metadata i32 %var, metadata !2630, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2631, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %union.tree_node* %x, metadata !2632, metadata !DIExpression()), !dbg !2635
  %call = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %chrec) #7, !dbg !2636
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2633, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %union.tree_node* undef, metadata !2634, metadata !DIExpression()), !dbg !2635
  %call1 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec) #7, !dbg !2637
  %tobool = icmp eq i8 %call1, 0, !dbg !2637
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2639

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %x) #7, !dbg !2640
  %tobool4 = icmp eq i8 %call2, 0, !dbg !2640
  br i1 %tobool4, label %lor.lhs.false5, label %if.then, !dbg !2641

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(%union.tree_node* %chrec, i32 %var) #6, !dbg !2642
  %tobool8 = icmp eq i8 %call6, 0, !dbg !2642
  br i1 %tobool8, label %if.end, label %if.then, !dbg !2643

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  %0 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2644
  br label %cleanup, !dbg !2645

if.end:                                           ; preds = %lor.lhs.false5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2646
  %tobool9 = icmp eq %struct._IO_FILE* %1, null, !dbg !2646
  br i1 %tobool9, label %if.end13, label %land.lhs.true, !dbg !2648

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @dump_flags, align 4, !dbg !2649
  %and = and i32 %2, 8, !dbg !2650
  %tobool10 = icmp eq i32 %and, 0, !dbg !2650
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !2651

if.then11:                                        ; preds = %land.lhs.true
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2652
  br label %if.end13, !dbg !2652

if.end13:                                         ; preds = %land.lhs.true, %if.end, %if.then11
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %x, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2653
  %bf.load = load i64, i64* %3, align 8, !dbg !2653
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2655
  %cmp = icmp eq i64 %bf.cast1, 23, !dbg !2655
  br i1 %cmp, label %land.lhs.true15, label %if.end24, !dbg !2656

land.lhs.true15:                                  ; preds = %if.end13
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2657
  %bf.load17 = load i64, i64* %4, align 8, !dbg !2657
  %bf.cast194 = and i64 %bf.load17, 65535, !dbg !2657
  %cmp20 = icmp eq i64 %bf.cast194, 9, !dbg !2657
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !2658

if.then22:                                        ; preds = %land.lhs.true15
  %call23 = tail call %union.tree_node* @build_real_from_int_cst(%union.tree_node* %call, %union.tree_node* %x) #6, !dbg !2659
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !2632, metadata !DIExpression()), !dbg !2635
  br label %if.end24, !dbg !2660

if.end24:                                         ; preds = %if.then22, %land.lhs.true15, %if.end13
  %x.addr.0 = phi %union.tree_node* [ %call23, %if.then22 ], [ %x, %land.lhs.true15 ], [ %x, %if.end13 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %x.addr.0, metadata !2632, metadata !DIExpression()), !dbg !2635
  %call25 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(%union.tree_node* %chrec) #7, !dbg !2661
  %tobool26 = icmp eq i8 %call25, 0, !dbg !2661
  br i1 %tobool26, label %if.else, label %if.then27, !dbg !2663

if.then27:                                        ; preds = %if.end24
  %call28 = tail call %union.tree_node* @chrec_convert_rhs(%union.tree_node* %call, %union.tree_node* %x.addr.0, %union.gimple_statement_d* null) #7, !dbg !2664
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !2632, metadata !DIExpression()), !dbg !2635
  %type29 = getelementptr inbounds %union.tree_node, %union.tree_node* %call28, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2666
  %5 = load %union.tree_node*, %union.tree_node** %type29, align 8, !dbg !2666
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2667
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2667
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2667
  %call30 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %5, %union.tree_node* %6, %union.tree_node* %call28) #7, !dbg !2668
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !2634, metadata !DIExpression()), !dbg !2635
  %arrayidx33 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2669
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx33, align 8, !dbg !2669
  %call34 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %call, %union.tree_node* %7, %union.tree_node* %call30) #7, !dbg !2670
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !2634, metadata !DIExpression()), !dbg !2635
  br label %if.end58, !dbg !2671

if.else:                                          ; preds = %if.end24
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2672
  %bf.load36 = load i64, i64* %8, align 8, !dbg !2672
  %bf.cast382 = and i64 %bf.load36, 65535, !dbg !2674
  %cmp39 = icmp eq i64 %bf.cast382, 146, !dbg !2674
  br i1 %cmp39, label %if.else42, label %if.end58, !dbg !2675

if.else42:                                        ; preds = %if.else
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %x.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2676
  %bf.load44 = load i64, i64* %9, align 8, !dbg !2676
  %bf.cast463 = and i64 %bf.load44, 65535, !dbg !2678
  %cmp47 = icmp eq i64 %bf.cast463, 23, !dbg !2678
  br i1 %cmp47, label %land.lhs.true49, label %if.else55, !dbg !2679

land.lhs.true49:                                  ; preds = %if.else42
  %call50 = tail call i32 @tree_int_cst_sgn(%union.tree_node* %x.addr.0) #6, !dbg !2680
  %cmp51 = icmp eq i32 %call50, 1, !dbg !2681
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !2682

if.then53:                                        ; preds = %land.lhs.true49
  %call54 = tail call fastcc %union.tree_node* @chrec_evaluate(i32 %var, %union.tree_node* %chrec, %union.tree_node* %x.addr.0, i32 0) #7, !dbg !2683
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !2634, metadata !DIExpression()), !dbg !2635
  br label %if.end58, !dbg !2684

if.else55:                                        ; preds = %land.lhs.true49, %if.else42
  %10 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2685
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !2634, metadata !DIExpression()), !dbg !2635
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.else55, %if.then53, %if.then27
  %x.addr.1 = phi %union.tree_node* [ %call28, %if.then27 ], [ %x.addr.0, %if.then53 ], [ %x.addr.0, %if.else55 ], [ %x.addr.0, %if.else ], !dbg !2635
  %res.2 = phi %union.tree_node* [ %call34, %if.then27 ], [ %call54, %if.then53 ], [ %10, %if.else55 ], [ %chrec, %if.else ], !dbg !2686
  call void @llvm.dbg.value(metadata %union.tree_node* %res.2, metadata !2634, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %union.tree_node* %x.addr.1, metadata !2632, metadata !DIExpression()), !dbg !2635
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2687
  %tobool59 = icmp eq %struct._IO_FILE* %11, null, !dbg !2687
  br i1 %tobool59, label %cleanup, label %land.lhs.true60, !dbg !2689

land.lhs.true60:                                  ; preds = %if.end58
  %12 = load i32, i32* @dump_flags, align 4, !dbg !2690
  %and61 = and i32 %12, 8, !dbg !2691
  %tobool62 = icmp eq i32 %and61, 0, !dbg !2691
  br i1 %tobool62, label %cleanup, label %if.then63, !dbg !2692

if.then63:                                        ; preds = %land.lhs.true60
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %var) #6, !dbg !2693
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2695
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2696
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2697
  tail call void @print_generic_expr(%struct._IO_FILE* %14, %union.tree_node* %chrec, i32 0) #6, !dbg !2698
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2699
  %call66 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2700
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2701
  tail call void @print_generic_expr(%struct._IO_FILE* %16, %union.tree_node* %x.addr.1, i32 0) #6, !dbg !2702
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2703
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2704
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2705
  tail call void @print_generic_expr(%struct._IO_FILE* %18, %union.tree_node* %res.2, i32 0) #6, !dbg !2706
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2707
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2708
  br label %cleanup, !dbg !2709

cleanup:                                          ; preds = %land.lhs.true60, %if.end58, %if.then63, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ %res.2, %if.then63 ], [ %res.2, %land.lhs.true60 ], [ %res.2, %if.end58 ], !dbg !2635
  ret %union.tree_node* %retval.0, !dbg !2710
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @chrec_type(%union.tree_node* %chrec) unnamed_addr #0 !dbg !2711 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2715, metadata !DIExpression()), !dbg !2716
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec) #7, !dbg !2717
  %tobool = icmp eq i8 %call, 0, !dbg !2717
  br i1 %tobool, label %if.end, label %return, !dbg !2719

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2720
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2720
  br label %return, !dbg !2721

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %0, %if.end ], [ null, %entry ], !dbg !2716
  ret %union.tree_node* %retval.0, !dbg !2722
}

declare dso_local zeroext i8 @chrec_contains_symbols_defined_in_loop(%union.tree_node*, i32) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_real_from_int_cst(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @evolution_function_is_affine_p(%union.tree_node* %chrec) unnamed_addr #0 !dbg !2723 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2725, metadata !DIExpression()), !dbg !2726
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !2727
  br i1 %cmp, label %return, label %if.end, !dbg !2729

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2730
  %bf.load = load i64, i64* %0, align 8, !dbg !2730
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2731
  %cond = icmp eq i64 %bf.cast1, 146, !dbg !2731
  br i1 %cond, label %sw.bb, label %return, !dbg !2731

sw.bb:                                            ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2732
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2732
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2732
  %2 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2735
  %3 = load %struct.tree_int_cst*, %struct.tree_int_cst** %2, align 8, !dbg !2735
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %3, i64 0, i32 1, i32 0, !dbg !2735
  %4 = load i64, i64* %low, align 8, !dbg !2735
  %conv = trunc i64 %4 to i32, !dbg !2735
  %call = tail call zeroext i8 @evolution_function_is_invariant_p(%union.tree_node* %1, i32 %conv) #7, !dbg !2736
  %tobool = icmp eq i8 %call, 0, !dbg !2736
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2737

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx8 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2738
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx8, align 8, !dbg !2738
  %6 = load %struct.tree_int_cst*, %struct.tree_int_cst** %2, align 8, !dbg !2739
  %low14 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %6, i64 0, i32 1, i32 0, !dbg !2739
  %7 = load i64, i64* %low14, align 8, !dbg !2739
  %conv15 = trunc i64 %7 to i32, !dbg !2739
  %call16 = tail call zeroext i8 @evolution_function_is_invariant_p(%union.tree_node* %5, i32 %conv15) #7, !dbg !2740
  %tobool18 = icmp eq i8 %call16, 0, !dbg !2740
  br i1 %tobool18, label %if.else, label %return, !dbg !2741

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  br label %return, !dbg !2742

return:                                           ; preds = %land.lhs.true, %if.end, %entry, %if.else
  %retval.0 = phi i8 [ 0, %if.else ], [ 0, %entry ], [ 1, %land.lhs.true ], [ 0, %if.end ], !dbg !2726
  ret i8 %retval.0, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_convert_rhs(%union.tree_node* %type, %union.tree_node* %chrec, %union.gimple_statement_d* %at_stmt) local_unnamed_addr #4 !dbg !2744 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %at_stmt, metadata !2748, metadata !DIExpression()), !dbg !2749
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2750
  %bf.load = load i64, i64* %0, align 8, !dbg !2750
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2750
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2750
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2750

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 12, !dbg !2750
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2752

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2753
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2746, metadata !DIExpression()), !dbg !2749
  br label %if.end, !dbg !2754

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %type.addr.0 = phi %union.tree_node* [ %1, %if.then ], [ %type, %lor.lhs.false ]
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0, metadata !2746, metadata !DIExpression()), !dbg !2749
  %call = tail call %union.tree_node* @chrec_convert(%union.tree_node* %type.addr.0, %union.tree_node* %chrec, %union.gimple_statement_d* %at_stmt) #7, !dbg !2755
  ret %union.tree_node* %call, !dbg !2756
}

declare dso_local i32 @tree_int_cst_sgn(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @chrec_evaluate(i32 %var, %union.tree_node* %chrec, %union.tree_node* %n, i32 %k) unnamed_addr #4 !dbg !2757 {
entry:
  call void @llvm.dbg.value(metadata i32 %var, metadata !2761, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2762, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %n, metadata !2763, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 %k, metadata !2764, metadata !DIExpression()), !dbg !2770
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2771
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2771
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2768, metadata !DIExpression()), !dbg !2770
  %call = tail call fastcc %struct.loop* @get_loop(i32 %var) #7, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !2769, metadata !DIExpression()), !dbg !2770
  br label %while.cond, !dbg !2773

while.cond:                                       ; preds = %while.body, %entry
  %chrec.addr.0 = phi %union.tree_node* [ %chrec, %entry ], [ %2, %while.body ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0, metadata !2762, metadata !DIExpression()), !dbg !2770
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2774
  %bf.load = load i64, i64* %1, align 8, !dbg !2774
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2775
  %cmp = icmp eq i64 %bf.cast1, 146, !dbg !2775
  br i1 %cmp, label %land.rhs, label %while.end.loopexit, !dbg !2776

land.rhs:                                         ; preds = %while.cond
  %call2 = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %chrec.addr.0) #7, !dbg !2777
  %call3 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call, %struct.loop* %call2) #6, !dbg !2778
  %tobool = icmp eq i8 %call3, 0, !dbg !2776
  br i1 %tobool, label %land.rhs.while.end_crit_edge, label %while.body, !dbg !2773

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  %chrec.addr.0.lcssa11 = phi %union.tree_node* [ %chrec.addr.0, %land.rhs ]
  %.lcssa10 = phi i64* [ %1, %land.rhs ], !dbg !2774
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa11, metadata !2762, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa11, metadata !2762, metadata !DIExpression()), !dbg !2770
  %bf.load5.pre = load i64, i64* %.lcssa10, align 8, !dbg !2779
  br label %while.end, !dbg !2773

while.body:                                       ; preds = %land.rhs
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2781
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2781
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2781
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2762, metadata !DIExpression()), !dbg !2770
  br label %while.cond, !dbg !2773, !llvm.loop !2782

while.end.loopexit:                               ; preds = %while.cond
  %chrec.addr.0.lcssa = phi %union.tree_node* [ %chrec.addr.0, %while.cond ]
  %bf.load.lcssa = phi i64 [ %bf.load, %while.cond ], !dbg !2774
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2762, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2762, metadata !DIExpression()), !dbg !2770
  br label %while.end, !dbg !2783

while.end:                                        ; preds = %while.end.loopexit, %land.rhs.while.end_crit_edge
  %chrec.addr.012 = phi %union.tree_node* [ %chrec.addr.0.lcssa11, %land.rhs.while.end_crit_edge ], [ %chrec.addr.0.lcssa, %while.end.loopexit ]
  %bf.load5 = phi i64 [ %bf.load5.pre, %land.rhs.while.end_crit_edge ], [ %bf.load.lcssa, %while.end.loopexit ], !dbg !2779
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.012, metadata !2762, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.012, metadata !2762, metadata !DIExpression()), !dbg !2770
  %bf.cast72 = and i64 %bf.load5, 65535, !dbg !2783
  %cmp8 = icmp eq i64 %bf.cast72, 146, !dbg !2783
  br i1 %cmp8, label %land.lhs.true, label %if.end33, !dbg !2784

land.lhs.true:                                    ; preds = %while.end
  %operands11 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.addr.012, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2785
  %3 = bitcast %union.tree_node** %operands11 to %struct.tree_int_cst**, !dbg !2785
  %4 = load %struct.tree_int_cst*, %struct.tree_int_cst** %3, align 8, !dbg !2785
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %4, i64 0, i32 1, i32 0, !dbg !2785
  %5 = load i64, i64* %low, align 8, !dbg !2785
  %conv14 = zext i32 %var to i64, !dbg !2786
  %cmp15 = icmp eq i64 %5, %conv14, !dbg !2787
  br i1 %cmp15, label %if.then, label %if.end33, !dbg !2788

if.then:                                          ; preds = %land.lhs.true
  %arrayidx19 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands11, i64 2, !dbg !2789
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8, !dbg !2789
  %add = add i32 %k, 1, !dbg !2791
  %call20 = tail call fastcc %union.tree_node* @chrec_evaluate(i32 %var, %union.tree_node* %6, %union.tree_node* %n, i32 %add) #7, !dbg !2792
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !2766, metadata !DIExpression()), !dbg !2770
  %7 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2793
  %cmp21 = icmp eq %union.tree_node* %call20, %7, !dbg !2795
  br i1 %cmp21, label %if.then23, label %if.end, !dbg !2796

if.then23:                                        ; preds = %if.then
  br label %cleanup, !dbg !2797

if.end:                                           ; preds = %if.then
  %call24 = tail call fastcc %union.tree_node* @tree_fold_binomial(%union.tree_node* %0, %union.tree_node* %n, i32 %k) #7, !dbg !2798
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !2767, metadata !DIExpression()), !dbg !2770
  %tobool25 = icmp eq %union.tree_node* %call24, null, !dbg !2799
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2801

if.then26:                                        ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2802
  br label %cleanup, !dbg !2803

if.end27:                                         ; preds = %if.end
  %arrayidx30 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands11, i64 1, !dbg !2804
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8, !dbg !2804
  %call31 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %0, %union.tree_node* %9, %union.tree_node* nonnull %call24) #6, !dbg !2804
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !2765, metadata !DIExpression()), !dbg !2770
  %call32 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %0, %union.tree_node* %call31, %union.tree_node* %call20) #7, !dbg !2805
  br label %cleanup, !dbg !2806

if.end33:                                         ; preds = %land.lhs.true, %while.end
  %chrec.addr.013 = phi %union.tree_node* [ %chrec.addr.012, %land.lhs.true ], [ %chrec.addr.012, %while.end ]
  %call34 = tail call fastcc %union.tree_node* @tree_fold_binomial(%union.tree_node* %0, %union.tree_node* %n, i32 %k) #7, !dbg !2807
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !2767, metadata !DIExpression()), !dbg !2770
  %tobool35 = icmp eq %union.tree_node* %call34, null, !dbg !2808
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !2810

if.then36:                                        ; preds = %if.end33
  %10 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2811
  br label %cleanup, !dbg !2812

if.end37:                                         ; preds = %if.end33
  %call38 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %0, %union.tree_node* %chrec.addr.013, %union.tree_node* nonnull %call34) #6, !dbg !2813
  br label %cleanup, !dbg !2814

cleanup:                                          ; preds = %if.end37, %if.then36, %if.end27, %if.then26, %if.then23
  %retval.0 = phi %union.tree_node* [ %call20, %if.then23 ], [ %call32, %if.end27 ], [ %8, %if.then26 ], [ %call38, %if.end37 ], [ %10, %if.then36 ], !dbg !2770
  ret %union.tree_node* %retval.0, !dbg !2815
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_replace_initial_condition(%union.tree_node* %chrec, %union.tree_node* %init_cond) local_unnamed_addr #4 !dbg !2816 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2818, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata %union.tree_node* %init_cond, metadata !2819, metadata !DIExpression()), !dbg !2820
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec) #7, !dbg !2821
  %tobool = icmp eq i8 %call, 0, !dbg !2821
  br i1 %tobool, label %if.end, label %return, !dbg !2823

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %chrec) #7, !dbg !2824
  %call2 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %init_cond) #7, !dbg !2824
  %cmp = icmp eq %union.tree_node* %call1, %call2, !dbg !2824
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2824

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2824
  br label %cond.end, !dbg !2824

cond.end:                                         ; preds = %if.end, %cond.true
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2825
  %bf.load = load i64, i64* %0, align 8, !dbg !2825
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2826
  %cond1 = icmp eq i64 %bf.cast2, 146, !dbg !2826
  br i1 %cond1, label %sw.bb, label %return, !dbg !2826

sw.bb:                                            ; preds = %cond.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2827
  %1 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2827
  %2 = load %struct.tree_int_cst*, %struct.tree_int_cst** %1, align 8, !dbg !2827
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %2, i64 0, i32 1, i32 0, !dbg !2827
  %3 = load i64, i64* %low, align 8, !dbg !2827
  %conv = trunc i64 %3 to i32, !dbg !2827
  %arrayidx6 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2829
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx6, align 8, !dbg !2829
  %call7 = tail call %union.tree_node* @chrec_replace_initial_condition(%union.tree_node* %4, %union.tree_node* %init_cond) #7, !dbg !2830
  %arrayidx10 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2831
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8, !dbg !2831
  %call11 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv, %union.tree_node* %call7, %union.tree_node* %5) #7, !dbg !2832
  ret %union.tree_node* %call11, !dbg !2833

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi %union.tree_node* [ %chrec, %entry ], [ %init_cond, %cond.end ], !dbg !2820
  ret %union.tree_node* %retval.0, !dbg !2833
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @initial_condition(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !2834 {
entry:
  br label %tailrecurse, !dbg !2839

tailrecurse:                                      ; preds = %if.then1, %entry
  %chrec.tr = phi %union.tree_node* [ %chrec, %entry ], [ %1, %if.then1 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr, metadata !2838, metadata !DIExpression()), !dbg !2841
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec.tr) #7, !dbg !2842
  %tobool = icmp eq i8 %call, 0, !dbg !2842
  br i1 %tobool, label %if.end, label %return, !dbg !2844

if.end:                                           ; preds = %tailrecurse
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2845
  %bf.load = load i64, i64* %0, align 8, !dbg !2845
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2846
  %cmp = icmp eq i64 %bf.cast1, 146, !dbg !2846
  br i1 %cmp, label %if.then1, label %return, !dbg !2847

if.then1:                                         ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2848
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2848
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2848
  br label %tailrecurse, !dbg !2839

return:                                           ; preds = %tailrecurse, %if.end
  %chrec.tr.lcssa = phi %union.tree_node* [ %chrec.tr, %tailrecurse ], [ %chrec.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2838, metadata !DIExpression()), !dbg !2841
  ret %union.tree_node* %chrec.tr.lcssa, !dbg !2849
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @hide_evolution_in_other_loops_than_loop(%union.tree_node* %chrec, i32 %loop_num) local_unnamed_addr #4 !dbg !2850 {
entry:
  br label %tailrecurse, !dbg !2858

tailrecurse:                                      ; preds = %cond.end, %entry
  %chrec.tr = phi %union.tree_node* [ %chrec, %entry ], [ %3, %cond.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !2855, metadata !DIExpression()), !dbg !2863
  %call = tail call fastcc %struct.loop* @get_loop(i32 %loop_num) #7, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !2856, metadata !DIExpression()), !dbg !2863
  %call1 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec.tr) #7, !dbg !2865
  %tobool = icmp eq i8 %call1, 0, !dbg !2865
  br i1 %tobool, label %if.end, label %cleanup.loopexit, !dbg !2867

if.end:                                           ; preds = %tailrecurse
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2868
  %bf.load = load i64, i64* %0, align 8, !dbg !2868
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2869
  %cond1 = icmp eq i64 %bf.cast2, 146, !dbg !2869
  br i1 %cond1, label %sw.bb, label %cleanup.loopexit, !dbg !2869

sw.bb:                                            ; preds = %if.end
  %call2 = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %chrec.tr) #7, !dbg !2870
  call void @llvm.dbg.value(metadata %struct.loop* %call2, metadata !2857, metadata !DIExpression()), !dbg !2863
  %cmp = icmp eq %struct.loop* %call2, %call, !dbg !2871
  br i1 %cmp, label %if.then3, label %if.else, !dbg !2872

if.then3:                                         ; preds = %sw.bb
  %chrec.tr.lcssa7 = phi %union.tree_node* [ %chrec.tr, %sw.bb ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa7, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa7, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa7, metadata !2854, metadata !DIExpression()), !dbg !2863
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr.lcssa7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2873
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2873
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2873
  %call4 = tail call %union.tree_node* @hide_evolution_in_other_loops_than_loop(%union.tree_node* %1, i32 %loop_num) #7, !dbg !2874
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2875
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8, !dbg !2875
  %call8 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %loop_num, %union.tree_node* %call4, %union.tree_node* %2) #7, !dbg !2876
  ret %union.tree_node* %call8, !dbg !2877

if.else:                                          ; preds = %sw.bb
  %call9 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call2, %struct.loop* %call) #6, !dbg !2878
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2878
  br i1 %tobool10, label %if.else13, label %if.then11, !dbg !2879

if.then11:                                        ; preds = %if.else
  %chrec.tr.lcssa8 = phi %union.tree_node* [ %chrec.tr, %if.else ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !2854, metadata !DIExpression()), !dbg !2863
  %call12 = tail call %union.tree_node* @initial_condition(%union.tree_node* %chrec.tr.lcssa8) #7, !dbg !2880
  br label %cleanup, !dbg !2881

if.else13:                                        ; preds = %if.else
  %call14 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call, %struct.loop* %call2) #6, !dbg !2882
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2882
  br i1 %tobool15, label %cond.true, label %cond.end, !dbg !2882

cond.true:                                        ; preds = %if.else13
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 703, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2882
  br label %cond.end, !dbg !2882

cond.end:                                         ; preds = %if.else13, %cond.true
  %operands17 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2883
  %arrayidx18 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands17, i64 1, !dbg !2883
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8, !dbg !2883
  br label %tailrecurse, !dbg !2858

cleanup.loopexit:                                 ; preds = %if.end, %tailrecurse
  %chrec.tr.lcssa = phi %union.tree_node* [ %chrec.tr, %if.end ], [ %chrec.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2854, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa, metadata !2854, metadata !DIExpression()), !dbg !2863
  br label %cleanup, !dbg !2877

cleanup:                                          ; preds = %cleanup.loopexit, %if.then11
  %retval.0 = phi %union.tree_node* [ %call12, %if.then11 ], [ %chrec.tr.lcssa, %cleanup.loopexit ], !dbg !2863
  ret %union.tree_node* %retval.0, !dbg !2877
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !2884 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !2888, metadata !DIExpression()), !dbg !2889
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2890
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2890
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2890
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2890
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2890
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2890
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2890

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2890
  br label %cond.end, !dbg !2890

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2890
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #7, !dbg !2890
  ret %struct.loop* %call, !dbg !2891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %chrec) unnamed_addr #0 !dbg !2892 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2897, metadata !DIExpression()), !dbg !2898
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2899
  %0 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2899
  %1 = load %struct.tree_int_cst*, %struct.tree_int_cst** %0, align 8, !dbg !2899
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %1, i64 0, i32 1, i32 0, !dbg !2899
  %2 = load i64, i64* %low, align 8, !dbg !2899
  %conv = trunc i64 %2 to i32, !dbg !2899
  %call = tail call fastcc %struct.loop* @get_loop(i32 %conv) #7, !dbg !2900
  ret %struct.loop* %call, !dbg !2901
}

declare dso_local zeroext i8 @flow_loop_nested_p(%struct.loop*, %struct.loop*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @evolution_part_in_loop_num(%union.tree_node* %chrec, i32 %loop_num) local_unnamed_addr #4 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !2905, metadata !DIExpression()), !dbg !2906
  %call = tail call fastcc %union.tree_node* @chrec_component_in_loop_num(%union.tree_node* %chrec, i32 %loop_num, i8 zeroext 1) #7, !dbg !2907
  ret %union.tree_node* %call, !dbg !2908
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @chrec_component_in_loop_num(%union.tree_node* %chrec, i32 %loop_num, i8 zeroext %right) unnamed_addr #4 !dbg !2909 {
entry:
  br label %tailrecurse, !dbg !2919

tailrecurse:                                      ; preds = %cond.end, %entry
  %chrec.tr = phi %union.tree_node* [ %chrec, %entry ], [ %10, %cond.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr, metadata !2913, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !2914, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 %right, metadata !2915, metadata !DIExpression()), !dbg !2924
  %call = tail call fastcc %struct.loop* @get_loop(i32 %loop_num) #7, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !2917, metadata !DIExpression()), !dbg !2924
  %call1 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec.tr) #7, !dbg !2926
  %tobool = icmp eq i8 %call1, 0, !dbg !2926
  br i1 %tobool, label %if.end, label %cleanup.loopexit, !dbg !2928

if.end:                                           ; preds = %tailrecurse
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2929
  %bf.load = load i64, i64* %0, align 8, !dbg !2929
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2930
  %cond1 = icmp eq i64 %bf.cast2, 146, !dbg !2930
  br i1 %cond1, label %sw.bb, label %sw.default, !dbg !2930

sw.bb:                                            ; preds = %if.end
  %call2 = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %chrec.tr) #7, !dbg !2931
  call void @llvm.dbg.value(metadata %struct.loop* %call2, metadata !2918, metadata !DIExpression()), !dbg !2924
  %cmp = icmp eq %struct.loop* %call2, %call, !dbg !2932
  br i1 %cmp, label %if.then3, label %if.else39, !dbg !2933

if.then3:                                         ; preds = %sw.bb
  %chrec.tr.lcssa9 = phi %union.tree_node* [ %chrec.tr, %sw.bb ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa9, metadata !2913, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa9, metadata !2913, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa9, metadata !2913, metadata !DIExpression()), !dbg !2924
  %tobool4 = icmp eq i8 %right, 0, !dbg !2934
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr.lcssa9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2937
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !2938

if.then5:                                         ; preds = %if.then3
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2939
  br label %if.end9, !dbg !2940

if.else:                                          ; preds = %if.then3
  %arrayidx8 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2941
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %component.0.in = phi %union.tree_node** [ %arrayidx, %if.then5 ], [ %arrayidx8, %if.else ]
  %component.0 = load %union.tree_node*, %union.tree_node** %component.0.in, align 8, !dbg !2937
  call void @llvm.dbg.value(metadata %union.tree_node* %component.0, metadata !2916, metadata !DIExpression()), !dbg !2924
  %arrayidx12 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2942
  %1 = bitcast %union.tree_node** %arrayidx12 to i64**, !dbg !2942
  %2 = load i64*, i64** %1, align 8, !dbg !2942
  %bf.load14 = load i64, i64* %2, align 8, !dbg !2942
  %bf.cast163 = and i64 %bf.load14, 65535, !dbg !2944
  %cmp17 = icmp eq i64 %bf.cast163, 146, !dbg !2944
  %3 = bitcast i64* %2 to %union.tree_node*, !dbg !2945
  br i1 %cmp17, label %lor.lhs.false, label %cleanup, !dbg !2945

lor.lhs.false:                                    ; preds = %if.end9
  %arrayidx23 = getelementptr inbounds i64, i64* %2, i64 5, !dbg !2946
  %4 = bitcast i64* %arrayidx23 to %struct.tree_int_cst**, !dbg !2946
  %5 = load %struct.tree_int_cst*, %struct.tree_int_cst** %4, align 8, !dbg !2946
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %5, i64 0, i32 1, i32 0, !dbg !2946
  %6 = load i64, i64* %low, align 8, !dbg !2946
  %7 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2947
  %8 = load %struct.tree_int_cst*, %struct.tree_int_cst** %7, align 8, !dbg !2947
  %low30 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %8, i64 0, i32 1, i32 0, !dbg !2947
  %9 = load i64, i64* %low30, align 8, !dbg !2947
  %cmp31 = icmp eq i64 %6, %9, !dbg !2948
  br i1 %cmp31, label %if.else33, label %cleanup, !dbg !2949

if.else33:                                        ; preds = %lor.lhs.false
  %call37 = tail call fastcc %union.tree_node* @chrec_component_in_loop_num(%union.tree_node* %3, i32 %loop_num, i8 zeroext %right) #7, !dbg !2950
  %call38 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %loop_num, %union.tree_node* %call37, %union.tree_node* %component.0) #7, !dbg !2951
  ret %union.tree_node* %call38, !dbg !2952

if.else39:                                        ; preds = %sw.bb
  %call40 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call2, %struct.loop* %call) #6, !dbg !2953
  %tobool41 = icmp eq i8 %call40, 0, !dbg !2953
  br i1 %tobool41, label %if.else43, label %cleanup.loopexit, !dbg !2954

if.else43:                                        ; preds = %if.else39
  %call44 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call, %struct.loop* %call2) #6, !dbg !2955
  %tobool45 = icmp eq i8 %call44, 0, !dbg !2955
  br i1 %tobool45, label %cond.true, label %cond.end, !dbg !2955

cond.true:                                        ; preds = %if.else43
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 758, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2955
  br label %cond.end, !dbg !2955

cond.end:                                         ; preds = %if.else43, %cond.true
  %operands47 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2956
  %arrayidx48 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands47, i64 1, !dbg !2956
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx48, align 8, !dbg !2956
  br label %tailrecurse, !dbg !2919

sw.default:                                       ; preds = %if.end
  %chrec.tr.lcssa8 = phi %union.tree_node* [ %chrec.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !2913, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !2913, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !2913, metadata !DIExpression()), !dbg !2924
  %tobool50 = icmp eq i8 %right, 0, !dbg !2957
  %.chrec = select i1 %tobool50, %union.tree_node* %chrec.tr.lcssa8, %union.tree_node* null, !dbg !2959
  br label %cleanup, !dbg !2959

cleanup.loopexit:                                 ; preds = %tailrecurse, %if.else39
  %retval.0.ph = phi %union.tree_node* [ null, %if.else39 ], [ %chrec.tr, %tailrecurse ]
  br label %cleanup, !dbg !2952

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false, %if.end9, %sw.default
  %retval.0 = phi %union.tree_node* [ %component.0, %lor.lhs.false ], [ %component.0, %if.end9 ], [ %.chrec, %sw.default ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2924
  ret %union.tree_node* %retval.0, !dbg !2952
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @initial_condition_in_loop_num(%union.tree_node* %chrec, i32 %loop_num) local_unnamed_addr #4 !dbg !2960 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !2963, metadata !DIExpression()), !dbg !2964
  %call = tail call fastcc %union.tree_node* @chrec_component_in_loop_num(%union.tree_node* %chrec, i32 %loop_num, i8 zeroext 0) #7, !dbg !2965
  ret %union.tree_node* %call, !dbg !2966
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @reset_evolution_in_loop(i32 %loop_num, %union.tree_node* %chrec, %union.tree_node* %new_evol) local_unnamed_addr #4 !dbg !2967 {
entry:
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !2969, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !2970, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %new_evol, metadata !2971, metadata !DIExpression()), !dbg !2977
  %call = tail call fastcc %struct.loop* @get_loop(i32 %loop_num) #7, !dbg !2978
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !2972, metadata !DIExpression()), !dbg !2977
  %call1 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %chrec) #7, !dbg !2979
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2979
  %bf.load = load i64, i64* %0, align 8, !dbg !2979
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2979
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2979
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2979

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %chrec) #7, !dbg !2979
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2979
  %bf.load4 = load i64, i64* %1, align 8, !dbg !2979
  %bf.cast62 = and i64 %bf.load4, 65535, !dbg !2979
  %cmp7 = icmp eq i64 %bf.cast62, 12, !dbg !2979
  br i1 %cmp7, label %if.then, label %if.else, !dbg !2981

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2982
  %call8 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %new_evol) #7, !dbg !2982
  %cmp9 = icmp eq %union.tree_node* %2, %call8, !dbg !2982
  br i1 %cmp9, label %if.end, label %cond.true, !dbg !2982

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 807, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2982
  br label %if.end, !dbg !2982

if.else:                                          ; preds = %lor.lhs.false
  %call10 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %chrec) #7, !dbg !2983
  %call11 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %new_evol) #7, !dbg !2983
  %cmp12 = icmp eq %union.tree_node* %call10, %call11, !dbg !2983
  br i1 %cmp12, label %if.end, label %cond.true13, !dbg !2983

cond.true13:                                      ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 809, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2983
  br label %if.end, !dbg !2983

if.end:                                           ; preds = %cond.true13, %if.else, %cond.true, %if.then
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2984
  %bf.load18 = load i64, i64* %3, align 8, !dbg !2984
  %bf.cast203 = and i64 %bf.load18, 65535, !dbg !2985
  %cmp21 = icmp eq i64 %bf.cast203, 146, !dbg !2985
  br i1 %cmp21, label %land.lhs.true, label %if.end36, !dbg !2986

land.lhs.true:                                    ; preds = %if.end
  %call22 = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %chrec) #7, !dbg !2987
  %call23 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call, %struct.loop* %call22) #6, !dbg !2988
  %tobool = icmp eq i8 %call23, 0, !dbg !2988
  br i1 %tobool, label %if.end36, label %if.then24, !dbg !2989

if.then24:                                        ; preds = %land.lhs.true
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2990
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2990
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2990
  %call25 = tail call %union.tree_node* @reset_evolution_in_loop(i32 %loop_num, %union.tree_node* %4, %union.tree_node* %new_evol) #7, !dbg !2991
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !2973, metadata !DIExpression()), !dbg !2992
  %arrayidx28 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2993
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx28, align 8, !dbg !2993
  %call29 = tail call %union.tree_node* @reset_evolution_in_loop(i32 %loop_num, %union.tree_node* %5, %union.tree_node* %new_evol) #7, !dbg !2994
  call void @llvm.dbg.value(metadata %union.tree_node* %call29, metadata !2976, metadata !DIExpression()), !dbg !2992
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2995
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2995
  %7 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2995
  %8 = load %struct.tree_int_cst*, %struct.tree_int_cst** %7, align 8, !dbg !2995
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %8, i64 0, i32 1, i32 0, !dbg !2995
  %9 = load i64, i64* %low, align 8, !dbg !2995
  %call34 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %9) #6, !dbg !2995
  %call35 = tail call %union.tree_node* @build3_stat(i32 146, %union.tree_node* %6, %union.tree_node* %call34, %union.tree_node* %call25, %union.tree_node* %call29) #6, !dbg !2995
  ret %union.tree_node* %call35, !dbg !2996

if.end36:                                         ; preds = %land.lhs.true, %if.end
  %conv49 = zext i32 %loop_num to i64, !dbg !2977
  br label %while.cond, !dbg !2997

while.cond:                                       ; preds = %while.body, %if.end36
  %chrec.addr.0 = phi %union.tree_node* [ %chrec, %if.end36 ], [ %14, %while.body ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0, metadata !2970, metadata !DIExpression()), !dbg !2977
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2998
  %bf.load38 = load i64, i64* %10, align 8, !dbg !2998
  %bf.cast404 = and i64 %bf.load38, 65535, !dbg !2999
  %cmp41 = icmp eq i64 %bf.cast404, 146, !dbg !2999
  br i1 %cmp41, label %land.rhs, label %while.end, !dbg !3000

land.rhs:                                         ; preds = %while.cond
  %operands44 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3001
  %11 = bitcast %union.tree_node** %operands44 to %struct.tree_int_cst**, !dbg !3001
  %12 = load %struct.tree_int_cst*, %struct.tree_int_cst** %11, align 8, !dbg !3001
  %low48 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %12, i64 0, i32 1, i32 0, !dbg !3001
  %13 = load i64, i64* %low48, align 8, !dbg !3001
  %cmp50 = icmp eq i64 %13, %conv49, !dbg !3002
  br i1 %cmp50, label %while.body, label %while.end, !dbg !2997

while.body:                                       ; preds = %land.rhs
  %arrayidx54 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands44, i64 1, !dbg !3003
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx54, align 8, !dbg !3003
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !2970, metadata !DIExpression()), !dbg !2977
  br label %while.cond, !dbg !2997, !llvm.loop !3004

while.end:                                        ; preds = %while.cond, %land.rhs
  %chrec.addr.0.lcssa = phi %union.tree_node* [ %chrec.addr.0, %while.cond ], [ %chrec.addr.0, %land.rhs ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2970, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2970, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2970, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2970, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2970, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.addr.0.lcssa, metadata !2970, metadata !DIExpression()), !dbg !2977
  %call55 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %loop_num, %union.tree_node* %chrec.addr.0.lcssa, %union.tree_node* %new_evol) #7, !dbg !3005
  ret %union.tree_node* %call55, !dbg !2996
}

declare dso_local %union.tree_node* @build3_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_merge(%union.tree_node* %chrec1, %union.tree_node* %chrec2) local_unnamed_addr #4 !dbg !3006 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec1, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec2, metadata !3009, metadata !DIExpression()), !dbg !3010
  %0 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !3011
  %cmp = icmp eq %union.tree_node* %0, %chrec1, !dbg !3013
  %cmp1 = icmp eq %union.tree_node* %0, %chrec2, !dbg !3014
  %or.cond = or i1 %cmp, %cmp1, !dbg !3015
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3015

if.then:                                          ; preds = %entry
  br label %return, !dbg !3016

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @chrec_known, align 8, !dbg !3017
  %cmp2 = icmp eq %union.tree_node* %1, %chrec1, !dbg !3019
  %cmp4 = icmp eq %union.tree_node* %1, %chrec2, !dbg !3020
  %or.cond1 = or i1 %cmp2, %cmp4, !dbg !3021
  br i1 %or.cond1, label %if.then5, label %if.end6, !dbg !3021

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !3022

if.end6:                                          ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** @chrec_not_analyzed_yet, align 8, !dbg !3023
  %cmp7 = icmp eq %union.tree_node* %2, %chrec1, !dbg !3025
  br i1 %cmp7, label %return, label %if.end9, !dbg !3026

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq %union.tree_node* %2, %chrec2, !dbg !3027
  br i1 %cmp10, label %return, label %if.end12, !dbg !3029

if.end12:                                         ; preds = %if.end9
  %call = tail call zeroext i8 @eq_evolutions_p(%union.tree_node* %chrec1, %union.tree_node* %chrec2) #7, !dbg !3030
  %tobool = icmp eq i8 %call, 0, !dbg !3030
  %3 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !3032
  %spec.select = select i1 %tobool, %union.tree_node* %3, %union.tree_node* %chrec1, !dbg !3033
  ret %union.tree_node* %spec.select, !dbg !3033

return:                                           ; preds = %if.end9, %if.end6, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ %1, %if.then5 ], [ %chrec2, %if.end6 ], [ %chrec1, %if.end9 ], !dbg !3010
  ret %union.tree_node* %retval.0, !dbg !3034
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @eq_evolutions_p(%union.tree_node* %chrec0, %union.tree_node* %chrec1) local_unnamed_addr #4 !dbg !3035 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec0, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec1, metadata !3040, metadata !DIExpression()), !dbg !3041
  %cmp = icmp eq %union.tree_node* %chrec0, null, !dbg !3042
  %cmp1 = icmp eq %union.tree_node* %chrec1, null, !dbg !3044
  %or.cond = or i1 %cmp, %cmp1, !dbg !3045
  br i1 %or.cond, label %return, label %lor.lhs.false2, !dbg !3045

lor.lhs.false2:                                   ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3046
  %bf.load = load i64, i64* %0, align 8, !dbg !3046
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3047
  %bf.load4 = load i64, i64* %1, align 8, !dbg !3047
  %2 = xor i64 %bf.load, %bf.load4, !dbg !3048
  %3 = and i64 %2, 65535, !dbg !3048
  %cmp7 = icmp eq i64 %3, 0, !dbg !3048
  br i1 %cmp7, label %if.end, label %return, !dbg !3049

if.end:                                           ; preds = %lor.lhs.false2
  %cmp8 = icmp eq %union.tree_node* %chrec0, %chrec1, !dbg !3050
  br i1 %cmp8, label %return, label %if.end10, !dbg !3052

if.end10:                                         ; preds = %if.end
  %4 = trunc i64 %bf.load to i16, !dbg !3053
  switch i16 %4, label %return [
    i16 23, label %sw.bb
    i16 146, label %sw.bb15
  ], !dbg !3054

sw.bb:                                            ; preds = %if.end10
  %call = tail call i32 @operand_equal_p(%union.tree_node* %chrec0, %union.tree_node* %chrec1, i32 0) #6, !dbg !3055
  %conv = trunc i32 %call to i8, !dbg !3055
  br label %return, !dbg !3057

sw.bb15:                                          ; preds = %if.end10
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3058
  %5 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3058
  %6 = load %struct.tree_int_cst*, %struct.tree_int_cst** %5, align 8, !dbg !3058
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %6, i64 0, i32 1, i32 0, !dbg !3058
  %7 = load i64, i64* %low, align 8, !dbg !3058
  %operands18 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3059
  %8 = bitcast %union.tree_node** %operands18 to %struct.tree_int_cst**, !dbg !3059
  %9 = load %struct.tree_int_cst*, %struct.tree_int_cst** %8, align 8, !dbg !3059
  %low22 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %9, i64 0, i32 1, i32 0, !dbg !3059
  %10 = load i64, i64* %low22, align 8, !dbg !3059
  %cmp23 = icmp eq i64 %7, %10, !dbg !3060
  br i1 %cmp23, label %land.lhs.true, label %land.end, !dbg !3061

land.lhs.true:                                    ; preds = %sw.bb15
  %arrayidx27 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3062
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx27, align 8, !dbg !3062
  %arrayidx30 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands18, i64 1, !dbg !3063
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8, !dbg !3063
  %call31 = tail call zeroext i8 @eq_evolutions_p(%union.tree_node* %11, %union.tree_node* %12) #7, !dbg !3064
  %tobool = icmp eq i8 %call31, 0, !dbg !3064
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3065

land.rhs:                                         ; preds = %land.lhs.true
  %arrayidx35 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3066
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx35, align 8, !dbg !3066
  %arrayidx38 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands18, i64 2, !dbg !3067
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8, !dbg !3067
  %call39 = tail call zeroext i8 @eq_evolutions_p(%union.tree_node* %13, %union.tree_node* %14) #7, !dbg !3068
  %tobool41 = icmp ne i8 %call39, 0, !dbg !3065
  %phitmp = zext i1 %tobool41 to i8
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %sw.bb15
  %15 = phi i8 [ 0, %land.lhs.true ], [ 0, %sw.bb15 ], [ %phitmp, %land.rhs ]
  br label %return, !dbg !3069

return:                                           ; preds = %lor.lhs.false2, %if.end10, %if.end, %entry, %land.end, %sw.bb
  %retval.0 = phi i8 [ %15, %land.end ], [ %conv, %sw.bb ], [ 0, %lor.lhs.false2 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end10 ], !dbg !3041
  ret i8 %retval.0, !dbg !3070
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @is_multivariate_chrec(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3071 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3073, metadata !DIExpression()), !dbg !3074
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !3075
  br i1 %cmp, label %return, label %if.end, !dbg !3077

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3078
  %bf.load = load i64, i64* %0, align 8, !dbg !3078
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3080
  %cmp1 = icmp eq i64 %bf.cast1, 146, !dbg !3080
  br i1 %cmp1, label %if.then2, label %return, !dbg !3081

if.then2:                                         ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3082
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3082
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3082
  %2 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3083
  %3 = load %struct.tree_int_cst*, %struct.tree_int_cst** %2, align 8, !dbg !3083
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %3, i64 0, i32 1, i32 0, !dbg !3083
  %4 = load i64, i64* %low, align 8, !dbg !3083
  %conv = trunc i64 %4 to i32, !dbg !3083
  %call = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(%union.tree_node* %1, i32 %conv) #7, !dbg !3084
  %tobool = icmp eq i8 %call, 0, !dbg !3084
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3085

lor.rhs:                                          ; preds = %if.then2
  %arrayidx10 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3086
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8, !dbg !3086
  %6 = load %struct.tree_int_cst*, %struct.tree_int_cst** %2, align 8, !dbg !3087
  %low16 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %6, i64 0, i32 1, i32 0, !dbg !3087
  %7 = load i64, i64* %low16, align 8, !dbg !3087
  %conv17 = trunc i64 %7 to i32, !dbg !3087
  %call18 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(%union.tree_node* %5, i32 %conv17) #7, !dbg !3088
  %tobool20 = icmp ne i8 %call18, 0, !dbg !3085
  %phitmp = zext i1 %tobool20 to i8, !dbg !3085
  br label %lor.end, !dbg !3085

lor.end:                                          ; preds = %if.then2, %lor.rhs
  %8 = phi i8 [ 1, %if.then2 ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3089

return:                                           ; preds = %if.end, %entry, %lor.end
  %retval.0 = phi i8 [ %8, %lor.end ], [ 0, %entry ], [ 0, %if.end ], !dbg !3074
  ret i8 %retval.0, !dbg !3090
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @is_multivariate_chrec_rec(%union.tree_node* %chrec, i32 %rec_var) unnamed_addr #4 !dbg !3091 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %rec_var, metadata !3096, metadata !DIExpression()), !dbg !3097
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !3098
  br i1 %cmp, label %return, label %if.end, !dbg !3100

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3101
  %bf.load = load i64, i64* %0, align 8, !dbg !3101
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3103
  %cmp1 = icmp eq i64 %bf.cast1, 146, !dbg !3103
  br i1 %cmp1, label %if.then2, label %return, !dbg !3104

if.then2:                                         ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3105
  %1 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3105
  %2 = load %struct.tree_int_cst*, %struct.tree_int_cst** %1, align 8, !dbg !3105
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %2, i64 0, i32 1, i32 0, !dbg !3105
  %3 = load i64, i64* %low, align 8, !dbg !3105
  %conv = zext i32 %rec_var to i64, !dbg !3108
  %cmp4 = icmp eq i64 %3, %conv, !dbg !3109
  br i1 %cmp4, label %if.else, label %return, !dbg !3110

if.else:                                          ; preds = %if.then2
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3111
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !3111
  %call = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(%union.tree_node* %4, i32 %rec_var) #7, !dbg !3112
  %tobool = icmp eq i8 %call, 0, !dbg !3112
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3113

lor.rhs:                                          ; preds = %if.else
  %arrayidx13 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3114
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8, !dbg !3114
  %call14 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(%union.tree_node* %5, i32 %rec_var) #7, !dbg !3115
  %tobool16 = icmp ne i8 %call14, 0, !dbg !3113
  %phitmp = zext i1 %tobool16 to i8, !dbg !3113
  br label %lor.end, !dbg !3113

lor.end:                                          ; preds = %if.else, %lor.rhs
  %6 = phi i8 [ 1, %if.else ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3116

return:                                           ; preds = %if.then2, %if.end, %entry, %lor.end
  %retval.0 = phi i8 [ %6, %lor.end ], [ 0, %entry ], [ 1, %if.then2 ], [ 0, %if.end ], !dbg !3097
  ret i8 %retval.0, !dbg !3117
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @chrec_contains_symbols(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3118 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3120, metadata !DIExpression()), !dbg !3123
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !3124
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3126

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3127
  %bf.load = load i64, i64* %0, align 8, !dbg !3127
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3129
  %cmp1 = icmp eq i64 %bf.cast1, 141, !dbg !3129
  br i1 %cmp1, label %cleanup, label %lor.lhs.false, !dbg !3130

lor.lhs.false:                                    ; preds = %if.end
  %cmp6 = icmp eq i64 %bf.cast1, 32, !dbg !3131
  br i1 %cmp6, label %cleanup, label %lor.lhs.false7, !dbg !3132

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp12 = icmp eq i64 %bf.cast1, 34, !dbg !3133
  br i1 %cmp12, label %cleanup, label %lor.lhs.false13, !dbg !3134

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %cmp18 = icmp eq i64 %bf.cast1, 29, !dbg !3135
  br i1 %cmp18, label %cleanup, label %lor.lhs.false19, !dbg !3136

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %cmp24 = icmp eq i64 %bf.cast1, 30, !dbg !3137
  br i1 %cmp24, label %cleanup, label %lor.lhs.false25, !dbg !3138

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %cmp30 = icmp eq i64 %bf.cast1, 36, !dbg !3139
  br i1 %cmp30, label %cleanup, label %lor.lhs.false31, !dbg !3140

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %cmp36 = icmp eq i64 %bf.cast1, 31, !dbg !3141
  br i1 %cmp36, label %cleanup, label %if.end38, !dbg !3142

if.end38:                                         ; preds = %lor.lhs.false31
  %call = tail call fastcc i32 @tree_operand_length(%union.tree_node* nonnull %chrec) #7, !dbg !3143
  call void @llvm.dbg.value(metadata i32 %call, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i32 0, metadata !3121, metadata !DIExpression()), !dbg !3123
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3144
  %1 = sext i32 %call to i64, !dbg !3148
  br label %for.cond, !dbg !3148

for.cond:                                         ; preds = %for.inc, %if.end38
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end38 ], !dbg !3149
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3121, metadata !DIExpression()), !dbg !3123
  %cmp39 = icmp slt i64 %indvars.iv, %1, !dbg !3150
  br i1 %cmp39, label %for.body, label %cleanup.loopexit, !dbg !3151

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 %indvars.iv, !dbg !3144
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3144
  %call40 = tail call zeroext i8 @chrec_contains_symbols(%union.tree_node* %2) #7, !dbg !3152
  %tobool = icmp eq i8 %call40, 0, !dbg !3152
  br i1 %tobool, label %for.inc, label %cleanup.loopexit, !dbg !3153

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3154
  call void @llvm.dbg.value(metadata i32 undef, metadata !3121, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3123
  br label %for.cond, !dbg !3155, !llvm.loop !3156

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %for.body ]
  br label %cleanup, !dbg !3158

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 1, %lor.lhs.false31 ], [ 1, %lor.lhs.false25 ], [ 1, %lor.lhs.false19 ], [ 1, %lor.lhs.false13 ], [ 1, %lor.lhs.false7 ], [ 1, %lor.lhs.false ], [ 1, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3123
  ret i8 %retval.0, !dbg !3158
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @tree_operand_length(%union.tree_node* %node) unnamed_addr #0 !dbg !3159 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %node, metadata !3163, metadata !DIExpression()), !dbg !3164
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3165
  %bf.load = load i64, i64* %0, align 8, !dbg !3165
  %bf.cast = and i64 %bf.load, 65535, !dbg !3165
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3165
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3165
  %cmp = icmp eq i32 %1, 9, !dbg !3165
  br i1 %cmp, label %if.then, label %if.else, !dbg !3167

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3168
  %2 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3168
  %3 = load %struct.tree_int_cst*, %struct.tree_int_cst** %2, align 8, !dbg !3168
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %3, i64 0, i32 1, i32 0, !dbg !3168
  %4 = load i64, i64* %low, align 8, !dbg !3168
  %conv = trunc i64 %4 to i32, !dbg !3168
  br label %return, !dbg !3169

if.else:                                          ; preds = %entry
  %arrayidx8 = getelementptr inbounds [0 x i8], [0 x i8]* @tree_code_length, i64 0, i64 %bf.cast, !dbg !3170
  %5 = load i8, i8* %arrayidx8, align 1, !dbg !3170
  %conv9 = zext i8 %5 to i32, !dbg !3170
  br label %return, !dbg !3171

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %conv9, %if.else ], !dbg !3172
  ret i32 %retval.0, !dbg !3173
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @chrec_contains_undetermined(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3174 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3176, metadata !DIExpression()), !dbg !3179
  %0 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !3180
  %cmp = icmp eq %union.tree_node* %0, %chrec, !dbg !3182
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3183

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %union.tree_node* %chrec, null, !dbg !3184
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !3186

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc i32 @tree_operand_length(%union.tree_node* nonnull %chrec) #7, !dbg !3187
  call void @llvm.dbg.value(metadata i32 %call, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 0, metadata !3177, metadata !DIExpression()), !dbg !3179
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3188
  %1 = sext i32 %call to i64, !dbg !3192
  br label %for.cond, !dbg !3192

for.cond:                                         ; preds = %for.inc, %if.end3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end3 ], !dbg !3193
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3177, metadata !DIExpression()), !dbg !3179
  %cmp4 = icmp slt i64 %indvars.iv, %1, !dbg !3194
  br i1 %cmp4, label %for.body, label %cleanup.loopexit, !dbg !3195

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 %indvars.iv, !dbg !3188
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3188
  %call5 = tail call zeroext i8 @chrec_contains_undetermined(%union.tree_node* %2) #7, !dbg !3196
  %tobool = icmp eq i8 %call5, 0, !dbg !3196
  br i1 %tobool, label %for.inc, label %cleanup.loopexit, !dbg !3197

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3177, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3179
  br label %for.cond, !dbg !3199, !llvm.loop !3200

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %for.body ]
  br label %cleanup, !dbg !3202

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ 0, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3179
  ret i8 %retval.0, !dbg !3202
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @tree_is_chrec(%union.tree_node* %expr) unnamed_addr #0 !dbg !3203 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !3205, metadata !DIExpression()), !dbg !3206
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3207
  %bf.load = load i64, i64* %0, align 8, !dbg !3207
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3209
  %cmp = icmp eq i64 %bf.cast1, 146, !dbg !3209
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !3210

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %expr) #7, !dbg !3211
  %tobool = icmp ne i8 %call, 0, !dbg !3211
  %spec.select = zext i1 %tobool to i8, !dbg !3212
  ret i8 %spec.select, !dbg !3212

return:                                           ; preds = %entry
  ret i8 1, !dbg !3213
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @evolution_function_is_invariant_p(%union.tree_node* %chrec, i32 %loopnum) local_unnamed_addr #4 !dbg !3214 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 %loopnum, metadata !3219, metadata !DIExpression()), !dbg !3220
  %call = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %chrec, i32 %loopnum) #7, !dbg !3221
  ret i8 %call, !dbg !3222
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %chrec, i32 %loopnum) unnamed_addr #4 !dbg !3223 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3225, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %loopnum, metadata !3226, metadata !DIExpression()), !dbg !3227
  %call = tail call fastcc zeroext i8 @evolution_function_is_constant_p(%union.tree_node* %chrec) #7, !dbg !3228
  %tobool = icmp eq i8 %call, 0, !dbg !3228
  br i1 %tobool, label %if.end, label %return, !dbg !3230

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3231
  %bf.load = load i64, i64* %0, align 8, !dbg !3231
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3233
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3233
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !3234

land.lhs.true:                                    ; preds = %if.end
  %cmp1 = icmp eq i32 %loopnum, 0, !dbg !3235
  br i1 %cmp1, label %return, label %lor.lhs.false, !dbg !3236

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call fastcc %struct.loop* @get_loop(i32 %loopnum) #7, !dbg !3237
  %call3 = tail call zeroext i8 @expr_invariant_in_loop_p(%struct.loop* %call2, %union.tree_node* %chrec) #6, !dbg !3238
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3238
  br i1 %tobool4, label %lor.lhs.false.if.end6_crit_edge, label %return, !dbg !3239

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  %bf.load8.pre = load i64, i64* %0, align 8, !dbg !3240
  br label %if.end6, !dbg !3239

if.end6:                                          ; preds = %lor.lhs.false.if.end6_crit_edge, %if.end
  %bf.load8 = phi i64 [ %bf.load8.pre, %lor.lhs.false.if.end6_crit_edge ], [ %bf.load, %if.end ], !dbg !3240
  %bf.cast102 = and i64 %bf.load8, 65535, !dbg !3242
  %cmp11 = icmp eq i64 %bf.cast102, 146, !dbg !3242
  br i1 %cmp11, label %if.then13, label %if.end32, !dbg !3243

if.then13:                                        ; preds = %if.end6
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3244
  %1 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3244
  %2 = load %struct.tree_int_cst*, %struct.tree_int_cst** %1, align 8, !dbg !3244
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %2, i64 0, i32 1, i32 0, !dbg !3244
  %3 = load i64, i64* %low, align 8, !dbg !3244
  %conv15 = zext i32 %loopnum to i64, !dbg !3247
  %cmp16 = icmp eq i64 %3, %conv15, !dbg !3248
  br i1 %cmp16, label %return, label %lor.lhs.false18, !dbg !3249

lor.lhs.false18:                                  ; preds = %if.then13
  %arrayidx21 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3250
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx21, align 8, !dbg !3250
  %call22 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %4, i32 %loopnum) #7, !dbg !3251
  %tobool23 = icmp eq i8 %call22, 0, !dbg !3251
  br i1 %tobool23, label %return, label %lor.lhs.false24, !dbg !3252

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %arrayidx27 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3253
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx27, align 8, !dbg !3253
  %call28 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %5, i32 %loopnum) #7, !dbg !3254
  %tobool29 = icmp ne i8 %call28, 0, !dbg !3254
  %spec.select = zext i1 %tobool29 to i8, !dbg !3255
  ret i8 %spec.select, !dbg !3255

if.end32:                                         ; preds = %if.end6
  %call33 = tail call fastcc i32 @tree_operand_length(%union.tree_node* %chrec) #7, !dbg !3256
  switch i32 %call33, label %return [
    i32 2, label %sw.bb
    i32 1, label %sw.bb41
  ], !dbg !3257

sw.bb:                                            ; preds = %if.end32
  %operands35 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3258
  %arrayidx36 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands35, i64 1, !dbg !3258
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx36, align 8, !dbg !3258
  %call37 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %6, i32 %loopnum) #7, !dbg !3261
  %tobool38 = icmp eq i8 %call37, 0, !dbg !3261
  br i1 %tobool38, label %return, label %sw.bb41, !dbg !3262

sw.bb41:                                          ; preds = %sw.bb, %if.end32
  %operands43 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3263
  %7 = load %union.tree_node*, %union.tree_node** %operands43, align 8, !dbg !3263
  %call45 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %7, i32 %loopnum) #7, !dbg !3265
  %tobool46 = icmp ne i8 %call45, 0, !dbg !3265
  %. = zext i1 %tobool46 to i8, !dbg !3266
  ret i8 %., !dbg !3267

return:                                           ; preds = %lor.lhs.false, %lor.lhs.false18, %sw.bb, %entry, %if.end32, %if.then13, %land.lhs.true
  %retval.0 = phi i8 [ 1, %entry ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ], [ 0, %lor.lhs.false18 ], [ 0, %if.then13 ], [ 0, %sw.bb ], [ 0, %if.end32 ], !dbg !3227
  ret i8 %retval.0, !dbg !3267
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @evolution_function_is_affine_multivariate_p(%union.tree_node* %chrec, i32 %loopnum) local_unnamed_addr #4 !dbg !3268 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 %loopnum, metadata !3273, metadata !DIExpression()), !dbg !3274
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !3275
  br i1 %cmp, label %return, label %if.end, !dbg !3277

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3278
  %bf.load = load i64, i64* %0, align 8, !dbg !3278
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3279
  %cond = icmp eq i64 %bf.cast1, 146, !dbg !3279
  br i1 %cond, label %sw.bb, label %return, !dbg !3279

sw.bb:                                            ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3280
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3280
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3280
  %call = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %1, i32 %loopnum) #7, !dbg !3283
  %tobool = icmp eq i8 %call, 0, !dbg !3283
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3284
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !3284
  %call5 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(%union.tree_node* %2, i32 %loopnum) #7, !dbg !3284
  br i1 %tobool, label %if.else38, label %if.then1, !dbg !3285

if.then1:                                         ; preds = %sw.bb
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3286
  br i1 %tobool6, label %if.else, label %return, !dbg !3289

if.else:                                          ; preds = %if.then1
  %3 = bitcast %union.tree_node** %arrayidx4 to i64**, !dbg !3290
  %4 = load i64*, i64** %3, align 8, !dbg !3290
  %bf.load12 = load i64, i64* %4, align 8, !dbg !3290
  %bf.cast143 = and i64 %bf.load12, 65535, !dbg !3293
  %cmp15 = icmp eq i64 %bf.cast143, 146, !dbg !3293
  %5 = bitcast i64* %4 to %union.tree_node*, !dbg !3294
  br i1 %cmp15, label %land.lhs.true, label %if.else37, !dbg !3294

land.lhs.true:                                    ; preds = %if.else
  %arrayidx21 = getelementptr inbounds i64, i64* %4, i64 5, !dbg !3295
  %6 = bitcast i64* %arrayidx21 to %struct.tree_int_cst**, !dbg !3295
  %7 = load %struct.tree_int_cst*, %struct.tree_int_cst** %6, align 8, !dbg !3295
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %7, i64 0, i32 1, i32 0, !dbg !3295
  %8 = load i64, i64* %low, align 8, !dbg !3295
  %9 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3296
  %10 = load %struct.tree_int_cst*, %struct.tree_int_cst** %9, align 8, !dbg !3296
  %low28 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %10, i64 0, i32 1, i32 0, !dbg !3296
  %11 = load i64, i64* %low28, align 8, !dbg !3296
  %cmp29 = icmp eq i64 %8, %11, !dbg !3297
  br i1 %cmp29, label %if.else37, label %land.lhs.true30, !dbg !3298

land.lhs.true30:                                  ; preds = %land.lhs.true
  %call34 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(%union.tree_node* %5, i32 %loopnum) #7, !dbg !3299
  %tobool35 = icmp eq i8 %call34, 0, !dbg !3299
  br i1 %tobool35, label %if.else37, label %return, !dbg !3300

if.else37:                                        ; preds = %land.lhs.true30, %land.lhs.true, %if.else
  br label %return, !dbg !3301

if.else38:                                        ; preds = %sw.bb
  %tobool44 = icmp eq i8 %call5, 0, !dbg !3302
  br i1 %tobool44, label %if.else81, label %land.lhs.true45, !dbg !3305

land.lhs.true45:                                  ; preds = %if.else38
  %12 = bitcast %union.tree_node** %arrayidx to i64**, !dbg !3306
  %13 = load i64*, i64** %12, align 8, !dbg !3306
  %bf.load50 = load i64, i64* %13, align 8, !dbg !3306
  %bf.cast522 = and i64 %bf.load50, 65535, !dbg !3307
  %cmp53 = icmp eq i64 %bf.cast522, 146, !dbg !3307
  %14 = bitcast i64* %13 to %union.tree_node*, !dbg !3308
  br i1 %cmp53, label %land.lhs.true55, label %if.else81, !dbg !3308

land.lhs.true55:                                  ; preds = %land.lhs.true45
  %arrayidx61 = getelementptr inbounds i64, i64* %13, i64 5, !dbg !3309
  %15 = bitcast i64* %arrayidx61 to %struct.tree_int_cst**, !dbg !3309
  %16 = load %struct.tree_int_cst*, %struct.tree_int_cst** %15, align 8, !dbg !3309
  %low64 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %16, i64 0, i32 1, i32 0, !dbg !3309
  %17 = load i64, i64* %low64, align 8, !dbg !3309
  %18 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3310
  %19 = load %struct.tree_int_cst*, %struct.tree_int_cst** %18, align 8, !dbg !3310
  %low70 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %19, i64 0, i32 1, i32 0, !dbg !3310
  %20 = load i64, i64* %low70, align 8, !dbg !3310
  %cmp71 = icmp eq i64 %17, %20, !dbg !3311
  br i1 %cmp71, label %if.else81, label %land.lhs.true73, !dbg !3312

land.lhs.true73:                                  ; preds = %land.lhs.true55
  %call77 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(%union.tree_node* %14, i32 %loopnum) #7, !dbg !3313
  %tobool79 = icmp eq i8 %call77, 0, !dbg !3313
  br i1 %tobool79, label %if.else81, label %return, !dbg !3314

if.else81:                                        ; preds = %land.lhs.true73, %land.lhs.true55, %if.else38, %land.lhs.true45
  br label %return, !dbg !3315

return:                                           ; preds = %land.lhs.true30, %if.then1, %land.lhs.true73, %if.end, %entry, %if.else81, %if.else37
  %retval.0 = phi i8 [ 0, %if.else37 ], [ 0, %if.else81 ], [ 0, %entry ], [ 1, %if.then1 ], [ 1, %land.lhs.true30 ], [ 1, %land.lhs.true73 ], [ 0, %if.end ], !dbg !3274
  ret i8 %retval.0, !dbg !3316
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @evolution_function_is_univariate_p(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3317 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3319, metadata !DIExpression()), !dbg !3320
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !3321
  br i1 %cmp, label %return, label %if.end, !dbg !3323

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3324
  %bf.load = load i64, i64* %0, align 8, !dbg !3324
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !3325
  %cond = icmp eq i64 %bf.cast3, 146, !dbg !3325
  br i1 %cond, label %sw.bb, label %sw.default62, !dbg !3325

sw.bb:                                            ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3326
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3326
  %1 = bitcast %union.tree_node** %arrayidx to i64**, !dbg !3326
  %2 = load i64*, i64** %1, align 8, !dbg !3326
  %bf.load2 = load i64, i64* %2, align 8, !dbg !3326
  %bf.cast44 = and i64 %bf.load2, 65535, !dbg !3328
  %cond1 = icmp eq i64 %bf.cast44, 146, !dbg !3328
  %3 = bitcast i64* %2 to %union.tree_node*, !dbg !3328
  br i1 %cond1, label %sw.bb5, label %sw.epilog, !dbg !3328

sw.bb5:                                           ; preds = %sw.bb
  %4 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3329
  %5 = load %struct.tree_int_cst*, %struct.tree_int_cst** %4, align 8, !dbg !3329
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %5, i64 0, i32 1, i32 0, !dbg !3329
  %6 = load i64, i64* %low, align 8, !dbg !3329
  %arrayidx15 = getelementptr inbounds i64, i64* %2, i64 5, !dbg !3332
  %7 = bitcast i64* %arrayidx15 to %struct.tree_int_cst**, !dbg !3332
  %8 = load %struct.tree_int_cst*, %struct.tree_int_cst** %7, align 8, !dbg !3332
  %low18 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %8, i64 0, i32 1, i32 0, !dbg !3332
  %9 = load i64, i64* %low18, align 8, !dbg !3332
  %cmp19 = icmp eq i64 %6, %9, !dbg !3333
  br i1 %cmp19, label %if.end21, label %return, !dbg !3334

if.end21:                                         ; preds = %sw.bb5
  %call = tail call zeroext i8 @evolution_function_is_univariate_p(%union.tree_node* %3) #7, !dbg !3335
  %tobool = icmp eq i8 %call, 0, !dbg !3335
  br i1 %tobool, label %return, label %sw.epilog, !dbg !3337

sw.epilog:                                        ; preds = %if.end21, %sw.bb
  %arrayidx29 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3338
  %10 = bitcast %union.tree_node** %arrayidx29 to i64**, !dbg !3338
  %11 = load i64*, i64** %10, align 8, !dbg !3338
  %bf.load31 = load i64, i64* %11, align 8, !dbg !3338
  %bf.cast335 = and i64 %bf.load31, 65535, !dbg !3339
  %cond2 = icmp eq i64 %bf.cast335, 146, !dbg !3339
  %12 = bitcast i64* %11 to %union.tree_node*, !dbg !3339
  br i1 %cond2, label %sw.bb34, label %sw.default62, !dbg !3339

sw.bb34:                                          ; preds = %sw.epilog
  %13 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3340
  %14 = load %struct.tree_int_cst*, %struct.tree_int_cst** %13, align 8, !dbg !3340
  %low40 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %14, i64 0, i32 1, i32 0, !dbg !3340
  %15 = load i64, i64* %low40, align 8, !dbg !3340
  %arrayidx46 = getelementptr inbounds i64, i64* %11, i64 5, !dbg !3343
  %16 = bitcast i64* %arrayidx46 to %struct.tree_int_cst**, !dbg !3343
  %17 = load %struct.tree_int_cst*, %struct.tree_int_cst** %16, align 8, !dbg !3343
  %low49 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %17, i64 0, i32 1, i32 0, !dbg !3343
  %18 = load i64, i64* %low49, align 8, !dbg !3343
  %cmp50 = icmp eq i64 %15, %18, !dbg !3344
  br i1 %cmp50, label %if.end52, label %return, !dbg !3345

if.end52:                                         ; preds = %sw.bb34
  %call56 = tail call zeroext i8 @evolution_function_is_univariate_p(%union.tree_node* %12) #7, !dbg !3346
  %tobool57 = icmp eq i8 %call56, 0, !dbg !3346
  br i1 %tobool57, label %return, label %sw.default62, !dbg !3348

sw.default62:                                     ; preds = %if.end52, %sw.epilog, %if.end
  br label %return, !dbg !3349

return:                                           ; preds = %if.end21, %sw.bb5, %if.end52, %sw.bb34, %entry, %sw.default62
  %retval.0 = phi i8 [ 1, %sw.default62 ], [ 1, %entry ], [ 0, %sw.bb5 ], [ 0, %if.end21 ], [ 0, %sw.bb34 ], [ 0, %if.end52 ], !dbg !3320
  ret i8 %retval.0, !dbg !3350
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nb_vars_in_chrec(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3351 {
entry:
  br label %tailrecurse, !dbg !3356

tailrecurse:                                      ; preds = %sw.bb, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %sw.bb ]
  %chrec.tr = phi %union.tree_node* [ %chrec, %entry ], [ %call, %sw.bb ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr, metadata !3355, metadata !DIExpression()), !dbg !3358
  %cmp = icmp eq %union.tree_node* %chrec.tr, null, !dbg !3359
  br i1 %cmp, label %return, label %if.end, !dbg !3361

if.end:                                           ; preds = %tailrecurse
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3362
  %bf.load = load i64, i64* %0, align 8, !dbg !3362
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3363
  %cond = icmp eq i64 %bf.cast1, 146, !dbg !3363
  br i1 %cond, label %sw.bb, label %return, !dbg !3363

sw.bb:                                            ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3364
  %1 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3364
  %2 = load %struct.tree_int_cst*, %struct.tree_int_cst** %1, align 8, !dbg !3364
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %2, i64 0, i32 1, i32 0, !dbg !3364
  %3 = load i64, i64* %low, align 8, !dbg !3364
  %conv = trunc i64 %3 to i32, !dbg !3364
  %call = tail call %union.tree_node* @initial_condition_in_loop_num(%union.tree_node* nonnull %chrec.tr, i32 %conv) #7, !dbg !3365
  %add = add i32 %accumulator.tr, 1, !dbg !3366
  br label %tailrecurse, !dbg !3356

return:                                           ; preds = %if.end, %tailrecurse
  %accumulator.tr.lcssa = phi i32 [ %accumulator.tr, %if.end ], [ %accumulator.tr, %tailrecurse ]
  ret i32 %accumulator.tr.lcssa, !dbg !3367
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @convert_affine_scev(%struct.loop* %loop, %union.tree_node* %type, %union.tree_node** %base, %union.tree_node** %step, %union.gimple_statement_d* %at_stmt, i8 zeroext %use_overflow_semantics) local_unnamed_addr #4 !dbg !3368 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3372, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3373, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata %union.tree_node** %base, metadata !3374, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata %union.tree_node** %step, metadata !3375, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %at_stmt, metadata !3376, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8 %use_overflow_semantics, metadata !3377, metadata !DIExpression()), !dbg !3385
  %0 = bitcast %union.tree_node** %step to %struct.tree_common**, !dbg !3386
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !3386
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !3386
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !3386
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3378, metadata !DIExpression()), !dbg !3385
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3387
  %bf.load = load i64, i64* %3, align 8, !dbg !3387
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3387
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !3387
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3387

lor.lhs.false:                                    ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 12, !dbg !3387
  br i1 %cmp7, label %cond.true, label %cond.end, !dbg !3387

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3388
  br label %cond.end, !dbg !3387

cond.end:                                         ; preds = %lor.lhs.false, %cond.true
  %cond = phi %union.tree_node* [ %4, %cond.true ], [ %type, %lor.lhs.false ], !dbg !3387
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !3384, metadata !DIExpression()), !dbg !3385
  %type8 = bitcast %union.tree_node* %2 to %struct.tree_type*, !dbg !3389
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i64 0, i32 6, !dbg !3389
  %bf.load9 = load i32, i32* %precision, align 4, !dbg !3389
  %bf.clear10 = and i32 %bf.load9, 1023, !dbg !3389
  %type11 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3390
  %precision12 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type11, i64 0, i32 6, !dbg !3390
  %bf.load13 = load i32, i32* %precision12, align 4, !dbg !3390
  %bf.clear14 = and i32 %bf.load13, 1023, !dbg !3390
  %cmp15 = icmp ult i32 %bf.clear10, %bf.clear14, !dbg !3391
  %conv16 = zext i1 %cmp15 to i8, !dbg !3389
  call void @llvm.dbg.value(metadata i8 %conv16, metadata !3380, metadata !DIExpression()), !dbg !3385
  %tobool = icmp eq i8 %use_overflow_semantics, 0, !dbg !3392
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3393

land.rhs:                                         ; preds = %cond.end
  %call = tail call zeroext i8 @nowrap_type_p(%union.tree_node* %type) #6, !dbg !3394
  %tobool19 = icmp ne i8 %call, 0, !dbg !3393
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.rhs
  %5 = phi i1 [ false, %cond.end ], [ %tobool19, %land.rhs ]
  br i1 %5, label %if.then, label %if.end65, !dbg !3395

if.then:                                          ; preds = %land.end
  br i1 %cmp15, label %if.then23, label %if.else36, !dbg !3396

if.then23:                                        ; preds = %if.then
  %bf.load25 = load i64, i64* %3, align 8, !dbg !3399
  %bf.cast275 = and i64 %bf.load25, 2097152, !dbg !3399
  %tobool28 = icmp eq i64 %bf.cast275, 0, !dbg !3399
  br i1 %tobool28, label %if.else, label %land.lhs.true, !dbg !3403

land.lhs.true:                                    ; preds = %if.then23
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3404
  %bf.load30 = load i64, i64* %6, align 8, !dbg !3404
  %bf.cast336 = and i64 %bf.load30, 2097152, !dbg !3404
  %tobool34 = icmp eq i64 %bf.cast336, 0, !dbg !3404
  br i1 %tobool34, label %if.end65, label %if.else, !dbg !3405

if.else:                                          ; preds = %land.lhs.true, %if.then23
  call void @llvm.dbg.value(metadata i8 0, metadata !3381, metadata !DIExpression()), !dbg !3385
  br label %if.end65

if.else36:                                        ; preds = %if.then
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3406
  %bf.load38 = load i64, i64* %7, align 8, !dbg !3406
  %bf.load43 = load i64, i64* %3, align 8, !dbg !3408
  %bf.lshr397 = xor i64 %bf.load38, %bf.load43, !dbg !3409
  %8 = and i64 %bf.lshr397, 2097152, !dbg !3409
  %cmp47 = icmp eq i64 %8, 0, !dbg !3409
  br i1 %cmp47, label %land.lhs.true49, label %if.else61, !dbg !3410

land.lhs.true49:                                  ; preds = %if.else36
  %bf.load52 = load i32, i32* %precision, align 4, !dbg !3411
  %bf.load56 = load i32, i32* %precision12, align 4, !dbg !3412
  %9 = xor i32 %bf.load52, %bf.load56, !dbg !3413
  %10 = and i32 %9, 1023, !dbg !3413
  %cmp58 = icmp eq i32 %10, 0, !dbg !3413
  br i1 %cmp58, label %if.end65, label %if.else61, !dbg !3414

if.else61:                                        ; preds = %land.lhs.true49, %if.else36
  call void @llvm.dbg.value(metadata i8 1, metadata !3381, metadata !DIExpression()), !dbg !3385
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true, %land.end, %if.else, %land.lhs.true49, %if.else61
  %must_check_src_overflow.2 = phi i8 [ %conv16, %land.lhs.true ], [ %conv16, %if.else ], [ %conv16, %if.else61 ], [ 1, %land.lhs.true49 ], [ %conv16, %land.end ], !dbg !3415
  %must_check_rslt_overflow.3 = phi i32 [ 1, %land.lhs.true ], [ 0, %if.else ], [ 1, %if.else61 ], [ 0, %land.lhs.true49 ], [ 0, %land.end ]
  call void @llvm.dbg.value(metadata i8 %must_check_src_overflow.2, metadata !3380, metadata !DIExpression()), !dbg !3385
  %tobool67 = icmp eq i8 %must_check_src_overflow.2, 0, !dbg !3416
  br i1 %tobool67, label %if.end73, label %land.lhs.true68, !dbg !3418

land.lhs.true68:                                  ; preds = %if.end65
  %11 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3419
  %12 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3420
  %call69 = tail call zeroext i8 @scev_probably_wraps_p(%union.tree_node* %11, %union.tree_node* %12, %union.gimple_statement_d* %at_stmt, %struct.loop* %loop, i8 zeroext %use_overflow_semantics) #6, !dbg !3421
  %tobool71 = icmp eq i8 %call69, 0, !dbg !3421
  br i1 %tobool71, label %if.end73, label %cleanup, !dbg !3422

if.end73:                                         ; preds = %land.lhs.true68, %if.end65
  %13 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3423
  %call74 = tail call fastcc %union.tree_node* @chrec_convert_1(%union.tree_node* %type, %union.tree_node* %13, %union.gimple_statement_d* %at_stmt, i8 zeroext %use_overflow_semantics) #7, !dbg !3424
  call void @llvm.dbg.value(metadata %union.tree_node* %call74, metadata !3382, metadata !DIExpression()), !dbg !3385
  %14 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !3383, metadata !DIExpression()), !dbg !3385
  %type75 = bitcast %union.tree_node* %cond to %struct.tree_type*, !dbg !3426
  %precision76 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type75, i64 0, i32 6, !dbg !3426
  %bf.load77 = load i32, i32* %precision76, align 4, !dbg !3426
  %bf.clear78 = and i32 %bf.load77, 1023, !dbg !3426
  %bf.load81 = load i32, i32* %precision, align 4, !dbg !3428
  %bf.clear82 = and i32 %bf.load81, 1023, !dbg !3428
  %cmp83 = icmp ugt i32 %bf.clear78, %bf.clear82, !dbg !3429
  br i1 %cmp83, label %land.lhs.true85, label %if.end95, !dbg !3430

land.lhs.true85:                                  ; preds = %if.end73
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3431
  %bf.load87 = load i64, i64* %15, align 8, !dbg !3431
  %bf.cast904 = and i64 %bf.load87, 2097152, !dbg !3431
  %tobool91 = icmp eq i64 %bf.cast904, 0, !dbg !3431
  br i1 %tobool91, label %if.end95, label %if.then92, !dbg !3432

if.then92:                                        ; preds = %land.lhs.true85
  %call93 = tail call %union.tree_node* @signed_type_for(%union.tree_node* %2) #6, !dbg !3433
  %call94 = tail call fastcc %union.tree_node* @chrec_convert_1(%union.tree_node* %call93, %union.tree_node* %14, %union.gimple_statement_d* %at_stmt, i8 zeroext %use_overflow_semantics) #7, !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* %call94, metadata !3383, metadata !DIExpression()), !dbg !3385
  br label %if.end95, !dbg !3435

if.end95:                                         ; preds = %land.lhs.true85, %if.then92, %if.end73
  %new_step.0 = phi %union.tree_node* [ %call94, %if.then92 ], [ %14, %land.lhs.true85 ], [ %14, %if.end73 ], !dbg !3385
  call void @llvm.dbg.value(metadata %union.tree_node* %new_step.0, metadata !3383, metadata !DIExpression()), !dbg !3385
  %call96 = tail call fastcc %union.tree_node* @chrec_convert_1(%union.tree_node* %cond, %union.tree_node* %new_step.0, %union.gimple_statement_d* %at_stmt, i8 zeroext %use_overflow_semantics) #7, !dbg !3436
  call void @llvm.dbg.value(metadata %union.tree_node* %call96, metadata !3383, metadata !DIExpression()), !dbg !3385
  %call97 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %call74) #7, !dbg !3437
  %tobool99 = icmp eq i8 %call97, 0, !dbg !3437
  br i1 %tobool99, label %lor.lhs.false100, label %cleanup, !dbg !3439

lor.lhs.false100:                                 ; preds = %if.end95
  %call101 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %call96) #7, !dbg !3440
  %tobool103 = icmp eq i8 %call101, 0, !dbg !3440
  br i1 %tobool103, label %if.end105, label %cleanup, !dbg !3441

if.end105:                                        ; preds = %lor.lhs.false100
  %tobool107 = icmp eq i32 %must_check_rslt_overflow.3, 0, !dbg !3442
  br i1 %tobool107, label %if.end113, label %land.lhs.true108, !dbg !3444

land.lhs.true108:                                 ; preds = %if.end105
  %call109 = tail call zeroext i8 @scev_probably_wraps_p(%union.tree_node* %call74, %union.tree_node* %call96, %union.gimple_statement_d* %at_stmt, %struct.loop* %loop, i8 zeroext 0) #6, !dbg !3445
  %tobool111 = icmp eq i8 %call109, 0, !dbg !3445
  br i1 %tobool111, label %if.end113, label %cleanup, !dbg !3446

if.end113:                                        ; preds = %land.lhs.true108, %if.end105
  store %union.tree_node* %call74, %union.tree_node** %base, align 8, !dbg !3447
  store %union.tree_node* %call96, %union.tree_node** %step, align 8, !dbg !3448
  br label %cleanup, !dbg !3449

cleanup:                                          ; preds = %land.lhs.true68, %land.lhs.true108, %lor.lhs.false100, %if.end95, %if.end113
  %retval.0 = phi i8 [ 1, %if.end113 ], [ 0, %land.lhs.true68 ], [ 0, %lor.lhs.false100 ], [ 0, %if.end95 ], [ 0, %land.lhs.true108 ], !dbg !3385
  ret i8 %retval.0, !dbg !3450
}

declare dso_local zeroext i8 @nowrap_type_p(%union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @scev_probably_wraps_p(%union.tree_node*, %union.tree_node*, %union.gimple_statement_d*, %struct.loop*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @chrec_convert_1(%union.tree_node* %type, %union.tree_node* %chrec, %union.gimple_statement_d* %at_stmt, i8 zeroext %use_overflow_semantics) unnamed_addr #4 !dbg !3451 {
entry:
  %base = alloca %union.tree_node*, align 8
  %step = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3455, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3456, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %at_stmt, metadata !3457, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i8 %use_overflow_semantics, metadata !3458, metadata !DIExpression()), !dbg !3465
  %0 = bitcast %union.tree_node** %base to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3466
  %1 = bitcast %union.tree_node** %step to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3466
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec) #7, !dbg !3467
  %tobool = icmp eq i8 %call, 0, !dbg !3467
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3469

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %chrec) #7, !dbg !3470
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3459, metadata !DIExpression()), !dbg !3465
  %cmp = icmp eq %union.tree_node* %call1, %type, !dbg !3471
  br i1 %cmp, label %cleanup, label %if.end3, !dbg !3473

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(%union.tree_node* %chrec) #7, !dbg !3474
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3474
  br i1 %tobool5, label %keep_cast, label %if.end7, !dbg !3476

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %chrec) #7, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.loop* %call8, metadata !3463, metadata !DIExpression()), !dbg !3465
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3478
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3478
  %2 = bitcast %union.tree_node** %arrayidx to i64*, !dbg !3478
  %3 = load i64, i64* %2, align 8, !dbg !3478
  %4 = bitcast %union.tree_node** %base to i64*, !dbg !3479
  store i64 %3, i64* %4, align 8, !dbg !3479
  %arrayidx11 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3480
  %5 = bitcast %union.tree_node** %arrayidx11 to i64*, !dbg !3480
  %6 = load i64, i64* %5, align 8, !dbg !3480
  %7 = bitcast %union.tree_node** %step to i64*, !dbg !3481
  store i64 %6, i64* %7, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %union.tree_node** %base, metadata !3461, metadata !DIExpression(DW_OP_deref)), !dbg !3465
  call void @llvm.dbg.value(metadata %union.tree_node** %step, metadata !3462, metadata !DIExpression(DW_OP_deref)), !dbg !3465
  %call12 = call zeroext i8 @convert_affine_scev(%struct.loop* %call8, %union.tree_node* %type, %union.tree_node** nonnull %base, %union.tree_node** nonnull %step, %union.gimple_statement_d* %at_stmt, i8 zeroext %use_overflow_semantics) #7, !dbg !3482
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3482
  br i1 %tobool13, label %keep_cast, label %if.then14, !dbg !3484

if.then14:                                        ; preds = %if.end7
  %num = getelementptr inbounds %struct.loop, %struct.loop* %call8, i64 0, i32 0, !dbg !3485
  %8 = load i32, i32* %num, align 8, !dbg !3485
  %9 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3486
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !3461, metadata !DIExpression()), !dbg !3465
  %10 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3487
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !3462, metadata !DIExpression()), !dbg !3465
  %call15 = call fastcc %union.tree_node* @build_polynomial_chrec(i32 %8, %union.tree_node* %9, %union.tree_node* %10) #7, !dbg !3488
  br label %cleanup, !dbg !3489

keep_cast:                                        ; preds = %if.end7, %if.end3
  call void @llvm.dbg.label(metadata !3464), !dbg !3490
  %tobool17 = icmp eq i8 %use_overflow_semantics, 0, !dbg !3491
  br i1 %tobool17, label %if.else, label %land.lhs.true, !dbg !3493

land.lhs.true:                                    ; preds = %keep_cast
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3494
  %bf.load = load i64, i64* %11, align 8, !dbg !3494
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !3495
  %cmp19 = icmp eq i64 %bf.cast5, 63, !dbg !3495
  br i1 %cmp19, label %land.lhs.true27, label %lor.lhs.false, !dbg !3496

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp25 = icmp eq i64 %bf.cast5, 64, !dbg !3497
  br i1 %cmp25, label %land.lhs.true27, label %if.else, !dbg !3498

land.lhs.true27:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3499
  %bf.load29 = load i64, i64* %12, align 8, !dbg !3499
  %bf.cast317 = and i64 %bf.load29, 65535, !dbg !3500
  %cmp32 = icmp eq i64 %bf.cast317, 8, !dbg !3500
  br i1 %cmp32, label %land.lhs.true34, label %if.else, !dbg !3501

land.lhs.true34:                                  ; preds = %land.lhs.true27
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3502
  %bf.load36 = load i64, i64* %13, align 8, !dbg !3502
  %bf.cast388 = and i64 %bf.load36, 65535, !dbg !3503
  %cmp39 = icmp eq i64 %bf.cast388, 8, !dbg !3503
  br i1 %cmp39, label %land.lhs.true41, label %if.else, !dbg !3504

land.lhs.true41:                                  ; preds = %land.lhs.true34
  %type42 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3505
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type42, i64 0, i32 6, !dbg !3505
  %bf.load43 = load i32, i32* %precision, align 4, !dbg !3505
  %bf.clear44 = and i32 %bf.load43, 1023, !dbg !3505
  %type45 = bitcast %union.tree_node* %call1 to %struct.tree_type*, !dbg !3506
  %precision46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type45, i64 0, i32 6, !dbg !3506
  %bf.load47 = load i32, i32* %precision46, align 4, !dbg !3506
  %bf.clear48 = and i32 %bf.load47, 1023, !dbg !3506
  %cmp49 = icmp ugt i32 %bf.clear44, %bf.clear48, !dbg !3507
  br i1 %cmp49, label %land.lhs.true51, label %if.else, !dbg !3508

land.lhs.true51:                                  ; preds = %land.lhs.true41
  %bf.cast559 = and i64 %bf.load36, 2097152, !dbg !3509
  %tobool56 = icmp eq i64 %bf.cast559, 0, !dbg !3509
  %14 = load i32, i32* @flag_wrapv, align 4, !dbg !3509
  %15 = load i32, i32* @flag_trapv, align 4, !dbg !3509
  %16 = or i32 %14, %15, !dbg !3509
  %17 = icmp eq i32 %16, 0, !dbg !3509
  %or.cond1.not = and i1 %tobool56, %17, !dbg !3509
  %18 = load i32, i32* @flag_strict_overflow, align 4, !dbg !3509
  %tobool62 = icmp ne i32 %18, 0, !dbg !3509
  %or.cond2 = and i1 %or.cond1.not, %tobool62, !dbg !3509
  br i1 %or.cond2, label %if.then63, label %if.else, !dbg !3509

if.then63:                                        ; preds = %land.lhs.true51
  %19 = trunc i64 %bf.load to i32, !dbg !3510
  %bf.cast67 = and i32 %19, 65535, !dbg !3510
  %operands69 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3510
  %20 = load %union.tree_node*, %union.tree_node** %operands69, align 8, !dbg !3510
  %call71 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %20) #6, !dbg !3510
  %arrayidx74 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands69, i64 1, !dbg !3510
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx74, align 8, !dbg !3510
  %call75 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %21) #6, !dbg !3510
  %call76 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %bf.cast67, %union.tree_node* %type, %union.tree_node* %call71, %union.tree_node* %call75) #6, !dbg !3510
  call void @llvm.dbg.value(metadata %union.tree_node* %call76, metadata !3460, metadata !DIExpression()), !dbg !3465
  br label %if.end78, !dbg !3511

if.else:                                          ; preds = %keep_cast, %land.lhs.true51, %land.lhs.true41, %land.lhs.true34, %land.lhs.true27, %lor.lhs.false
  %call77 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %chrec) #6, !dbg !3512
  call void @llvm.dbg.value(metadata %union.tree_node* %call77, metadata !3460, metadata !DIExpression()), !dbg !3465
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then63
  %res.0 = phi %union.tree_node* [ %call77, %if.else ], [ %call76, %if.then63 ], !dbg !3513
  call void @llvm.dbg.value(metadata %union.tree_node* %res.0, metadata !3460, metadata !DIExpression()), !dbg !3465
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %res.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3514
  %bf.load80 = load i64, i64* %22, align 8, !dbg !3514
  %bf.cast82 = and i64 %bf.load80, 65535, !dbg !3514
  %arrayidx83 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast82, !dbg !3514
  %23 = load i32, i32* %arrayidx83, align 4, !dbg !3514
  %cmp84 = icmp eq i32 %23, 1, !dbg !3514
  br i1 %cmp84, label %if.then86, label %if.end90, !dbg !3516

if.then86:                                        ; preds = %if.end78
  %bf.clear89 = and i64 %bf.load80, -134217729, !dbg !3517
  store i64 %bf.clear89, i64* %22, align 8, !dbg !3517
  br label %if.end90, !dbg !3518

if.end90:                                         ; preds = %if.then86, %if.end78
  %bf.load92 = phi i64 [ %bf.clear89, %if.then86 ], [ %bf.load80, %if.end78 ], !dbg !3519
  %bf.cast943 = and i64 %bf.load92, 65535, !dbg !3521
  %cmp95 = icmp eq i64 %bf.cast943, 23, !dbg !3521
  br i1 %cmp95, label %land.lhs.true97, label %cleanup, !dbg !3522

land.lhs.true97:                                  ; preds = %if.end90
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3523
  %bf.load99 = load i64, i64* %24, align 8, !dbg !3523
  %bf.cast1014 = and i64 %bf.load99, 65535, !dbg !3524
  %cmp102 = icmp eq i64 %bf.cast1014, 8, !dbg !3524
  br i1 %cmp102, label %land.lhs.true104, label %cleanup, !dbg !3525

land.lhs.true104:                                 ; preds = %land.lhs.true97
  %call105 = call i32 @int_fits_type_p(%union.tree_node* %res.0, %union.tree_node* %type) #6, !dbg !3526
  %tobool106 = icmp eq i32 %call105, 0, !dbg !3526
  %25 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !3527
  %spec.select = select i1 %tobool106, %union.tree_node* %25, %union.tree_node* %res.0, !dbg !3528
  br label %cleanup, !dbg !3528

cleanup:                                          ; preds = %entry, %land.lhs.true104, %if.end90, %land.lhs.true97, %if.end, %if.then14
  %retval.0 = phi %union.tree_node* [ %call15, %if.then14 ], [ %chrec, %entry ], [ %chrec, %if.end ], [ %res.0, %land.lhs.true97 ], [ %res.0, %if.end90 ], [ %spec.select, %land.lhs.true104 ], !dbg !3465
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3529
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3529
  ret %union.tree_node* %retval.0, !dbg !3529
}

declare dso_local %union.tree_node* @signed_type_for(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @chrec_convert_aggressive(%union.tree_node* %type, %union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3530 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3532, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3533, metadata !DIExpression()), !dbg !3540
  %call = tail call fastcc zeroext i8 @automatically_generated_chrec_p(%union.tree_node* %chrec) #7, !dbg !3541
  %tobool = icmp eq i8 %call, 0, !dbg !3541
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !3543

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3544
  %bf.load = load i64, i64* %0, align 8, !dbg !3544
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3545
  %cmp = icmp eq i64 %bf.cast1, 146, !dbg !3545
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3546

if.end:                                           ; preds = %lor.lhs.false
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3547
  %1 = bitcast %union.tree_node** %type2 to %struct.tree_type**, !dbg !3547
  %2 = load %struct.tree_type*, %struct.tree_type** %1, align 8, !dbg !3547
  %type3 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3548
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i64 0, i32 6, !dbg !3548
  %bf.load4 = load i32, i32* %precision, align 4, !dbg !3548
  %bf.clear5 = and i32 %bf.load4, 1023, !dbg !3548
  %precision7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %2, i64 0, i32 6, !dbg !3550
  %bf.load8 = load i32, i32* %precision7, align 4, !dbg !3550
  %bf.clear9 = and i32 %bf.load8, 1023, !dbg !3550
  %cmp10 = icmp ugt i32 %bf.clear5, %bf.clear9, !dbg !3551
  br i1 %cmp10, label %cleanup, label %if.end13, !dbg !3552

if.end13:                                         ; preds = %if.end
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3553
  %bf.load15 = load i64, i64* %3, align 8, !dbg !3553
  %bf.cast172 = and i64 %bf.load15, 65535, !dbg !3553
  %cmp18 = icmp eq i64 %bf.cast172, 10, !dbg !3553
  br i1 %cmp18, label %cond.true, label %lor.lhs.false20, !dbg !3553

lor.lhs.false20:                                  ; preds = %if.end13
  %cmp25 = icmp eq i64 %bf.cast172, 12, !dbg !3553
  br i1 %cmp25, label %cond.true, label %cond.end, !dbg !3553

cond.true:                                        ; preds = %lor.lhs.false20, %if.end13
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3554
  br label %cond.end, !dbg !3553

cond.end:                                         ; preds = %lor.lhs.false20, %cond.true
  %cond = phi %union.tree_node* [ %4, %cond.true ], [ %type, %lor.lhs.false20 ], !dbg !3553
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !3539, metadata !DIExpression()), !dbg !3540
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3555
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3555
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3555
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3535, metadata !DIExpression()), !dbg !3540
  %arrayidx29 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3556
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx29, align 8, !dbg !3556
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3536, metadata !DIExpression()), !dbg !3540
  %call30 = tail call %union.tree_node* @chrec_convert_aggressive(%union.tree_node* %type, %union.tree_node* %5) #7, !dbg !3557
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !3537, metadata !DIExpression()), !dbg !3540
  %tobool31 = icmp eq %union.tree_node* %call30, null, !dbg !3558
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !3560

if.then32:                                        ; preds = %cond.end
  %call33 = tail call %union.tree_node* @chrec_convert(%union.tree_node* %type, %union.tree_node* %5, %union.gimple_statement_d* null) #7, !dbg !3561
  call void @llvm.dbg.value(metadata %union.tree_node* %call33, metadata !3537, metadata !DIExpression()), !dbg !3540
  br label %if.end34, !dbg !3562

if.end34:                                         ; preds = %cond.end, %if.then32
  %lc.0 = phi %union.tree_node* [ %call30, %cond.end ], [ %call33, %if.then32 ], !dbg !3540
  call void @llvm.dbg.value(metadata %union.tree_node* %lc.0, metadata !3537, metadata !DIExpression()), !dbg !3540
  %call35 = tail call %union.tree_node* @chrec_convert_aggressive(%union.tree_node* %cond, %union.tree_node* %6) #7, !dbg !3563
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !3538, metadata !DIExpression()), !dbg !3540
  %tobool36 = icmp eq %union.tree_node* %call35, null, !dbg !3564
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !3566

if.then37:                                        ; preds = %if.end34
  %call38 = tail call %union.tree_node* @chrec_convert(%union.tree_node* %cond, %union.tree_node* %6, %union.gimple_statement_d* null) #7, !dbg !3567
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3538, metadata !DIExpression()), !dbg !3540
  br label %if.end39, !dbg !3568

if.end39:                                         ; preds = %if.end34, %if.then37
  %rc.0 = phi %union.tree_node* [ %call35, %if.end34 ], [ %call38, %if.then37 ], !dbg !3540
  call void @llvm.dbg.value(metadata %union.tree_node* %rc.0, metadata !3538, metadata !DIExpression()), !dbg !3540
  %7 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3569
  %8 = load %struct.tree_int_cst*, %struct.tree_int_cst** %7, align 8, !dbg !3569
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %8, i64 0, i32 1, i32 0, !dbg !3569
  %9 = load i64, i64* %low, align 8, !dbg !3569
  %conv44 = trunc i64 %9 to i32, !dbg !3569
  %call45 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv44, %union.tree_node* %lc.0, %union.tree_node* %rc.0) #7, !dbg !3570
  br label %cleanup, !dbg !3571

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end, %if.end39
  %retval.0 = phi %union.tree_node* [ %call45, %if.end39 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], !dbg !3540
  ret %union.tree_node* %retval.0, !dbg !3572
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @scev_direction(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3573 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3577, metadata !DIExpression()), !dbg !3579
  %call = tail call fastcc zeroext i8 @evolution_function_is_affine_p(%union.tree_node* %chrec) #7, !dbg !3580
  %tobool = icmp eq i8 %call, 0, !dbg !3580
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3582

if.end:                                           ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3583
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3583
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3583
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3578, metadata !DIExpression()), !dbg !3579
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3584
  %bf.load = load i64, i64* %1, align 8, !dbg !3584
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3586
  %cmp = icmp eq i64 %bf.cast1, 23, !dbg !3586
  br i1 %cmp, label %if.end2, label %cleanup, !dbg !3587

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @tree_int_cst_sign_bit(%union.tree_node* %0) #6, !dbg !3588
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3588
  %. = zext i1 %tobool4 to i32, !dbg !3590
  br label %cleanup, !dbg !3590

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 2, %entry ], [ 2, %if.end ], [ %., %if.end2 ], !dbg !3579
  ret i32 %retval.0, !dbg !3591
}

declare dso_local i32 @tree_int_cst_sign_bit(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @for_each_scev_op(%union.tree_node** %scev, i8 (%union.tree_node**, i8*)* %cbck, i8* %data) local_unnamed_addr #4 !dbg !3592 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %scev, metadata !3599, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8 (%union.tree_node**, i8*)* %cbck, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8* %data, metadata !3601, metadata !DIExpression()), !dbg !3602
  %0 = bitcast %union.tree_node** %scev to i64**, !dbg !3603
  %1 = load i64*, i64** %0, align 8, !dbg !3603
  %bf.load = load i64, i64* %1, align 8, !dbg !3603
  %bf.cast = and i64 %bf.load, 65535, !dbg !3603
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @tree_code_length, i64 0, i64 %bf.cast, !dbg !3603
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3603
  %3 = bitcast i64* %1 to %struct.tree_exp*, !dbg !3604
  switch i8 %2, label %sw.default [
    i8 3, label %sw.bb
    i8 2, label %entry.sw.bb2_crit_edge
    i8 1, label %entry.sw.bb6_crit_edge
  ], !dbg !3604

entry.sw.bb2_crit_edge:                           ; preds = %entry
  %.pre3 = bitcast %union.tree_node** %scev to %struct.tree_exp**, !dbg !3605
  br label %sw.bb2, !dbg !3604

entry.sw.bb6_crit_edge:                           ; preds = %entry
  br label %sw.bb6, !dbg !3604

sw.bb:                                            ; preds = %entry
  %4 = bitcast %union.tree_node** %scev to %struct.tree_exp**, !dbg !3607
  %arrayidx1 = getelementptr inbounds i64, i64* %1, i64 7, !dbg !3607
  %5 = bitcast i64* %arrayidx1 to %union.tree_node**, !dbg !3607
  tail call void @for_each_scev_op(%union.tree_node** nonnull %5, i8 (%union.tree_node**, i8*)* %cbck, i8* %data) #7, !dbg !3608
  %.pre = load %struct.tree_exp*, %struct.tree_exp** %4, align 8, !dbg !3605
  br label %sw.bb2, !dbg !3608

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %sw.bb
  %.pre-phi = phi %struct.tree_exp** [ %.pre3, %entry.sw.bb2_crit_edge ], [ %4, %sw.bb ], !dbg !3605
  %6 = phi %struct.tree_exp* [ %3, %entry.sw.bb2_crit_edge ], [ %.pre, %sw.bb ], !dbg !3605
  %arrayidx5 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %6, i64 0, i32 3, i64 1, !dbg !3605
  tail call void @for_each_scev_op(%union.tree_node** nonnull %arrayidx5, i8 (%union.tree_node**, i8*)* %cbck, i8* %data) #7, !dbg !3609
  %.pre2 = load %struct.tree_exp*, %struct.tree_exp** %.pre-phi, align 8, !dbg !3610
  br label %sw.bb6, !dbg !3609

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %sw.bb2
  %7 = phi %struct.tree_exp* [ %3, %entry.sw.bb6_crit_edge ], [ %.pre2, %sw.bb2 ], !dbg !3610
  %arrayidx9 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %7, i64 0, i32 3, i64 0, !dbg !3610
  tail call void @for_each_scev_op(%union.tree_node** nonnull %arrayidx9, i8 (%union.tree_node**, i8*)* %cbck, i8* %data) #7, !dbg !3611
  br label %sw.default, !dbg !3611

sw.default:                                       ; preds = %entry, %sw.bb6
  %call = tail call zeroext i8 %cbck(%union.tree_node** %scev, i8* %data) #6, !dbg !3612
  ret void, !dbg !3613
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @scev_is_linear_expression(%union.tree_node* %scev) local_unnamed_addr #4 !dbg !3614 {
entry:
  br label %tailrecurse, !dbg !3619

tailrecurse:                                      ; preds = %sw.bb73, %entry
  %scev.tr = phi %union.tree_node* [ %scev, %entry ], [ %15, %sw.bb73 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr, metadata !3618, metadata !DIExpression()), !dbg !3621
  %cmp = icmp eq %union.tree_node* %scev.tr, null, !dbg !3622
  br i1 %cmp, label %return.loopexit, label %lor.lhs.false, !dbg !3624

lor.lhs.false:                                    ; preds = %tailrecurse
  %call = tail call fastcc zeroext i8 @operator_is_linear(%union.tree_node* nonnull %scev.tr) #7, !dbg !3625
  %tobool = icmp eq i8 %call, 0, !dbg !3625
  br i1 %tobool, label %return.loopexit, label %if.end, !dbg !3626

if.end:                                           ; preds = %lor.lhs.false
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %scev.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3627
  %bf.load = load i64, i64* %0, align 8, !dbg !3627
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3629
  %cmp1 = icmp eq i64 %bf.cast1, 65, !dbg !3629
  br i1 %cmp1, label %if.then2, label %if.end12, !dbg !3630

if.then2:                                         ; preds = %if.end
  %scev.tr.lcssa15 = phi %union.tree_node* [ %scev.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa15, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa15, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa15, metadata !3618, metadata !DIExpression()), !dbg !3621
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %scev.tr.lcssa15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3631
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3631
  %call3 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %1, i32* null) #7, !dbg !3632
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3632
  br i1 %tobool4, label %land.end, label %land.rhs, !dbg !3633

land.rhs:                                         ; preds = %if.then2
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3634
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8, !dbg !3634
  %call8 = tail call zeroext i8 @tree_contains_chrecs(%union.tree_node* %2, i32* null) #7, !dbg !3635
  %tobool10 = icmp eq i8 %call8, 0, !dbg !3633
  %phitmp5 = zext i1 %tobool10 to i8
  br label %land.end

land.end:                                         ; preds = %if.then2, %land.rhs
  %3 = phi i8 [ 1, %if.then2 ], [ %phitmp5, %land.rhs ]
  br label %return, !dbg !3636

if.end12:                                         ; preds = %if.end
  %cmp17 = icmp eq i64 %bf.cast1, 146, !dbg !3637
  br i1 %cmp17, label %land.lhs.true, label %if.end27, !dbg !3639

land.lhs.true:                                    ; preds = %if.end12
  %operands20 = getelementptr inbounds %union.tree_node, %union.tree_node* %scev.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3640
  %4 = bitcast %union.tree_node** %operands20 to %struct.tree_int_cst**, !dbg !3640
  %5 = load %struct.tree_int_cst*, %struct.tree_int_cst** %4, align 8, !dbg !3640
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %5, i64 0, i32 1, i32 0, !dbg !3640
  %6 = load i64, i64* %low, align 8, !dbg !3640
  %conv23 = trunc i64 %6 to i32, !dbg !3640
  %call24 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(%union.tree_node* nonnull %scev.tr, i32 %conv23) #7, !dbg !3641
  %tobool25 = icmp eq i8 %call24, 0, !dbg !3641
  br i1 %tobool25, label %return.loopexit, label %land.lhs.true.if.end27_crit_edge, !dbg !3642

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  %bf.load29.pre = load i64, i64* %0, align 8, !dbg !3643
  %.pre = and i64 %bf.load29.pre, 65535, !dbg !3643
  br label %if.end27, !dbg !3642

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end12
  %bf.cast31.pre-phi = phi i64 [ %.pre, %land.lhs.true.if.end27_crit_edge ], [ %bf.cast1, %if.end12 ], !dbg !3643
  %arrayidx32 = getelementptr inbounds [0 x i8], [0 x i8]* @tree_code_length, i64 0, i64 %bf.cast31.pre-phi, !dbg !3643
  %7 = load i8, i8* %arrayidx32, align 1, !dbg !3643
  switch i8 %7, label %sw.default [
    i8 3, label %sw.bb
    i8 2, label %sw.bb56
    i8 1, label %sw.bb73
    i8 0, label %return.loopexit
  ], !dbg !3644

sw.bb:                                            ; preds = %if.end27
  %scev.tr.lcssa17 = phi %union.tree_node* [ %scev.tr, %if.end27 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa17, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa17, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa17, metadata !3618, metadata !DIExpression()), !dbg !3621
  %operands35 = getelementptr inbounds %union.tree_node, %union.tree_node* %scev.tr.lcssa17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3645
  %8 = load %union.tree_node*, %union.tree_node** %operands35, align 8, !dbg !3645
  %call37 = tail call zeroext i8 @scev_is_linear_expression(%union.tree_node* %8) #7, !dbg !3646
  %tobool39 = icmp eq i8 %call37, 0, !dbg !3646
  br i1 %tobool39, label %land.end54, label %land.lhs.true40, !dbg !3647

land.lhs.true40:                                  ; preds = %sw.bb
  %arrayidx43 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands35, i64 1, !dbg !3648
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx43, align 8, !dbg !3648
  %call44 = tail call zeroext i8 @scev_is_linear_expression(%union.tree_node* %9) #7, !dbg !3649
  %tobool46 = icmp eq i8 %call44, 0, !dbg !3649
  br i1 %tobool46, label %land.end54, label %land.rhs47, !dbg !3650

land.rhs47:                                       ; preds = %land.lhs.true40
  %arrayidx50 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands35, i64 2, !dbg !3651
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8, !dbg !3651
  %call51 = tail call zeroext i8 @scev_is_linear_expression(%union.tree_node* %10) #7, !dbg !3652
  %tobool53 = icmp ne i8 %call51, 0, !dbg !3650
  %phitmp3 = zext i1 %tobool53 to i8
  br label %land.end54

land.end54:                                       ; preds = %land.lhs.true40, %sw.bb, %land.rhs47
  %11 = phi i8 [ 0, %land.lhs.true40 ], [ 0, %sw.bb ], [ %phitmp3, %land.rhs47 ]
  br label %return, !dbg !3653

sw.bb56:                                          ; preds = %if.end27
  %scev.tr.lcssa18 = phi %union.tree_node* [ %scev.tr, %if.end27 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa18, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa18, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata %union.tree_node* %scev.tr.lcssa18, metadata !3618, metadata !DIExpression()), !dbg !3621
  %operands58 = getelementptr inbounds %union.tree_node, %union.tree_node* %scev.tr.lcssa18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3654
  %12 = load %union.tree_node*, %union.tree_node** %operands58, align 8, !dbg !3654
  %call60 = tail call zeroext i8 @scev_is_linear_expression(%union.tree_node* %12) #7, !dbg !3655
  %tobool62 = icmp eq i8 %call60, 0, !dbg !3655
  br i1 %tobool62, label %land.end70, label %land.rhs63, !dbg !3656

land.rhs63:                                       ; preds = %sw.bb56
  %arrayidx66 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands58, i64 1, !dbg !3657
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8, !dbg !3657
  %call67 = tail call zeroext i8 @scev_is_linear_expression(%union.tree_node* %13) #7, !dbg !3658
  %tobool69 = icmp ne i8 %call67, 0, !dbg !3656
  %phitmp = zext i1 %tobool69 to i8
  br label %land.end70

land.end70:                                       ; preds = %sw.bb56, %land.rhs63
  %14 = phi i8 [ 0, %sw.bb56 ], [ %phitmp, %land.rhs63 ]
  br label %return, !dbg !3659

sw.bb73:                                          ; preds = %if.end27
  %operands75 = getelementptr inbounds %union.tree_node, %union.tree_node* %scev.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3660
  %15 = load %union.tree_node*, %union.tree_node** %operands75, align 8, !dbg !3660
  br label %tailrecurse, !dbg !3619

sw.default:                                       ; preds = %if.end27
  br label %return, !dbg !3661

return.loopexit:                                  ; preds = %tailrecurse, %if.end27, %lor.lhs.false, %land.lhs.true
  %retval.0.ph = phi i8 [ 1, %if.end27 ], [ 0, %land.lhs.true ], [ 0, %tailrecurse ], [ 0, %lor.lhs.false ]
  br label %return, !dbg !3662

return:                                           ; preds = %return.loopexit, %sw.default, %land.end70, %land.end54, %land.end
  %retval.0 = phi i8 [ %3, %land.end ], [ 0, %sw.default ], [ %14, %land.end70 ], [ %11, %land.end54 ], [ %retval.0.ph, %return.loopexit ], !dbg !3621
  ret i8 %retval.0, !dbg !3662
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @operator_is_linear(%union.tree_node* %scev) unnamed_addr #0 !dbg !3663 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %scev, metadata !3665, metadata !DIExpression()), !dbg !3666
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %scev, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3667
  %bf.load = load i64, i64* %0, align 8, !dbg !3667
  %1 = trunc i64 %bf.load to i16, !dbg !3667
  switch i16 %1, label %sw.default [
    i16 23, label %return
    i16 146, label %return
    i16 63, label %return
    i16 66, label %return
    i16 65, label %return
    i16 64, label %return
    i16 79, label %return
    i16 141, label %return
    i16 117, label %return
    i16 90, label %return
    i16 116, label %return
    i16 113, label %return
  ], !dbg !3668

sw.default:                                       ; preds = %entry
  br label %return, !dbg !3669

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !3671
  ret i8 %retval.0, !dbg !3672
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @evolution_function_right_is_integer_cst(%union.tree_node* %chrec) local_unnamed_addr #4 !dbg !3673 {
entry:
  br label %tailrecurse, !dbg !3676

tailrecurse:                                      ; preds = %sw.bb19, %entry
  %chrec.tr = phi %union.tree_node* [ %chrec, %entry ], [ %8, %sw.bb19 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr, metadata !3675, metadata !DIExpression()), !dbg !3678
  %cmp = icmp eq %union.tree_node* %chrec.tr, null, !dbg !3679
  br i1 %cmp, label %return.loopexit, label %if.end, !dbg !3681

if.end:                                           ; preds = %tailrecurse
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3682
  %bf.load = load i64, i64* %0, align 8, !dbg !3682
  %1 = trunc i64 %bf.load to i16, !dbg !3682
  switch i16 %1, label %sw.default [
    i16 23, label %return.loopexit
    i16 146, label %sw.bb1
    i16 116, label %sw.bb19
    i16 113, label %sw.bb19
  ], !dbg !3683

sw.bb1:                                           ; preds = %if.end
  %chrec.tr.lcssa8 = phi %union.tree_node* [ %chrec.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !3675, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !3675, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec.tr.lcssa8, metadata !3675, metadata !DIExpression()), !dbg !3678
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr.lcssa8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3684
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3684
  %2 = bitcast %union.tree_node** %arrayidx to i64**, !dbg !3684
  %3 = load i64*, i64** %2, align 8, !dbg !3684
  %bf.load3 = load i64, i64* %3, align 8, !dbg !3684
  %bf.cast51 = and i64 %bf.load3, 65535, !dbg !3685
  %cmp6 = icmp eq i64 %bf.cast51, 23, !dbg !3685
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !3686

land.rhs:                                         ; preds = %sw.bb1
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3687
  %4 = bitcast %union.tree_node** %arrayidx9 to i64**, !dbg !3687
  %5 = load i64*, i64** %4, align 8, !dbg !3687
  %bf.load11 = load i64, i64* %5, align 8, !dbg !3687
  %bf.cast132 = and i64 %bf.load11, 65535, !dbg !3688
  %cmp14 = icmp eq i64 %bf.cast132, 146, !dbg !3688
  br i1 %cmp14, label %lor.rhs, label %land.end, !dbg !3689

lor.rhs:                                          ; preds = %land.rhs
  %6 = bitcast i64* %5 to %union.tree_node*, !dbg !3689
  %call = tail call zeroext i8 @evolution_function_right_is_integer_cst(%union.tree_node* %6) #7, !dbg !3690
  %tobool = icmp ne i8 %call, 0, !dbg !3689
  %phitmp = zext i1 %tobool to i8, !dbg !3689
  br label %land.end, !dbg !3689

land.end:                                         ; preds = %land.rhs, %lor.rhs, %sw.bb1
  %7 = phi i8 [ 0, %sw.bb1 ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3691

sw.bb19:                                          ; preds = %if.end, %if.end
  %operands21 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3692
  %8 = load %union.tree_node*, %union.tree_node** %operands21, align 8, !dbg !3692
  br label %tailrecurse, !dbg !3676

sw.default:                                       ; preds = %if.end
  br label %return, !dbg !3693

return.loopexit:                                  ; preds = %tailrecurse, %if.end
  %retval.0.ph = phi i8 [ 1, %if.end ], [ 0, %tailrecurse ]
  br label %return, !dbg !3694

return:                                           ; preds = %return.loopexit, %sw.default, %land.end
  %retval.0 = phi i8 [ 0, %sw.default ], [ %7, %land.end ], [ %retval.0.ph, %return.loopexit ], !dbg !3678
  ret i8 %retval.0, !dbg !3694
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @chrec_fold_plus_poly_poly(i32 %code, %union.tree_node* %type, %union.tree_node* %poly0, %union.tree_node* %poly1) unnamed_addr #0 !dbg !3695 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3697, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3698, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata %union.tree_node* %poly0, metadata !3699, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata %union.tree_node* %poly1, metadata !3700, metadata !DIExpression()), !dbg !3706
  %call = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %poly0) #7, !dbg !3707
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !3703, metadata !DIExpression()), !dbg !3706
  %call1 = tail call fastcc %struct.loop* @get_chrec_loop(%union.tree_node* %poly1) #7, !dbg !3708
  call void @llvm.dbg.value(metadata %struct.loop* %call1, metadata !3704, metadata !DIExpression()), !dbg !3706
  %cmp = icmp eq i32 %code, 66, !dbg !3709
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3710
  %cond = select i1 %cmp, %union.tree_node* %0, %union.tree_node* %type, !dbg !3710
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !3705, metadata !DIExpression()), !dbg !3706
  %tobool = icmp eq %union.tree_node* %poly0, null, !dbg !3711
  br i1 %tobool, label %cond.true2, label %cond.end4, !dbg !3711

cond.true2:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3711
  br label %cond.end4, !dbg !3711

cond.end4:                                        ; preds = %entry, %cond.true2
  %tobool6 = icmp eq %union.tree_node* %poly1, null, !dbg !3712
  br i1 %tobool6, label %cond.true7, label %cond.end9, !dbg !3712

cond.true7:                                       ; preds = %cond.end4
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3712
  br label %cond.end9, !dbg !3712

cond.end9:                                        ; preds = %cond.end4, %cond.true7
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3713
  %bf.load = load i64, i64* %1, align 8, !dbg !3713
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3713
  %cmp11 = icmp eq i64 %bf.cast1, 146, !dbg !3713
  br i1 %cmp11, label %cond.end14, label %cond.true12, !dbg !3713

cond.true12:                                      ; preds = %cond.end9
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3713
  br label %cond.end14, !dbg !3713

cond.end14:                                       ; preds = %cond.end9, %cond.true12
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3714
  %bf.load17 = load i64, i64* %2, align 8, !dbg !3714
  %bf.cast192 = and i64 %bf.load17, 65535, !dbg !3714
  %cmp20 = icmp eq i64 %bf.cast192, 146, !dbg !3714
  br i1 %cmp20, label %cond.end23, label %cond.true21, !dbg !3714

cond.true21:                                      ; preds = %cond.end14
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3714
  br label %cond.end23, !dbg !3714

cond.end23:                                       ; preds = %cond.end14, %cond.true21
  %call25 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly0) #7, !dbg !3715
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3715
  %bf.load27 = load i64, i64* %3, align 8, !dbg !3715
  %bf.cast293 = and i64 %bf.load27, 65535, !dbg !3715
  %cmp30 = icmp eq i64 %bf.cast293, 10, !dbg !3715
  br i1 %cmp30, label %if.then, label %lor.lhs.false, !dbg !3715

lor.lhs.false:                                    ; preds = %cond.end23
  %call31 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly0) #7, !dbg !3715
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3715
  %bf.load33 = load i64, i64* %4, align 8, !dbg !3715
  %bf.cast354 = and i64 %bf.load33, 65535, !dbg !3715
  %cmp36 = icmp eq i64 %bf.cast354, 12, !dbg !3715
  br i1 %cmp36, label %if.then, label %if.else, !dbg !3717

if.then:                                          ; preds = %lor.lhs.false, %cond.end23
  %call37 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly1) #7, !dbg !3718
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3718
  %cmp38 = icmp eq %union.tree_node* %call37, %5, !dbg !3718
  br i1 %cmp38, label %if.end, label %cond.true39, !dbg !3718

cond.true39:                                      ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3718
  br label %if.end, !dbg !3718

if.else:                                          ; preds = %lor.lhs.false
  %call43 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly0) #7, !dbg !3719
  %call44 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly1) #7, !dbg !3719
  %cmp45 = icmp eq %union.tree_node* %call43, %call44, !dbg !3719
  br i1 %cmp45, label %if.end, label %cond.true46, !dbg !3719

cond.true46:                                      ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3719
  br label %if.end, !dbg !3719

if.end:                                           ; preds = %cond.true46, %if.else, %cond.true39, %if.then
  %call50 = tail call fastcc %union.tree_node* @chrec_type(%union.tree_node* %poly0) #7, !dbg !3720
  %cmp51 = icmp eq %union.tree_node* %call50, %type, !dbg !3720
  br i1 %cmp51, label %cond.end54, label %cond.true52, !dbg !3720

cond.true52:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3720
  br label %cond.end54, !dbg !3720

cond.end54:                                       ; preds = %if.end, %cond.true52
  %call56 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call, %struct.loop* %call1) #6, !dbg !3721
  %tobool57 = icmp eq i8 %call56, 0, !dbg !3721
  br i1 %tobool57, label %if.end101, label %if.then58, !dbg !3723

if.then58:                                        ; preds = %cond.end54
  switch i32 %code, label %if.else72 [
    i32 63, label %if.then62
    i32 66, label %if.then62
  ], !dbg !3724

if.then62:                                        ; preds = %if.then58, %if.then58
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3727
  %6 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3727
  %7 = load %struct.tree_int_cst*, %struct.tree_int_cst** %6, align 8, !dbg !3727
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %7, i64 0, i32 1, i32 0, !dbg !3727
  %8 = load i64, i64* %low, align 8, !dbg !3727
  %conv = trunc i64 %8 to i32, !dbg !3727
  %arrayidx66 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3728
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8, !dbg !3728
  %call67 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %poly0, %union.tree_node* %9) #7, !dbg !3729
  %arrayidx70 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3730
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx70, align 8, !dbg !3730
  %call71 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv, %union.tree_node* %call67, %union.tree_node* %10) #7, !dbg !3731
  br label %cleanup, !dbg !3732

if.else72:                                        ; preds = %if.then58
  %operands74 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3733
  %11 = bitcast %union.tree_node** %operands74 to %struct.tree_int_cst**, !dbg !3733
  %12 = load %struct.tree_int_cst*, %struct.tree_int_cst** %11, align 8, !dbg !3733
  %low78 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %12, i64 0, i32 1, i32 0, !dbg !3733
  %13 = load i64, i64* %low78, align 8, !dbg !3733
  %conv79 = trunc i64 %13 to i32, !dbg !3733
  %arrayidx82 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands74, i64 1, !dbg !3734
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx82, align 8, !dbg !3734
  %call83 = tail call %union.tree_node* @chrec_fold_minus(%union.tree_node* %type, %union.tree_node* %poly0, %union.tree_node* %14) #7, !dbg !3735
  %arrayidx86 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands74, i64 2, !dbg !3736
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx86, align 8, !dbg !3736
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3737
  %bf.load88 = load i64, i64* %16, align 8, !dbg !3737
  %bf.cast905 = and i64 %bf.load88, 65535, !dbg !3737
  %cmp91 = icmp eq i64 %bf.cast905, 9, !dbg !3737
  br i1 %cmp91, label %cond.true93, label %cond.false95, !dbg !3737

cond.true93:                                      ; preds = %if.else72
  %call94 = tail call %union.tree_node* @build_real(%union.tree_node* %type, %struct.real_value* nonnull byval(%struct.real_value) align 8 @dconstm1) #6, !dbg !3738
  br label %cond.end97, !dbg !3737

cond.false95:                                     ; preds = %if.else72
  %call96 = tail call %union.tree_node* @build_int_cst_type(%union.tree_node* %type, i64 -1) #6, !dbg !3739
  br label %cond.end97, !dbg !3737

cond.end97:                                       ; preds = %cond.false95, %cond.true93
  %cond98 = phi %union.tree_node* [ %call94, %cond.true93 ], [ %call96, %cond.false95 ], !dbg !3737
  %call99 = tail call %union.tree_node* @chrec_fold_multiply(%union.tree_node* %type, %union.tree_node* %15, %union.tree_node* %cond98) #7, !dbg !3740
  %call100 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv79, %union.tree_node* %call83, %union.tree_node* %call99) #7, !dbg !3741
  br label %cleanup, !dbg !3742

if.end101:                                        ; preds = %cond.end54
  %call102 = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %call1, %struct.loop* %call) #6, !dbg !3743
  %tobool103 = icmp eq i8 %call102, 0, !dbg !3743
  br i1 %tobool103, label %if.end142, label %if.then104, !dbg !3745

if.then104:                                       ; preds = %if.end101
  switch i32 %code, label %if.else126 [
    i32 63, label %if.then110
    i32 66, label %if.then110
  ], !dbg !3746

if.then110:                                       ; preds = %if.then104, %if.then104
  %operands112 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3749
  %17 = bitcast %union.tree_node** %operands112 to %struct.tree_int_cst**, !dbg !3749
  %18 = load %struct.tree_int_cst*, %struct.tree_int_cst** %17, align 8, !dbg !3749
  %low116 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %18, i64 0, i32 1, i32 0, !dbg !3749
  %19 = load i64, i64* %low116, align 8, !dbg !3749
  %conv117 = trunc i64 %19 to i32, !dbg !3749
  %arrayidx120 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands112, i64 1, !dbg !3750
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx120, align 8, !dbg !3750
  %call121 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %20, %union.tree_node* %poly1) #7, !dbg !3751
  %arrayidx124 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands112, i64 2, !dbg !3752
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx124, align 8, !dbg !3752
  %call125 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv117, %union.tree_node* %call121, %union.tree_node* %21) #7, !dbg !3753
  br label %cleanup, !dbg !3754

if.else126:                                       ; preds = %if.then104
  %operands128 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3755
  %22 = bitcast %union.tree_node** %operands128 to %struct.tree_int_cst**, !dbg !3755
  %23 = load %struct.tree_int_cst*, %struct.tree_int_cst** %22, align 8, !dbg !3755
  %low132 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %23, i64 0, i32 1, i32 0, !dbg !3755
  %24 = load i64, i64* %low132, align 8, !dbg !3755
  %conv133 = trunc i64 %24 to i32, !dbg !3755
  %arrayidx136 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands128, i64 1, !dbg !3756
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx136, align 8, !dbg !3756
  %call137 = tail call %union.tree_node* @chrec_fold_minus(%union.tree_node* %type, %union.tree_node* %25, %union.tree_node* %poly1) #7, !dbg !3757
  %arrayidx140 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands128, i64 2, !dbg !3758
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx140, align 8, !dbg !3758
  %call141 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv133, %union.tree_node* %call137, %union.tree_node* %26) #7, !dbg !3759
  br label %cleanup, !dbg !3760

if.end142:                                        ; preds = %if.end101
  %cmp143 = icmp eq %struct.loop* %call, %call1, !dbg !3761
  br i1 %cmp143, label %cond.end147, label %cond.true145, !dbg !3761

cond.true145:                                     ; preds = %if.end142
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3761
  br label %cond.end147, !dbg !3761

cond.end147:                                      ; preds = %if.end142, %cond.true145
  switch i32 %code, label %if.else169 [
    i32 63, label %if.then154
    i32 66, label %if.then154
  ], !dbg !3762

if.then154:                                       ; preds = %cond.end147, %cond.end147
  %operands156 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3764
  %arrayidx157 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands156, i64 1, !dbg !3764
  %27 = load %union.tree_node*, %union.tree_node** %arrayidx157, align 8, !dbg !3764
  %operands159 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3766
  %arrayidx160 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands159, i64 1, !dbg !3766
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx160, align 8, !dbg !3766
  %call161 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %type, %union.tree_node* %27, %union.tree_node* %28) #7, !dbg !3767
  call void @llvm.dbg.value(metadata %union.tree_node* %call161, metadata !3701, metadata !DIExpression()), !dbg !3706
  %arrayidx164 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands156, i64 2, !dbg !3768
  %29 = load %union.tree_node*, %union.tree_node** %arrayidx164, align 8, !dbg !3768
  %arrayidx167 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands159, i64 2, !dbg !3769
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx167, align 8, !dbg !3769
  %call168 = tail call %union.tree_node* @chrec_fold_plus(%union.tree_node* %cond, %union.tree_node* %29, %union.tree_node* %30) #7, !dbg !3770
  call void @llvm.dbg.value(metadata %union.tree_node* %call168, metadata !3702, metadata !DIExpression()), !dbg !3706
  br label %if.end184, !dbg !3771

if.else169:                                       ; preds = %cond.end147
  %operands171 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3772
  %arrayidx172 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands171, i64 1, !dbg !3772
  %31 = load %union.tree_node*, %union.tree_node** %arrayidx172, align 8, !dbg !3772
  %operands174 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3774
  %arrayidx175 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands174, i64 1, !dbg !3774
  %32 = load %union.tree_node*, %union.tree_node** %arrayidx175, align 8, !dbg !3774
  %call176 = tail call %union.tree_node* @chrec_fold_minus(%union.tree_node* %type, %union.tree_node* %31, %union.tree_node* %32) #7, !dbg !3775
  call void @llvm.dbg.value(metadata %union.tree_node* %call176, metadata !3701, metadata !DIExpression()), !dbg !3706
  %arrayidx179 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands171, i64 2, !dbg !3776
  %33 = load %union.tree_node*, %union.tree_node** %arrayidx179, align 8, !dbg !3776
  %arrayidx182 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands174, i64 2, !dbg !3777
  %34 = load %union.tree_node*, %union.tree_node** %arrayidx182, align 8, !dbg !3777
  %call183 = tail call %union.tree_node* @chrec_fold_minus(%union.tree_node* %type, %union.tree_node* %33, %union.tree_node* %34) #7, !dbg !3778
  call void @llvm.dbg.value(metadata %union.tree_node* %call183, metadata !3702, metadata !DIExpression()), !dbg !3706
  br label %if.end184

if.end184:                                        ; preds = %if.else169, %if.then154
  %left.0 = phi %union.tree_node* [ %call161, %if.then154 ], [ %call176, %if.else169 ], !dbg !3779
  %right.0 = phi %union.tree_node* [ %call168, %if.then154 ], [ %call183, %if.else169 ], !dbg !3779
  call void @llvm.dbg.value(metadata %union.tree_node* %right.0, metadata !3702, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata %union.tree_node* %left.0, metadata !3701, metadata !DIExpression()), !dbg !3706
  %call185 = tail call fastcc zeroext i8 @chrec_zerop(%union.tree_node* %right.0) #7, !dbg !3780
  %tobool186 = icmp eq i8 %call185, 0, !dbg !3780
  br i1 %tobool186, label %if.else188, label %cleanup, !dbg !3782

if.else188:                                       ; preds = %if.end184
  %operands190 = getelementptr inbounds %union.tree_node, %union.tree_node* %poly0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3783
  %35 = bitcast %union.tree_node** %operands190 to %struct.tree_int_cst**, !dbg !3783
  %36 = load %struct.tree_int_cst*, %struct.tree_int_cst** %35, align 8, !dbg !3783
  %low194 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %36, i64 0, i32 1, i32 0, !dbg !3783
  %37 = load i64, i64* %low194, align 8, !dbg !3783
  %conv195 = trunc i64 %37 to i32, !dbg !3783
  %call196 = tail call fastcc %union.tree_node* @build_polynomial_chrec(i32 %conv195, %union.tree_node* %left.0, %union.tree_node* %right.0) #7, !dbg !3784
  br label %cleanup, !dbg !3785

cleanup:                                          ; preds = %if.end184, %if.else188, %if.else126, %if.then110, %cond.end97, %if.then62
  %retval.0 = phi %union.tree_node* [ %call71, %if.then62 ], [ %call100, %cond.end97 ], [ %call125, %if.then110 ], [ %call141, %if.else126 ], [ %call196, %if.else188 ], [ %left.0, %if.end184 ], !dbg !3706
  ret %union.tree_node* %retval.0, !dbg !3786
}

declare dso_local %union.tree_node* @build_real(%union.tree_node*, %struct.real_value* byval(%struct.real_value) align 8) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_int_cst_type(%union.tree_node*, i64) local_unnamed_addr #1

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @chrec_zerop(%union.tree_node* %chrec) unnamed_addr #0 !dbg !3787 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3789, metadata !DIExpression()), !dbg !3790
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !3791
  br i1 %cmp, label %return, label %if.end, !dbg !3793

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3794
  %bf.load = load i64, i64* %0, align 8, !dbg !3794
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3796
  %cmp1 = icmp eq i64 %bf.cast1, 23, !dbg !3796
  br i1 %cmp1, label %if.then2, label %return, !dbg !3797

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @integer_zerop(%union.tree_node* nonnull %chrec) #6, !dbg !3798
  %conv = trunc i32 %call to i8, !dbg !3798
  br label %return, !dbg !3799

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i8 [ %conv, %if.then2 ], [ 0, %entry ], [ 0, %if.end ], !dbg !3790
  ret i8 %retval.0, !dbg !3800
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @no_evolution_in_loop_p(%union.tree_node* %chrec, i32 %loop_num, i8* %res) unnamed_addr #0 !dbg !3801 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3805, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !3806, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8* %res, metadata !3807, metadata !DIExpression()), !dbg !3809
  %0 = load %union.tree_node*, %union.tree_node** @chrec_not_analyzed_yet, align 8, !dbg !3810
  %cmp = icmp eq %union.tree_node* %0, %chrec, !dbg !3812
  %1 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !3813
  %cmp1 = icmp eq %union.tree_node* %1, %chrec, !dbg !3814
  %or.cond = or i1 %cmp, %cmp1, !dbg !3815
  br i1 %or.cond, label %cleanup, label %lor.lhs.false2, !dbg !3815

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(%union.tree_node* %chrec, i32 %loop_num) #6, !dbg !3816
  %tobool = icmp eq i8 %call, 0, !dbg !3816
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3817

if.end:                                           ; preds = %lor.lhs.false2
  %call3 = tail call %union.tree_node* @tree_strip_nop_conversions(%union.tree_node* %chrec) #6, !dbg !3818
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3805, metadata !DIExpression()), !dbg !3809
  %call4 = tail call %union.tree_node* @hide_evolution_in_other_loops_than_loop(%union.tree_node* %call3, i32 %loop_num) #7, !dbg !3819
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3808, metadata !DIExpression()), !dbg !3809
  %call5 = tail call fastcc zeroext i8 @tree_is_chrec(%union.tree_node* %call4) #7, !dbg !3820
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3821
  %conv7 = zext i1 %tobool6 to i8, !dbg !3821
  store i8 %conv7, i8* %res, align 1, !dbg !3822
  br label %cleanup, !dbg !3823

cleanup:                                          ; preds = %lor.lhs.false2, %entry, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ 0, %lor.lhs.false2 ], [ 0, %entry ], !dbg !3809
  ret i8 %retval.0, !dbg !3824
}

declare dso_local %union.tree_node* @tree_strip_nop_conversions(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @tree_fold_binomial(%union.tree_node* %type, %union.tree_node* %n, i32 %k) unnamed_addr #4 !dbg !3825 {
entry:
  %lnum = alloca i64, align 8
  %ldenom = alloca i64, align 8
  %lres = alloca i64, align 8
  %ldum = alloca i64, align 8
  %hnum = alloca i64, align 8
  %hdenom = alloca i64, align 8
  %hres = alloca i64, align 8
  %hdum = alloca i64, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3829, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %union.tree_node* %n, metadata !3830, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %k, metadata !3831, metadata !DIExpression()), !dbg !3844
  %0 = bitcast i64* %lnum to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3845
  %1 = bitcast i64* %ldenom to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3845
  %2 = bitcast i64* %lres to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3845
  %3 = bitcast i64* %ldum to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3845
  %4 = bitcast i64* %hnum to i8*, !dbg !3846
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3846
  %5 = bitcast i64* %hdenom to i8*, !dbg !3846
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3846
  %6 = bitcast i64* %hres to i8*, !dbg !3846
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !3846
  %7 = bitcast i64* %hdum to i8*, !dbg !3846
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !3846
  switch i32 %k, label %if.end4 [
    i32 0, label %if.then
    i32 1, label %if.then2
  ], !dbg !3847

if.then:                                          ; preds = %entry
  %call = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 1) #6, !dbg !3848
  br label %cleanup, !dbg !3850

if.then2:                                         ; preds = %entry
  %call3 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %n) #6, !dbg !3851
  br label %cleanup, !dbg !3853

if.end4:                                          ; preds = %entry
  %int_cst5 = getelementptr inbounds %union.tree_node, %union.tree_node* %n, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3854
  %high = getelementptr inbounds i32, i32* %int_cst5, i64 2, !dbg !3854
  %8 = bitcast i32* %high to i64*, !dbg !3854
  %9 = load i64, i64* %8, align 8, !dbg !3854
  %cmp6 = icmp eq i64 %9, 0, !dbg !3856
  br i1 %cmp6, label %land.lhs.true, label %if.end4.if.end12_crit_edge, !dbg !3857

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  %low15.phi.trans.insert = bitcast i32* %int_cst5 to i64*, !dbg !3844
  %.pre = load i64, i64* %low15.phi.trans.insert, align 8, !dbg !3858
  br label %if.end12, !dbg !3857

land.lhs.true:                                    ; preds = %if.end4
  %low = bitcast i32* %int_cst5 to i64*, !dbg !3859
  %10 = load i64, i64* %low, align 8, !dbg !3859
  %conv = zext i32 %k to i64, !dbg !3860
  %cmp9 = icmp ult i64 %10, %conv, !dbg !3861
  br i1 %cmp9, label %cleanup, label %if.end12, !dbg !3862

if.end12:                                         ; preds = %if.end4.if.end12_crit_edge, %land.lhs.true
  %11 = phi i64 [ %.pre, %if.end4.if.end12_crit_edge ], [ %10, %land.lhs.true ], !dbg !3858
  call void @llvm.dbg.value(metadata i64 %11, metadata !3833, metadata !DIExpression()), !dbg !3844
  store i64 %11, i64* %lnum, align 8, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %9, metadata !3838, metadata !DIExpression()), !dbg !3844
  store i64 %9, i64* %hnum, align 8, !dbg !3864
  call void @llvm.dbg.value(metadata i64 2, metadata !3834, metadata !DIExpression()), !dbg !3844
  store i64 2, i64* %ldenom, align 8, !dbg !3865
  call void @llvm.dbg.value(metadata i64 0, metadata !3839, metadata !DIExpression()), !dbg !3844
  store i64 0, i64* %hdenom, align 8, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %11, metadata !3833, metadata !DIExpression()), !dbg !3844
  %cmp19 = icmp eq i64 %11, 0, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %9, metadata !3838, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %11, metadata !3833, metadata !DIExpression()), !dbg !3844
  %sub22 = add i64 %11, -1, !dbg !3869
  %12 = zext i1 %cmp19 to i64, !dbg !3869
  %hidx.0 = sub i64 %9, %12, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %hidx.0, metadata !3837, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %sub22, metadata !3832, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %11, metadata !3833, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %9, metadata !3838, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %lnum, metadata !3833, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %hnum, metadata !3838, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call24 = call i32 @mul_double_with_sign(i64 %11, i64 %9, i64 %sub22, i64 %hidx.0, i64* nonnull %lnum, i64* nonnull %hnum, i8 zeroext 0) #6, !dbg !3870
  %tobool = icmp eq i32 %call24, 0, !dbg !3870
  br i1 %tobool, label %for.cond.preheader, label %cleanup, !dbg !3872

for.cond.preheader:                               ; preds = %if.end12
  br label %for.cond, !dbg !3873

for.cond:                                         ; preds = %for.cond.preheader, %if.end38
  %lidx.1 = phi i64 [ %dec33, %if.end38 ], [ %sub22, %for.cond.preheader ], !dbg !3844
  %hidx.1 = phi i64 [ %hidx.2, %if.end38 ], [ %hidx.0, %for.cond.preheader ], !dbg !3844
  %i.0 = phi i32 [ %inc, %if.end38 ], [ 3, %for.cond.preheader ], !dbg !3875
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3842, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %hidx.1, metadata !3837, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %lidx.1, metadata !3832, metadata !DIExpression()), !dbg !3844
  %cmp27 = icmp ugt i32 %i.0, %k, !dbg !3876
  br i1 %cmp27, label %for.end, label %for.body, !dbg !3873

for.body:                                         ; preds = %for.cond
  %cmp29 = icmp eq i64 %lidx.1, 0, !dbg !3878
  %dec33 = add i64 %lidx.1, -1, !dbg !3881
  %13 = zext i1 %cmp29 to i64, !dbg !3881
  %hidx.2 = sub i64 %hidx.1, %13, !dbg !3881
  call void @llvm.dbg.value(metadata i64 %hidx.2, metadata !3837, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %dec33, metadata !3832, metadata !DIExpression()), !dbg !3844
  %14 = load i64, i64* %lnum, align 8, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %14, metadata !3833, metadata !DIExpression()), !dbg !3844
  %15 = load i64, i64* %hnum, align 8, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %15, metadata !3838, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %lnum, metadata !3833, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %hnum, metadata !3838, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call35 = call i32 @mul_double_with_sign(i64 %14, i64 %15, i64 %dec33, i64 %hidx.2, i64* nonnull %lnum, i64* nonnull %hnum, i8 zeroext 0) #6, !dbg !3882
  %tobool36 = icmp eq i32 %call35, 0, !dbg !3882
  br i1 %tobool36, label %if.end38, label %cleanup.loopexit, !dbg !3884

if.end38:                                         ; preds = %for.body
  %16 = load i64, i64* %ldenom, align 8, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %16, metadata !3834, metadata !DIExpression()), !dbg !3844
  %17 = load i64, i64* %hdenom, align 8, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %17, metadata !3839, metadata !DIExpression()), !dbg !3844
  %conv39 = zext i32 %i.0 to i64, !dbg !3885
  call void @llvm.dbg.value(metadata i64* %ldenom, metadata !3834, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %hdenom, metadata !3839, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call40 = call i32 @mul_double_with_sign(i64 %16, i64 %17, i64 %conv39, i64 0, i64* nonnull %ldenom, i64* nonnull %hdenom, i8 zeroext 0) #6, !dbg !3885
  %inc = add i32 %i.0, 1, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3842, metadata !DIExpression()), !dbg !3844
  br label %for.cond, !dbg !3887, !llvm.loop !3888

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %lnum, align 8, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %18, metadata !3833, metadata !DIExpression()), !dbg !3844
  %19 = load i64, i64* %hnum, align 8, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %19, metadata !3838, metadata !DIExpression()), !dbg !3844
  %20 = load i64, i64* %ldenom, align 8, !dbg !3892
  call void @llvm.dbg.value(metadata i64 %20, metadata !3834, metadata !DIExpression()), !dbg !3844
  %21 = load i64, i64* %hdenom, align 8, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %21, metadata !3839, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %lres, metadata !3835, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %ldum, metadata !3836, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %hres, metadata !3840, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %hdum, metadata !3841, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call41 = call i32 @div_and_round_double(i32 76, i32 1, i64 %18, i64 %19, i64 %20, i64 %21, i64* nonnull %lres, i64* nonnull %hres, i64* nonnull %ldum, i64* nonnull %hdum) #6, !dbg !3894
  %22 = load i64, i64* %lres, align 8, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %22, metadata !3835, metadata !DIExpression()), !dbg !3844
  %23 = load i64, i64* %hres, align 8, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %23, metadata !3840, metadata !DIExpression()), !dbg !3844
  %call42 = call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type, i64 %22, i64 %23) #6, !dbg !3897
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !3843, metadata !DIExpression()), !dbg !3844
  %call43 = call i32 @int_fits_type_p(%union.tree_node* %call42, %union.tree_node* %type) #6, !dbg !3898
  %tobool44 = icmp eq i32 %call43, 0, !dbg !3898
  %call42. = select i1 %tobool44, %union.tree_node* null, %union.tree_node* %call42, !dbg !3898
  br label %cleanup, !dbg !3899

cleanup.loopexit:                                 ; preds = %for.body
  br label %cleanup, !dbg !3900

cleanup:                                          ; preds = %cleanup.loopexit, %if.end12, %land.lhs.true, %for.end, %if.then2, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call3, %if.then2 ], [ %call42., %for.end ], [ null, %land.lhs.true ], [ null, %if.end12 ], [ null, %cleanup.loopexit ], !dbg !3844
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3900
  ret %union.tree_node* %retval.0, !dbg !3900
}

declare dso_local i32 @mul_double_with_sign(i64, i64, i64, i64, i64*, i64*, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @div_and_round_double(i32, i32, i64, i64, i64, i64, i64*, i64*, i64*, i64*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_int_cst_wide(%union.tree_node*, i64, i64) local_unnamed_addr #1

declare dso_local i32 @int_fits_type_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3907, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3908, metadata !DIExpression()), !dbg !3909
  br label %land.end, !dbg !3910

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3910
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3910
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3910
  ret %struct.loop* %0, !dbg !3910
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @evolution_function_is_constant_p(%union.tree_node* %chrec) unnamed_addr #0 !dbg !3911 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chrec, metadata !3913, metadata !DIExpression()), !dbg !3914
  %cmp = icmp eq %union.tree_node* %chrec, null, !dbg !3915
  br i1 %cmp, label %return, label %if.end, !dbg !3917

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %chrec, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3918
  %bf.load = load i64, i64* %0, align 8, !dbg !3918
  %1 = trunc i64 %bf.load to i32, !dbg !3918
  %bf.cast = and i32 %1, 65535, !dbg !3918
  %bf.cast.off = add nsw i32 %bf.cast, -23, !dbg !3919
  %switch = icmp ult i32 %bf.cast.off, 2, !dbg !3919
  %. = zext i1 %switch to i8, !dbg !3920
  br label %return, !dbg !3920

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %., %if.end ], !dbg !3914
  ret i8 %retval.0, !dbg !3922
}

declare dso_local zeroext i8 @expr_invariant_in_loop_p(%struct.loop*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1759, !1760, !1761}
!llvm.ident = !{!1762}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !394, nameTableKind: None)
!1 = !DIFile(filename: "tree-chrec.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !327, !336, !340, !346, !351, !356, !374, !381, !388}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !133, line: 39, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!135 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!141 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!142 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!143 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!144 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!145 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!146 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!147 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!148 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!149 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!150 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!151 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!152 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!153 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!154 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!155 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!156 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!157 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!158 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!159 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!160 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!161 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!162 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!163 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!164 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!165 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!166 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!167 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!168 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!169 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!170 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!171 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!172 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!173 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!174 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!175 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!176 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!177 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!178 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!179 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!180 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!181 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!182 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!183 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!184 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!185 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!186 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!187 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!188 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!189 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!190 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!191 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!193 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!194 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!195 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!196 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!197 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!198 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!199 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!200 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!201 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!202 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!203 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!204 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!205 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!206 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!207 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!208 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!209 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!210 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!211 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!212 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!213 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!214 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!215 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!216 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!217 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!218 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!219 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!220 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!221 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!222 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!223 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!224 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!226 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!227 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!228 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!229 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!230 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!231 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!232 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!233 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!234 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!235 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!236 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!237 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!238 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!239 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!240 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!241 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!242 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!243 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!244 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!245 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!246 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!247 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!248 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!249 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!250 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!251 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!252 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!253 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!254 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!255 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!256 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!257 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!258 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!259 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!260 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!261 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!262 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!263 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!264 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!265 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!266 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!267 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!268 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!269 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!270 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!271 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!272 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!273 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!274 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!275 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!276 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!277 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!278 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!279 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!280 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!281 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!282 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!283 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!284 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!285 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!286 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!287 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!288 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!289 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!290 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!291 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!292 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!293 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!294 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!295 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!296 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!297 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!299 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!300 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!301 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!302 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!303 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!304 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!305 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!306 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!307 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!308 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!309 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!310 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!311 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!312 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!313 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!314 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!320 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!321 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!322 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!323 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!324 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!325 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!326 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !328, line: 31, baseType: !5, size: 32, elements: !329)
!328 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!331 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!332 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!333 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!334 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!335 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !328, line: 91, baseType: !5, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !341, line: 363, baseType: !5, size: 32, elements: !342)
!341 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344, !345}
!343 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!345 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !341, line: 355, baseType: !5, size: 32, elements: !347)
!347 = !{!348, !349, !350}
!348 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!349 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!350 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!351 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !352, line: 474, baseType: !5, size: 32, elements: !353)
!352 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!353 = !{!354, !355}
!354 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !133, line: 280, baseType: !5, size: 32, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!358 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !133, line: 1817, baseType: !5, size: 32, elements: !375)
!375 = !{!376, !377, !378, !379, !380}
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!379 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !133, line: 1805, baseType: !5, size: 32, elements: !382)
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!386 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!387 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ev_direction", file: !389, line: 712, baseType: !5, size: 32, elements: !390)
!389 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !{!391, !392, !393}
!391 = !DIEnumerator(name: "EV_DIR_GROWS", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "EV_DIR_DECREASES", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "EV_DIR_UNKNOWN", value: 2, isUnsigned: true)
!394 = !{!395, !396, !397, !398, !401, !402, !132, !404, !406, !408, !1757, !460, !5}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!397 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !405, line: 44, baseType: !5)
!405 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !407, line: 56, baseType: !408)
!407 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !133, line: 3371, size: 1792, elements: !410)
!410 = !{!411, !444, !450, !463, !482, !493, !498, !507, !513, !526, !536, !574, !1086, !1114, !1130, !1131, !1136, !1145, !1151, !1156, !1160, !1164, !1408, !1455, !1461, !1467, !1474, !1487, !1501, !1518, !1530, !1552, !1567, !1739}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !409, file: !133, line: 3372, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !133, line: 360, size: 64, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !412, file: !133, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !412, file: !133, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !412, file: !133, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !412, file: !133, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !412, file: !133, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !412, file: !133, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !412, file: !133, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !412, file: !133, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !412, file: !133, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !412, file: !133, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !412, file: !133, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !412, file: !133, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !412, file: !133, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !412, file: !133, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !412, file: !133, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !412, file: !133, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !412, file: !133, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !412, file: !133, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !412, file: !133, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !412, file: !133, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !412, file: !133, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !412, file: !133, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !412, file: !133, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !412, file: !133, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !412, file: !133, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !412, file: !133, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !412, file: !133, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !412, file: !133, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !412, file: !133, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !412, file: !133, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !409, file: !133, line: 3373, baseType: !445, size: 192)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !133, line: 402, size: 192, elements: !446)
!446 = !{!447, !448, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !445, file: !133, line: 403, baseType: !412, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !445, file: !133, line: 404, baseType: !406, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !133, line: 405, baseType: !406, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !409, file: !133, line: 3374, baseType: !451, size: 320)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !133, line: 1384, size: 320, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !451, file: !133, line: 1385, baseType: !445, size: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !451, file: !133, line: 1386, baseType: !455, size: 128, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !456, line: 58, baseType: !457)
!456 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 54, size: 128, elements: !458)
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !457, file: !456, line: 56, baseType: !460, size: 64)
!460 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !457, file: !456, line: 57, baseType: !462, size: 64, offset: 64)
!462 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !409, file: !133, line: 3375, baseType: !464, size: 256)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !133, line: 1397, size: 256, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !464, file: !133, line: 1398, baseType: !445, size: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !464, file: !133, line: 1399, baseType: !468, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !470, line: 52, size: 256, elements: !471)
!470 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!471 = !{!472, !473, !474, !475, !476, !477, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !469, file: !470, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !469, file: !470, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !469, file: !470, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !469, file: !470, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !469, file: !470, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !469, file: !470, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !469, file: !470, line: 62, baseType: !479, size: 192, offset: 64)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 192, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 3)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !409, file: !133, line: 3376, baseType: !483, size: 256)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !133, line: 1408, size: 256, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !483, file: !133, line: 1409, baseType: !445, size: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !483, file: !133, line: 1410, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !489, line: 27, size: 192, elements: !490)
!489 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !488, file: !489, line: 29, baseType: !455, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !488, file: !489, line: 30, baseType: !3, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !409, file: !133, line: 3377, baseType: !494, size: 256)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !133, line: 1437, size: 256, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !494, file: !133, line: 1438, baseType: !445, size: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !494, file: !133, line: 1439, baseType: !406, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !409, file: !133, line: 3378, baseType: !499, size: 256)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !133, line: 1418, size: 256, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !499, file: !133, line: 1419, baseType: !445, size: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !499, file: !133, line: 1420, baseType: !397, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !499, file: !133, line: 1421, baseType: !504, size: 8, offset: 224)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 8, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 1)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !409, file: !133, line: 3379, baseType: !508, size: 320)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !133, line: 1428, size: 320, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !508, file: !133, line: 1429, baseType: !445, size: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !508, file: !133, line: 1430, baseType: !406, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !508, file: !133, line: 1431, baseType: !406, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !409, file: !133, line: 3380, baseType: !514, size: 320)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !133, line: 1460, size: 320, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !514, file: !133, line: 1461, baseType: !445, size: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !514, file: !133, line: 1462, baseType: !518, size: 128, offset: 192)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !519, line: 31, size: 128, elements: !520)
!519 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!520 = !{!521, !524, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !518, file: !519, line: 32, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !518, file: !519, line: 33, baseType: !5, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !518, file: !519, line: 34, baseType: !5, size: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !409, file: !133, line: 3381, baseType: !527, size: 384)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !133, line: 2507, size: 384, elements: !528)
!528 = !{!529, !530, !533, !534, !535}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !527, file: !133, line: 2508, baseType: !445, size: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !527, file: !133, line: 2509, baseType: !531, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !532, line: 58, baseType: !404)
!532 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !527, file: !133, line: 2510, baseType: !5, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !527, file: !133, line: 2511, baseType: !406, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !527, file: !133, line: 2512, baseType: !406, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !409, file: !133, line: 3382, baseType: !537, size: 896)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !133, line: 2652, size: 896, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !537, file: !133, line: 2653, baseType: !527, size: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !537, file: !133, line: 2654, baseType: !406, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !537, file: !133, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !537, file: !133, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !537, file: !133, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !537, file: !133, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !537, file: !133, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !537, file: !133, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !537, file: !133, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !537, file: !133, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !537, file: !133, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !537, file: !133, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !537, file: !133, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !537, file: !133, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !537, file: !133, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !537, file: !133, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !537, file: !133, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !537, file: !133, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !537, file: !133, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !537, file: !133, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !537, file: !133, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !537, file: !133, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !537, file: !133, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !537, file: !133, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !537, file: !133, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !537, file: !133, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !537, file: !133, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !537, file: !133, line: 2703, baseType: !5, size: 32, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !537, file: !133, line: 2705, baseType: !406, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !537, file: !133, line: 2706, baseType: !406, size: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !537, file: !133, line: 2707, baseType: !406, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !537, file: !133, line: 2708, baseType: !406, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !537, file: !133, line: 2711, baseType: !572, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !133, line: 2711, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !409, file: !133, line: 3383, baseType: !575, size: 960)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !133, line: 2756, size: 960, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !575, file: !133, line: 2757, baseType: !537, size: 896)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !575, file: !133, line: 2758, baseType: !579, size: 64, offset: 896)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !407, line: 50, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !582, line: 240, size: 384, elements: !583)
!582 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !581, file: !582, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !581, file: !582, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !581, file: !582, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !581, file: !582, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !581, file: !582, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !581, file: !582, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !581, file: !582, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !581, file: !582, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !581, file: !582, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !581, file: !582, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !581, file: !582, line: 321, baseType: !595, size: 320, offset: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !582, line: 315, size: 320, elements: !596)
!596 = !{!597, !1053, !1055, !1084, !1085}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !595, file: !582, line: 316, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 64, elements: !505)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !582, line: 183, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !582, line: 166, size: 64, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !614, !615, !627, !630, !690, !691, !1030, !1043, !1050}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !600, file: !582, line: 168, baseType: !397, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !600, file: !582, line: 169, baseType: !5, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !600, file: !582, line: 170, baseType: !402, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !600, file: !582, line: 171, baseType: !579, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !600, file: !582, line: 172, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !407, line: 53, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !582, line: 359, size: 128, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !609, file: !582, line: 360, baseType: !397, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !609, file: !582, line: 361, baseType: !613, size: 64, offset: 64)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 64, elements: !505)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !600, file: !582, line: 173, baseType: !3, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !600, file: !582, line: 174, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !582, line: 133, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 115, size: 32, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !617, file: !582, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !617, file: !582, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !617, file: !582, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !617, file: !582, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !617, file: !582, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !617, file: !582, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !617, file: !582, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !617, file: !582, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !600, file: !582, line: 175, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !582, line: 175, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !600, file: !582, line: 176, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !633, line: 75, size: 256, elements: !634)
!633 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!634 = !{!635, !649, !650, !651}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !632, file: !633, line: 76, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !633, line: 68, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !633, line: 63, size: 320, elements: !639)
!639 = !{!640, !642, !643, !644}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !633, line: 64, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !638, file: !633, line: 65, baseType: !641, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !638, file: !633, line: 66, baseType: !5, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !638, file: !633, line: 67, baseType: !645, size: 128, offset: 192)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 128, elements: !647)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !633, line: 29, baseType: !460)
!647 = !{!648}
!648 = !DISubrange(count: 2)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !632, file: !633, line: 77, baseType: !636, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !632, file: !633, line: 78, baseType: !5, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !632, file: !633, line: 79, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !633, line: 49, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !633, line: 45, size: 832, elements: !655)
!655 = !{!656, !657, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !654, file: !633, line: 46, baseType: !641, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !654, file: !633, line: 47, baseType: !631, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !654, file: !633, line: 48, baseType: !659, size: 704, offset: 128)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !660, line: 164, size: 704, elements: !661)
!660 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!661 = !{!662, !663, !673, !674, !675, !676, !677, !678, !682, !686, !687, !688, !689}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !659, file: !660, line: 166, baseType: !462, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !659, file: !660, line: 167, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !660, line: 157, size: 192, elements: !666)
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !665, file: !660, line: 159, baseType: !399, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !665, file: !660, line: 160, baseType: !664, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !665, file: !660, line: 161, baseType: !670, size: 32, offset: 128)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 32, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 4)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !659, file: !660, line: 168, baseType: !399, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !659, file: !660, line: 169, baseType: !399, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !659, file: !660, line: 170, baseType: !399, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !659, file: !660, line: 171, baseType: !462, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !659, file: !660, line: 172, baseType: !397, size: 32, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !659, file: !660, line: 176, baseType: !679, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!664, !401, !462}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !659, file: !660, line: 177, baseType: !683, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !401, !664}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !659, file: !660, line: 178, baseType: !401, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !659, file: !660, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !659, file: !660, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !659, file: !660, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !600, file: !582, line: 177, baseType: !406, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !600, file: !582, line: 178, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !341, line: 217, size: 832, elements: !694)
!694 = !{!695, !942, !943, !944, !1000, !1004, !1005, !1006, !1024, !1025, !1026, !1027, !1028, !1029}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !693, file: !341, line: 219, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !341, line: 151, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !341, line: 151, size: 128, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !698, file: !341, line: 151, baseType: !701, size: 128)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !341, line: 150, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !341, line: 150, size: 128, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !702, file: !341, line: 150, baseType: !5, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !702, file: !341, line: 150, baseType: !5, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !702, file: !341, line: 150, baseType: !707, size: 64, offset: 64)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 64, elements: !505)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !407, line: 108, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !341, line: 122, size: 512, elements: !711)
!711 = !{!712, !713, !714, !934, !935, !936, !937, !938, !939, !940}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !710, file: !341, line: 124, baseType: !692, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !710, file: !341, line: 125, baseType: !692, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !710, file: !341, line: 131, baseType: !715, size: 64, offset: 128)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !341, line: 128, size: 64, elements: !716)
!716 = !{!717, !933}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !715, file: !341, line: 129, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !407, line: 66, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !721, line: 143, size: 192, elements: !722)
!721 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!722 = !{!723, !931, !932}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !720, file: !721, line: 145, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !407, line: 69, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !721, line: 136, size: 192, elements: !727)
!727 = !{!728, !929, !930}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !726, file: !721, line: 137, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !407, line: 58, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !721, line: 737, size: 768, elements: !732)
!732 = !{!733, !750, !784, !790, !795, !800, !807, !813, !819, !824, !838, !843, !849, !854, !864, !869, !887, !894, !901, !907, !912, !918, !924}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !731, file: !721, line: 738, baseType: !734, size: 256)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !721, line: 271, size: 256, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !734, file: !721, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !734, file: !721, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !734, file: !721, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !734, file: !721, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !734, file: !721, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !734, file: !721, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !734, file: !721, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !734, file: !721, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !734, file: !721, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !734, file: !721, line: 312, baseType: !5, size: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !734, file: !721, line: 316, baseType: !531, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !734, file: !721, line: 319, baseType: !5, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !734, file: !721, line: 323, baseType: !692, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !734, file: !721, line: 327, baseType: !406, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !731, file: !721, line: 739, baseType: !751, size: 448)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !721, line: 350, size: 448, elements: !752)
!752 = !{!753, !782}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !751, file: !721, line: 353, baseType: !754, size: 384)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !721, line: 333, size: 384, elements: !755)
!755 = !{!756, !757, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !754, file: !721, line: 336, baseType: !734, size: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !754, file: !721, line: 343, baseType: !758, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !760, line: 37, size: 128, elements: !761)
!760 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !760, line: 39, baseType: !758, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !759, file: !760, line: 40, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !754, file: !721, line: 344, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !760, line: 45, size: 320, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !760, line: 47, baseType: !766, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !767, file: !760, line: 48, baseType: !771, size: 256, offset: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !133, line: 1883, size: 256, elements: !772)
!772 = !{!773, !775, !776, !781}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !771, file: !133, line: 1884, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !133, line: 1885, baseType: !774, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !771, file: !133, line: 1891, baseType: !777, size: 64, offset: 128)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !133, line: 1891, size: 64, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !777, file: !133, line: 1891, baseType: !729, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !777, file: !133, line: 1891, baseType: !406, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !771, file: !133, line: 1892, baseType: !764, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !751, file: !721, line: 359, baseType: !783, size: 64, offset: 384)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 64, elements: !505)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !731, file: !721, line: 740, baseType: !785, size: 512)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !721, line: 365, size: 512, elements: !786)
!786 = !{!787, !788, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !785, file: !721, line: 368, baseType: !754, size: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !785, file: !721, line: 373, baseType: !406, size: 64, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !785, file: !721, line: 374, baseType: !406, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !731, file: !721, line: 741, baseType: !791, size: 576)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !721, line: 380, size: 576, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !791, file: !721, line: 383, baseType: !785, size: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !791, file: !721, line: 389, baseType: !783, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !731, file: !721, line: 742, baseType: !796, size: 320)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !721, line: 395, size: 320, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !796, file: !721, line: 397, baseType: !734, size: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !796, file: !721, line: 400, baseType: !718, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !731, file: !721, line: 743, baseType: !801, size: 448)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !721, line: 406, size: 448, elements: !802)
!802 = !{!803, !804, !805, !806}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !801, file: !721, line: 408, baseType: !734, size: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !801, file: !721, line: 412, baseType: !406, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !801, file: !721, line: 420, baseType: !406, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !801, file: !721, line: 423, baseType: !718, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !731, file: !721, line: 744, baseType: !808, size: 384)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !721, line: 429, size: 384, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !808, file: !721, line: 431, baseType: !734, size: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !808, file: !721, line: 434, baseType: !406, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !808, file: !721, line: 437, baseType: !718, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !731, file: !721, line: 745, baseType: !814, size: 384)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !721, line: 443, size: 384, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !814, file: !721, line: 445, baseType: !734, size: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !814, file: !721, line: 449, baseType: !406, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !814, file: !721, line: 453, baseType: !718, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !731, file: !721, line: 746, baseType: !820, size: 320)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !721, line: 459, size: 320, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !820, file: !721, line: 461, baseType: !734, size: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !820, file: !721, line: 464, baseType: !406, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !731, file: !721, line: 747, baseType: !825, size: 768)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !721, line: 469, size: 768, elements: !826)
!826 = !{!827, !828, !829, !830, !831}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !825, file: !721, line: 471, baseType: !734, size: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !825, file: !721, line: 474, baseType: !5, size: 32, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !825, file: !721, line: 475, baseType: !5, size: 32, offset: 288)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !825, file: !721, line: 478, baseType: !406, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !825, file: !721, line: 481, baseType: !832, size: 384, offset: 384)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 384, elements: !505)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !133, line: 1917, size: 384, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !833, file: !133, line: 1920, baseType: !771, size: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !833, file: !133, line: 1921, baseType: !406, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !833, file: !133, line: 1922, baseType: !531, size: 32, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !731, file: !721, line: 748, baseType: !839, size: 320)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !721, line: 487, size: 320, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !839, file: !721, line: 490, baseType: !734, size: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !839, file: !721, line: 494, baseType: !397, size: 32, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !731, file: !721, line: 749, baseType: !844, size: 384)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !721, line: 500, size: 384, elements: !845)
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !844, file: !721, line: 502, baseType: !734, size: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !844, file: !721, line: 506, baseType: !718, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !844, file: !721, line: 510, baseType: !718, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !731, file: !721, line: 750, baseType: !850, size: 320)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !721, line: 529, size: 320, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !850, file: !721, line: 531, baseType: !734, size: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !850, file: !721, line: 540, baseType: !718, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !731, file: !721, line: 751, baseType: !855, size: 704)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !721, line: 546, size: 704, elements: !856)
!856 = !{!857, !858, !859, !860, !861, !862, !863}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !855, file: !721, line: 549, baseType: !785, size: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !855, file: !721, line: 553, baseType: !402, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !855, file: !721, line: 557, baseType: !396, size: 8, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !855, file: !721, line: 558, baseType: !396, size: 8, offset: 584)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !855, file: !721, line: 559, baseType: !396, size: 8, offset: 592)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !855, file: !721, line: 560, baseType: !396, size: 8, offset: 600)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !855, file: !721, line: 566, baseType: !783, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !731, file: !721, line: 752, baseType: !865, size: 384)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !721, line: 571, size: 384, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !865, file: !721, line: 573, baseType: !796, size: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !865, file: !721, line: 577, baseType: !406, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !731, file: !721, line: 753, baseType: !870, size: 576)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !721, line: 600, size: 576, elements: !871)
!871 = !{!872, !873, !874, !877, !886}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !870, file: !721, line: 602, baseType: !796, size: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !870, file: !721, line: 605, baseType: !406, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !870, file: !721, line: 609, baseType: !875, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !876, line: 46, baseType: !460)
!876 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!877 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !870, file: !721, line: 612, baseType: !878, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !721, line: 581, size: 320, elements: !880)
!880 = !{!881, !882, !883, !884, !885}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !879, file: !721, line: 583, baseType: !132, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !879, file: !721, line: 586, baseType: !406, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !879, file: !721, line: 589, baseType: !406, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !879, file: !721, line: 592, baseType: !406, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !879, file: !721, line: 595, baseType: !406, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !870, file: !721, line: 616, baseType: !718, size: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !731, file: !721, line: 754, baseType: !888, size: 512)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !721, line: 622, size: 512, elements: !889)
!889 = !{!890, !891, !892, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !888, file: !721, line: 624, baseType: !796, size: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !888, file: !721, line: 628, baseType: !406, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !888, file: !721, line: 632, baseType: !406, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !888, file: !721, line: 636, baseType: !406, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !731, file: !721, line: 755, baseType: !895, size: 704)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !721, line: 642, size: 704, elements: !896)
!896 = !{!897, !898, !899, !900}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !895, file: !721, line: 644, baseType: !888, size: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !895, file: !721, line: 648, baseType: !406, size: 64, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !895, file: !721, line: 652, baseType: !406, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !895, file: !721, line: 653, baseType: !406, size: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !731, file: !721, line: 756, baseType: !902, size: 448)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !721, line: 663, size: 448, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !902, file: !721, line: 665, baseType: !796, size: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !902, file: !721, line: 668, baseType: !406, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !902, file: !721, line: 673, baseType: !406, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !731, file: !721, line: 757, baseType: !908, size: 384)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !721, line: 694, size: 384, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !908, file: !721, line: 696, baseType: !796, size: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !908, file: !721, line: 699, baseType: !406, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !731, file: !721, line: 758, baseType: !913, size: 384)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !721, line: 681, size: 384, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !913, file: !721, line: 683, baseType: !734, size: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !913, file: !721, line: 686, baseType: !406, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !913, file: !721, line: 689, baseType: !406, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !731, file: !721, line: 759, baseType: !919, size: 384)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !721, line: 707, size: 384, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !919, file: !721, line: 709, baseType: !734, size: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !919, file: !721, line: 712, baseType: !406, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !919, file: !721, line: 712, baseType: !406, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !731, file: !721, line: 760, baseType: !925, size: 320)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !721, line: 718, size: 320, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !925, file: !721, line: 720, baseType: !734, size: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !925, file: !721, line: 723, baseType: !406, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !726, file: !721, line: 138, baseType: !725, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !721, line: 139, baseType: !725, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !720, file: !721, line: 146, baseType: !724, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !720, file: !721, line: 152, baseType: !718, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !715, file: !341, line: 130, baseType: !579, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !710, file: !341, line: 134, baseType: !401, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !710, file: !341, line: 137, baseType: !406, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !710, file: !341, line: 138, baseType: !531, size: 32, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !710, file: !341, line: 142, baseType: !5, size: 32, offset: 352)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !341, line: 144, baseType: !397, size: 32, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !710, file: !341, line: 145, baseType: !397, size: 32, offset: 416)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !710, file: !341, line: 146, baseType: !941, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !341, line: 119, baseType: !462)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !693, file: !341, line: 220, baseType: !696, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !693, file: !341, line: 223, baseType: !401, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !693, file: !341, line: 226, baseType: !945, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !328, line: 100, size: 1216, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !957, !958, !959, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !990, !998, !999}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !946, file: !328, line: 102, baseType: !397, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !946, file: !328, line: 105, baseType: !5, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !946, file: !328, line: 108, baseType: !692, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !946, file: !328, line: 111, baseType: !692, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !946, file: !328, line: 114, baseType: !953, size: 64, offset: 192)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !328, line: 41, size: 64, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !953, file: !328, line: 42, baseType: !327, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !953, file: !328, line: 43, baseType: !5, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !946, file: !328, line: 117, baseType: !5, size: 32, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !946, file: !328, line: 120, baseType: !5, size: 32, offset: 288)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !946, file: !328, line: 123, baseType: !960, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !328, line: 87, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !328, line: 87, size: 128, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !962, file: !328, line: 87, baseType: !965, size: 128)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !328, line: 85, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !328, line: 85, size: 128, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !966, file: !328, line: 85, baseType: !5, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !966, file: !328, line: 85, baseType: !5, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !966, file: !328, line: 85, baseType: !971, size: 64, offset: 64)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 64, elements: !505)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !328, line: 84, baseType: !945)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !946, file: !328, line: 126, baseType: !945, size: 64, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !946, file: !328, line: 129, baseType: !945, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !946, file: !328, line: 132, baseType: !401, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !946, file: !328, line: 139, baseType: !406, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !946, file: !328, line: 143, baseType: !455, size: 128, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !946, file: !328, line: 146, baseType: !455, size: 128, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !946, file: !328, line: 148, baseType: !396, size: 8, offset: 896)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !946, file: !328, line: 149, baseType: !396, size: 8, offset: 904)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !946, file: !328, line: 153, baseType: !336, size: 32, offset: 928)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !946, file: !328, line: 156, baseType: !983, size: 64, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !328, line: 48, size: 320, elements: !985)
!985 = !{!986, !987, !988, !989}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !984, file: !328, line: 50, baseType: !729, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !984, file: !328, line: 59, baseType: !455, size: 128, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !984, file: !328, line: 64, baseType: !396, size: 8, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !984, file: !328, line: 67, baseType: !983, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !946, file: !328, line: 159, baseType: !991, size: 64, offset: 1024)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !328, line: 72, size: 256, elements: !993)
!993 = !{!994, !995, !996, !997}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !992, file: !328, line: 74, baseType: !709, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !992, file: !328, line: 77, baseType: !991, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !328, line: 78, baseType: !991, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !992, file: !328, line: 81, baseType: !991, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !946, file: !328, line: 162, baseType: !396, size: 8, offset: 1088)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !946, file: !328, line: 166, baseType: !406, size: 64, offset: 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !693, file: !341, line: 229, baseType: !1001, size: 128, offset: 256)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 128, elements: !647)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !341, line: 229, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !693, file: !341, line: 232, baseType: !692, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !693, file: !341, line: 233, baseType: !692, size: 64, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !693, file: !341, line: 238, baseType: !1007, size: 64, offset: 512)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !341, line: 235, size: 64, elements: !1008)
!1008 = !{!1009, !1015}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1007, file: !341, line: 236, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !341, line: 273, size: 128, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1011, file: !341, line: 275, baseType: !718, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1011, file: !341, line: 278, baseType: !718, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1007, file: !341, line: 237, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !341, line: 259, size: 320, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1017, file: !341, line: 261, baseType: !579, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1017, file: !341, line: 262, baseType: !579, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1017, file: !341, line: 266, baseType: !579, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1017, file: !341, line: 267, baseType: !579, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1017, file: !341, line: 270, baseType: !397, size: 32, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !341, line: 241, baseType: !941, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !693, file: !341, line: 244, baseType: !397, size: 32, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !693, file: !341, line: 247, baseType: !397, size: 32, offset: 672)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !693, file: !341, line: 250, baseType: !397, size: 32, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !693, file: !341, line: 253, baseType: !397, size: 32, offset: 736)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !341, line: 256, baseType: !397, size: 32, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !600, file: !582, line: 179, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !582, line: 150, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !582, line: 142, size: 320, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1041, !1042}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1033, file: !582, line: 144, baseType: !406, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1033, file: !582, line: 145, baseType: !579, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !582, line: 146, baseType: !579, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1033, file: !582, line: 147, baseType: !1039, size: 32, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1040, line: 31, baseType: !397)
!1040 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1033, file: !582, line: 148, baseType: !5, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1033, file: !582, line: 149, baseType: !396, size: 8, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !600, file: !582, line: 180, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !582, line: 162, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !582, line: 159, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1046, file: !582, line: 160, baseType: !406, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1046, file: !582, line: 161, baseType: !462, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !600, file: !582, line: 181, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !582, line: 181, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !595, file: !582, line: 317, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 64, elements: !505)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !595, file: !582, line: 318, baseType: !1056, size: 320)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !582, line: 188, size: 320, elements: !1057)
!1057 = !{!1058, !1060, !1083}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1056, file: !582, line: 190, baseType: !1059, size: 192)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 192, elements: !480)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1056, file: !582, line: 193, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !582, line: 206, size: 320, elements: !1063)
!1063 = !{!1064, !1068, !1069, !1070, !1082}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1062, file: !582, line: 208, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !407, line: 62, baseType: !1067)
!1067 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !407, line: 61, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1062, file: !582, line: 211, baseType: !5, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1062, file: !582, line: 214, baseType: !462, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1062, file: !582, line: 224, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !582, line: 202, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !582, line: 202, size: 128, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1073, file: !582, line: 202, baseType: !1076, size: 128)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !582, line: 200, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !582, line: 200, size: 128, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1077, file: !582, line: 200, baseType: !5, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1077, file: !582, line: 200, baseType: !5, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1077, file: !582, line: 200, baseType: !613, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1062, file: !582, line: 234, baseType: !1071, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1056, file: !582, line: 197, baseType: !462, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !595, file: !582, line: 319, baseType: !469, size: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !595, file: !582, line: 320, baseType: !488, size: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !409, file: !133, line: 3384, baseType: !1087, size: 1472)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !133, line: 3114, size: 1472, elements: !1088)
!1088 = !{!1089, !1110, !1111, !1112, !1113}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1087, file: !133, line: 3115, baseType: !1090, size: 1216)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !133, line: 2984, size: 1216, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1090, file: !133, line: 2985, baseType: !575, size: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1090, file: !133, line: 2986, baseType: !406, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1090, file: !133, line: 2987, baseType: !406, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1090, file: !133, line: 2988, baseType: !406, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1090, file: !133, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1090, file: !133, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1090, file: !133, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1090, file: !133, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1090, file: !133, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1090, file: !133, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1090, file: !133, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1090, file: !133, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1090, file: !133, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1090, file: !133, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1090, file: !133, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1090, file: !133, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1090, file: !133, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1090, file: !133, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1087, file: !133, line: 3117, baseType: !406, size: 64, offset: 1216)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1087, file: !133, line: 3119, baseType: !406, size: 64, offset: 1280)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1087, file: !133, line: 3121, baseType: !406, size: 64, offset: 1344)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1087, file: !133, line: 3123, baseType: !406, size: 64, offset: 1408)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !409, file: !133, line: 3385, baseType: !1115, size: 1088)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !133, line: 2874, size: 1088, elements: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1115, file: !133, line: 2875, baseType: !575, size: 960)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1115, file: !133, line: 2876, baseType: !579, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1115, file: !133, line: 2877, baseType: !1120, size: 64, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !389, line: 172, size: 128, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1121, file: !389, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1121, file: !389, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1121, file: !389, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1121, file: !389, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1121, file: !389, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1121, file: !389, line: 195, baseType: !5, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1121, file: !389, line: 199, baseType: !406, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !409, file: !133, line: 3386, baseType: !1090, size: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !409, file: !133, line: 3387, baseType: !1132, size: 1280)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !133, line: 3093, size: 1280, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1132, file: !133, line: 3094, baseType: !1090, size: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1132, file: !133, line: 3095, baseType: !1120, size: 64, offset: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !409, file: !133, line: 3388, baseType: !1137, size: 1216)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !133, line: 2824, size: 1216, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !133, line: 2825, baseType: !537, size: 896)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1137, file: !133, line: 2827, baseType: !406, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1137, file: !133, line: 2828, baseType: !406, size: 64, offset: 960)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1137, file: !133, line: 2829, baseType: !406, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1137, file: !133, line: 2830, baseType: !406, size: 64, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1137, file: !133, line: 2831, baseType: !406, size: 64, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !409, file: !133, line: 3389, baseType: !1146, size: 1024)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !133, line: 2850, size: 1024, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1146, file: !133, line: 2851, baseType: !575, size: 960)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1146, file: !133, line: 2852, baseType: !397, size: 32, offset: 960)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1146, file: !133, line: 2853, baseType: !397, size: 32, offset: 992)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !409, file: !133, line: 3390, baseType: !1152, size: 1024)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !133, line: 2857, size: 1024, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1152, file: !133, line: 2858, baseType: !575, size: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1152, file: !133, line: 2859, baseType: !1120, size: 64, offset: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !409, file: !133, line: 3391, baseType: !1157, size: 960)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !133, line: 2862, size: 960, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1157, file: !133, line: 2863, baseType: !575, size: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !409, file: !133, line: 3392, baseType: !1161, size: 1472)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !133, line: 3304, size: 1472, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1161, file: !133, line: 3305, baseType: !1087, size: 1472)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !409, file: !133, line: 3393, baseType: !1165, size: 1792)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !133, line: 3248, size: 1792, elements: !1166)
!1166 = !{!1167, !1168, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1165, file: !133, line: 3249, baseType: !1087, size: 1472)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1165, file: !133, line: 3251, baseType: !1169, size: 64, offset: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1171, line: 463, size: 1152, elements: !1172)
!1171 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1172 = !{!1173, !1176, !1207, !1208, !1323, !1331, !1332, !1333, !1334, !1335, !1336, !1360, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1170, file: !1171, line: 464, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1171, line: 464, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1170, file: !1171, line: 467, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !341, line: 374, size: 640, elements: !1179)
!1179 = !{!1180, !1182, !1183, !1196, !1197, !1198, !1199, !1200, !1201, !1203, !1205, !1206}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1178, file: !341, line: 377, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !407, line: 111, baseType: !692)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1178, file: !341, line: 378, baseType: !1181, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1178, file: !341, line: 381, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !341, line: 282, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !341, line: 282, size: 128, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1186, file: !341, line: 282, baseType: !1189, size: 128)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !341, line: 281, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !341, line: 281, size: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1190, file: !341, line: 281, baseType: !5, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1190, file: !341, line: 281, baseType: !5, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1190, file: !341, line: 281, baseType: !1195, size: 64, offset: 64)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, size: 64, elements: !505)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1178, file: !341, line: 384, baseType: !397, size: 32, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1178, file: !341, line: 387, baseType: !397, size: 32, offset: 224)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1178, file: !341, line: 390, baseType: !397, size: 32, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1178, file: !341, line: 394, baseType: !1184, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1178, file: !341, line: 396, baseType: !340, size: 32, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1178, file: !341, line: 399, baseType: !1202, size: 64, offset: 416)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 64, elements: !647)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1178, file: !341, line: 402, baseType: !1204, size: 64, offset: 480)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !647)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1178, file: !341, line: 406, baseType: !397, size: 32, offset: 544)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1178, file: !341, line: 409, baseType: !397, size: 32, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1170, file: !1171, line: 470, baseType: !719, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1170, file: !1171, line: 473, baseType: !1209, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !389, line: 39, size: 1152, elements: !1211)
!1211 = !{!1212, !1262, !1275, !1287, !1288, !1300, !1301, !1305, !1306, !1307, !1308, !1309}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1210, file: !389, line: 41, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1214, line: 144, baseType: !1215)
!1214 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1214, line: 100, size: 896, elements: !1217)
!1217 = !{!1218, !1226, !1231, !1236, !1238, !1239, !1240, !1241, !1242, !1243, !1248, !1250, !1251, !1256, !1261}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1216, file: !1214, line: 102, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1214, line: 52, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1214, line: 47, baseType: !5)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1216, file: !1214, line: 105, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1214, line: 59, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!397, !1224, !1224}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1216, file: !1214, line: 108, baseType: !1232, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1214, line: 63, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !401}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1216, file: !1214, line: 111, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1216, file: !1214, line: 114, baseType: !875, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1216, file: !1214, line: 117, baseType: !875, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1216, file: !1214, line: 120, baseType: !875, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1216, file: !1214, line: 124, baseType: !5, size: 32, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1216, file: !1214, line: 128, baseType: !5, size: 32, offset: 480)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1216, file: !1214, line: 131, baseType: !1244, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1214, line: 75, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!401, !875, !875}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1216, file: !1214, line: 132, baseType: !1249, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1214, line: 78, baseType: !1233)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1216, file: !1214, line: 135, baseType: !401, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1216, file: !1214, line: 136, baseType: !1252, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1214, line: 82, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!401, !401, !875, !875}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1216, file: !1214, line: 137, baseType: !1257, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1214, line: 83, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !401, !401}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1216, file: !1214, line: 141, baseType: !5, size: 32, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1210, file: !389, line: 48, baseType: !1263, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !721, line: 35, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !721, line: 35, size: 128, elements: !1266)
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1265, file: !721, line: 35, baseType: !1268, size: 128)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !721, line: 33, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !721, line: 33, size: 128, elements: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1269, file: !721, line: 33, baseType: !5, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1269, file: !721, line: 33, baseType: !5, size: 32, offset: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1269, file: !721, line: 33, baseType: !1274, size: 64, offset: 64)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 64, elements: !505)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1210, file: !389, line: 51, baseType: !1276, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !133, line: 183, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !133, line: 183, size: 128, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1278, file: !133, line: 183, baseType: !1281, size: 128)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !133, line: 182, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !133, line: 182, size: 128, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1282, file: !133, line: 182, baseType: !5, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1282, file: !133, line: 182, baseType: !5, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1282, file: !133, line: 182, baseType: !783, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1210, file: !389, line: 54, baseType: !406, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1210, file: !389, line: 57, baseType: !1289, size: 128, offset: 256)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1290, line: 31, size: 128, elements: !1291)
!1290 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1289, file: !1290, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1289, file: !1290, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1289, file: !1290, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1289, file: !1290, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1289, file: !1290, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1289, file: !1290, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1289, file: !1290, line: 56, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !407, line: 47, baseType: !631)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1210, file: !389, line: 60, baseType: !1289, size: 128, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1210, file: !389, line: 64, baseType: !1302, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1304, line: 33, flags: DIFlagFwdDecl)
!1304 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1210, file: !389, line: 67, baseType: !406, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1210, file: !389, line: 73, baseType: !1213, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1210, file: !389, line: 77, baseType: !1299, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1210, file: !389, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1210, file: !389, line: 82, baseType: !1310, size: 320, offset: 832)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !760, line: 62, size: 320, elements: !1311)
!1311 = !{!1312, !1318, !1319, !1320, !1321, !1322}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1310, file: !760, line: 63, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !760, line: 56, size: 128, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1314, file: !760, line: 57, baseType: !1313, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1314, file: !760, line: 58, baseType: !504, size: 8, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1310, file: !760, line: 64, baseType: !5, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1310, file: !760, line: 66, baseType: !5, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1310, file: !760, line: 68, baseType: !396, size: 8, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1310, file: !760, line: 70, baseType: !758, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1310, file: !760, line: 71, baseType: !766, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1170, file: !1171, line: 476, baseType: !1324, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !328, line: 187, size: 256, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1325, file: !328, line: 189, baseType: !397, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1325, file: !328, line: 192, baseType: !960, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1325, file: !328, line: 197, baseType: !1213, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1325, file: !328, line: 200, baseType: !945, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1170, file: !1171, line: 479, baseType: !1213, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1170, file: !1171, line: 484, baseType: !406, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1170, file: !1171, line: 488, baseType: !406, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1170, file: !1171, line: 493, baseType: !406, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1170, file: !1171, line: 496, baseType: !406, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1170, file: !1171, line: 501, baseType: !1337, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !352, line: 2355, size: 576, elements: !1339)
!1339 = !{!1340, !1343, !1344, !1345, !1346, !1348, !1349, !1354, !1355, !1356, !1357, !1358, !1359}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1338, file: !352, line: 2356, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !352, line: 2356, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1338, file: !352, line: 2357, baseType: !402, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1338, file: !352, line: 2358, baseType: !397, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1338, file: !352, line: 2359, baseType: !397, size: 32, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1338, file: !352, line: 2360, baseType: !1347, size: 128, offset: 192)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, elements: !671)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1338, file: !352, line: 2364, baseType: !397, size: 32, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1338, file: !352, line: 2367, baseType: !1350, size: 128, offset: 384)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !352, line: 2349, size: 128, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1350, file: !352, line: 2351, baseType: !579, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1350, file: !352, line: 2352, baseType: !462, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1338, file: !352, line: 2371, baseType: !351, size: 32, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1338, file: !352, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1338, file: !352, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1338, file: !352, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1338, file: !352, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1338, file: !352, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1170, file: !1171, line: 504, baseType: !1361, size: 64, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1171, line: 504, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1170, file: !1171, line: 507, baseType: !1213, size: 64, offset: 768)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1170, file: !1171, line: 510, baseType: !397, size: 32, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1170, file: !1171, line: 513, baseType: !397, size: 32, offset: 864)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1170, file: !1171, line: 516, baseType: !531, size: 32, offset: 896)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1170, file: !1171, line: 519, baseType: !531, size: 32, offset: 928)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1170, file: !1171, line: 522, baseType: !5, size: 32, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1170, file: !1171, line: 523, baseType: !5, size: 32, offset: 992)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1170, file: !1171, line: 528, baseType: !402, size: 64, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1170, file: !1171, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1170, file: !1171, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1170, file: !1171, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1170, file: !1171, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1170, file: !1171, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1170, file: !1171, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1170, file: !1171, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1170, file: !1171, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1170, file: !1171, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1170, file: !1171, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1170, file: !1171, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1170, file: !1171, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1170, file: !1171, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1170, file: !1171, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1170, file: !1171, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1170, file: !1171, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1165, file: !133, line: 3254, baseType: !406, size: 64, offset: 1536)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1165, file: !133, line: 3257, baseType: !406, size: 64, offset: 1600)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1165, file: !133, line: 3258, baseType: !406, size: 64, offset: 1664)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1165, file: !133, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1165, file: !133, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1165, file: !133, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1165, file: !133, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1165, file: !133, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1165, file: !133, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1165, file: !133, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1165, file: !133, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1165, file: !133, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1165, file: !133, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1165, file: !133, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1165, file: !133, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1165, file: !133, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1165, file: !133, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1165, file: !133, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1165, file: !133, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1165, file: !133, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1165, file: !133, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !133, line: 3394, baseType: !1409, size: 1344)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !133, line: 2279, size: 1344, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1409, file: !133, line: 2280, baseType: !445, size: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1409, file: !133, line: 2281, baseType: !406, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1409, file: !133, line: 2282, baseType: !406, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1409, file: !133, line: 2283, baseType: !406, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1409, file: !133, line: 2284, baseType: !406, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1409, file: !133, line: 2285, baseType: !5, size: 32, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1409, file: !133, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1409, file: !133, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1409, file: !133, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1409, file: !133, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1409, file: !133, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1409, file: !133, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1409, file: !133, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1409, file: !133, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1409, file: !133, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1409, file: !133, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1409, file: !133, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1409, file: !133, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1409, file: !133, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1409, file: !133, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1409, file: !133, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1409, file: !133, line: 2305, baseType: !5, size: 32, offset: 512)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1409, file: !133, line: 2306, baseType: !1039, size: 32, offset: 544)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1409, file: !133, line: 2307, baseType: !406, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1409, file: !133, line: 2308, baseType: !406, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1409, file: !133, line: 2314, baseType: !1437, size: 64, offset: 704)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !133, line: 2309, size: 64, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1437, file: !133, line: 2310, baseType: !397, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1437, file: !133, line: 2311, baseType: !402, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1437, file: !133, line: 2312, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !133, line: 2277, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1409, file: !133, line: 2315, baseType: !406, size: 64, offset: 768)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1409, file: !133, line: 2316, baseType: !406, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1409, file: !133, line: 2317, baseType: !406, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1409, file: !133, line: 2318, baseType: !406, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1409, file: !133, line: 2319, baseType: !406, size: 64, offset: 1024)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1409, file: !133, line: 2320, baseType: !406, size: 64, offset: 1088)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1409, file: !133, line: 2321, baseType: !406, size: 64, offset: 1152)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1409, file: !133, line: 2322, baseType: !406, size: 64, offset: 1216)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1409, file: !133, line: 2324, baseType: !1453, size: 64, offset: 1280)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !133, line: 2324, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !409, file: !133, line: 3395, baseType: !1456, size: 320)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !133, line: 1469, size: 320, elements: !1457)
!1457 = !{!1458, !1459, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1456, file: !133, line: 1470, baseType: !445, size: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1456, file: !133, line: 1471, baseType: !406, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1456, file: !133, line: 1472, baseType: !406, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !409, file: !133, line: 3396, baseType: !1462, size: 320)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !133, line: 1482, size: 320, elements: !1463)
!1463 = !{!1464, !1465, !1466}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1462, file: !133, line: 1483, baseType: !445, size: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1462, file: !133, line: 1484, baseType: !397, size: 32, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1462, file: !133, line: 1485, baseType: !783, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !409, file: !133, line: 3397, baseType: !1468, size: 384)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !133, line: 1829, size: 384, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1468, file: !133, line: 1830, baseType: !445, size: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1468, file: !133, line: 1831, baseType: !531, size: 32, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1468, file: !133, line: 1832, baseType: !406, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1468, file: !133, line: 1835, baseType: !783, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !409, file: !133, line: 3398, baseType: !1475, size: 704)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !133, line: 1898, size: 704, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1486}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1475, file: !133, line: 1899, baseType: !445, size: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1475, file: !133, line: 1902, baseType: !406, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1475, file: !133, line: 1905, baseType: !729, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1475, file: !133, line: 1908, baseType: !5, size: 32, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1475, file: !133, line: 1911, baseType: !1482, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !389, line: 117, size: 128, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1483, file: !389, line: 120, baseType: !1289, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1475, file: !133, line: 1914, baseType: !771, size: 256, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !409, file: !133, line: 3399, baseType: !1488, size: 704)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !133, line: 2008, size: 704, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1488, file: !133, line: 2009, baseType: !445, size: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1488, file: !133, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1488, file: !133, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1488, file: !133, line: 2014, baseType: !531, size: 32, offset: 224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1488, file: !133, line: 2016, baseType: !406, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1488, file: !133, line: 2017, baseType: !1276, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1488, file: !133, line: 2019, baseType: !406, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1488, file: !133, line: 2020, baseType: !406, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1488, file: !133, line: 2021, baseType: !406, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1488, file: !133, line: 2022, baseType: !406, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1488, file: !133, line: 2023, baseType: !406, size: 64, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !409, file: !133, line: 3400, baseType: !1502, size: 832)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !133, line: 2430, size: 832, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1502, file: !133, line: 2431, baseType: !445, size: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1502, file: !133, line: 2433, baseType: !406, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1502, file: !133, line: 2434, baseType: !406, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1502, file: !133, line: 2435, baseType: !406, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1502, file: !133, line: 2436, baseType: !406, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1502, file: !133, line: 2437, baseType: !1276, size: 64, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1502, file: !133, line: 2438, baseType: !406, size: 64, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1502, file: !133, line: 2440, baseType: !406, size: 64, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1502, file: !133, line: 2441, baseType: !406, size: 64, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1502, file: !133, line: 2443, baseType: !1514, size: 128, offset: 704)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !133, line: 182, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !133, line: 182, size: 128, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1515, file: !133, line: 182, baseType: !1281, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !409, file: !133, line: 3401, baseType: !1519, size: 320)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !133, line: 3327, size: 320, elements: !1520)
!1520 = !{!1521, !1522, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1519, file: !133, line: 3329, baseType: !445, size: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1519, file: !133, line: 3330, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !133, line: 3320, size: 192, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1524, file: !133, line: 3322, baseType: !1523, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1524, file: !133, line: 3323, baseType: !1523, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1524, file: !133, line: 3324, baseType: !406, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1519, file: !133, line: 3331, baseType: !1523, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !409, file: !133, line: 3402, baseType: !1531, size: 256)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !133, line: 1540, size: 256, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1531, file: !133, line: 1541, baseType: !445, size: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1531, file: !133, line: 1542, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !133, line: 1538, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !133, line: 1538, size: 192, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1537, file: !133, line: 1538, baseType: !1540, size: 192)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !133, line: 1537, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !133, line: 1537, size: 192, elements: !1542)
!1542 = !{!1543, !1544, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1541, file: !133, line: 1537, baseType: !5, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1541, file: !133, line: 1537, baseType: !5, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1541, file: !133, line: 1537, baseType: !1546, size: 128, offset: 64)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1547, size: 128, elements: !505)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !133, line: 1535, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !133, line: 1532, size: 128, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1548, file: !133, line: 1533, baseType: !406, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1548, file: !133, line: 1534, baseType: !406, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !409, file: !133, line: 3403, baseType: !1553, size: 512)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !133, line: 1938, size: 512, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1558, !1564, !1565, !1566}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1553, file: !133, line: 1939, baseType: !445, size: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1553, file: !133, line: 1940, baseType: !531, size: 32, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1553, file: !133, line: 1941, baseType: !356, size: 32, offset: 224)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1553, file: !133, line: 1946, baseType: !1559, size: 32, offset: 256)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !133, line: 1942, size: 32, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1559, file: !133, line: 1943, baseType: !374, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1559, file: !133, line: 1944, baseType: !381, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1559, file: !133, line: 1945, baseType: !132, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1553, file: !133, line: 1950, baseType: !718, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1553, file: !133, line: 1951, baseType: !718, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1553, file: !133, line: 1953, baseType: !783, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !409, file: !133, line: 3404, baseType: !1568, size: 1664)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !133, line: 3337, size: 1664, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1568, file: !133, line: 3338, baseType: !445, size: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1568, file: !133, line: 3341, baseType: !1572, size: 1472, offset: 192)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1573, line: 410, size: 1472, elements: !1574)
!1573 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1572, file: !1573, line: 412, baseType: !397, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1572, file: !1573, line: 413, baseType: !397, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1572, file: !1573, line: 414, baseType: !397, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1572, file: !1573, line: 415, baseType: !397, size: 32, offset: 96)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1572, file: !1573, line: 416, baseType: !397, size: 32, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1572, file: !1573, line: 417, baseType: !397, size: 32, offset: 160)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1572, file: !1573, line: 418, baseType: !396, size: 8, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1572, file: !1573, line: 419, baseType: !396, size: 8, offset: 200)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1572, file: !1573, line: 420, baseType: !1584, size: 8, offset: 208)
!1584 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1572, file: !1573, line: 421, baseType: !1584, size: 8, offset: 216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1572, file: !1573, line: 422, baseType: !1584, size: 8, offset: 224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1572, file: !1573, line: 423, baseType: !1584, size: 8, offset: 232)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1572, file: !1573, line: 424, baseType: !1584, size: 8, offset: 240)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1572, file: !1573, line: 425, baseType: !1584, size: 8, offset: 248)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1572, file: !1573, line: 426, baseType: !1584, size: 8, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1572, file: !1573, line: 427, baseType: !1584, size: 8, offset: 264)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1572, file: !1573, line: 428, baseType: !1584, size: 8, offset: 272)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1572, file: !1573, line: 429, baseType: !1584, size: 8, offset: 280)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1572, file: !1573, line: 430, baseType: !1584, size: 8, offset: 288)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1572, file: !1573, line: 431, baseType: !1584, size: 8, offset: 296)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1572, file: !1573, line: 432, baseType: !1584, size: 8, offset: 304)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1572, file: !1573, line: 433, baseType: !1584, size: 8, offset: 312)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1572, file: !1573, line: 434, baseType: !1584, size: 8, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1572, file: !1573, line: 435, baseType: !1584, size: 8, offset: 328)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1572, file: !1573, line: 436, baseType: !1584, size: 8, offset: 336)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1572, file: !1573, line: 437, baseType: !1584, size: 8, offset: 344)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1572, file: !1573, line: 438, baseType: !1584, size: 8, offset: 352)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1572, file: !1573, line: 439, baseType: !1584, size: 8, offset: 360)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1572, file: !1573, line: 440, baseType: !1584, size: 8, offset: 368)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1572, file: !1573, line: 441, baseType: !1584, size: 8, offset: 376)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1572, file: !1573, line: 442, baseType: !1584, size: 8, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1572, file: !1573, line: 443, baseType: !1584, size: 8, offset: 392)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1572, file: !1573, line: 444, baseType: !1584, size: 8, offset: 400)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1572, file: !1573, line: 445, baseType: !1584, size: 8, offset: 408)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1572, file: !1573, line: 446, baseType: !1584, size: 8, offset: 416)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1572, file: !1573, line: 447, baseType: !1584, size: 8, offset: 424)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1572, file: !1573, line: 448, baseType: !1584, size: 8, offset: 432)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1572, file: !1573, line: 449, baseType: !1584, size: 8, offset: 440)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1572, file: !1573, line: 450, baseType: !1584, size: 8, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1572, file: !1573, line: 451, baseType: !1584, size: 8, offset: 456)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1572, file: !1573, line: 452, baseType: !1584, size: 8, offset: 464)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1572, file: !1573, line: 453, baseType: !1584, size: 8, offset: 472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1572, file: !1573, line: 454, baseType: !1584, size: 8, offset: 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1572, file: !1573, line: 455, baseType: !1584, size: 8, offset: 488)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1572, file: !1573, line: 456, baseType: !1584, size: 8, offset: 496)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1572, file: !1573, line: 457, baseType: !1584, size: 8, offset: 504)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1572, file: !1573, line: 458, baseType: !1584, size: 8, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1572, file: !1573, line: 459, baseType: !1584, size: 8, offset: 520)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1572, file: !1573, line: 460, baseType: !1584, size: 8, offset: 528)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1572, file: !1573, line: 461, baseType: !1584, size: 8, offset: 536)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1572, file: !1573, line: 462, baseType: !1584, size: 8, offset: 544)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1572, file: !1573, line: 463, baseType: !1584, size: 8, offset: 552)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1572, file: !1573, line: 464, baseType: !1584, size: 8, offset: 560)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1572, file: !1573, line: 465, baseType: !1584, size: 8, offset: 568)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1572, file: !1573, line: 466, baseType: !1584, size: 8, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1572, file: !1573, line: 467, baseType: !1584, size: 8, offset: 584)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1572, file: !1573, line: 468, baseType: !1584, size: 8, offset: 592)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1572, file: !1573, line: 469, baseType: !1584, size: 8, offset: 600)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1572, file: !1573, line: 470, baseType: !1584, size: 8, offset: 608)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1572, file: !1573, line: 471, baseType: !1584, size: 8, offset: 616)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1572, file: !1573, line: 472, baseType: !1584, size: 8, offset: 624)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1572, file: !1573, line: 473, baseType: !1584, size: 8, offset: 632)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1572, file: !1573, line: 474, baseType: !1584, size: 8, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1572, file: !1573, line: 475, baseType: !1584, size: 8, offset: 648)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1572, file: !1573, line: 476, baseType: !1584, size: 8, offset: 656)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1572, file: !1573, line: 477, baseType: !1584, size: 8, offset: 664)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1572, file: !1573, line: 478, baseType: !1584, size: 8, offset: 672)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1572, file: !1573, line: 479, baseType: !1584, size: 8, offset: 680)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1572, file: !1573, line: 480, baseType: !1584, size: 8, offset: 688)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1572, file: !1573, line: 481, baseType: !1584, size: 8, offset: 696)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1572, file: !1573, line: 482, baseType: !1584, size: 8, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1572, file: !1573, line: 483, baseType: !1584, size: 8, offset: 712)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1572, file: !1573, line: 484, baseType: !1584, size: 8, offset: 720)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1572, file: !1573, line: 485, baseType: !1584, size: 8, offset: 728)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1572, file: !1573, line: 486, baseType: !1584, size: 8, offset: 736)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1572, file: !1573, line: 487, baseType: !1584, size: 8, offset: 744)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1572, file: !1573, line: 488, baseType: !1584, size: 8, offset: 752)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1572, file: !1573, line: 489, baseType: !1584, size: 8, offset: 760)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1572, file: !1573, line: 490, baseType: !1584, size: 8, offset: 768)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1572, file: !1573, line: 491, baseType: !1584, size: 8, offset: 776)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1572, file: !1573, line: 492, baseType: !1584, size: 8, offset: 784)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1572, file: !1573, line: 493, baseType: !1584, size: 8, offset: 792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1572, file: !1573, line: 494, baseType: !1584, size: 8, offset: 800)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1572, file: !1573, line: 495, baseType: !1584, size: 8, offset: 808)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1572, file: !1573, line: 496, baseType: !1584, size: 8, offset: 816)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1572, file: !1573, line: 497, baseType: !1584, size: 8, offset: 824)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1572, file: !1573, line: 498, baseType: !1584, size: 8, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1572, file: !1573, line: 499, baseType: !1584, size: 8, offset: 840)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1572, file: !1573, line: 500, baseType: !1584, size: 8, offset: 848)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1572, file: !1573, line: 501, baseType: !1584, size: 8, offset: 856)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1572, file: !1573, line: 502, baseType: !1584, size: 8, offset: 864)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1572, file: !1573, line: 503, baseType: !1584, size: 8, offset: 872)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1572, file: !1573, line: 504, baseType: !1584, size: 8, offset: 880)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1572, file: !1573, line: 505, baseType: !1584, size: 8, offset: 888)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1572, file: !1573, line: 506, baseType: !1584, size: 8, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1572, file: !1573, line: 507, baseType: !1584, size: 8, offset: 904)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1572, file: !1573, line: 508, baseType: !1584, size: 8, offset: 912)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1572, file: !1573, line: 509, baseType: !1584, size: 8, offset: 920)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1572, file: !1573, line: 510, baseType: !1584, size: 8, offset: 928)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1572, file: !1573, line: 511, baseType: !1584, size: 8, offset: 936)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1572, file: !1573, line: 512, baseType: !1584, size: 8, offset: 944)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1572, file: !1573, line: 513, baseType: !1584, size: 8, offset: 952)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1572, file: !1573, line: 514, baseType: !1584, size: 8, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1572, file: !1573, line: 515, baseType: !1584, size: 8, offset: 968)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1572, file: !1573, line: 516, baseType: !1584, size: 8, offset: 976)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1572, file: !1573, line: 517, baseType: !1584, size: 8, offset: 984)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1572, file: !1573, line: 518, baseType: !1584, size: 8, offset: 992)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1572, file: !1573, line: 519, baseType: !1584, size: 8, offset: 1000)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1572, file: !1573, line: 520, baseType: !1584, size: 8, offset: 1008)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1572, file: !1573, line: 521, baseType: !1584, size: 8, offset: 1016)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1572, file: !1573, line: 522, baseType: !1584, size: 8, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1572, file: !1573, line: 523, baseType: !1584, size: 8, offset: 1032)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1572, file: !1573, line: 524, baseType: !1584, size: 8, offset: 1040)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1572, file: !1573, line: 525, baseType: !1584, size: 8, offset: 1048)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1572, file: !1573, line: 526, baseType: !1584, size: 8, offset: 1056)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1572, file: !1573, line: 527, baseType: !1584, size: 8, offset: 1064)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1572, file: !1573, line: 528, baseType: !1584, size: 8, offset: 1072)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1572, file: !1573, line: 529, baseType: !1584, size: 8, offset: 1080)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1572, file: !1573, line: 530, baseType: !1584, size: 8, offset: 1088)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1572, file: !1573, line: 531, baseType: !1584, size: 8, offset: 1096)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1572, file: !1573, line: 532, baseType: !1584, size: 8, offset: 1104)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1572, file: !1573, line: 533, baseType: !1584, size: 8, offset: 1112)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1572, file: !1573, line: 534, baseType: !1584, size: 8, offset: 1120)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1572, file: !1573, line: 535, baseType: !1584, size: 8, offset: 1128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1572, file: !1573, line: 536, baseType: !1584, size: 8, offset: 1136)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1572, file: !1573, line: 537, baseType: !1584, size: 8, offset: 1144)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1572, file: !1573, line: 538, baseType: !1584, size: 8, offset: 1152)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1572, file: !1573, line: 539, baseType: !1584, size: 8, offset: 1160)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1572, file: !1573, line: 540, baseType: !1584, size: 8, offset: 1168)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1572, file: !1573, line: 541, baseType: !1584, size: 8, offset: 1176)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1572, file: !1573, line: 542, baseType: !1584, size: 8, offset: 1184)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1572, file: !1573, line: 543, baseType: !1584, size: 8, offset: 1192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1572, file: !1573, line: 544, baseType: !1584, size: 8, offset: 1200)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1572, file: !1573, line: 545, baseType: !1584, size: 8, offset: 1208)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1572, file: !1573, line: 546, baseType: !1584, size: 8, offset: 1216)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1572, file: !1573, line: 547, baseType: !1584, size: 8, offset: 1224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1572, file: !1573, line: 548, baseType: !1584, size: 8, offset: 1232)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1572, file: !1573, line: 549, baseType: !1584, size: 8, offset: 1240)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1572, file: !1573, line: 550, baseType: !1584, size: 8, offset: 1248)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1572, file: !1573, line: 551, baseType: !1584, size: 8, offset: 1256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1572, file: !1573, line: 552, baseType: !1584, size: 8, offset: 1264)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1572, file: !1573, line: 553, baseType: !1584, size: 8, offset: 1272)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1572, file: !1573, line: 554, baseType: !1584, size: 8, offset: 1280)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1572, file: !1573, line: 555, baseType: !1584, size: 8, offset: 1288)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1572, file: !1573, line: 556, baseType: !1584, size: 8, offset: 1296)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1572, file: !1573, line: 557, baseType: !1584, size: 8, offset: 1304)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1572, file: !1573, line: 558, baseType: !1584, size: 8, offset: 1312)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1572, file: !1573, line: 559, baseType: !1584, size: 8, offset: 1320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1572, file: !1573, line: 560, baseType: !1584, size: 8, offset: 1328)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1572, file: !1573, line: 561, baseType: !1584, size: 8, offset: 1336)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1572, file: !1573, line: 562, baseType: !1584, size: 8, offset: 1344)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1572, file: !1573, line: 563, baseType: !1584, size: 8, offset: 1352)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1572, file: !1573, line: 564, baseType: !1584, size: 8, offset: 1360)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1572, file: !1573, line: 565, baseType: !1584, size: 8, offset: 1368)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1572, file: !1573, line: 566, baseType: !1584, size: 8, offset: 1376)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1572, file: !1573, line: 567, baseType: !1584, size: 8, offset: 1384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1572, file: !1573, line: 568, baseType: !1584, size: 8, offset: 1392)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1572, file: !1573, line: 569, baseType: !1584, size: 8, offset: 1400)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1572, file: !1573, line: 570, baseType: !1584, size: 8, offset: 1408)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1572, file: !1573, line: 571, baseType: !1584, size: 8, offset: 1416)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1572, file: !1573, line: 572, baseType: !1584, size: 8, offset: 1424)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1572, file: !1573, line: 573, baseType: !1584, size: 8, offset: 1432)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1572, file: !1573, line: 574, baseType: !1584, size: 8, offset: 1440)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !409, file: !133, line: 3405, baseType: !1740, size: 384)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !133, line: 3352, size: 384, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1740, file: !133, line: 3353, baseType: !445, size: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1740, file: !133, line: 3356, baseType: !1744, size: 192, offset: 192)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1573, line: 578, size: 192, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1744, file: !1573, line: 580, baseType: !397, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1744, file: !1573, line: 581, baseType: !397, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1744, file: !1573, line: 582, baseType: !397, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1744, file: !1573, line: 583, baseType: !397, size: 32, offset: 96)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1744, file: !1573, line: 584, baseType: !396, size: 8, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1744, file: !1573, line: 585, baseType: !396, size: 8, offset: 136)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1744, file: !1573, line: 586, baseType: !396, size: 8, offset: 144)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1744, file: !1573, line: 587, baseType: !396, size: 8, offset: 152)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1744, file: !1573, line: 588, baseType: !396, size: 8, offset: 160)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1744, file: !1573, line: 589, baseType: !396, size: 8, offset: 168)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1744, file: !1573, line: 590, baseType: !396, size: 8, offset: 176)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!1759 = !{i32 2, !"Dwarf Version", i32 4}
!1760 = !{i32 2, !"Debug Info Version", i32 3}
!1761 = !{i32 1, !"wchar_size", i32 4}
!1762 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1763 = distinct !DISubprogram(name: "vprintf", scope: !1764, file: !1764, line: 39, type: !1765, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1775)
!1764 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!397, !1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1769, file: !1, baseType: !5, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1769, file: !1, baseType: !5, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1769, file: !1, baseType: !401, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1769, file: !1, baseType: !401, size: 64, offset: 128)
!1775 = !{!1776, !1777}
!1776 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1763, file: !1764, line: 39, type: !1767)
!1777 = !DILocalVariable(name: "__arg", arg: 2, scope: !1763, file: !1764, line: 39, type: !1768)
!1778 = !DILocation(line: 0, scope: !1763)
!1779 = !DILocation(line: 41, column: 20, scope: !1763)
!1780 = !DILocation(line: 41, column: 10, scope: !1763)
!1781 = !DILocation(line: 41, column: 3, scope: !1763)
!1782 = distinct !DISubprogram(name: "getchar", scope: !1764, file: !1764, line: 47, type: !1783, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1785)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!397}
!1785 = !{}
!1786 = !DILocation(line: 49, column: 16, scope: !1782)
!1787 = !DILocation(line: 49, column: 10, scope: !1782)
!1788 = !DILocation(line: 49, column: 3, scope: !1782)
!1789 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1764, file: !1764, line: 56, type: !1790, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1843)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!397, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1794, line: 7, baseType: !1795)
!1794 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1796, line: 49, size: 1728, elements: !1797)
!1796 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1813, !1815, !1816, !1817, !1820, !1822, !1823, !1824, !1827, !1829, !1832, !1835, !1836, !1837, !1838, !1839}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1795, file: !1796, line: 51, baseType: !397, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1795, file: !1796, line: 54, baseType: !399, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1795, file: !1796, line: 55, baseType: !399, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1795, file: !1796, line: 56, baseType: !399, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1795, file: !1796, line: 57, baseType: !399, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1795, file: !1796, line: 58, baseType: !399, size: 64, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1795, file: !1796, line: 59, baseType: !399, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1795, file: !1796, line: 60, baseType: !399, size: 64, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1795, file: !1796, line: 61, baseType: !399, size: 64, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1795, file: !1796, line: 64, baseType: !399, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1795, file: !1796, line: 65, baseType: !399, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1795, file: !1796, line: 66, baseType: !399, size: 64, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1795, file: !1796, line: 68, baseType: !1811, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1796, line: 36, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1795, file: !1796, line: 70, baseType: !1814, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1795, file: !1796, line: 72, baseType: !397, size: 32, offset: 896)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1795, file: !1796, line: 73, baseType: !397, size: 32, offset: 928)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1795, file: !1796, line: 74, baseType: !1818, size: 64, offset: 960)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1819, line: 152, baseType: !462)
!1819 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1795, file: !1796, line: 77, baseType: !1821, size: 16, offset: 1024)
!1821 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1795, file: !1796, line: 78, baseType: !1584, size: 8, offset: 1040)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1795, file: !1796, line: 79, baseType: !504, size: 8, offset: 1048)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1795, file: !1796, line: 81, baseType: !1825, size: 64, offset: 1088)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1796, line: 43, baseType: null)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1795, file: !1796, line: 89, baseType: !1828, size: 64, offset: 1152)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1819, line: 153, baseType: !462)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1795, file: !1796, line: 91, baseType: !1830, size: 64, offset: 1216)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1796, line: 37, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1795, file: !1796, line: 92, baseType: !1833, size: 64, offset: 1280)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1796, line: 38, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1795, file: !1796, line: 93, baseType: !1814, size: 64, offset: 1344)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1795, file: !1796, line: 94, baseType: !401, size: 64, offset: 1408)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1795, file: !1796, line: 95, baseType: !875, size: 64, offset: 1472)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1795, file: !1796, line: 96, baseType: !397, size: 32, offset: 1536)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1795, file: !1796, line: 98, baseType: !1840, size: 160, offset: 1568)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 160, elements: !1841)
!1841 = !{!1842}
!1842 = !DISubrange(count: 20)
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "__fp", arg: 1, scope: !1789, file: !1764, line: 56, type: !1792)
!1845 = !DILocation(line: 0, scope: !1789)
!1846 = !DILocation(line: 58, column: 10, scope: !1789)
!1847 = !DILocation(line: 58, column: 3, scope: !1789)
!1848 = distinct !DISubprogram(name: "getc_unlocked", scope: !1764, file: !1764, line: 66, type: !1790, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1849)
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "__fp", arg: 1, scope: !1848, file: !1764, line: 66, type: !1792)
!1851 = !DILocation(line: 0, scope: !1848)
!1852 = !DILocation(line: 68, column: 10, scope: !1848)
!1853 = !DILocation(line: 68, column: 3, scope: !1848)
!1854 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1764, file: !1764, line: 73, type: !1783, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1785)
!1855 = !DILocation(line: 75, column: 10, scope: !1854)
!1856 = !DILocation(line: 75, column: 3, scope: !1854)
!1857 = distinct !DISubprogram(name: "putchar", scope: !1764, file: !1764, line: 82, type: !1858, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!397, !397}
!1860 = !{!1861}
!1861 = !DILocalVariable(name: "__c", arg: 1, scope: !1857, file: !1764, line: 82, type: !397)
!1862 = !DILocation(line: 0, scope: !1857)
!1863 = !DILocation(line: 84, column: 21, scope: !1857)
!1864 = !DILocation(line: 84, column: 10, scope: !1857)
!1865 = !DILocation(line: 84, column: 3, scope: !1857)
!1866 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1764, file: !1764, line: 91, type: !1867, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!397, !397, !1792}
!1869 = !{!1870, !1871}
!1870 = !DILocalVariable(name: "__c", arg: 1, scope: !1866, file: !1764, line: 91, type: !397)
!1871 = !DILocalVariable(name: "__stream", arg: 2, scope: !1866, file: !1764, line: 91, type: !1792)
!1872 = !DILocation(line: 0, scope: !1866)
!1873 = !DILocation(line: 93, column: 10, scope: !1866)
!1874 = !DILocation(line: 93, column: 3, scope: !1866)
!1875 = distinct !DISubprogram(name: "putc_unlocked", scope: !1764, file: !1764, line: 101, type: !1867, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1876)
!1876 = !{!1877, !1878}
!1877 = !DILocalVariable(name: "__c", arg: 1, scope: !1875, file: !1764, line: 101, type: !397)
!1878 = !DILocalVariable(name: "__stream", arg: 2, scope: !1875, file: !1764, line: 101, type: !1792)
!1879 = !DILocation(line: 0, scope: !1875)
!1880 = !DILocation(line: 103, column: 10, scope: !1875)
!1881 = !DILocation(line: 103, column: 3, scope: !1875)
!1882 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1764, file: !1764, line: 108, type: !1858, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1883)
!1883 = !{!1884}
!1884 = !DILocalVariable(name: "__c", arg: 1, scope: !1882, file: !1764, line: 108, type: !397)
!1885 = !DILocation(line: 0, scope: !1882)
!1886 = !DILocation(line: 110, column: 10, scope: !1882)
!1887 = !DILocation(line: 110, column: 3, scope: !1882)
!1888 = distinct !DISubprogram(name: "getline", scope: !1764, file: !1764, line: 118, type: !1889, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1893)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!1891, !398, !1892, !1792}
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1819, line: 193, baseType: !462)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!1893 = !{!1894, !1895, !1896}
!1894 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1888, file: !1764, line: 118, type: !398)
!1895 = !DILocalVariable(name: "__n", arg: 2, scope: !1888, file: !1764, line: 118, type: !1892)
!1896 = !DILocalVariable(name: "__stream", arg: 3, scope: !1888, file: !1764, line: 118, type: !1792)
!1897 = !DILocation(line: 0, scope: !1888)
!1898 = !DILocation(line: 120, column: 10, scope: !1888)
!1899 = !DILocation(line: 120, column: 3, scope: !1888)
!1900 = distinct !DISubprogram(name: "feof_unlocked", scope: !1764, file: !1764, line: 128, type: !1790, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1901)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "__stream", arg: 1, scope: !1900, file: !1764, line: 128, type: !1792)
!1903 = !DILocation(line: 0, scope: !1900)
!1904 = !DILocation(line: 130, column: 10, scope: !1900)
!1905 = !DILocation(line: 130, column: 3, scope: !1900)
!1906 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1764, file: !1764, line: 135, type: !1790, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1907)
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "__stream", arg: 1, scope: !1906, file: !1764, line: 135, type: !1792)
!1909 = !DILocation(line: 0, scope: !1906)
!1910 = !DILocation(line: 137, column: 10, scope: !1906)
!1911 = !DILocation(line: 137, column: 3, scope: !1906)
!1912 = distinct !DISubprogram(name: "tolower", scope: !1913, file: !1913, line: 207, type: !1858, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1914)
!1913 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1914 = !{!1915}
!1915 = !DILocalVariable(name: "__c", arg: 1, scope: !1912, file: !1913, line: 207, type: !397)
!1916 = !DILocation(line: 0, scope: !1912)
!1917 = !DILocation(line: 209, column: 22, scope: !1912)
!1918 = !DILocation(line: 209, column: 39, scope: !1912)
!1919 = !DILocation(line: 209, column: 38, scope: !1912)
!1920 = !DILocation(line: 209, column: 37, scope: !1912)
!1921 = !DILocation(line: 209, column: 10, scope: !1912)
!1922 = !DILocation(line: 209, column: 3, scope: !1912)
!1923 = distinct !DISubprogram(name: "toupper", scope: !1913, file: !1913, line: 213, type: !1858, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1924)
!1924 = !{!1925}
!1925 = !DILocalVariable(name: "__c", arg: 1, scope: !1923, file: !1913, line: 213, type: !397)
!1926 = !DILocation(line: 0, scope: !1923)
!1927 = !DILocation(line: 215, column: 22, scope: !1923)
!1928 = !DILocation(line: 215, column: 39, scope: !1923)
!1929 = !DILocation(line: 215, column: 38, scope: !1923)
!1930 = !DILocation(line: 215, column: 37, scope: !1923)
!1931 = !DILocation(line: 215, column: 10, scope: !1923)
!1932 = !DILocation(line: 215, column: 3, scope: !1923)
!1933 = distinct !DISubprogram(name: "atoi", scope: !1934, file: !1934, line: 361, type: !1935, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1937)
!1934 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!397, !402}
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1933, file: !1934, line: 361, type: !402)
!1939 = !DILocation(line: 0, scope: !1933)
!1940 = !DILocation(line: 363, column: 16, scope: !1933)
!1941 = !DILocation(line: 363, column: 10, scope: !1933)
!1942 = !DILocation(line: 363, column: 3, scope: !1933)
!1943 = distinct !DISubprogram(name: "atol", scope: !1934, file: !1934, line: 366, type: !1944, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!462, !402}
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1943, file: !1934, line: 366, type: !402)
!1948 = !DILocation(line: 0, scope: !1943)
!1949 = !DILocation(line: 368, column: 10, scope: !1943)
!1950 = !DILocation(line: 368, column: 3, scope: !1943)
!1951 = distinct !DISubprogram(name: "atoll", scope: !1934, file: !1934, line: 373, type: !1952, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1955)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !402}
!1954 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1951, file: !1934, line: 373, type: !402)
!1957 = !DILocation(line: 0, scope: !1951)
!1958 = !DILocation(line: 375, column: 10, scope: !1951)
!1959 = !DILocation(line: 375, column: 3, scope: !1951)
!1960 = distinct !DISubprogram(name: "bsearch", scope: !1961, file: !1961, line: 20, type: !1962, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1965)
!1961 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!401, !1224, !1224, !875, !875, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1934, line: 808, baseType: !1228)
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1966 = !DILocalVariable(name: "__key", arg: 1, scope: !1960, file: !1961, line: 20, type: !1224)
!1967 = !DILocalVariable(name: "__base", arg: 2, scope: !1960, file: !1961, line: 20, type: !1224)
!1968 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1960, file: !1961, line: 20, type: !875)
!1969 = !DILocalVariable(name: "__size", arg: 4, scope: !1960, file: !1961, line: 20, type: !875)
!1970 = !DILocalVariable(name: "__compar", arg: 5, scope: !1960, file: !1961, line: 21, type: !1964)
!1971 = !DILocalVariable(name: "__l", scope: !1960, file: !1961, line: 23, type: !875)
!1972 = !DILocalVariable(name: "__u", scope: !1960, file: !1961, line: 23, type: !875)
!1973 = !DILocalVariable(name: "__idx", scope: !1960, file: !1961, line: 23, type: !875)
!1974 = !DILocalVariable(name: "__p", scope: !1960, file: !1961, line: 24, type: !1224)
!1975 = !DILocalVariable(name: "__comparison", scope: !1960, file: !1961, line: 25, type: !397)
!1976 = !DILocation(line: 0, scope: !1960)
!1977 = !DILocation(line: 29, column: 3, scope: !1960)
!1978 = !DILocation(line: 27, column: 7, scope: !1960)
!1979 = !DILocation(line: 29, column: 14, scope: !1960)
!1980 = !DILocation(line: 31, column: 20, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1960, file: !1961, line: 30, column: 5)
!1982 = !DILocation(line: 31, column: 27, scope: !1981)
!1983 = !DILocation(line: 32, column: 56, scope: !1981)
!1984 = !DILocation(line: 32, column: 47, scope: !1981)
!1985 = !DILocation(line: 33, column: 22, scope: !1981)
!1986 = !DILocation(line: 34, column: 24, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !1961, line: 34, column: 11)
!1988 = !DILocation(line: 34, column: 11, scope: !1981)
!1989 = !DILocation(line: 36, column: 29, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !1961, line: 36, column: 16)
!1991 = !DILocation(line: 36, column: 16, scope: !1987)
!1992 = !DILocation(line: 37, column: 14, scope: !1990)
!1993 = distinct !{!1993, !1977, !1994}
!1994 = !DILocation(line: 40, column: 5, scope: !1960)
!1995 = !DILocation(line: 43, column: 1, scope: !1960)
!1996 = distinct !DISubprogram(name: "atof", scope: !1997, file: !1997, line: 25, type: !1998, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2001)
!1997 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!2000, !402}
!2000 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2001 = !{!2002}
!2002 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1996, file: !1997, line: 25, type: !402)
!2003 = !DILocation(line: 0, scope: !1996)
!2004 = !DILocation(line: 27, column: 10, scope: !1996)
!2005 = !DILocation(line: 27, column: 3, scope: !1996)
!2006 = distinct !DISubprogram(name: "strtoimax", scope: !2007, file: !2007, line: 324, type: !2008, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2014)
!2007 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!2010, !1767, !2013, !397}
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2011, line: 101, baseType: !2012)
!2011 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1819, line: 72, baseType: !462)
!2013 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !398)
!2014 = !{!2015, !2016, !2017}
!2015 = !DILocalVariable(name: "nptr", arg: 1, scope: !2006, file: !2007, line: 324, type: !1767)
!2016 = !DILocalVariable(name: "endptr", arg: 2, scope: !2006, file: !2007, line: 324, type: !2013)
!2017 = !DILocalVariable(name: "base", arg: 3, scope: !2006, file: !2007, line: 324, type: !397)
!2018 = !DILocation(line: 0, scope: !2006)
!2019 = !DILocation(line: 327, column: 10, scope: !2006)
!2020 = !DILocation(line: 327, column: 3, scope: !2006)
!2021 = distinct !DISubprogram(name: "strtoumax", scope: !2007, file: !2007, line: 336, type: !2022, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2026)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!2024, !1767, !2013, !397}
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2011, line: 102, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1819, line: 73, baseType: !460)
!2026 = !{!2027, !2028, !2029}
!2027 = !DILocalVariable(name: "nptr", arg: 1, scope: !2021, file: !2007, line: 336, type: !1767)
!2028 = !DILocalVariable(name: "endptr", arg: 2, scope: !2021, file: !2007, line: 336, type: !2013)
!2029 = !DILocalVariable(name: "base", arg: 3, scope: !2021, file: !2007, line: 336, type: !397)
!2030 = !DILocation(line: 0, scope: !2021)
!2031 = !DILocation(line: 339, column: 10, scope: !2021)
!2032 = !DILocation(line: 339, column: 3, scope: !2021)
!2033 = distinct !DISubprogram(name: "wcstoimax", scope: !2007, file: !2007, line: 348, type: !2034, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2043)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!2010, !2036, !2040, !397}
!2036 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2037)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2007, line: 34, baseType: !397)
!2040 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2043 = !{!2044, !2045, !2046}
!2044 = !DILocalVariable(name: "nptr", arg: 1, scope: !2033, file: !2007, line: 348, type: !2036)
!2045 = !DILocalVariable(name: "endptr", arg: 2, scope: !2033, file: !2007, line: 348, type: !2040)
!2046 = !DILocalVariable(name: "base", arg: 3, scope: !2033, file: !2007, line: 348, type: !397)
!2047 = !DILocation(line: 0, scope: !2033)
!2048 = !DILocation(line: 351, column: 10, scope: !2033)
!2049 = !DILocation(line: 351, column: 3, scope: !2033)
!2050 = distinct !DISubprogram(name: "wcstoumax", scope: !2007, file: !2007, line: 362, type: !2051, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!2024, !2036, !2040, !397}
!2053 = !{!2054, !2055, !2056}
!2054 = !DILocalVariable(name: "nptr", arg: 1, scope: !2050, file: !2007, line: 362, type: !2036)
!2055 = !DILocalVariable(name: "endptr", arg: 2, scope: !2050, file: !2007, line: 362, type: !2040)
!2056 = !DILocalVariable(name: "base", arg: 3, scope: !2050, file: !2007, line: 362, type: !397)
!2057 = !DILocation(line: 0, scope: !2050)
!2058 = !DILocation(line: 365, column: 10, scope: !2050)
!2059 = !DILocation(line: 365, column: 3, scope: !2050)
!2060 = distinct !DISubprogram(name: "stat", scope: !2061, file: !2061, line: 453, type: !2062, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2099)
!2061 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!397, !402, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2066, line: 46, size: 1152, elements: !2067)
!2066 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2067 = !{!2068, !2070, !2072, !2074, !2076, !2078, !2080, !2081, !2082, !2083, !2085, !2087, !2095, !2096, !2097}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2065, file: !2066, line: 48, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1819, line: 145, baseType: !460)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2065, file: !2066, line: 53, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1819, line: 148, baseType: !460)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2065, file: !2066, line: 61, baseType: !2073, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1819, line: 151, baseType: !460)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2065, file: !2066, line: 62, baseType: !2075, size: 32, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1819, line: 150, baseType: !5)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2065, file: !2066, line: 64, baseType: !2077, size: 32, offset: 224)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1819, line: 146, baseType: !5)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2065, file: !2066, line: 65, baseType: !2079, size: 32, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1819, line: 147, baseType: !5)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2065, file: !2066, line: 67, baseType: !397, size: 32, offset: 288)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2065, file: !2066, line: 69, baseType: !2069, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2065, file: !2066, line: 74, baseType: !1818, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2065, file: !2066, line: 78, baseType: !2084, size: 64, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1819, line: 174, baseType: !462)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2065, file: !2066, line: 80, baseType: !2086, size: 64, offset: 512)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1819, line: 179, baseType: !462)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2065, file: !2066, line: 91, baseType: !2088, size: 128, offset: 576)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2089, line: 10, size: 128, elements: !2090)
!2089 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2090 = !{!2091, !2093}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2088, file: !2089, line: 12, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1819, line: 160, baseType: !462)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2088, file: !2089, line: 16, baseType: !2094, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1819, line: 196, baseType: !462)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2065, file: !2066, line: 92, baseType: !2088, size: 128, offset: 704)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2065, file: !2066, line: 93, baseType: !2088, size: 128, offset: 832)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2065, file: !2066, line: 106, baseType: !2098, size: 192, offset: 960)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2094, size: 192, elements: !480)
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "__path", arg: 1, scope: !2060, file: !2061, line: 453, type: !402)
!2101 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2060, file: !2061, line: 453, type: !2064)
!2102 = !DILocation(line: 0, scope: !2060)
!2103 = !DILocation(line: 455, column: 10, scope: !2060)
!2104 = !DILocation(line: 455, column: 3, scope: !2060)
!2105 = distinct !DISubprogram(name: "lstat", scope: !2061, file: !2061, line: 460, type: !2062, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2106)
!2106 = !{!2107, !2108}
!2107 = !DILocalVariable(name: "__path", arg: 1, scope: !2105, file: !2061, line: 460, type: !402)
!2108 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2105, file: !2061, line: 460, type: !2064)
!2109 = !DILocation(line: 0, scope: !2105)
!2110 = !DILocation(line: 462, column: 10, scope: !2105)
!2111 = !DILocation(line: 462, column: 3, scope: !2105)
!2112 = distinct !DISubprogram(name: "fstat", scope: !2061, file: !2061, line: 467, type: !2113, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!397, !397, !2064}
!2115 = !{!2116, !2117}
!2116 = !DILocalVariable(name: "__fd", arg: 1, scope: !2112, file: !2061, line: 467, type: !397)
!2117 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2112, file: !2061, line: 467, type: !2064)
!2118 = !DILocation(line: 0, scope: !2112)
!2119 = !DILocation(line: 469, column: 10, scope: !2112)
!2120 = !DILocation(line: 469, column: 3, scope: !2112)
!2121 = distinct !DISubprogram(name: "fstatat", scope: !2061, file: !2061, line: 474, type: !2122, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!397, !397, !402, !2064, !397}
!2124 = !{!2125, !2126, !2127, !2128}
!2125 = !DILocalVariable(name: "__fd", arg: 1, scope: !2121, file: !2061, line: 474, type: !397)
!2126 = !DILocalVariable(name: "__filename", arg: 2, scope: !2121, file: !2061, line: 474, type: !402)
!2127 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2121, file: !2061, line: 474, type: !2064)
!2128 = !DILocalVariable(name: "__flag", arg: 4, scope: !2121, file: !2061, line: 474, type: !397)
!2129 = !DILocation(line: 0, scope: !2121)
!2130 = !DILocation(line: 477, column: 10, scope: !2121)
!2131 = !DILocation(line: 477, column: 3, scope: !2121)
!2132 = distinct !DISubprogram(name: "mknod", scope: !2061, file: !2061, line: 483, type: !2133, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!397, !402, !2075, !2069}
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "__path", arg: 1, scope: !2132, file: !2061, line: 483, type: !402)
!2137 = !DILocalVariable(name: "__mode", arg: 2, scope: !2132, file: !2061, line: 483, type: !2075)
!2138 = !DILocalVariable(name: "__dev", arg: 3, scope: !2132, file: !2061, line: 483, type: !2069)
!2139 = !DILocation(line: 0, scope: !2132)
!2140 = !DILocation(line: 485, column: 10, scope: !2132)
!2141 = !DILocation(line: 485, column: 3, scope: !2132)
!2142 = distinct !DISubprogram(name: "mknodat", scope: !2061, file: !2061, line: 491, type: !2143, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!397, !397, !402, !2075, !2069}
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DILocalVariable(name: "__fd", arg: 1, scope: !2142, file: !2061, line: 491, type: !397)
!2147 = !DILocalVariable(name: "__path", arg: 2, scope: !2142, file: !2061, line: 491, type: !402)
!2148 = !DILocalVariable(name: "__mode", arg: 3, scope: !2142, file: !2061, line: 491, type: !2075)
!2149 = !DILocalVariable(name: "__dev", arg: 4, scope: !2142, file: !2061, line: 491, type: !2069)
!2150 = !DILocation(line: 0, scope: !2142)
!2151 = !DILocation(line: 494, column: 10, scope: !2142)
!2152 = !DILocation(line: 494, column: 3, scope: !2142)
!2153 = distinct !DISubprogram(name: "stat64", scope: !2061, file: !2061, line: 502, type: !2154, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2176)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!397, !402, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2066, line: 119, size: 1152, elements: !2158)
!2158 = !{!2159, !2160, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2172, !2173, !2174, !2175}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2157, file: !2066, line: 121, baseType: !2069, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2157, file: !2066, line: 123, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1819, line: 149, baseType: !460)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2157, file: !2066, line: 124, baseType: !2073, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2157, file: !2066, line: 125, baseType: !2075, size: 32, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2157, file: !2066, line: 132, baseType: !2077, size: 32, offset: 224)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2157, file: !2066, line: 133, baseType: !2079, size: 32, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2157, file: !2066, line: 135, baseType: !397, size: 32, offset: 288)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2157, file: !2066, line: 136, baseType: !2069, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2157, file: !2066, line: 137, baseType: !1818, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2157, file: !2066, line: 143, baseType: !2084, size: 64, offset: 448)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2157, file: !2066, line: 144, baseType: !2171, size: 64, offset: 512)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1819, line: 180, baseType: !462)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2157, file: !2066, line: 152, baseType: !2088, size: 128, offset: 576)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2157, file: !2066, line: 153, baseType: !2088, size: 128, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2157, file: !2066, line: 154, baseType: !2088, size: 128, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2157, file: !2066, line: 164, baseType: !2098, size: 192, offset: 960)
!2176 = !{!2177, !2178}
!2177 = !DILocalVariable(name: "__path", arg: 1, scope: !2153, file: !2061, line: 502, type: !402)
!2178 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2153, file: !2061, line: 502, type: !2156)
!2179 = !DILocation(line: 0, scope: !2153)
!2180 = !DILocation(line: 504, column: 10, scope: !2153)
!2181 = !DILocation(line: 504, column: 3, scope: !2153)
!2182 = distinct !DISubprogram(name: "lstat64", scope: !2061, file: !2061, line: 509, type: !2154, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2183)
!2183 = !{!2184, !2185}
!2184 = !DILocalVariable(name: "__path", arg: 1, scope: !2182, file: !2061, line: 509, type: !402)
!2185 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2182, file: !2061, line: 509, type: !2156)
!2186 = !DILocation(line: 0, scope: !2182)
!2187 = !DILocation(line: 511, column: 10, scope: !2182)
!2188 = !DILocation(line: 511, column: 3, scope: !2182)
!2189 = distinct !DISubprogram(name: "fstat64", scope: !2061, file: !2061, line: 516, type: !2190, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!397, !397, !2156}
!2192 = !{!2193, !2194}
!2193 = !DILocalVariable(name: "__fd", arg: 1, scope: !2189, file: !2061, line: 516, type: !397)
!2194 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2189, file: !2061, line: 516, type: !2156)
!2195 = !DILocation(line: 0, scope: !2189)
!2196 = !DILocation(line: 518, column: 10, scope: !2189)
!2197 = !DILocation(line: 518, column: 3, scope: !2189)
!2198 = distinct !DISubprogram(name: "fstatat64", scope: !2061, file: !2061, line: 523, type: !2199, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!397, !397, !402, !2156, !397}
!2201 = !{!2202, !2203, !2204, !2205}
!2202 = !DILocalVariable(name: "__fd", arg: 1, scope: !2198, file: !2061, line: 523, type: !397)
!2203 = !DILocalVariable(name: "__filename", arg: 2, scope: !2198, file: !2061, line: 523, type: !402)
!2204 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2198, file: !2061, line: 523, type: !2156)
!2205 = !DILocalVariable(name: "__flag", arg: 4, scope: !2198, file: !2061, line: 523, type: !397)
!2206 = !DILocation(line: 0, scope: !2198)
!2207 = !DILocation(line: 526, column: 10, scope: !2198)
!2208 = !DILocation(line: 526, column: 3, scope: !2198)
!2209 = distinct !DISubprogram(name: "chrec_fold_plus", scope: !1, file: !1, line: 350, type: !2210, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!406, !406, !406, !406}
!2212 = !{!2213, !2214, !2215, !2216}
!2213 = !DILocalVariable(name: "type", arg: 1, scope: !2209, file: !1, line: 350, type: !406)
!2214 = !DILocalVariable(name: "op0", arg: 2, scope: !2209, file: !1, line: 351, type: !406)
!2215 = !DILocalVariable(name: "op1", arg: 3, scope: !2209, file: !1, line: 352, type: !406)
!2216 = !DILocalVariable(name: "code", scope: !2209, file: !1, line: 354, type: !132)
!2217 = !DILocation(line: 0, scope: !2209)
!2218 = !DILocation(line: 355, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 355, column: 7)
!2220 = !DILocation(line: 356, column: 7, scope: !2219)
!2221 = !DILocation(line: 356, column: 10, scope: !2219)
!2222 = !DILocation(line: 355, column: 7, scope: !2209)
!2223 = !DILocation(line: 357, column: 12, scope: !2219)
!2224 = !DILocation(line: 357, column: 5, scope: !2219)
!2225 = !DILocation(line: 359, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 359, column: 7)
!2227 = !DILocation(line: 359, column: 7, scope: !2209)
!2228 = !DILocation(line: 360, column: 12, scope: !2226)
!2229 = !DILocation(line: 360, column: 5, scope: !2226)
!2230 = !DILocation(line: 361, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 361, column: 7)
!2232 = !DILocation(line: 361, column: 7, scope: !2209)
!2233 = !DILocation(line: 362, column: 12, scope: !2231)
!2234 = !DILocation(line: 362, column: 5, scope: !2231)
!2235 = !DILocation(line: 364, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 364, column: 7)
!2237 = !DILocation(line: 364, column: 7, scope: !2209)
!2238 = !DILocation(line: 0, scope: !2236)
!2239 = !DILocation(line: 369, column: 10, scope: !2209)
!2240 = !DILocation(line: 369, column: 3, scope: !2209)
!2241 = !DILocation(line: 370, column: 1, scope: !2209)
!2242 = distinct !DISubprogram(name: "automatically_generated_chrec_p", scope: !2243, file: !2243, line: 37, type: !2244, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2247)
!2243 = !DIFile(filename: "./tree-chrec.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!396, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !407, line: 59, baseType: !1757)
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "chrec", arg: 1, scope: !2242, file: !2243, line: 37, type: !2246)
!2249 = !DILocation(line: 0, scope: !2242)
!2250 = !DILocation(line: 39, column: 20, scope: !2242)
!2251 = !DILocation(line: 39, column: 17, scope: !2242)
!2252 = !DILocation(line: 40, column: 4, scope: !2242)
!2253 = !DILocation(line: 39, column: 10, scope: !2242)
!2254 = !DILocation(line: 39, column: 3, scope: !2242)
!2255 = distinct !DISubprogram(name: "chrec_fold_automatically_generated_operands", scope: !1, file: !1, line: 247, type: !2256, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!406, !406, !406}
!2258 = !{!2259, !2260}
!2259 = !DILocalVariable(name: "op0", arg: 1, scope: !2255, file: !1, line: 247, type: !406)
!2260 = !DILocalVariable(name: "op1", arg: 2, scope: !2255, file: !1, line: 248, type: !406)
!2261 = !DILocation(line: 0, scope: !2255)
!2262 = !DILocation(line: 250, column: 14, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 250, column: 7)
!2264 = !DILocation(line: 250, column: 11, scope: !2263)
!2265 = !DILocation(line: 251, column: 14, scope: !2263)
!2266 = !DILocation(line: 251, column: 7, scope: !2263)
!2267 = !DILocation(line: 252, column: 5, scope: !2263)
!2268 = !DILocation(line: 254, column: 14, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 254, column: 7)
!2270 = !DILocation(line: 254, column: 11, scope: !2269)
!2271 = !DILocation(line: 255, column: 14, scope: !2269)
!2272 = !DILocation(line: 255, column: 7, scope: !2269)
!2273 = !DILocation(line: 256, column: 5, scope: !2269)
!2274 = !DILocation(line: 258, column: 14, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 258, column: 7)
!2276 = !DILocation(line: 258, column: 11, scope: !2275)
!2277 = !DILocation(line: 259, column: 14, scope: !2275)
!2278 = !DILocation(line: 259, column: 7, scope: !2275)
!2279 = !DILocation(line: 260, column: 5, scope: !2275)
!2280 = !DILocation(line: 263, column: 3, scope: !2255)
!2281 = !DILocation(line: 264, column: 1, scope: !2255)
!2282 = distinct !DISubprogram(name: "chrec_convert", scope: !1, file: !1, line: 1269, type: !2283, scopeLine: 1270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!406, !406, !406, !729}
!2285 = !{!2286, !2287, !2288}
!2286 = !DILocalVariable(name: "type", arg: 1, scope: !2282, file: !1, line: 1269, type: !406)
!2287 = !DILocalVariable(name: "chrec", arg: 2, scope: !2282, file: !1, line: 1269, type: !406)
!2288 = !DILocalVariable(name: "at_stmt", arg: 3, scope: !2282, file: !1, line: 1269, type: !729)
!2289 = !DILocation(line: 0, scope: !2282)
!2290 = !DILocation(line: 1271, column: 10, scope: !2282)
!2291 = !DILocation(line: 1271, column: 3, scope: !2282)
!2292 = distinct !DISubprogram(name: "chrec_fold_plus_1", scope: !1, file: !1, line: 269, type: !2293, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!406, !132, !406, !406, !406}
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301}
!2296 = !DILocalVariable(name: "code", arg: 1, scope: !2292, file: !1, line: 269, type: !132)
!2297 = !DILocalVariable(name: "type", arg: 2, scope: !2292, file: !1, line: 269, type: !406)
!2298 = !DILocalVariable(name: "op0", arg: 3, scope: !2292, file: !1, line: 270, type: !406)
!2299 = !DILocalVariable(name: "op1", arg: 4, scope: !2292, file: !1, line: 270, type: !406)
!2300 = !DILocalVariable(name: "op1_type", scope: !2292, file: !1, line: 272, type: !406)
!2301 = !DILocalVariable(name: "size", scope: !2302, file: !1, line: 331, type: !397)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 330, column: 4)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !1, line: 309, column: 2)
!2304 = distinct !DILexicalBlock(scope: !2292, file: !1, line: 279, column: 5)
!2305 = !DILocation(line: 0, scope: !2292)
!2306 = !DILocation(line: 272, column: 24, scope: !2292)
!2307 = !DILocation(line: 272, column: 19, scope: !2292)
!2308 = !DILocation(line: 274, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2292, file: !1, line: 274, column: 7)
!2310 = !DILocation(line: 275, column: 7, scope: !2309)
!2311 = !DILocation(line: 275, column: 10, scope: !2309)
!2312 = !DILocation(line: 274, column: 7, scope: !2292)
!2313 = !DILocation(line: 276, column: 12, scope: !2309)
!2314 = !DILocation(line: 276, column: 5, scope: !2309)
!2315 = !DILocation(line: 278, column: 11, scope: !2292)
!2316 = !DILocation(line: 278, column: 3, scope: !2292)
!2317 = !DILocation(line: 281, column: 15, scope: !2304)
!2318 = !DILocation(line: 281, column: 7, scope: !2304)
!2319 = !DILocation(line: 284, column: 11, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2304, file: !1, line: 282, column: 2)
!2321 = !DILocation(line: 284, column: 4, scope: !2320)
!2322 = !DILocation(line: 287, column: 8, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !1, line: 287, column: 8)
!2324 = !DILocation(line: 287, column: 8, scope: !2320)
!2325 = !DILocation(line: 288, column: 13, scope: !2323)
!2326 = !DILocation(line: 288, column: 6, scope: !2323)
!2327 = !DILocation(line: 291, column: 26, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2320, file: !1, line: 291, column: 8)
!2329 = !DILocation(line: 293, column: 9, scope: !2328)
!2330 = !DILocation(line: 294, column: 32, scope: !2328)
!2331 = !DILocation(line: 294, column: 9, scope: !2328)
!2332 = !DILocation(line: 295, column: 9, scope: !2328)
!2333 = !DILocation(line: 292, column: 13, scope: !2328)
!2334 = !DILocation(line: 292, column: 6, scope: !2328)
!2335 = !DILocation(line: 298, column: 9, scope: !2328)
!2336 = !DILocation(line: 299, column: 33, scope: !2328)
!2337 = !DILocation(line: 299, column: 9, scope: !2328)
!2338 = !DILocation(line: 300, column: 9, scope: !2328)
!2339 = !DILocation(line: 297, column: 13, scope: !2328)
!2340 = !DILocation(line: 297, column: 6, scope: !2328)
!2341 = !DILocation(line: 304, column: 11, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2304, file: !1, line: 304, column: 11)
!2343 = !DILocation(line: 304, column: 11, scope: !2304)
!2344 = !DILocation(line: 305, column: 9, scope: !2342)
!2345 = !DILocation(line: 305, column: 2, scope: !2342)
!2346 = !DILocation(line: 308, column: 15, scope: !2304)
!2347 = !DILocation(line: 308, column: 7, scope: !2304)
!2348 = !DILocation(line: 311, column: 26, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 311, column: 8)
!2350 = !DILocation(line: 313, column: 9, scope: !2349)
!2351 = !DILocation(line: 314, column: 37, scope: !2349)
!2352 = !DILocation(line: 314, column: 9, scope: !2349)
!2353 = !DILocation(line: 315, column: 9, scope: !2349)
!2354 = !DILocation(line: 312, column: 13, scope: !2349)
!2355 = !DILocation(line: 312, column: 6, scope: !2349)
!2356 = !DILocation(line: 318, column: 9, scope: !2349)
!2357 = !DILocation(line: 319, column: 38, scope: !2349)
!2358 = !DILocation(line: 319, column: 9, scope: !2349)
!2359 = !DILocation(line: 320, column: 36, scope: !2349)
!2360 = !DILocation(line: 321, column: 9, scope: !2349)
!2361 = !DILocation(line: 322, column: 11, scope: !2349)
!2362 = !DILocation(line: 323, column: 11, scope: !2349)
!2363 = !DILocation(line: 320, column: 9, scope: !2349)
!2364 = !DILocation(line: 317, column: 13, scope: !2349)
!2365 = !DILocation(line: 317, column: 6, scope: !2349)
!2366 = !DILocation(line: 326, column: 8, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 326, column: 8)
!2368 = !DILocation(line: 326, column: 8, scope: !2303)
!2369 = !DILocation(line: 327, column: 13, scope: !2367)
!2370 = !DILocation(line: 327, column: 6, scope: !2367)
!2371 = !DILocation(line: 331, column: 6, scope: !2302)
!2372 = !DILocation(line: 0, scope: !2302)
!2373 = !DILocation(line: 331, column: 10, scope: !2302)
!2374 = !DILocation(line: 332, column: 11, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 332, column: 10)
!2376 = !DILocation(line: 333, column: 4, scope: !2375)
!2377 = !DILocation(line: 333, column: 7, scope: !2375)
!2378 = !DILocation(line: 334, column: 3, scope: !2375)
!2379 = !DILocation(line: 336, column: 15, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 336, column: 15)
!2381 = !DILocation(line: 336, column: 22, scope: !2380)
!2382 = !DILocation(line: 0, scope: !2380)
!2383 = !DILocation(line: 334, column: 6, scope: !2375)
!2384 = !DILocation(line: 334, column: 13, scope: !2375)
!2385 = !DILocation(line: 334, column: 11, scope: !2375)
!2386 = !DILocation(line: 332, column: 10, scope: !2302)
!2387 = !DILocation(line: 335, column: 15, scope: !2375)
!2388 = !DILocation(line: 335, column: 8, scope: !2375)
!2389 = !DILocation(line: 336, column: 20, scope: !2380)
!2390 = !DILocation(line: 336, column: 15, scope: !2375)
!2391 = !DILocation(line: 337, column: 15, scope: !2380)
!2392 = !DILocation(line: 337, column: 8, scope: !2380)
!2393 = !DILocation(line: 341, column: 15, scope: !2380)
!2394 = !DILocation(line: 341, column: 8, scope: !2380)
!2395 = !DILocation(line: 0, scope: !2375)
!2396 = !DILocation(line: 342, column: 4, scope: !2303)
!2397 = !DILocation(line: 345, column: 1, scope: !2292)
!2398 = distinct !DISubprogram(name: "chrec_fold_minus", scope: !1, file: !1, line: 375, type: !2210, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2399)
!2399 = !{!2400, !2401, !2402}
!2400 = !DILocalVariable(name: "type", arg: 1, scope: !2398, file: !1, line: 375, type: !406)
!2401 = !DILocalVariable(name: "op0", arg: 2, scope: !2398, file: !1, line: 376, type: !406)
!2402 = !DILocalVariable(name: "op1", arg: 3, scope: !2398, file: !1, line: 377, type: !406)
!2403 = !DILocation(line: 0, scope: !2398)
!2404 = !DILocation(line: 379, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2398, file: !1, line: 379, column: 7)
!2406 = !DILocation(line: 380, column: 7, scope: !2405)
!2407 = !DILocation(line: 380, column: 10, scope: !2405)
!2408 = !DILocation(line: 379, column: 7, scope: !2398)
!2409 = !DILocation(line: 381, column: 12, scope: !2405)
!2410 = !DILocation(line: 381, column: 5, scope: !2405)
!2411 = !DILocation(line: 383, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2398, file: !1, line: 383, column: 7)
!2413 = !DILocation(line: 383, column: 7, scope: !2398)
!2414 = !DILocation(line: 386, column: 10, scope: !2398)
!2415 = !DILocation(line: 386, column: 3, scope: !2398)
!2416 = !DILocation(line: 387, column: 1, scope: !2398)
!2417 = distinct !DISubprogram(name: "chrec_fold_multiply", scope: !1, file: !1, line: 392, type: !2210, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DILocalVariable(name: "type", arg: 1, scope: !2417, file: !1, line: 392, type: !406)
!2420 = !DILocalVariable(name: "op0", arg: 2, scope: !2417, file: !1, line: 393, type: !406)
!2421 = !DILocalVariable(name: "op1", arg: 3, scope: !2417, file: !1, line: 394, type: !406)
!2422 = !DILocation(line: 0, scope: !2417)
!2423 = !DILocation(line: 396, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2417, file: !1, line: 396, column: 7)
!2425 = !DILocation(line: 397, column: 7, scope: !2424)
!2426 = !DILocation(line: 397, column: 10, scope: !2424)
!2427 = !DILocation(line: 396, column: 7, scope: !2417)
!2428 = !DILocation(line: 398, column: 12, scope: !2424)
!2429 = !DILocation(line: 398, column: 5, scope: !2424)
!2430 = !DILocation(line: 400, column: 11, scope: !2417)
!2431 = !DILocation(line: 400, column: 3, scope: !2417)
!2432 = !DILocation(line: 403, column: 15, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2417, file: !1, line: 401, column: 5)
!2434 = !DILocation(line: 403, column: 7, scope: !2433)
!2435 = !DILocation(line: 406, column: 11, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 404, column: 2)
!2437 = !DILocation(line: 406, column: 4, scope: !2436)
!2438 = !DILocation(line: 409, column: 8, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2436, file: !1, line: 409, column: 8)
!2440 = !DILocation(line: 409, column: 8, scope: !2436)
!2441 = !DILocation(line: 410, column: 13, scope: !2439)
!2442 = !DILocation(line: 410, column: 6, scope: !2439)
!2443 = !DILocation(line: 413, column: 8, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2436, file: !1, line: 413, column: 8)
!2445 = !DILocation(line: 413, column: 8, scope: !2436)
!2446 = !DILocation(line: 415, column: 8, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2436, file: !1, line: 415, column: 8)
!2448 = !DILocation(line: 415, column: 8, scope: !2436)
!2449 = !DILocation(line: 416, column: 13, scope: !2447)
!2450 = !DILocation(line: 416, column: 6, scope: !2447)
!2451 = !DILocation(line: 419, column: 7, scope: !2436)
!2452 = !DILocation(line: 420, column: 34, scope: !2436)
!2453 = !DILocation(line: 420, column: 7, scope: !2436)
!2454 = !DILocation(line: 421, column: 34, scope: !2436)
!2455 = !DILocation(line: 421, column: 7, scope: !2436)
!2456 = !DILocation(line: 418, column: 11, scope: !2436)
!2457 = !DILocation(line: 455, column: 1, scope: !2417)
!2458 = !DILocation(line: 425, column: 11, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 425, column: 11)
!2460 = !DILocation(line: 425, column: 11, scope: !2433)
!2461 = !DILocation(line: 426, column: 9, scope: !2459)
!2462 = !DILocation(line: 426, column: 2, scope: !2459)
!2463 = !DILocation(line: 429, column: 11, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 429, column: 11)
!2465 = !DILocation(line: 429, column: 11, scope: !2433)
!2466 = !DILocation(line: 432, column: 11, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 432, column: 11)
!2468 = !DILocation(line: 432, column: 11, scope: !2433)
!2469 = !DILocation(line: 433, column: 13, scope: !2467)
!2470 = !DILocation(line: 433, column: 6, scope: !2467)
!2471 = !DILocation(line: 435, column: 15, scope: !2433)
!2472 = !DILocation(line: 435, column: 7, scope: !2433)
!2473 = !DILocation(line: 439, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 436, column: 2)
!2475 = !DILocation(line: 440, column: 34, scope: !2474)
!2476 = !DILocation(line: 440, column: 7, scope: !2474)
!2477 = !DILocation(line: 441, column: 34, scope: !2474)
!2478 = !DILocation(line: 441, column: 7, scope: !2474)
!2479 = !DILocation(line: 438, column: 11, scope: !2474)
!2480 = !DILocation(line: 444, column: 8, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 444, column: 8)
!2482 = !DILocation(line: 444, column: 8, scope: !2474)
!2483 = !DILocation(line: 445, column: 13, scope: !2481)
!2484 = !DILocation(line: 445, column: 6, scope: !2481)
!2485 = !DILocation(line: 448, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 448, column: 8)
!2487 = !DILocation(line: 448, column: 8, scope: !2474)
!2488 = !DILocation(line: 450, column: 8, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 450, column: 8)
!2490 = !DILocation(line: 450, column: 8, scope: !2474)
!2491 = !DILocation(line: 451, column: 13, scope: !2489)
!2492 = !DILocation(line: 451, column: 6, scope: !2489)
!2493 = !DILocation(line: 452, column: 11, scope: !2474)
!2494 = !DILocation(line: 452, column: 4, scope: !2474)
!2495 = distinct !DISubprogram(name: "chrec_fold_multiply_poly_poly", scope: !1, file: !1, line: 183, type: !2210, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2497 = !DILocalVariable(name: "type", arg: 1, scope: !2495, file: !1, line: 183, type: !406)
!2498 = !DILocalVariable(name: "poly0", arg: 2, scope: !2495, file: !1, line: 184, type: !406)
!2499 = !DILocalVariable(name: "poly1", arg: 3, scope: !2495, file: !1, line: 185, type: !406)
!2500 = !DILocalVariable(name: "t0", scope: !2495, file: !1, line: 187, type: !406)
!2501 = !DILocalVariable(name: "t1", scope: !2495, file: !1, line: 187, type: !406)
!2502 = !DILocalVariable(name: "t2", scope: !2495, file: !1, line: 187, type: !406)
!2503 = !DILocalVariable(name: "var", scope: !2495, file: !1, line: 188, type: !397)
!2504 = !DILocalVariable(name: "loop0", scope: !2495, file: !1, line: 189, type: !945)
!2505 = !DILocalVariable(name: "loop1", scope: !2495, file: !1, line: 190, type: !945)
!2506 = !DILocation(line: 0, scope: !2495)
!2507 = !DILocation(line: 189, column: 24, scope: !2495)
!2508 = !DILocation(line: 190, column: 24, scope: !2495)
!2509 = !DILocation(line: 192, column: 3, scope: !2495)
!2510 = !DILocation(line: 193, column: 3, scope: !2495)
!2511 = !DILocation(line: 194, column: 3, scope: !2495)
!2512 = !DILocation(line: 195, column: 3, scope: !2495)
!2513 = !DILocation(line: 196, column: 3, scope: !2495)
!2514 = !DILocation(line: 197, column: 3, scope: !2495)
!2515 = !DILocation(line: 202, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2495, file: !1, line: 202, column: 7)
!2517 = !DILocation(line: 202, column: 7, scope: !2495)
!2518 = !DILocation(line: 205, column: 8, scope: !2516)
!2519 = !DILocation(line: 206, column: 35, scope: !2516)
!2520 = !DILocation(line: 206, column: 8, scope: !2516)
!2521 = !DILocation(line: 207, column: 8, scope: !2516)
!2522 = !DILocation(line: 204, column: 12, scope: !2516)
!2523 = !DILocation(line: 204, column: 5, scope: !2516)
!2524 = !DILocation(line: 209, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2495, file: !1, line: 209, column: 7)
!2526 = !DILocation(line: 209, column: 7, scope: !2495)
!2527 = !DILocation(line: 212, column: 8, scope: !2525)
!2528 = !DILocation(line: 213, column: 35, scope: !2525)
!2529 = !DILocation(line: 213, column: 8, scope: !2525)
!2530 = !DILocation(line: 214, column: 8, scope: !2525)
!2531 = !DILocation(line: 211, column: 12, scope: !2525)
!2532 = !DILocation(line: 211, column: 5, scope: !2525)
!2533 = !DILocation(line: 216, column: 3, scope: !2495)
!2534 = !DILocation(line: 222, column: 35, scope: !2495)
!2535 = !DILocation(line: 222, column: 55, scope: !2495)
!2536 = !DILocation(line: 222, column: 8, scope: !2495)
!2537 = !DILocation(line: 225, column: 35, scope: !2495)
!2538 = !DILocation(line: 225, column: 55, scope: !2495)
!2539 = !DILocation(line: 225, column: 8, scope: !2495)
!2540 = !DILocation(line: 227, column: 14, scope: !2495)
!2541 = !DILocation(line: 228, column: 14, scope: !2495)
!2542 = !DILocation(line: 226, column: 35, scope: !2495)
!2543 = !DILocation(line: 226, column: 8, scope: !2495)
!2544 = !DILocation(line: 230, column: 35, scope: !2495)
!2545 = !DILocation(line: 230, column: 56, scope: !2495)
!2546 = !DILocation(line: 230, column: 8, scope: !2495)
!2547 = !DILocation(line: 232, column: 8, scope: !2495)
!2548 = !DILocation(line: 234, column: 35, scope: !2495)
!2549 = !DILocation(line: 235, column: 10, scope: !2495)
!2550 = !DILocation(line: 236, column: 10, scope: !2495)
!2551 = !DILocation(line: 234, column: 8, scope: !2495)
!2552 = !DILocation(line: 238, column: 9, scope: !2495)
!2553 = !DILocation(line: 240, column: 6, scope: !2495)
!2554 = !DILocation(line: 239, column: 10, scope: !2495)
!2555 = !DILocation(line: 239, column: 3, scope: !2495)
!2556 = !DILocation(line: 241, column: 1, scope: !2495)
!2557 = distinct !DISubprogram(name: "tree_contains_chrecs", scope: !1, file: !1, line: 948, type: !2558, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2561)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!396, !2246, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DILocalVariable(name: "expr", arg: 1, scope: !2557, file: !1, line: 948, type: !2246)
!2563 = !DILocalVariable(name: "size", arg: 2, scope: !2557, file: !1, line: 948, type: !2560)
!2564 = !DILocalVariable(name: "i", scope: !2557, file: !1, line: 950, type: !397)
!2565 = !DILocalVariable(name: "n", scope: !2557, file: !1, line: 950, type: !397)
!2566 = !DILocation(line: 0, scope: !2557)
!2567 = !DILocation(line: 952, column: 12, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 952, column: 7)
!2569 = !DILocation(line: 952, column: 7, scope: !2557)
!2570 = !DILocation(line: 955, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 955, column: 7)
!2572 = !DILocation(line: 955, column: 7, scope: !2557)
!2573 = !DILocation(line: 956, column: 12, scope: !2571)
!2574 = !DILocation(line: 956, column: 5, scope: !2571)
!2575 = !DILocation(line: 958, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 958, column: 7)
!2577 = !DILocation(line: 958, column: 7, scope: !2557)
!2578 = !DILocation(line: 961, column: 7, scope: !2557)
!2579 = !DILocation(line: 963, column: 31, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !1, line: 963, column: 9)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 962, column: 3)
!2582 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 962, column: 3)
!2583 = !DILocation(line: 962, column: 8, scope: !2582)
!2584 = !DILocation(line: 0, scope: !2582)
!2585 = !DILocation(line: 962, column: 17, scope: !2581)
!2586 = !DILocation(line: 962, column: 3, scope: !2582)
!2587 = !DILocation(line: 963, column: 9, scope: !2580)
!2588 = !DILocation(line: 963, column: 9, scope: !2581)
!2589 = !DILocation(line: 962, column: 23, scope: !2581)
!2590 = !DILocation(line: 962, column: 3, scope: !2581)
!2591 = distinct !{!2591, !2586, !2592}
!2592 = !DILocation(line: 964, column: 14, scope: !2582)
!2593 = !DILocation(line: 966, column: 1, scope: !2557)
!2594 = distinct !DISubprogram(name: "build_polynomial_chrec", scope: !2243, file: !2243, line: 127, type: !2595, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!406, !5, !406, !406}
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DILocalVariable(name: "loop_num", arg: 1, scope: !2594, file: !2243, line: 127, type: !5)
!2599 = !DILocalVariable(name: "left", arg: 2, scope: !2594, file: !2243, line: 128, type: !406)
!2600 = !DILocalVariable(name: "right", arg: 3, scope: !2594, file: !2243, line: 129, type: !406)
!2601 = !DILocalVariable(name: "val", scope: !2594, file: !2243, line: 131, type: !396)
!2602 = !DILocation(line: 0, scope: !2594)
!2603 = !DILocation(line: 131, column: 3, scope: !2594)
!2604 = !DILocation(line: 133, column: 15, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2594, file: !2243, line: 133, column: 7)
!2606 = !DILocation(line: 133, column: 12, scope: !2605)
!2607 = !DILocation(line: 134, column: 16, scope: !2605)
!2608 = !DILocation(line: 134, column: 7, scope: !2605)
!2609 = !DILocation(line: 135, column: 5, scope: !2605)
!2610 = !DILocation(line: 137, column: 8, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2594, file: !2243, line: 137, column: 7)
!2612 = !DILocation(line: 138, column: 11, scope: !2611)
!2613 = !DILocation(line: 138, column: 7, scope: !2611)
!2614 = !DILocation(line: 139, column: 12, scope: !2611)
!2615 = !DILocation(line: 139, column: 5, scope: !2611)
!2616 = !DILocation(line: 143, column: 3, scope: !2594)
!2617 = !DILocation(line: 146, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2594, file: !2243, line: 146, column: 7)
!2619 = !DILocation(line: 146, column: 7, scope: !2594)
!2620 = !DILocation(line: 147, column: 5, scope: !2618)
!2621 = !DILocation(line: 149, column: 5, scope: !2618)
!2622 = !DILocation(line: 151, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2594, file: !2243, line: 151, column: 7)
!2624 = !DILocation(line: 151, column: 7, scope: !2594)
!2625 = !DILocation(line: 154, column: 10, scope: !2594)
!2626 = !DILocation(line: 154, column: 3, scope: !2594)
!2627 = !DILocation(line: 156, column: 1, scope: !2594)
!2628 = distinct !DISubprogram(name: "chrec_apply", scope: !1, file: !1, line: 581, type: !2595, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634}
!2630 = !DILocalVariable(name: "var", arg: 1, scope: !2628, file: !1, line: 581, type: !5)
!2631 = !DILocalVariable(name: "chrec", arg: 2, scope: !2628, file: !1, line: 582, type: !406)
!2632 = !DILocalVariable(name: "x", arg: 3, scope: !2628, file: !1, line: 583, type: !406)
!2633 = !DILocalVariable(name: "type", scope: !2628, file: !1, line: 585, type: !406)
!2634 = !DILocalVariable(name: "res", scope: !2628, file: !1, line: 586, type: !406)
!2635 = !DILocation(line: 0, scope: !2628)
!2636 = !DILocation(line: 585, column: 15, scope: !2628)
!2637 = !DILocation(line: 588, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 588, column: 7)
!2639 = !DILocation(line: 589, column: 7, scope: !2638)
!2640 = !DILocation(line: 589, column: 10, scope: !2638)
!2641 = !DILocation(line: 594, column: 7, scope: !2638)
!2642 = !DILocation(line: 594, column: 10, scope: !2638)
!2643 = !DILocation(line: 588, column: 7, scope: !2628)
!2644 = !DILocation(line: 595, column: 12, scope: !2638)
!2645 = !DILocation(line: 595, column: 5, scope: !2638)
!2646 = !DILocation(line: 597, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 597, column: 7)
!2648 = !DILocation(line: 597, column: 17, scope: !2647)
!2649 = !DILocation(line: 597, column: 21, scope: !2647)
!2650 = !DILocation(line: 597, column: 32, scope: !2647)
!2651 = !DILocation(line: 597, column: 7, scope: !2628)
!2652 = !DILocation(line: 598, column: 5, scope: !2647)
!2653 = !DILocation(line: 600, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 600, column: 7)
!2655 = !DILocation(line: 600, column: 21, scope: !2654)
!2656 = !DILocation(line: 600, column: 36, scope: !2654)
!2657 = !DILocation(line: 600, column: 39, scope: !2654)
!2658 = !DILocation(line: 600, column: 7, scope: !2628)
!2659 = !DILocation(line: 601, column: 9, scope: !2654)
!2660 = !DILocation(line: 601, column: 5, scope: !2654)
!2661 = !DILocation(line: 603, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 603, column: 7)
!2663 = !DILocation(line: 603, column: 7, scope: !2628)
!2664 = !DILocation(line: 606, column: 11, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 604, column: 5)
!2666 = !DILocation(line: 607, column: 34, scope: !2665)
!2667 = !DILocation(line: 607, column: 49, scope: !2665)
!2668 = !DILocation(line: 607, column: 13, scope: !2665)
!2669 = !DILocation(line: 608, column: 36, scope: !2665)
!2670 = !DILocation(line: 608, column: 13, scope: !2665)
!2671 = !DILocation(line: 609, column: 5, scope: !2665)
!2672 = !DILocation(line: 611, column: 12, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 611, column: 12)
!2674 = !DILocation(line: 611, column: 30, scope: !2673)
!2675 = !DILocation(line: 611, column: 12, scope: !2662)
!2676 = !DILocation(line: 614, column: 12, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !1, line: 614, column: 12)
!2678 = !DILocation(line: 614, column: 26, scope: !2677)
!2679 = !DILocation(line: 615, column: 5, scope: !2677)
!2680 = !DILocation(line: 615, column: 8, scope: !2677)
!2681 = !DILocation(line: 615, column: 29, scope: !2677)
!2682 = !DILocation(line: 614, column: 12, scope: !2673)
!2683 = !DILocation(line: 617, column: 11, scope: !2677)
!2684 = !DILocation(line: 617, column: 5, scope: !2677)
!2685 = !DILocation(line: 619, column: 11, scope: !2677)
!2686 = !DILocation(line: 0, scope: !2662)
!2687 = !DILocation(line: 621, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 621, column: 7)
!2689 = !DILocation(line: 621, column: 17, scope: !2688)
!2690 = !DILocation(line: 621, column: 21, scope: !2688)
!2691 = !DILocation(line: 621, column: 32, scope: !2688)
!2692 = !DILocation(line: 621, column: 7, scope: !2628)
!2693 = !DILocation(line: 623, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 622, column: 5)
!2695 = !DILocation(line: 624, column: 16, scope: !2694)
!2696 = !DILocation(line: 624, column: 7, scope: !2694)
!2697 = !DILocation(line: 625, column: 27, scope: !2694)
!2698 = !DILocation(line: 625, column: 7, scope: !2694)
!2699 = !DILocation(line: 626, column: 16, scope: !2694)
!2700 = !DILocation(line: 626, column: 7, scope: !2694)
!2701 = !DILocation(line: 627, column: 27, scope: !2694)
!2702 = !DILocation(line: 627, column: 7, scope: !2694)
!2703 = !DILocation(line: 628, column: 16, scope: !2694)
!2704 = !DILocation(line: 628, column: 7, scope: !2694)
!2705 = !DILocation(line: 629, column: 27, scope: !2694)
!2706 = !DILocation(line: 629, column: 7, scope: !2694)
!2707 = !DILocation(line: 630, column: 16, scope: !2694)
!2708 = !DILocation(line: 630, column: 7, scope: !2694)
!2709 = !DILocation(line: 631, column: 5, scope: !2694)
!2710 = !DILocation(line: 634, column: 1, scope: !2628)
!2711 = distinct !DISubprogram(name: "chrec_type", scope: !2243, file: !2243, line: 234, type: !2712, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!406, !2246}
!2714 = !{!2715}
!2715 = !DILocalVariable(name: "chrec", arg: 1, scope: !2711, file: !2243, line: 234, type: !2246)
!2716 = !DILocation(line: 0, scope: !2711)
!2717 = !DILocation(line: 236, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !2243, line: 236, column: 7)
!2719 = !DILocation(line: 236, column: 7, scope: !2711)
!2720 = !DILocation(line: 239, column: 10, scope: !2711)
!2721 = !DILocation(line: 239, column: 3, scope: !2711)
!2722 = !DILocation(line: 240, column: 1, scope: !2711)
!2723 = distinct !DISubprogram(name: "evolution_function_is_affine_p", scope: !2243, file: !2243, line: 202, type: !2244, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2724)
!2724 = !{!2725}
!2725 = !DILocalVariable(name: "chrec", arg: 1, scope: !2723, file: !2243, line: 202, type: !2246)
!2726 = !DILocation(line: 0, scope: !2723)
!2727 = !DILocation(line: 204, column: 13, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2723, file: !2243, line: 204, column: 7)
!2729 = !DILocation(line: 204, column: 7, scope: !2723)
!2730 = !DILocation(line: 207, column: 11, scope: !2723)
!2731 = !DILocation(line: 207, column: 3, scope: !2723)
!2732 = !DILocation(line: 210, column: 46, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2243, line: 210, column: 11)
!2734 = distinct !DILexicalBlock(scope: !2723, file: !2243, line: 208, column: 5)
!2735 = !DILocation(line: 211, column: 11, scope: !2733)
!2736 = !DILocation(line: 210, column: 11, scope: !2733)
!2737 = !DILocation(line: 212, column: 4, scope: !2733)
!2738 = !DILocation(line: 212, column: 42, scope: !2733)
!2739 = !DILocation(line: 213, column: 7, scope: !2733)
!2740 = !DILocation(line: 212, column: 7, scope: !2733)
!2741 = !DILocation(line: 210, column: 11, scope: !2734)
!2742 = !DILocation(line: 216, column: 2, scope: !2733)
!2743 = !DILocation(line: 221, column: 1, scope: !2723)
!2744 = distinct !DISubprogram(name: "chrec_convert_rhs", scope: !1, file: !1, line: 1237, type: !2283, scopeLine: 1238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2745)
!2745 = !{!2746, !2747, !2748}
!2746 = !DILocalVariable(name: "type", arg: 1, scope: !2744, file: !1, line: 1237, type: !406)
!2747 = !DILocalVariable(name: "chrec", arg: 2, scope: !2744, file: !1, line: 1237, type: !406)
!2748 = !DILocalVariable(name: "at_stmt", arg: 3, scope: !2744, file: !1, line: 1237, type: !729)
!2749 = !DILocation(line: 0, scope: !2744)
!2750 = !DILocation(line: 1239, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 1239, column: 7)
!2752 = !DILocation(line: 1239, column: 7, scope: !2744)
!2753 = !DILocation(line: 1240, column: 11, scope: !2751)
!2754 = !DILocation(line: 1240, column: 4, scope: !2751)
!2755 = !DILocation(line: 1241, column: 10, scope: !2744)
!2756 = !DILocation(line: 1241, column: 3, scope: !2744)
!2757 = distinct !DISubprogram(name: "chrec_evaluate", scope: !1, file: !1, line: 538, type: !2758, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!406, !5, !406, !406, !5}
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769}
!2761 = !DILocalVariable(name: "var", arg: 1, scope: !2757, file: !1, line: 538, type: !5)
!2762 = !DILocalVariable(name: "chrec", arg: 2, scope: !2757, file: !1, line: 538, type: !406)
!2763 = !DILocalVariable(name: "n", arg: 3, scope: !2757, file: !1, line: 538, type: !406)
!2764 = !DILocalVariable(name: "k", arg: 4, scope: !2757, file: !1, line: 538, type: !5)
!2765 = !DILocalVariable(name: "arg0", scope: !2757, file: !1, line: 540, type: !406)
!2766 = !DILocalVariable(name: "arg1", scope: !2757, file: !1, line: 540, type: !406)
!2767 = !DILocalVariable(name: "binomial_n_k", scope: !2757, file: !1, line: 540, type: !406)
!2768 = !DILocalVariable(name: "type", scope: !2757, file: !1, line: 541, type: !406)
!2769 = !DILocalVariable(name: "var_loop", scope: !2757, file: !1, line: 542, type: !945)
!2770 = !DILocation(line: 0, scope: !2757)
!2771 = !DILocation(line: 541, column: 15, scope: !2757)
!2772 = !DILocation(line: 542, column: 27, scope: !2757)
!2773 = !DILocation(line: 544, column: 3, scope: !2757)
!2774 = !DILocation(line: 544, column: 10, scope: !2757)
!2775 = !DILocation(line: 544, column: 28, scope: !2757)
!2776 = !DILocation(line: 545, column: 3, scope: !2757)
!2777 = !DILocation(line: 545, column: 36, scope: !2757)
!2778 = !DILocation(line: 545, column: 6, scope: !2757)
!2779 = !DILocation(line: 548, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 548, column: 7)
!2781 = !DILocation(line: 546, column: 13, scope: !2757)
!2782 = distinct !{!2782, !2773, !2781}
!2783 = !DILocation(line: 548, column: 25, scope: !2780)
!2784 = !DILocation(line: 549, column: 7, scope: !2780)
!2785 = !DILocation(line: 549, column: 10, scope: !2780)
!2786 = !DILocation(line: 549, column: 36, scope: !2780)
!2787 = !DILocation(line: 549, column: 33, scope: !2780)
!2788 = !DILocation(line: 548, column: 7, scope: !2757)
!2789 = !DILocation(line: 551, column: 35, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2780, file: !1, line: 550, column: 5)
!2791 = !DILocation(line: 551, column: 61, scope: !2790)
!2792 = !DILocation(line: 551, column: 14, scope: !2790)
!2793 = !DILocation(line: 552, column: 19, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !1, line: 552, column: 11)
!2795 = !DILocation(line: 552, column: 16, scope: !2794)
!2796 = !DILocation(line: 552, column: 11, scope: !2790)
!2797 = !DILocation(line: 553, column: 2, scope: !2794)
!2798 = !DILocation(line: 554, column: 22, scope: !2790)
!2799 = !DILocation(line: 555, column: 12, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2790, file: !1, line: 555, column: 11)
!2801 = !DILocation(line: 555, column: 11, scope: !2790)
!2802 = !DILocation(line: 556, column: 9, scope: !2800)
!2803 = !DILocation(line: 556, column: 2, scope: !2800)
!2804 = !DILocation(line: 557, column: 14, scope: !2790)
!2805 = !DILocation(line: 559, column: 14, scope: !2790)
!2806 = !DILocation(line: 559, column: 7, scope: !2790)
!2807 = !DILocation(line: 562, column: 18, scope: !2757)
!2808 = !DILocation(line: 563, column: 8, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 563, column: 7)
!2810 = !DILocation(line: 563, column: 7, scope: !2757)
!2811 = !DILocation(line: 564, column: 12, scope: !2809)
!2812 = !DILocation(line: 564, column: 5, scope: !2809)
!2813 = !DILocation(line: 566, column: 10, scope: !2757)
!2814 = !DILocation(line: 566, column: 3, scope: !2757)
!2815 = !DILocation(line: 567, column: 1, scope: !2757)
!2816 = distinct !DISubprogram(name: "chrec_replace_initial_condition", scope: !1, file: !1, line: 639, type: !2256, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2817)
!2817 = !{!2818, !2819}
!2818 = !DILocalVariable(name: "chrec", arg: 1, scope: !2816, file: !1, line: 639, type: !406)
!2819 = !DILocalVariable(name: "init_cond", arg: 2, scope: !2816, file: !1, line: 640, type: !406)
!2820 = !DILocation(line: 0, scope: !2816)
!2821 = !DILocation(line: 642, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2816, file: !1, line: 642, column: 7)
!2823 = !DILocation(line: 642, column: 7, scope: !2816)
!2824 = !DILocation(line: 645, column: 3, scope: !2816)
!2825 = !DILocation(line: 647, column: 11, scope: !2816)
!2826 = !DILocation(line: 647, column: 3, scope: !2816)
!2827 = !DILocation(line: 651, column: 3, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2816, file: !1, line: 648, column: 5)
!2829 = !DILocation(line: 652, column: 36, scope: !2828)
!2830 = !DILocation(line: 652, column: 3, scope: !2828)
!2831 = !DILocation(line: 653, column: 3, scope: !2828)
!2832 = !DILocation(line: 650, column: 14, scope: !2828)
!2833 = !DILocation(line: 658, column: 1, scope: !2816)
!2834 = distinct !DISubprogram(name: "initial_condition", scope: !1, file: !1, line: 663, type: !2835, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!406, !406}
!2837 = !{!2838}
!2838 = !DILocalVariable(name: "chrec", arg: 1, scope: !2834, file: !1, line: 663, type: !406)
!2839 = !DILocation(line: 669, column: 12, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2834, file: !1, line: 668, column: 7)
!2841 = !DILocation(line: 0, scope: !2834)
!2842 = !DILocation(line: 665, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2834, file: !1, line: 665, column: 7)
!2844 = !DILocation(line: 665, column: 7, scope: !2834)
!2845 = !DILocation(line: 668, column: 7, scope: !2840)
!2846 = !DILocation(line: 668, column: 25, scope: !2840)
!2847 = !DILocation(line: 668, column: 7, scope: !2834)
!2848 = !DILocation(line: 669, column: 31, scope: !2840)
!2849 = !DILocation(line: 672, column: 1, scope: !2834)
!2850 = distinct !DISubprogram(name: "hide_evolution_in_other_loops_than_loop", scope: !1, file: !1, line: 678, type: !2851, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!406, !406, !5}
!2853 = !{!2854, !2855, !2856, !2857}
!2854 = !DILocalVariable(name: "chrec", arg: 1, scope: !2850, file: !1, line: 678, type: !406)
!2855 = !DILocalVariable(name: "loop_num", arg: 2, scope: !2850, file: !1, line: 679, type: !5)
!2856 = !DILocalVariable(name: "loop", scope: !2850, file: !1, line: 681, type: !945)
!2857 = !DILocalVariable(name: "chloop", scope: !2850, file: !1, line: 681, type: !945)
!2858 = !DILocation(line: 704, column: 11, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !1, line: 702, column: 2)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !1, line: 697, column: 16)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 690, column: 11)
!2862 = distinct !DILexicalBlock(scope: !2850, file: !1, line: 686, column: 5)
!2863 = !DILocation(line: 0, scope: !2850)
!2864 = !DILocation(line: 681, column: 23, scope: !2850)
!2865 = !DILocation(line: 682, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2850, file: !1, line: 682, column: 7)
!2867 = !DILocation(line: 682, column: 7, scope: !2850)
!2868 = !DILocation(line: 685, column: 11, scope: !2850)
!2869 = !DILocation(line: 685, column: 3, scope: !2850)
!2870 = !DILocation(line: 688, column: 16, scope: !2862)
!2871 = !DILocation(line: 690, column: 18, scope: !2861)
!2872 = !DILocation(line: 690, column: 11, scope: !2862)
!2873 = !DILocation(line: 693, column: 46, scope: !2861)
!2874 = !DILocation(line: 693, column: 5, scope: !2861)
!2875 = !DILocation(line: 695, column: 5, scope: !2861)
!2876 = !DILocation(line: 691, column: 9, scope: !2861)
!2877 = !DILocation(line: 711, column: 1, scope: !2850)
!2878 = !DILocation(line: 697, column: 16, scope: !2860)
!2879 = !DILocation(line: 697, column: 16, scope: !2861)
!2880 = !DILocation(line: 699, column: 9, scope: !2860)
!2881 = !DILocation(line: 699, column: 2, scope: !2860)
!2882 = !DILocation(line: 703, column: 4, scope: !2859)
!2883 = !DILocation(line: 704, column: 52, scope: !2859)
!2884 = distinct !DISubprogram(name: "get_loop", scope: !328, file: !328, line: 417, type: !2885, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!945, !5}
!2887 = !{!2888}
!2888 = !DILocalVariable(name: "num", arg: 1, scope: !2884, file: !328, line: 417, type: !5)
!2889 = !DILocation(line: 0, scope: !2884)
!2890 = !DILocation(line: 419, column: 10, scope: !2884)
!2891 = !DILocation(line: 419, column: 3, scope: !2884)
!2892 = distinct !DISubprogram(name: "get_chrec_loop", scope: !2893, file: !2893, line: 65, type: !2894, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2896)
!2893 = !DIFile(filename: "./tree-scalar-evolution.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!945, !2246}
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "chrec", arg: 1, scope: !2892, file: !2893, line: 65, type: !2246)
!2898 = !DILocation(line: 0, scope: !2892)
!2899 = !DILocation(line: 67, column: 20, scope: !2892)
!2900 = !DILocation(line: 67, column: 10, scope: !2892)
!2901 = !DILocation(line: 67, column: 3, scope: !2892)
!2902 = distinct !DISubprogram(name: "evolution_part_in_loop_num", scope: !1, file: !1, line: 777, type: !2851, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2903)
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "chrec", arg: 1, scope: !2902, file: !1, line: 777, type: !406)
!2905 = !DILocalVariable(name: "loop_num", arg: 2, scope: !2902, file: !1, line: 778, type: !5)
!2906 = !DILocation(line: 0, scope: !2902)
!2907 = !DILocation(line: 780, column: 10, scope: !2902)
!2908 = !DILocation(line: 780, column: 3, scope: !2902)
!2909 = distinct !DISubprogram(name: "chrec_component_in_loop_num", scope: !1, file: !1, line: 717, type: !2910, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!406, !406, !5, !396}
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918}
!2913 = !DILocalVariable(name: "chrec", arg: 1, scope: !2909, file: !1, line: 717, type: !406)
!2914 = !DILocalVariable(name: "loop_num", arg: 2, scope: !2909, file: !1, line: 718, type: !5)
!2915 = !DILocalVariable(name: "right", arg: 3, scope: !2909, file: !1, line: 719, type: !396)
!2916 = !DILocalVariable(name: "component", scope: !2909, file: !1, line: 721, type: !406)
!2917 = !DILocalVariable(name: "loop", scope: !2909, file: !1, line: 722, type: !945)
!2918 = !DILocalVariable(name: "chloop", scope: !2909, file: !1, line: 722, type: !945)
!2919 = !DILocation(line: 759, column: 11, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 757, column: 2)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !1, line: 752, column: 16)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !1, line: 732, column: 11)
!2923 = distinct !DILexicalBlock(scope: !2909, file: !1, line: 728, column: 5)
!2924 = !DILocation(line: 0, scope: !2909)
!2925 = !DILocation(line: 722, column: 23, scope: !2909)
!2926 = !DILocation(line: 724, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2909, file: !1, line: 724, column: 7)
!2928 = !DILocation(line: 724, column: 7, scope: !2909)
!2929 = !DILocation(line: 727, column: 11, scope: !2909)
!2930 = !DILocation(line: 727, column: 3, scope: !2909)
!2931 = !DILocation(line: 730, column: 16, scope: !2923)
!2932 = !DILocation(line: 732, column: 18, scope: !2922)
!2933 = !DILocation(line: 732, column: 11, scope: !2923)
!2934 = !DILocation(line: 734, column: 8, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !1, line: 734, column: 8)
!2936 = distinct !DILexicalBlock(scope: !2922, file: !1, line: 733, column: 2)
!2937 = !DILocation(line: 0, scope: !2935)
!2938 = !DILocation(line: 734, column: 8, scope: !2936)
!2939 = !DILocation(line: 735, column: 18, scope: !2935)
!2940 = !DILocation(line: 735, column: 6, scope: !2935)
!2941 = !DILocation(line: 737, column: 18, scope: !2935)
!2942 = !DILocation(line: 739, column: 8, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2936, file: !1, line: 739, column: 8)
!2944 = !DILocation(line: 739, column: 39, scope: !2943)
!2945 = !DILocation(line: 740, column: 8, scope: !2943)
!2946 = !DILocation(line: 740, column: 11, scope: !2943)
!2947 = !DILocation(line: 740, column: 50, scope: !2943)
!2948 = !DILocation(line: 740, column: 47, scope: !2943)
!2949 = !DILocation(line: 739, column: 8, scope: !2936)
!2950 = !DILocation(line: 746, column: 9, scope: !2943)
!2951 = !DILocation(line: 744, column: 13, scope: !2943)
!2952 = !DILocation(line: 770, column: 1, scope: !2909)
!2953 = !DILocation(line: 752, column: 16, scope: !2921)
!2954 = !DILocation(line: 752, column: 16, scope: !2922)
!2955 = !DILocation(line: 758, column: 4, scope: !2920)
!2956 = !DILocation(line: 759, column: 40, scope: !2920)
!2957 = !DILocation(line: 765, column: 11, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2923, file: !1, line: 765, column: 11)
!2959 = !DILocation(line: 0, scope: !2958)
!2960 = distinct !DISubprogram(name: "initial_condition_in_loop_num", scope: !1, file: !1, line: 788, type: !2851, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2961)
!2961 = !{!2962, !2963}
!2962 = !DILocalVariable(name: "chrec", arg: 1, scope: !2960, file: !1, line: 788, type: !406)
!2963 = !DILocalVariable(name: "loop_num", arg: 2, scope: !2960, file: !1, line: 789, type: !5)
!2964 = !DILocation(line: 0, scope: !2960)
!2965 = !DILocation(line: 791, column: 10, scope: !2960)
!2966 = !DILocation(line: 791, column: 3, scope: !2960)
!2967 = distinct !DISubprogram(name: "reset_evolution_in_loop", scope: !1, file: !1, line: 800, type: !2595, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2968)
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2976}
!2969 = !DILocalVariable(name: "loop_num", arg: 1, scope: !2967, file: !1, line: 800, type: !5)
!2970 = !DILocalVariable(name: "chrec", arg: 2, scope: !2967, file: !1, line: 801, type: !406)
!2971 = !DILocalVariable(name: "new_evol", arg: 3, scope: !2967, file: !1, line: 802, type: !406)
!2972 = !DILocalVariable(name: "loop", scope: !2967, file: !1, line: 804, type: !945)
!2973 = !DILocalVariable(name: "left", scope: !2974, file: !1, line: 814, type: !406)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 813, column: 5)
!2975 = distinct !DILexicalBlock(scope: !2967, file: !1, line: 811, column: 7)
!2976 = !DILocalVariable(name: "right", scope: !2974, file: !1, line: 816, type: !406)
!2977 = !DILocation(line: 0, scope: !2967)
!2978 = !DILocation(line: 804, column: 23, scope: !2967)
!2979 = !DILocation(line: 806, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2967, file: !1, line: 806, column: 7)
!2981 = !DILocation(line: 806, column: 7, scope: !2967)
!2982 = !DILocation(line: 807, column: 5, scope: !2980)
!2983 = !DILocation(line: 809, column: 5, scope: !2980)
!2984 = !DILocation(line: 811, column: 7, scope: !2975)
!2985 = !DILocation(line: 811, column: 25, scope: !2975)
!2986 = !DILocation(line: 812, column: 7, scope: !2975)
!2987 = !DILocation(line: 812, column: 36, scope: !2975)
!2988 = !DILocation(line: 812, column: 10, scope: !2975)
!2989 = !DILocation(line: 811, column: 7, scope: !2967)
!2990 = !DILocation(line: 814, column: 54, scope: !2974)
!2991 = !DILocation(line: 814, column: 19, scope: !2974)
!2992 = !DILocation(line: 0, scope: !2974)
!2993 = !DILocation(line: 816, column: 55, scope: !2974)
!2994 = !DILocation(line: 816, column: 20, scope: !2974)
!2995 = !DILocation(line: 818, column: 14, scope: !2974)
!2996 = !DILocation(line: 828, column: 1, scope: !2967)
!2997 = !DILocation(line: 823, column: 3, scope: !2967)
!2998 = !DILocation(line: 823, column: 10, scope: !2967)
!2999 = !DILocation(line: 823, column: 28, scope: !2967)
!3000 = !DILocation(line: 824, column: 3, scope: !2967)
!3001 = !DILocation(line: 824, column: 6, scope: !2967)
!3002 = !DILocation(line: 824, column: 29, scope: !2967)
!3003 = !DILocation(line: 825, column: 13, scope: !2967)
!3004 = distinct !{!3004, !2997, !3003}
!3005 = !DILocation(line: 827, column: 10, scope: !2967)
!3006 = distinct !DISubprogram(name: "chrec_merge", scope: !1, file: !1, line: 834, type: !2256, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3007)
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "chrec1", arg: 1, scope: !3006, file: !1, line: 834, type: !406)
!3009 = !DILocalVariable(name: "chrec2", arg: 2, scope: !3006, file: !1, line: 835, type: !406)
!3010 = !DILocation(line: 0, scope: !3006)
!3011 = !DILocation(line: 837, column: 17, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !1, line: 837, column: 7)
!3013 = !DILocation(line: 837, column: 14, scope: !3012)
!3014 = !DILocation(line: 838, column: 17, scope: !3012)
!3015 = !DILocation(line: 838, column: 7, scope: !3012)
!3016 = !DILocation(line: 839, column: 5, scope: !3012)
!3017 = !DILocation(line: 841, column: 17, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3006, file: !1, line: 841, column: 7)
!3019 = !DILocation(line: 841, column: 14, scope: !3018)
!3020 = !DILocation(line: 842, column: 17, scope: !3018)
!3021 = !DILocation(line: 842, column: 7, scope: !3018)
!3022 = !DILocation(line: 843, column: 5, scope: !3018)
!3023 = !DILocation(line: 845, column: 17, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3006, file: !1, line: 845, column: 7)
!3025 = !DILocation(line: 845, column: 14, scope: !3024)
!3026 = !DILocation(line: 845, column: 7, scope: !3006)
!3027 = !DILocation(line: 847, column: 14, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3006, file: !1, line: 847, column: 7)
!3029 = !DILocation(line: 847, column: 7, scope: !3006)
!3030 = !DILocation(line: 850, column: 7, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3006, file: !1, line: 850, column: 7)
!3032 = !DILocation(line: 853, column: 10, scope: !3006)
!3033 = !DILocation(line: 850, column: 7, scope: !3006)
!3034 = !DILocation(line: 854, column: 1, scope: !3006)
!3035 = distinct !DISubprogram(name: "eq_evolutions_p", scope: !1, file: !1, line: 1382, type: !3036, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!396, !2246, !2246}
!3038 = !{!3039, !3040}
!3039 = !DILocalVariable(name: "chrec0", arg: 1, scope: !3035, file: !1, line: 1382, type: !2246)
!3040 = !DILocalVariable(name: "chrec1", arg: 2, scope: !3035, file: !1, line: 1382, type: !2246)
!3041 = !DILocation(line: 0, scope: !3035)
!3042 = !DILocation(line: 1384, column: 14, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3035, file: !1, line: 1384, column: 7)
!3044 = !DILocation(line: 1385, column: 17, scope: !3043)
!3045 = !DILocation(line: 1385, column: 7, scope: !3043)
!3046 = !DILocation(line: 1386, column: 10, scope: !3043)
!3047 = !DILocation(line: 1386, column: 32, scope: !3043)
!3048 = !DILocation(line: 1386, column: 29, scope: !3043)
!3049 = !DILocation(line: 1384, column: 7, scope: !3035)
!3050 = !DILocation(line: 1389, column: 14, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3035, file: !1, line: 1389, column: 7)
!3052 = !DILocation(line: 1389, column: 7, scope: !3035)
!3053 = !DILocation(line: 1392, column: 11, scope: !3035)
!3054 = !DILocation(line: 1392, column: 3, scope: !3035)
!3055 = !DILocation(line: 1395, column: 14, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3035, file: !1, line: 1393, column: 5)
!3057 = !DILocation(line: 1395, column: 7, scope: !3056)
!3058 = !DILocation(line: 1398, column: 15, scope: !3056)
!3059 = !DILocation(line: 1398, column: 42, scope: !3056)
!3060 = !DILocation(line: 1398, column: 39, scope: !3056)
!3061 = !DILocation(line: 1399, column: 8, scope: !3056)
!3062 = !DILocation(line: 1399, column: 28, scope: !3056)
!3063 = !DILocation(line: 1399, column: 49, scope: !3056)
!3064 = !DILocation(line: 1399, column: 11, scope: !3056)
!3065 = !DILocation(line: 1400, column: 8, scope: !3056)
!3066 = !DILocation(line: 1400, column: 28, scope: !3056)
!3067 = !DILocation(line: 1400, column: 50, scope: !3056)
!3068 = !DILocation(line: 1400, column: 11, scope: !3056)
!3069 = !DILocation(line: 1398, column: 7, scope: !3056)
!3070 = !DILocation(line: 1404, column: 1, scope: !3035)
!3071 = distinct !DISubprogram(name: "is_multivariate_chrec", scope: !1, file: !1, line: 883, type: !2244, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3072)
!3072 = !{!3073}
!3073 = !DILocalVariable(name: "chrec", arg: 1, scope: !3071, file: !1, line: 883, type: !2246)
!3074 = !DILocation(line: 0, scope: !3071)
!3075 = !DILocation(line: 885, column: 13, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 885, column: 7)
!3077 = !DILocation(line: 885, column: 7, scope: !3071)
!3078 = !DILocation(line: 888, column: 7, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 888, column: 7)
!3080 = !DILocation(line: 888, column: 25, scope: !3079)
!3081 = !DILocation(line: 888, column: 7, scope: !3071)
!3082 = !DILocation(line: 889, column: 40, scope: !3079)
!3083 = !DILocation(line: 890, column: 12, scope: !3079)
!3084 = !DILocation(line: 889, column: 13, scope: !3079)
!3085 = !DILocation(line: 891, column: 6, scope: !3079)
!3086 = !DILocation(line: 891, column: 36, scope: !3079)
!3087 = !DILocation(line: 892, column: 8, scope: !3079)
!3088 = !DILocation(line: 891, column: 9, scope: !3079)
!3089 = !DILocation(line: 889, column: 5, scope: !3079)
!3090 = !DILocation(line: 895, column: 1, scope: !3071)
!3091 = distinct !DISubprogram(name: "is_multivariate_chrec_rec", scope: !1, file: !1, line: 863, type: !3092, scopeLine: 864, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!396, !2246, !5}
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "chrec", arg: 1, scope: !3091, file: !1, line: 863, type: !2246)
!3096 = !DILocalVariable(name: "rec_var", arg: 2, scope: !3091, file: !1, line: 863, type: !5)
!3097 = !DILocation(line: 0, scope: !3091)
!3098 = !DILocation(line: 865, column: 13, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3091, file: !1, line: 865, column: 7)
!3100 = !DILocation(line: 865, column: 7, scope: !3091)
!3101 = !DILocation(line: 868, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3091, file: !1, line: 868, column: 7)
!3103 = !DILocation(line: 868, column: 25, scope: !3102)
!3104 = !DILocation(line: 868, column: 7, scope: !3091)
!3105 = !DILocation(line: 870, column: 11, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !1, line: 870, column: 11)
!3107 = distinct !DILexicalBlock(scope: !3102, file: !1, line: 869, column: 5)
!3108 = !DILocation(line: 870, column: 37, scope: !3106)
!3109 = !DILocation(line: 870, column: 34, scope: !3106)
!3110 = !DILocation(line: 870, column: 11, scope: !3107)
!3111 = !DILocation(line: 873, column: 37, scope: !3106)
!3112 = !DILocation(line: 873, column: 10, scope: !3106)
!3113 = !DILocation(line: 874, column: 3, scope: !3106)
!3114 = !DILocation(line: 874, column: 33, scope: !3106)
!3115 = !DILocation(line: 874, column: 6, scope: !3106)
!3116 = !DILocation(line: 873, column: 2, scope: !3106)
!3117 = !DILocation(line: 878, column: 1, scope: !3091)
!3118 = distinct !DISubprogram(name: "chrec_contains_symbols", scope: !1, file: !1, line: 900, type: !2244, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DILocalVariable(name: "chrec", arg: 1, scope: !3118, file: !1, line: 900, type: !2246)
!3121 = !DILocalVariable(name: "i", scope: !3118, file: !1, line: 902, type: !397)
!3122 = !DILocalVariable(name: "n", scope: !3118, file: !1, line: 902, type: !397)
!3123 = !DILocation(line: 0, scope: !3118)
!3124 = !DILocation(line: 904, column: 13, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3118, file: !1, line: 904, column: 7)
!3126 = !DILocation(line: 904, column: 7, scope: !3118)
!3127 = !DILocation(line: 907, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3118, file: !1, line: 907, column: 7)
!3129 = !DILocation(line: 907, column: 25, scope: !3128)
!3130 = !DILocation(line: 908, column: 7, scope: !3128)
!3131 = !DILocation(line: 908, column: 28, scope: !3128)
!3132 = !DILocation(line: 909, column: 7, scope: !3128)
!3133 = !DILocation(line: 909, column: 28, scope: !3128)
!3134 = !DILocation(line: 910, column: 7, scope: !3128)
!3135 = !DILocation(line: 910, column: 28, scope: !3128)
!3136 = !DILocation(line: 911, column: 7, scope: !3128)
!3137 = !DILocation(line: 911, column: 28, scope: !3128)
!3138 = !DILocation(line: 912, column: 7, scope: !3128)
!3139 = !DILocation(line: 912, column: 28, scope: !3128)
!3140 = !DILocation(line: 913, column: 7, scope: !3128)
!3141 = !DILocation(line: 913, column: 28, scope: !3128)
!3142 = !DILocation(line: 907, column: 7, scope: !3118)
!3143 = !DILocation(line: 916, column: 7, scope: !3118)
!3144 = !DILocation(line: 918, column: 33, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !1, line: 918, column: 9)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !1, line: 917, column: 3)
!3147 = distinct !DILexicalBlock(scope: !3118, file: !1, line: 917, column: 3)
!3148 = !DILocation(line: 917, column: 8, scope: !3147)
!3149 = !DILocation(line: 0, scope: !3147)
!3150 = !DILocation(line: 917, column: 17, scope: !3146)
!3151 = !DILocation(line: 917, column: 3, scope: !3147)
!3152 = !DILocation(line: 918, column: 9, scope: !3145)
!3153 = !DILocation(line: 918, column: 9, scope: !3146)
!3154 = !DILocation(line: 917, column: 23, scope: !3146)
!3155 = !DILocation(line: 917, column: 3, scope: !3146)
!3156 = distinct !{!3156, !3151, !3157}
!3157 = !DILocation(line: 919, column: 14, scope: !3147)
!3158 = !DILocation(line: 921, column: 1, scope: !3118)
!3159 = distinct !DISubprogram(name: "tree_operand_length", scope: !133, file: !133, line: 5347, type: !3160, scopeLine: 5348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!397, !2246}
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "node", arg: 1, scope: !3159, file: !133, line: 5347, type: !2246)
!3164 = !DILocation(line: 0, scope: !3159)
!3165 = !DILocation(line: 5349, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3159, file: !133, line: 5349, column: 7)
!3167 = !DILocation(line: 5349, column: 7, scope: !3159)
!3168 = !DILocation(line: 5350, column: 12, scope: !3166)
!3169 = !DILocation(line: 5350, column: 5, scope: !3166)
!3170 = !DILocation(line: 5352, column: 12, scope: !3166)
!3171 = !DILocation(line: 5352, column: 5, scope: !3166)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 5353, column: 1, scope: !3159)
!3174 = distinct !DISubprogram(name: "chrec_contains_undetermined", scope: !1, file: !1, line: 926, type: !2244, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DILocalVariable(name: "chrec", arg: 1, scope: !3174, file: !1, line: 926, type: !2246)
!3177 = !DILocalVariable(name: "i", scope: !3174, file: !1, line: 928, type: !397)
!3178 = !DILocalVariable(name: "n", scope: !3174, file: !1, line: 928, type: !397)
!3179 = !DILocation(line: 0, scope: !3174)
!3180 = !DILocation(line: 930, column: 16, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3174, file: !1, line: 930, column: 7)
!3182 = !DILocation(line: 930, column: 13, scope: !3181)
!3183 = !DILocation(line: 930, column: 7, scope: !3174)
!3184 = !DILocation(line: 933, column: 13, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3174, file: !1, line: 933, column: 7)
!3186 = !DILocation(line: 933, column: 7, scope: !3174)
!3187 = !DILocation(line: 936, column: 7, scope: !3174)
!3188 = !DILocation(line: 938, column: 38, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 938, column: 9)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !1, line: 937, column: 3)
!3191 = distinct !DILexicalBlock(scope: !3174, file: !1, line: 937, column: 3)
!3192 = !DILocation(line: 937, column: 8, scope: !3191)
!3193 = !DILocation(line: 0, scope: !3191)
!3194 = !DILocation(line: 937, column: 17, scope: !3190)
!3195 = !DILocation(line: 937, column: 3, scope: !3191)
!3196 = !DILocation(line: 938, column: 9, scope: !3189)
!3197 = !DILocation(line: 938, column: 9, scope: !3190)
!3198 = !DILocation(line: 937, column: 23, scope: !3190)
!3199 = !DILocation(line: 937, column: 3, scope: !3190)
!3200 = distinct !{!3200, !3195, !3201}
!3201 = !DILocation(line: 939, column: 14, scope: !3191)
!3202 = !DILocation(line: 941, column: 1, scope: !3174)
!3203 = distinct !DISubprogram(name: "tree_is_chrec", scope: !2243, file: !2243, line: 46, type: !2244, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3204)
!3204 = !{!3205}
!3205 = !DILocalVariable(name: "expr", arg: 1, scope: !3203, file: !2243, line: 46, type: !2246)
!3206 = !DILocation(line: 0, scope: !3203)
!3207 = !DILocation(line: 48, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3203, file: !2243, line: 48, column: 7)
!3209 = !DILocation(line: 48, column: 24, scope: !3208)
!3210 = !DILocation(line: 49, column: 7, scope: !3208)
!3211 = !DILocation(line: 49, column: 10, scope: !3208)
!3212 = !DILocation(line: 48, column: 7, scope: !3203)
!3213 = !DILocation(line: 53, column: 1, scope: !3203)
!3214 = distinct !DISubprogram(name: "evolution_function_is_invariant_p", scope: !1, file: !1, line: 1015, type: !3215, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!396, !406, !397}
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "chrec", arg: 1, scope: !3214, file: !1, line: 1015, type: !406)
!3219 = !DILocalVariable(name: "loopnum", arg: 2, scope: !3214, file: !1, line: 1015, type: !397)
!3220 = !DILocation(line: 0, scope: !3214)
!3221 = !DILocation(line: 1017, column: 10, scope: !3214)
!3222 = !DILocation(line: 1017, column: 3, scope: !3214)
!3223 = distinct !DISubprogram(name: "evolution_function_is_invariant_rec_p", scope: !1, file: !1, line: 971, type: !3215, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3224)
!3224 = !{!3225, !3226}
!3225 = !DILocalVariable(name: "chrec", arg: 1, scope: !3223, file: !1, line: 971, type: !406)
!3226 = !DILocalVariable(name: "loopnum", arg: 2, scope: !3223, file: !1, line: 971, type: !397)
!3227 = !DILocation(line: 0, scope: !3223)
!3228 = !DILocation(line: 973, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3223, file: !1, line: 973, column: 7)
!3230 = !DILocation(line: 973, column: 7, scope: !3223)
!3231 = !DILocation(line: 976, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3223, file: !1, line: 976, column: 7)
!3233 = !DILocation(line: 976, column: 25, scope: !3232)
!3234 = !DILocation(line: 977, column: 7, scope: !3232)
!3235 = !DILocation(line: 977, column: 19, scope: !3232)
!3236 = !DILocation(line: 978, column: 4, scope: !3232)
!3237 = !DILocation(line: 978, column: 33, scope: !3232)
!3238 = !DILocation(line: 978, column: 7, scope: !3232)
!3239 = !DILocation(line: 976, column: 7, scope: !3223)
!3240 = !DILocation(line: 981, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3223, file: !1, line: 981, column: 7)
!3242 = !DILocation(line: 981, column: 25, scope: !3241)
!3243 = !DILocation(line: 981, column: 7, scope: !3223)
!3244 = !DILocation(line: 983, column: 11, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !1, line: 983, column: 11)
!3246 = distinct !DILexicalBlock(scope: !3241, file: !1, line: 982, column: 5)
!3247 = !DILocation(line: 983, column: 37, scope: !3245)
!3248 = !DILocation(line: 983, column: 34, scope: !3245)
!3249 = !DILocation(line: 984, column: 4, scope: !3245)
!3250 = !DILocation(line: 984, column: 47, scope: !3245)
!3251 = !DILocation(line: 984, column: 8, scope: !3245)
!3252 = !DILocation(line: 986, column: 4, scope: !3245)
!3253 = !DILocation(line: 986, column: 47, scope: !3245)
!3254 = !DILocation(line: 986, column: 8, scope: !3245)
!3255 = !DILocation(line: 983, column: 11, scope: !3246)
!3256 = !DILocation(line: 992, column: 11, scope: !3223)
!3257 = !DILocation(line: 992, column: 3, scope: !3223)
!3258 = !DILocation(line: 995, column: 51, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !1, line: 995, column: 11)
!3260 = distinct !DILexicalBlock(scope: !3223, file: !1, line: 993, column: 5)
!3261 = !DILocation(line: 995, column: 12, scope: !3259)
!3262 = !DILocation(line: 995, column: 11, scope: !3260)
!3263 = !DILocation(line: 1000, column: 51, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !1, line: 1000, column: 11)
!3265 = !DILocation(line: 1000, column: 12, scope: !3264)
!3266 = !DILocation(line: 0, scope: !3260)
!3267 = !DILocation(line: 1010, column: 1, scope: !3223)
!3268 = distinct !DISubprogram(name: "evolution_function_is_affine_multivariate_p", scope: !1, file: !1, line: 1024, type: !3269, scopeLine: 1025, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!396, !2246, !397}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "chrec", arg: 1, scope: !3268, file: !1, line: 1024, type: !2246)
!3273 = !DILocalVariable(name: "loopnum", arg: 2, scope: !3268, file: !1, line: 1024, type: !397)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocation(line: 1026, column: 13, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3268, file: !1, line: 1026, column: 7)
!3277 = !DILocation(line: 1026, column: 7, scope: !3268)
!3278 = !DILocation(line: 1029, column: 11, scope: !3268)
!3279 = !DILocation(line: 1029, column: 3, scope: !3268)
!3280 = !DILocation(line: 1032, column: 50, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !1, line: 1032, column: 11)
!3282 = distinct !DILexicalBlock(scope: !3268, file: !1, line: 1030, column: 5)
!3283 = !DILocation(line: 1032, column: 11, scope: !3281)
!3284 = !DILocation(line: 0, scope: !3281)
!3285 = !DILocation(line: 1032, column: 11, scope: !3282)
!3286 = !DILocation(line: 1034, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !1, line: 1034, column: 8)
!3288 = distinct !DILexicalBlock(scope: !3281, file: !1, line: 1033, column: 2)
!3289 = !DILocation(line: 1034, column: 8, scope: !3288)
!3290 = !DILocation(line: 1038, column: 12, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !1, line: 1038, column: 12)
!3292 = distinct !DILexicalBlock(scope: !3287, file: !1, line: 1037, column: 6)
!3293 = !DILocation(line: 1038, column: 44, scope: !3291)
!3294 = !DILocation(line: 1039, column: 5, scope: !3291)
!3295 = !DILocation(line: 1039, column: 8, scope: !3291)
!3296 = !DILocation(line: 1040, column: 11, scope: !3291)
!3297 = !DILocation(line: 1040, column: 8, scope: !3291)
!3298 = !DILocation(line: 1041, column: 5, scope: !3291)
!3299 = !DILocation(line: 1041, column: 8, scope: !3291)
!3300 = !DILocation(line: 1038, column: 12, scope: !3292)
!3301 = !DILocation(line: 1045, column: 3, scope: !3291)
!3302 = !DILocation(line: 1050, column: 8, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !1, line: 1050, column: 8)
!3304 = distinct !DILexicalBlock(scope: !3281, file: !1, line: 1049, column: 2)
!3305 = !DILocation(line: 1051, column: 8, scope: !3303)
!3306 = !DILocation(line: 1051, column: 11, scope: !3303)
!3307 = !DILocation(line: 1051, column: 42, scope: !3303)
!3308 = !DILocation(line: 1052, column: 8, scope: !3303)
!3309 = !DILocation(line: 1052, column: 11, scope: !3303)
!3310 = !DILocation(line: 1052, column: 50, scope: !3303)
!3311 = !DILocation(line: 1052, column: 47, scope: !3303)
!3312 = !DILocation(line: 1053, column: 8, scope: !3303)
!3313 = !DILocation(line: 1053, column: 11, scope: !3303)
!3314 = !DILocation(line: 1050, column: 8, scope: !3304)
!3315 = !DILocation(line: 1057, column: 6, scope: !3303)
!3316 = !DILocation(line: 1063, column: 1, scope: !3268)
!3317 = distinct !DISubprogram(name: "evolution_function_is_univariate_p", scope: !1, file: !1, line: 1069, type: !2244, scopeLine: 1070, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3318)
!3318 = !{!3319}
!3319 = !DILocalVariable(name: "chrec", arg: 1, scope: !3317, file: !1, line: 1069, type: !2246)
!3320 = !DILocation(line: 0, scope: !3317)
!3321 = !DILocation(line: 1071, column: 13, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3317, file: !1, line: 1071, column: 7)
!3323 = !DILocation(line: 1071, column: 7, scope: !3317)
!3324 = !DILocation(line: 1074, column: 11, scope: !3317)
!3325 = !DILocation(line: 1074, column: 3, scope: !3317)
!3326 = !DILocation(line: 1077, column: 15, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3317, file: !1, line: 1075, column: 5)
!3328 = !DILocation(line: 1077, column: 7, scope: !3327)
!3329 = !DILocation(line: 1080, column: 8, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !1, line: 1080, column: 8)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !1, line: 1078, column: 2)
!3332 = !DILocation(line: 1080, column: 34, scope: !3330)
!3333 = !DILocation(line: 1080, column: 31, scope: !3330)
!3334 = !DILocation(line: 1080, column: 8, scope: !3331)
!3335 = !DILocation(line: 1082, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !1, line: 1082, column: 8)
!3337 = !DILocation(line: 1082, column: 8, scope: !3331)
!3338 = !DILocation(line: 1090, column: 15, scope: !3327)
!3339 = !DILocation(line: 1090, column: 7, scope: !3327)
!3340 = !DILocation(line: 1093, column: 8, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 1093, column: 8)
!3342 = distinct !DILexicalBlock(scope: !3327, file: !1, line: 1091, column: 2)
!3343 = !DILocation(line: 1093, column: 34, scope: !3341)
!3344 = !DILocation(line: 1093, column: 31, scope: !3341)
!3345 = !DILocation(line: 1093, column: 8, scope: !3342)
!3346 = !DILocation(line: 1095, column: 9, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 1095, column: 8)
!3348 = !DILocation(line: 1095, column: 8, scope: !3342)
!3349 = !DILocation(line: 1104, column: 7, scope: !3327)
!3350 = !DILocation(line: 1106, column: 1, scope: !3317)
!3351 = distinct !DISubprogram(name: "nb_vars_in_chrec", scope: !1, file: !1, line: 1112, type: !3352, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!5, !406}
!3354 = !{!3355}
!3355 = !DILocalVariable(name: "chrec", arg: 1, scope: !3351, file: !1, line: 1112, type: !406)
!3356 = !DILocation(line: 1120, column: 18, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 1118, column: 5)
!3358 = !DILocation(line: 0, scope: !3351)
!3359 = !DILocation(line: 1114, column: 13, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 1114, column: 7)
!3361 = !DILocation(line: 1114, column: 7, scope: !3351)
!3362 = !DILocation(line: 1117, column: 11, scope: !3351)
!3363 = !DILocation(line: 1117, column: 3, scope: !3351)
!3364 = !DILocation(line: 1121, column: 41, scope: !3357)
!3365 = !DILocation(line: 1121, column: 3, scope: !3357)
!3366 = !DILocation(line: 1120, column: 16, scope: !3357)
!3367 = !DILocation(line: 1126, column: 1, scope: !3351)
!3368 = distinct !DISubprogram(name: "convert_affine_scev", scope: !1, file: !1, line: 1139, type: !3369, scopeLine: 1142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!396, !945, !406, !764, !764, !729, !396}
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384}
!3372 = !DILocalVariable(name: "loop", arg: 1, scope: !3368, file: !1, line: 1139, type: !945)
!3373 = !DILocalVariable(name: "type", arg: 2, scope: !3368, file: !1, line: 1139, type: !406)
!3374 = !DILocalVariable(name: "base", arg: 3, scope: !3368, file: !1, line: 1140, type: !764)
!3375 = !DILocalVariable(name: "step", arg: 4, scope: !3368, file: !1, line: 1140, type: !764)
!3376 = !DILocalVariable(name: "at_stmt", arg: 5, scope: !3368, file: !1, line: 1140, type: !729)
!3377 = !DILocalVariable(name: "use_overflow_semantics", arg: 6, scope: !3368, file: !1, line: 1141, type: !396)
!3378 = !DILocalVariable(name: "ct", scope: !3368, file: !1, line: 1143, type: !406)
!3379 = !DILocalVariable(name: "enforce_overflow_semantics", scope: !3368, file: !1, line: 1144, type: !396)
!3380 = !DILocalVariable(name: "must_check_src_overflow", scope: !3368, file: !1, line: 1145, type: !396)
!3381 = !DILocalVariable(name: "must_check_rslt_overflow", scope: !3368, file: !1, line: 1145, type: !396)
!3382 = !DILocalVariable(name: "new_base", scope: !3368, file: !1, line: 1146, type: !406)
!3383 = !DILocalVariable(name: "new_step", scope: !3368, file: !1, line: 1146, type: !406)
!3384 = !DILocalVariable(name: "step_type", scope: !3368, file: !1, line: 1147, type: !406)
!3385 = !DILocation(line: 0, scope: !3368)
!3386 = !DILocation(line: 1143, column: 13, scope: !3368)
!3387 = !DILocation(line: 1147, column: 20, scope: !3368)
!3388 = !DILocation(line: 1147, column: 44, scope: !3368)
!3389 = !DILocation(line: 1164, column: 29, scope: !3368)
!3390 = !DILocation(line: 1164, column: 51, scope: !3368)
!3391 = !DILocation(line: 1164, column: 49, scope: !3368)
!3392 = !DILocation(line: 1166, column: 33, scope: !3368)
!3393 = !DILocation(line: 1167, column: 5, scope: !3368)
!3394 = !DILocation(line: 1167, column: 8, scope: !3368)
!3395 = !DILocation(line: 1168, column: 7, scope: !3368)
!3396 = !DILocation(line: 1180, column: 11, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !1, line: 1169, column: 5)
!3398 = distinct !DILexicalBlock(scope: !3368, file: !1, line: 1168, column: 7)
!3399 = !DILocation(line: 1182, column: 8, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !1, line: 1182, column: 8)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !1, line: 1181, column: 2)
!3402 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 1180, column: 11)
!3403 = !DILocation(line: 1182, column: 29, scope: !3400)
!3404 = !DILocation(line: 1182, column: 33, scope: !3400)
!3405 = !DILocation(line: 1182, column: 8, scope: !3401)
!3406 = !DILocation(line: 1187, column: 16, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !1, line: 1187, column: 16)
!3408 = !DILocation(line: 1187, column: 38, scope: !3407)
!3409 = !DILocation(line: 1187, column: 35, scope: !3407)
!3410 = !DILocation(line: 1188, column: 9, scope: !3407)
!3411 = !DILocation(line: 1188, column: 12, scope: !3407)
!3412 = !DILocation(line: 1188, column: 35, scope: !3407)
!3413 = !DILocation(line: 1188, column: 32, scope: !3407)
!3414 = !DILocation(line: 1187, column: 16, scope: !3402)
!3415 = !DILocation(line: 1164, column: 27, scope: !3368)
!3416 = !DILocation(line: 1199, column: 7, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3368, file: !1, line: 1199, column: 7)
!3418 = !DILocation(line: 1200, column: 7, scope: !3417)
!3419 = !DILocation(line: 1200, column: 33, scope: !3417)
!3420 = !DILocation(line: 1200, column: 40, scope: !3417)
!3421 = !DILocation(line: 1200, column: 10, scope: !3417)
!3422 = !DILocation(line: 1199, column: 7, scope: !3368)
!3423 = !DILocation(line: 1204, column: 37, scope: !3368)
!3424 = !DILocation(line: 1204, column: 14, scope: !3368)
!3425 = !DILocation(line: 1212, column: 14, scope: !3368)
!3426 = !DILocation(line: 1213, column: 7, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3368, file: !1, line: 1213, column: 7)
!3428 = !DILocation(line: 1213, column: 36, scope: !3427)
!3429 = !DILocation(line: 1213, column: 34, scope: !3427)
!3430 = !DILocation(line: 1213, column: 56, scope: !3427)
!3431 = !DILocation(line: 1213, column: 59, scope: !3427)
!3432 = !DILocation(line: 1213, column: 7, scope: !3368)
!3433 = !DILocation(line: 1214, column: 33, scope: !3427)
!3434 = !DILocation(line: 1214, column: 16, scope: !3427)
!3435 = !DILocation(line: 1214, column: 5, scope: !3427)
!3436 = !DILocation(line: 1216, column: 14, scope: !3368)
!3437 = !DILocation(line: 1218, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3368, file: !1, line: 1218, column: 7)
!3439 = !DILocation(line: 1219, column: 7, scope: !3438)
!3440 = !DILocation(line: 1219, column: 10, scope: !3438)
!3441 = !DILocation(line: 1218, column: 7, scope: !3368)
!3442 = !DILocation(line: 1222, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3368, file: !1, line: 1222, column: 7)
!3444 = !DILocation(line: 1225, column: 7, scope: !3443)
!3445 = !DILocation(line: 1225, column: 10, scope: !3443)
!3446 = !DILocation(line: 1222, column: 7, scope: !3368)
!3447 = !DILocation(line: 1228, column: 9, scope: !3368)
!3448 = !DILocation(line: 1229, column: 9, scope: !3368)
!3449 = !DILocation(line: 1230, column: 3, scope: !3368)
!3450 = !DILocation(line: 1231, column: 1, scope: !3368)
!3451 = distinct !DISubprogram(name: "chrec_convert_1", scope: !1, file: !1, line: 1287, type: !3452, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!406, !406, !406, !729, !396}
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464}
!3455 = !DILocalVariable(name: "type", arg: 1, scope: !3451, file: !1, line: 1287, type: !406)
!3456 = !DILocalVariable(name: "chrec", arg: 2, scope: !3451, file: !1, line: 1287, type: !406)
!3457 = !DILocalVariable(name: "at_stmt", arg: 3, scope: !3451, file: !1, line: 1287, type: !729)
!3458 = !DILocalVariable(name: "use_overflow_semantics", arg: 4, scope: !3451, file: !1, line: 1288, type: !396)
!3459 = !DILocalVariable(name: "ct", scope: !3451, file: !1, line: 1290, type: !406)
!3460 = !DILocalVariable(name: "res", scope: !3451, file: !1, line: 1290, type: !406)
!3461 = !DILocalVariable(name: "base", scope: !3451, file: !1, line: 1291, type: !406)
!3462 = !DILocalVariable(name: "step", scope: !3451, file: !1, line: 1291, type: !406)
!3463 = !DILocalVariable(name: "loop", scope: !3451, file: !1, line: 1292, type: !945)
!3464 = !DILabel(scope: !3451, name: "keep_cast", file: !1, line: 1313)
!3465 = !DILocation(line: 0, scope: !3451)
!3466 = !DILocation(line: 1291, column: 3, scope: !3451)
!3467 = !DILocation(line: 1294, column: 7, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1294, column: 7)
!3469 = !DILocation(line: 1294, column: 7, scope: !3451)
!3470 = !DILocation(line: 1297, column: 8, scope: !3451)
!3471 = !DILocation(line: 1298, column: 10, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1298, column: 7)
!3473 = !DILocation(line: 1298, column: 7, scope: !3451)
!3474 = !DILocation(line: 1301, column: 8, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1301, column: 7)
!3476 = !DILocation(line: 1301, column: 7, scope: !3451)
!3477 = !DILocation(line: 1304, column: 10, scope: !3451)
!3478 = !DILocation(line: 1305, column: 10, scope: !3451)
!3479 = !DILocation(line: 1305, column: 8, scope: !3451)
!3480 = !DILocation(line: 1306, column: 10, scope: !3451)
!3481 = !DILocation(line: 1306, column: 8, scope: !3451)
!3482 = !DILocation(line: 1308, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1308, column: 7)
!3484 = !DILocation(line: 1308, column: 7, scope: !3451)
!3485 = !DILocation(line: 1310, column: 42, scope: !3483)
!3486 = !DILocation(line: 1310, column: 47, scope: !3483)
!3487 = !DILocation(line: 1310, column: 53, scope: !3483)
!3488 = !DILocation(line: 1310, column: 12, scope: !3483)
!3489 = !DILocation(line: 1310, column: 5, scope: !3483)
!3490 = !DILocation(line: 1313, column: 1, scope: !3451)
!3491 = !DILocation(line: 1317, column: 7, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1317, column: 7)
!3493 = !DILocation(line: 1318, column: 7, scope: !3492)
!3494 = !DILocation(line: 1318, column: 11, scope: !3492)
!3495 = !DILocation(line: 1318, column: 29, scope: !3492)
!3496 = !DILocation(line: 1319, column: 4, scope: !3492)
!3497 = !DILocation(line: 1319, column: 25, scope: !3492)
!3498 = !DILocation(line: 1320, column: 7, scope: !3492)
!3499 = !DILocation(line: 1320, column: 10, scope: !3492)
!3500 = !DILocation(line: 1320, column: 27, scope: !3492)
!3501 = !DILocation(line: 1321, column: 7, scope: !3492)
!3502 = !DILocation(line: 1321, column: 10, scope: !3492)
!3503 = !DILocation(line: 1321, column: 25, scope: !3492)
!3504 = !DILocation(line: 1322, column: 7, scope: !3492)
!3505 = !DILocation(line: 1322, column: 10, scope: !3492)
!3506 = !DILocation(line: 1322, column: 34, scope: !3492)
!3507 = !DILocation(line: 1322, column: 32, scope: !3492)
!3508 = !DILocation(line: 1323, column: 7, scope: !3492)
!3509 = !DILocation(line: 1323, column: 10, scope: !3492)
!3510 = !DILocation(line: 1324, column: 11, scope: !3492)
!3511 = !DILocation(line: 1324, column: 5, scope: !3492)
!3512 = !DILocation(line: 1328, column: 11, scope: !3492)
!3513 = !DILocation(line: 0, scope: !3492)
!3514 = !DILocation(line: 1331, column: 7, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1331, column: 7)
!3516 = !DILocation(line: 1331, column: 7, scope: !3451)
!3517 = !DILocation(line: 1332, column: 25, scope: !3515)
!3518 = !DILocation(line: 1332, column: 5, scope: !3515)
!3519 = !DILocation(line: 1340, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1340, column: 7)
!3521 = !DILocation(line: 1340, column: 23, scope: !3520)
!3522 = !DILocation(line: 1341, column: 7, scope: !3520)
!3523 = !DILocation(line: 1341, column: 10, scope: !3520)
!3524 = !DILocation(line: 1341, column: 27, scope: !3520)
!3525 = !DILocation(line: 1342, column: 7, scope: !3520)
!3526 = !DILocation(line: 1342, column: 11, scope: !3520)
!3527 = !DILocation(line: 1343, column: 11, scope: !3520)
!3528 = !DILocation(line: 1340, column: 7, scope: !3451)
!3529 = !DILocation(line: 1346, column: 1, scope: !3451)
!3530 = distinct !DISubprogram(name: "chrec_convert_aggressive", scope: !1, file: !1, line: 1353, type: !2256, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3532 = !DILocalVariable(name: "type", arg: 1, scope: !3530, file: !1, line: 1353, type: !406)
!3533 = !DILocalVariable(name: "chrec", arg: 2, scope: !3530, file: !1, line: 1353, type: !406)
!3534 = !DILocalVariable(name: "inner_type", scope: !3530, file: !1, line: 1355, type: !406)
!3535 = !DILocalVariable(name: "left", scope: !3530, file: !1, line: 1355, type: !406)
!3536 = !DILocalVariable(name: "right", scope: !3530, file: !1, line: 1355, type: !406)
!3537 = !DILocalVariable(name: "lc", scope: !3530, file: !1, line: 1355, type: !406)
!3538 = !DILocalVariable(name: "rc", scope: !3530, file: !1, line: 1355, type: !406)
!3539 = !DILocalVariable(name: "rtype", scope: !3530, file: !1, line: 1355, type: !406)
!3540 = !DILocation(line: 0, scope: !3530)
!3541 = !DILocation(line: 1357, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3530, file: !1, line: 1357, column: 7)
!3543 = !DILocation(line: 1358, column: 7, scope: !3542)
!3544 = !DILocation(line: 1358, column: 10, scope: !3542)
!3545 = !DILocation(line: 1358, column: 28, scope: !3542)
!3546 = !DILocation(line: 1357, column: 7, scope: !3530)
!3547 = !DILocation(line: 1361, column: 16, scope: !3530)
!3548 = !DILocation(line: 1362, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3530, file: !1, line: 1362, column: 7)
!3550 = !DILocation(line: 1362, column: 31, scope: !3549)
!3551 = !DILocation(line: 1362, column: 29, scope: !3549)
!3552 = !DILocation(line: 1362, column: 7, scope: !3530)
!3553 = !DILocation(line: 1365, column: 11, scope: !3530)
!3554 = !DILocation(line: 1365, column: 35, scope: !3530)
!3555 = !DILocation(line: 1367, column: 10, scope: !3530)
!3556 = !DILocation(line: 1368, column: 11, scope: !3530)
!3557 = !DILocation(line: 1369, column: 8, scope: !3530)
!3558 = !DILocation(line: 1370, column: 8, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3530, file: !1, line: 1370, column: 7)
!3560 = !DILocation(line: 1370, column: 7, scope: !3530)
!3561 = !DILocation(line: 1371, column: 10, scope: !3559)
!3562 = !DILocation(line: 1371, column: 5, scope: !3559)
!3563 = !DILocation(line: 1372, column: 8, scope: !3530)
!3564 = !DILocation(line: 1373, column: 8, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3530, file: !1, line: 1373, column: 7)
!3566 = !DILocation(line: 1373, column: 7, scope: !3530)
!3567 = !DILocation(line: 1374, column: 10, scope: !3565)
!3568 = !DILocation(line: 1374, column: 5, scope: !3565)
!3569 = !DILocation(line: 1376, column: 34, scope: !3530)
!3570 = !DILocation(line: 1376, column: 10, scope: !3530)
!3571 = !DILocation(line: 1376, column: 3, scope: !3530)
!3572 = !DILocation(line: 1377, column: 1, scope: !3530)
!3573 = distinct !DISubprogram(name: "scev_direction", scope: !1, file: !1, line: 1411, type: !3574, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!388, !2246}
!3576 = !{!3577, !3578}
!3577 = !DILocalVariable(name: "chrec", arg: 1, scope: !3573, file: !1, line: 1411, type: !2246)
!3578 = !DILocalVariable(name: "step", scope: !3573, file: !1, line: 1413, type: !2246)
!3579 = !DILocation(line: 0, scope: !3573)
!3580 = !DILocation(line: 1415, column: 8, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3573, file: !1, line: 1415, column: 7)
!3582 = !DILocation(line: 1415, column: 7, scope: !3573)
!3583 = !DILocation(line: 1418, column: 10, scope: !3573)
!3584 = !DILocation(line: 1419, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3573, file: !1, line: 1419, column: 7)
!3586 = !DILocation(line: 1419, column: 24, scope: !3585)
!3587 = !DILocation(line: 1419, column: 7, scope: !3573)
!3588 = !DILocation(line: 1422, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3573, file: !1, line: 1422, column: 7)
!3590 = !DILocation(line: 0, scope: !3589)
!3591 = !DILocation(line: 1426, column: 1, scope: !3573)
!3592 = distinct !DISubprogram(name: "for_each_scev_op", scope: !1, file: !1, line: 1431, type: !3593, scopeLine: 1432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3598)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !764, !3595, !401}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!396, !764, !401}
!3598 = !{!3599, !3600, !3601}
!3599 = !DILocalVariable(name: "scev", arg: 1, scope: !3592, file: !1, line: 1431, type: !764)
!3600 = !DILocalVariable(name: "cbck", arg: 2, scope: !3592, file: !1, line: 1431, type: !3595)
!3601 = !DILocalVariable(name: "data", arg: 3, scope: !3592, file: !1, line: 1431, type: !401)
!3602 = !DILocation(line: 0, scope: !3592)
!3603 = !DILocation(line: 1433, column: 11, scope: !3592)
!3604 = !DILocation(line: 1433, column: 3, scope: !3592)
!3605 = !DILocation(line: 1439, column: 26, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3592, file: !1, line: 1434, column: 5)
!3607 = !DILocation(line: 1436, column: 26, scope: !3606)
!3608 = !DILocation(line: 1436, column: 7, scope: !3606)
!3609 = !DILocation(line: 1439, column: 7, scope: !3606)
!3610 = !DILocation(line: 1442, column: 26, scope: !3606)
!3611 = !DILocation(line: 1442, column: 7, scope: !3606)
!3612 = !DILocation(line: 1445, column: 7, scope: !3606)
!3613 = !DILocation(line: 1448, column: 1, scope: !3592)
!3614 = distinct !DISubprogram(name: "scev_is_linear_expression", scope: !1, file: !1, line: 1481, type: !3615, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!396, !406}
!3617 = !{!3618}
!3618 = !DILocalVariable(name: "scev", arg: 1, scope: !3614, file: !1, line: 1481, type: !406)
!3619 = !DILocation(line: 1507, column: 14, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3614, file: !1, line: 1496, column: 5)
!3621 = !DILocation(line: 0, scope: !3614)
!3622 = !DILocation(line: 1483, column: 12, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3614, file: !1, line: 1483, column: 7)
!3624 = !DILocation(line: 1484, column: 7, scope: !3623)
!3625 = !DILocation(line: 1484, column: 11, scope: !3623)
!3626 = !DILocation(line: 1483, column: 7, scope: !3614)
!3627 = !DILocation(line: 1487, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3614, file: !1, line: 1487, column: 7)
!3629 = !DILocation(line: 1487, column: 24, scope: !3628)
!3630 = !DILocation(line: 1487, column: 7, scope: !3614)
!3631 = !DILocation(line: 1488, column: 36, scope: !3628)
!3632 = !DILocation(line: 1488, column: 14, scope: !3628)
!3633 = !DILocation(line: 1489, column: 7, scope: !3628)
!3634 = !DILocation(line: 1489, column: 32, scope: !3628)
!3635 = !DILocation(line: 1489, column: 10, scope: !3628)
!3636 = !DILocation(line: 1488, column: 5, scope: !3628)
!3637 = !DILocation(line: 1491, column: 24, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3614, file: !1, line: 1491, column: 7)
!3639 = !DILocation(line: 1492, column: 7, scope: !3638)
!3640 = !DILocation(line: 1492, column: 62, scope: !3638)
!3641 = !DILocation(line: 1492, column: 11, scope: !3638)
!3642 = !DILocation(line: 1491, column: 7, scope: !3614)
!3643 = !DILocation(line: 1495, column: 11, scope: !3614)
!3644 = !DILocation(line: 1495, column: 3, scope: !3614)
!3645 = !DILocation(line: 1498, column: 41, scope: !3620)
!3646 = !DILocation(line: 1498, column: 14, scope: !3620)
!3647 = !DILocation(line: 1499, column: 2, scope: !3620)
!3648 = !DILocation(line: 1499, column: 32, scope: !3620)
!3649 = !DILocation(line: 1499, column: 5, scope: !3620)
!3650 = !DILocation(line: 1500, column: 2, scope: !3620)
!3651 = !DILocation(line: 1500, column: 32, scope: !3620)
!3652 = !DILocation(line: 1500, column: 5, scope: !3620)
!3653 = !DILocation(line: 1498, column: 7, scope: !3620)
!3654 = !DILocation(line: 1503, column: 41, scope: !3620)
!3655 = !DILocation(line: 1503, column: 14, scope: !3620)
!3656 = !DILocation(line: 1504, column: 2, scope: !3620)
!3657 = !DILocation(line: 1504, column: 32, scope: !3620)
!3658 = !DILocation(line: 1504, column: 5, scope: !3620)
!3659 = !DILocation(line: 1503, column: 7, scope: !3620)
!3660 = !DILocation(line: 1507, column: 41, scope: !3620)
!3661 = !DILocation(line: 1513, column: 7, scope: !3620)
!3662 = !DILocation(line: 1515, column: 1, scope: !3614)
!3663 = distinct !DISubprogram(name: "operator_is_linear", scope: !1, file: !1, line: 1454, type: !3615, scopeLine: 1455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3664)
!3664 = !{!3665}
!3665 = !DILocalVariable(name: "scev", arg: 1, scope: !3663, file: !1, line: 1454, type: !406)
!3666 = !DILocation(line: 0, scope: !3663)
!3667 = !DILocation(line: 1456, column: 11, scope: !3663)
!3668 = !DILocation(line: 1456, column: 3, scope: !3663)
!3669 = !DILocation(line: 1472, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 1457, column: 5)
!3671 = !DILocation(line: 0, scope: !3670)
!3672 = !DILocation(line: 1474, column: 1, scope: !3663)
!3673 = distinct !DISubprogram(name: "evolution_function_right_is_integer_cst", scope: !1, file: !1, line: 1521, type: !2244, scopeLine: 1522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3674)
!3674 = !{!3675}
!3675 = !DILocalVariable(name: "chrec", arg: 1, scope: !3673, file: !1, line: 1521, type: !2246)
!3676 = !DILocation(line: 1537, column: 14, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3673, file: !1, line: 1527, column: 5)
!3678 = !DILocation(line: 0, scope: !3673)
!3679 = !DILocation(line: 1523, column: 13, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3673, file: !1, line: 1523, column: 7)
!3681 = !DILocation(line: 1523, column: 7, scope: !3673)
!3682 = !DILocation(line: 1526, column: 11, scope: !3673)
!3683 = !DILocation(line: 1526, column: 3, scope: !3673)
!3684 = !DILocation(line: 1532, column: 14, scope: !3677)
!3685 = !DILocation(line: 1532, column: 46, scope: !3677)
!3686 = !DILocation(line: 1533, column: 2, scope: !3677)
!3687 = !DILocation(line: 1533, column: 6, scope: !3677)
!3688 = !DILocation(line: 1533, column: 37, scope: !3677)
!3689 = !DILocation(line: 1534, column: 6, scope: !3677)
!3690 = !DILocation(line: 1534, column: 9, scope: !3677)
!3691 = !DILocation(line: 1532, column: 7, scope: !3677)
!3692 = !DILocation(line: 1537, column: 55, scope: !3677)
!3693 = !DILocation(line: 1540, column: 7, scope: !3677)
!3694 = !DILocation(line: 1542, column: 1, scope: !3673)
!3695 = distinct !DISubprogram(name: "chrec_fold_plus_poly_poly", scope: !1, file: !1, line: 97, type: !2293, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3697 = !DILocalVariable(name: "code", arg: 1, scope: !3695, file: !1, line: 97, type: !132)
!3698 = !DILocalVariable(name: "type", arg: 2, scope: !3695, file: !1, line: 98, type: !406)
!3699 = !DILocalVariable(name: "poly0", arg: 3, scope: !3695, file: !1, line: 99, type: !406)
!3700 = !DILocalVariable(name: "poly1", arg: 4, scope: !3695, file: !1, line: 100, type: !406)
!3701 = !DILocalVariable(name: "left", scope: !3695, file: !1, line: 102, type: !406)
!3702 = !DILocalVariable(name: "right", scope: !3695, file: !1, line: 102, type: !406)
!3703 = !DILocalVariable(name: "loop0", scope: !3695, file: !1, line: 103, type: !945)
!3704 = !DILocalVariable(name: "loop1", scope: !3695, file: !1, line: 104, type: !945)
!3705 = !DILocalVariable(name: "rtype", scope: !3695, file: !1, line: 105, type: !406)
!3706 = !DILocation(line: 0, scope: !3695)
!3707 = !DILocation(line: 103, column: 24, scope: !3695)
!3708 = !DILocation(line: 104, column: 24, scope: !3695)
!3709 = !DILocation(line: 105, column: 21, scope: !3695)
!3710 = !DILocation(line: 105, column: 16, scope: !3695)
!3711 = !DILocation(line: 107, column: 3, scope: !3695)
!3712 = !DILocation(line: 108, column: 3, scope: !3695)
!3713 = !DILocation(line: 109, column: 3, scope: !3695)
!3714 = !DILocation(line: 110, column: 3, scope: !3695)
!3715 = !DILocation(line: 111, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3695, file: !1, line: 111, column: 7)
!3717 = !DILocation(line: 111, column: 7, scope: !3695)
!3718 = !DILocation(line: 112, column: 5, scope: !3716)
!3719 = !DILocation(line: 114, column: 5, scope: !3716)
!3720 = !DILocation(line: 115, column: 3, scope: !3695)
!3721 = !DILocation(line: 121, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3695, file: !1, line: 121, column: 7)
!3723 = !DILocation(line: 121, column: 7, scope: !3695)
!3724 = !DILocation(line: 123, column: 29, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !1, line: 123, column: 11)
!3726 = distinct !DILexicalBlock(scope: !3722, file: !1, line: 122, column: 5)
!3727 = !DILocation(line: 125, column: 5, scope: !3725)
!3728 = !DILocation(line: 126, column: 35, scope: !3725)
!3729 = !DILocation(line: 126, column: 5, scope: !3725)
!3730 = !DILocation(line: 127, column: 5, scope: !3725)
!3731 = !DILocation(line: 124, column: 9, scope: !3725)
!3732 = !DILocation(line: 124, column: 2, scope: !3725)
!3733 = !DILocation(line: 130, column: 5, scope: !3725)
!3734 = !DILocation(line: 131, column: 36, scope: !3725)
!3735 = !DILocation(line: 131, column: 5, scope: !3725)
!3736 = !DILocation(line: 132, column: 32, scope: !3725)
!3737 = !DILocation(line: 133, column: 5, scope: !3725)
!3738 = !DILocation(line: 134, column: 7, scope: !3725)
!3739 = !DILocation(line: 135, column: 7, scope: !3725)
!3740 = !DILocation(line: 132, column: 5, scope: !3725)
!3741 = !DILocation(line: 129, column: 9, scope: !3725)
!3742 = !DILocation(line: 129, column: 2, scope: !3725)
!3743 = !DILocation(line: 138, column: 7, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3695, file: !1, line: 138, column: 7)
!3745 = !DILocation(line: 138, column: 7, scope: !3695)
!3746 = !DILocation(line: 140, column: 29, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !1, line: 140, column: 11)
!3748 = distinct !DILexicalBlock(scope: !3744, file: !1, line: 139, column: 5)
!3749 = !DILocation(line: 142, column: 5, scope: !3747)
!3750 = !DILocation(line: 143, column: 28, scope: !3747)
!3751 = !DILocation(line: 143, column: 5, scope: !3747)
!3752 = !DILocation(line: 144, column: 5, scope: !3747)
!3753 = !DILocation(line: 141, column: 9, scope: !3747)
!3754 = !DILocation(line: 141, column: 2, scope: !3747)
!3755 = !DILocation(line: 147, column: 5, scope: !3747)
!3756 = !DILocation(line: 148, column: 29, scope: !3747)
!3757 = !DILocation(line: 148, column: 5, scope: !3747)
!3758 = !DILocation(line: 149, column: 5, scope: !3747)
!3759 = !DILocation(line: 146, column: 9, scope: !3747)
!3760 = !DILocation(line: 146, column: 2, scope: !3747)
!3761 = !DILocation(line: 154, column: 3, scope: !3695)
!3762 = !DILocation(line: 156, column: 25, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3695, file: !1, line: 156, column: 7)
!3764 = !DILocation(line: 159, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3763, file: !1, line: 157, column: 5)
!3766 = !DILocation(line: 159, column: 29, scope: !3765)
!3767 = !DILocation(line: 158, column: 14, scope: !3765)
!3768 = !DILocation(line: 161, column: 10, scope: !3765)
!3769 = !DILocation(line: 161, column: 31, scope: !3765)
!3770 = !DILocation(line: 160, column: 15, scope: !3765)
!3771 = !DILocation(line: 162, column: 5, scope: !3765)
!3772 = !DILocation(line: 166, column: 9, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3763, file: !1, line: 164, column: 5)
!3774 = !DILocation(line: 166, column: 29, scope: !3773)
!3775 = !DILocation(line: 165, column: 14, scope: !3773)
!3776 = !DILocation(line: 168, column: 9, scope: !3773)
!3777 = !DILocation(line: 168, column: 30, scope: !3773)
!3778 = !DILocation(line: 167, column: 15, scope: !3773)
!3779 = !DILocation(line: 0, scope: !3763)
!3780 = !DILocation(line: 171, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3695, file: !1, line: 171, column: 7)
!3782 = !DILocation(line: 171, column: 7, scope: !3695)
!3783 = !DILocation(line: 175, column: 8, scope: !3781)
!3784 = !DILocation(line: 174, column: 12, scope: !3781)
!3785 = !DILocation(line: 174, column: 5, scope: !3781)
!3786 = !DILocation(line: 176, column: 1, scope: !3695)
!3787 = distinct !DISubprogram(name: "chrec_zerop", scope: !2243, file: !2243, line: 94, type: !2244, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3788)
!3788 = !{!3789}
!3789 = !DILocalVariable(name: "chrec", arg: 1, scope: !3787, file: !2243, line: 94, type: !2246)
!3790 = !DILocation(line: 0, scope: !3787)
!3791 = !DILocation(line: 96, column: 13, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !2243, line: 96, column: 7)
!3793 = !DILocation(line: 96, column: 7, scope: !3787)
!3794 = !DILocation(line: 99, column: 7, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3787, file: !2243, line: 99, column: 7)
!3796 = !DILocation(line: 99, column: 25, scope: !3795)
!3797 = !DILocation(line: 99, column: 7, scope: !3787)
!3798 = !DILocation(line: 100, column: 12, scope: !3795)
!3799 = !DILocation(line: 100, column: 5, scope: !3795)
!3800 = !DILocation(line: 103, column: 1, scope: !3787)
!3801 = distinct !DISubprogram(name: "no_evolution_in_loop_p", scope: !2243, file: !2243, line: 109, type: !3802, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!396, !406, !5, !395}
!3804 = !{!3805, !3806, !3807, !3808}
!3805 = !DILocalVariable(name: "chrec", arg: 1, scope: !3801, file: !2243, line: 109, type: !406)
!3806 = !DILocalVariable(name: "loop_num", arg: 2, scope: !3801, file: !2243, line: 109, type: !5)
!3807 = !DILocalVariable(name: "res", arg: 3, scope: !3801, file: !2243, line: 109, type: !395)
!3808 = !DILocalVariable(name: "scev", scope: !3801, file: !2243, line: 111, type: !406)
!3809 = !DILocation(line: 0, scope: !3801)
!3810 = !DILocation(line: 113, column: 16, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3801, file: !2243, line: 113, column: 7)
!3812 = !DILocation(line: 113, column: 13, scope: !3811)
!3813 = !DILocation(line: 114, column: 19, scope: !3811)
!3814 = !DILocation(line: 114, column: 16, scope: !3811)
!3815 = !DILocation(line: 114, column: 7, scope: !3811)
!3816 = !DILocation(line: 115, column: 10, scope: !3811)
!3817 = !DILocation(line: 113, column: 7, scope: !3801)
!3818 = !DILocation(line: 118, column: 3, scope: !3801)
!3819 = !DILocation(line: 119, column: 10, scope: !3801)
!3820 = !DILocation(line: 120, column: 11, scope: !3801)
!3821 = !DILocation(line: 120, column: 10, scope: !3801)
!3822 = !DILocation(line: 120, column: 8, scope: !3801)
!3823 = !DILocation(line: 121, column: 3, scope: !3801)
!3824 = !DILocation(line: 122, column: 1, scope: !3801)
!3825 = distinct !DISubprogram(name: "tree_fold_binomial", scope: !1, file: !1, line: 465, type: !3826, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!406, !406, !406, !5}
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3829 = !DILocalVariable(name: "type", arg: 1, scope: !3825, file: !1, line: 465, type: !406)
!3830 = !DILocalVariable(name: "n", arg: 2, scope: !3825, file: !1, line: 465, type: !406)
!3831 = !DILocalVariable(name: "k", arg: 3, scope: !3825, file: !1, line: 465, type: !5)
!3832 = !DILocalVariable(name: "lidx", scope: !3825, file: !1, line: 467, type: !460)
!3833 = !DILocalVariable(name: "lnum", scope: !3825, file: !1, line: 467, type: !460)
!3834 = !DILocalVariable(name: "ldenom", scope: !3825, file: !1, line: 467, type: !460)
!3835 = !DILocalVariable(name: "lres", scope: !3825, file: !1, line: 467, type: !460)
!3836 = !DILocalVariable(name: "ldum", scope: !3825, file: !1, line: 467, type: !460)
!3837 = !DILocalVariable(name: "hidx", scope: !3825, file: !1, line: 468, type: !462)
!3838 = !DILocalVariable(name: "hnum", scope: !3825, file: !1, line: 468, type: !462)
!3839 = !DILocalVariable(name: "hdenom", scope: !3825, file: !1, line: 468, type: !462)
!3840 = !DILocalVariable(name: "hres", scope: !3825, file: !1, line: 468, type: !462)
!3841 = !DILocalVariable(name: "hdum", scope: !3825, file: !1, line: 468, type: !462)
!3842 = !DILocalVariable(name: "i", scope: !3825, file: !1, line: 469, type: !5)
!3843 = !DILocalVariable(name: "res", scope: !3825, file: !1, line: 470, type: !406)
!3844 = !DILocation(line: 0, scope: !3825)
!3845 = !DILocation(line: 467, column: 3, scope: !3825)
!3846 = !DILocation(line: 468, column: 3, scope: !3825)
!3847 = !DILocation(line: 473, column: 7, scope: !3825)
!3848 = !DILocation(line: 474, column: 12, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 473, column: 7)
!3850 = !DILocation(line: 474, column: 5, scope: !3849)
!3851 = !DILocation(line: 476, column: 12, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 475, column: 7)
!3853 = !DILocation(line: 476, column: 5, scope: !3852)
!3854 = !DILocation(line: 479, column: 7, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 479, column: 7)
!3856 = !DILocation(line: 479, column: 29, scope: !3855)
!3857 = !DILocation(line: 480, column: 7, scope: !3855)
!3858 = !DILocation(line: 484, column: 10, scope: !3825)
!3859 = !DILocation(line: 480, column: 10, scope: !3855)
!3860 = !DILocation(line: 480, column: 33, scope: !3855)
!3861 = !DILocation(line: 480, column: 31, scope: !3855)
!3862 = !DILocation(line: 479, column: 7, scope: !3825)
!3863 = !DILocation(line: 484, column: 8, scope: !3825)
!3864 = !DILocation(line: 485, column: 8, scope: !3825)
!3865 = !DILocation(line: 488, column: 10, scope: !3825)
!3866 = !DILocation(line: 489, column: 10, scope: !3825)
!3867 = !DILocation(line: 492, column: 12, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 492, column: 7)
!3869 = !DILocation(line: 492, column: 7, scope: !3825)
!3870 = !DILocation(line: 504, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 504, column: 7)
!3872 = !DILocation(line: 504, column: 7, scope: !3825)
!3873 = !DILocation(line: 507, column: 3, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 507, column: 3)
!3875 = !DILocation(line: 0, scope: !3874)
!3876 = !DILocation(line: 507, column: 17, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 507, column: 3)
!3878 = !DILocation(line: 510, column: 16, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !1, line: 510, column: 11)
!3880 = distinct !DILexicalBlock(scope: !3877, file: !1, line: 508, column: 5)
!3881 = !DILocation(line: 510, column: 11, scope: !3880)
!3882 = !DILocation(line: 519, column: 11, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3880, file: !1, line: 519, column: 11)
!3884 = !DILocation(line: 519, column: 11, scope: !3880)
!3885 = !DILocation(line: 523, column: 7, scope: !3880)
!3886 = !DILocation(line: 507, column: 24, scope: !3877)
!3887 = !DILocation(line: 507, column: 3, scope: !3877)
!3888 = distinct !{!3888, !3873, !3889}
!3889 = !DILocation(line: 524, column: 5, scope: !3874)
!3890 = !DILocation(line: 527, column: 44, scope: !3825)
!3891 = !DILocation(line: 527, column: 50, scope: !3825)
!3892 = !DILocation(line: 527, column: 56, scope: !3825)
!3893 = !DILocation(line: 527, column: 64, scope: !3825)
!3894 = !DILocation(line: 527, column: 3, scope: !3825)
!3895 = !DILocation(line: 530, column: 35, scope: !3825)
!3896 = !DILocation(line: 530, column: 41, scope: !3825)
!3897 = !DILocation(line: 530, column: 9, scope: !3825)
!3898 = !DILocation(line: 531, column: 10, scope: !3825)
!3899 = !DILocation(line: 531, column: 3, scope: !3825)
!3900 = !DILocation(line: 532, column: 1, scope: !3825)
!3901 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !328, file: !328, line: 85, type: !3902, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3906)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!972, !3904, !5}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!3906 = !{!3907, !3908}
!3907 = !DILocalVariable(name: "vec_", arg: 1, scope: !3901, file: !328, line: 85, type: !3904)
!3908 = !DILocalVariable(name: "ix_", arg: 2, scope: !3901, file: !328, line: 85, type: !5)
!3909 = !DILocation(line: 0, scope: !3901)
!3910 = !DILocation(line: 85, column: 1, scope: !3901)
!3911 = distinct !DISubprogram(name: "evolution_function_is_constant_p", scope: !2243, file: !2243, line: 161, type: !2244, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3912)
!3912 = !{!3913}
!3913 = !DILocalVariable(name: "chrec", arg: 1, scope: !3911, file: !2243, line: 161, type: !2246)
!3914 = !DILocation(line: 0, scope: !3911)
!3915 = !DILocation(line: 163, column: 13, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3911, file: !2243, line: 163, column: 7)
!3917 = !DILocation(line: 163, column: 7, scope: !3911)
!3918 = !DILocation(line: 166, column: 11, scope: !3911)
!3919 = !DILocation(line: 166, column: 3, scope: !3911)
!3920 = !DILocation(line: 0, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3911, file: !2243, line: 167, column: 5)
!3922 = !DILocation(line: 175, column: 1, scope: !3911)
