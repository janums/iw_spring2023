; ModuleID = 'tree-ssa-threadedge.bc'
source_filename = "tree-ssa-threadedge.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
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
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@ssa_name_values = common dso_local global %struct.VEC_tree_heap* null, align 8, !dbg !0
@.str = private unnamed_addr constant [22 x i8] c"tree-ssa-threadedge.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@stmt_count = internal unnamed_addr global i32 0, align 4, !dbg !1873
@.str.2 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1879 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1893, metadata !DIExpression()), !dbg !1894
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1895
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1896
  ret i32 %call, !dbg !1897
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1898 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1902
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1903
  ret i32 %call, !dbg !1904
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1960, metadata !DIExpression()), !dbg !1961
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1962
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1962
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1962
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1962
  %cmp = icmp uge i8* %0, %1, !dbg !1962
  %conv1 = zext i1 %cmp to i64, !dbg !1962
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1962
  %tobool = icmp eq i64 %expval, 0, !dbg !1962
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1962

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1962
  br label %cond.end, !dbg !1962

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1962
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1962
  %2 = load i8, i8* %0, align 1, !dbg !1962
  %conv3 = zext i8 %2 to i32, !dbg !1962
  br label %cond.end, !dbg !1962

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1962
  ret i32 %cond, !dbg !1963
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1964 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1966, metadata !DIExpression()), !dbg !1967
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1968
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1968
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1968
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1968
  %cmp = icmp uge i8* %0, %1, !dbg !1968
  %conv1 = zext i1 %cmp to i64, !dbg !1968
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1968
  %tobool = icmp eq i64 %expval, 0, !dbg !1968
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1968

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1968
  br label %cond.end, !dbg !1968

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1968
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1968
  %2 = load i8, i8* %0, align 1, !dbg !1968
  %conv3 = zext i8 %2 to i32, !dbg !1968
  br label %cond.end, !dbg !1968

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1968
  ret i32 %cond, !dbg !1969
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1970 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1971
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1971
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1971
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1971
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1971
  %cmp = icmp uge i8* %1, %2, !dbg !1971
  %conv1 = zext i1 %cmp to i64, !dbg !1971
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1971
  %tobool = icmp eq i64 %expval, 0, !dbg !1971
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1971

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1971
  br label %cond.end, !dbg !1971

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1971
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1971
  %3 = load i8, i8* %1, align 1, !dbg !1971
  %conv3 = zext i8 %3 to i32, !dbg !1971
  br label %cond.end, !dbg !1971

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1971
  ret i32 %cond, !dbg !1972
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1973 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1977, metadata !DIExpression()), !dbg !1978
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1979
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1980
  ret i32 %call, !dbg !1981
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1982 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1987, metadata !DIExpression()), !dbg !1988
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1989
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1989
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1989
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1989
  %cmp = icmp uge i8* %0, %1, !dbg !1989
  %conv1 = zext i1 %cmp to i64, !dbg !1989
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1989
  %tobool = icmp eq i64 %expval, 0, !dbg !1989
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1989

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1989
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1989
  br label %cond.end, !dbg !1989

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1989
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1989
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1989
  store i8 %conv2, i8* %0, align 1, !dbg !1989
  %conv6 = and i32 %__c, 255, !dbg !1989
  br label %cond.end, !dbg !1989

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1989
  ret i32 %cond, !dbg !1990
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1993, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1994, metadata !DIExpression()), !dbg !1995
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1996
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1996
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1996
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1996
  %cmp = icmp uge i8* %0, %1, !dbg !1996
  %conv1 = zext i1 %cmp to i64, !dbg !1996
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1996
  %tobool = icmp eq i64 %expval, 0, !dbg !1996
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1996

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1996
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1996
  br label %cond.end, !dbg !1996

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1996
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1996
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1996
  store i8 %conv2, i8* %0, align 1, !dbg !1996
  %conv6 = and i32 %__c, 255, !dbg !1996
  br label %cond.end, !dbg !1996

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1996
  ret i32 %cond, !dbg !1997
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1998 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2000, metadata !DIExpression()), !dbg !2001
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2002
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2002
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2002
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2002
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2002
  %cmp = icmp uge i8* %1, %2, !dbg !2002
  %conv1 = zext i1 %cmp to i64, !dbg !2002
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2002
  %tobool = icmp eq i64 %expval, 0, !dbg !2002
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2002

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2002
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2002
  br label %cond.end, !dbg !2002

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2002
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2002
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2002
  store i8 %conv4, i8* %1, align 1, !dbg !2002
  %conv6 = and i32 %__c, 255, !dbg !2002
  br label %cond.end, !dbg !2002

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2002
  ret i32 %cond, !dbg !2003
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2004 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2010, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2012, metadata !DIExpression()), !dbg !2013
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2014
  ret i64 %call, !dbg !2015
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2016 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2018, metadata !DIExpression()), !dbg !2019
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2020
  %0 = load i32, i32* %_flags, align 8, !dbg !2020
  %and = lshr i32 %0, 4, !dbg !2020
  %and.lobit = and i32 %and, 1, !dbg !2020
  ret i32 %and.lobit, !dbg !2021
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2024, metadata !DIExpression()), !dbg !2025
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2026
  %0 = load i32, i32* %_flags, align 8, !dbg !2026
  %and = lshr i32 %0, 5, !dbg !2026
  %and.lobit = and i32 %and, 1, !dbg !2026
  ret i32 %and.lobit, !dbg !2027
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2028 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2031, metadata !DIExpression()), !dbg !2032
  %__c.off = add i32 %__c, 128, !dbg !2033
  %0 = icmp ult i32 %__c.off, 384, !dbg !2033
  br i1 %0, label %cond.true, label %cond.end, !dbg !2033

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2034
  %1 = load i32*, i32** %call, align 8, !dbg !2035
  %idxprom = sext i32 %__c to i64, !dbg !2036
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2036
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2036
  br label %cond.end, !dbg !2037

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2037
  ret i32 %cond, !dbg !2038
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2039 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2041, metadata !DIExpression()), !dbg !2042
  %__c.off = add i32 %__c, 128, !dbg !2043
  %0 = icmp ult i32 %__c.off, 384, !dbg !2043
  br i1 %0, label %cond.true, label %cond.end, !dbg !2043

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2044
  %1 = load i32*, i32** %call, align 8, !dbg !2045
  %idxprom = sext i32 %__c to i64, !dbg !2046
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2046
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2046
  br label %cond.end, !dbg !2047

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2047
  ret i32 %cond, !dbg !2048
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2049 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2054, metadata !DIExpression()), !dbg !2055
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2056
  %conv = trunc i64 %call to i32, !dbg !2057
  ret i32 %conv, !dbg !2058
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2063, metadata !DIExpression()), !dbg !2064
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2065
  ret i64 %call, !dbg !2066
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2067 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2072, metadata !DIExpression()), !dbg !2073
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2074
  ret i64 %call, !dbg !2075
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2076 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2082, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2083, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2084, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2085, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2086, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2087, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2088, metadata !DIExpression()), !dbg !2092
  br label %while.cond, !dbg !2093

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2094
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2092
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2088, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2087, metadata !DIExpression()), !dbg !2092
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2095
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2093

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2096
  %div = lshr i64 %add, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %div, metadata !2089, metadata !DIExpression()), !dbg !2092
  %mul = mul i64 %div, %__size, !dbg !2099
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2090, metadata !DIExpression()), !dbg !2092
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %call, metadata !2091, metadata !DIExpression()), !dbg !2092
  %cmp1 = icmp slt i32 %call, 0, !dbg !2102
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2104

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2105
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2107

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2087, metadata !DIExpression()), !dbg !2092
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2092
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2092
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2088, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2087, metadata !DIExpression()), !dbg !2092
  br label %while.cond, !dbg !2093, !llvm.loop !2109

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2092
  ret i8* %retval.0, !dbg !2111
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2112 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2118, metadata !DIExpression()), !dbg !2119
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2120
  ret double %call, !dbg !2121
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2132, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %base, metadata !2133, metadata !DIExpression()), !dbg !2134
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2135
  ret i64 %call, !dbg !2136
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2137 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2144, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 %base, metadata !2145, metadata !DIExpression()), !dbg !2146
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2147
  ret i64 %call, !dbg !2148
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2149 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %base, metadata !2162, metadata !DIExpression()), !dbg !2163
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2164
  ret i64 %call, !dbg !2165
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %base, metadata !2172, metadata !DIExpression()), !dbg !2173
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2174
  ret i64 %call, !dbg !2175
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2217, metadata !DIExpression()), !dbg !2218
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2219
  ret i32 %call, !dbg !2220
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2221 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2224, metadata !DIExpression()), !dbg !2225
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2226
  ret i32 %call, !dbg !2227
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2228 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2232, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2233, metadata !DIExpression()), !dbg !2234
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2235
  ret i32 %call, !dbg !2236
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2241, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2244, metadata !DIExpression()), !dbg !2245
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2246
  ret i32 %call, !dbg !2247
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2248 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2252, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2253, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2254, metadata !DIExpression()), !dbg !2255
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2254, metadata !DIExpression(DW_OP_deref)), !dbg !2255
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2256
  ret i32 %call, !dbg !2257
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2258 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2262, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2263, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2265, metadata !DIExpression()), !dbg !2266
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2265, metadata !DIExpression(DW_OP_deref)), !dbg !2266
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2267
  ret i32 %call, !dbg !2268
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2269 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2294, metadata !DIExpression()), !dbg !2295
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2296
  ret i32 %call, !dbg !2297
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2301, metadata !DIExpression()), !dbg !2302
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2303
  ret i32 %call, !dbg !2304
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2305 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2310, metadata !DIExpression()), !dbg !2311
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2312
  ret i32 %call, !dbg !2313
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2314 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2318, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2319, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2321, metadata !DIExpression()), !dbg !2322
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2323
  ret i32 %call, !dbg !2324
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_ssa_name_value(%union.tree_node* %name, %union.tree_node* %value) local_unnamed_addr #5 !dbg !2325 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !2329, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !2330, metadata !DIExpression()), !dbg !2331
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2332
  %0 = bitcast %union.tree_node** %version to i32*, !dbg !2332
  %1 = load i32, i32* %0, align 8, !dbg !2332
  %2 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2334
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %2, i64 0, i32 0, !dbg !2334
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base) #7, !dbg !2334
  %cmp = icmp ult i32 %1, %call, !dbg !2335
  br i1 %cmp, label %if.end, label %if.then, !dbg !2336

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %0, align 8, !dbg !2337
  %add = add i32 %3, 1, !dbg !2337
  tail call fastcc void @VEC_tree_heap_safe_grow_cleared(%struct.VEC_tree_heap** nonnull @ssa_name_values, i32 %add) #7, !dbg !2337
  br label %if.end, !dbg !2337

if.end:                                           ; preds = %entry, %if.then
  %4 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2338
  %base5 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %4, i64 0, i32 0, !dbg !2338
  %5 = load i32, i32* %0, align 8, !dbg !2338
  %call11 = tail call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %base5, i32 %5, %union.tree_node* %value) #7, !dbg !2338
  ret void, !dbg !2339
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2340 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2346, metadata !DIExpression()), !dbg !2347
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2348
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2348

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2348
  %0 = load i32, i32* %num, align 8, !dbg !2348
  br label %cond.end, !dbg !2348

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2348
  ret i32 %cond, !dbg !2348
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_safe_grow_cleared(%struct.VEC_tree_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !2349 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @ssa_name_values, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2355, metadata !DIExpression()), !dbg !2357
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2358
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2358
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2358

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !2358
  br label %cond.end, !dbg !2358

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2358
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %call, metadata !2356, metadata !DIExpression()), !dbg !2357
  tail call fastcc void @VEC_tree_heap_safe_grow(%struct.VEC_tree_heap** nonnull @ssa_name_values, i32 %size_) #7, !dbg !2358
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2358
  %tobool1 = icmp eq %struct.VEC_tree_heap* %1, null, !dbg !2358
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2358

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, !dbg !2358
  br label %cond.end5, !dbg !2358

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_tree_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !2358
  %call7 = tail call fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %cond6) #7, !dbg !2358
  %idxprom = sext i32 %call to i64, !dbg !2358
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call7, i64 %idxprom, !dbg !2358
  %2 = bitcast %union.tree_node** %arrayidx to i8*, !dbg !2358
  %sub = sub nsw i32 %size_, %call, !dbg !2358
  %conv = sext i32 %sub to i64, !dbg !2358
  %mul = shl nsw i64 %conv, 3, !dbg !2358
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !2358
  ret void, !dbg !2358
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2359 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2364, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2365, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2366, metadata !DIExpression()), !dbg !2368
  %idxprom = zext i32 %ix_ to i64, !dbg !2369
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2369
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2369
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2367, metadata !DIExpression()), !dbg !2368
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !2369
  ret %union.tree_node* %0, !dbg !2369
}

; Function Attrs: nounwind uwtable
define dso_local void @threadedge_initialize_values() local_unnamed_addr #5 !dbg !2370 {
entry:
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2373
  %cmp = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2373
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2373

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2373
  br label %cond.end, !dbg !2373

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2374
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !2374
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2374
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 2, !dbg !2374
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2374
  %tobool = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !2374
  br i1 %tobool, label %cond.end6, label %cond.true1, !dbg !2374

cond.true1:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !2374
  br label %cond.end6, !dbg !2374

cond.end6:                                        ; preds = %cond.end, %cond.true1
  %cond7 = phi %struct.VEC_tree_base* [ %base, %cond.true1 ], [ null, %cond.end ], !dbg !2374
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond7) #7, !dbg !2374
  %call8 = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %call) #7, !dbg !2374
  store %struct.VEC_tree_heap* %call8, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2375
  ret void, !dbg !2376
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2377 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2381, metadata !DIExpression()), !dbg !2382
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !2383
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !2383
  ret %struct.VEC_tree_heap* %0, !dbg !2383
}

; Function Attrs: nounwind uwtable
define dso_local void @threadedge_finalize_values() local_unnamed_addr #5 !dbg !2384 {
entry:
  tail call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull @ssa_name_values) #7, !dbg !2385
  ret void, !dbg !2386
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !2387 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @ssa_name_values, metadata !2391, metadata !DIExpression()), !dbg !2392
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2393
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2393
  br i1 %tobool, label %if.end, label %if.then, !dbg !2395

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !2395
  tail call void @free(i8* nonnull %1) #6, !dbg !2393
  br label %if.end, !dbg !2393

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2395
  ret void, !dbg !2395
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @potentially_threadable_block(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2396 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2400, metadata !DIExpression()), !dbg !2408
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2409
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !2410
  %tobool = icmp eq i8 %call, 0, !dbg !2410
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !2412

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !2413
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2413
  br i1 %tobool3, label %if.end, label %cleanup, !dbg !2414

if.end:                                           ; preds = %lor.lhs.false
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2415
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2415
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !2415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2415
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2416
  %tobool6 = icmp eq i8 %call4, 0, !dbg !2416
  br i1 %tobool6, label %lor.lhs.false7, label %cleanup, !dbg !2418

lor.lhs.false7:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  %call8 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2419
  %tobool9 = icmp eq %union.gimple_statement_d* %call8, null, !dbg !2419
  br i1 %tobool9, label %cleanup, label %lor.lhs.false10, !dbg !2420

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  %call11 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2421
  %call12 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call11) #7, !dbg !2422
  %cmp = icmp eq i32 %call12, 1, !dbg !2423
  br i1 %cmp, label %if.end24, label %land.lhs.true, !dbg !2424

land.lhs.true:                                    ; preds = %lor.lhs.false10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  %call14 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2425
  %call15 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call14) #7, !dbg !2426
  %cmp16 = icmp eq i32 %call15, 3, !dbg !2427
  br i1 %cmp16, label %if.end24, label %land.lhs.true18, !dbg !2428

land.lhs.true18:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  %call19 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2429
  %call20 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call19) #7, !dbg !2430
  %cmp21 = icmp eq i32 %call20, 5, !dbg !2431
  br i1 %cmp21, label %if.end24, label %cleanup, !dbg !2432

if.end24:                                         ; preds = %land.lhs.true18, %land.lhs.true, %lor.lhs.false10
  br label %cleanup, !dbg !2433

cleanup:                                          ; preds = %land.lhs.true18, %lor.lhs.false7, %if.end, %lor.lhs.false, %entry, %if.end24
  %retval.0 = phi i8 [ 1, %if.end24 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true18 ], [ 0, %lor.lhs.false7 ], [ 0, %if.end ], !dbg !2408
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2434
  ret i8 %retval.0, !dbg !2434
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2435 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2442, metadata !DIExpression()), !dbg !2443
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2444
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2444
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2444
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2444

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2444
  br label %cond.end, !dbg !2444

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2444
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2444
  %cmp = icmp eq i32 %call, 1, !dbg !2445
  %conv2 = zext i1 %cmp to i8, !dbg !2444
  ret i8 %conv2, !dbg !2446
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2447 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2449, metadata !DIExpression()), !dbg !2450
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2451
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2451
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2451
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2451

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2451
  br label %cond.end, !dbg !2451

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2451
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2451
  %cmp = icmp eq i32 %call, 1, !dbg !2452
  %conv2 = zext i1 %cmp to i8, !dbg !2451
  ret i8 %conv2, !dbg !2453
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2454 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2459, metadata !DIExpression()), !dbg !2462
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2460, metadata !DIExpression()), !dbg !2461
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !2464
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2465
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2466
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2467
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2468
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2469
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2470
  ret void, !dbg !2471
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2472 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2476, metadata !DIExpression()), !dbg !2477
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2478
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2478
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2479
  %conv1 = zext i1 %cmp to i8, !dbg !2480
  ret i8 %conv1, !dbg !2481
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2482 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2486, metadata !DIExpression()), !dbg !2487
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2488
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2488
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2489
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2489
  ret %union.gimple_statement_d* %1, !dbg !2490
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2491 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2496, metadata !DIExpression()), !dbg !2497
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2498
  %bf.load = load i32, i32* %0, align 8, !dbg !2498
  %bf.clear = and i32 %bf.load, 255, !dbg !2498
  ret i32 %bf.clear, !dbg !2499
}

; Function Attrs: nounwind uwtable
define dso_local void @thread_across_edge(%union.gimple_statement_d* %dummy_cond, %struct.edge_def* %e, i8 zeroext %handle_dominating_asserts, %struct.VEC_tree_heap** %stack, %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify) local_unnamed_addr #5 !dbg !2500 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %agg.tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dummy_cond, metadata !2507, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2508, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 %handle_dominating_asserts, metadata !2509, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %stack, metadata !2510, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify, metadata !2511, metadata !DIExpression()), !dbg !2542
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !2543
  %0 = load i32, i32* %flags, align 8, !dbg !2543
  %and = and i32 %0, 32, !dbg !2544
  %tobool = icmp eq i32 %and, 0, !dbg !2544
  br i1 %tobool, label %if.end20, label %if.then, !dbg !2545

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8, !dbg !2546
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2547
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2547
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %agg.tmp, %struct.basic_block_def* %2) #7, !dbg !2548
  %call = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %agg.tmp) #7, !dbg !2549
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2529, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2513, metadata !DIExpression(DW_OP_deref)), !dbg !2550
  %call1 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call, i32 5) #7, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call1, metadata !2528, metadata !DIExpression()), !dbg !2550
  br label %for.cond, !dbg !2551

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call1, %if.then ], [ %call14, %for.inc ], !dbg !2552
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2528, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2513, metadata !DIExpression(DW_OP_deref)), !dbg !2550
  %call2 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2553
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2553
  br i1 %tobool3, label %for.body, label %cleanup15, !dbg !2551

for.body:                                         ; preds = %for.cond
  %call4 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !2554
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2530, metadata !DIExpression()), !dbg !2555
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2556
  %bf.load = load i64, i64* %3, align 8, !dbg !2556
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !2558
  %cmp = icmp eq i64 %bf.cast3, 141, !dbg !2558
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2559

land.lhs.true:                                    ; preds = %for.body
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2560
  %4 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2560
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %4, align 8, !dbg !2560
  %call5 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %5) #7, !dbg !2561
  %cmp6 = icmp eq i32 %call5, 16, !dbg !2562
  br i1 %cmp6, label %if.end, label %land.lhs.true7, !dbg !2563

land.lhs.true7:                                   ; preds = %land.lhs.true
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %4, align 8, !dbg !2564
  %call10 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %6) #7, !dbg !2565
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2566
  %cmp12 = icmp eq %struct.basic_block_def* %call10, %7, !dbg !2567
  br i1 %cmp12, label %cleanup, label %if.end, !dbg !2568

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true7, %for.body
  br label %cleanup, !dbg !2569

cleanup:                                          ; preds = %land.lhs.true7, %if.end
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end ], [ 5, %land.lhs.true7 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %for.inc, label %cleanup15

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2513, metadata !DIExpression(DW_OP_deref)), !dbg !2550
  %call14 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2553
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call14, metadata !2528, metadata !DIExpression()), !dbg !2550
  br label %for.cond, !dbg !2553, !llvm.loop !2570

cleanup15:                                        ; preds = %for.cond, %cleanup
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8, !dbg !2572
  %switch = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %switch, label %if.end20, label %fail

if.end20:                                         ; preds = %entry, %cleanup15
  store i32 0, i32* @stmt_count, align 4, !dbg !2573
  %call21 = call fastcc zeroext i8 @record_temporary_equivalences_from_phis(%struct.edge_def* %e, %struct.VEC_tree_heap** %stack) #7, !dbg !2574
  %tobool22 = icmp eq i8 %call21, 0, !dbg !2574
  br i1 %tobool22, label %fail, label %if.end24, !dbg !2576

if.end24:                                         ; preds = %if.end20
  %call25 = call fastcc %union.gimple_statement_d* @record_temporary_equivalences_from_stmts_at_dest(%struct.edge_def* %e, %struct.VEC_tree_heap** %stack, %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify) #7, !dbg !2577
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call25, metadata !2512, metadata !DIExpression()), !dbg !2542
  %tobool26 = icmp eq %union.gimple_statement_d* %call25, null, !dbg !2578
  br i1 %tobool26, label %fail, label %if.end28, !dbg !2580

if.end28:                                         ; preds = %if.end24
  %call29 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call25) #7, !dbg !2581
  %cmp30 = icmp eq i32 %call29, 1, !dbg !2582
  br i1 %cmp30, label %if.then36, label %lor.lhs.false, !dbg !2583

lor.lhs.false:                                    ; preds = %if.end28
  %call31 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call25) #7, !dbg !2584
  %cmp32 = icmp eq i32 %call31, 3, !dbg !2585
  br i1 %cmp32, label %if.then36, label %lor.lhs.false33, !dbg !2586

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %call34 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call25) #7, !dbg !2587
  %cmp35 = icmp eq i32 %call34, 5, !dbg !2588
  br i1 %cmp35, label %if.then36, label %fail, !dbg !2589

if.then36:                                        ; preds = %lor.lhs.false33, %lor.lhs.false, %if.end28
  %call37 = call fastcc %union.tree_node* @simplify_control_stmt_condition(%struct.edge_def* %e, %union.gimple_statement_d* nonnull %call25, %union.gimple_statement_d* %dummy_cond, %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify, i8 zeroext %handle_dominating_asserts) #7, !dbg !2590
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !2534, metadata !DIExpression()), !dbg !2591
  %tobool38 = icmp eq %union.tree_node* %call37, null, !dbg !2592
  br i1 %tobool38, label %fail, label %land.lhs.true39, !dbg !2593

land.lhs.true39:                                  ; preds = %if.then36
  %call40 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %call37) #6, !dbg !2594
  %tobool41 = icmp eq i8 %call40, 0, !dbg !2594
  br i1 %tobool41, label %fail, label %if.then42, !dbg !2595

if.then42:                                        ; preds = %land.lhs.true39
  %dest43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2596
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest43, align 8, !dbg !2596
  %call44 = call %struct.edge_def* @find_taken_edge(%struct.basic_block_def* %8, %union.tree_node* nonnull %call37) #6, !dbg !2597
  call void @llvm.dbg.value(metadata %struct.edge_def* %call44, metadata !2537, metadata !DIExpression()), !dbg !2598
  %tobool46 = icmp eq %struct.edge_def* %call44, null, !dbg !2599
  br i1 %tobool46, label %cond.end, label %cond.true, !dbg !2599

cond.true:                                        ; preds = %if.then42
  %dest47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call44, i64 0, i32 1, !dbg !2600
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest47, align 8, !dbg !2600
  br label %cond.end, !dbg !2599

cond.end:                                         ; preds = %if.then42, %cond.true
  %cond48 = phi %struct.basic_block_def* [ %9, %cond.true ], [ null, %if.then42 ], !dbg !2599
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond48, metadata !2540, metadata !DIExpression()), !dbg !2598
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest43, align 8, !dbg !2601
  %cmp50 = icmp eq %struct.basic_block_def* %cond48, %10, !dbg !2603
  br i1 %cmp50, label %fail, label %if.end53, !dbg !2604

if.end53:                                         ; preds = %cond.end
  call fastcc void @remove_temporary_equivalences(%struct.VEC_tree_heap** %stack) #7, !dbg !2605
  call void @register_jump_thread(%struct.edge_def* %e, %struct.edge_def* %call44) #6, !dbg !2606
  br label %fail, !dbg !2607

fail:                                             ; preds = %land.lhs.true39, %if.then36, %if.end24, %if.end20, %if.end53, %cond.end, %lor.lhs.false33, %cleanup15
  call void @llvm.dbg.label(metadata !2541), !dbg !2608
  call fastcc void @remove_temporary_equivalences(%struct.VEC_tree_heap** %stack) #7, !dbg !2609
  ret void, !dbg !2610
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2611 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 5, metadata !2619, metadata !DIExpression()), !dbg !2620
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !2621
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2622
  store i32 2, i32* %iter_type, align 4, !dbg !2623
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !2624
  ret %struct.ssa_use_operand_d* %call, !dbg !2625
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2626 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2632, metadata !DIExpression()), !dbg !2633
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2634
  %0 = load i8, i8* %done, align 8, !dbg !2634
  ret i8 %0, !dbg !2635
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2636 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2640, metadata !DIExpression()), !dbg !2641
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2642
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2642
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2643
  ret %union.tree_node* %1, !dbg !2644
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2645 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2649, metadata !DIExpression()), !dbg !2650
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2651
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2651
  ret %struct.basic_block_def* %0, !dbg !2652
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2653 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2657, metadata !DIExpression()), !dbg !2659
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2660
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2660
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2662
  br i1 %tobool, label %if.end, label %if.then, !dbg !2663

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !2658, metadata !DIExpression()), !dbg !2659
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !2666
  %2 = load i64, i64* %1, align 8, !dbg !2666
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2667
  store i64 %2, i64* %3, align 8, !dbg !2667
  br label %cleanup, !dbg !2668

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !2669
  %4 = load i32, i32* %phi_i, align 8, !dbg !2669
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2671
  %5 = load i32, i32* %num_phi, align 4, !dbg !2671
  %cmp = icmp slt i32 %4, %5, !dbg !2672
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2673

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2674
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2674
  %inc = add nsw i32 %4, 1, !dbg !2674
  store i32 %inc, i32* %phi_i, align 8, !dbg !2674
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !2674
  br label %cleanup, !dbg !2676

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2677
  store i8 1, i8* %done, align 8, !dbg !2678
  br label %cleanup, !dbg !2679

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !2659
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2680
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @record_temporary_equivalences_from_phis(%struct.edge_def* %e, %struct.VEC_tree_heap** %stack) unnamed_addr #5 !dbg !2681 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2685, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %stack, metadata !2686, metadata !DIExpression()), !dbg !2694
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2695
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2695
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2696
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2696
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2697
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2697
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %2) #6, !dbg !2696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2696
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !2698
  br label %for.cond, !dbg !2699

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2687, metadata !DIExpression(DW_OP_deref)), !dbg !2694
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2700
  %tobool = icmp eq i8 %call, 0, !dbg !2701
  br i1 %tobool, label %for.body, label %cleanup21, !dbg !2702

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2687, metadata !DIExpression(DW_OP_deref)), !dbg !2694
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2703
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2688, metadata !DIExpression()), !dbg !2698
  %3 = load i32, i32* %dest_idx, align 4, !dbg !2704
  %call2 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call1, i32 %3) #7, !dbg !2704
  %call3 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call2) #7, !dbg !2704
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2692, metadata !DIExpression()), !dbg !2698
  %call4 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call1) #7, !dbg !2705
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2693, metadata !DIExpression()), !dbg !2698
  %cmp = icmp eq %union.tree_node* %call3, %call4, !dbg !2706
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !2708

land.lhs.true:                                    ; preds = %for.body
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2709
  %bf.load = load i64, i64* %4, align 8, !dbg !2709
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2710
  %cmp5 = icmp eq i64 %bf.cast1, 141, !dbg !2710
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !2711

land.lhs.true6:                                   ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2712
  %5 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2712
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %5, align 8, !dbg !2712
  %call7 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %6) #7, !dbg !2713
  %cmp8 = icmp eq i32 %call7, 16, !dbg !2714
  br i1 %cmp8, label %land.lhs.true9, label %if.end, !dbg !2715

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %5, align 8, !dbg !2716
  %call12 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %7) #7, !dbg !2717
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2718
  %cmp14 = icmp eq %struct.basic_block_def* %call12, %8, !dbg !2719
  br i1 %cmp14, label %cleanup, label %if.end, !dbg !2720

if.end:                                           ; preds = %for.body, %land.lhs.true9, %land.lhs.true6, %land.lhs.true
  %call15 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call4) #6, !dbg !2721
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2721
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !2723

if.then17:                                        ; preds = %if.end
  %9 = load i32, i32* @stmt_count, align 4, !dbg !2724
  %inc = add nsw i32 %9, 1, !dbg !2724
  store i32 %inc, i32* @stmt_count, align 4, !dbg !2724
  br label %if.end18, !dbg !2725

if.end18:                                         ; preds = %if.end, %if.then17
  call fastcc void @record_temporary_equivalence(%union.tree_node* %call4, %union.tree_node* %call3, %struct.VEC_tree_heap** %stack) #7, !dbg !2726
  br label %cleanup, !dbg !2727

cleanup:                                          ; preds = %land.lhs.true9, %if.end18
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end18 ], [ false, %land.lhs.true9 ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup21

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2687, metadata !DIExpression(DW_OP_deref)), !dbg !2694
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2728
  br label %for.cond, !dbg !2729, !llvm.loop !2730

cleanup21:                                        ; preds = %for.cond, %cleanup
  %retval.2 = phi i8 [ 0, %cleanup ], [ 1, %for.cond ], !dbg !2694
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2732
  ret i8 %retval.2, !dbg !2732
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.gimple_statement_d* @record_temporary_equivalences_from_stmts_at_dest(%struct.edge_def* %e, %struct.VEC_tree_heap** %stack, %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify) unnamed_addr #5 !dbg !2733 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2737, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %stack, metadata !2738, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify, metadata !2739, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !2740, metadata !DIExpression()), !dbg !2763
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2764
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2765
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 94, i32 1, !dbg !2765
  %2 = load i32, i32* %value, align 8, !dbg !2765
  call void @llvm.dbg.value(metadata i32 %2, metadata !2742, metadata !DIExpression()), !dbg !2763
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2766
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2766
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2767
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2767
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %4) #7, !dbg !2766
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2766
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2768
  br label %for.cond, !dbg !2769

for.cond:                                         ; preds = %for.inc189, %entry
  %stmt.0 = phi %union.gimple_statement_d* [ null, %entry ], [ %call1, %for.inc189 ], !dbg !2763
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !2740, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2741, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2770
  %tobool = icmp eq i8 %call, 0, !dbg !2771
  br i1 %tobool, label %for.body, label %cleanup191, !dbg !2772

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2743, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2741, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2774
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2740, metadata !DIExpression()), !dbg !2763
  %call2 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !2775
  %cmp = icmp eq i32 %call2, 18, !dbg !2777
  br i1 %cmp, label %cleanup186, label %lor.lhs.false, !dbg !2778

lor.lhs.false:                                    ; preds = %for.body
  %call3 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !2779
  %cmp4 = icmp eq i32 %call3, 4, !dbg !2780
  br i1 %cmp4, label %cleanup186, label %lor.lhs.false5, !dbg !2781

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call1) #7, !dbg !2782
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2782
  br i1 %tobool7, label %if.end, label %cleanup186, !dbg !2783

if.end:                                           ; preds = %lor.lhs.false5
  %call8 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !2784
  %cmp9 = icmp eq i32 %call8, 7, !dbg !2786
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !2787

land.lhs.true:                                    ; preds = %if.end
  %call11 = call fastcc zeroext i8 @gimple_asm_volatile_p(%union.gimple_statement_d* %call1) #7, !dbg !2788
  %tobool13 = icmp eq i8 %call11, 0, !dbg !2788
  br i1 %tobool13, label %if.end15, label %cleanup186, !dbg !2789

if.end15:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i32, i32* @stmt_count, align 4, !dbg !2790
  %inc = add nsw i32 %6, 1, !dbg !2790
  store i32 %inc, i32* @stmt_count, align 4, !dbg !2790
  %cmp16 = icmp slt i32 %6, %2, !dbg !2791
  br i1 %cmp16, label %if.end19, label %cleanup186, !dbg !2793

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !2794
  %cmp21 = icmp eq i32 %call20, 6, !dbg !2796
  br i1 %cmp21, label %lor.lhs.false23, label %land.lhs.true27, !dbg !2797

lor.lhs.false23:                                  ; preds = %if.end19
  %call24 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call1) #7, !dbg !2798
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2798
  %bf.load = load i64, i64* %7, align 8, !dbg !2798
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2799
  %cmp25 = icmp eq i64 %bf.cast2, 141, !dbg !2799
  br i1 %cmp25, label %if.end44, label %land.lhs.true27, !dbg !2800

land.lhs.true27:                                  ; preds = %lor.lhs.false23, %if.end19
  %call28 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !2801
  %cmp29 = icmp eq i32 %call28, 8, !dbg !2802
  br i1 %cmp29, label %lor.lhs.false31, label %cleanup186, !dbg !2803

lor.lhs.false31:                                  ; preds = %land.lhs.true27
  %call32 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call1) #7, !dbg !2804
  %cmp33 = icmp eq %union.tree_node* %call32, null, !dbg !2805
  br i1 %cmp33, label %cleanup186, label %lor.lhs.false35, !dbg !2806

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %call36 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call1) #7, !dbg !2807
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call36, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2807
  %bf.load38 = load i64, i64* %8, align 8, !dbg !2807
  %bf.cast408 = and i64 %bf.load38, 65535, !dbg !2808
  %cmp41 = icmp eq i64 %bf.cast408, 141, !dbg !2808
  br i1 %cmp41, label %if.end44, label %cleanup186, !dbg !2809

if.end44:                                         ; preds = %lor.lhs.false35, %lor.lhs.false23
  %call45 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call1) #7, !dbg !2810
  %tobool46 = icmp eq i8 %call45, 0, !dbg !2810
  br i1 %tobool46, label %if.end64, label %if.then47, !dbg !2811

if.then47:                                        ; preds = %if.end44
  %call48 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call1) #7, !dbg !2812
  call void @llvm.dbg.value(metadata %union.tree_node* %call48, metadata !2747, metadata !DIExpression()), !dbg !2813
  %tobool49 = icmp eq %union.tree_node* %call48, null, !dbg !2814
  br i1 %tobool49, label %if.end63, label %land.lhs.true50, !dbg !2816

land.lhs.true50:                                  ; preds = %if.then47
  %function_code = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 5, !dbg !2817
  %bf.load51 = load i32, i32* %function_code, align 8, !dbg !2817
  %bf.clear52 = and i32 %bf.load51, 2047, !dbg !2817
  %cmp53 = icmp eq i32 %bf.clear52, 528, !dbg !2818
  br i1 %cmp53, label %cleanup, label %lor.lhs.false55, !dbg !2819

lor.lhs.false55:                                  ; preds = %land.lhs.true50
  %cmp60 = icmp eq i32 %bf.clear52, 428, !dbg !2820
  br i1 %cmp60, label %cleanup, label %if.end63, !dbg !2821

if.end63:                                         ; preds = %if.then47, %lor.lhs.false55
  br label %cleanup, !dbg !2822

cleanup:                                          ; preds = %land.lhs.true50, %lor.lhs.false55, %if.end63
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end63 ], [ 4, %lor.lhs.false55 ], [ 4, %land.lhs.true50 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %if.end64, label %cleanup186

if.end64:                                         ; preds = %if.end44, %cleanup
  %call65 = call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %call1) #6, !dbg !2823
  %tobool67 = icmp eq i8 %call65, 0, !dbg !2823
  br i1 %tobool67, label %if.else, label %land.lhs.true68, !dbg !2824

land.lhs.true68:                                  ; preds = %if.end64
  %call69 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call1) #7, !dbg !2825
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call69, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2825
  %bf.load71 = load i64, i64* %9, align 8, !dbg !2825
  %bf.cast737 = and i64 %bf.load71, 65535, !dbg !2826
  %cmp74 = icmp eq i64 %bf.cast737, 141, !dbg !2826
  br i1 %cmp74, label %if.then76, label %if.else, !dbg !2827

if.then76:                                        ; preds = %land.lhs.true68
  %call77 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call1) #7, !dbg !2828
  call void @llvm.dbg.value(metadata %union.tree_node* %call77, metadata !2743, metadata !DIExpression()), !dbg !2773
  br label %if.end170, !dbg !2829

if.else:                                          ; preds = %if.end64, %land.lhs.true68
  %call78 = call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %call1) #6, !dbg !2830
  %tobool80 = icmp eq i8 %call78, 0, !dbg !2830
  br i1 %tobool80, label %if.else92, label %land.lhs.true81, !dbg !2831

land.lhs.true81:                                  ; preds = %if.else
  %call82 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call1) #7, !dbg !2832
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call82, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2832
  %bf.load84 = load i64, i64* %10, align 8, !dbg !2832
  %bf.cast866 = and i64 %bf.load84, 65535, !dbg !2833
  %cmp87 = icmp eq i64 %bf.cast866, 148, !dbg !2833
  br i1 %cmp87, label %if.then89, label %if.else92, !dbg !2834

if.then89:                                        ; preds = %land.lhs.true81
  %call90 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call1) #7, !dbg !2835
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call90, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2835
  %11 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2835
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2743, metadata !DIExpression()), !dbg !2773
  br label %if.end170, !dbg !2836

if.else92:                                        ; preds = %if.else, %land.lhs.true81
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !2837
  call void @llvm.dbg.value(metadata i32 0, metadata !2757, metadata !DIExpression()), !dbg !2768
  %call93 = call fastcc i32 @num_ssa_operands(%union.gimple_statement_d* %call1, i32 5) #7, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %call93, metadata !2756, metadata !DIExpression()), !dbg !2768
  %conv94 = zext i32 %call93 to i64, !dbg !2839
  %call95 = call i8* @xcalloc(i64 %conv94, i64 8) #6, !dbg !2839
  %12 = bitcast i8* %call95 to %union.tree_node**, !dbg !2839
  call void @llvm.dbg.value(metadata %union.tree_node** %12, metadata !2750, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2754, metadata !DIExpression(DW_OP_deref)), !dbg !2768
  %call96 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call1, i32 5) #7, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call96, metadata !2755, metadata !DIExpression()), !dbg !2768
  br label %for.cond97, !dbg !2840

for.cond97:                                       ; preds = %for.inc, %if.else92
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call96, %if.else92 ], [ %call135, %for.inc ], !dbg !2841
  %i.0 = phi i32 [ 0, %if.else92 ], [ %inc104, %for.inc ], !dbg !2768
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2757, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2755, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2754, metadata !DIExpression(DW_OP_deref)), !dbg !2768
  %call98 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2842
  %tobool99 = icmp eq i8 %call98, 0, !dbg !2842
  br i1 %tobool99, label %for.body101, label %for.end, !dbg !2840

for.body101:                                      ; preds = %for.cond97
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2758, metadata !DIExpression()), !dbg !2843
  %call103 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !2844
  call void @llvm.dbg.value(metadata %union.tree_node* %call103, metadata !2762, metadata !DIExpression()), !dbg !2843
  %inc104 = add i32 %i.0, 1, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %inc104, metadata !2757, metadata !DIExpression()), !dbg !2768
  %idxprom = zext i32 %i.0 to i64, !dbg !2846
  %arrayidx105 = getelementptr inbounds %union.tree_node*, %union.tree_node** %12, i64 %idxprom, !dbg !2846
  store %union.tree_node* %call103, %union.tree_node** %arrayidx105, align 8, !dbg !2847
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call103, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2848
  %bf.load107 = load i64, i64* %13, align 8, !dbg !2848
  %bf.cast1095 = and i64 %bf.load107, 65535, !dbg !2850
  %cmp110 = icmp eq i64 %bf.cast1095, 141, !dbg !2850
  br i1 %cmp110, label %if.then112, label %if.end131, !dbg !2851

if.then112:                                       ; preds = %for.body101
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call103, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2852
  %14 = bitcast %union.tree_node** %version to i32*, !dbg !2852
  %15 = load i32, i32* %14, align 8, !dbg !2852
  %16 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2852
  %base114 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %16, i64 0, i32 0, !dbg !2852
  %call115 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base114) #7, !dbg !2852
  %cmp116 = icmp ult i32 %15, %call115, !dbg !2852
  br i1 %cmp116, label %cond.true118, label %if.end131, !dbg !2852

cond.true118:                                     ; preds = %if.then112
  %17 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2852
  %base121 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %17, i64 0, i32 0, !dbg !2852
  %18 = load i32, i32* %14, align 8, !dbg !2852
  %call127 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base121, i32 %18) #7, !dbg !2852
  br label %if.end131, !dbg !2852

if.end131:                                        ; preds = %cond.true118, %if.then112, %for.body101
  %tmp102.0 = phi %union.tree_node* [ null, %for.body101 ], [ %call127, %cond.true118 ], [ null, %if.then112 ], !dbg !2843
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp102.0, metadata !2758, metadata !DIExpression()), !dbg !2843
  %tobool132 = icmp eq %union.tree_node* %tmp102.0, null, !dbg !2853
  br i1 %tobool132, label %for.inc, label %if.then133, !dbg !2855

if.then133:                                       ; preds = %if.end131
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0, %union.tree_node* nonnull %tmp102.0) #7, !dbg !2856
  br label %for.inc, !dbg !2856

for.inc:                                          ; preds = %if.end131, %if.then133
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2754, metadata !DIExpression(DW_OP_deref)), !dbg !2768
  %call135 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2842
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call135, metadata !2755, metadata !DIExpression()), !dbg !2768
  br label %for.cond97, !dbg !2842, !llvm.loop !2857

for.end:                                          ; preds = %for.cond97
  %call136 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call1) #7, !dbg !2859
  %tobool137 = icmp eq i8 %call136, 0, !dbg !2859
  br i1 %tobool137, label %if.else140, label %if.then138, !dbg !2861

if.then138:                                       ; preds = %for.end
  %call139 = call %union.tree_node* @fold_call_stmt(%union.gimple_statement_d* %call1, i8 zeroext 0) #6, !dbg !2862
  call void @llvm.dbg.value(metadata %union.tree_node* %call139, metadata !2743, metadata !DIExpression()), !dbg !2773
  br label %if.end142, !dbg !2863

if.else140:                                       ; preds = %for.end
  %call141 = call fastcc %union.tree_node* @fold_assignment_stmt(%union.gimple_statement_d* %call1) #7, !dbg !2864
  call void @llvm.dbg.value(metadata %union.tree_node* %call141, metadata !2743, metadata !DIExpression()), !dbg !2773
  br label %if.end142

if.end142:                                        ; preds = %if.else140, %if.then138
  %cached_lhs.0 = phi %union.tree_node* [ %call139, %if.then138 ], [ %call141, %if.else140 ], !dbg !2865
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.0, metadata !2743, metadata !DIExpression()), !dbg !2773
  %tobool143 = icmp eq %union.tree_node* %cached_lhs.0, null, !dbg !2866
  br i1 %tobool143, label %if.then154, label %lor.lhs.false144, !dbg !2868

lor.lhs.false144:                                 ; preds = %if.end142
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %cached_lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2869
  %bf.load146 = load i64, i64* %19, align 8, !dbg !2869
  %bf.cast1484 = and i64 %bf.load146, 65535, !dbg !2870
  %cmp149 = icmp eq i64 %bf.cast1484, 141, !dbg !2870
  br i1 %cmp149, label %if.end156, label %land.lhs.true151, !dbg !2871

land.lhs.true151:                                 ; preds = %lor.lhs.false144
  %call152 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %cached_lhs.0) #6, !dbg !2872
  %tobool153 = icmp eq i8 %call152, 0, !dbg !2872
  br i1 %tobool153, label %if.then154, label %if.end156, !dbg !2873

if.then154:                                       ; preds = %land.lhs.true151, %if.end142
  %call155 = call %union.tree_node* %simplify(%union.gimple_statement_d* %call1, %union.gimple_statement_d* %call1) #6, !dbg !2874
  call void @llvm.dbg.value(metadata %union.tree_node* %call155, metadata !2743, metadata !DIExpression()), !dbg !2773
  br label %if.end156, !dbg !2875

if.end156:                                        ; preds = %land.lhs.true151, %lor.lhs.false144, %if.then154
  %cached_lhs.1 = phi %union.tree_node* [ %cached_lhs.0, %land.lhs.true151 ], [ %call155, %if.then154 ], [ %cached_lhs.0, %lor.lhs.false144 ], !dbg !2768
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.1, metadata !2743, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 0, metadata !2757, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2754, metadata !DIExpression(DW_OP_deref)), !dbg !2768
  %call157 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call1, i32 5) #7, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call157, metadata !2755, metadata !DIExpression()), !dbg !2768
  br label %for.cond158, !dbg !2876

for.cond158:                                      ; preds = %for.body162, %if.end156
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call157, %if.end156 ], [ %call167, %for.body162 ], !dbg !2878
  %i.1 = phi i32 [ 0, %if.end156 ], [ %inc163, %for.body162 ], !dbg !2768
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2757, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !2755, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2754, metadata !DIExpression(DW_OP_deref)), !dbg !2768
  %call159 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2879
  %tobool160 = icmp eq i8 %call159, 0, !dbg !2879
  br i1 %tobool160, label %for.body162, label %for.end168, !dbg !2876

for.body162:                                      ; preds = %for.cond158
  %inc163 = add i32 %i.1, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %inc163, metadata !2757, metadata !DIExpression()), !dbg !2768
  %idxprom164 = zext i32 %i.1 to i64, !dbg !2881
  %arrayidx165 = getelementptr inbounds %union.tree_node*, %union.tree_node** %12, i64 %idxprom164, !dbg !2881
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx165, align 8, !dbg !2881
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1, %union.tree_node* %20) #7, !dbg !2881
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2754, metadata !DIExpression(DW_OP_deref)), !dbg !2768
  %call167 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2879
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call167, metadata !2755, metadata !DIExpression()), !dbg !2768
  br label %for.cond158, !dbg !2879, !llvm.loop !2882

for.end168:                                       ; preds = %for.cond158
  call void @free(i8* %call95) #6, !dbg !2884
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !2885
  br label %if.end170

if.end170:                                        ; preds = %if.then89, %for.end168, %if.then76
  %cached_lhs.3 = phi %union.tree_node* [ %call77, %if.then76 ], [ %11, %if.then89 ], [ %cached_lhs.1, %for.end168 ], !dbg !2886
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.3, metadata !2743, metadata !DIExpression()), !dbg !2773
  %tobool171 = icmp eq %union.tree_node* %cached_lhs.3, null, !dbg !2887
  br i1 %tobool171, label %cleanup186, label %land.lhs.true172, !dbg !2889

land.lhs.true172:                                 ; preds = %if.end170
  %21 = getelementptr inbounds %union.tree_node, %union.tree_node* %cached_lhs.3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2890
  %bf.load174 = load i64, i64* %21, align 8, !dbg !2890
  %bf.cast1763 = and i64 %bf.load174, 65535, !dbg !2891
  %cmp177 = icmp eq i64 %bf.cast1763, 141, !dbg !2891
  br i1 %cmp177, label %if.then183, label %lor.lhs.false179, !dbg !2892

lor.lhs.false179:                                 ; preds = %land.lhs.true172
  %call180 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %cached_lhs.3) #6, !dbg !2893
  %tobool182 = icmp eq i8 %call180, 0, !dbg !2893
  br i1 %tobool182, label %cleanup186, label %if.then183, !dbg !2894

if.then183:                                       ; preds = %lor.lhs.false179, %land.lhs.true172
  %call184 = call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call1) #6, !dbg !2895
  call fastcc void @record_temporary_equivalence(%union.tree_node* %call184, %union.tree_node* nonnull %cached_lhs.3, %struct.VEC_tree_heap** %stack) #7, !dbg !2896
  br label %cleanup186, !dbg !2896

cleanup186:                                       ; preds = %land.lhs.true, %lor.lhs.false35, %land.lhs.true27, %lor.lhs.false179, %if.end170, %if.end15, %lor.lhs.false5, %if.then183, %lor.lhs.false31, %for.body, %lor.lhs.false, %cleanup
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 4, %lor.lhs.false5 ], [ 4, %lor.lhs.false ], [ 4, %for.body ], [ 1, %land.lhs.true ], [ 1, %if.end15 ], [ 4, %lor.lhs.false35 ], [ 4, %lor.lhs.false31 ], [ 4, %land.lhs.true27 ], [ 0, %if.then183 ], [ 0, %lor.lhs.false179 ], [ 0, %if.end170 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup191 [
    i32 0, label %for.inc189
    i32 4, label %for.inc189
  ]

for.inc189:                                       ; preds = %cleanup186, %cleanup186
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2741, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2897
  br label %for.cond, !dbg !2898, !llvm.loop !2899

cleanup191:                                       ; preds = %for.cond, %cleanup186
  %retval.2 = phi %union.gimple_statement_d* [ null, %cleanup186 ], [ %stmt.0, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2901
  ret %union.gimple_statement_d* %retval.2, !dbg !2901
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @simplify_control_stmt_condition(%struct.edge_def* %e, %union.gimple_statement_d* %stmt, %union.gimple_statement_d* %dummy_cond, %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify, i8 zeroext %handle_dominating_asserts) unnamed_addr #5 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2906, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2907, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dummy_cond, metadata !2908, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %union.tree_node* (%union.gimple_statement_d*, %union.gimple_statement_d*)* %simplify, metadata !2909, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8 %handle_dominating_asserts, metadata !2910, metadata !DIExpression()), !dbg !2928
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %call, metadata !2913, metadata !DIExpression()), !dbg !2928
  switch i32 %call, label %if.else119 [
    i32 1, label %if.then
    i32 5, label %if.then113
    i32 3, label %if.then117
  ], !dbg !2930

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !2931
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2914, metadata !DIExpression()), !dbg !2932
  %call2 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %stmt) #7, !dbg !2933
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2917, metadata !DIExpression()), !dbg !2932
  %call3 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %stmt) #7, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2918, metadata !DIExpression()), !dbg !2932
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2935
  %bf.load = load i64, i64* %0, align 8, !dbg !2935
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !2936
  %cmp4 = icmp eq i64 %bf.cast5, 141, !dbg !2936
  br i1 %cmp4, label %if.then5, label %if.end25, !dbg !2937

if.then5:                                         ; preds = %if.then
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2938
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !2938
  %2 = load i32, i32* %1, align 8, !dbg !2938
  %3 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2938
  %base6 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %3, i64 0, i32 0, !dbg !2938
  %call8 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base6) #7, !dbg !2938
  %cmp9 = icmp ult i32 %2, %call8, !dbg !2938
  br i1 %cmp9, label %cond.true10, label %cond.end21, !dbg !2938

cond.true10:                                      ; preds = %if.then5
  %4 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2938
  %base13 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %4, i64 0, i32 0, !dbg !2938
  %5 = load i32, i32* %1, align 8, !dbg !2938
  %call19 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base13, i32 %5) #7, !dbg !2938
  br label %cond.end21, !dbg !2938

cond.end21:                                       ; preds = %if.then5, %cond.true10
  %cond22 = phi %union.tree_node* [ %call19, %cond.true10 ], [ null, %if.then5 ], !dbg !2938
  call void @llvm.dbg.value(metadata %union.tree_node* %cond22, metadata !2919, metadata !DIExpression()), !dbg !2939
  %tobool23 = icmp eq %union.tree_node* %cond22, null, !dbg !2940
  %spec.select = select i1 %tobool23, %union.tree_node* %call1, %union.tree_node* %cond22, !dbg !2942
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !2914, metadata !DIExpression()), !dbg !2932
  br label %if.end25, !dbg !2943

if.end25:                                         ; preds = %cond.end21, %if.then
  %op0.1 = phi %union.tree_node* [ %spec.select, %cond.end21 ], [ %call1, %if.then ], !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.1, metadata !2914, metadata !DIExpression()), !dbg !2932
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2944
  %bf.load27 = load i64, i64* %6, align 8, !dbg !2944
  %bf.cast296 = and i64 %bf.load27, 65535, !dbg !2945
  %cmp30 = icmp eq i64 %bf.cast296, 141, !dbg !2945
  br i1 %cmp30, label %if.then31, label %if.end59, !dbg !2946

if.then31:                                        ; preds = %if.end25
  %version34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2947
  %7 = bitcast %union.tree_node** %version34 to i32*, !dbg !2947
  %8 = load i32, i32* %7, align 8, !dbg !2947
  %9 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2947
  %base37 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %9, i64 0, i32 0, !dbg !2947
  %call41 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base37) #7, !dbg !2947
  %cmp42 = icmp ult i32 %8, %call41, !dbg !2947
  br i1 %cmp42, label %cond.true43, label %cond.end54, !dbg !2947

cond.true43:                                      ; preds = %if.then31
  %10 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !2947
  %base46 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %10, i64 0, i32 0, !dbg !2947
  %11 = load i32, i32* %7, align 8, !dbg !2947
  %call52 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base46, i32 %11) #7, !dbg !2947
  br label %cond.end54, !dbg !2947

cond.end54:                                       ; preds = %if.then31, %cond.true43
  %cond55 = phi %union.tree_node* [ %call52, %cond.true43 ], [ null, %if.then31 ], !dbg !2947
  call void @llvm.dbg.value(metadata %union.tree_node* %cond55, metadata !2922, metadata !DIExpression()), !dbg !2948
  %tobool56 = icmp eq %union.tree_node* %cond55, null, !dbg !2949
  %spec.select1 = select i1 %tobool56, %union.tree_node* %call2, %union.tree_node* %cond55, !dbg !2951
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select1, metadata !2917, metadata !DIExpression()), !dbg !2932
  br label %if.end59, !dbg !2952

if.end59:                                         ; preds = %cond.end54, %if.end25
  %op1.1 = phi %union.tree_node* [ %spec.select1, %cond.end54 ], [ %call2, %if.end25 ], !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op1.1, metadata !2917, metadata !DIExpression()), !dbg !2932
  %tobool60 = icmp eq i8 %handle_dominating_asserts, 0, !dbg !2953
  br i1 %tobool60, label %if.end79, label %if.then61, !dbg !2955

if.then61:                                        ; preds = %if.end59
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2956
  %bf.load63 = load i64, i64* %12, align 8, !dbg !2956
  %bf.cast659 = and i64 %bf.load63, 65535, !dbg !2959
  %cmp66 = icmp eq i64 %bf.cast659, 141, !dbg !2959
  br i1 %cmp66, label %if.then67, label %if.end69, !dbg !2960

if.then67:                                        ; preds = %if.then61
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2961
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2961
  %call68 = tail call fastcc %union.tree_node* @lhs_of_dominating_assert(%union.tree_node* %op0.1, %struct.basic_block_def* %13, %union.gimple_statement_d* %stmt) #7, !dbg !2962
  call void @llvm.dbg.value(metadata %union.tree_node* %call68, metadata !2914, metadata !DIExpression()), !dbg !2932
  br label %if.end69, !dbg !2963

if.end69:                                         ; preds = %if.then67, %if.then61
  %op0.2 = phi %union.tree_node* [ %call68, %if.then67 ], [ %op0.1, %if.then61 ], !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.2, metadata !2914, metadata !DIExpression()), !dbg !2932
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2964
  %bf.load71 = load i64, i64* %14, align 8, !dbg !2964
  %bf.cast7310 = and i64 %bf.load71, 65535, !dbg !2966
  %cmp74 = icmp eq i64 %bf.cast7310, 141, !dbg !2966
  br i1 %cmp74, label %if.then75, label %if.end79, !dbg !2967

if.then75:                                        ; preds = %if.end69
  %src76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2968
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src76, align 8, !dbg !2968
  %call77 = tail call fastcc %union.tree_node* @lhs_of_dominating_assert(%union.tree_node* %op1.1, %struct.basic_block_def* %15, %union.gimple_statement_d* %stmt) #7, !dbg !2969
  call void @llvm.dbg.value(metadata %union.tree_node* %call77, metadata !2917, metadata !DIExpression()), !dbg !2932
  br label %if.end79, !dbg !2970

if.end79:                                         ; preds = %if.end59, %if.end69, %if.then75
  %op0.3 = phi %union.tree_node* [ %op0.1, %if.end59 ], [ %op0.2, %if.then75 ], [ %op0.2, %if.end69 ], !dbg !2932
  %op1.3 = phi %union.tree_node* [ %op1.1, %if.end59 ], [ %call77, %if.then75 ], [ %op1.1, %if.end69 ], !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op1.3, metadata !2917, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.3, metadata !2914, metadata !DIExpression()), !dbg !2932
  %call80 = tail call zeroext i8 @tree_swap_operands_p(%union.tree_node* %op0.3, %union.tree_node* %op1.3, i8 zeroext 0) #6, !dbg !2971
  %tobool81 = icmp eq i8 %call80, 0, !dbg !2971
  br i1 %tobool81, label %if.end85, label %if.then82, !dbg !2972

if.then82:                                        ; preds = %if.end79
  %call84 = tail call i32 @swap_tree_comparison(i32 %call3) #6, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %call84, metadata !2918, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.3, metadata !2925, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata %union.tree_node* %op1.3, metadata !2914, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.3, metadata !2917, metadata !DIExpression()), !dbg !2932
  br label %if.end85, !dbg !2975

if.end85:                                         ; preds = %if.end79, %if.then82
  %op0.4 = phi %union.tree_node* [ %op1.3, %if.then82 ], [ %op0.3, %if.end79 ], !dbg !2932
  %op1.4 = phi %union.tree_node* [ %op0.3, %if.then82 ], [ %op1.3, %if.end79 ], !dbg !2932
  %cond_code.0 = phi i32 [ %call84, %if.then82 ], [ %call3, %if.end79 ], !dbg !2932
  call void @llvm.dbg.value(metadata i32 %cond_code.0, metadata !2918, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op1.4, metadata !2917, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.4, metadata !2914, metadata !DIExpression()), !dbg !2932
  tail call fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %dummy_cond, i32 %cond_code.0) #7, !dbg !2976
  tail call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %dummy_cond, %union.tree_node* %op0.4) #7, !dbg !2977
  tail call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %dummy_cond, %union.tree_node* %op1.4) #7, !dbg !2978
  tail call void @fold_defer_overflow_warnings() #6, !dbg !2979
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2980
  %call86 = tail call %union.tree_node* @fold_binary_loc(i32 0, i32 %cond_code.0, %union.tree_node* %16, %union.tree_node* %op0.4, %union.tree_node* %op1.4) #6, !dbg !2980
  call void @llvm.dbg.value(metadata %union.tree_node* %call86, metadata !2912, metadata !DIExpression()), !dbg !2928
  %tobool87 = icmp eq %union.tree_node* %call86, null, !dbg !2981
  br i1 %tobool87, label %if.end99, label %while.cond.preheader, !dbg !2983

while.cond.preheader:                             ; preds = %if.end85
  br label %while.cond, !dbg !2984

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %cached_lhs.0 = phi %union.tree_node* [ %18, %while.body ], [ %call86, %while.cond.preheader ], !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.0, metadata !2912, metadata !DIExpression()), !dbg !2928
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %cached_lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2985
  %bf.load90 = load i64, i64* %17, align 8, !dbg !2985
  %bf.cast927 = and i64 %bf.load90, 65535, !dbg !2985
  %cmp93 = icmp eq i64 %bf.cast927, 116, !dbg !2985
  %cmp98 = icmp eq i64 %bf.cast927, 113, !dbg !2985
  %or.cond = or i1 %cmp93, %cmp98, !dbg !2985
  br i1 %or.cond, label %while.body, label %if.end99.loopexit, !dbg !2985

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %cached_lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2986
  %18 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2986
  call void @llvm.dbg.value(metadata %union.tree_node* %18, metadata !2912, metadata !DIExpression()), !dbg !2928
  br label %while.cond, !dbg !2984, !llvm.loop !2987

if.end99.loopexit:                                ; preds = %while.cond
  %cached_lhs.0.lcssa = phi %union.tree_node* [ %cached_lhs.0, %while.cond ], !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.0.lcssa, metadata !2912, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.0.lcssa, metadata !2912, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.0.lcssa, metadata !2912, metadata !DIExpression()), !dbg !2928
  br label %if.end99, !dbg !2988

if.end99:                                         ; preds = %if.end99.loopexit, %if.end85
  %cached_lhs.1 = phi %union.tree_node* [ null, %if.end85 ], [ %cached_lhs.0.lcssa, %if.end99.loopexit ], !dbg !2989
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.1, metadata !2912, metadata !DIExpression()), !dbg !2928
  %tobool100 = icmp eq %union.tree_node* %cached_lhs.1, null, !dbg !2988
  br i1 %tobool100, label %land.end, label %land.rhs, !dbg !2990

land.rhs:                                         ; preds = %if.end99
  %call101 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %cached_lhs.1) #6, !dbg !2991
  %tobool102 = icmp ne i8 %call101, 0, !dbg !2990
  %phitmp = zext i1 %tobool102 to i8
  br label %land.end

land.end:                                         ; preds = %if.end99, %land.rhs
  %19 = phi i8 [ 0, %if.end99 ], [ %phitmp, %land.rhs ]
  tail call void @fold_undefer_overflow_warnings(i8 zeroext %19, %union.gimple_statement_d* %stmt, i32 2) #6, !dbg !2992
  br i1 %tobool100, label %if.then107, label %lor.lhs.false, !dbg !2993

lor.lhs.false:                                    ; preds = %land.end
  %call105 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %cached_lhs.1) #6, !dbg !2995
  %tobool106 = icmp eq i8 %call105, 0, !dbg !2995
  br i1 %tobool106, label %if.then107, label %cleanup, !dbg !2996

if.then107:                                       ; preds = %lor.lhs.false, %land.end
  %call108 = tail call %union.tree_node* %simplify(%union.gimple_statement_d* %dummy_cond, %union.gimple_statement_d* %stmt) #6, !dbg !2997
  call void @llvm.dbg.value(metadata %union.tree_node* %call108, metadata !2912, metadata !DIExpression()), !dbg !2928
  br label %cleanup, !dbg !2998

if.then113:                                       ; preds = %entry
  %call114 = tail call fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %stmt) #7, !dbg !2999
  call void @llvm.dbg.value(metadata %union.tree_node* %call114, metadata !2911, metadata !DIExpression()), !dbg !2928
  br label %if.end121, !dbg !3001

if.then117:                                       ; preds = %entry
  %call118 = tail call fastcc %union.tree_node* @gimple_goto_dest(%union.gimple_statement_d* %stmt) #7, !dbg !3002
  call void @llvm.dbg.value(metadata %union.tree_node* %call118, metadata !2911, metadata !DIExpression()), !dbg !2928
  br label %if.end121, !dbg !3004

if.else119:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 550, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3005
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.else119, %if.then113
  %cond.1 = phi %union.tree_node* [ %call114, %if.then113 ], [ %call118, %if.then117 ], [ undef, %if.else119 ], !dbg !3006
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.1, metadata !2911, metadata !DIExpression()), !dbg !2928
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %cond.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3007
  %bf.load123 = load i64, i64* %20, align 8, !dbg !3007
  %bf.cast1252 = and i64 %bf.load123, 65535, !dbg !3009
  %cmp126 = icmp eq i64 %bf.cast1252, 141, !dbg !3009
  br i1 %cmp126, label %if.then128, label %cleanup, !dbg !3010

if.then128:                                       ; preds = %if.end121
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.1, metadata !2912, metadata !DIExpression()), !dbg !2928
  %tobool129 = icmp eq %union.tree_node* %cond.1, null, !dbg !3011
  br i1 %tobool129, label %if.end185, label %land.lhs.true, !dbg !3014

land.lhs.true:                                    ; preds = %if.then128
  br i1 true, label %land.lhs.true136, label %land.lhs.true.if.end185_crit_edge, !dbg !3015

land.lhs.true.if.end185_crit_edge:                ; preds = %land.lhs.true
  br label %if.end185, !dbg !3015

land.lhs.true136:                                 ; preds = %land.lhs.true
  %version138 = getelementptr inbounds %union.tree_node, %union.tree_node* %cond.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3016
  %21 = bitcast %union.tree_node** %version138 to i32*, !dbg !3016
  %22 = load i32, i32* %21, align 8, !dbg !3016
  %23 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3016
  %base141 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %23, i64 0, i32 0, !dbg !3016
  %call145 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base141) #7, !dbg !3016
  %cmp146 = icmp ult i32 %22, %call145, !dbg !3016
  br i1 %cmp146, label %cond.true148, label %if.end185, !dbg !3017

cond.true148:                                     ; preds = %land.lhs.true136
  %24 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3016
  %base151 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %24, i64 0, i32 0, !dbg !3016
  %25 = load i32, i32* %21, align 8, !dbg !3016
  %call157 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base151, i32 %25) #7, !dbg !3016
  %tobool158 = icmp eq %union.tree_node* %call157, null, !dbg !3016
  br i1 %tobool158, label %if.end185, label %if.then160, !dbg !3016

if.then160:                                       ; preds = %cond.true148
  %26 = load i32, i32* %21, align 8, !dbg !3018
  %27 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3018
  %base165 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %27, i64 0, i32 0, !dbg !3018
  %call169 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base165) #7, !dbg !3018
  %cmp170 = icmp ult i32 %26, %call169, !dbg !3018
  br i1 %cmp170, label %cond.true172, label %if.end185, !dbg !3018

cond.true172:                                     ; preds = %if.then160
  %28 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3018
  %base175 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %28, i64 0, i32 0, !dbg !3018
  %29 = load i32, i32* %21, align 8, !dbg !3018
  %call181 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base175, i32 %29) #7, !dbg !3018
  br label %if.end185, !dbg !3018

if.end185:                                        ; preds = %land.lhs.true.if.end185_crit_edge, %cond.true148, %if.then128, %cond.true172, %if.then160, %land.lhs.true136
  %cached_lhs.3 = phi %union.tree_node* [ %cond.1, %cond.true148 ], [ undef, %land.lhs.true.if.end185_crit_edge ], [ null, %if.then128 ], [ %cond.1, %land.lhs.true136 ], [ %call181, %cond.true172 ], [ null, %if.then160 ], !dbg !3019
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.3, metadata !2912, metadata !DIExpression()), !dbg !2928
  %tobool187 = icmp eq i8 %handle_dominating_asserts, 0, !dbg !3020
  br i1 %tobool187, label %if.end198, label %land.lhs.true188, !dbg !3022

land.lhs.true188:                                 ; preds = %if.end185
  %30 = getelementptr inbounds %union.tree_node, %union.tree_node* %cached_lhs.3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3023
  %bf.load190 = load i64, i64* %30, align 8, !dbg !3023
  %bf.cast1923 = and i64 %bf.load190, 65535, !dbg !3024
  %cmp193 = icmp eq i64 %bf.cast1923, 141, !dbg !3024
  br i1 %cmp193, label %if.then195, label %if.end198, !dbg !3025

if.then195:                                       ; preds = %land.lhs.true188
  %src196 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3026
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %src196, align 8, !dbg !3026
  %call197 = tail call fastcc %union.tree_node* @lhs_of_dominating_assert(%union.tree_node* %cached_lhs.3, %struct.basic_block_def* %31, %union.gimple_statement_d* %stmt) #7, !dbg !3027
  call void @llvm.dbg.value(metadata %union.tree_node* %call197, metadata !2912, metadata !DIExpression()), !dbg !2928
  br label %if.end198, !dbg !3028

if.end198:                                        ; preds = %if.end185, %if.then195, %land.lhs.true188
  %cached_lhs.4 = phi %union.tree_node* [ %call197, %if.then195 ], [ %cached_lhs.3, %land.lhs.true188 ], [ %cached_lhs.3, %if.end185 ], !dbg !3019
  call void @llvm.dbg.value(metadata %union.tree_node* %cached_lhs.4, metadata !2912, metadata !DIExpression()), !dbg !2928
  %tobool199 = icmp eq %union.tree_node* %cached_lhs.4, null, !dbg !3029
  br i1 %tobool199, label %cleanup, label %land.lhs.true200, !dbg !3031

land.lhs.true200:                                 ; preds = %if.end198
  %call201 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %cached_lhs.4) #6, !dbg !3032
  %tobool202 = icmp eq i8 %call201, 0, !dbg !3032
  br i1 %tobool202, label %if.then203, label %cleanup, !dbg !3033

if.then203:                                       ; preds = %land.lhs.true200
  %call204 = tail call %union.tree_node* %simplify(%union.gimple_statement_d* %stmt, %union.gimple_statement_d* %stmt) #6, !dbg !3034
  call void @llvm.dbg.value(metadata %union.tree_node* %call204, metadata !2912, metadata !DIExpression()), !dbg !2928
  br label %cleanup, !dbg !3035

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true200, %if.end198, %if.then203, %if.end121, %if.then107
  %retval.0 = phi %union.tree_node* [ %cached_lhs.1, %lor.lhs.false ], [ %call108, %if.then107 ], [ %cached_lhs.4, %land.lhs.true200 ], [ %call204, %if.then203 ], [ null, %if.end198 ], [ null, %if.end121 ], !dbg !2928
  ret %union.tree_node* %retval.0, !dbg !3036
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_taken_edge(%struct.basic_block_def*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_temporary_equivalences(%struct.VEC_tree_heap** %stack) unnamed_addr #5 !dbg !3037 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %stack, metadata !3039, metadata !DIExpression()), !dbg !3043
  br label %while.cond, !dbg !3044

while.cond:                                       ; preds = %cleanup, %entry
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %stack, align 8, !dbg !3045
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3045
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3045

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3045
  br label %cond.end, !dbg !3045

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !3045
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !3045
  %cmp = icmp eq i32 %call, 0, !dbg !3046
  br i1 %cmp, label %while.end, label %while.body, !dbg !3044

while.body:                                       ; preds = %cond.end
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %stack, align 8, !dbg !3047
  %tobool1 = icmp eq %struct.VEC_tree_heap* %1, null, !dbg !3047
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3047

cond.true2:                                       ; preds = %while.body
  %base3 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, !dbg !3047
  br label %cond.end5, !dbg !3047

cond.end5:                                        ; preds = %while.body, %cond.true2
  %cond6 = phi %struct.VEC_tree_base* [ %base3, %cond.true2 ], [ null, %while.body ], !dbg !3047
  %call7 = tail call fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %cond6) #7, !dbg !3047
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3042, metadata !DIExpression()), !dbg !3048
  %cmp8 = icmp eq %union.tree_node* %call7, null, !dbg !3049
  br i1 %cmp8, label %cleanup, label %if.end, !dbg !3051

if.end:                                           ; preds = %cond.end5
  %2 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %stack, align 8, !dbg !3052
  %tobool9 = icmp eq %struct.VEC_tree_heap* %2, null, !dbg !3052
  br i1 %tobool9, label %cond.end13, label %cond.true10, !dbg !3052

cond.true10:                                      ; preds = %if.end
  %base11 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %2, i64 0, i32 0, !dbg !3052
  br label %cond.end13, !dbg !3052

cond.end13:                                       ; preds = %if.end, %cond.true10
  %cond14 = phi %struct.VEC_tree_base* [ %base11, %cond.true10 ], [ null, %if.end ], !dbg !3052
  %call15 = tail call fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %cond14) #7, !dbg !3052
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3040, metadata !DIExpression()), !dbg !3048
  tail call void @set_ssa_name_value(%union.tree_node* nonnull %call7, %union.tree_node* %call15) #7, !dbg !3053
  br label %cleanup, !dbg !3054

cleanup:                                          ; preds = %cond.end5, %cond.end13
  %cleanup.dest.slot.0 = phi i1 [ true, %cond.end13 ], [ false, %cond.end5 ]
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end, !llvm.loop !3055

while.end:                                        ; preds = %cond.end, %cleanup
  ret void, !dbg !3056
}

declare dso_local void @register_jump_thread(%struct.edge_def*, %struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(%struct.VEC_tree_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3057 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @ssa_name_values, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3060, metadata !DIExpression()), !dbg !3061
  %cmp = icmp sgt i32 %size_, -1, !dbg !3062
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3062

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3062
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3062
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3062

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3062
  br label %cond.end, !dbg !3062

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !3062
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !3062
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3062
  %tobool2 = icmp eq %struct.VEC_tree_heap* %1, null, !dbg !3062
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !3062

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, i32 0, !dbg !3062
  %2 = load i32, i32* %num, align 8, !dbg !3062
  br label %cond.end11, !dbg !3062

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !3062
  %sub = sub nsw i32 %size_, %cond12, !dbg !3062
  %call13 = tail call fastcc i32 @VEC_tree_heap_reserve_exact(%struct.VEC_tree_heap** nonnull @ssa_name_values, i32 %sub) #7, !dbg !3062
  %3 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3062
  %num20 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %3, i64 0, i32 0, i32 0, !dbg !3062
  store i32 %size_, i32* %num20, align 8, !dbg !3062
  ret void, !dbg !3062
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3063 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3067, metadata !DIExpression()), !dbg !3068
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3069
  %arraydecay = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 0, !dbg !3069
  %cond = select i1 %tobool, %union.tree_node** null, %union.tree_node** %arraydecay, !dbg !3069
  ret %union.tree_node** %cond, !dbg !3069
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve_exact(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3070 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @ssa_name_values, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3075, metadata !DIExpression()), !dbg !3077
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3078
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3078
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3078

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3078
  br label %cond.end, !dbg !3078

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3078
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 %alloc_) #7, !dbg !3078
  %tobool1 = icmp eq i32 %call, 0, !dbg !3078
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3076, metadata !DIExpression()), !dbg !3077
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3078

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_tree_heap** @ssa_name_values to i8**), align 8, !dbg !3079
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %1, i32 %alloc_) #6, !dbg !3079
  store i8* %call3, i8** bitcast (%struct.VEC_tree_heap** @ssa_name_values to i8**), align 8, !dbg !3079
  br label %if.end, !dbg !3079

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3078
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3081 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3085, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3086, metadata !DIExpression()), !dbg !3087
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3088
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3088

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3088
  %0 = load i32, i32* %alloc, align 4, !dbg !3088
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3088
  %1 = load i32, i32* %num, align 8, !dbg !3088
  %sub = sub i32 %0, %1, !dbg !3088
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !3088
  br label %cond.end, !dbg !3088

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !3088
  br label %cond.end, !dbg !3088

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !3088
  ret i32 %cond, !dbg !3088
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3089 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3095, metadata !DIExpression()), !dbg !3096
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3097
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3097

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3097
  %0 = load i32, i32* %num, align 8, !dbg !3097
  br label %cond.end, !dbg !3097

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3097
  ret i32 %cond, !dbg !3097
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3098 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3102, metadata !DIExpression()), !dbg !3103
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3104
  %0 = load i32, i32* %flags, align 8, !dbg !3104
  %and = and i32 %0, 512, !dbg !3105
  %tobool = icmp eq i32 %and, 0, !dbg !3105
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3106

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3107
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3107
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3108
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3109

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3110
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3110
  br label %cond.end, !dbg !3109

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3109
  ret %struct.gimple_seq_d* %cond, !dbg !3111
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3112 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3119, metadata !DIExpression()), !dbg !3120
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3121
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3121

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3122
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3122
  br label %cond.end, !dbg !3121

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3121
  ret %struct.gimple_seq_node_d* %cond, !dbg !3123
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3124 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 5, metadata !3130, metadata !DIExpression()), !dbg !3131
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3132
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !3133
  br i1 true, label %land.lhs.true16, label %entry.if.end_crit_edge, !dbg !3134

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end, !dbg !3134

land.lhs.true16:                                  ; preds = %entry
  br i1 true, label %if.end, label %land.lhs.true19, !dbg !3136

land.lhs.true19:                                  ; preds = %land.lhs.true16
  br i1 undef, label %land.lhs.true19.if.end_crit_edge, label %if.then, !dbg !3137

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  br label %if.end, !dbg !3137

if.then:                                          ; preds = %land.lhs.true19
  br label %if.end, !dbg !3138

if.end:                                           ; preds = %land.lhs.true19.if.end_crit_edge, %entry.if.end_crit_edge, %land.lhs.true16, %if.then
  br i1 false, label %if.end.cond.end28_crit_edge, label %cond.true25, !dbg !3139

if.end.cond.end28_crit_edge:                      ; preds = %if.end
  br label %cond.end28, !dbg !3139

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3140
  br label %cond.end28, !dbg !3139

cond.end28:                                       ; preds = %if.end.cond.end28_crit_edge, %cond.true25
  %cond29 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ undef, %if.end.cond.end28_crit_edge ], !dbg !3139
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3141
  store %struct.use_optype_d* %cond29, %struct.use_optype_d** %uses, align 8, !dbg !3142
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3143
  store i8 0, i8* %done, align 8, !dbg !3144
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3145
  store i32 0, i32* %phi_i, align 8, !dbg !3146
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3147
  store i32 0, i32* %num_phi, align 4, !dbg !3148
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3149
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3150
  ret void, !dbg !3151
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3152 {
entry:
  unreachable, !dbg !3157
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3158 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3162, metadata !DIExpression()), !dbg !3163
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3164
  %tobool = icmp eq i8 %call, 0, !dbg !3164
  br i1 %tobool, label %return, label %if.end, !dbg !3166

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !3167
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !3167
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3167
  br label %return, !dbg !3168

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3163
  ret %union.tree_node* %retval.0, !dbg !3169
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3170 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3174, metadata !DIExpression()), !dbg !3175
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3176
  %tobool = icmp eq i8 %call, 0, !dbg !3176
  br i1 %tobool, label %return, label %if.end, !dbg !3178

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3179
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3179
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3179
  br label %return, !dbg !3180

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3175
  ret %struct.use_optype_d* %retval.0, !dbg !3181
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3182 {
entry:
  unreachable, !dbg !3185
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3186 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3190, metadata !DIExpression()), !dbg !3191
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3192
  %cmp = icmp eq i32 %call, 0, !dbg !3193
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3194

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3195
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3196
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3197
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3198 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3200, metadata !DIExpression()), !dbg !3201
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3202
  %cmp = icmp ugt i32 %call, 5, !dbg !3203
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3204

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3205
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3206
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3208 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %i, metadata !3213, metadata !DIExpression()), !dbg !3214
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3215
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3216
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3217
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3218 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 %index, metadata !3224, metadata !DIExpression()), !dbg !3225
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3226
  %0 = load i32, i32* %capacity, align 8, !dbg !3226
  %cmp = icmp ult i32 %0, %index, !dbg !3226
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3226

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3226
  br label %cond.end, !dbg !3226

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3227
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3227
  ret %struct.phi_arg_d* %arrayidx, !dbg !3228
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3229 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3231, metadata !DIExpression()), !dbg !3232
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3233
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3233
  ret %union.tree_node* %0, !dbg !3234
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @record_temporary_equivalence(%union.tree_node* %x, %union.tree_node* %y, %struct.VEC_tree_heap** %stack) unnamed_addr #5 !dbg !3235 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %x, metadata !3239, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata %union.tree_node* %y, metadata !3240, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %stack, metadata !3241, metadata !DIExpression()), !dbg !3246
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %x, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3247
  %0 = bitcast %union.tree_node** %version to i32*, !dbg !3247
  %1 = load i32, i32* %0, align 8, !dbg !3247
  %2 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3247
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %2, i64 0, i32 0, !dbg !3247
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base) #7, !dbg !3247
  %cmp = icmp ult i32 %1, %call, !dbg !3247
  br i1 %cmp, label %cond.true1, label %cond.end12, !dbg !3247

cond.true1:                                       ; preds = %entry
  %3 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3247
  %base4 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %3, i64 0, i32 0, !dbg !3247
  %4 = load i32, i32* %0, align 8, !dbg !3247
  %call10 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base4, i32 %4) #7, !dbg !3247
  br label %cond.end12, !dbg !3247

cond.end12:                                       ; preds = %entry, %cond.true1
  %cond13 = phi %union.tree_node* [ %call10, %cond.true1 ], [ null, %entry ], !dbg !3247
  call void @llvm.dbg.value(metadata %union.tree_node* %cond13, metadata !3242, metadata !DIExpression()), !dbg !3246
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %y, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3248
  %bf.load = load i64, i64* %5, align 8, !dbg !3248
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3249
  %cmp15 = icmp eq i64 %bf.cast1, 141, !dbg !3249
  br i1 %cmp15, label %if.then, label %if.end, !dbg !3250

if.then:                                          ; preds = %cond.end12
  %version17 = getelementptr inbounds %union.tree_node, %union.tree_node* %y, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3251
  %6 = bitcast %union.tree_node** %version17 to i32*, !dbg !3251
  %7 = load i32, i32* %6, align 8, !dbg !3251
  %8 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3251
  %base20 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %8, i64 0, i32 0, !dbg !3251
  %call24 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base20) #7, !dbg !3251
  %cmp25 = icmp ult i32 %7, %call24, !dbg !3251
  br i1 %cmp25, label %cond.true26, label %cond.end37, !dbg !3251

cond.true26:                                      ; preds = %if.then
  %9 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @ssa_name_values, align 8, !dbg !3251
  %base29 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %9, i64 0, i32 0, !dbg !3251
  %10 = load i32, i32* %6, align 8, !dbg !3251
  %call35 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base29, i32 %10) #7, !dbg !3251
  br label %cond.end37, !dbg !3251

cond.end37:                                       ; preds = %if.then, %cond.true26
  %cond38 = phi %union.tree_node* [ %call35, %cond.true26 ], [ null, %if.then ], !dbg !3251
  call void @llvm.dbg.value(metadata %union.tree_node* %cond38, metadata !3243, metadata !DIExpression()), !dbg !3252
  %tobool39 = icmp eq %union.tree_node* %cond38, null, !dbg !3253
  %cond38.y = select i1 %tobool39, %union.tree_node* %y, %union.tree_node* %cond38, !dbg !3253
  call void @llvm.dbg.value(metadata %union.tree_node* %cond38.y, metadata !3240, metadata !DIExpression()), !dbg !3246
  br label %if.end, !dbg !3254

if.end:                                           ; preds = %cond.end37, %cond.end12
  %y.addr.0 = phi %union.tree_node* [ %cond38.y, %cond.end37 ], [ %y, %cond.end12 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %y.addr.0, metadata !3240, metadata !DIExpression()), !dbg !3246
  tail call void @set_ssa_name_value(%union.tree_node* %x, %union.tree_node* %y.addr.0) #7, !dbg !3255
  %call44 = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %stack, i32 2) #7, !dbg !3256
  %11 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %stack, align 8, !dbg !3257
  %tobool45 = icmp eq %struct.VEC_tree_heap* %11, null, !dbg !3257
  br i1 %tobool45, label %cond.end49, label %cond.true46, !dbg !3257

cond.true46:                                      ; preds = %if.end
  %base47 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %11, i64 0, i32 0, !dbg !3257
  br label %cond.end49, !dbg !3257

cond.end49:                                       ; preds = %if.end, %cond.true46
  %cond50 = phi %struct.VEC_tree_base* [ %base47, %cond.true46 ], [ null, %if.end ], !dbg !3257
  %call51 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond50, %union.tree_node* %cond13) #7, !dbg !3257
  %12 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %stack, align 8, !dbg !3258
  %tobool52 = icmp eq %struct.VEC_tree_heap* %12, null, !dbg !3258
  br i1 %tobool52, label %cond.end56, label %cond.true53, !dbg !3258

cond.true53:                                      ; preds = %cond.end49
  %base54 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %12, i64 0, i32 0, !dbg !3258
  br label %cond.end56, !dbg !3258

cond.end56:                                       ; preds = %cond.end49, %cond.true53
  %cond57 = phi %struct.VEC_tree_base* [ %base54, %cond.true53 ], [ null, %cond.end49 ], !dbg !3258
  %call58 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond57, %union.tree_node* %x) #7, !dbg !3258
  ret void, !dbg !3259
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3260 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3265, metadata !DIExpression()), !dbg !3266
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3267
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3267
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3268
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3268
  %2 = load i64, i64* %1, align 8, !dbg !3268
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3269
  store i64 %2, i64* %3, align 8, !dbg !3269
  ret void, !dbg !3270
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3271 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3276, metadata !DIExpression()), !dbg !3277
  br label %land.end, !dbg !3278

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3278
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3278
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3278
  ret %union.tree_node* %0, !dbg !3278
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3279 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3281, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 2, metadata !3282, metadata !DIExpression()), !dbg !3284
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3285
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3285
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3285

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3285
  br label %cond.end, !dbg !3285

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3285
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 2) #7, !dbg !3285
  %tobool1 = icmp eq i32 %call, 0, !dbg !3285
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3283, metadata !DIExpression()), !dbg !3284
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3285

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3286
  %2 = load i8*, i8** %1, align 8, !dbg !3286
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 2) #6, !dbg !3286
  store i8* %call3, i8** %1, align 8, !dbg !3286
  br label %if.end, !dbg !3286

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3285
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3288 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3292, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3293, metadata !DIExpression()), !dbg !3295
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3296
  %0 = load i32, i32* %num1, align 8, !dbg !3296
  %inc = add i32 %0, 1, !dbg !3296
  store i32 %inc, i32* %num1, align 8, !dbg !3296
  %idxprom = zext i32 %0 to i64, !dbg !3296
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3296
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3294, metadata !DIExpression()), !dbg !3295
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3296
  ret %union.tree_node** %arrayidx, !dbg !3296
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3297 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3300, metadata !DIExpression()), !dbg !3303
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3304
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3301, metadata !DIExpression()), !dbg !3302
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3305
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3306
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3307
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3308
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3309
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3310
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3311
  ret void, !dbg !3312
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3313 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3315, metadata !DIExpression()), !dbg !3316
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3317
  %cmp = icmp eq i32 %call, 2, !dbg !3318
  %conv1 = zext i1 %cmp to i8, !dbg !3317
  ret i8 %conv1, !dbg !3319
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3320 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3322, metadata !DIExpression()), !dbg !3323
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3324
  %bf.load = load i32, i32* %0, align 8, !dbg !3324
  %and = lshr i32 %bf.load, 17, !dbg !3325
  %1 = trunc i32 %and to i8, !dbg !3325
  %2 = and i8 %1, 1, !dbg !3325
  ret i8 %2, !dbg !3326
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3327 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3329, metadata !DIExpression()), !dbg !3330
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3331
  ret %union.tree_node* %call, !dbg !3332
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3333 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3335, metadata !DIExpression()), !dbg !3336
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3337
  ret %union.tree_node* %call, !dbg !3338
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3339 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3341, metadata !DIExpression()), !dbg !3342
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3343
  %cmp = icmp eq i32 %call, 8, !dbg !3344
  %conv1 = zext i1 %cmp to i8, !dbg !3343
  ret i8 %conv1, !dbg !3345
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3346 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3348, metadata !DIExpression()), !dbg !3350
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !3351
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3349, metadata !DIExpression()), !dbg !3350
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3352
  %bf.load = load i64, i64* %0, align 8, !dbg !3352
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3354
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3354
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3355

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3356
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3356
  br label %cleanup, !dbg !3357

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3350
  ret %union.tree_node* %retval.0, !dbg !3358
}

declare dso_local zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3359 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3361, metadata !DIExpression()), !dbg !3362
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3363
  ret %union.tree_node* %call, !dbg !3364
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_ssa_operands(%union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3365 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3369, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 5, metadata !3370, metadata !DIExpression()), !dbg !3374
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !3375
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3375
  call void @llvm.dbg.value(metadata i32 0, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3371, metadata !DIExpression(DW_OP_deref)), !dbg !3374
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !3376
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3372, metadata !DIExpression()), !dbg !3374
  br label %for.cond, !dbg !3376

for.cond:                                         ; preds = %for.body, %entry
  %num.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3374
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3371, metadata !DIExpression(DW_OP_deref)), !dbg !3374
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3378
  %tobool = icmp eq i8 %call1, 0, !dbg !3378
  br i1 %tobool, label %for.body, label %for.end, !dbg !3376

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %num.0, 1, !dbg !3380
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3371, metadata !DIExpression(DW_OP_deref)), !dbg !3374
  %call2 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3378
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3372, metadata !DIExpression()), !dbg !3374
  br label %for.cond, !dbg !3378, !llvm.loop !3381

for.end:                                          ; preds = %for.cond
  %num.0.lcssa = phi i32 [ %num.0, %for.cond ], !dbg !3374
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3383
  ret i32 %num.0.lcssa, !dbg !3384
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !3385 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3389, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !3390, metadata !DIExpression()), !dbg !3391
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !3392
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3393
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3393
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !3394
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !3395
  ret void, !dbg !3396
}

declare dso_local %union.tree_node* @fold_call_stmt(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @fold_assignment_stmt(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3397 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3401, metadata !DIExpression()), !dbg !3416
  %call = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %call, metadata !3402, metadata !DIExpression()), !dbg !3416
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3418
  switch i32 %call1, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb17
    i32 1, label %sw.bb21
  ], !dbg !3419

sw.bb:                                            ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3420
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3403, metadata !DIExpression()), !dbg !3421
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3422
  %bf.load = load i64, i64* %0, align 8, !dbg !3422
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3423
  %cmp = icmp eq i64 %bf.cast1, 56, !dbg !3423
  br i1 %cmp, label %if.then, label %if.end15, !dbg !3424

if.then:                                          ; preds = %sw.bb
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3425
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3425
  %call3 = tail call %union.tree_node* @fold(%union.tree_node* %1) #6, !dbg !3426
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3406, metadata !DIExpression()), !dbg !3427
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !3428
  %cmp4 = icmp eq %union.tree_node* %call3, %2, !dbg !3430
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !3431

if.then5:                                         ; preds = %if.then
  %arrayidx8 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3432
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx8, align 8, !dbg !3432
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3403, metadata !DIExpression()), !dbg !3421
  br label %if.end15, !dbg !3433

if.else:                                          ; preds = %if.then
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !3434
  %cmp9 = icmp eq %union.tree_node* %call3, %4, !dbg !3436
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !3437

if.then10:                                        ; preds = %if.else
  %arrayidx13 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3438
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8, !dbg !3438
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3403, metadata !DIExpression()), !dbg !3421
  br label %if.end15, !dbg !3439

if.end15:                                         ; preds = %if.then5, %if.then10, %if.else, %sw.bb
  %rhs.2 = phi %union.tree_node* [ %call2, %sw.bb ], [ %3, %if.then5 ], [ %5, %if.then10 ], [ %call2, %if.else ], !dbg !3421
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs.2, metadata !3403, metadata !DIExpression()), !dbg !3421
  %call16 = tail call %union.tree_node* @fold(%union.tree_node* %rhs.2) #6, !dbg !3440
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %call18 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !3441
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !3409, metadata !DIExpression()), !dbg !3442
  %call19 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3443
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !3411, metadata !DIExpression()), !dbg !3442
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3444
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3444
  %call20 = tail call %union.tree_node* @fold_unary_loc(i32 0, i32 %call, %union.tree_node* %6, %union.tree_node* %call19) #6, !dbg !3444
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %call23 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !3445
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !3412, metadata !DIExpression()), !dbg !3446
  %call25 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3447
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !3414, metadata !DIExpression()), !dbg !3446
  %call26 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !3448
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !3415, metadata !DIExpression()), !dbg !3446
  %type28 = getelementptr inbounds %union.tree_node, %union.tree_node* %call23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3449
  %7 = load %union.tree_node*, %union.tree_node** %type28, align 8, !dbg !3449
  %call29 = tail call %union.tree_node* @fold_binary_loc(i32 0, i32 %call, %union.tree_node* %7, %union.tree_node* %call25, %union.tree_node* %call26) #6, !dbg !3449
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3450
  br label %cleanup, !dbg !3451

cleanup:                                          ; preds = %sw.default, %sw.bb21, %sw.bb17, %if.end15
  %retval.0 = phi %union.tree_node* [ null, %sw.default ], [ %call29, %sw.bb21 ], [ %call20, %sw.bb17 ], [ %call16, %if.end15 ], !dbg !3416
  ret %union.tree_node* %retval.0, !dbg !3452
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3453 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3455, metadata !DIExpression()), !dbg !3456
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3457
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3457

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3458
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3458
  br label %cond.end, !dbg !3457

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3457
  ret %struct.gimple_seq_node_d* %cond, !dbg !3459
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3460 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3464, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %i, metadata !3465, metadata !DIExpression()), !dbg !3466
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3467
  %tobool = icmp eq i8 %call, 0, !dbg !3467
  br i1 %tobool, label %return, label %if.then, !dbg !3469

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3470
  %idxprom = zext i32 %i to i64, !dbg !3470
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3470
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3470
  br label %return, !dbg !3472

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3473
  ret %union.tree_node* %retval.0, !dbg !3474
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3475 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3479, metadata !DIExpression()), !dbg !3481
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3482
  %idxprom = zext i32 %call to i64, !dbg !3483
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3483
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()), !dbg !3481
  %cmp = icmp eq i64 %0, 0, !dbg !3484
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3484

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3484
  br label %cond.end, !dbg !3484

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3485
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3486
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3487
  ret %union.tree_node** %2, !dbg !3488
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3489 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3493, metadata !DIExpression()), !dbg !3494
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3495
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3496
  ret i32 %call1, !dbg !3497
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3498 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3502, metadata !DIExpression()), !dbg !3503
  %idxprom = zext i32 %code to i64, !dbg !3504
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3504
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3504
  ret i32 %0, !dbg !3505
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3506 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3508, metadata !DIExpression()), !dbg !3509
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3510
  ret %union.tree_node* %call, !dbg !3511
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3512 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3516, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 5, metadata !3518, metadata !DIExpression()), !dbg !3519
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !3520
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3521
  store i32 1, i32* %iter_type, align 4, !dbg !3522
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3523
  ret %union.tree_node* %call, !dbg !3524
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3525 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3529, metadata !DIExpression()), !dbg !3531
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3532
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3532
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3534
  br i1 %tobool, label %if.end, label %if.then, !dbg !3535

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3536
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !3536
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3530, metadata !DIExpression()), !dbg !3531
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3538
  %2 = load i64*, i64** %1, align 8, !dbg !3538
  %3 = load i64, i64* %2, align 8, !dbg !3539
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3540
  store i64 %3, i64* %4, align 8, !dbg !3540
  br label %cleanup, !dbg !3541

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3542
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !3542
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !3544
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !3545

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !3546
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !3546
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3530, metadata !DIExpression()), !dbg !3531
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3548
  %8 = load i64*, i64** %7, align 8, !dbg !3548
  %9 = load i64, i64* %8, align 8, !dbg !3549
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3550
  store i64 %9, i64* %10, align 8, !dbg !3550
  br label %cleanup, !dbg !3551

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3552
  store i8 1, i8* %done, align 8, !dbg !3553
  br label %cleanup, !dbg !3554

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !3531
  ret %union.tree_node* %retval.0, !dbg !3555
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3556 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3561, metadata !DIExpression()), !dbg !3562
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3563
  ret %union.tree_node* %0, !dbg !3564
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !3565 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3569, metadata !DIExpression()), !dbg !3570
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3571
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3571
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !3573
  br i1 %cmp, label %return, label %if.end, !dbg !3574

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3575
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3575
  %2 = load i64, i64* %1, align 8, !dbg !3575
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3576
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !3577
  store i64 %2, i64* %3, align 8, !dbg !3577
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !3578
  %5 = load i64, i64* %4, align 8, !dbg !3578
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !3579
  %7 = load i64*, i64** %6, align 8, !dbg !3579
  store i64 %5, i64* %7, align 8, !dbg !3580
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3581
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !3582
  br label %return, !dbg !3583

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3583
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !3584 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3588, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3589, metadata !DIExpression()), !dbg !3591
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !3592
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3594

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3595
  %bf.load = load i64, i64* %0, align 8, !dbg !3595
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3596
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3596
  br i1 %cmp, label %if.else, label %if.then, !dbg !3597

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3598
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3599
  br label %if.end, !dbg !3600

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3601
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3601
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !3590, metadata !DIExpression()), !dbg !3591
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !3603
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !3605 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3609, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !3610, metadata !DIExpression()), !dbg !3611
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3612
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3613
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !3614
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3614
  %1 = load i64, i64* %0, align 8, !dbg !3614
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3615
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !3616
  store i64 %1, i64* %2, align 8, !dbg !3616
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3617
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !3618
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !3619
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !3620
  ret void, !dbg !3621
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3622 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3626, metadata !DIExpression()), !dbg !3628
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %call, metadata !3627, metadata !DIExpression()), !dbg !3628
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3630
  %cmp = icmp eq i32 %call1, 3, !dbg !3632
  br i1 %cmp, label %if.then, label %if.end, !dbg !3633

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3634
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3634
  %bf.load = load i64, i64* %0, align 8, !dbg !3634
  %1 = trunc i64 %bf.load to i32, !dbg !3634
  %bf.cast = and i32 %1, 65535, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3627, metadata !DIExpression()), !dbg !3628
  br label %if.end, !dbg !3635

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3628
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3627, metadata !DIExpression()), !dbg !3628
  ret i32 %code.0, !dbg !3636
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3637 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3641, metadata !DIExpression()), !dbg !3642
  %idxprom = sext i32 %code to i64, !dbg !3643
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3643
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3643
  %conv = zext i8 %0 to i32, !dbg !3644
  ret i32 %conv, !dbg !3645
}

declare dso_local %union.tree_node* @fold(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_unary_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3646 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3648, metadata !DIExpression()), !dbg !3649
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3650
  %cmp = icmp ugt i32 %call, 2, !dbg !3652
  br i1 %cmp, label %if.then, label %return, !dbg !3653

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !3654
  br label %return, !dbg !3655

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3656
  ret %union.tree_node* %retval.0, !dbg !3657
}

declare dso_local %union.tree_node* @fold_binary_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3658 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3660, metadata !DIExpression()), !dbg !3662
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3663
  call void @llvm.dbg.value(metadata i32 %call, metadata !3661, metadata !DIExpression()), !dbg !3662
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3664

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3666
  %bf.load = load i32, i32* %0, align 8, !dbg !3666
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3666
  br label %cleanup, !dbg !3667

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3668
  br label %cleanup, !dbg !3670

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3662
  ret i32 %retval.0, !dbg !3671
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3672 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3676, metadata !DIExpression()), !dbg !3677
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3678
  %0 = load i32, i32* %num_ops, align 4, !dbg !3678
  ret i32 %0, !dbg !3679
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3680 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3682, metadata !DIExpression()), !dbg !3683
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3684
  ret %union.tree_node* %call, !dbg !3685
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3686 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3688, metadata !DIExpression()), !dbg !3689
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3690
  ret %union.tree_node* %call, !dbg !3691
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3692 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3694, metadata !DIExpression()), !dbg !3695
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3696
  %bf.load = load i32, i32* %0, align 8, !dbg !3696
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3696
  ret i32 %bf.lshr, !dbg !3697
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @lhs_of_dominating_assert(%union.tree_node* %op, %struct.basic_block_def* %bb, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3698 {
entry:
  %imm_iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3702, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3703, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3704, metadata !DIExpression()), !dbg !3715
  %0 = bitcast %struct.immediate_use_iterator_d* %imm_iter to i8*, !dbg !3716
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !3716
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3705, metadata !DIExpression(DW_OP_deref)), !dbg !3715
  %call = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter, %union.tree_node* %op) #7, !dbg !3717
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call, metadata !3714, metadata !DIExpression()), !dbg !3715
  br label %for.cond, !dbg !3717

for.cond:                                         ; preds = %for.inc, %entry
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call, %entry ], [ %call19, %for.inc ], !dbg !3719
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3705, metadata !DIExpression(DW_OP_deref)), !dbg !3715
  %call1 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3720
  %tobool = icmp eq i8 %call1, 0, !dbg !3720
  br i1 %tobool, label %for.body, label %cleanup.loopexit, !dbg !3717

for.body:                                         ; preds = %for.cond
  %stmt2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !3722
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt2, align 8, !dbg !3722
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !3713, metadata !DIExpression()), !dbg !3715
  %cmp = icmp eq %union.gimple_statement_d* %1, %stmt, !dbg !3724
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !3726

land.lhs.true:                                    ; preds = %for.body
  %call3 = call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %1) #6, !dbg !3727
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3727
  br i1 %tobool4, label %for.inc, label %land.lhs.true5, !dbg !3728

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #7, !dbg !3729
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3729
  %bf.load = load i64, i64* %2, align 8, !dbg !3729
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3730
  %cmp7 = icmp eq i64 %bf.cast1, 148, !dbg !3730
  br i1 %cmp7, label %land.lhs.true9, label %for.inc, !dbg !3731

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #7, !dbg !3732
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3732
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3732
  %cmp11 = icmp eq %union.tree_node* %3, %op, !dbg !3733
  br i1 %cmp11, label %land.lhs.true13, label %for.inc, !dbg !3734

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %1) #7, !dbg !3735
  %call15 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %bb, %struct.basic_block_def* %call14) #6, !dbg !3736
  %tobool17 = icmp eq i8 %call15, 0, !dbg !3736
  br i1 %tobool17, label %for.inc, label %if.then, !dbg !3737

if.then:                                          ; preds = %land.lhs.true13
  %.lcssa = phi %union.gimple_statement_d* [ %1, %land.lhs.true13 ], !dbg !3722
  %call18 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %.lcssa) #7, !dbg !3738
  br label %cleanup, !dbg !3740

for.inc:                                          ; preds = %land.lhs.true13, %land.lhs.true, %for.body, %land.lhs.true5, %land.lhs.true9
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3705, metadata !DIExpression(DW_OP_deref)), !dbg !3715
  %call19 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3720
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call19, metadata !3714, metadata !DIExpression()), !dbg !3715
  br label %for.cond, !dbg !3720, !llvm.loop !3741

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3743

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi %union.tree_node* [ %call18, %if.then ], [ %op, %cleanup.loopexit ], !dbg !3715
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !3743
  ret %union.tree_node* %retval.0, !dbg !3743
}

declare dso_local zeroext i8 @tree_swap_operands_p(%union.tree_node*, %union.tree_node*, i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @swap_tree_comparison(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %gs, i32 %code) unnamed_addr #0 !dbg !3744 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3748, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %code, metadata !3749, metadata !DIExpression()), !dbg !3750
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3751
  %bf.load = load i32, i32* %0, align 8, !dbg !3752
  %bf.shl = shl i32 %code, 16, !dbg !3752
  %bf.clear = and i32 %bf.load, 65535, !dbg !3752
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !3752
  store i32 %bf.set, i32* %0, align 8, !dbg !3752
  ret void, !dbg !3753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !3754 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3759, metadata !DIExpression()), !dbg !3760
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !3761
  ret void, !dbg !3762
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !3763 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3766, metadata !DIExpression()), !dbg !3767
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #7, !dbg !3768
  ret void, !dbg !3769
}

declare dso_local void @fold_defer_overflow_warnings() local_unnamed_addr #2

declare dso_local void @fold_undefer_overflow_warnings(i8 zeroext, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3770 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3772, metadata !DIExpression()), !dbg !3773
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3774
  ret %union.tree_node* %call, !dbg !3775
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_goto_dest(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3776 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3778, metadata !DIExpression()), !dbg !3779
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3780
  ret %union.tree_node* %call, !dbg !3781
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !3782 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3787, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3788, metadata !DIExpression()), !dbg !3789
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3790
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3791
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3792
  store i40* %imm_uses, i40** %0, align 8, !dbg !3792
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3793
  %1 = bitcast i40* %next to i64*, !dbg !3793
  %2 = load i64, i64* %1, align 8, !dbg !3793
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3794
  store i64 %2, i64* %3, align 8, !dbg !3794
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !3795
  %tobool = icmp eq i8 %call, 0, !dbg !3795
  br i1 %tobool, label %if.end, label %return, !dbg !3797

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3798
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !3798
  br label %return, !dbg !3799

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3789
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3800
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3801 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3807, metadata !DIExpression()), !dbg !3808
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3809
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3809
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3810
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !3810
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !3811
  %conv1 = zext i1 %cmp to i8, !dbg !3812
  ret i8 %conv1, !dbg !3813
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3814 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3818, metadata !DIExpression()), !dbg !3820
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3821
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3821
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3819, metadata !DIExpression()), !dbg !3820
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3822
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3822
  %2 = load i64, i64* %1, align 8, !dbg !3822
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3823
  store i64 %2, i64* %3, align 8, !dbg !3823
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !3824
  %tobool = icmp eq i8 %call, 0, !dbg !3824
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3826

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3827
  br label %cleanup, !dbg !3828

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3820
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3829
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !3830 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3834, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 %i, metadata !3835, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3836, metadata !DIExpression()), !dbg !3837
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3838
  %tobool = icmp eq i8 %call, 0, !dbg !3838
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3838

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3838
  %cmp = icmp ugt i32 %call1, %i, !dbg !3838
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3838

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3838
  br label %cond.end, !dbg !3838

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3839
  %idxprom = zext i32 %i to i64, !dbg !3839
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !3839
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !3840
  ret void, !dbg !3841
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3842 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3846, metadata !DIExpression()), !dbg !3848
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3849
  %0 = load i32, i32* %num1, align 8, !dbg !3849
  %dec = add i32 %0, -1, !dbg !3849
  store i32 %dec, i32* %num1, align 8, !dbg !3849
  %idxprom = zext i32 %dec to i64, !dbg !3849
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3849
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3849
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3847, metadata !DIExpression()), !dbg !3848
  ret %union.tree_node* %1, !dbg !3849
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
!llvm.module.flags = !{!1875, !1876, !1877}
!llvm.ident = !{!1878}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ssa_name_values", scope: !2, file: !3, line: 52, type: !478, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !468, globals: !1872, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-threadedge.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !338, !342, !348, !353, !358, !376, !383, !390, !397, !436, !462}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !135, line: 39, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!137 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!148 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!149 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!150 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!151 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!152 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!153 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!154 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!155 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!156 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!157 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!158 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!159 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!160 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!161 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!162 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!163 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!164 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!165 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!166 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!167 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!168 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!169 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!170 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!171 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!172 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!173 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!174 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!175 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!176 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!177 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!178 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!179 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!180 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!181 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!182 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!183 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!184 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!185 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!186 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!187 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!188 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!189 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!190 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!191 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!192 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!193 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!194 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!195 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!196 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!197 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!198 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!199 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!200 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!201 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!202 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!203 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!204 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!205 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!206 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!207 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!208 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!209 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!210 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!211 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!212 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!213 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!214 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!215 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!216 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!217 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!218 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!219 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!220 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!221 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!222 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!223 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!224 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!226 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!228 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!229 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!230 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!231 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!232 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!233 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!234 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!235 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!236 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!237 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!238 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!239 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!240 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!241 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!242 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!243 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!244 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!245 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!246 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!247 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!248 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!249 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!250 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!251 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!252 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!253 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!254 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!255 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!256 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!257 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!258 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!259 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!260 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!261 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!262 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!263 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!264 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!265 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!266 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!267 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!268 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!269 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!270 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!271 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!272 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!273 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!274 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!275 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!276 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!277 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!278 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!279 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!280 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!281 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!282 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!283 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!284 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!285 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!286 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!287 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!288 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!289 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!290 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!291 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!292 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!293 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!294 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!295 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!296 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!297 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!299 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!300 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!301 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!302 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!303 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!304 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!305 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!306 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!307 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!308 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!309 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!310 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!311 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!312 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!313 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!314 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!320 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!321 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!322 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!323 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!324 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!325 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!326 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!327 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!328 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !330, line: 31, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!336 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!337 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !330, line: 91, baseType: !7, size: 32, elements: !339)
!339 = !{!340, !341}
!340 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !343, line: 363, baseType: !7, size: 32, elements: !344)
!343 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!344 = !{!345, !346, !347}
!345 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!346 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!347 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !343, line: 355, baseType: !7, size: 32, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!351 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!352 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !354, line: 474, baseType: !7, size: 32, elements: !355)
!354 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!355 = !{!356, !357}
!356 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!357 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!360 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !377)
!377 = !{!378, !379, !380, !381, !382}
!378 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !384)
!384 = !{!385, !386, !387, !388, !389}
!385 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!386 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!387 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!388 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!389 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !391, line: 119, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396}
!393 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !398, line: 51, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!400 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!416 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!417 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!418 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!422 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!423 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!424 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!425 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!426 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!427 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!428 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!429 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!430 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!431 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!432 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!433 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!434 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!435 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !398, line: 727, baseType: !7, size: 32, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!438 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!447 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!448 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!449 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!450 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!451 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!452 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!453 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!454 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!455 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!456 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!457 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!458 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!459 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!460 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!461 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!462 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !398, line: 80, baseType: !7, size: 32, elements: !463)
!463 = !{!464, !465, !466, !467}
!464 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!465 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!466 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!467 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!468 = !{!469, !470, !471, !472, !475, !476, !134, !7, !478, !490, !1867, !848, !815, !1870, !473, !617, !462}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!471 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !480, file: !135, line: 184, baseType: !483, size: 128)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !485)
!485 = !{!486, !487, !488}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !484, file: !135, line: 182, baseType: !7, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !484, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !484, file: !135, line: 182, baseType: !489, size: 64, offset: 64)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 64, elements: !589)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !491, line: 56, baseType: !492)
!491 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !494)
!494 = !{!495, !528, !534, !547, !566, !577, !582, !591, !597, !610, !622, !660, !1203, !1231, !1248, !1249, !1254, !1263, !1269, !1274, !1278, !1282, !1518, !1565, !1571, !1577, !1584, !1597, !1611, !1628, !1640, !1662, !1677, !1849}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !493, file: !135, line: 3372, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !496, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !496, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !496, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !496, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !496, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !496, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !496, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !496, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !496, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !496, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !496, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !496, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !496, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !496, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !496, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !496, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !496, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !496, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !496, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !496, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !496, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !496, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !496, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !496, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !496, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !496, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !496, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !496, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !496, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !496, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !493, file: !135, line: 3373, baseType: !529, size: 192)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !530)
!530 = !{!531, !532, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !529, file: !135, line: 403, baseType: !496, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !529, file: !135, line: 404, baseType: !490, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !529, file: !135, line: 405, baseType: !490, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !493, file: !135, line: 3374, baseType: !535, size: 320)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !535, file: !135, line: 1385, baseType: !529, size: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !535, file: !135, line: 1386, baseType: !539, size: 128, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !540, line: 58, baseType: !541)
!540 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !540, line: 54, size: 128, elements: !542)
!542 = !{!543, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !541, file: !540, line: 56, baseType: !544, size: 64)
!544 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !541, file: !540, line: 57, baseType: !546, size: 64, offset: 64)
!546 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !493, file: !135, line: 3375, baseType: !548, size: 256)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !548, file: !135, line: 1398, baseType: !529, size: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !548, file: !135, line: 1399, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !554, line: 52, size: 256, elements: !555)
!554 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!555 = !{!556, !557, !558, !559, !560, !561, !562}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !553, file: !554, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !553, file: !554, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !553, file: !554, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !553, file: !554, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !553, file: !554, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !553, file: !554, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !553, file: !554, line: 62, baseType: !563, size: 192, offset: 64)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 192, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 3)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !493, file: !135, line: 3376, baseType: !567, size: 256)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !567, file: !135, line: 1409, baseType: !529, size: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !567, file: !135, line: 1410, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !573, line: 27, size: 192, elements: !574)
!573 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !572, file: !573, line: 29, baseType: !539, size: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !572, file: !573, line: 30, baseType: !5, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !493, file: !135, line: 3377, baseType: !578, size: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !578, file: !135, line: 1438, baseType: !529, size: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !578, file: !135, line: 1439, baseType: !490, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !493, file: !135, line: 3378, baseType: !583, size: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !584)
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !583, file: !135, line: 1419, baseType: !529, size: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !583, file: !135, line: 1420, baseType: !471, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !583, file: !135, line: 1421, baseType: !588, size: 8, offset: 224)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 8, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 1)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !493, file: !135, line: 3379, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !592, file: !135, line: 1429, baseType: !529, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !592, file: !135, line: 1430, baseType: !490, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !592, file: !135, line: 1431, baseType: !490, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !493, file: !135, line: 3380, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !598, file: !135, line: 1461, baseType: !529, size: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !598, file: !135, line: 1462, baseType: !602, size: 128, offset: 192)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !603, line: 31, size: 128, elements: !604)
!603 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!604 = !{!605, !608, !609}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !602, file: !603, line: 32, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !602, file: !603, line: 33, baseType: !7, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !602, file: !603, line: 34, baseType: !7, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !493, file: !135, line: 3381, baseType: !611, size: 384)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !612)
!612 = !{!613, !614, !619, !620, !621}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !611, file: !135, line: 2508, baseType: !529, size: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !611, file: !135, line: 2509, baseType: !615, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !616, line: 58, baseType: !617)
!616 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !618, line: 44, baseType: !7)
!618 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !611, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !611, file: !135, line: 2511, baseType: !490, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !611, file: !135, line: 2512, baseType: !490, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !493, file: !135, line: 3382, baseType: !623, size: 896)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !623, file: !135, line: 2653, baseType: !611, size: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !623, file: !135, line: 2654, baseType: !490, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !623, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !623, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !623, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !623, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !623, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !623, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !623, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !623, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !623, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !623, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !623, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !623, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !623, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !623, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !623, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !623, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !623, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !623, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !623, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !623, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !623, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !623, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !623, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !623, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !623, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !623, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !623, file: !135, line: 2705, baseType: !490, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !623, file: !135, line: 2706, baseType: !490, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !623, file: !135, line: 2707, baseType: !490, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !623, file: !135, line: 2708, baseType: !490, size: 64, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !623, file: !135, line: 2711, baseType: !658, size: 64, offset: 832)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !493, file: !135, line: 3383, baseType: !661, size: 960)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !661, file: !135, line: 2757, baseType: !623, size: 896)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !661, file: !135, line: 2758, baseType: !665, size: 64, offset: 896)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !491, line: 50, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !668, line: 240, size: 384, elements: !669)
!668 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !667, file: !668, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !667, file: !668, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !667, file: !668, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !667, file: !668, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !667, file: !668, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !667, file: !668, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !667, file: !668, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !667, file: !668, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !667, file: !668, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !667, file: !668, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !667, file: !668, line: 321, baseType: !681, size: 320, offset: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !668, line: 315, size: 320, elements: !682)
!682 = !{!683, !1136, !1138, !1201, !1202}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !681, file: !668, line: 316, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 64, elements: !589)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !668, line: 183, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !668, line: 166, size: 64, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !700, !701, !713, !716, !776, !777, !1113, !1126, !1133}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !686, file: !668, line: 168, baseType: !471, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !686, file: !668, line: 169, baseType: !7, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !686, file: !668, line: 170, baseType: !476, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !686, file: !668, line: 171, baseType: !665, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !686, file: !668, line: 172, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !491, line: 53, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !668, line: 359, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !695, file: !668, line: 360, baseType: !471, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !695, file: !668, line: 361, baseType: !699, size: 64, offset: 64)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 64, elements: !589)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !686, file: !668, line: 173, baseType: !5, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !686, file: !668, line: 174, baseType: !702, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !668, line: 133, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !668, line: 115, size: 32, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !703, file: !668, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !703, file: !668, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !703, file: !668, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !703, file: !668, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !703, file: !668, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !703, file: !668, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !703, file: !668, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !703, file: !668, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !686, file: !668, line: 175, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !668, line: 175, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !686, file: !668, line: 176, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !719, line: 75, size: 256, elements: !720)
!719 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!720 = !{!721, !735, !736, !737}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !718, file: !719, line: 76, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !719, line: 68, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !719, line: 63, size: 320, elements: !725)
!725 = !{!726, !728, !729, !730}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !719, line: 64, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !724, file: !719, line: 65, baseType: !727, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !724, file: !719, line: 66, baseType: !7, size: 32, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !724, file: !719, line: 67, baseType: !731, size: 128, offset: 192)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 128, elements: !733)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !719, line: 29, baseType: !544)
!733 = !{!734}
!734 = !DISubrange(count: 2)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !718, file: !719, line: 77, baseType: !722, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !718, file: !719, line: 78, baseType: !7, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !718, file: !719, line: 79, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !719, line: 49, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !719, line: 45, size: 832, elements: !741)
!741 = !{!742, !743, !744}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !740, file: !719, line: 46, baseType: !727, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !740, file: !719, line: 47, baseType: !717, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !740, file: !719, line: 48, baseType: !745, size: 704, offset: 128)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !746, line: 164, size: 704, elements: !747)
!746 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!747 = !{!748, !749, !759, !760, !761, !762, !763, !764, !768, !772, !773, !774, !775}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !745, file: !746, line: 166, baseType: !546, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !745, file: !746, line: 167, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !746, line: 157, size: 192, elements: !752)
!752 = !{!753, !754, !755}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !751, file: !746, line: 159, baseType: !473, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !751, file: !746, line: 160, baseType: !750, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !751, file: !746, line: 161, baseType: !756, size: 32, offset: 128)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 32, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 4)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !745, file: !746, line: 168, baseType: !473, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !745, file: !746, line: 169, baseType: !473, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !745, file: !746, line: 170, baseType: !473, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !745, file: !746, line: 171, baseType: !546, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !745, file: !746, line: 172, baseType: !471, size: 32, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !745, file: !746, line: 176, baseType: !765, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!750, !475, !546}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !745, file: !746, line: 177, baseType: !769, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !475, !750}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !745, file: !746, line: 178, baseType: !475, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !745, file: !746, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !745, file: !746, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !745, file: !746, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !686, file: !668, line: 177, baseType: !490, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !686, file: !668, line: 178, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !343, line: 217, size: 832, elements: !780)
!780 = !{!781, !1025, !1026, !1027, !1083, !1087, !1088, !1089, !1107, !1108, !1109, !1110, !1111, !1112}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !779, file: !343, line: 219, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !343, line: 151, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !343, line: 151, size: 128, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !784, file: !343, line: 151, baseType: !787, size: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !343, line: 150, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !343, line: 150, size: 128, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !788, file: !343, line: 150, baseType: !7, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !788, file: !343, line: 150, baseType: !7, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !788, file: !343, line: 150, baseType: !793, size: 64, offset: 64)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 64, elements: !589)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !491, line: 108, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !343, line: 122, size: 512, elements: !797)
!797 = !{!798, !799, !800, !1017, !1018, !1019, !1020, !1021, !1022, !1023}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !796, file: !343, line: 124, baseType: !778, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !796, file: !343, line: 125, baseType: !778, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !796, file: !343, line: 131, baseType: !801, size: 64, offset: 128)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !343, line: 128, size: 64, elements: !802)
!802 = !{!803, !1016}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !801, file: !343, line: 129, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !491, line: 66, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !398, line: 143, size: 192, elements: !807)
!807 = !{!808, !1014, !1015}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !806, file: !398, line: 145, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !491, line: 69, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !398, line: 136, size: 192, elements: !812)
!812 = !{!813, !1012, !1013}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !811, file: !398, line: 137, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !491, line: 58, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !398, line: 737, size: 768, elements: !817)
!817 = !{!818, !835, !867, !873, !878, !883, !890, !896, !902, !907, !921, !926, !932, !937, !947, !952, !970, !977, !984, !990, !995, !1001, !1007}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !816, file: !398, line: 738, baseType: !819, size: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !398, line: 271, size: 256, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !819, file: !398, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !819, file: !398, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !819, file: !398, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !819, file: !398, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !819, file: !398, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !819, file: !398, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !819, file: !398, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !819, file: !398, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !819, file: !398, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !819, file: !398, line: 312, baseType: !7, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !819, file: !398, line: 316, baseType: !615, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !819, file: !398, line: 319, baseType: !7, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !819, file: !398, line: 323, baseType: !778, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !819, file: !398, line: 327, baseType: !490, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !816, file: !398, line: 739, baseType: !836, size: 448)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !398, line: 350, size: 448, elements: !837)
!837 = !{!838, !866}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !836, file: !398, line: 353, baseType: !839, size: 384)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !398, line: 333, size: 384, elements: !840)
!840 = !{!841, !842, !849}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !839, file: !398, line: 336, baseType: !819, size: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !839, file: !398, line: 343, baseType: !843, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !391, line: 37, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !391, line: 39, baseType: !843, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !844, file: !391, line: 40, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !839, file: !398, line: 344, baseType: !850, size: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !391, line: 45, size: 320, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !851, file: !391, line: 47, baseType: !850, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !851, file: !391, line: 48, baseType: !855, size: 256, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !856)
!856 = !{!857, !859, !860, !865}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !855, file: !135, line: 1884, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !855, file: !135, line: 1885, baseType: !858, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !855, file: !135, line: 1891, baseType: !861, size: 64, offset: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !135, line: 1891, size: 64, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !861, file: !135, line: 1891, baseType: !814, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !861, file: !135, line: 1891, baseType: !490, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !855, file: !135, line: 1892, baseType: !848, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !836, file: !398, line: 359, baseType: !489, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !816, file: !398, line: 740, baseType: !868, size: 512)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !398, line: 365, size: 512, elements: !869)
!869 = !{!870, !871, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !868, file: !398, line: 368, baseType: !839, size: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !868, file: !398, line: 373, baseType: !490, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !868, file: !398, line: 374, baseType: !490, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !816, file: !398, line: 741, baseType: !874, size: 576)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !398, line: 380, size: 576, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !874, file: !398, line: 383, baseType: !868, size: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !874, file: !398, line: 389, baseType: !489, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !816, file: !398, line: 742, baseType: !879, size: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !398, line: 395, size: 320, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !879, file: !398, line: 397, baseType: !819, size: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !879, file: !398, line: 400, baseType: !804, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !816, file: !398, line: 743, baseType: !884, size: 448)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !398, line: 406, size: 448, elements: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !884, file: !398, line: 408, baseType: !819, size: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !884, file: !398, line: 412, baseType: !490, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !884, file: !398, line: 420, baseType: !490, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !884, file: !398, line: 423, baseType: !804, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !816, file: !398, line: 744, baseType: !891, size: 384)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !398, line: 429, size: 384, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !891, file: !398, line: 431, baseType: !819, size: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !891, file: !398, line: 434, baseType: !490, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !891, file: !398, line: 437, baseType: !804, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !816, file: !398, line: 745, baseType: !897, size: 384)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !398, line: 443, size: 384, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !897, file: !398, line: 445, baseType: !819, size: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !897, file: !398, line: 449, baseType: !490, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !897, file: !398, line: 453, baseType: !804, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !816, file: !398, line: 746, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !398, line: 459, size: 320, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !903, file: !398, line: 461, baseType: !819, size: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !903, file: !398, line: 464, baseType: !490, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !816, file: !398, line: 747, baseType: !908, size: 768)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !398, line: 469, size: 768, elements: !909)
!909 = !{!910, !911, !912, !913, !914}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !908, file: !398, line: 471, baseType: !819, size: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !908, file: !398, line: 474, baseType: !7, size: 32, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !908, file: !398, line: 475, baseType: !7, size: 32, offset: 288)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !908, file: !398, line: 478, baseType: !490, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !908, file: !398, line: 481, baseType: !915, size: 384, offset: 384)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 384, elements: !589)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !916, file: !135, line: 1920, baseType: !855, size: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !916, file: !135, line: 1921, baseType: !490, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !916, file: !135, line: 1922, baseType: !615, size: 32, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !816, file: !398, line: 748, baseType: !922, size: 320)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !398, line: 487, size: 320, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !922, file: !398, line: 490, baseType: !819, size: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !922, file: !398, line: 494, baseType: !471, size: 32, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !816, file: !398, line: 749, baseType: !927, size: 384)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !398, line: 500, size: 384, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !927, file: !398, line: 502, baseType: !819, size: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !927, file: !398, line: 506, baseType: !804, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !927, file: !398, line: 510, baseType: !804, size: 64, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !816, file: !398, line: 750, baseType: !933, size: 320)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !398, line: 529, size: 320, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !933, file: !398, line: 531, baseType: !819, size: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !933, file: !398, line: 540, baseType: !804, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !816, file: !398, line: 751, baseType: !938, size: 704)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !398, line: 546, size: 704, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !938, file: !398, line: 549, baseType: !868, size: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !938, file: !398, line: 553, baseType: !476, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !938, file: !398, line: 557, baseType: !470, size: 8, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !938, file: !398, line: 558, baseType: !470, size: 8, offset: 584)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !938, file: !398, line: 559, baseType: !470, size: 8, offset: 592)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !938, file: !398, line: 560, baseType: !470, size: 8, offset: 600)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !938, file: !398, line: 566, baseType: !489, size: 64, offset: 640)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !816, file: !398, line: 752, baseType: !948, size: 384)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !398, line: 571, size: 384, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !948, file: !398, line: 573, baseType: !879, size: 320)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !948, file: !398, line: 577, baseType: !490, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !816, file: !398, line: 753, baseType: !953, size: 576)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !398, line: 600, size: 576, elements: !954)
!954 = !{!955, !956, !957, !960, !969}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !953, file: !398, line: 602, baseType: !879, size: 320)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !953, file: !398, line: 605, baseType: !490, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !953, file: !398, line: 609, baseType: !958, size: 64, offset: 384)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !959, line: 46, baseType: !544)
!959 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!960 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !953, file: !398, line: 612, baseType: !961, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !398, line: 581, size: 320, elements: !963)
!963 = !{!964, !965, !966, !967, !968}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !962, file: !398, line: 583, baseType: !134, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !962, file: !398, line: 586, baseType: !490, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !962, file: !398, line: 589, baseType: !490, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !962, file: !398, line: 592, baseType: !490, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !962, file: !398, line: 595, baseType: !490, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !953, file: !398, line: 616, baseType: !804, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !816, file: !398, line: 754, baseType: !971, size: 512)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !398, line: 622, size: 512, elements: !972)
!972 = !{!973, !974, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !971, file: !398, line: 624, baseType: !879, size: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !971, file: !398, line: 628, baseType: !490, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !971, file: !398, line: 632, baseType: !490, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !971, file: !398, line: 636, baseType: !490, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !816, file: !398, line: 755, baseType: !978, size: 704)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !398, line: 642, size: 704, elements: !979)
!979 = !{!980, !981, !982, !983}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !978, file: !398, line: 644, baseType: !971, size: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !978, file: !398, line: 648, baseType: !490, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !978, file: !398, line: 652, baseType: !490, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !978, file: !398, line: 653, baseType: !490, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !816, file: !398, line: 756, baseType: !985, size: 448)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !398, line: 663, size: 448, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !985, file: !398, line: 665, baseType: !879, size: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !985, file: !398, line: 668, baseType: !490, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !985, file: !398, line: 673, baseType: !490, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !816, file: !398, line: 757, baseType: !991, size: 384)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !398, line: 694, size: 384, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !991, file: !398, line: 696, baseType: !879, size: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !991, file: !398, line: 699, baseType: !490, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !816, file: !398, line: 758, baseType: !996, size: 384)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !398, line: 681, size: 384, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !996, file: !398, line: 683, baseType: !819, size: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !996, file: !398, line: 686, baseType: !490, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !996, file: !398, line: 689, baseType: !490, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !816, file: !398, line: 759, baseType: !1002, size: 384)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !398, line: 707, size: 384, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1002, file: !398, line: 709, baseType: !819, size: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1002, file: !398, line: 712, baseType: !490, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1002, file: !398, line: 712, baseType: !490, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !816, file: !398, line: 760, baseType: !1008, size: 320)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !398, line: 718, size: 320, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1008, file: !398, line: 720, baseType: !819, size: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1008, file: !398, line: 723, baseType: !490, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !811, file: !398, line: 138, baseType: !810, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !398, line: 139, baseType: !810, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !806, file: !398, line: 146, baseType: !809, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !806, file: !398, line: 152, baseType: !804, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !801, file: !343, line: 130, baseType: !665, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !796, file: !343, line: 134, baseType: !475, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !796, file: !343, line: 137, baseType: !490, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !796, file: !343, line: 138, baseType: !615, size: 32, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !796, file: !343, line: 142, baseType: !7, size: 32, offset: 352)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !343, line: 144, baseType: !471, size: 32, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !796, file: !343, line: 145, baseType: !471, size: 32, offset: 416)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !796, file: !343, line: 146, baseType: !1024, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !343, line: 119, baseType: !546)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !779, file: !343, line: 220, baseType: !782, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !779, file: !343, line: 223, baseType: !475, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !779, file: !343, line: 226, baseType: !1028, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 100, size: 1216, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1040, !1041, !1042, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1073, !1081, !1082}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1029, file: !330, line: 102, baseType: !471, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1029, file: !330, line: 105, baseType: !7, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1029, file: !330, line: 108, baseType: !778, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1029, file: !330, line: 111, baseType: !778, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1029, file: !330, line: 114, baseType: !1036, size: 64, offset: 192)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !330, line: 41, size: 64, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1036, file: !330, line: 42, baseType: !329, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1036, file: !330, line: 43, baseType: !7, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1029, file: !330, line: 117, baseType: !7, size: 32, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1029, file: !330, line: 120, baseType: !7, size: 32, offset: 288)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1029, file: !330, line: 123, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !330, line: 87, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !330, line: 87, size: 128, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1045, file: !330, line: 87, baseType: !1048, size: 128)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !330, line: 85, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !330, line: 85, size: 128, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1049, file: !330, line: 85, baseType: !7, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1049, file: !330, line: 85, baseType: !7, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1049, file: !330, line: 85, baseType: !1054, size: 64, offset: 64)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1055, size: 64, elements: !589)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !330, line: 84, baseType: !1028)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1029, file: !330, line: 126, baseType: !1028, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1029, file: !330, line: 129, baseType: !1028, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1029, file: !330, line: 132, baseType: !475, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1029, file: !330, line: 139, baseType: !490, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1029, file: !330, line: 143, baseType: !539, size: 128, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1029, file: !330, line: 146, baseType: !539, size: 128, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1029, file: !330, line: 148, baseType: !470, size: 8, offset: 896)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1029, file: !330, line: 149, baseType: !470, size: 8, offset: 904)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1029, file: !330, line: 153, baseType: !338, size: 32, offset: 928)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1029, file: !330, line: 156, baseType: !1066, size: 64, offset: 960)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !330, line: 48, size: 320, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1067, file: !330, line: 50, baseType: !814, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1067, file: !330, line: 59, baseType: !539, size: 128, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1067, file: !330, line: 64, baseType: !470, size: 8, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1067, file: !330, line: 67, baseType: !1066, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1029, file: !330, line: 159, baseType: !1074, size: 64, offset: 1024)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !330, line: 72, size: 256, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1075, file: !330, line: 74, baseType: !795, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1075, file: !330, line: 77, baseType: !1074, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1075, file: !330, line: 78, baseType: !1074, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1075, file: !330, line: 81, baseType: !1074, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1029, file: !330, line: 162, baseType: !470, size: 8, offset: 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1029, file: !330, line: 166, baseType: !490, size: 64, offset: 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !779, file: !343, line: 229, baseType: !1084, size: 128, offset: 256)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1085, size: 128, elements: !733)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !343, line: 229, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !779, file: !343, line: 232, baseType: !778, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !779, file: !343, line: 233, baseType: !778, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !779, file: !343, line: 238, baseType: !1090, size: 64, offset: 512)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !343, line: 235, size: 64, elements: !1091)
!1091 = !{!1092, !1098}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1090, file: !343, line: 236, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !343, line: 273, size: 128, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1094, file: !343, line: 275, baseType: !804, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1094, file: !343, line: 278, baseType: !804, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1090, file: !343, line: 237, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !343, line: 259, size: 320, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1100, file: !343, line: 261, baseType: !665, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1100, file: !343, line: 262, baseType: !665, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1100, file: !343, line: 266, baseType: !665, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1100, file: !343, line: 267, baseType: !665, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1100, file: !343, line: 270, baseType: !471, size: 32, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !779, file: !343, line: 241, baseType: !1024, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !779, file: !343, line: 244, baseType: !471, size: 32, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !779, file: !343, line: 247, baseType: !471, size: 32, offset: 672)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !779, file: !343, line: 250, baseType: !471, size: 32, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !779, file: !343, line: 253, baseType: !471, size: 32, offset: 736)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !343, line: 256, baseType: !471, size: 32, offset: 768)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !686, file: !668, line: 179, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !668, line: 150, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !668, line: 142, size: 320, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1124, !1125}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1116, file: !668, line: 144, baseType: !490, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1116, file: !668, line: 145, baseType: !665, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1116, file: !668, line: 146, baseType: !665, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1116, file: !668, line: 147, baseType: !1122, size: 32, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1123, line: 31, baseType: !471)
!1123 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1116, file: !668, line: 148, baseType: !7, size: 32, offset: 224)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1116, file: !668, line: 149, baseType: !470, size: 8, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !686, file: !668, line: 180, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !668, line: 162, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !668, line: 159, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1129, file: !668, line: 160, baseType: !490, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1129, file: !668, line: 161, baseType: !546, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !686, file: !668, line: 181, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !668, line: 181, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !681, file: !668, line: 317, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 64, elements: !589)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !681, file: !668, line: 318, baseType: !1139, size: 320)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !668, line: 188, size: 320, elements: !1140)
!1140 = !{!1141, !1143, !1200}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1139, file: !668, line: 190, baseType: !1142, size: 192)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 192, elements: !564)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1139, file: !668, line: 193, baseType: !1144, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !668, line: 206, size: 320, elements: !1146)
!1146 = !{!1147, !1185, !1186, !1187, !1199}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1145, file: !668, line: 208, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !491, line: 62, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1151, line: 538, size: 256, elements: !1152)
!1151 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1152 = !{!1153, !1157, !1163, !1176}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1150, file: !1151, line: 539, baseType: !1154, size: 32)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1151, line: 482, size: 32, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !1151, line: 484, baseType: !7, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1150, file: !1151, line: 540, baseType: !1158, size: 192)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1151, line: 488, size: 192, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1158, file: !1151, line: 489, baseType: !1154, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1158, file: !1151, line: 492, baseType: !476, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1158, file: !1151, line: 496, baseType: !490, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1150, file: !1151, line: 541, baseType: !1164, size: 256)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1151, line: 504, size: 256, elements: !1165)
!1165 = !{!1166, !1167, !1174, !1175}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1164, file: !1151, line: 505, baseType: !1154, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1164, file: !1151, line: 509, baseType: !1168, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1151, line: 501, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1164, file: !1151, line: 510, baseType: !1172, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !1151, line: 513, baseType: !1148, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1150, file: !1151, line: 542, baseType: !1177, size: 128)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1151, line: 530, size: 128, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1177, file: !1151, line: 531, baseType: !1154, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1177, file: !1151, line: 534, baseType: !1181, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1151, line: 525, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!470, !490, !476, !544, !544}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1145, file: !668, line: 211, baseType: !7, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1145, file: !668, line: 214, baseType: !546, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1145, file: !668, line: 224, baseType: !1188, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !668, line: 202, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !668, line: 202, size: 128, elements: !1191)
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1190, file: !668, line: 202, baseType: !1193, size: 128)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !668, line: 200, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !668, line: 200, size: 128, elements: !1195)
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1194, file: !668, line: 200, baseType: !7, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1194, file: !668, line: 200, baseType: !7, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1194, file: !668, line: 200, baseType: !699, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1145, file: !668, line: 234, baseType: !1188, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1139, file: !668, line: 197, baseType: !546, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !681, file: !668, line: 319, baseType: !553, size: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !681, file: !668, line: 320, baseType: !572, size: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !493, file: !135, line: 3384, baseType: !1204, size: 1472)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1205)
!1205 = !{!1206, !1227, !1228, !1229, !1230}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1204, file: !135, line: 3115, baseType: !1207, size: 1216)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1207, file: !135, line: 2985, baseType: !661, size: 960)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1207, file: !135, line: 2986, baseType: !490, size: 64, offset: 960)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1207, file: !135, line: 2987, baseType: !490, size: 64, offset: 1024)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1207, file: !135, line: 2988, baseType: !490, size: 64, offset: 1088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1207, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1207, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1207, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1207, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1207, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1207, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1207, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1207, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1207, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1207, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1207, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1207, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1207, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1207, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1204, file: !135, line: 3117, baseType: !490, size: 64, offset: 1216)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1204, file: !135, line: 3119, baseType: !490, size: 64, offset: 1280)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1204, file: !135, line: 3121, baseType: !490, size: 64, offset: 1344)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1204, file: !135, line: 3123, baseType: !490, size: 64, offset: 1408)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !493, file: !135, line: 3385, baseType: !1232, size: 1088)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1233)
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1232, file: !135, line: 2875, baseType: !661, size: 960)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1232, file: !135, line: 2876, baseType: !665, size: 64, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1232, file: !135, line: 2877, baseType: !1237, size: 64, offset: 1024)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1239, line: 172, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1238, file: !1239, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1238, file: !1239, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1238, file: !1239, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1238, file: !1239, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1238, file: !1239, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1238, file: !1239, line: 195, baseType: !7, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1238, file: !1239, line: 199, baseType: !490, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !493, file: !135, line: 3386, baseType: !1207, size: 1216)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !493, file: !135, line: 3387, baseType: !1250, size: 1280)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1250, file: !135, line: 3094, baseType: !1207, size: 1216)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1250, file: !135, line: 3095, baseType: !1237, size: 64, offset: 1216)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !493, file: !135, line: 3388, baseType: !1255, size: 1216)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1255, file: !135, line: 2825, baseType: !623, size: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1255, file: !135, line: 2827, baseType: !490, size: 64, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1255, file: !135, line: 2828, baseType: !490, size: 64, offset: 960)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1255, file: !135, line: 2829, baseType: !490, size: 64, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1255, file: !135, line: 2830, baseType: !490, size: 64, offset: 1088)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1255, file: !135, line: 2831, baseType: !490, size: 64, offset: 1152)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !493, file: !135, line: 3389, baseType: !1264, size: 1024)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1264, file: !135, line: 2851, baseType: !661, size: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1264, file: !135, line: 2852, baseType: !471, size: 32, offset: 960)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1264, file: !135, line: 2853, baseType: !471, size: 32, offset: 992)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !493, file: !135, line: 3390, baseType: !1270, size: 1024)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1270, file: !135, line: 2858, baseType: !661, size: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1270, file: !135, line: 2859, baseType: !1237, size: 64, offset: 960)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !493, file: !135, line: 3391, baseType: !1275, size: 960)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1275, file: !135, line: 2863, baseType: !661, size: 960)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !493, file: !135, line: 3392, baseType: !1279, size: 1472)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1279, file: !135, line: 3305, baseType: !1204, size: 1472)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !493, file: !135, line: 3393, baseType: !1283, size: 1792)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1284)
!1284 = !{!1285, !1286, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1283, file: !135, line: 3249, baseType: !1204, size: 1472)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1283, file: !135, line: 3251, baseType: !1287, size: 64, offset: 1472)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1289, line: 463, size: 1152, elements: !1290)
!1289 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1290 = !{!1291, !1294, !1325, !1326, !1433, !1441, !1442, !1443, !1444, !1445, !1446, !1470, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1288, file: !1289, line: 464, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1289, line: 464, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1288, file: !1289, line: 467, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !343, line: 374, size: 640, elements: !1297)
!1297 = !{!1298, !1300, !1301, !1314, !1315, !1316, !1317, !1318, !1319, !1321, !1323, !1324}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1296, file: !343, line: 377, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !491, line: 111, baseType: !778)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1296, file: !343, line: 378, baseType: !1299, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1296, file: !343, line: 381, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !343, line: 282, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !343, line: 282, size: 128, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1304, file: !343, line: 282, baseType: !1307, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !343, line: 281, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !343, line: 281, size: 128, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1308, file: !343, line: 281, baseType: !7, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1308, file: !343, line: 281, baseType: !7, size: 32, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1308, file: !343, line: 281, baseType: !1313, size: 64, offset: 64)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1299, size: 64, elements: !589)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1296, file: !343, line: 384, baseType: !471, size: 32, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1296, file: !343, line: 387, baseType: !471, size: 32, offset: 224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1296, file: !343, line: 390, baseType: !471, size: 32, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1296, file: !343, line: 394, baseType: !1302, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1296, file: !343, line: 396, baseType: !342, size: 32, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1296, file: !343, line: 399, baseType: !1320, size: 64, offset: 416)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !733)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1296, file: !343, line: 402, baseType: !1322, size: 64, offset: 480)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !733)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1296, file: !343, line: 406, baseType: !471, size: 32, offset: 544)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1296, file: !343, line: 409, baseType: !471, size: 32, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1288, file: !1289, line: 470, baseType: !805, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1288, file: !1289, line: 473, baseType: !1327, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1239, line: 39, size: 1152, elements: !1329)
!1329 = !{!1330, !1378, !1391, !1397, !1398, !1410, !1411, !1415, !1416, !1417, !1418, !1419}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1328, file: !1239, line: 41, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1332, line: 144, baseType: !1333)
!1332 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1332, line: 100, size: 896, elements: !1335)
!1335 = !{!1336, !1342, !1347, !1352, !1354, !1355, !1356, !1357, !1358, !1359, !1364, !1366, !1367, !1372, !1377}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1334, file: !1332, line: 102, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1332, line: 52, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!1341, !1172}
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1332, line: 47, baseType: !7)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1334, file: !1332, line: 105, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1332, line: 59, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!471, !1172, !1172}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1334, file: !1332, line: 108, baseType: !1348, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1332, line: 63, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !475}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1334, file: !1332, line: 111, baseType: !1353, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1334, file: !1332, line: 114, baseType: !958, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1334, file: !1332, line: 117, baseType: !958, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1334, file: !1332, line: 120, baseType: !958, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1334, file: !1332, line: 124, baseType: !7, size: 32, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1334, file: !1332, line: 128, baseType: !7, size: 32, offset: 480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1334, file: !1332, line: 131, baseType: !1360, size: 64, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1332, line: 75, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!475, !958, !958}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1334, file: !1332, line: 132, baseType: !1365, size: 64, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1332, line: 78, baseType: !1349)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1334, file: !1332, line: 135, baseType: !475, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1334, file: !1332, line: 136, baseType: !1368, size: 64, offset: 704)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1332, line: 82, baseType: !1369)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!475, !475, !958, !958}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1334, file: !1332, line: 137, baseType: !1373, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1332, line: 83, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !475, !475}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1334, file: !1332, line: 141, baseType: !7, size: 32, offset: 832)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1328, file: !1239, line: 48, baseType: !1379, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !398, line: 35, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !398, line: 35, size: 128, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1381, file: !398, line: 35, baseType: !1384, size: 128)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !398, line: 33, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !398, line: 33, size: 128, elements: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1385, file: !398, line: 33, baseType: !7, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1385, file: !398, line: 33, baseType: !7, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1385, file: !398, line: 33, baseType: !1390, size: 64, offset: 64)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 64, elements: !589)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1328, file: !1239, line: 51, baseType: !1392, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1394, file: !135, line: 183, baseType: !483, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1328, file: !1239, line: 54, baseType: !490, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1328, file: !1239, line: 57, baseType: !1399, size: 128, offset: 256)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1400, line: 31, size: 128, elements: !1401)
!1400 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1399, file: !1400, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1399, file: !1400, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1399, file: !1400, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1399, file: !1400, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1399, file: !1400, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1399, file: !1400, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1399, file: !1400, line: 56, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !491, line: 47, baseType: !717)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1328, file: !1239, line: 60, baseType: !1399, size: 128, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1328, file: !1239, line: 64, baseType: !1412, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1414, line: 33, flags: DIFlagFwdDecl)
!1414 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1328, file: !1239, line: 67, baseType: !490, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1328, file: !1239, line: 73, baseType: !1331, size: 64, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1328, file: !1239, line: 77, baseType: !1409, size: 64, offset: 704)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1328, file: !1239, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1328, file: !1239, line: 82, baseType: !1420, size: 320, offset: 832)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !391, line: 62, size: 320, elements: !1421)
!1421 = !{!1422, !1428, !1429, !1430, !1431, !1432}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1420, file: !391, line: 63, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !391, line: 56, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1424, file: !391, line: 57, baseType: !1423, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1424, file: !391, line: 58, baseType: !588, size: 8, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1420, file: !391, line: 64, baseType: !7, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1420, file: !391, line: 66, baseType: !7, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1420, file: !391, line: 68, baseType: !470, size: 8, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1420, file: !391, line: 70, baseType: !843, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1420, file: !391, line: 71, baseType: !850, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1288, file: !1289, line: 476, baseType: !1434, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !330, line: 187, size: 256, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1435, file: !330, line: 189, baseType: !471, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1435, file: !330, line: 192, baseType: !1043, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1435, file: !330, line: 197, baseType: !1331, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1435, file: !330, line: 200, baseType: !1028, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1288, file: !1289, line: 479, baseType: !1331, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1288, file: !1289, line: 484, baseType: !490, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1288, file: !1289, line: 488, baseType: !490, size: 64, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1288, file: !1289, line: 493, baseType: !490, size: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1288, file: !1289, line: 496, baseType: !490, size: 64, offset: 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1288, file: !1289, line: 501, baseType: !1447, size: 64, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !354, line: 2355, size: 576, elements: !1449)
!1449 = !{!1450, !1453, !1454, !1455, !1456, !1458, !1459, !1464, !1465, !1466, !1467, !1468, !1469}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1448, file: !354, line: 2356, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !354, line: 2356, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1448, file: !354, line: 2357, baseType: !476, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1448, file: !354, line: 2358, baseType: !471, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1448, file: !354, line: 2359, baseType: !471, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1448, file: !354, line: 2360, baseType: !1457, size: 128, offset: 192)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 128, elements: !757)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1448, file: !354, line: 2364, baseType: !471, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1448, file: !354, line: 2367, baseType: !1460, size: 128, offset: 384)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !354, line: 2349, size: 128, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1460, file: !354, line: 2351, baseType: !665, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1460, file: !354, line: 2352, baseType: !546, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1448, file: !354, line: 2371, baseType: !353, size: 32, offset: 512)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1448, file: !354, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1448, file: !354, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1448, file: !354, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1448, file: !354, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1448, file: !354, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1288, file: !1289, line: 504, baseType: !1471, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1289, line: 504, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1288, file: !1289, line: 507, baseType: !1331, size: 64, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1288, file: !1289, line: 510, baseType: !471, size: 32, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1288, file: !1289, line: 513, baseType: !471, size: 32, offset: 864)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1288, file: !1289, line: 516, baseType: !615, size: 32, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1288, file: !1289, line: 519, baseType: !615, size: 32, offset: 928)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1288, file: !1289, line: 522, baseType: !7, size: 32, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1288, file: !1289, line: 523, baseType: !7, size: 32, offset: 992)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1288, file: !1289, line: 528, baseType: !476, size: 64, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1288, file: !1289, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1288, file: !1289, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1288, file: !1289, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1288, file: !1289, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1288, file: !1289, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1288, file: !1289, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1288, file: !1289, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1288, file: !1289, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1288, file: !1289, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1288, file: !1289, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1288, file: !1289, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1288, file: !1289, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1288, file: !1289, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1288, file: !1289, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1288, file: !1289, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1288, file: !1289, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1283, file: !135, line: 3254, baseType: !490, size: 64, offset: 1536)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1283, file: !135, line: 3257, baseType: !490, size: 64, offset: 1600)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1283, file: !135, line: 3258, baseType: !490, size: 64, offset: 1664)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1283, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1283, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1283, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1283, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1283, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1283, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1283, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1283, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1283, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1283, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1283, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1283, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1283, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1283, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1283, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1283, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1283, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1283, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !135, line: 3394, baseType: !1519, size: 1344)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1519, file: !135, line: 2280, baseType: !529, size: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1519, file: !135, line: 2281, baseType: !490, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1519, file: !135, line: 2282, baseType: !490, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1519, file: !135, line: 2283, baseType: !490, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1519, file: !135, line: 2284, baseType: !490, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1519, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1519, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1519, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1519, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1519, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1519, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1519, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1519, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1519, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1519, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1519, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1519, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1519, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1519, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1519, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1519, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1519, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1519, file: !135, line: 2306, baseType: !1122, size: 32, offset: 544)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1519, file: !135, line: 2307, baseType: !490, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1519, file: !135, line: 2308, baseType: !490, size: 64, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1519, file: !135, line: 2314, baseType: !1547, size: 64, offset: 704)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1548)
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1547, file: !135, line: 2310, baseType: !471, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1547, file: !135, line: 2311, baseType: !476, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1547, file: !135, line: 2312, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1519, file: !135, line: 2315, baseType: !490, size: 64, offset: 768)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1519, file: !135, line: 2316, baseType: !490, size: 64, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1519, file: !135, line: 2317, baseType: !490, size: 64, offset: 896)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1519, file: !135, line: 2318, baseType: !490, size: 64, offset: 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1519, file: !135, line: 2319, baseType: !490, size: 64, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1519, file: !135, line: 2320, baseType: !490, size: 64, offset: 1088)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1519, file: !135, line: 2321, baseType: !490, size: 64, offset: 1152)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1519, file: !135, line: 2322, baseType: !490, size: 64, offset: 1216)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1519, file: !135, line: 2324, baseType: !1563, size: 64, offset: 1280)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !493, file: !135, line: 3395, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1566, file: !135, line: 1470, baseType: !529, size: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1566, file: !135, line: 1471, baseType: !490, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1566, file: !135, line: 1472, baseType: !490, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !493, file: !135, line: 3396, baseType: !1572, size: 320)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1573)
!1573 = !{!1574, !1575, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1572, file: !135, line: 1483, baseType: !529, size: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1572, file: !135, line: 1484, baseType: !471, size: 32, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1572, file: !135, line: 1485, baseType: !489, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !493, file: !135, line: 3397, baseType: !1578, size: 384)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1578, file: !135, line: 1830, baseType: !529, size: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1578, file: !135, line: 1831, baseType: !615, size: 32, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1578, file: !135, line: 1832, baseType: !490, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1578, file: !135, line: 1835, baseType: !489, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !493, file: !135, line: 3398, baseType: !1585, size: 704)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1596}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1585, file: !135, line: 1899, baseType: !529, size: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1585, file: !135, line: 1902, baseType: !490, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1585, file: !135, line: 1905, baseType: !814, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1585, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1585, file: !135, line: 1911, baseType: !1592, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1239, line: 117, size: 128, elements: !1594)
!1594 = !{!1595}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1593, file: !1239, line: 120, baseType: !1399, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1585, file: !135, line: 1914, baseType: !855, size: 256, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !493, file: !135, line: 3399, baseType: !1598, size: 704)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1598, file: !135, line: 2009, baseType: !529, size: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1598, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1598, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1598, file: !135, line: 2014, baseType: !615, size: 32, offset: 224)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1598, file: !135, line: 2016, baseType: !490, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1598, file: !135, line: 2017, baseType: !1392, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1598, file: !135, line: 2019, baseType: !490, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1598, file: !135, line: 2020, baseType: !490, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1598, file: !135, line: 2021, baseType: !490, size: 64, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1598, file: !135, line: 2022, baseType: !490, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1598, file: !135, line: 2023, baseType: !490, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !493, file: !135, line: 3400, baseType: !1612, size: 832)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1612, file: !135, line: 2431, baseType: !529, size: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1612, file: !135, line: 2433, baseType: !490, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1612, file: !135, line: 2434, baseType: !490, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1612, file: !135, line: 2435, baseType: !490, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1612, file: !135, line: 2436, baseType: !490, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1612, file: !135, line: 2437, baseType: !1392, size: 64, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1612, file: !135, line: 2438, baseType: !490, size: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1612, file: !135, line: 2440, baseType: !490, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1612, file: !135, line: 2441, baseType: !490, size: 64, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1612, file: !135, line: 2443, baseType: !1624, size: 128, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1625, file: !135, line: 182, baseType: !483, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !493, file: !135, line: 3401, baseType: !1629, size: 320)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1630)
!1630 = !{!1631, !1632, !1639}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1629, file: !135, line: 3329, baseType: !529, size: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1629, file: !135, line: 3330, baseType: !1633, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1635)
!1635 = !{!1636, !1637, !1638}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1634, file: !135, line: 3322, baseType: !1633, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1634, file: !135, line: 3323, baseType: !1633, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1634, file: !135, line: 3324, baseType: !490, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1629, file: !135, line: 3331, baseType: !1633, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !493, file: !135, line: 3402, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1641, file: !135, line: 1541, baseType: !529, size: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1641, file: !135, line: 1542, baseType: !1645, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1648)
!1648 = !{!1649}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1647, file: !135, line: 1538, baseType: !1650, size: 192)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1651, file: !135, line: 1537, baseType: !7, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1651, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1651, file: !135, line: 1537, baseType: !1656, size: 128, offset: 64)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1657, size: 128, elements: !589)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1658, file: !135, line: 1533, baseType: !490, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1658, file: !135, line: 1534, baseType: !490, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !493, file: !135, line: 3403, baseType: !1663, size: 512)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1674, !1675, !1676}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1663, file: !135, line: 1939, baseType: !529, size: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1663, file: !135, line: 1940, baseType: !615, size: 32, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1663, file: !135, line: 1941, baseType: !358, size: 32, offset: 224)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1663, file: !135, line: 1946, baseType: !1669, size: 32, offset: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1669, file: !135, line: 1943, baseType: !376, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1669, file: !135, line: 1944, baseType: !383, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1669, file: !135, line: 1945, baseType: !134, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1663, file: !135, line: 1950, baseType: !804, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1663, file: !135, line: 1951, baseType: !804, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1663, file: !135, line: 1953, baseType: !489, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !493, file: !135, line: 3404, baseType: !1678, size: 1664)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1678, file: !135, line: 3338, baseType: !529, size: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1678, file: !135, line: 3341, baseType: !1682, size: 1472, offset: 192)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1683, line: 410, size: 1472, elements: !1684)
!1683 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1682, file: !1683, line: 412, baseType: !471, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1682, file: !1683, line: 413, baseType: !471, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1682, file: !1683, line: 414, baseType: !471, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1682, file: !1683, line: 415, baseType: !471, size: 32, offset: 96)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1682, file: !1683, line: 416, baseType: !471, size: 32, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1682, file: !1683, line: 417, baseType: !471, size: 32, offset: 160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1682, file: !1683, line: 418, baseType: !470, size: 8, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1682, file: !1683, line: 419, baseType: !470, size: 8, offset: 200)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1682, file: !1683, line: 420, baseType: !1694, size: 8, offset: 208)
!1694 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1682, file: !1683, line: 421, baseType: !1694, size: 8, offset: 216)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1682, file: !1683, line: 422, baseType: !1694, size: 8, offset: 224)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1682, file: !1683, line: 423, baseType: !1694, size: 8, offset: 232)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1682, file: !1683, line: 424, baseType: !1694, size: 8, offset: 240)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1682, file: !1683, line: 425, baseType: !1694, size: 8, offset: 248)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1682, file: !1683, line: 426, baseType: !1694, size: 8, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1682, file: !1683, line: 427, baseType: !1694, size: 8, offset: 264)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1682, file: !1683, line: 428, baseType: !1694, size: 8, offset: 272)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1682, file: !1683, line: 429, baseType: !1694, size: 8, offset: 280)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1682, file: !1683, line: 430, baseType: !1694, size: 8, offset: 288)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1682, file: !1683, line: 431, baseType: !1694, size: 8, offset: 296)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1682, file: !1683, line: 432, baseType: !1694, size: 8, offset: 304)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1682, file: !1683, line: 433, baseType: !1694, size: 8, offset: 312)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1682, file: !1683, line: 434, baseType: !1694, size: 8, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1682, file: !1683, line: 435, baseType: !1694, size: 8, offset: 328)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1682, file: !1683, line: 436, baseType: !1694, size: 8, offset: 336)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1682, file: !1683, line: 437, baseType: !1694, size: 8, offset: 344)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1682, file: !1683, line: 438, baseType: !1694, size: 8, offset: 352)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1682, file: !1683, line: 439, baseType: !1694, size: 8, offset: 360)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1682, file: !1683, line: 440, baseType: !1694, size: 8, offset: 368)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1682, file: !1683, line: 441, baseType: !1694, size: 8, offset: 376)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1682, file: !1683, line: 442, baseType: !1694, size: 8, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1682, file: !1683, line: 443, baseType: !1694, size: 8, offset: 392)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1682, file: !1683, line: 444, baseType: !1694, size: 8, offset: 400)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1682, file: !1683, line: 445, baseType: !1694, size: 8, offset: 408)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1682, file: !1683, line: 446, baseType: !1694, size: 8, offset: 416)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1682, file: !1683, line: 447, baseType: !1694, size: 8, offset: 424)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1682, file: !1683, line: 448, baseType: !1694, size: 8, offset: 432)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1682, file: !1683, line: 449, baseType: !1694, size: 8, offset: 440)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1682, file: !1683, line: 450, baseType: !1694, size: 8, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1682, file: !1683, line: 451, baseType: !1694, size: 8, offset: 456)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1682, file: !1683, line: 452, baseType: !1694, size: 8, offset: 464)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1682, file: !1683, line: 453, baseType: !1694, size: 8, offset: 472)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1682, file: !1683, line: 454, baseType: !1694, size: 8, offset: 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1682, file: !1683, line: 455, baseType: !1694, size: 8, offset: 488)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1682, file: !1683, line: 456, baseType: !1694, size: 8, offset: 496)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1682, file: !1683, line: 457, baseType: !1694, size: 8, offset: 504)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1682, file: !1683, line: 458, baseType: !1694, size: 8, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1682, file: !1683, line: 459, baseType: !1694, size: 8, offset: 520)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1682, file: !1683, line: 460, baseType: !1694, size: 8, offset: 528)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1682, file: !1683, line: 461, baseType: !1694, size: 8, offset: 536)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1682, file: !1683, line: 462, baseType: !1694, size: 8, offset: 544)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1682, file: !1683, line: 463, baseType: !1694, size: 8, offset: 552)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1682, file: !1683, line: 464, baseType: !1694, size: 8, offset: 560)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1682, file: !1683, line: 465, baseType: !1694, size: 8, offset: 568)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1682, file: !1683, line: 466, baseType: !1694, size: 8, offset: 576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1682, file: !1683, line: 467, baseType: !1694, size: 8, offset: 584)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1682, file: !1683, line: 468, baseType: !1694, size: 8, offset: 592)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1682, file: !1683, line: 469, baseType: !1694, size: 8, offset: 600)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1682, file: !1683, line: 470, baseType: !1694, size: 8, offset: 608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1682, file: !1683, line: 471, baseType: !1694, size: 8, offset: 616)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1682, file: !1683, line: 472, baseType: !1694, size: 8, offset: 624)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1682, file: !1683, line: 473, baseType: !1694, size: 8, offset: 632)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1682, file: !1683, line: 474, baseType: !1694, size: 8, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1682, file: !1683, line: 475, baseType: !1694, size: 8, offset: 648)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1682, file: !1683, line: 476, baseType: !1694, size: 8, offset: 656)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1682, file: !1683, line: 477, baseType: !1694, size: 8, offset: 664)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1682, file: !1683, line: 478, baseType: !1694, size: 8, offset: 672)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1682, file: !1683, line: 479, baseType: !1694, size: 8, offset: 680)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1682, file: !1683, line: 480, baseType: !1694, size: 8, offset: 688)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1682, file: !1683, line: 481, baseType: !1694, size: 8, offset: 696)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1682, file: !1683, line: 482, baseType: !1694, size: 8, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1682, file: !1683, line: 483, baseType: !1694, size: 8, offset: 712)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1682, file: !1683, line: 484, baseType: !1694, size: 8, offset: 720)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1682, file: !1683, line: 485, baseType: !1694, size: 8, offset: 728)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1682, file: !1683, line: 486, baseType: !1694, size: 8, offset: 736)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1682, file: !1683, line: 487, baseType: !1694, size: 8, offset: 744)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1682, file: !1683, line: 488, baseType: !1694, size: 8, offset: 752)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1682, file: !1683, line: 489, baseType: !1694, size: 8, offset: 760)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1682, file: !1683, line: 490, baseType: !1694, size: 8, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1682, file: !1683, line: 491, baseType: !1694, size: 8, offset: 776)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1682, file: !1683, line: 492, baseType: !1694, size: 8, offset: 784)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1682, file: !1683, line: 493, baseType: !1694, size: 8, offset: 792)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1682, file: !1683, line: 494, baseType: !1694, size: 8, offset: 800)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1682, file: !1683, line: 495, baseType: !1694, size: 8, offset: 808)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1682, file: !1683, line: 496, baseType: !1694, size: 8, offset: 816)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1682, file: !1683, line: 497, baseType: !1694, size: 8, offset: 824)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1682, file: !1683, line: 498, baseType: !1694, size: 8, offset: 832)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1682, file: !1683, line: 499, baseType: !1694, size: 8, offset: 840)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1682, file: !1683, line: 500, baseType: !1694, size: 8, offset: 848)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1682, file: !1683, line: 501, baseType: !1694, size: 8, offset: 856)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1682, file: !1683, line: 502, baseType: !1694, size: 8, offset: 864)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1682, file: !1683, line: 503, baseType: !1694, size: 8, offset: 872)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1682, file: !1683, line: 504, baseType: !1694, size: 8, offset: 880)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1682, file: !1683, line: 505, baseType: !1694, size: 8, offset: 888)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1682, file: !1683, line: 506, baseType: !1694, size: 8, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1682, file: !1683, line: 507, baseType: !1694, size: 8, offset: 904)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1682, file: !1683, line: 508, baseType: !1694, size: 8, offset: 912)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1682, file: !1683, line: 509, baseType: !1694, size: 8, offset: 920)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1682, file: !1683, line: 510, baseType: !1694, size: 8, offset: 928)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1682, file: !1683, line: 511, baseType: !1694, size: 8, offset: 936)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1682, file: !1683, line: 512, baseType: !1694, size: 8, offset: 944)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1682, file: !1683, line: 513, baseType: !1694, size: 8, offset: 952)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1682, file: !1683, line: 514, baseType: !1694, size: 8, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1682, file: !1683, line: 515, baseType: !1694, size: 8, offset: 968)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1682, file: !1683, line: 516, baseType: !1694, size: 8, offset: 976)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1682, file: !1683, line: 517, baseType: !1694, size: 8, offset: 984)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1682, file: !1683, line: 518, baseType: !1694, size: 8, offset: 992)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1682, file: !1683, line: 519, baseType: !1694, size: 8, offset: 1000)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1682, file: !1683, line: 520, baseType: !1694, size: 8, offset: 1008)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1682, file: !1683, line: 521, baseType: !1694, size: 8, offset: 1016)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1682, file: !1683, line: 522, baseType: !1694, size: 8, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1682, file: !1683, line: 523, baseType: !1694, size: 8, offset: 1032)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1682, file: !1683, line: 524, baseType: !1694, size: 8, offset: 1040)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1682, file: !1683, line: 525, baseType: !1694, size: 8, offset: 1048)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1682, file: !1683, line: 526, baseType: !1694, size: 8, offset: 1056)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1682, file: !1683, line: 527, baseType: !1694, size: 8, offset: 1064)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1682, file: !1683, line: 528, baseType: !1694, size: 8, offset: 1072)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1682, file: !1683, line: 529, baseType: !1694, size: 8, offset: 1080)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1682, file: !1683, line: 530, baseType: !1694, size: 8, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1682, file: !1683, line: 531, baseType: !1694, size: 8, offset: 1096)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1682, file: !1683, line: 532, baseType: !1694, size: 8, offset: 1104)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1682, file: !1683, line: 533, baseType: !1694, size: 8, offset: 1112)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1682, file: !1683, line: 534, baseType: !1694, size: 8, offset: 1120)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1682, file: !1683, line: 535, baseType: !1694, size: 8, offset: 1128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1682, file: !1683, line: 536, baseType: !1694, size: 8, offset: 1136)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1682, file: !1683, line: 537, baseType: !1694, size: 8, offset: 1144)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1682, file: !1683, line: 538, baseType: !1694, size: 8, offset: 1152)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1682, file: !1683, line: 539, baseType: !1694, size: 8, offset: 1160)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1682, file: !1683, line: 540, baseType: !1694, size: 8, offset: 1168)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1682, file: !1683, line: 541, baseType: !1694, size: 8, offset: 1176)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1682, file: !1683, line: 542, baseType: !1694, size: 8, offset: 1184)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1682, file: !1683, line: 543, baseType: !1694, size: 8, offset: 1192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1682, file: !1683, line: 544, baseType: !1694, size: 8, offset: 1200)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1682, file: !1683, line: 545, baseType: !1694, size: 8, offset: 1208)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1682, file: !1683, line: 546, baseType: !1694, size: 8, offset: 1216)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1682, file: !1683, line: 547, baseType: !1694, size: 8, offset: 1224)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1682, file: !1683, line: 548, baseType: !1694, size: 8, offset: 1232)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1682, file: !1683, line: 549, baseType: !1694, size: 8, offset: 1240)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1682, file: !1683, line: 550, baseType: !1694, size: 8, offset: 1248)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1682, file: !1683, line: 551, baseType: !1694, size: 8, offset: 1256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1682, file: !1683, line: 552, baseType: !1694, size: 8, offset: 1264)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1682, file: !1683, line: 553, baseType: !1694, size: 8, offset: 1272)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1682, file: !1683, line: 554, baseType: !1694, size: 8, offset: 1280)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1682, file: !1683, line: 555, baseType: !1694, size: 8, offset: 1288)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1682, file: !1683, line: 556, baseType: !1694, size: 8, offset: 1296)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1682, file: !1683, line: 557, baseType: !1694, size: 8, offset: 1304)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1682, file: !1683, line: 558, baseType: !1694, size: 8, offset: 1312)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1682, file: !1683, line: 559, baseType: !1694, size: 8, offset: 1320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1682, file: !1683, line: 560, baseType: !1694, size: 8, offset: 1328)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1682, file: !1683, line: 561, baseType: !1694, size: 8, offset: 1336)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1682, file: !1683, line: 562, baseType: !1694, size: 8, offset: 1344)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1682, file: !1683, line: 563, baseType: !1694, size: 8, offset: 1352)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1682, file: !1683, line: 564, baseType: !1694, size: 8, offset: 1360)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1682, file: !1683, line: 565, baseType: !1694, size: 8, offset: 1368)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1682, file: !1683, line: 566, baseType: !1694, size: 8, offset: 1376)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1682, file: !1683, line: 567, baseType: !1694, size: 8, offset: 1384)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1682, file: !1683, line: 568, baseType: !1694, size: 8, offset: 1392)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1682, file: !1683, line: 569, baseType: !1694, size: 8, offset: 1400)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1682, file: !1683, line: 570, baseType: !1694, size: 8, offset: 1408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1682, file: !1683, line: 571, baseType: !1694, size: 8, offset: 1416)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1682, file: !1683, line: 572, baseType: !1694, size: 8, offset: 1424)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1682, file: !1683, line: 573, baseType: !1694, size: 8, offset: 1432)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1682, file: !1683, line: 574, baseType: !1694, size: 8, offset: 1440)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !493, file: !135, line: 3405, baseType: !1850, size: 384)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1850, file: !135, line: 3353, baseType: !529, size: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1850, file: !135, line: 3356, baseType: !1854, size: 192, offset: 192)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1683, line: 578, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1854, file: !1683, line: 580, baseType: !471, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1854, file: !1683, line: 581, baseType: !471, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1854, file: !1683, line: 582, baseType: !471, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1854, file: !1683, line: 583, baseType: !471, size: 32, offset: 96)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1854, file: !1683, line: 584, baseType: !470, size: 8, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1854, file: !1683, line: 585, baseType: !470, size: 8, offset: 136)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1854, file: !1683, line: 586, baseType: !470, size: 8, offset: 144)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1854, file: !1683, line: 587, baseType: !470, size: 8, offset: 152)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1854, file: !1683, line: 588, baseType: !470, size: 8, offset: 160)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1854, file: !1683, line: 589, baseType: !470, size: 8, offset: 168)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1854, file: !1683, line: 590, baseType: !470, size: 8, offset: 176)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !391, line: 30, baseType: !1868)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !135, line: 1893, baseType: !855)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!1872 = !{!1873, !0}
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(name: "stmt_count", scope: !2, file: !3, line: 49, type: !471, isLocal: true, isDefinition: true)
!1875 = !{i32 2, !"Dwarf Version", i32 4}
!1876 = !{i32 2, !"Debug Info Version", i32 3}
!1877 = !{i32 1, !"wchar_size", i32 4}
!1878 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1879 = distinct !DISubprogram(name: "vprintf", scope: !1880, file: !1880, line: 39, type: !1881, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1880 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!471, !1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !476)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1885, file: !3, baseType: !7, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1885, file: !3, baseType: !7, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1885, file: !3, baseType: !475, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1885, file: !3, baseType: !475, size: 64, offset: 128)
!1891 = !{!1892, !1893}
!1892 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1879, file: !1880, line: 39, type: !1883)
!1893 = !DILocalVariable(name: "__arg", arg: 2, scope: !1879, file: !1880, line: 39, type: !1884)
!1894 = !DILocation(line: 0, scope: !1879)
!1895 = !DILocation(line: 41, column: 20, scope: !1879)
!1896 = !DILocation(line: 41, column: 10, scope: !1879)
!1897 = !DILocation(line: 41, column: 3, scope: !1879)
!1898 = distinct !DISubprogram(name: "getchar", scope: !1880, file: !1880, line: 47, type: !1899, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!471}
!1901 = !{}
!1902 = !DILocation(line: 49, column: 16, scope: !1898)
!1903 = !DILocation(line: 49, column: 10, scope: !1898)
!1904 = !DILocation(line: 49, column: 3, scope: !1898)
!1905 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1880, file: !1880, line: 56, type: !1906, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1959)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!471, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1910, line: 7, baseType: !1911)
!1910 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1912, line: 49, size: 1728, elements: !1913)
!1912 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1929, !1931, !1932, !1933, !1936, !1938, !1939, !1940, !1943, !1945, !1948, !1951, !1952, !1953, !1954, !1955}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1911, file: !1912, line: 51, baseType: !471, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1911, file: !1912, line: 54, baseType: !473, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1911, file: !1912, line: 55, baseType: !473, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1911, file: !1912, line: 56, baseType: !473, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1911, file: !1912, line: 57, baseType: !473, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1911, file: !1912, line: 58, baseType: !473, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1911, file: !1912, line: 59, baseType: !473, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1911, file: !1912, line: 60, baseType: !473, size: 64, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1911, file: !1912, line: 61, baseType: !473, size: 64, offset: 512)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1911, file: !1912, line: 64, baseType: !473, size: 64, offset: 576)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1911, file: !1912, line: 65, baseType: !473, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1911, file: !1912, line: 66, baseType: !473, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1911, file: !1912, line: 68, baseType: !1927, size: 64, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1912, line: 36, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1911, file: !1912, line: 70, baseType: !1930, size: 64, offset: 832)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1911, file: !1912, line: 72, baseType: !471, size: 32, offset: 896)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1911, file: !1912, line: 73, baseType: !471, size: 32, offset: 928)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1911, file: !1912, line: 74, baseType: !1934, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1935, line: 152, baseType: !546)
!1935 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1911, file: !1912, line: 77, baseType: !1937, size: 16, offset: 1024)
!1937 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1911, file: !1912, line: 78, baseType: !1694, size: 8, offset: 1040)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1911, file: !1912, line: 79, baseType: !588, size: 8, offset: 1048)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1911, file: !1912, line: 81, baseType: !1941, size: 64, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1912, line: 43, baseType: null)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1911, file: !1912, line: 89, baseType: !1944, size: 64, offset: 1152)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1935, line: 153, baseType: !546)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1911, file: !1912, line: 91, baseType: !1946, size: 64, offset: 1216)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1912, line: 37, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1911, file: !1912, line: 92, baseType: !1949, size: 64, offset: 1280)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1912, line: 38, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1911, file: !1912, line: 93, baseType: !1930, size: 64, offset: 1344)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1911, file: !1912, line: 94, baseType: !475, size: 64, offset: 1408)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1911, file: !1912, line: 95, baseType: !958, size: 64, offset: 1472)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1911, file: !1912, line: 96, baseType: !471, size: 32, offset: 1536)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1911, file: !1912, line: 98, baseType: !1956, size: 160, offset: 1568)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 160, elements: !1957)
!1957 = !{!1958}
!1958 = !DISubrange(count: 20)
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "__fp", arg: 1, scope: !1905, file: !1880, line: 56, type: !1908)
!1961 = !DILocation(line: 0, scope: !1905)
!1962 = !DILocation(line: 58, column: 10, scope: !1905)
!1963 = !DILocation(line: 58, column: 3, scope: !1905)
!1964 = distinct !DISubprogram(name: "getc_unlocked", scope: !1880, file: !1880, line: 66, type: !1906, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1965)
!1965 = !{!1966}
!1966 = !DILocalVariable(name: "__fp", arg: 1, scope: !1964, file: !1880, line: 66, type: !1908)
!1967 = !DILocation(line: 0, scope: !1964)
!1968 = !DILocation(line: 68, column: 10, scope: !1964)
!1969 = !DILocation(line: 68, column: 3, scope: !1964)
!1970 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1880, file: !1880, line: 73, type: !1899, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1971 = !DILocation(line: 75, column: 10, scope: !1970)
!1972 = !DILocation(line: 75, column: 3, scope: !1970)
!1973 = distinct !DISubprogram(name: "putchar", scope: !1880, file: !1880, line: 82, type: !1974, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!471, !471}
!1976 = !{!1977}
!1977 = !DILocalVariable(name: "__c", arg: 1, scope: !1973, file: !1880, line: 82, type: !471)
!1978 = !DILocation(line: 0, scope: !1973)
!1979 = !DILocation(line: 84, column: 21, scope: !1973)
!1980 = !DILocation(line: 84, column: 10, scope: !1973)
!1981 = !DILocation(line: 84, column: 3, scope: !1973)
!1982 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1880, file: !1880, line: 91, type: !1983, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!471, !471, !1908}
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "__c", arg: 1, scope: !1982, file: !1880, line: 91, type: !471)
!1987 = !DILocalVariable(name: "__stream", arg: 2, scope: !1982, file: !1880, line: 91, type: !1908)
!1988 = !DILocation(line: 0, scope: !1982)
!1989 = !DILocation(line: 93, column: 10, scope: !1982)
!1990 = !DILocation(line: 93, column: 3, scope: !1982)
!1991 = distinct !DISubprogram(name: "putc_unlocked", scope: !1880, file: !1880, line: 101, type: !1983, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1992 = !{!1993, !1994}
!1993 = !DILocalVariable(name: "__c", arg: 1, scope: !1991, file: !1880, line: 101, type: !471)
!1994 = !DILocalVariable(name: "__stream", arg: 2, scope: !1991, file: !1880, line: 101, type: !1908)
!1995 = !DILocation(line: 0, scope: !1991)
!1996 = !DILocation(line: 103, column: 10, scope: !1991)
!1997 = !DILocation(line: 103, column: 3, scope: !1991)
!1998 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1880, file: !1880, line: 108, type: !1974, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "__c", arg: 1, scope: !1998, file: !1880, line: 108, type: !471)
!2001 = !DILocation(line: 0, scope: !1998)
!2002 = !DILocation(line: 110, column: 10, scope: !1998)
!2003 = !DILocation(line: 110, column: 3, scope: !1998)
!2004 = distinct !DISubprogram(name: "getline", scope: !1880, file: !1880, line: 118, type: !2005, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!2007, !472, !2008, !1908}
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1935, line: 193, baseType: !546)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!2009 = !{!2010, !2011, !2012}
!2010 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2004, file: !1880, line: 118, type: !472)
!2011 = !DILocalVariable(name: "__n", arg: 2, scope: !2004, file: !1880, line: 118, type: !2008)
!2012 = !DILocalVariable(name: "__stream", arg: 3, scope: !2004, file: !1880, line: 118, type: !1908)
!2013 = !DILocation(line: 0, scope: !2004)
!2014 = !DILocation(line: 120, column: 10, scope: !2004)
!2015 = !DILocation(line: 120, column: 3, scope: !2004)
!2016 = distinct !DISubprogram(name: "feof_unlocked", scope: !1880, file: !1880, line: 128, type: !1906, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2017 = !{!2018}
!2018 = !DILocalVariable(name: "__stream", arg: 1, scope: !2016, file: !1880, line: 128, type: !1908)
!2019 = !DILocation(line: 0, scope: !2016)
!2020 = !DILocation(line: 130, column: 10, scope: !2016)
!2021 = !DILocation(line: 130, column: 3, scope: !2016)
!2022 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1880, file: !1880, line: 135, type: !1906, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2023 = !{!2024}
!2024 = !DILocalVariable(name: "__stream", arg: 1, scope: !2022, file: !1880, line: 135, type: !1908)
!2025 = !DILocation(line: 0, scope: !2022)
!2026 = !DILocation(line: 137, column: 10, scope: !2022)
!2027 = !DILocation(line: 137, column: 3, scope: !2022)
!2028 = distinct !DISubprogram(name: "tolower", scope: !2029, file: !2029, line: 207, type: !1974, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2029 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "__c", arg: 1, scope: !2028, file: !2029, line: 207, type: !471)
!2032 = !DILocation(line: 0, scope: !2028)
!2033 = !DILocation(line: 209, column: 22, scope: !2028)
!2034 = !DILocation(line: 209, column: 39, scope: !2028)
!2035 = !DILocation(line: 209, column: 38, scope: !2028)
!2036 = !DILocation(line: 209, column: 37, scope: !2028)
!2037 = !DILocation(line: 209, column: 10, scope: !2028)
!2038 = !DILocation(line: 209, column: 3, scope: !2028)
!2039 = distinct !DISubprogram(name: "toupper", scope: !2029, file: !2029, line: 213, type: !1974, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2040)
!2040 = !{!2041}
!2041 = !DILocalVariable(name: "__c", arg: 1, scope: !2039, file: !2029, line: 213, type: !471)
!2042 = !DILocation(line: 0, scope: !2039)
!2043 = !DILocation(line: 215, column: 22, scope: !2039)
!2044 = !DILocation(line: 215, column: 39, scope: !2039)
!2045 = !DILocation(line: 215, column: 38, scope: !2039)
!2046 = !DILocation(line: 215, column: 37, scope: !2039)
!2047 = !DILocation(line: 215, column: 10, scope: !2039)
!2048 = !DILocation(line: 215, column: 3, scope: !2039)
!2049 = distinct !DISubprogram(name: "atoi", scope: !2050, file: !2050, line: 361, type: !2051, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2050 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!471, !476}
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2049, file: !2050, line: 361, type: !476)
!2055 = !DILocation(line: 0, scope: !2049)
!2056 = !DILocation(line: 363, column: 16, scope: !2049)
!2057 = !DILocation(line: 363, column: 10, scope: !2049)
!2058 = !DILocation(line: 363, column: 3, scope: !2049)
!2059 = distinct !DISubprogram(name: "atol", scope: !2050, file: !2050, line: 366, type: !2060, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!546, !476}
!2062 = !{!2063}
!2063 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2059, file: !2050, line: 366, type: !476)
!2064 = !DILocation(line: 0, scope: !2059)
!2065 = !DILocation(line: 368, column: 10, scope: !2059)
!2066 = !DILocation(line: 368, column: 3, scope: !2059)
!2067 = distinct !DISubprogram(name: "atoll", scope: !2050, file: !2050, line: 373, type: !2068, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2071)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2070, !476}
!2070 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2067, file: !2050, line: 373, type: !476)
!2073 = !DILocation(line: 0, scope: !2067)
!2074 = !DILocation(line: 375, column: 10, scope: !2067)
!2075 = !DILocation(line: 375, column: 3, scope: !2067)
!2076 = distinct !DISubprogram(name: "bsearch", scope: !2077, file: !2077, line: 20, type: !2078, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2077 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!475, !1172, !1172, !958, !958, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2050, line: 808, baseType: !1344)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2082 = !DILocalVariable(name: "__key", arg: 1, scope: !2076, file: !2077, line: 20, type: !1172)
!2083 = !DILocalVariable(name: "__base", arg: 2, scope: !2076, file: !2077, line: 20, type: !1172)
!2084 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2076, file: !2077, line: 20, type: !958)
!2085 = !DILocalVariable(name: "__size", arg: 4, scope: !2076, file: !2077, line: 20, type: !958)
!2086 = !DILocalVariable(name: "__compar", arg: 5, scope: !2076, file: !2077, line: 21, type: !2080)
!2087 = !DILocalVariable(name: "__l", scope: !2076, file: !2077, line: 23, type: !958)
!2088 = !DILocalVariable(name: "__u", scope: !2076, file: !2077, line: 23, type: !958)
!2089 = !DILocalVariable(name: "__idx", scope: !2076, file: !2077, line: 23, type: !958)
!2090 = !DILocalVariable(name: "__p", scope: !2076, file: !2077, line: 24, type: !1172)
!2091 = !DILocalVariable(name: "__comparison", scope: !2076, file: !2077, line: 25, type: !471)
!2092 = !DILocation(line: 0, scope: !2076)
!2093 = !DILocation(line: 29, column: 3, scope: !2076)
!2094 = !DILocation(line: 27, column: 7, scope: !2076)
!2095 = !DILocation(line: 29, column: 14, scope: !2076)
!2096 = !DILocation(line: 31, column: 20, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2076, file: !2077, line: 30, column: 5)
!2098 = !DILocation(line: 31, column: 27, scope: !2097)
!2099 = !DILocation(line: 32, column: 56, scope: !2097)
!2100 = !DILocation(line: 32, column: 47, scope: !2097)
!2101 = !DILocation(line: 33, column: 22, scope: !2097)
!2102 = !DILocation(line: 34, column: 24, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !2077, line: 34, column: 11)
!2104 = !DILocation(line: 34, column: 11, scope: !2097)
!2105 = !DILocation(line: 36, column: 29, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !2077, line: 36, column: 16)
!2107 = !DILocation(line: 36, column: 16, scope: !2103)
!2108 = !DILocation(line: 37, column: 14, scope: !2106)
!2109 = distinct !{!2109, !2093, !2110}
!2110 = !DILocation(line: 40, column: 5, scope: !2076)
!2111 = !DILocation(line: 43, column: 1, scope: !2076)
!2112 = distinct !DISubprogram(name: "atof", scope: !2113, file: !2113, line: 25, type: !2114, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!2116, !476}
!2116 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2117 = !{!2118}
!2118 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2112, file: !2113, line: 25, type: !476)
!2119 = !DILocation(line: 0, scope: !2112)
!2120 = !DILocation(line: 27, column: 10, scope: !2112)
!2121 = !DILocation(line: 27, column: 3, scope: !2112)
!2122 = distinct !DISubprogram(name: "strtoimax", scope: !2123, file: !2123, line: 324, type: !2124, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2123 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !1883, !2129, !471}
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2127, line: 101, baseType: !2128)
!2127 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1935, line: 72, baseType: !546)
!2129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !472)
!2130 = !{!2131, !2132, !2133}
!2131 = !DILocalVariable(name: "nptr", arg: 1, scope: !2122, file: !2123, line: 324, type: !1883)
!2132 = !DILocalVariable(name: "endptr", arg: 2, scope: !2122, file: !2123, line: 324, type: !2129)
!2133 = !DILocalVariable(name: "base", arg: 3, scope: !2122, file: !2123, line: 324, type: !471)
!2134 = !DILocation(line: 0, scope: !2122)
!2135 = !DILocation(line: 327, column: 10, scope: !2122)
!2136 = !DILocation(line: 327, column: 3, scope: !2122)
!2137 = distinct !DISubprogram(name: "strtoumax", scope: !2123, file: !2123, line: 336, type: !2138, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2142)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!2140, !1883, !2129, !471}
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2127, line: 102, baseType: !2141)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1935, line: 73, baseType: !544)
!2142 = !{!2143, !2144, !2145}
!2143 = !DILocalVariable(name: "nptr", arg: 1, scope: !2137, file: !2123, line: 336, type: !1883)
!2144 = !DILocalVariable(name: "endptr", arg: 2, scope: !2137, file: !2123, line: 336, type: !2129)
!2145 = !DILocalVariable(name: "base", arg: 3, scope: !2137, file: !2123, line: 336, type: !471)
!2146 = !DILocation(line: 0, scope: !2137)
!2147 = !DILocation(line: 339, column: 10, scope: !2137)
!2148 = !DILocation(line: 339, column: 3, scope: !2137)
!2149 = distinct !DISubprogram(name: "wcstoimax", scope: !2123, file: !2123, line: 348, type: !2150, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2159)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!2126, !2152, !2156, !471}
!2152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2155)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2123, line: 34, baseType: !471)
!2156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2157)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2159 = !{!2160, !2161, !2162}
!2160 = !DILocalVariable(name: "nptr", arg: 1, scope: !2149, file: !2123, line: 348, type: !2152)
!2161 = !DILocalVariable(name: "endptr", arg: 2, scope: !2149, file: !2123, line: 348, type: !2156)
!2162 = !DILocalVariable(name: "base", arg: 3, scope: !2149, file: !2123, line: 348, type: !471)
!2163 = !DILocation(line: 0, scope: !2149)
!2164 = !DILocation(line: 351, column: 10, scope: !2149)
!2165 = !DILocation(line: 351, column: 3, scope: !2149)
!2166 = distinct !DISubprogram(name: "wcstoumax", scope: !2123, file: !2123, line: 362, type: !2167, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2140, !2152, !2156, !471}
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "nptr", arg: 1, scope: !2166, file: !2123, line: 362, type: !2152)
!2171 = !DILocalVariable(name: "endptr", arg: 2, scope: !2166, file: !2123, line: 362, type: !2156)
!2172 = !DILocalVariable(name: "base", arg: 3, scope: !2166, file: !2123, line: 362, type: !471)
!2173 = !DILocation(line: 0, scope: !2166)
!2174 = !DILocation(line: 365, column: 10, scope: !2166)
!2175 = !DILocation(line: 365, column: 3, scope: !2166)
!2176 = distinct !DISubprogram(name: "stat", scope: !2177, file: !2177, line: 453, type: !2178, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!471, !476, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2182, line: 46, size: 1152, elements: !2183)
!2182 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2183 = !{!2184, !2186, !2188, !2190, !2192, !2194, !2196, !2197, !2198, !2199, !2201, !2203, !2211, !2212, !2213}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2181, file: !2182, line: 48, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1935, line: 145, baseType: !544)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2181, file: !2182, line: 53, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1935, line: 148, baseType: !544)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2181, file: !2182, line: 61, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1935, line: 151, baseType: !544)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2181, file: !2182, line: 62, baseType: !2191, size: 32, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1935, line: 150, baseType: !7)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2181, file: !2182, line: 64, baseType: !2193, size: 32, offset: 224)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1935, line: 146, baseType: !7)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2181, file: !2182, line: 65, baseType: !2195, size: 32, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1935, line: 147, baseType: !7)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2181, file: !2182, line: 67, baseType: !471, size: 32, offset: 288)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2181, file: !2182, line: 69, baseType: !2185, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2181, file: !2182, line: 74, baseType: !1934, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2181, file: !2182, line: 78, baseType: !2200, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1935, line: 174, baseType: !546)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2181, file: !2182, line: 80, baseType: !2202, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1935, line: 179, baseType: !546)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2181, file: !2182, line: 91, baseType: !2204, size: 128, offset: 576)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2205, line: 10, size: 128, elements: !2206)
!2205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2206 = !{!2207, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2204, file: !2205, line: 12, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1935, line: 160, baseType: !546)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2204, file: !2205, line: 16, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1935, line: 196, baseType: !546)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2181, file: !2182, line: 92, baseType: !2204, size: 128, offset: 704)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2181, file: !2182, line: 93, baseType: !2204, size: 128, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2181, file: !2182, line: 106, baseType: !2214, size: 192, offset: 960)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, size: 192, elements: !564)
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "__path", arg: 1, scope: !2176, file: !2177, line: 453, type: !476)
!2217 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2176, file: !2177, line: 453, type: !2180)
!2218 = !DILocation(line: 0, scope: !2176)
!2219 = !DILocation(line: 455, column: 10, scope: !2176)
!2220 = !DILocation(line: 455, column: 3, scope: !2176)
!2221 = distinct !DISubprogram(name: "lstat", scope: !2177, file: !2177, line: 460, type: !2178, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2222 = !{!2223, !2224}
!2223 = !DILocalVariable(name: "__path", arg: 1, scope: !2221, file: !2177, line: 460, type: !476)
!2224 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2221, file: !2177, line: 460, type: !2180)
!2225 = !DILocation(line: 0, scope: !2221)
!2226 = !DILocation(line: 462, column: 10, scope: !2221)
!2227 = !DILocation(line: 462, column: 3, scope: !2221)
!2228 = distinct !DISubprogram(name: "fstat", scope: !2177, file: !2177, line: 467, type: !2229, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!471, !471, !2180}
!2231 = !{!2232, !2233}
!2232 = !DILocalVariable(name: "__fd", arg: 1, scope: !2228, file: !2177, line: 467, type: !471)
!2233 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2228, file: !2177, line: 467, type: !2180)
!2234 = !DILocation(line: 0, scope: !2228)
!2235 = !DILocation(line: 469, column: 10, scope: !2228)
!2236 = !DILocation(line: 469, column: 3, scope: !2228)
!2237 = distinct !DISubprogram(name: "fstatat", scope: !2177, file: !2177, line: 474, type: !2238, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!471, !471, !476, !2180, !471}
!2240 = !{!2241, !2242, !2243, !2244}
!2241 = !DILocalVariable(name: "__fd", arg: 1, scope: !2237, file: !2177, line: 474, type: !471)
!2242 = !DILocalVariable(name: "__filename", arg: 2, scope: !2237, file: !2177, line: 474, type: !476)
!2243 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2237, file: !2177, line: 474, type: !2180)
!2244 = !DILocalVariable(name: "__flag", arg: 4, scope: !2237, file: !2177, line: 474, type: !471)
!2245 = !DILocation(line: 0, scope: !2237)
!2246 = !DILocation(line: 477, column: 10, scope: !2237)
!2247 = !DILocation(line: 477, column: 3, scope: !2237)
!2248 = distinct !DISubprogram(name: "mknod", scope: !2177, file: !2177, line: 483, type: !2249, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!471, !476, !2191, !2185}
!2251 = !{!2252, !2253, !2254}
!2252 = !DILocalVariable(name: "__path", arg: 1, scope: !2248, file: !2177, line: 483, type: !476)
!2253 = !DILocalVariable(name: "__mode", arg: 2, scope: !2248, file: !2177, line: 483, type: !2191)
!2254 = !DILocalVariable(name: "__dev", arg: 3, scope: !2248, file: !2177, line: 483, type: !2185)
!2255 = !DILocation(line: 0, scope: !2248)
!2256 = !DILocation(line: 485, column: 10, scope: !2248)
!2257 = !DILocation(line: 485, column: 3, scope: !2248)
!2258 = distinct !DISubprogram(name: "mknodat", scope: !2177, file: !2177, line: 491, type: !2259, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!471, !471, !476, !2191, !2185}
!2261 = !{!2262, !2263, !2264, !2265}
!2262 = !DILocalVariable(name: "__fd", arg: 1, scope: !2258, file: !2177, line: 491, type: !471)
!2263 = !DILocalVariable(name: "__path", arg: 2, scope: !2258, file: !2177, line: 491, type: !476)
!2264 = !DILocalVariable(name: "__mode", arg: 3, scope: !2258, file: !2177, line: 491, type: !2191)
!2265 = !DILocalVariable(name: "__dev", arg: 4, scope: !2258, file: !2177, line: 491, type: !2185)
!2266 = !DILocation(line: 0, scope: !2258)
!2267 = !DILocation(line: 494, column: 10, scope: !2258)
!2268 = !DILocation(line: 494, column: 3, scope: !2258)
!2269 = distinct !DISubprogram(name: "stat64", scope: !2177, file: !2177, line: 502, type: !2270, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2292)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!471, !476, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2182, line: 119, size: 1152, elements: !2274)
!2274 = !{!2275, !2276, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2288, !2289, !2290, !2291}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2273, file: !2182, line: 121, baseType: !2185, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2273, file: !2182, line: 123, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1935, line: 149, baseType: !544)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2273, file: !2182, line: 124, baseType: !2189, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2273, file: !2182, line: 125, baseType: !2191, size: 32, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2273, file: !2182, line: 132, baseType: !2193, size: 32, offset: 224)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2273, file: !2182, line: 133, baseType: !2195, size: 32, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2273, file: !2182, line: 135, baseType: !471, size: 32, offset: 288)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2273, file: !2182, line: 136, baseType: !2185, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2273, file: !2182, line: 137, baseType: !1934, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2273, file: !2182, line: 143, baseType: !2200, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2273, file: !2182, line: 144, baseType: !2287, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1935, line: 180, baseType: !546)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2273, file: !2182, line: 152, baseType: !2204, size: 128, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2273, file: !2182, line: 153, baseType: !2204, size: 128, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2273, file: !2182, line: 154, baseType: !2204, size: 128, offset: 832)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2273, file: !2182, line: 164, baseType: !2214, size: 192, offset: 960)
!2292 = !{!2293, !2294}
!2293 = !DILocalVariable(name: "__path", arg: 1, scope: !2269, file: !2177, line: 502, type: !476)
!2294 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2269, file: !2177, line: 502, type: !2272)
!2295 = !DILocation(line: 0, scope: !2269)
!2296 = !DILocation(line: 504, column: 10, scope: !2269)
!2297 = !DILocation(line: 504, column: 3, scope: !2269)
!2298 = distinct !DISubprogram(name: "lstat64", scope: !2177, file: !2177, line: 509, type: !2270, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2299)
!2299 = !{!2300, !2301}
!2300 = !DILocalVariable(name: "__path", arg: 1, scope: !2298, file: !2177, line: 509, type: !476)
!2301 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2298, file: !2177, line: 509, type: !2272)
!2302 = !DILocation(line: 0, scope: !2298)
!2303 = !DILocation(line: 511, column: 10, scope: !2298)
!2304 = !DILocation(line: 511, column: 3, scope: !2298)
!2305 = distinct !DISubprogram(name: "fstat64", scope: !2177, file: !2177, line: 516, type: !2306, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!471, !471, !2272}
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "__fd", arg: 1, scope: !2305, file: !2177, line: 516, type: !471)
!2310 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2305, file: !2177, line: 516, type: !2272)
!2311 = !DILocation(line: 0, scope: !2305)
!2312 = !DILocation(line: 518, column: 10, scope: !2305)
!2313 = !DILocation(line: 518, column: 3, scope: !2305)
!2314 = distinct !DISubprogram(name: "fstatat64", scope: !2177, file: !2177, line: 523, type: !2315, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!471, !471, !476, !2272, !471}
!2317 = !{!2318, !2319, !2320, !2321}
!2318 = !DILocalVariable(name: "__fd", arg: 1, scope: !2314, file: !2177, line: 523, type: !471)
!2319 = !DILocalVariable(name: "__filename", arg: 2, scope: !2314, file: !2177, line: 523, type: !476)
!2320 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2314, file: !2177, line: 523, type: !2272)
!2321 = !DILocalVariable(name: "__flag", arg: 4, scope: !2314, file: !2177, line: 523, type: !471)
!2322 = !DILocation(line: 0, scope: !2314)
!2323 = !DILocation(line: 526, column: 10, scope: !2314)
!2324 = !DILocation(line: 526, column: 3, scope: !2314)
!2325 = distinct !DISubprogram(name: "set_ssa_name_value", scope: !3, file: !3, line: 57, type: !2326, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2328)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !490, !490}
!2328 = !{!2329, !2330}
!2329 = !DILocalVariable(name: "name", arg: 1, scope: !2325, file: !3, line: 57, type: !490)
!2330 = !DILocalVariable(name: "value", arg: 2, scope: !2325, file: !3, line: 57, type: !490)
!2331 = !DILocation(line: 0, scope: !2325)
!2332 = !DILocation(line: 59, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 59, column: 7)
!2334 = !DILocation(line: 59, column: 34, scope: !2333)
!2335 = !DILocation(line: 59, column: 31, scope: !2333)
!2336 = !DILocation(line: 59, column: 7, scope: !2325)
!2337 = !DILocation(line: 60, column: 5, scope: !2333)
!2338 = !DILocation(line: 62, column: 3, scope: !2325)
!2339 = !DILocation(line: 63, column: 1, scope: !2325)
!2340 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !135, file: !135, line: 182, type: !2341, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!7, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!2345 = !{!2346}
!2346 = !DILocalVariable(name: "vec_", arg: 1, scope: !2340, file: !135, line: 182, type: !2343)
!2347 = !DILocation(line: 0, scope: !2340)
!2348 = !DILocation(line: 182, column: 1, scope: !2340)
!2349 = distinct !DISubprogram(name: "VEC_tree_heap_safe_grow_cleared", scope: !135, file: !135, line: 184, type: !2350, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !2352, !471}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "vec_", arg: 1, scope: !2349, file: !135, line: 184, type: !2352)
!2355 = !DILocalVariable(name: "size_", arg: 2, scope: !2349, file: !135, line: 184, type: !471)
!2356 = !DILocalVariable(name: "oldsize", scope: !2349, file: !135, line: 184, type: !471)
!2357 = !DILocation(line: 0, scope: !2349)
!2358 = !DILocation(line: 184, column: 1, scope: !2349)
!2359 = distinct !DISubprogram(name: "VEC_tree_base_replace", scope: !135, file: !135, line: 182, type: !2360, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2363)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!490, !2362, !7, !490}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!2363 = !{!2364, !2365, !2366, !2367}
!2364 = !DILocalVariable(name: "vec_", arg: 1, scope: !2359, file: !135, line: 182, type: !2362)
!2365 = !DILocalVariable(name: "ix_", arg: 2, scope: !2359, file: !135, line: 182, type: !7)
!2366 = !DILocalVariable(name: "obj_", arg: 3, scope: !2359, file: !135, line: 182, type: !490)
!2367 = !DILocalVariable(name: "old_obj_", scope: !2359, file: !135, line: 182, type: !490)
!2368 = !DILocation(line: 0, scope: !2359)
!2369 = !DILocation(line: 182, column: 1, scope: !2359)
!2370 = distinct !DISubprogram(name: "threadedge_initialize_values", scope: !3, file: !3, line: 67, type: !2371, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null}
!2373 = !DILocation(line: 69, column: 3, scope: !2370)
!2374 = !DILocation(line: 70, column: 21, scope: !2370)
!2375 = !DILocation(line: 70, column: 19, scope: !2370)
!2376 = !DILocation(line: 71, column: 1, scope: !2370)
!2377 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !135, file: !135, line: 184, type: !2378, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!478, !471}
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2377, file: !135, line: 184, type: !471)
!2382 = !DILocation(line: 0, scope: !2377)
!2383 = !DILocation(line: 184, column: 1, scope: !2377)
!2384 = distinct !DISubprogram(name: "threadedge_finalize_values", scope: !3, file: !3, line: 75, type: !2371, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!2385 = !DILocation(line: 77, column: 3, scope: !2384)
!2386 = !DILocation(line: 78, column: 1, scope: !2384)
!2387 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !135, file: !135, line: 184, type: !2388, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !2352}
!2390 = !{!2391}
!2391 = !DILocalVariable(name: "vec_", arg: 1, scope: !2387, file: !135, line: 184, type: !2352)
!2392 = !DILocation(line: 0, scope: !2387)
!2393 = !DILocation(line: 184, column: 1, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2387, file: !135, line: 184, column: 1)
!2395 = !DILocation(line: 184, column: 1, scope: !2387)
!2396 = distinct !DISubprogram(name: "potentially_threadable_block", scope: !3, file: !3, line: 84, type: !2397, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!470, !1299}
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "bb", arg: 1, scope: !2396, file: !3, line: 84, type: !1299)
!2401 = !DILocalVariable(name: "gsi", scope: !2396, file: !3, line: 86, type: !2402)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !398, line: 265, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 254, size: 192, elements: !2404)
!2404 = !{!2405, !2406, !2407}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2403, file: !398, line: 257, baseType: !809, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2403, file: !398, line: 263, baseType: !804, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2403, file: !398, line: 264, baseType: !1299, size: 64, offset: 128)
!2408 = !DILocation(line: 0, scope: !2396)
!2409 = !DILocation(line: 86, column: 3, scope: !2396)
!2410 = !DILocation(line: 90, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 90, column: 7)
!2412 = !DILocation(line: 90, column: 26, scope: !2411)
!2413 = !DILocation(line: 90, column: 29, scope: !2411)
!2414 = !DILocation(line: 90, column: 7, scope: !2396)
!2415 = !DILocation(line: 95, column: 9, scope: !2396)
!2416 = !DILocation(line: 96, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 96, column: 7)
!2418 = !DILocation(line: 97, column: 7, scope: !2417)
!2419 = !DILocation(line: 97, column: 12, scope: !2417)
!2420 = !DILocation(line: 98, column: 7, scope: !2417)
!2421 = !DILocation(line: 98, column: 24, scope: !2417)
!2422 = !DILocation(line: 98, column: 11, scope: !2417)
!2423 = !DILocation(line: 98, column: 40, scope: !2417)
!2424 = !DILocation(line: 99, column: 4, scope: !2417)
!2425 = !DILocation(line: 99, column: 20, scope: !2417)
!2426 = !DILocation(line: 99, column: 7, scope: !2417)
!2427 = !DILocation(line: 99, column: 36, scope: !2417)
!2428 = !DILocation(line: 100, column: 4, scope: !2417)
!2429 = !DILocation(line: 100, column: 20, scope: !2417)
!2430 = !DILocation(line: 100, column: 7, scope: !2417)
!2431 = !DILocation(line: 100, column: 36, scope: !2417)
!2432 = !DILocation(line: 96, column: 7, scope: !2396)
!2433 = !DILocation(line: 103, column: 3, scope: !2396)
!2434 = !DILocation(line: 104, column: 1, scope: !2396)
!2435 = distinct !DISubprogram(name: "single_succ_p", scope: !343, file: !343, line: 626, type: !2436, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2441)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!470, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !491, line: 112, baseType: !2439)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!2441 = !{!2442}
!2442 = !DILocalVariable(name: "bb", arg: 1, scope: !2435, file: !343, line: 626, type: !2438)
!2443 = !DILocation(line: 0, scope: !2435)
!2444 = !DILocation(line: 628, column: 10, scope: !2435)
!2445 = !DILocation(line: 628, column: 33, scope: !2435)
!2446 = !DILocation(line: 628, column: 3, scope: !2435)
!2447 = distinct !DISubprogram(name: "single_pred_p", scope: !343, file: !343, line: 634, type: !2436, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2448 = !{!2449}
!2449 = !DILocalVariable(name: "bb", arg: 1, scope: !2447, file: !343, line: 634, type: !2438)
!2450 = !DILocation(line: 0, scope: !2447)
!2451 = !DILocation(line: 636, column: 10, scope: !2447)
!2452 = !DILocation(line: 636, column: 33, scope: !2447)
!2453 = !DILocation(line: 636, column: 3, scope: !2447)
!2454 = distinct !DISubprogram(name: "gsi_last_bb", scope: !398, file: !398, line: 4450, type: !2455, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2402, !1299}
!2457 = !{!2458, !2459, !2460}
!2458 = !DILocalVariable(name: "bb", arg: 1, scope: !2454, file: !398, line: 4450, type: !1299)
!2459 = !DILocalVariable(name: "i", scope: !2454, file: !398, line: 4452, type: !2402)
!2460 = !DILocalVariable(name: "seq", scope: !2454, file: !398, line: 4453, type: !804)
!2461 = !DILocation(line: 0, scope: !2454)
!2462 = !DILocation(line: 4452, column: 24, scope: !2454)
!2463 = !DILocation(line: 4455, column: 9, scope: !2454)
!2464 = !DILocation(line: 4456, column: 11, scope: !2454)
!2465 = !DILocation(line: 4456, column: 5, scope: !2454)
!2466 = !DILocation(line: 4456, column: 9, scope: !2454)
!2467 = !DILocation(line: 4457, column: 5, scope: !2454)
!2468 = !DILocation(line: 4457, column: 9, scope: !2454)
!2469 = !DILocation(line: 4458, column: 5, scope: !2454)
!2470 = !DILocation(line: 4458, column: 8, scope: !2454)
!2471 = !DILocation(line: 4461, column: 1, scope: !2454)
!2472 = distinct !DISubprogram(name: "gsi_end_p", scope: !398, file: !398, line: 4467, type: !2473, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!470, !2402}
!2475 = !{!2476}
!2476 = !DILocalVariable(name: "i", arg: 1, scope: !2472, file: !398, line: 4467, type: !2402)
!2477 = !DILocation(line: 4467, column: 33, scope: !2472)
!2478 = !DILocation(line: 4469, column: 12, scope: !2472)
!2479 = !DILocation(line: 4469, column: 16, scope: !2472)
!2480 = !DILocation(line: 4469, column: 10, scope: !2472)
!2481 = !DILocation(line: 4469, column: 3, scope: !2472)
!2482 = distinct !DISubprogram(name: "gsi_stmt", scope: !398, file: !398, line: 4501, type: !2483, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!814, !2402}
!2485 = !{!2486}
!2486 = !DILocalVariable(name: "i", arg: 1, scope: !2482, file: !398, line: 4501, type: !2402)
!2487 = !DILocation(line: 4501, column: 32, scope: !2482)
!2488 = !DILocation(line: 4503, column: 12, scope: !2482)
!2489 = !DILocation(line: 4503, column: 17, scope: !2482)
!2490 = !DILocation(line: 4503, column: 3, scope: !2482)
!2491 = distinct !DISubprogram(name: "gimple_code", scope: !398, file: !398, line: 1052, type: !2492, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2495)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!397, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !491, line: 60, baseType: !1870)
!2495 = !{!2496}
!2496 = !DILocalVariable(name: "g", arg: 1, scope: !2491, file: !398, line: 1052, type: !2494)
!2497 = !DILocation(line: 0, scope: !2491)
!2498 = !DILocation(line: 1054, column: 20, scope: !2491)
!2499 = !DILocation(line: 1054, column: 3, scope: !2491)
!2500 = distinct !DISubprogram(name: "thread_across_edge", scope: !3, file: !3, line: 612, type: !2501, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !814, !794, !470, !2352, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!490, !814, !814}
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2528, !2529, !2530, !2534, !2537, !2540, !2541}
!2507 = !DILocalVariable(name: "dummy_cond", arg: 1, scope: !2500, file: !3, line: 612, type: !814)
!2508 = !DILocalVariable(name: "e", arg: 2, scope: !2500, file: !3, line: 613, type: !794)
!2509 = !DILocalVariable(name: "handle_dominating_asserts", arg: 3, scope: !2500, file: !3, line: 614, type: !470)
!2510 = !DILocalVariable(name: "stack", arg: 4, scope: !2500, file: !3, line: 615, type: !2352)
!2511 = !DILocalVariable(name: "simplify", arg: 5, scope: !2500, file: !3, line: 616, type: !2503)
!2512 = !DILocalVariable(name: "stmt", scope: !2500, file: !3, line: 618, type: !814)
!2513 = !DILocalVariable(name: "iter", scope: !2514, file: !3, line: 626, type: !2516)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 625, column: 5)
!2515 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 624, column: 7)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !391, line: 140, baseType: !2517)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !391, line: 131, size: 320, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2523, !2525, !2526, !2527}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2517, file: !391, line: 133, baseType: !470, size: 8)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2517, file: !391, line: 134, baseType: !390, size: 32, offset: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2517, file: !391, line: 135, baseType: !2522, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !391, line: 42, baseType: !843)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2517, file: !391, line: 136, baseType: !2524, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !391, line: 50, baseType: !850)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2517, file: !391, line: 137, baseType: !471, size: 32, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2517, file: !391, line: 138, baseType: !471, size: 32, offset: 224)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2517, file: !391, line: 139, baseType: !814, size: 64, offset: 256)
!2528 = !DILocalVariable(name: "use_p", scope: !2514, file: !3, line: 627, type: !1867)
!2529 = !DILocalVariable(name: "last", scope: !2514, file: !3, line: 628, type: !814)
!2530 = !DILocalVariable(name: "use", scope: !2531, file: !3, line: 632, type: !490)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 631, column: 2)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 630, column: 7)
!2533 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 630, column: 7)
!2534 = !DILocalVariable(name: "cond", scope: !2535, file: !3, line: 659, type: !490)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 658, column: 5)
!2536 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 655, column: 7)
!2537 = !DILocalVariable(name: "taken_edge", scope: !2538, file: !3, line: 666, type: !794)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 665, column: 2)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 664, column: 11)
!2540 = !DILocalVariable(name: "dest", scope: !2538, file: !3, line: 667, type: !1299)
!2541 = !DILabel(scope: !2500, name: "fail", file: !3, line: 677)
!2542 = !DILocation(line: 0, scope: !2500)
!2543 = !DILocation(line: 624, column: 10, scope: !2515)
!2544 = !DILocation(line: 624, column: 16, scope: !2515)
!2545 = !DILocation(line: 624, column: 7, scope: !2500)
!2546 = !DILocation(line: 626, column: 7, scope: !2514)
!2547 = !DILocation(line: 628, column: 47, scope: !2514)
!2548 = !DILocation(line: 628, column: 31, scope: !2514)
!2549 = !DILocation(line: 628, column: 21, scope: !2514)
!2550 = !DILocation(line: 0, scope: !2514)
!2551 = !DILocation(line: 630, column: 7, scope: !2533)
!2552 = !DILocation(line: 0, scope: !2533)
!2553 = !DILocation(line: 630, column: 7, scope: !2532)
!2554 = !DILocation(line: 632, column: 15, scope: !2531)
!2555 = !DILocation(line: 0, scope: !2531)
!2556 = !DILocation(line: 634, column: 15, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 634, column: 15)
!2558 = !DILocation(line: 634, column: 31, scope: !2557)
!2559 = !DILocation(line: 635, column: 8, scope: !2557)
!2560 = !DILocation(line: 635, column: 24, scope: !2557)
!2561 = !DILocation(line: 635, column: 11, scope: !2557)
!2562 = !DILocation(line: 635, column: 49, scope: !2557)
!2563 = !DILocation(line: 636, column: 8, scope: !2557)
!2564 = !DILocation(line: 636, column: 22, scope: !2557)
!2565 = !DILocation(line: 636, column: 11, scope: !2557)
!2566 = !DILocation(line: 636, column: 53, scope: !2557)
!2567 = !DILocation(line: 636, column: 47, scope: !2557)
!2568 = !DILocation(line: 634, column: 15, scope: !2531)
!2569 = !DILocation(line: 638, column: 2, scope: !2532)
!2570 = distinct !{!2570, !2551, !2571}
!2571 = !DILocation(line: 638, column: 2, scope: !2533)
!2572 = !DILocation(line: 639, column: 5, scope: !2515)
!2573 = !DILocation(line: 641, column: 14, scope: !2500)
!2574 = !DILocation(line: 644, column: 8, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 644, column: 7)
!2576 = !DILocation(line: 644, column: 7, scope: !2500)
!2577 = !DILocation(line: 649, column: 10, scope: !2500)
!2578 = !DILocation(line: 650, column: 8, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 650, column: 7)
!2580 = !DILocation(line: 650, column: 7, scope: !2500)
!2581 = !DILocation(line: 655, column: 7, scope: !2536)
!2582 = !DILocation(line: 655, column: 26, scope: !2536)
!2583 = !DILocation(line: 656, column: 7, scope: !2536)
!2584 = !DILocation(line: 656, column: 10, scope: !2536)
!2585 = !DILocation(line: 656, column: 29, scope: !2536)
!2586 = !DILocation(line: 657, column: 7, scope: !2536)
!2587 = !DILocation(line: 657, column: 10, scope: !2536)
!2588 = !DILocation(line: 657, column: 29, scope: !2536)
!2589 = !DILocation(line: 655, column: 7, scope: !2500)
!2590 = !DILocation(line: 662, column: 14, scope: !2535)
!2591 = !DILocation(line: 0, scope: !2535)
!2592 = !DILocation(line: 664, column: 11, scope: !2539)
!2593 = !DILocation(line: 664, column: 16, scope: !2539)
!2594 = !DILocation(line: 664, column: 19, scope: !2539)
!2595 = !DILocation(line: 664, column: 11, scope: !2535)
!2596 = !DILocation(line: 666, column: 42, scope: !2538)
!2597 = !DILocation(line: 666, column: 22, scope: !2538)
!2598 = !DILocation(line: 0, scope: !2538)
!2599 = !DILocation(line: 667, column: 24, scope: !2538)
!2600 = !DILocation(line: 667, column: 49, scope: !2538)
!2601 = !DILocation(line: 669, column: 19, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 669, column: 8)
!2603 = !DILocation(line: 669, column: 13, scope: !2602)
!2604 = !DILocation(line: 669, column: 8, scope: !2538)
!2605 = !DILocation(line: 672, column: 4, scope: !2538)
!2606 = !DILocation(line: 673, column: 4, scope: !2538)
!2607 = !DILocation(line: 674, column: 2, scope: !2539)
!2608 = !DILocation(line: 677, column: 2, scope: !2500)
!2609 = !DILocation(line: 678, column: 3, scope: !2500)
!2610 = !DILocation(line: 679, column: 1, scope: !2500)
!2611 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2612, file: !2612, line: 768, type: !2613, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2616)
!2612 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!1867, !2615, !814, !471}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2616 = !{!2617, !2618, !2619}
!2617 = !DILocalVariable(name: "ptr", arg: 1, scope: !2611, file: !2612, line: 768, type: !2615)
!2618 = !DILocalVariable(name: "stmt", arg: 2, scope: !2611, file: !2612, line: 768, type: !814)
!2619 = !DILocalVariable(name: "flags", arg: 3, scope: !2611, file: !2612, line: 768, type: !471)
!2620 = !DILocation(line: 0, scope: !2611)
!2621 = !DILocation(line: 772, column: 3, scope: !2611)
!2622 = !DILocation(line: 773, column: 8, scope: !2611)
!2623 = !DILocation(line: 773, column: 18, scope: !2611)
!2624 = !DILocation(line: 774, column: 10, scope: !2611)
!2625 = !DILocation(line: 774, column: 3, scope: !2611)
!2626 = distinct !DISubprogram(name: "op_iter_done", scope: !2612, file: !2612, line: 652, type: !2627, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2631)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!470, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2516)
!2631 = !{!2632}
!2632 = !DILocalVariable(name: "ptr", arg: 1, scope: !2626, file: !2612, line: 652, type: !2629)
!2633 = !DILocation(line: 0, scope: !2626)
!2634 = !DILocation(line: 654, column: 15, scope: !2626)
!2635 = !DILocation(line: 654, column: 3, scope: !2626)
!2636 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2612, file: !2612, line: 427, type: !2637, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!490, !1867}
!2639 = !{!2640}
!2640 = !DILocalVariable(name: "use", arg: 1, scope: !2636, file: !2612, line: 427, type: !1867)
!2641 = !DILocation(line: 0, scope: !2636)
!2642 = !DILocation(line: 429, column: 17, scope: !2636)
!2643 = !DILocation(line: 429, column: 10, scope: !2636)
!2644 = !DILocation(line: 429, column: 3, scope: !2636)
!2645 = distinct !DISubprogram(name: "gimple_bb", scope: !398, file: !398, line: 1112, type: !2646, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!778, !2494}
!2648 = !{!2649}
!2649 = !DILocalVariable(name: "g", arg: 1, scope: !2645, file: !398, line: 1112, type: !2494)
!2650 = !DILocation(line: 0, scope: !2645)
!2651 = !DILocation(line: 1114, column: 20, scope: !2645)
!2652 = !DILocation(line: 1114, column: 3, scope: !2645)
!2653 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2612, file: !2612, line: 659, type: !2654, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!1867, !2615}
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "ptr", arg: 1, scope: !2653, file: !2612, line: 659, type: !2615)
!2658 = !DILocalVariable(name: "use_p", scope: !2653, file: !2612, line: 661, type: !1867)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 665, column: 12, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2653, file: !2612, line: 665, column: 7)
!2662 = !DILocation(line: 665, column: 7, scope: !2661)
!2663 = !DILocation(line: 665, column: 7, scope: !2653)
!2664 = !DILocation(line: 667, column: 15, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2661, file: !2612, line: 666, column: 5)
!2666 = !DILocation(line: 668, column: 30, scope: !2665)
!2667 = !DILocation(line: 668, column: 17, scope: !2665)
!2668 = !DILocation(line: 669, column: 7, scope: !2665)
!2669 = !DILocation(line: 671, column: 12, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2653, file: !2612, line: 671, column: 7)
!2671 = !DILocation(line: 671, column: 25, scope: !2670)
!2672 = !DILocation(line: 671, column: 18, scope: !2670)
!2673 = !DILocation(line: 671, column: 7, scope: !2653)
!2674 = !DILocation(line: 673, column: 14, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !2612, line: 672, column: 5)
!2676 = !DILocation(line: 673, column: 7, scope: !2675)
!2677 = !DILocation(line: 675, column: 8, scope: !2653)
!2678 = !DILocation(line: 675, column: 13, scope: !2653)
!2679 = !DILocation(line: 676, column: 3, scope: !2653)
!2680 = !DILocation(line: 677, column: 1, scope: !2653)
!2681 = distinct !DISubprogram(name: "record_temporary_equivalences_from_phis", scope: !3, file: !3, line: 189, type: !2682, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!470, !794, !2352}
!2684 = !{!2685, !2686, !2687, !2688, !2692, !2693}
!2685 = !DILocalVariable(name: "e", arg: 1, scope: !2681, file: !3, line: 189, type: !794)
!2686 = !DILocalVariable(name: "stack", arg: 2, scope: !2681, file: !3, line: 189, type: !2352)
!2687 = !DILocalVariable(name: "gsi", scope: !2681, file: !3, line: 191, type: !2402)
!2688 = !DILocalVariable(name: "phi", scope: !2689, file: !3, line: 198, type: !814)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 197, column: 5)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 196, column: 3)
!2691 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 196, column: 3)
!2692 = !DILocalVariable(name: "src", scope: !2689, file: !3, line: 199, type: !490)
!2693 = !DILocalVariable(name: "dst", scope: !2689, file: !3, line: 200, type: !490)
!2694 = !DILocation(line: 0, scope: !2681)
!2695 = !DILocation(line: 191, column: 3, scope: !2681)
!2696 = !DILocation(line: 196, column: 14, scope: !2691)
!2697 = !DILocation(line: 196, column: 33, scope: !2691)
!2698 = !DILocation(line: 0, scope: !2689)
!2699 = !DILocation(line: 196, column: 8, scope: !2691)
!2700 = !DILocation(line: 196, column: 41, scope: !2690)
!2701 = !DILocation(line: 196, column: 40, scope: !2690)
!2702 = !DILocation(line: 196, column: 3, scope: !2691)
!2703 = !DILocation(line: 198, column: 20, scope: !2689)
!2704 = !DILocation(line: 199, column: 18, scope: !2689)
!2705 = !DILocation(line: 200, column: 18, scope: !2689)
!2706 = !DILocation(line: 205, column: 15, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 205, column: 11)
!2708 = !DILocation(line: 206, column: 4, scope: !2707)
!2709 = !DILocation(line: 206, column: 7, scope: !2707)
!2710 = !DILocation(line: 206, column: 23, scope: !2707)
!2711 = !DILocation(line: 207, column: 4, scope: !2707)
!2712 = !DILocation(line: 207, column: 20, scope: !2707)
!2713 = !DILocation(line: 207, column: 7, scope: !2707)
!2714 = !DILocation(line: 207, column: 45, scope: !2707)
!2715 = !DILocation(line: 208, column: 4, scope: !2707)
!2716 = !DILocation(line: 208, column: 18, scope: !2707)
!2717 = !DILocation(line: 208, column: 7, scope: !2707)
!2718 = !DILocation(line: 208, column: 49, scope: !2707)
!2719 = !DILocation(line: 208, column: 43, scope: !2707)
!2720 = !DILocation(line: 205, column: 11, scope: !2689)
!2721 = !DILocation(line: 213, column: 11, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 213, column: 11)
!2723 = !DILocation(line: 213, column: 11, scope: !2689)
!2724 = !DILocation(line: 214, column: 12, scope: !2722)
!2725 = !DILocation(line: 214, column: 2, scope: !2722)
!2726 = !DILocation(line: 216, column: 7, scope: !2689)
!2727 = !DILocation(line: 217, column: 5, scope: !2690)
!2728 = !DILocation(line: 196, column: 58, scope: !2690)
!2729 = !DILocation(line: 196, column: 3, scope: !2690)
!2730 = distinct !{!2730, !2702, !2731}
!2731 = !DILocation(line: 217, column: 5, scope: !2691)
!2732 = !DILocation(line: 219, column: 1, scope: !2681)
!2733 = distinct !DISubprogram(name: "record_temporary_equivalences_from_stmts_at_dest", scope: !3, file: !3, line: 292, type: !2734, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!814, !794, !2352, !2503}
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2747, !2750, !2754, !2755, !2756, !2757, !2758, !2762}
!2737 = !DILocalVariable(name: "e", arg: 1, scope: !2733, file: !3, line: 292, type: !794)
!2738 = !DILocalVariable(name: "stack", arg: 2, scope: !2733, file: !3, line: 293, type: !2352)
!2739 = !DILocalVariable(name: "simplify", arg: 3, scope: !2733, file: !3, line: 294, type: !2503)
!2740 = !DILocalVariable(name: "stmt", scope: !2733, file: !3, line: 297, type: !814)
!2741 = !DILocalVariable(name: "gsi", scope: !2733, file: !3, line: 298, type: !2402)
!2742 = !DILocalVariable(name: "max_stmt_count", scope: !2733, file: !3, line: 299, type: !471)
!2743 = !DILocalVariable(name: "cached_lhs", scope: !2744, file: !3, line: 309, type: !490)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 308, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 307, column: 3)
!2746 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 307, column: 3)
!2747 = !DILocalVariable(name: "fndecl", scope: !2748, file: !3, line: 368, type: !490)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 367, column: 2)
!2749 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 366, column: 11)
!2750 = !DILocalVariable(name: "copy", scope: !2751, file: !3, line: 393, type: !848)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 389, column: 2)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 385, column: 16)
!2753 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 382, column: 11)
!2754 = !DILocalVariable(name: "iter", scope: !2751, file: !3, line: 394, type: !2516)
!2755 = !DILocalVariable(name: "use_p", scope: !2751, file: !3, line: 395, type: !1867)
!2756 = !DILocalVariable(name: "num", scope: !2751, file: !3, line: 396, type: !7)
!2757 = !DILocalVariable(name: "i", scope: !2751, file: !3, line: 396, type: !7)
!2758 = !DILocalVariable(name: "tmp", scope: !2759, file: !3, line: 405, type: !490)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 404, column: 6)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 403, column: 4)
!2761 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 403, column: 4)
!2762 = !DILocalVariable(name: "use", scope: !2759, file: !3, line: 406, type: !490)
!2763 = !DILocation(line: 0, scope: !2733)
!2764 = !DILocation(line: 298, column: 3, scope: !2733)
!2765 = !DILocation(line: 301, column: 20, scope: !2733)
!2766 = !DILocation(line: 307, column: 14, scope: !2746)
!2767 = !DILocation(line: 307, column: 31, scope: !2746)
!2768 = !DILocation(line: 0, scope: !2751)
!2769 = !DILocation(line: 307, column: 8, scope: !2746)
!2770 = !DILocation(line: 307, column: 39, scope: !2745)
!2771 = !DILocation(line: 307, column: 38, scope: !2745)
!2772 = !DILocation(line: 307, column: 3, scope: !2746)
!2773 = !DILocation(line: 0, scope: !2744)
!2774 = !DILocation(line: 311, column: 14, scope: !2744)
!2775 = !DILocation(line: 314, column: 11, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 314, column: 11)
!2777 = !DILocation(line: 314, column: 30, scope: !2776)
!2778 = !DILocation(line: 315, column: 4, scope: !2776)
!2779 = !DILocation(line: 315, column: 7, scope: !2776)
!2780 = !DILocation(line: 315, column: 26, scope: !2776)
!2781 = !DILocation(line: 316, column: 4, scope: !2776)
!2782 = !DILocation(line: 316, column: 7, scope: !2776)
!2783 = !DILocation(line: 314, column: 11, scope: !2744)
!2784 = !DILocation(line: 322, column: 11, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 322, column: 11)
!2786 = !DILocation(line: 322, column: 30, scope: !2785)
!2787 = !DILocation(line: 322, column: 44, scope: !2785)
!2788 = !DILocation(line: 322, column: 47, scope: !2785)
!2789 = !DILocation(line: 322, column: 11, scope: !2744)
!2790 = !DILocation(line: 327, column: 17, scope: !2744)
!2791 = !DILocation(line: 328, column: 22, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 328, column: 11)
!2793 = !DILocation(line: 328, column: 11, scope: !2744)
!2794 = !DILocation(line: 334, column: 12, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 334, column: 11)
!2796 = !DILocation(line: 334, column: 31, scope: !2795)
!2797 = !DILocation(line: 335, column: 12, scope: !2795)
!2798 = !DILocation(line: 335, column: 15, scope: !2795)
!2799 = !DILocation(line: 335, column: 52, scope: !2795)
!2800 = !DILocation(line: 336, column: 11, scope: !2795)
!2801 = !DILocation(line: 336, column: 15, scope: !2795)
!2802 = !DILocation(line: 336, column: 34, scope: !2795)
!2803 = !DILocation(line: 337, column: 15, scope: !2795)
!2804 = !DILocation(line: 337, column: 18, scope: !2795)
!2805 = !DILocation(line: 337, column: 41, scope: !2795)
!2806 = !DILocation(line: 338, column: 15, scope: !2795)
!2807 = !DILocation(line: 338, column: 18, scope: !2795)
!2808 = !DILocation(line: 338, column: 53, scope: !2795)
!2809 = !DILocation(line: 334, column: 11, scope: !2744)
!2810 = !DILocation(line: 366, column: 11, scope: !2749)
!2811 = !DILocation(line: 366, column: 11, scope: !2744)
!2812 = !DILocation(line: 368, column: 18, scope: !2748)
!2813 = !DILocation(line: 0, scope: !2748)
!2814 = !DILocation(line: 369, column: 8, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 369, column: 8)
!2816 = !DILocation(line: 370, column: 8, scope: !2815)
!2817 = !DILocation(line: 370, column: 12, scope: !2815)
!2818 = !DILocation(line: 370, column: 40, scope: !2815)
!2819 = !DILocation(line: 371, column: 5, scope: !2815)
!2820 = !DILocation(line: 371, column: 36, scope: !2815)
!2821 = !DILocation(line: 369, column: 8, scope: !2748)
!2822 = !DILocation(line: 373, column: 2, scope: !2749)
!2823 = !DILocation(line: 382, column: 11, scope: !2753)
!2824 = !DILocation(line: 383, column: 11, scope: !2753)
!2825 = !DILocation(line: 383, column: 14, scope: !2753)
!2826 = !DILocation(line: 383, column: 52, scope: !2753)
!2827 = !DILocation(line: 382, column: 11, scope: !2744)
!2828 = !DILocation(line: 384, column: 15, scope: !2753)
!2829 = !DILocation(line: 384, column: 2, scope: !2753)
!2830 = !DILocation(line: 385, column: 16, scope: !2752)
!2831 = !DILocation(line: 386, column: 16, scope: !2752)
!2832 = !DILocation(line: 386, column: 19, scope: !2752)
!2833 = !DILocation(line: 386, column: 57, scope: !2752)
!2834 = !DILocation(line: 385, column: 16, scope: !2753)
!2835 = !DILocation(line: 387, column: 15, scope: !2752)
!2836 = !DILocation(line: 387, column: 2, scope: !2752)
!2837 = !DILocation(line: 394, column: 4, scope: !2751)
!2838 = !DILocation(line: 398, column: 10, scope: !2751)
!2839 = !DILocation(line: 399, column: 11, scope: !2751)
!2840 = !DILocation(line: 403, column: 4, scope: !2761)
!2841 = !DILocation(line: 0, scope: !2761)
!2842 = !DILocation(line: 403, column: 4, scope: !2760)
!2843 = !DILocation(line: 0, scope: !2759)
!2844 = !DILocation(line: 406, column: 19, scope: !2759)
!2845 = !DILocation(line: 408, column: 14, scope: !2759)
!2846 = !DILocation(line: 408, column: 8, scope: !2759)
!2847 = !DILocation(line: 408, column: 18, scope: !2759)
!2848 = !DILocation(line: 409, column: 12, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 409, column: 12)
!2850 = !DILocation(line: 409, column: 28, scope: !2849)
!2851 = !DILocation(line: 409, column: 12, scope: !2759)
!2852 = !DILocation(line: 410, column: 9, scope: !2849)
!2853 = !DILocation(line: 411, column: 12, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 411, column: 12)
!2855 = !DILocation(line: 411, column: 12, scope: !2759)
!2856 = !DILocation(line: 412, column: 3, scope: !2854)
!2857 = distinct !{!2857, !2840, !2858}
!2858 = !DILocation(line: 413, column: 6, scope: !2761)
!2859 = !DILocation(line: 417, column: 15, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 417, column: 15)
!2861 = !DILocation(line: 417, column: 15, scope: !2751)
!2862 = !DILocation(line: 418, column: 26, scope: !2860)
!2863 = !DILocation(line: 418, column: 13, scope: !2860)
!2864 = !DILocation(line: 420, column: 26, scope: !2860)
!2865 = !DILocation(line: 0, scope: !2860)
!2866 = !DILocation(line: 422, column: 16, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 422, column: 15)
!2868 = !DILocation(line: 423, column: 15, scope: !2867)
!2869 = !DILocation(line: 423, column: 19, scope: !2867)
!2870 = !DILocation(line: 423, column: 42, scope: !2867)
!2871 = !DILocation(line: 424, column: 19, scope: !2867)
!2872 = !DILocation(line: 424, column: 23, scope: !2867)
!2873 = !DILocation(line: 422, column: 15, scope: !2751)
!2874 = !DILocation(line: 425, column: 26, scope: !2867)
!2875 = !DILocation(line: 425, column: 13, scope: !2867)
!2876 = !DILocation(line: 429, column: 4, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 429, column: 4)
!2878 = !DILocation(line: 0, scope: !2877)
!2879 = !DILocation(line: 429, column: 4, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 429, column: 4)
!2881 = !DILocation(line: 430, column: 6, scope: !2880)
!2882 = distinct !{!2882, !2876, !2883}
!2883 = !DILocation(line: 430, column: 6, scope: !2877)
!2884 = !DILocation(line: 432, column: 4, scope: !2751)
!2885 = !DILocation(line: 433, column: 2, scope: !2752)
!2886 = !DILocation(line: 0, scope: !2753)
!2887 = !DILocation(line: 437, column: 11, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 437, column: 11)
!2889 = !DILocation(line: 438, column: 4, scope: !2888)
!2890 = !DILocation(line: 438, column: 8, scope: !2888)
!2891 = !DILocation(line: 438, column: 31, scope: !2888)
!2892 = !DILocation(line: 439, column: 8, scope: !2888)
!2893 = !DILocation(line: 439, column: 11, scope: !2888)
!2894 = !DILocation(line: 437, column: 11, scope: !2744)
!2895 = !DILocation(line: 440, column: 32, scope: !2888)
!2896 = !DILocation(line: 440, column: 2, scope: !2888)
!2897 = !DILocation(line: 307, column: 56, scope: !2745)
!2898 = !DILocation(line: 307, column: 3, scope: !2745)
!2899 = distinct !{!2899, !2772, !2900}
!2900 = !DILocation(line: 441, column: 5, scope: !2746)
!2901 = !DILocation(line: 443, column: 1, scope: !2733)
!2902 = distinct !DISubprogram(name: "simplify_control_stmt_condition", scope: !3, file: !3, line: 457, type: !2903, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!490, !794, !814, !814, !2503, !470}
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2917, !2918, !2919, !2922, !2925}
!2906 = !DILocalVariable(name: "e", arg: 1, scope: !2902, file: !3, line: 457, type: !794)
!2907 = !DILocalVariable(name: "stmt", arg: 2, scope: !2902, file: !3, line: 458, type: !814)
!2908 = !DILocalVariable(name: "dummy_cond", arg: 3, scope: !2902, file: !3, line: 459, type: !814)
!2909 = !DILocalVariable(name: "simplify", arg: 4, scope: !2902, file: !3, line: 460, type: !2503)
!2910 = !DILocalVariable(name: "handle_dominating_asserts", arg: 5, scope: !2902, file: !3, line: 461, type: !470)
!2911 = !DILocalVariable(name: "cond", scope: !2902, file: !3, line: 463, type: !490)
!2912 = !DILocalVariable(name: "cached_lhs", scope: !2902, file: !3, line: 463, type: !490)
!2913 = !DILocalVariable(name: "code", scope: !2902, file: !3, line: 464, type: !397)
!2914 = !DILocalVariable(name: "op0", scope: !2915, file: !3, line: 470, type: !490)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 469, column: 5)
!2916 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 468, column: 7)
!2917 = !DILocalVariable(name: "op1", scope: !2915, file: !3, line: 470, type: !490)
!2918 = !DILocalVariable(name: "cond_code", scope: !2915, file: !3, line: 471, type: !134)
!2919 = !DILocalVariable(name: "tmp", scope: !2920, file: !3, line: 480, type: !490)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 479, column: 2)
!2921 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 478, column: 11)
!2922 = !DILocalVariable(name: "tmp", scope: !2923, file: !3, line: 487, type: !490)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 486, column: 2)
!2924 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 485, column: 11)
!2925 = !DILocalVariable(name: "tmp", scope: !2926, file: !3, line: 510, type: !490)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 509, column: 2)
!2927 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 508, column: 11)
!2928 = !DILocation(line: 0, scope: !2902)
!2929 = !DILocation(line: 464, column: 27, scope: !2902)
!2930 = !DILocation(line: 468, column: 7, scope: !2902)
!2931 = !DILocation(line: 473, column: 13, scope: !2915)
!2932 = !DILocation(line: 0, scope: !2915)
!2933 = !DILocation(line: 474, column: 13, scope: !2915)
!2934 = !DILocation(line: 475, column: 19, scope: !2915)
!2935 = !DILocation(line: 478, column: 11, scope: !2921)
!2936 = !DILocation(line: 478, column: 27, scope: !2921)
!2937 = !DILocation(line: 478, column: 11, scope: !2915)
!2938 = !DILocation(line: 480, column: 22, scope: !2920)
!2939 = !DILocation(line: 0, scope: !2920)
!2940 = !DILocation(line: 481, column: 8, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 481, column: 8)
!2942 = !DILocation(line: 481, column: 8, scope: !2920)
!2943 = !DILocation(line: 483, column: 2, scope: !2920)
!2944 = !DILocation(line: 485, column: 11, scope: !2924)
!2945 = !DILocation(line: 485, column: 27, scope: !2924)
!2946 = !DILocation(line: 485, column: 11, scope: !2915)
!2947 = !DILocation(line: 487, column: 15, scope: !2923)
!2948 = !DILocation(line: 0, scope: !2923)
!2949 = !DILocation(line: 488, column: 8, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 488, column: 8)
!2951 = !DILocation(line: 488, column: 8, scope: !2923)
!2952 = !DILocation(line: 490, column: 2, scope: !2923)
!2953 = !DILocation(line: 492, column: 11, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 492, column: 11)
!2955 = !DILocation(line: 492, column: 11, scope: !2915)
!2956 = !DILocation(line: 497, column: 8, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 497, column: 8)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 493, column: 2)
!2959 = !DILocation(line: 497, column: 24, scope: !2957)
!2960 = !DILocation(line: 497, column: 8, scope: !2958)
!2961 = !DILocation(line: 498, column: 46, scope: !2957)
!2962 = !DILocation(line: 498, column: 12, scope: !2957)
!2963 = !DILocation(line: 498, column: 6, scope: !2957)
!2964 = !DILocation(line: 500, column: 8, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 500, column: 8)
!2966 = !DILocation(line: 500, column: 24, scope: !2965)
!2967 = !DILocation(line: 500, column: 8, scope: !2958)
!2968 = !DILocation(line: 501, column: 46, scope: !2965)
!2969 = !DILocation(line: 501, column: 12, scope: !2965)
!2970 = !DILocation(line: 501, column: 6, scope: !2965)
!2971 = !DILocation(line: 508, column: 11, scope: !2927)
!2972 = !DILocation(line: 508, column: 11, scope: !2915)
!2973 = !DILocation(line: 511, column: 16, scope: !2926)
!2974 = !DILocation(line: 0, scope: !2926)
!2975 = !DILocation(line: 515, column: 2, scope: !2926)
!2976 = !DILocation(line: 519, column: 7, scope: !2915)
!2977 = !DILocation(line: 520, column: 7, scope: !2915)
!2978 = !DILocation(line: 521, column: 7, scope: !2915)
!2979 = !DILocation(line: 525, column: 7, scope: !2915)
!2980 = !DILocation(line: 527, column: 20, scope: !2915)
!2981 = !DILocation(line: 528, column: 11, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 528, column: 11)
!2983 = !DILocation(line: 528, column: 11, scope: !2915)
!2984 = !DILocation(line: 529, column: 2, scope: !2982)
!2985 = !DILocation(line: 529, column: 9, scope: !2982)
!2986 = !DILocation(line: 530, column: 24, scope: !2982)
!2987 = distinct !{!2987, !2984, !2986}
!2988 = !DILocation(line: 532, column: 40, scope: !2915)
!2989 = !DILocation(line: 527, column: 18, scope: !2915)
!2990 = !DILocation(line: 533, column: 40, scope: !2915)
!2991 = !DILocation(line: 533, column: 43, scope: !2915)
!2992 = !DILocation(line: 532, column: 7, scope: !2915)
!2993 = !DILocation(line: 539, column: 11, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 538, column: 11)
!2995 = !DILocation(line: 539, column: 15, scope: !2994)
!2996 = !DILocation(line: 538, column: 11, scope: !2915)
!2997 = !DILocation(line: 540, column: 22, scope: !2994)
!2998 = !DILocation(line: 540, column: 9, scope: !2994)
!2999 = !DILocation(line: 546, column: 12, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 545, column: 7)
!3001 = !DILocation(line: 546, column: 5, scope: !3000)
!3002 = !DILocation(line: 548, column: 12, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 547, column: 12)
!3004 = !DILocation(line: 548, column: 5, scope: !3003)
!3005 = !DILocation(line: 550, column: 5, scope: !3003)
!3006 = !DILocation(line: 0, scope: !3000)
!3007 = !DILocation(line: 554, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 554, column: 7)
!3009 = !DILocation(line: 554, column: 24, scope: !3008)
!3010 = !DILocation(line: 554, column: 7, scope: !2902)
!3011 = !DILocation(line: 563, column: 11, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 563, column: 11)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 555, column: 5)
!3014 = !DILocation(line: 564, column: 4, scope: !3012)
!3015 = !DILocation(line: 565, column: 4, scope: !3012)
!3016 = !DILocation(line: 565, column: 7, scope: !3012)
!3017 = !DILocation(line: 563, column: 11, scope: !3013)
!3018 = !DILocation(line: 566, column: 15, scope: !3012)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocation(line: 570, column: 11, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 570, column: 11)
!3022 = !DILocation(line: 570, column: 37, scope: !3021)
!3023 = !DILocation(line: 570, column: 40, scope: !3021)
!3024 = !DILocation(line: 570, column: 63, scope: !3021)
!3025 = !DILocation(line: 570, column: 11, scope: !3013)
!3026 = !DILocation(line: 571, column: 56, scope: !3021)
!3027 = !DILocation(line: 571, column: 15, scope: !3021)
!3028 = !DILocation(line: 571, column: 2, scope: !3021)
!3029 = !DILocation(line: 575, column: 11, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 575, column: 11)
!3031 = !DILocation(line: 575, column: 22, scope: !3030)
!3032 = !DILocation(line: 575, column: 27, scope: !3030)
!3033 = !DILocation(line: 575, column: 11, scope: !3013)
!3034 = !DILocation(line: 576, column: 22, scope: !3030)
!3035 = !DILocation(line: 576, column: 9, scope: !3030)
!3036 = !DILocation(line: 582, column: 1, scope: !2902)
!3037 = distinct !DISubprogram(name: "remove_temporary_equivalences", scope: !3, file: !3, line: 143, type: !2388, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!3038 = !{!3039, !3040, !3042}
!3039 = !DILocalVariable(name: "stack", arg: 1, scope: !3037, file: !3, line: 143, type: !2352)
!3040 = !DILocalVariable(name: "prev_value", scope: !3041, file: !3, line: 147, type: !490)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 146, column: 5)
!3042 = !DILocalVariable(name: "dest", scope: !3041, file: !3, line: 147, type: !490)
!3043 = !DILocation(line: 0, scope: !3037)
!3044 = !DILocation(line: 145, column: 3, scope: !3037)
!3045 = !DILocation(line: 145, column: 10, scope: !3037)
!3046 = !DILocation(line: 145, column: 36, scope: !3037)
!3047 = !DILocation(line: 149, column: 14, scope: !3041)
!3048 = !DILocation(line: 0, scope: !3041)
!3049 = !DILocation(line: 153, column: 16, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 153, column: 11)
!3051 = !DILocation(line: 153, column: 11, scope: !3041)
!3052 = !DILocation(line: 156, column: 20, scope: !3041)
!3053 = !DILocation(line: 157, column: 7, scope: !3041)
!3054 = !DILocation(line: 158, column: 5, scope: !3037)
!3055 = distinct !{!3055, !3044, !3054}
!3056 = !DILocation(line: 159, column: 1, scope: !3037)
!3057 = distinct !DISubprogram(name: "VEC_tree_heap_safe_grow", scope: !135, file: !135, line: 184, type: !2350, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3058)
!3058 = !{!3059, !3060}
!3059 = !DILocalVariable(name: "vec_", arg: 1, scope: !3057, file: !135, line: 184, type: !2352)
!3060 = !DILocalVariable(name: "size_", arg: 2, scope: !3057, file: !135, line: 184, type: !471)
!3061 = !DILocation(line: 0, scope: !3057)
!3062 = !DILocation(line: 184, column: 1, scope: !3057)
!3063 = distinct !DISubprogram(name: "VEC_tree_base_address", scope: !135, file: !135, line: 182, type: !3064, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!848, !2362}
!3066 = !{!3067}
!3067 = !DILocalVariable(name: "vec_", arg: 1, scope: !3063, file: !135, line: 182, type: !2362)
!3068 = !DILocation(line: 0, scope: !3063)
!3069 = !DILocation(line: 182, column: 1, scope: !3063)
!3070 = distinct !DISubprogram(name: "VEC_tree_heap_reserve_exact", scope: !135, file: !135, line: 184, type: !3071, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!471, !2352, !471}
!3073 = !{!3074, !3075, !3076}
!3074 = !DILocalVariable(name: "vec_", arg: 1, scope: !3070, file: !135, line: 184, type: !2352)
!3075 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3070, file: !135, line: 184, type: !471)
!3076 = !DILocalVariable(name: "extend", scope: !3070, file: !135, line: 184, type: !471)
!3077 = !DILocation(line: 0, scope: !3070)
!3078 = !DILocation(line: 184, column: 1, scope: !3070)
!3079 = !DILocation(line: 184, column: 1, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3070, file: !135, line: 184, column: 1)
!3081 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !135, file: !135, line: 182, type: !3082, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!471, !2362, !471}
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "vec_", arg: 1, scope: !3081, file: !135, line: 182, type: !2362)
!3086 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3081, file: !135, line: 182, type: !471)
!3087 = !DILocation(line: 0, scope: !3081)
!3088 = !DILocation(line: 182, column: 1, scope: !3081)
!3089 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !343, file: !343, line: 150, type: !3090, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!7, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "vec_", arg: 1, scope: !3089, file: !343, line: 150, type: !3092)
!3096 = !DILocation(line: 0, scope: !3089)
!3097 = !DILocation(line: 150, column: 1, scope: !3089)
!3098 = distinct !DISubprogram(name: "bb_seq", scope: !398, file: !398, line: 237, type: !3099, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!804, !2438}
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "bb", arg: 1, scope: !3098, file: !398, line: 237, type: !2438)
!3103 = !DILocation(line: 0, scope: !3098)
!3104 = !DILocation(line: 239, column: 17, scope: !3098)
!3105 = !DILocation(line: 239, column: 23, scope: !3098)
!3106 = !DILocation(line: 239, column: 33, scope: !3098)
!3107 = !DILocation(line: 239, column: 43, scope: !3098)
!3108 = !DILocation(line: 239, column: 36, scope: !3098)
!3109 = !DILocation(line: 239, column: 10, scope: !3098)
!3110 = !DILocation(line: 239, column: 68, scope: !3098)
!3111 = !DILocation(line: 239, column: 3, scope: !3098)
!3112 = distinct !DISubprogram(name: "gimple_seq_last", scope: !398, file: !398, line: 178, type: !3113, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3118)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!809, !3115}
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !491, line: 67, baseType: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!3118 = !{!3119}
!3119 = !DILocalVariable(name: "s", arg: 1, scope: !3112, file: !398, line: 178, type: !3115)
!3120 = !DILocation(line: 0, scope: !3112)
!3121 = !DILocation(line: 180, column: 10, scope: !3112)
!3122 = !DILocation(line: 180, column: 17, scope: !3112)
!3123 = !DILocation(line: 180, column: 3, scope: !3112)
!3124 = distinct !DISubprogram(name: "op_iter_init", scope: !2612, file: !2612, line: 742, type: !3125, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !2615, !814, !471}
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "ptr", arg: 1, scope: !3124, file: !2612, line: 742, type: !2615)
!3129 = !DILocalVariable(name: "stmt", arg: 2, scope: !3124, file: !2612, line: 742, type: !814)
!3130 = !DILocalVariable(name: "flags", arg: 3, scope: !3124, file: !2612, line: 742, type: !471)
!3131 = !DILocation(line: 0, scope: !3124)
!3132 = !DILocation(line: 748, column: 8, scope: !3124)
!3133 = !DILocation(line: 748, column: 13, scope: !3124)
!3134 = !DILocation(line: 750, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3124, file: !2612, line: 749, column: 7)
!3136 = !DILocation(line: 751, column: 7, scope: !3135)
!3137 = !DILocation(line: 749, column: 7, scope: !3124)
!3138 = !DILocation(line: 752, column: 5, scope: !3135)
!3139 = !DILocation(line: 753, column: 15, scope: !3124)
!3140 = !DILocation(line: 753, column: 52, scope: !3124)
!3141 = !DILocation(line: 753, column: 8, scope: !3124)
!3142 = !DILocation(line: 753, column: 13, scope: !3124)
!3143 = !DILocation(line: 758, column: 8, scope: !3124)
!3144 = !DILocation(line: 758, column: 13, scope: !3124)
!3145 = !DILocation(line: 760, column: 8, scope: !3124)
!3146 = !DILocation(line: 760, column: 14, scope: !3124)
!3147 = !DILocation(line: 761, column: 8, scope: !3124)
!3148 = !DILocation(line: 761, column: 16, scope: !3124)
!3149 = !DILocation(line: 762, column: 8, scope: !3124)
!3150 = !DILocation(line: 762, column: 17, scope: !3124)
!3151 = !DILocation(line: 763, column: 1, scope: !3124)
!3152 = distinct !DISubprogram(name: "gimple_def_ops", scope: !398, file: !398, line: 1292, type: !3153, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!843, !2494}
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "g", arg: 1, scope: !3152, file: !398, line: 1292, type: !2494)
!3157 = !DILocation(line: 0, scope: !3152)
!3158 = distinct !DISubprogram(name: "gimple_vdef", scope: !398, file: !398, line: 1375, type: !3159, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!490, !2494}
!3161 = !{!3162}
!3162 = !DILocalVariable(name: "g", arg: 1, scope: !3158, file: !398, line: 1375, type: !2494)
!3163 = !DILocation(line: 0, scope: !3158)
!3164 = !DILocation(line: 1377, column: 8, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3158, file: !398, line: 1377, column: 7)
!3166 = !DILocation(line: 1377, column: 7, scope: !3158)
!3167 = !DILocation(line: 1379, column: 23, scope: !3158)
!3168 = !DILocation(line: 1379, column: 3, scope: !3158)
!3169 = !DILocation(line: 1380, column: 1, scope: !3158)
!3170 = distinct !DISubprogram(name: "gimple_use_ops", scope: !398, file: !398, line: 1313, type: !3171, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!850, !2494}
!3173 = !{!3174}
!3174 = !DILocalVariable(name: "g", arg: 1, scope: !3170, file: !398, line: 1313, type: !2494)
!3175 = !DILocation(line: 0, scope: !3170)
!3176 = !DILocation(line: 1315, column: 8, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3170, file: !398, line: 1315, column: 7)
!3178 = !DILocation(line: 1315, column: 7, scope: !3170)
!3179 = !DILocation(line: 1317, column: 26, scope: !3170)
!3180 = !DILocation(line: 1317, column: 3, scope: !3170)
!3181 = !DILocation(line: 1318, column: 1, scope: !3170)
!3182 = distinct !DISubprogram(name: "gimple_vuse", scope: !398, file: !398, line: 1365, type: !3159, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3183)
!3183 = !{!3184}
!3184 = !DILocalVariable(name: "g", arg: 1, scope: !3182, file: !398, line: 1365, type: !2494)
!3185 = !DILocation(line: 0, scope: !3182)
!3186 = distinct !DISubprogram(name: "gimple_has_ops", scope: !398, file: !398, line: 1274, type: !3187, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!470, !2494}
!3189 = !{!3190}
!3190 = !DILocalVariable(name: "g", arg: 1, scope: !3186, file: !398, line: 1274, type: !2494)
!3191 = !DILocation(line: 0, scope: !3186)
!3192 = !DILocation(line: 1276, column: 10, scope: !3186)
!3193 = !DILocation(line: 1276, column: 26, scope: !3186)
!3194 = !DILocation(line: 1276, column: 41, scope: !3186)
!3195 = !DILocation(line: 1276, column: 44, scope: !3186)
!3196 = !DILocation(line: 1276, column: 60, scope: !3186)
!3197 = !DILocation(line: 1276, column: 3, scope: !3186)
!3198 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !398, file: !398, line: 1283, type: !3187, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3199)
!3199 = !{!3200}
!3200 = !DILocalVariable(name: "g", arg: 1, scope: !3198, file: !398, line: 1283, type: !2494)
!3201 = !DILocation(line: 0, scope: !3198)
!3202 = !DILocation(line: 1285, column: 10, scope: !3198)
!3203 = !DILocation(line: 1285, column: 26, scope: !3198)
!3204 = !DILocation(line: 1285, column: 43, scope: !3198)
!3205 = !DILocation(line: 1285, column: 46, scope: !3198)
!3206 = !DILocation(line: 1285, column: 62, scope: !3198)
!3207 = !DILocation(line: 1285, column: 3, scope: !3198)
!3208 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2612, file: !2612, line: 442, type: !3209, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!1867, !814, !471}
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "gs", arg: 1, scope: !3208, file: !2612, line: 442, type: !814)
!3213 = !DILocalVariable(name: "i", arg: 2, scope: !3208, file: !2612, line: 442, type: !471)
!3214 = !DILocation(line: 0, scope: !3208)
!3215 = !DILocation(line: 444, column: 11, scope: !3208)
!3216 = !DILocation(line: 444, column: 35, scope: !3208)
!3217 = !DILocation(line: 444, column: 3, scope: !3208)
!3218 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !398, file: !398, line: 3100, type: !3219, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3222)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3221, !814, !7}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!3222 = !{!3223, !3224}
!3223 = !DILocalVariable(name: "gs", arg: 1, scope: !3218, file: !398, line: 3100, type: !814)
!3224 = !DILocalVariable(name: "index", arg: 2, scope: !3218, file: !398, line: 3100, type: !7)
!3225 = !DILocation(line: 0, scope: !3218)
!3226 = !DILocation(line: 3103, column: 3, scope: !3218)
!3227 = !DILocation(line: 3104, column: 12, scope: !3218)
!3228 = !DILocation(line: 3104, column: 3, scope: !3218)
!3229 = distinct !DISubprogram(name: "gimple_phi_result", scope: !398, file: !398, line: 3071, type: !3159, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "gs", arg: 1, scope: !3229, file: !398, line: 3071, type: !2494)
!3232 = !DILocation(line: 0, scope: !3229)
!3233 = !DILocation(line: 3074, column: 25, scope: !3229)
!3234 = !DILocation(line: 3074, column: 3, scope: !3229)
!3235 = distinct !DISubprogram(name: "record_temporary_equivalence", scope: !3, file: !3, line: 166, type: !3236, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !490, !490, !2352}
!3238 = !{!3239, !3240, !3241, !3242, !3243}
!3239 = !DILocalVariable(name: "x", arg: 1, scope: !3235, file: !3, line: 166, type: !490)
!3240 = !DILocalVariable(name: "y", arg: 2, scope: !3235, file: !3, line: 166, type: !490)
!3241 = !DILocalVariable(name: "stack", arg: 3, scope: !3235, file: !3, line: 166, type: !2352)
!3242 = !DILocalVariable(name: "prev_x", scope: !3235, file: !3, line: 168, type: !490)
!3243 = !DILocalVariable(name: "tmp", scope: !3244, file: !3, line: 172, type: !490)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 171, column: 5)
!3245 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 170, column: 7)
!3246 = !DILocation(line: 0, scope: !3235)
!3247 = !DILocation(line: 168, column: 17, scope: !3235)
!3248 = !DILocation(line: 170, column: 7, scope: !3245)
!3249 = !DILocation(line: 170, column: 21, scope: !3245)
!3250 = !DILocation(line: 170, column: 7, scope: !3235)
!3251 = !DILocation(line: 172, column: 18, scope: !3244)
!3252 = !DILocation(line: 0, scope: !3244)
!3253 = !DILocation(line: 173, column: 11, scope: !3244)
!3254 = !DILocation(line: 174, column: 5, scope: !3244)
!3255 = !DILocation(line: 176, column: 3, scope: !3235)
!3256 = !DILocation(line: 177, column: 3, scope: !3235)
!3257 = !DILocation(line: 178, column: 3, scope: !3235)
!3258 = !DILocation(line: 179, column: 3, scope: !3235)
!3259 = !DILocation(line: 180, column: 1, scope: !3235)
!3260 = distinct !DISubprogram(name: "gsi_next", scope: !398, file: !398, line: 4485, type: !3261, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3264)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !3263}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!3264 = !{!3265}
!3265 = !DILocalVariable(name: "i", arg: 1, scope: !3260, file: !398, line: 4485, type: !3263)
!3266 = !DILocation(line: 0, scope: !3260)
!3267 = !DILocation(line: 4487, column: 15, scope: !3260)
!3268 = !DILocation(line: 4487, column: 20, scope: !3260)
!3269 = !DILocation(line: 4487, column: 10, scope: !3260)
!3270 = !DILocation(line: 4488, column: 1, scope: !3260)
!3271 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !135, file: !135, line: 182, type: !3272, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!490, !2343, !7}
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "vec_", arg: 1, scope: !3271, file: !135, line: 182, type: !2343)
!3276 = !DILocalVariable(name: "ix_", arg: 2, scope: !3271, file: !135, line: 182, type: !7)
!3277 = !DILocation(line: 0, scope: !3271)
!3278 = !DILocation(line: 182, column: 1, scope: !3271)
!3279 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !135, file: !135, line: 184, type: !3071, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DILocalVariable(name: "vec_", arg: 1, scope: !3279, file: !135, line: 184, type: !2352)
!3282 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3279, file: !135, line: 184, type: !471)
!3283 = !DILocalVariable(name: "extend", scope: !3279, file: !135, line: 184, type: !471)
!3284 = !DILocation(line: 0, scope: !3279)
!3285 = !DILocation(line: 184, column: 1, scope: !3279)
!3286 = !DILocation(line: 184, column: 1, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3279, file: !135, line: 184, column: 1)
!3288 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !135, file: !135, line: 182, type: !3289, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!848, !2362, !490}
!3291 = !{!3292, !3293, !3294}
!3292 = !DILocalVariable(name: "vec_", arg: 1, scope: !3288, file: !135, line: 182, type: !2362)
!3293 = !DILocalVariable(name: "obj_", arg: 2, scope: !3288, file: !135, line: 182, type: !490)
!3294 = !DILocalVariable(name: "slot_", scope: !3288, file: !135, line: 182, type: !848)
!3295 = !DILocation(line: 0, scope: !3288)
!3296 = !DILocation(line: 182, column: 1, scope: !3288)
!3297 = distinct !DISubprogram(name: "gsi_start_bb", scope: !398, file: !398, line: 4418, type: !2455, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3298)
!3298 = !{!3299, !3300, !3301}
!3299 = !DILocalVariable(name: "bb", arg: 1, scope: !3297, file: !398, line: 4418, type: !1299)
!3300 = !DILocalVariable(name: "i", scope: !3297, file: !398, line: 4420, type: !2402)
!3301 = !DILocalVariable(name: "seq", scope: !3297, file: !398, line: 4421, type: !804)
!3302 = !DILocation(line: 0, scope: !3297)
!3303 = !DILocation(line: 4420, column: 24, scope: !3297)
!3304 = !DILocation(line: 4423, column: 9, scope: !3297)
!3305 = !DILocation(line: 4424, column: 11, scope: !3297)
!3306 = !DILocation(line: 4424, column: 5, scope: !3297)
!3307 = !DILocation(line: 4424, column: 9, scope: !3297)
!3308 = !DILocation(line: 4425, column: 5, scope: !3297)
!3309 = !DILocation(line: 4425, column: 9, scope: !3297)
!3310 = !DILocation(line: 4426, column: 5, scope: !3297)
!3311 = !DILocation(line: 4426, column: 8, scope: !3297)
!3312 = !DILocation(line: 4429, column: 1, scope: !3297)
!3313 = distinct !DISubprogram(name: "is_gimple_debug", scope: !398, file: !398, line: 3249, type: !3187, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3314)
!3314 = !{!3315}
!3315 = !DILocalVariable(name: "gs", arg: 1, scope: !3313, file: !398, line: 3249, type: !2494)
!3316 = !DILocation(line: 0, scope: !3313)
!3317 = !DILocation(line: 3251, column: 10, scope: !3313)
!3318 = !DILocation(line: 3251, column: 27, scope: !3313)
!3319 = !DILocation(line: 3251, column: 3, scope: !3313)
!3320 = distinct !DISubprogram(name: "gimple_asm_volatile_p", scope: !398, file: !398, line: 2739, type: !3187, scopeLine: 2740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3321)
!3321 = !{!3322}
!3322 = !DILocalVariable(name: "gs", arg: 1, scope: !3320, file: !398, line: 2739, type: !2494)
!3323 = !DILocation(line: 0, scope: !3320)
!3324 = !DILocation(line: 2742, column: 22, scope: !3320)
!3325 = !DILocation(line: 2742, column: 10, scope: !3320)
!3326 = !DILocation(line: 2742, column: 3, scope: !3320)
!3327 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !398, file: !398, line: 1694, type: !3159, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3328)
!3328 = !{!3329}
!3329 = !DILocalVariable(name: "gs", arg: 1, scope: !3327, file: !398, line: 1694, type: !2494)
!3330 = !DILocation(line: 0, scope: !3327)
!3331 = !DILocation(line: 1697, column: 10, scope: !3327)
!3332 = !DILocation(line: 1697, column: 3, scope: !3327)
!3333 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !398, file: !398, line: 1878, type: !3159, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3334)
!3334 = !{!3335}
!3335 = !DILocalVariable(name: "gs", arg: 1, scope: !3333, file: !398, line: 1878, type: !2494)
!3336 = !DILocation(line: 0, scope: !3333)
!3337 = !DILocation(line: 1881, column: 10, scope: !3333)
!3338 = !DILocation(line: 1881, column: 3, scope: !3333)
!3339 = distinct !DISubprogram(name: "is_gimple_call", scope: !398, file: !398, line: 1870, type: !3187, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3340)
!3340 = !{!3341}
!3341 = !DILocalVariable(name: "gs", arg: 1, scope: !3339, file: !398, line: 1870, type: !2494)
!3342 = !DILocation(line: 0, scope: !3339)
!3343 = !DILocation(line: 1872, column: 10, scope: !3339)
!3344 = !DILocation(line: 1872, column: 27, scope: !3339)
!3345 = !DILocation(line: 1872, column: 3, scope: !3339)
!3346 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !398, file: !398, line: 1954, type: !3159, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3347)
!3347 = !{!3348, !3349}
!3348 = !DILocalVariable(name: "gs", arg: 1, scope: !3346, file: !398, line: 1954, type: !2494)
!3349 = !DILocalVariable(name: "addr", scope: !3346, file: !398, line: 1956, type: !490)
!3350 = !DILocation(line: 0, scope: !3346)
!3351 = !DILocation(line: 1956, column: 15, scope: !3346)
!3352 = !DILocation(line: 1957, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3346, file: !398, line: 1957, column: 7)
!3354 = !DILocation(line: 1957, column: 24, scope: !3353)
!3355 = !DILocation(line: 1957, column: 7, scope: !3346)
!3356 = !DILocation(line: 1958, column: 12, scope: !3353)
!3357 = !DILocation(line: 1958, column: 5, scope: !3353)
!3358 = !DILocation(line: 1960, column: 1, scope: !3346)
!3359 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !398, file: !398, line: 1727, type: !3159, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3360)
!3360 = !{!3361}
!3361 = !DILocalVariable(name: "gs", arg: 1, scope: !3359, file: !398, line: 1727, type: !2494)
!3362 = !DILocation(line: 0, scope: !3359)
!3363 = !DILocation(line: 1730, column: 10, scope: !3359)
!3364 = !DILocation(line: 1730, column: 3, scope: !3359)
!3365 = distinct !DISubprogram(name: "num_ssa_operands", scope: !2612, file: !2612, line: 869, type: !3366, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!471, !814, !471}
!3368 = !{!3369, !3370, !3371, !3372, !3373}
!3369 = !DILocalVariable(name: "stmt", arg: 1, scope: !3365, file: !2612, line: 869, type: !814)
!3370 = !DILocalVariable(name: "flags", arg: 2, scope: !3365, file: !2612, line: 869, type: !471)
!3371 = !DILocalVariable(name: "iter", scope: !3365, file: !2612, line: 871, type: !2516)
!3372 = !DILocalVariable(name: "t", scope: !3365, file: !2612, line: 872, type: !490)
!3373 = !DILocalVariable(name: "num", scope: !3365, file: !2612, line: 873, type: !471)
!3374 = !DILocation(line: 0, scope: !3365)
!3375 = !DILocation(line: 871, column: 3, scope: !3365)
!3376 = !DILocation(line: 875, column: 3, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3365, file: !2612, line: 875, column: 3)
!3378 = !DILocation(line: 875, column: 3, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3377, file: !2612, line: 875, column: 3)
!3380 = !DILocation(line: 876, column: 8, scope: !3379)
!3381 = distinct !{!3381, !3376, !3382}
!3382 = !DILocation(line: 876, column: 8, scope: !3377)
!3383 = !DILocation(line: 878, column: 1, scope: !3365)
!3384 = !DILocation(line: 877, column: 3, scope: !3365)
!3385 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !2612, file: !2612, line: 233, type: !3386, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !1867, !490}
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "use", arg: 1, scope: !3385, file: !2612, line: 233, type: !1867)
!3390 = !DILocalVariable(name: "val", arg: 2, scope: !3385, file: !2612, line: 233, type: !490)
!3391 = !DILocation(line: 0, scope: !3385)
!3392 = !DILocation(line: 235, column: 3, scope: !3385)
!3393 = !DILocation(line: 236, column: 10, scope: !3385)
!3394 = !DILocation(line: 236, column: 15, scope: !3385)
!3395 = !DILocation(line: 237, column: 3, scope: !3385)
!3396 = !DILocation(line: 238, column: 1, scope: !3385)
!3397 = distinct !DISubprogram(name: "fold_assignment_stmt", scope: !3, file: !3, line: 225, type: !3398, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!490, !814}
!3400 = !{!3401, !3402, !3403, !3406, !3409, !3411, !3412, !3414, !3415}
!3401 = !DILocalVariable(name: "stmt", arg: 1, scope: !3397, file: !3, line: 225, type: !814)
!3402 = !DILocalVariable(name: "subcode", scope: !3397, file: !3, line: 227, type: !134)
!3403 = !DILocalVariable(name: "rhs", scope: !3404, file: !3, line: 233, type: !490)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 232, column: 7)
!3405 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 230, column: 5)
!3406 = !DILocalVariable(name: "cond", scope: !3407, file: !3, line: 241, type: !490)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 236, column: 11)
!3408 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 235, column: 13)
!3409 = !DILocalVariable(name: "lhs", scope: !3410, file: !3, line: 253, type: !490)
!3410 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 252, column: 7)
!3411 = !DILocalVariable(name: "op0", scope: !3410, file: !3, line: 254, type: !490)
!3412 = !DILocalVariable(name: "lhs", scope: !3413, file: !3, line: 260, type: !490)
!3413 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 259, column: 7)
!3414 = !DILocalVariable(name: "op0", scope: !3413, file: !3, line: 261, type: !490)
!3415 = !DILocalVariable(name: "op1", scope: !3413, file: !3, line: 262, type: !490)
!3416 = !DILocation(line: 0, scope: !3397)
!3417 = !DILocation(line: 227, column: 28, scope: !3397)
!3418 = !DILocation(line: 229, column: 11, scope: !3397)
!3419 = !DILocation(line: 229, column: 3, scope: !3397)
!3420 = !DILocation(line: 233, column: 20, scope: !3404)
!3421 = !DILocation(line: 0, scope: !3404)
!3422 = !DILocation(line: 235, column: 13, scope: !3408)
!3423 = !DILocation(line: 235, column: 29, scope: !3408)
!3424 = !DILocation(line: 235, column: 13, scope: !3404)
!3425 = !DILocation(line: 241, column: 31, scope: !3407)
!3426 = !DILocation(line: 241, column: 25, scope: !3407)
!3427 = !DILocation(line: 0, scope: !3407)
!3428 = !DILocation(line: 242, column: 25, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 242, column: 17)
!3430 = !DILocation(line: 242, column: 22, scope: !3429)
!3431 = !DILocation(line: 242, column: 17, scope: !3407)
!3432 = !DILocation(line: 243, column: 21, scope: !3429)
!3433 = !DILocation(line: 243, column: 15, scope: !3429)
!3434 = !DILocation(line: 244, column: 30, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 244, column: 22)
!3436 = !DILocation(line: 244, column: 27, scope: !3435)
!3437 = !DILocation(line: 244, column: 22, scope: !3429)
!3438 = !DILocation(line: 245, column: 21, scope: !3435)
!3439 = !DILocation(line: 245, column: 15, scope: !3435)
!3440 = !DILocation(line: 248, column: 16, scope: !3404)
!3441 = !DILocation(line: 253, column: 20, scope: !3410)
!3442 = !DILocation(line: 0, scope: !3410)
!3443 = !DILocation(line: 254, column: 20, scope: !3410)
!3444 = !DILocation(line: 255, column: 16, scope: !3410)
!3445 = !DILocation(line: 260, column: 20, scope: !3413)
!3446 = !DILocation(line: 0, scope: !3413)
!3447 = !DILocation(line: 261, column: 20, scope: !3413)
!3448 = !DILocation(line: 262, column: 20, scope: !3413)
!3449 = !DILocation(line: 263, column: 16, scope: !3413)
!3450 = !DILocation(line: 267, column: 7, scope: !3405)
!3451 = !DILocation(line: 270, column: 5, scope: !3397)
!3452 = !DILocation(line: 272, column: 1, scope: !3397)
!3453 = distinct !DISubprogram(name: "gimple_seq_first", scope: !398, file: !398, line: 159, type: !3113, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3454)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "s", arg: 1, scope: !3453, file: !398, line: 159, type: !3115)
!3456 = !DILocation(line: 0, scope: !3453)
!3457 = !DILocation(line: 161, column: 10, scope: !3453)
!3458 = !DILocation(line: 161, column: 17, scope: !3453)
!3459 = !DILocation(line: 161, column: 3, scope: !3453)
!3460 = distinct !DISubprogram(name: "gimple_op", scope: !398, file: !398, line: 1631, type: !3461, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!490, !2494, !7}
!3463 = !{!3464, !3465}
!3464 = !DILocalVariable(name: "gs", arg: 1, scope: !3460, file: !398, line: 1631, type: !2494)
!3465 = !DILocalVariable(name: "i", arg: 2, scope: !3460, file: !398, line: 1631, type: !7)
!3466 = !DILocation(line: 0, scope: !3460)
!3467 = !DILocation(line: 1633, column: 7, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3460, file: !398, line: 1633, column: 7)
!3469 = !DILocation(line: 1633, column: 7, scope: !3460)
!3470 = !DILocation(line: 1638, column: 14, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !398, line: 1634, column: 5)
!3472 = !DILocation(line: 1638, column: 7, scope: !3471)
!3473 = !DILocation(line: 0, scope: !3468)
!3474 = !DILocation(line: 1642, column: 1, scope: !3460)
!3475 = distinct !DISubprogram(name: "gimple_ops", scope: !398, file: !398, line: 1614, type: !3476, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!848, !814}
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "gs", arg: 1, scope: !3475, file: !398, line: 1614, type: !814)
!3480 = !DILocalVariable(name: "off", scope: !3475, file: !398, line: 1616, type: !958)
!3481 = !DILocation(line: 0, scope: !3475)
!3482 = !DILocation(line: 1621, column: 28, scope: !3475)
!3483 = !DILocation(line: 1621, column: 9, scope: !3475)
!3484 = !DILocation(line: 1622, column: 3, scope: !3475)
!3485 = !DILocation(line: 1624, column: 20, scope: !3475)
!3486 = !DILocation(line: 1624, column: 32, scope: !3475)
!3487 = !DILocation(line: 1624, column: 10, scope: !3475)
!3488 = !DILocation(line: 1624, column: 3, scope: !3475)
!3489 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !398, file: !398, line: 1073, type: !3490, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!436, !814}
!3492 = !{!3493}
!3493 = !DILocalVariable(name: "gs", arg: 1, scope: !3489, file: !398, line: 1073, type: !814)
!3494 = !DILocation(line: 0, scope: !3489)
!3495 = !DILocation(line: 1075, column: 24, scope: !3489)
!3496 = !DILocation(line: 1075, column: 10, scope: !3489)
!3497 = !DILocation(line: 1075, column: 3, scope: !3489)
!3498 = distinct !DISubprogram(name: "gss_for_code", scope: !398, file: !398, line: 1061, type: !3499, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!436, !397}
!3501 = !{!3502}
!3502 = !DILocalVariable(name: "code", arg: 1, scope: !3498, file: !398, line: 1061, type: !397)
!3503 = !DILocation(line: 0, scope: !3498)
!3504 = !DILocation(line: 1066, column: 10, scope: !3498)
!3505 = !DILocation(line: 1066, column: 3, scope: !3498)
!3506 = distinct !DISubprogram(name: "gimple_call_fn", scope: !398, file: !398, line: 1911, type: !3159, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3507)
!3507 = !{!3508}
!3508 = !DILocalVariable(name: "gs", arg: 1, scope: !3506, file: !398, line: 1911, type: !2494)
!3509 = !DILocation(line: 0, scope: !3506)
!3510 = !DILocation(line: 1914, column: 10, scope: !3506)
!3511 = !DILocation(line: 1914, column: 3, scope: !3506)
!3512 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2612, file: !2612, line: 792, type: !3513, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!490, !2615, !814, !471}
!3515 = !{!3516, !3517, !3518}
!3516 = !DILocalVariable(name: "ptr", arg: 1, scope: !3512, file: !2612, line: 792, type: !2615)
!3517 = !DILocalVariable(name: "stmt", arg: 2, scope: !3512, file: !2612, line: 792, type: !814)
!3518 = !DILocalVariable(name: "flags", arg: 3, scope: !3512, file: !2612, line: 792, type: !471)
!3519 = !DILocation(line: 0, scope: !3512)
!3520 = !DILocation(line: 794, column: 3, scope: !3512)
!3521 = !DILocation(line: 795, column: 8, scope: !3512)
!3522 = !DILocation(line: 795, column: 18, scope: !3512)
!3523 = !DILocation(line: 796, column: 10, scope: !3512)
!3524 = !DILocation(line: 796, column: 3, scope: !3512)
!3525 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2612, file: !2612, line: 699, type: !3526, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!490, !2615}
!3528 = !{!3529, !3530}
!3529 = !DILocalVariable(name: "ptr", arg: 1, scope: !3525, file: !2612, line: 699, type: !2615)
!3530 = !DILocalVariable(name: "val", scope: !3525, file: !2612, line: 701, type: !490)
!3531 = !DILocation(line: 0, scope: !3525)
!3532 = !DILocation(line: 705, column: 12, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !2612, line: 705, column: 7)
!3534 = !DILocation(line: 705, column: 7, scope: !3533)
!3535 = !DILocation(line: 705, column: 7, scope: !3525)
!3536 = !DILocation(line: 707, column: 13, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !2612, line: 706, column: 5)
!3538 = !DILocation(line: 708, column: 24, scope: !3537)
!3539 = !DILocation(line: 708, column: 30, scope: !3537)
!3540 = !DILocation(line: 708, column: 17, scope: !3537)
!3541 = !DILocation(line: 709, column: 7, scope: !3537)
!3542 = !DILocation(line: 711, column: 12, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3525, file: !2612, line: 711, column: 7)
!3544 = !DILocation(line: 711, column: 7, scope: !3543)
!3545 = !DILocation(line: 711, column: 7, scope: !3525)
!3546 = !DILocation(line: 713, column: 13, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3543, file: !2612, line: 712, column: 5)
!3548 = !DILocation(line: 714, column: 24, scope: !3547)
!3549 = !DILocation(line: 714, column: 30, scope: !3547)
!3550 = !DILocation(line: 714, column: 17, scope: !3547)
!3551 = !DILocation(line: 715, column: 7, scope: !3547)
!3552 = !DILocation(line: 718, column: 8, scope: !3525)
!3553 = !DILocation(line: 718, column: 13, scope: !3525)
!3554 = !DILocation(line: 719, column: 3, scope: !3525)
!3555 = !DILocation(line: 721, column: 1, scope: !3525)
!3556 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2612, file: !2612, line: 434, type: !3557, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3560)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!490, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !391, line: 27, baseType: !848)
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "def", arg: 1, scope: !3556, file: !2612, line: 434, type: !3559)
!3562 = !DILocation(line: 0, scope: !3556)
!3563 = !DILocation(line: 436, column: 10, scope: !3556)
!3564 = !DILocation(line: 436, column: 3, scope: !3556)
!3565 = distinct !DISubprogram(name: "delink_imm_use", scope: !2612, file: !2612, line: 188, type: !3566, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !1868}
!3568 = !{!3569}
!3569 = !DILocalVariable(name: "linknode", arg: 1, scope: !3565, file: !2612, line: 188, type: !1868)
!3570 = !DILocation(line: 0, scope: !3565)
!3571 = !DILocation(line: 191, column: 17, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3565, file: !2612, line: 191, column: 7)
!3573 = !DILocation(line: 191, column: 22, scope: !3572)
!3574 = !DILocation(line: 191, column: 7, scope: !3565)
!3575 = !DILocation(line: 194, column: 36, scope: !3565)
!3576 = !DILocation(line: 194, column: 19, scope: !3565)
!3577 = !DILocation(line: 194, column: 24, scope: !3565)
!3578 = !DILocation(line: 195, column: 36, scope: !3565)
!3579 = !DILocation(line: 195, column: 13, scope: !3565)
!3580 = !DILocation(line: 195, column: 24, scope: !3565)
!3581 = !DILocation(line: 196, column: 18, scope: !3565)
!3582 = !DILocation(line: 197, column: 18, scope: !3565)
!3583 = !DILocation(line: 198, column: 1, scope: !3565)
!3584 = distinct !DISubprogram(name: "link_imm_use", scope: !2612, file: !2612, line: 214, type: !3585, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !1868, !490}
!3587 = !{!3588, !3589, !3590}
!3588 = !DILocalVariable(name: "linknode", arg: 1, scope: !3584, file: !2612, line: 214, type: !1868)
!3589 = !DILocalVariable(name: "def", arg: 2, scope: !3584, file: !2612, line: 214, type: !490)
!3590 = !DILocalVariable(name: "root", scope: !3584, file: !2612, line: 216, type: !1868)
!3591 = !DILocation(line: 0, scope: !3584)
!3592 = !DILocation(line: 218, column: 8, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3584, file: !2612, line: 218, column: 7)
!3594 = !DILocation(line: 218, column: 12, scope: !3593)
!3595 = !DILocation(line: 218, column: 15, scope: !3593)
!3596 = !DILocation(line: 218, column: 31, scope: !3593)
!3597 = !DILocation(line: 218, column: 7, scope: !3584)
!3598 = !DILocation(line: 219, column: 15, scope: !3593)
!3599 = !DILocation(line: 219, column: 20, scope: !3593)
!3600 = !DILocation(line: 219, column: 5, scope: !3593)
!3601 = !DILocation(line: 222, column: 16, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3593, file: !2612, line: 221, column: 5)
!3603 = !DILocation(line: 227, column: 7, scope: !3602)
!3604 = !DILocation(line: 229, column: 1, scope: !3584)
!3605 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2612, file: !2612, line: 202, type: !3606, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{null, !1868, !1868}
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "linknode", arg: 1, scope: !3605, file: !2612, line: 202, type: !1868)
!3610 = !DILocalVariable(name: "list", arg: 2, scope: !3605, file: !2612, line: 202, type: !1868)
!3611 = !DILocation(line: 0, scope: !3605)
!3612 = !DILocation(line: 206, column: 13, scope: !3605)
!3613 = !DILocation(line: 206, column: 18, scope: !3605)
!3614 = !DILocation(line: 207, column: 26, scope: !3605)
!3615 = !DILocation(line: 207, column: 13, scope: !3605)
!3616 = !DILocation(line: 207, column: 18, scope: !3605)
!3617 = !DILocation(line: 208, column: 9, scope: !3605)
!3618 = !DILocation(line: 208, column: 15, scope: !3605)
!3619 = !DILocation(line: 208, column: 20, scope: !3605)
!3620 = !DILocation(line: 209, column: 14, scope: !3605)
!3621 = !DILocation(line: 210, column: 1, scope: !3605)
!3622 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !398, file: !398, line: 1815, type: !3623, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!134, !2494}
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "gs", arg: 1, scope: !3622, file: !398, line: 1815, type: !2494)
!3627 = !DILocalVariable(name: "code", scope: !3622, file: !398, line: 1817, type: !134)
!3628 = !DILocation(line: 0, scope: !3622)
!3629 = !DILocation(line: 1820, column: 10, scope: !3622)
!3630 = !DILocation(line: 1821, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3622, file: !398, line: 1821, column: 7)
!3632 = !DILocation(line: 1821, column: 35, scope: !3631)
!3633 = !DILocation(line: 1821, column: 7, scope: !3622)
!3634 = !DILocation(line: 1822, column: 12, scope: !3631)
!3635 = !DILocation(line: 1822, column: 5, scope: !3631)
!3636 = !DILocation(line: 1824, column: 3, scope: !3622)
!3637 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !398, file: !398, line: 1686, type: !3638, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!462, !134}
!3640 = !{!3641}
!3641 = !DILocalVariable(name: "code", arg: 1, scope: !3637, file: !398, line: 1686, type: !134)
!3642 = !DILocation(line: 0, scope: !3637)
!3643 = !DILocation(line: 1688, column: 34, scope: !3637)
!3644 = !DILocation(line: 1688, column: 10, scope: !3637)
!3645 = !DILocation(line: 1688, column: 3, scope: !3637)
!3646 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !398, file: !398, line: 1759, type: !3159, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3647)
!3647 = !{!3648}
!3648 = !DILocalVariable(name: "gs", arg: 1, scope: !3646, file: !398, line: 1759, type: !2494)
!3649 = !DILocation(line: 0, scope: !3646)
!3650 = !DILocation(line: 1763, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3646, file: !398, line: 1763, column: 7)
!3652 = !DILocation(line: 1763, column: 27, scope: !3651)
!3653 = !DILocation(line: 1763, column: 7, scope: !3646)
!3654 = !DILocation(line: 1764, column: 12, scope: !3651)
!3655 = !DILocation(line: 1764, column: 5, scope: !3651)
!3656 = !DILocation(line: 0, scope: !3651)
!3657 = !DILocation(line: 1767, column: 1, scope: !3646)
!3658 = distinct !DISubprogram(name: "gimple_expr_code", scope: !398, file: !398, line: 1438, type: !3623, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3659)
!3659 = !{!3660, !3661}
!3660 = !DILocalVariable(name: "stmt", arg: 1, scope: !3658, file: !398, line: 1438, type: !2494)
!3661 = !DILocalVariable(name: "code", scope: !3658, file: !398, line: 1440, type: !397)
!3662 = !DILocation(line: 0, scope: !3658)
!3663 = !DILocation(line: 1440, column: 27, scope: !3658)
!3664 = !DILocation(line: 1441, column: 29, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3658, file: !398, line: 1441, column: 7)
!3666 = !DILocation(line: 1442, column: 42, scope: !3665)
!3667 = !DILocation(line: 1442, column: 5, scope: !3665)
!3668 = !DILocation(line: 1446, column: 5, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3665, file: !398, line: 1443, column: 12)
!3670 = !DILocation(line: 1448, column: 5, scope: !3658)
!3671 = !DILocation(line: 1450, column: 1, scope: !3658)
!3672 = distinct !DISubprogram(name: "gimple_num_ops", scope: !398, file: !398, line: 1596, type: !3673, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3675)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!7, !2494}
!3675 = !{!3676}
!3676 = !DILocalVariable(name: "gs", arg: 1, scope: !3672, file: !398, line: 1596, type: !2494)
!3677 = !DILocation(line: 0, scope: !3672)
!3678 = !DILocation(line: 1598, column: 21, scope: !3672)
!3679 = !DILocation(line: 1598, column: 3, scope: !3672)
!3680 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !398, file: !398, line: 2241, type: !3159, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3681)
!3681 = !{!3682}
!3682 = !DILocalVariable(name: "gs", arg: 1, scope: !3680, file: !398, line: 2241, type: !2494)
!3683 = !DILocation(line: 0, scope: !3680)
!3684 = !DILocation(line: 2244, column: 10, scope: !3680)
!3685 = !DILocation(line: 2244, column: 3, scope: !3680)
!3686 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !398, file: !398, line: 2271, type: !3159, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3687)
!3687 = !{!3688}
!3688 = !DILocalVariable(name: "gs", arg: 1, scope: !3686, file: !398, line: 2271, type: !2494)
!3689 = !DILocation(line: 0, scope: !3686)
!3690 = !DILocation(line: 2274, column: 10, scope: !3686)
!3691 = !DILocation(line: 2274, column: 3, scope: !3686)
!3692 = distinct !DISubprogram(name: "gimple_cond_code", scope: !398, file: !398, line: 2221, type: !3623, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3693)
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "gs", arg: 1, scope: !3692, file: !398, line: 2221, type: !2494)
!3695 = !DILocation(line: 0, scope: !3692)
!3696 = !DILocation(line: 2224, column: 38, scope: !3692)
!3697 = !DILocation(line: 2224, column: 3, scope: !3692)
!3698 = distinct !DISubprogram(name: "lhs_of_dominating_assert", scope: !3, file: !3, line: 111, type: !3699, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!490, !490, !1299, !814}
!3701 = !{!3702, !3703, !3704, !3705, !3713, !3714}
!3702 = !DILocalVariable(name: "op", arg: 1, scope: !3698, file: !3, line: 111, type: !490)
!3703 = !DILocalVariable(name: "bb", arg: 2, scope: !3698, file: !3, line: 111, type: !1299)
!3704 = !DILocalVariable(name: "stmt", arg: 3, scope: !3698, file: !3, line: 111, type: !814)
!3705 = !DILocalVariable(name: "imm_iter", scope: !3698, file: !3, line: 113, type: !3706)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1239, line: 249, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1239, line: 238, size: 448, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !3707, file: !1239, line: 241, baseType: !1868, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !3707, file: !1239, line: 243, baseType: !1868, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !3707, file: !1239, line: 245, baseType: !1869, size: 256, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !3707, file: !1239, line: 248, baseType: !1868, size: 64, offset: 384)
!3713 = !DILocalVariable(name: "use_stmt", scope: !3698, file: !3, line: 114, type: !814)
!3714 = !DILocalVariable(name: "use_p", scope: !3698, file: !3, line: 115, type: !1867)
!3715 = !DILocation(line: 0, scope: !3698)
!3716 = !DILocation(line: 113, column: 3, scope: !3698)
!3717 = !DILocation(line: 117, column: 3, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 117, column: 3)
!3719 = !DILocation(line: 0, scope: !3718)
!3720 = !DILocation(line: 117, column: 3, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 117, column: 3)
!3722 = !DILocation(line: 119, column: 18, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 118, column: 5)
!3724 = !DILocation(line: 120, column: 20, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 120, column: 11)
!3726 = !DILocation(line: 121, column: 11, scope: !3725)
!3727 = !DILocation(line: 121, column: 14, scope: !3725)
!3728 = !DILocation(line: 122, column: 11, scope: !3725)
!3729 = !DILocation(line: 122, column: 14, scope: !3725)
!3730 = !DILocation(line: 122, column: 56, scope: !3725)
!3731 = !DILocation(line: 123, column: 11, scope: !3725)
!3732 = !DILocation(line: 123, column: 14, scope: !3725)
!3733 = !DILocation(line: 123, column: 62, scope: !3725)
!3734 = !DILocation(line: 124, column: 4, scope: !3725)
!3735 = !DILocation(line: 124, column: 43, scope: !3725)
!3736 = !DILocation(line: 124, column: 7, scope: !3725)
!3737 = !DILocation(line: 120, column: 11, scope: !3723)
!3738 = !DILocation(line: 126, column: 11, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 125, column: 2)
!3740 = !DILocation(line: 126, column: 4, scope: !3739)
!3741 = distinct !{!3741, !3717, !3742}
!3742 = !DILocation(line: 128, column: 5, scope: !3718)
!3743 = !DILocation(line: 130, column: 1, scope: !3698)
!3744 = distinct !DISubprogram(name: "gimple_cond_set_code", scope: !398, file: !398, line: 2231, type: !3745, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !814, !134}
!3747 = !{!3748, !3749}
!3748 = !DILocalVariable(name: "gs", arg: 1, scope: !3744, file: !398, line: 2231, type: !814)
!3749 = !DILocalVariable(name: "code", arg: 2, scope: !3744, file: !398, line: 2231, type: !134)
!3750 = !DILocation(line: 0, scope: !3744)
!3751 = !DILocation(line: 2234, column: 14, scope: !3744)
!3752 = !DILocation(line: 2234, column: 22, scope: !3744)
!3753 = !DILocation(line: 2235, column: 1, scope: !3744)
!3754 = distinct !DISubprogram(name: "gimple_cond_set_lhs", scope: !398, file: !398, line: 2261, type: !3755, scopeLine: 2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{null, !814, !490}
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "gs", arg: 1, scope: !3754, file: !398, line: 2261, type: !814)
!3759 = !DILocalVariable(name: "lhs", arg: 2, scope: !3754, file: !398, line: 2261, type: !490)
!3760 = !DILocation(line: 0, scope: !3754)
!3761 = !DILocation(line: 2264, column: 3, scope: !3754)
!3762 = !DILocation(line: 2265, column: 1, scope: !3754)
!3763 = distinct !DISubprogram(name: "gimple_cond_set_rhs", scope: !398, file: !398, line: 2292, type: !3755, scopeLine: 2293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3764)
!3764 = !{!3765, !3766}
!3765 = !DILocalVariable(name: "gs", arg: 1, scope: !3763, file: !398, line: 2292, type: !814)
!3766 = !DILocalVariable(name: "rhs", arg: 2, scope: !3763, file: !398, line: 2292, type: !490)
!3767 = !DILocation(line: 0, scope: !3763)
!3768 = !DILocation(line: 2295, column: 3, scope: !3763)
!3769 = !DILocation(line: 2296, column: 1, scope: !3763)
!3770 = distinct !DISubprogram(name: "gimple_switch_index", scope: !398, file: !398, line: 3180, type: !3159, scopeLine: 3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3771)
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "gs", arg: 1, scope: !3770, file: !398, line: 3180, type: !2494)
!3773 = !DILocation(line: 0, scope: !3770)
!3774 = !DILocation(line: 3183, column: 10, scope: !3770)
!3775 = !DILocation(line: 3183, column: 3, scope: !3770)
!3776 = distinct !DISubprogram(name: "gimple_goto_dest", scope: !398, file: !398, line: 2465, type: !3159, scopeLine: 2466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3777)
!3777 = !{!3778}
!3778 = !DILocalVariable(name: "gs", arg: 1, scope: !3776, file: !398, line: 2465, type: !2494)
!3779 = !DILocation(line: 0, scope: !3776)
!3780 = !DILocation(line: 2468, column: 10, scope: !3776)
!3781 = !DILocation(line: 2468, column: 3, scope: !3776)
!3782 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !2612, file: !2612, line: 292, type: !3783, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3786)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!1867, !3785, !490}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3786 = !{!3787, !3788}
!3787 = !DILocalVariable(name: "imm", arg: 1, scope: !3782, file: !2612, line: 292, type: !3785)
!3788 = !DILocalVariable(name: "var", arg: 2, scope: !3782, file: !2612, line: 292, type: !490)
!3789 = !DILocation(line: 0, scope: !3782)
!3790 = !DILocation(line: 294, column: 18, scope: !3782)
!3791 = !DILocation(line: 294, column: 8, scope: !3782)
!3792 = !DILocation(line: 294, column: 14, scope: !3782)
!3793 = !DILocation(line: 295, column: 30, scope: !3782)
!3794 = !DILocation(line: 295, column: 16, scope: !3782)
!3795 = !DILocation(line: 299, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3782, file: !2612, line: 299, column: 7)
!3797 = !DILocation(line: 299, column: 7, scope: !3782)
!3798 = !DILocation(line: 301, column: 15, scope: !3782)
!3799 = !DILocation(line: 301, column: 3, scope: !3782)
!3800 = !DILocation(line: 302, column: 1, scope: !3782)
!3801 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !2612, file: !2612, line: 285, type: !3802, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3806)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!470, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3806 = !{!3807}
!3807 = !DILocalVariable(name: "imm", arg: 1, scope: !3801, file: !2612, line: 285, type: !3804)
!3808 = !DILocation(line: 0, scope: !3801)
!3809 = !DILocation(line: 287, column: 16, scope: !3801)
!3810 = !DILocation(line: 287, column: 32, scope: !3801)
!3811 = !DILocation(line: 287, column: 24, scope: !3801)
!3812 = !DILocation(line: 287, column: 10, scope: !3801)
!3813 = !DILocation(line: 287, column: 3, scope: !3801)
!3814 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !2612, file: !2612, line: 306, type: !3815, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!1867, !3785}
!3817 = !{!3818, !3819}
!3818 = !DILocalVariable(name: "imm", arg: 1, scope: !3814, file: !2612, line: 306, type: !3785)
!3819 = !DILocalVariable(name: "old", scope: !3814, file: !2612, line: 308, type: !1867)
!3820 = !DILocation(line: 0, scope: !3814)
!3821 = !DILocation(line: 308, column: 28, scope: !3814)
!3822 = !DILocation(line: 319, column: 23, scope: !3814)
!3823 = !DILocation(line: 319, column: 16, scope: !3814)
!3824 = !DILocation(line: 320, column: 7, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3814, file: !2612, line: 320, column: 7)
!3826 = !DILocation(line: 320, column: 7, scope: !3814)
!3827 = !DILocation(line: 322, column: 15, scope: !3814)
!3828 = !DILocation(line: 322, column: 3, scope: !3814)
!3829 = !DILocation(line: 323, column: 1, scope: !3814)
!3830 = distinct !DISubprogram(name: "gimple_set_op", scope: !398, file: !398, line: 1663, type: !3831, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !814, !7, !490}
!3833 = !{!3834, !3835, !3836}
!3834 = !DILocalVariable(name: "gs", arg: 1, scope: !3830, file: !398, line: 1663, type: !814)
!3835 = !DILocalVariable(name: "i", arg: 2, scope: !3830, file: !398, line: 1663, type: !7)
!3836 = !DILocalVariable(name: "op", arg: 3, scope: !3830, file: !398, line: 1663, type: !490)
!3837 = !DILocation(line: 0, scope: !3830)
!3838 = !DILocation(line: 1665, column: 3, scope: !3830)
!3839 = !DILocation(line: 1671, column: 3, scope: !3830)
!3840 = !DILocation(line: 1671, column: 22, scope: !3830)
!3841 = !DILocation(line: 1672, column: 1, scope: !3830)
!3842 = distinct !DISubprogram(name: "VEC_tree_base_pop", scope: !135, file: !135, line: 182, type: !3843, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!490, !2362}
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "vec_", arg: 1, scope: !3842, file: !135, line: 182, type: !2362)
!3847 = !DILocalVariable(name: "obj_", scope: !3842, file: !135, line: 182, type: !490)
!3848 = !DILocation(line: 0, scope: !3842)
!3849 = !DILocation(line: 182, column: 1, scope: !3842)
