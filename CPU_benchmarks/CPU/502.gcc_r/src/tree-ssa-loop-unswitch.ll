; ModuleID = 'tree-ssa-loop-unswitch.bc'
source_filename = "tree-ssa-loop-unswitch.c"
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c";; Not unswitching cold loops\0A\00", align 1
@eni_size_weights = external dso_local global %struct.eni_weights_d, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"tree-ssa-loop-unswitch.c\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1873 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1886, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1887, metadata !DIExpression()), !dbg !1888
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1889
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1890
  ret i32 %call, !dbg !1891
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1892 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1896
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1897
  ret i32 %call, !dbg !1898
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1899 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1954, metadata !DIExpression()), !dbg !1955
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1956
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1956
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1956
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1956
  %cmp = icmp uge i8* %0, %1, !dbg !1956
  %conv1 = zext i1 %cmp to i64, !dbg !1956
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1956
  %tobool = icmp eq i64 %expval, 0, !dbg !1956
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1956

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1956
  br label %cond.end, !dbg !1956

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1956
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1956
  %2 = load i8, i8* %0, align 1, !dbg !1956
  %conv3 = zext i8 %2 to i32, !dbg !1956
  br label %cond.end, !dbg !1956

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1956
  ret i32 %cond, !dbg !1957
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1958 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1964 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1965
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1965
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1965
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1965
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1965
  %cmp = icmp uge i8* %1, %2, !dbg !1965
  %conv1 = zext i1 %cmp to i64, !dbg !1965
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1965
  %tobool = icmp eq i64 %expval, 0, !dbg !1965
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1965

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1965
  br label %cond.end, !dbg !1965

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1965
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1965
  %3 = load i8, i8* %1, align 1, !dbg !1965
  %conv3 = zext i8 %3 to i32, !dbg !1965
  br label %cond.end, !dbg !1965

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1965
  ret i32 %cond, !dbg !1966
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1967 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1971, metadata !DIExpression()), !dbg !1972
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1973
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1974
  ret i32 %call, !dbg !1975
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1980, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1981, metadata !DIExpression()), !dbg !1982
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1983
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1983
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1983
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1983
  %cmp = icmp uge i8* %0, %1, !dbg !1983
  %conv1 = zext i1 %cmp to i64, !dbg !1983
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1983
  %tobool = icmp eq i64 %expval, 0, !dbg !1983
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1983

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1983
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1983
  br label %cond.end, !dbg !1983

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1983
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1983
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1983
  store i8 %conv2, i8* %0, align 1, !dbg !1983
  %conv6 = and i32 %__c, 255, !dbg !1983
  br label %cond.end, !dbg !1983

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1983
  ret i32 %cond, !dbg !1984
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1985 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1987, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1988, metadata !DIExpression()), !dbg !1989
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1990
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1990
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1990
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1990
  %cmp = icmp uge i8* %0, %1, !dbg !1990
  %conv1 = zext i1 %cmp to i64, !dbg !1990
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1990
  %tobool = icmp eq i64 %expval, 0, !dbg !1990
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1990

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1990
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1990
  br label %cond.end, !dbg !1990

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1990
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1990
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1990
  store i8 %conv2, i8* %0, align 1, !dbg !1990
  %conv6 = and i32 %__c, 255, !dbg !1990
  br label %cond.end, !dbg !1990

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1990
  ret i32 %cond, !dbg !1991
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1992 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1994, metadata !DIExpression()), !dbg !1995
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1996
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1996
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1996
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1996
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1996
  %cmp = icmp uge i8* %1, %2, !dbg !1996
  %conv1 = zext i1 %cmp to i64, !dbg !1996
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1996
  %tobool = icmp eq i64 %expval, 0, !dbg !1996
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1996

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1996
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1996
  br label %cond.end, !dbg !1996

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1996
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1996
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1996
  store i8 %conv4, i8* %1, align 1, !dbg !1996
  %conv6 = and i32 %__c, 255, !dbg !1996
  br label %cond.end, !dbg !1996

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1996
  ret i32 %cond, !dbg !1997
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1998 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2006, metadata !DIExpression()), !dbg !2007
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2008
  ret i64 %call, !dbg !2009
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2010 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2012, metadata !DIExpression()), !dbg !2013
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2014
  %0 = load i32, i32* %_flags, align 8, !dbg !2014
  %and = lshr i32 %0, 4, !dbg !2014
  %and.lobit = and i32 %and, 1, !dbg !2014
  ret i32 %and.lobit, !dbg !2015
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2016 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2018, metadata !DIExpression()), !dbg !2019
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2020
  %0 = load i32, i32* %_flags, align 8, !dbg !2020
  %and = lshr i32 %0, 5, !dbg !2020
  %and.lobit = and i32 %and, 1, !dbg !2020
  ret i32 %and.lobit, !dbg !2021
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2025, metadata !DIExpression()), !dbg !2026
  %__c.off = add i32 %__c, 128, !dbg !2027
  %0 = icmp ult i32 %__c.off, 384, !dbg !2027
  br i1 %0, label %cond.true, label %cond.end, !dbg !2027

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2028
  %1 = load i32*, i32** %call, align 8, !dbg !2029
  %idxprom = sext i32 %__c to i64, !dbg !2030
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2030
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2030
  br label %cond.end, !dbg !2031

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2031
  ret i32 %cond, !dbg !2032
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2033 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2035, metadata !DIExpression()), !dbg !2036
  %__c.off = add i32 %__c, 128, !dbg !2037
  %0 = icmp ult i32 %__c.off, 384, !dbg !2037
  br i1 %0, label %cond.true, label %cond.end, !dbg !2037

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2038
  %1 = load i32*, i32** %call, align 8, !dbg !2039
  %idxprom = sext i32 %__c to i64, !dbg !2040
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2040
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2040
  br label %cond.end, !dbg !2041

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2041
  ret i32 %cond, !dbg !2042
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2043 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2048, metadata !DIExpression()), !dbg !2049
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2050
  %conv = trunc i64 %call to i32, !dbg !2051
  ret i32 %conv, !dbg !2052
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2053 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2057, metadata !DIExpression()), !dbg !2058
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2059
  ret i64 %call, !dbg !2060
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2061 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2066, metadata !DIExpression()), !dbg !2067
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2068
  ret i64 %call, !dbg !2069
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2070 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2076, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2077, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2078, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2079, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2080, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 0, metadata !2081, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2082, metadata !DIExpression()), !dbg !2086
  br label %while.cond, !dbg !2087

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2088
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2086
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2082, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2081, metadata !DIExpression()), !dbg !2086
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2089
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2087

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2090
  %div = lshr i64 %add, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %div, metadata !2083, metadata !DIExpression()), !dbg !2086
  %mul = mul i64 %div, %__size, !dbg !2093
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2084, metadata !DIExpression()), !dbg !2086
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %call, metadata !2085, metadata !DIExpression()), !dbg !2086
  %cmp1 = icmp slt i32 %call, 0, !dbg !2096
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2098

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2099
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2101

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2081, metadata !DIExpression()), !dbg !2086
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2086
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2086
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2082, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2081, metadata !DIExpression()), !dbg !2086
  br label %while.cond, !dbg !2087, !llvm.loop !2103

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2086
  ret i8* %retval.0, !dbg !2105
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2106 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2112, metadata !DIExpression()), !dbg !2113
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2114
  ret double %call, !dbg !2115
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2116 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %base, metadata !2127, metadata !DIExpression()), !dbg !2128
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2129
  ret i64 %call, !dbg !2130
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2131 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2137, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i32 %base, metadata !2139, metadata !DIExpression()), !dbg !2140
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2141
  ret i64 %call, !dbg !2142
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2154, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2155, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32 %base, metadata !2156, metadata !DIExpression()), !dbg !2157
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2158
  ret i64 %call, !dbg !2159
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2160 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2164, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2165, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i32 %base, metadata !2166, metadata !DIExpression()), !dbg !2167
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2168
  ret i64 %call, !dbg !2169
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2210, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2211, metadata !DIExpression()), !dbg !2212
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2213
  ret i32 %call, !dbg !2214
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2215 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2218, metadata !DIExpression()), !dbg !2219
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2220
  ret i32 %call, !dbg !2221
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2222 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2227, metadata !DIExpression()), !dbg !2228
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2229
  ret i32 %call, !dbg !2230
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2231 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2238, metadata !DIExpression()), !dbg !2239
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2240
  ret i32 %call, !dbg !2241
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2242 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2248, metadata !DIExpression()), !dbg !2249
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2248, metadata !DIExpression(DW_OP_deref)), !dbg !2249
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2250
  ret i32 %call, !dbg !2251
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2252 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2256, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2259, metadata !DIExpression()), !dbg !2260
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2259, metadata !DIExpression(DW_OP_deref)), !dbg !2260
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2261
  ret i32 %call, !dbg !2262
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2288, metadata !DIExpression()), !dbg !2289
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2290
  ret i32 %call, !dbg !2291
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2292 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2295, metadata !DIExpression()), !dbg !2296
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2297
  ret i32 %call, !dbg !2298
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2299 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2304, metadata !DIExpression()), !dbg !2305
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2306
  ret i32 %call, !dbg !2307
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2312, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2313, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2314, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2315, metadata !DIExpression()), !dbg !2316
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2317
  ret i32 %call, !dbg !2318
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @tree_ssa_unswitch_loops() local_unnamed_addr #4 !dbg !2319 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2331
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2331
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2332
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2332
  call void @llvm.dbg.value(metadata i8 0, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2323, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2329, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 4) #8, !dbg !2334
  br label %for.cond, !dbg !2334

for.cond:                                         ; preds = %for.body, %entry
  %changed.0 = phi i8 [ 0, %entry ], [ %or1, %for.body ], !dbg !2333
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2330, metadata !DIExpression()), !dbg !2333
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2329, metadata !DIExpression()), !dbg !2333
  %tobool = icmp eq %struct.loop* %2, null, !dbg !2334
  br i1 %tobool, label %for.end, label %for.body, !dbg !2334

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2329, metadata !DIExpression()), !dbg !2333
  %call = call fastcc zeroext i8 @tree_unswitch_single_loop(%struct.loop* nonnull %2, i32 0) #8, !dbg !2338
  %or1 = or i8 %changed.0, %call, !dbg !2340
  call void @llvm.dbg.value(metadata i8 %or1, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2323, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2329, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2336
  br label %for.cond, !dbg !2336, !llvm.loop !2341

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !2333
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2330, metadata !DIExpression()), !dbg !2333
  %tobool3 = icmp eq i8 %changed.0.lcssa, 0, !dbg !2343
  %. = select i1 %tobool3, i32 0, i32 32, !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2345
  ret i32 %., !dbg !2345
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2346 {
entry:
  %aloop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2352, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2353, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 4, metadata !2354, metadata !DIExpression()), !dbg !2358
  %0 = bitcast %struct.loop** %aloop to i8*, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2359
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2360
  store i32 0, i32* %idx, align 8, !dbg !2361
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2362
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 4, !dbg !2362
  %2 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2362
  %tobool = icmp eq %struct.loops* %2, null, !dbg !2362
  br i1 %tobool, label %if.then, label %if.end, !dbg !2364

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2365
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2367
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2368
  br label %cleanup, !dbg !2369

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2370
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2370
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2371
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2372
  call void @llvm.dbg.value(metadata i32 1, metadata !2357, metadata !DIExpression()), !dbg !2358
  br label %for.cond, !dbg !2373

for.cond:                                         ; preds = %if.end, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ], !dbg !2377
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2356, metadata !DIExpression()), !dbg !2358
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2378
  %x_current_loops8 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 4, !dbg !2378
  %4 = load %struct.loops*, %struct.loops** %x_current_loops8, align 8, !dbg !2378
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %4, i64 0, i32 1, !dbg !2378
  %5 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2378
  %tobool9 = icmp eq %struct.VEC_loop_p_gc* %5, null, !dbg !2378
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !2378

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %5, i64 0, i32 0, !dbg !2378
  br label %cond.end, !dbg !2378

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond13 = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2378
  call void @llvm.dbg.value(metadata %struct.loop** %aloop, metadata !2355, metadata !DIExpression(DW_OP_deref)), !dbg !2358
  %call14 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond13, i32 %i.0, %struct.loop** nonnull %aloop) #8, !dbg !2378
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2373
  br i1 %tobool15, label %if.end114.loopexit2, label %for.body, !dbg !2373

for.body:                                         ; preds = %cond.end
  %6 = load %struct.loop*, %struct.loop** %aloop, align 8, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2355, metadata !DIExpression()), !dbg !2358
  %cmp = icmp eq %struct.loop* %6, null, !dbg !2382
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !2383

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2355, metadata !DIExpression()), !dbg !2358
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 8, !dbg !2384
  %7 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2384
  %cmp16 = icmp eq %struct.loop* %7, null, !dbg !2385
  br i1 %cmp16, label %land.lhs.true17, label %for.inc, !dbg !2386

land.lhs.true17:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2355, metadata !DIExpression()), !dbg !2358
  %num = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 0, !dbg !2387
  %8 = load i32, i32* %num, align 8, !dbg !2387
  %cmp18 = icmp slt i32 %8, 1, !dbg !2388
  br i1 %cmp18, label %for.inc, label %if.then19, !dbg !2389

if.then19:                                        ; preds = %land.lhs.true17
  %9 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2390
  %tobool21 = icmp eq %struct.VEC_int_heap* %9, null, !dbg !2390
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !2390

cond.true22:                                      ; preds = %if.then19
  %base24 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %9, i64 0, i32 0, !dbg !2390
  br label %cond.end26, !dbg !2390

cond.end26:                                       ; preds = %if.then19, %cond.true22
  %cond27 = phi %struct.VEC_int_base* [ %base24, %cond.true22 ], [ null, %if.then19 ], !dbg !2390
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2355, metadata !DIExpression()), !dbg !2358
  %call29 = call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond27, i32 %8) #8, !dbg !2390
  br label %for.inc, !dbg !2390

for.inc:                                          ; preds = %land.lhs.true17, %for.body, %land.lhs.true, %cond.end26
  %inc = add i32 %i.0, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2356, metadata !DIExpression()), !dbg !2358
  br label %for.cond, !dbg !2392, !llvm.loop !2393

if.end114.loopexit2:                              ; preds = %cond.end
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2395
  br label %cleanup, !dbg !2396

cleanup:                                          ; preds = %if.end114.loopexit2, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2396
  ret void, !dbg !2396
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @tree_unswitch_single_loop(%struct.loop* %loop, i32 %num) unnamed_addr #4 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2401, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %num, metadata !2402, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2410
  %0 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2411
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %0, i64 36, i32 1, !dbg !2411
  %1 = load i32, i32* %value, align 8, !dbg !2411
  %cmp = icmp slt i32 %1, %num, !dbg !2413
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2414

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2415
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !2415
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !2418

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* @dump_flags, align 4, !dbg !2419
  %and = and i32 %3, 8, !dbg !2420
  %tobool1 = icmp eq i32 %and, 0, !dbg !2420
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !2421

if.then2:                                         ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2422
  br label %cleanup, !dbg !2422

if.end3:                                          ; preds = %entry
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2423
  %4 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2423
  %tobool4 = icmp eq %struct.loop* %4, null, !dbg !2425
  br i1 %tobool4, label %if.end13, label %if.then5, !dbg !2426

if.then5:                                         ; preds = %if.end3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2427
  %tobool6 = icmp eq %struct._IO_FILE* %5, null, !dbg !2427
  br i1 %tobool6, label %cleanup, label %land.lhs.true7, !dbg !2430

land.lhs.true7:                                   ; preds = %if.then5
  %6 = load i32, i32* @dump_flags, align 4, !dbg !2431
  %and8 = and i32 %6, 8, !dbg !2432
  %tobool9 = icmp eq i32 %and8, 0, !dbg !2432
  br i1 %tobool9, label %cleanup, label %if.then10, !dbg !2433

if.then10:                                        ; preds = %land.lhs.true7
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2434
  br label %cleanup, !dbg !2434

if.end13:                                         ; preds = %if.end3
  %call14 = tail call zeroext i8 @optimize_loop_for_size_p(%struct.loop* %loop) #6, !dbg !2435
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2435
  br i1 %tobool15, label %if.end24, label %if.then16, !dbg !2437

if.then16:                                        ; preds = %if.end13
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2438
  %tobool17 = icmp eq %struct._IO_FILE* %7, null, !dbg !2438
  br i1 %tobool17, label %cleanup, label %land.lhs.true18, !dbg !2441

land.lhs.true18:                                  ; preds = %if.then16
  %8 = load i32, i32* @dump_flags, align 4, !dbg !2442
  %and19 = and i32 %8, 8, !dbg !2443
  %tobool20 = icmp eq i32 %and19, 0, !dbg !2443
  br i1 %tobool20, label %cleanup, label %if.then21, !dbg !2444

if.then21:                                        ; preds = %land.lhs.true18
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2445
  br label %cleanup, !dbg !2445

if.end24:                                         ; preds = %if.end13
  %call25 = tail call i32 @tree_num_loop_insns(%struct.loop* %loop, %struct.eni_weights_d* nonnull @eni_size_weights) #6, !dbg !2446
  %9 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2448
  %value27 = getelementptr inbounds %struct.param_info, %struct.param_info* %9, i64 35, i32 1, !dbg !2448
  %10 = load i32, i32* %value27, align 8, !dbg !2448
  %cmp28 = icmp ugt i32 %call25, %10, !dbg !2449
  br i1 %cmp28, label %if.then29, label %if.end37, !dbg !2450

if.then29:                                        ; preds = %if.end24
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2451
  %tobool30 = icmp eq %struct._IO_FILE* %11, null, !dbg !2451
  br i1 %tobool30, label %cleanup, label %land.lhs.true31, !dbg !2454

land.lhs.true31:                                  ; preds = %if.then29
  %12 = load i32, i32* @dump_flags, align 4, !dbg !2455
  %and32 = and i32 %12, 8, !dbg !2456
  %tobool33 = icmp eq i32 %and32, 0, !dbg !2456
  br i1 %tobool33, label %cleanup, label %if.then34, !dbg !2457

if.then34:                                        ; preds = %land.lhs.true31
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2458
  br label %cleanup, !dbg !2458

if.end37:                                         ; preds = %if.end24
  call void @llvm.dbg.value(metadata i32 0, metadata !2406, metadata !DIExpression()), !dbg !2410
  %call38 = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !2459
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call38, metadata !2403, metadata !DIExpression()), !dbg !2410
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2460
  br label %while.cond, !dbg !2464

while.cond:                                       ; preds = %if.end61, %if.end37
  %i.0 = phi i32 [ 0, %if.end37 ], [ %inc62, %if.end61 ], !dbg !2410
  %cond.0 = phi %union.tree_node* [ null, %if.end37 ], [ %call49, %if.end61 ], !dbg !2410
  %changed.0 = phi i8 [ 0, %if.end37 ], [ 1, %if.end61 ], !dbg !2410
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2406, metadata !DIExpression()), !dbg !2410
  br label %for.cond, !dbg !2465

for.cond:                                         ; preds = %for.inc, %while.cond
  %i.1 = phi i32 [ %i.0, %while.cond ], [ %inc, %for.inc ], !dbg !2410
  %cond.1 = phi %union.tree_node* [ %cond.0, %while.cond ], [ null, %for.inc ], !dbg !2410
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.1, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2406, metadata !DIExpression()), !dbg !2410
  %13 = load i32, i32* %num_nodes, align 4, !dbg !2466
  %cmp39 = icmp ult i32 %i.1, %13, !dbg !2467
  br i1 %cmp39, label %for.body, label %for.end.loopexit, !dbg !2468

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %i.1 to i64, !dbg !2469
  %arrayidx40 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call38, i64 %idxprom, !dbg !2469
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx40, align 8, !dbg !2469
  %call41 = tail call fastcc %union.tree_node* @tree_may_unswitch_on(%struct.basic_block_def* %14, %struct.loop* %loop) #8, !dbg !2471
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !2407, metadata !DIExpression()), !dbg !2410
  %tobool42 = icmp eq %union.tree_node* %call41, null, !dbg !2472
  br i1 %tobool42, label %for.inc, label %for.body.for.end_crit_edge, !dbg !2473

for.body.for.end_crit_edge:                       ; preds = %for.body
  %call41.lcssa = phi %union.tree_node* [ %call41, %for.body ], !dbg !2471
  %i.1.lcssa10 = phi i32 [ %i.1, %for.body ], !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa10, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa10, metadata !2406, metadata !DIExpression()), !dbg !2410
  %.pre = load i32, i32* %num_nodes, align 4, !dbg !2474
  br label %for.end, !dbg !2473

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.1, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2406, metadata !DIExpression()), !dbg !2410
  br label %for.cond, !dbg !2477, !llvm.loop !2478

for.end.loopexit:                                 ; preds = %for.cond
  %i.1.lcssa = phi i32 [ %i.1, %for.cond ], !dbg !2410
  %cond.1.lcssa = phi %union.tree_node* [ %cond.1, %for.cond ], !dbg !2410
  %.lcssa = phi i32 [ %13, %for.cond ], !dbg !2466
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.1.lcssa, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.1.lcssa, metadata !2407, metadata !DIExpression()), !dbg !2410
  br label %for.end, !dbg !2480

for.end:                                          ; preds = %for.end.loopexit, %for.body.for.end_crit_edge
  %i.111 = phi i32 [ %i.1.lcssa10, %for.body.for.end_crit_edge ], [ %i.1.lcssa, %for.end.loopexit ]
  %15 = phi i32 [ %.pre, %for.body.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !2474
  %cond.2 = phi %union.tree_node* [ %call41.lcssa, %for.body.for.end_crit_edge ], [ %cond.1.lcssa, %for.end.loopexit ], !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.111, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.111, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.2, metadata !2407, metadata !DIExpression()), !dbg !2410
  %cmp46 = icmp eq i32 %i.111, %15, !dbg !2480
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !2481

if.then47:                                        ; preds = %for.end
  %changed.0.lcssa = phi i8 [ %changed.0, %for.end ], !dbg !2410
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2409, metadata !DIExpression()), !dbg !2410
  %16 = bitcast %struct.basic_block_def** %call38 to i8*, !dbg !2482
  tail call void @free(i8* %16) #6, !dbg !2484
  br label %cleanup, !dbg !2485

if.end48:                                         ; preds = %for.end
  %call49 = tail call fastcc %union.tree_node* @simplify_using_entry_checks(%struct.loop* %loop, %union.tree_node* %cond.2) #8, !dbg !2486
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !2407, metadata !DIExpression()), !dbg !2410
  %idxprom50 = zext i32 %i.111 to i64, !dbg !2487
  %arrayidx51 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call38, i64 %idxprom50, !dbg !2487
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx51, align 8, !dbg !2487
  %call52 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %17) #6, !dbg !2488
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call52, metadata !2408, metadata !DIExpression()), !dbg !2410
  %call53 = tail call i32 @integer_nonzerop(%union.tree_node* %call49) #6, !dbg !2489
  %tobool54 = icmp eq i32 %call53, 0, !dbg !2489
  br i1 %tobool54, label %if.else, label %if.then55, !dbg !2491

if.then55:                                        ; preds = %if.end48
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2492
  tail call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* %call52, %union.tree_node* %18) #6, !dbg !2494
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2410
  br label %if.end61, !dbg !2495

if.else:                                          ; preds = %if.end48
  %call56 = tail call i32 @integer_zerop(%union.tree_node* %call49) #6, !dbg !2496
  %tobool57 = icmp eq i32 %call56, 0, !dbg !2496
  br i1 %tobool57, label %while.end, label %if.then58, !dbg !2498

if.then58:                                        ; preds = %if.else
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2499
  tail call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* %call52, %union.tree_node* %19) #6, !dbg !2501
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2410
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.then55
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2410
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call52) #8, !dbg !2502
  %inc62 = add i32 %i.111, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %inc62, metadata !2406, metadata !DIExpression()), !dbg !2410
  br label %while.cond, !dbg !2464, !llvm.loop !2504

while.end:                                        ; preds = %if.else
  %call49.lcssa = phi %union.tree_node* [ %call49, %if.else ], !dbg !2486
  %arrayidx51.lcssa = phi %struct.basic_block_def** [ %arrayidx51, %if.else ], !dbg !2487
  %changed.0.lcssa12 = phi i8 [ %changed.0, %if.else ], !dbg !2410
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa12, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa12, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa12, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2406, metadata !DIExpression()), !dbg !2410
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2506
  %tobool63 = icmp eq %struct._IO_FILE* %20, null, !dbg !2506
  br i1 %tobool63, label %if.end69, label %land.lhs.true64, !dbg !2508

land.lhs.true64:                                  ; preds = %while.end
  %21 = load i32, i32* @dump_flags, align 4, !dbg !2509
  %and65 = and i32 %21, 8, !dbg !2510
  %tobool66 = icmp eq i32 %and65, 0, !dbg !2510
  br i1 %tobool66, label %if.end69, label %if.then67, !dbg !2511

if.then67:                                        ; preds = %land.lhs.true64
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2512
  br label %if.end69, !dbg !2512

if.end69:                                         ; preds = %land.lhs.true64, %while.end, %if.then67
  tail call void @initialize_original_copy_tables() #6, !dbg !2513
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx51.lcssa, align 8, !dbg !2514
  %call72 = tail call fastcc %struct.loop* @tree_unswitch_loop(%struct.loop* %loop, %struct.basic_block_def* %22, %union.tree_node* %call49.lcssa) #8, !dbg !2515
  call void @llvm.dbg.value(metadata %struct.loop* %call72, metadata !2405, metadata !DIExpression()), !dbg !2410
  %tobool73 = icmp eq %struct.loop* %call72, null, !dbg !2516
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !2518

if.then74:                                        ; preds = %if.end69
  tail call void @free_original_copy_tables() #6, !dbg !2519
  %23 = bitcast %struct.basic_block_def** %call38 to i8*, !dbg !2521
  tail call void @free(i8* %23) #6, !dbg !2522
  br label %cleanup, !dbg !2523

if.end75:                                         ; preds = %if.end69
  tail call void @update_ssa(i32 2048) #6, !dbg !2524
  tail call void @free_original_copy_tables() #6, !dbg !2525
  %add = add nsw i32 %num, 1, !dbg !2526
  %call76 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(%struct.loop* nonnull %call72, i32 %add) #8, !dbg !2527
  %call78 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(%struct.loop* %loop, i32 %add) #8, !dbg !2528
  %24 = bitcast %struct.basic_block_def** %call38 to i8*, !dbg !2529
  tail call void @free(i8* %24) #6, !dbg !2530
  ret i8 1, !dbg !2531

cleanup:                                          ; preds = %land.lhs.true, %if.then, %land.lhs.true7, %if.then5, %land.lhs.true18, %if.then16, %land.lhs.true31, %if.then29, %if.then34, %if.then21, %if.then10, %if.then2, %if.then74, %if.then47
  %retval.0 = phi i8 [ %changed.0.lcssa, %if.then47 ], [ %changed.0.lcssa12, %if.then74 ], [ 0, %if.then2 ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %land.lhs.true7 ], [ 0, %if.then5 ], [ 0, %if.then21 ], [ 0, %land.lhs.true18 ], [ 0, %if.then16 ], [ 0, %if.then34 ], [ 0, %land.lhs.true31 ], [ 0, %if.then29 ], !dbg !2410
  ret i8 %retval.0, !dbg !2531
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2532 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2537, metadata !DIExpression()), !dbg !2539
  %0 = bitcast i32* %anum to i8*, !dbg !2540
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2540
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2539
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2539
  br label %while.cond, !dbg !2541

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2542
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2542
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2542

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2542
  br label %cond.end, !dbg !2542

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2542
  %2 = load i32, i32* %idx, align 8, !dbg !2542
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !2542
  %tobool2 = icmp eq i32 %call, 0, !dbg !2541
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2541

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2543
  %inc = add i32 %3, 1, !dbg !2543
  store i32 %inc, i32* %idx, align 8, !dbg !2543
  %4 = load i32, i32* %anum, align 4, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %4, metadata !2538, metadata !DIExpression()), !dbg !2539
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !2546
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2547
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2548
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2550, !llvm.loop !2551

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !2553
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2554
  br label %cleanup, !dbg !2555

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2555

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2555
  ret void, !dbg !2555
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2556 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2560, metadata !DIExpression()), !dbg !2561
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2562
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2562
  ret %struct.VEC_int_heap* %0, !dbg !2562
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2563 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2564
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2564
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2564
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2564
  br i1 %tobool, label %return, label %if.end, !dbg !2566

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2567
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2567
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2567
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2567

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2567
  br label %cond.end, !dbg !2567

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2567
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2567
  br label %return, !dbg !2568

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2569
  ret i32 %retval.0, !dbg !2570
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !2571 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2577, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2578, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !2579, metadata !DIExpression()), !dbg !2580
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2581
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2581

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2581
  %0 = load i32, i32* %num, align 8, !dbg !2581
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2581
  br i1 %cmp, label %if.then, label %if.else, !dbg !2583

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2584
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2584
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2584
  br label %return, !dbg !2584

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2586

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !2588
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2588
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !2588
  ret i32 %retval.0, !dbg !2583
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !2589 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2596, metadata !DIExpression()), !dbg !2598
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2599
  %0 = load i32, i32* %num1, align 4, !dbg !2599
  %inc = add i32 %0, 1, !dbg !2599
  store i32 %inc, i32* %num1, align 4, !dbg !2599
  %idxprom = zext i32 %0 to i64, !dbg !2599
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2599
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2597, metadata !DIExpression()), !dbg !2598
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !2599
  ret i32* %arrayidx, !dbg !2599
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2600 {
entry:
  unreachable, !dbg !2608
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2613, metadata !DIExpression()), !dbg !2614
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2615
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2615

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2615
  %0 = load i32, i32* %num, align 8, !dbg !2615
  br label %cond.end, !dbg !2615

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2615
  ret i32 %cond, !dbg !2615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2616 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2621, metadata !DIExpression()), !dbg !2622
  br label %land.end, !dbg !2623

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2623
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2623
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2623
  ret %struct.loop* %0, !dbg !2623
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !2624 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2630, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !2632, metadata !DIExpression()), !dbg !2633
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !2634
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2634

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2634
  %0 = load i32, i32* %num, align 4, !dbg !2634
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2634
  br i1 %cmp, label %if.then, label %if.else, !dbg !2636

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2637
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2637
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2637
  br label %return, !dbg !2637

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2639

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !2641
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2641
  store i32 %storemerge, i32* %ptr, align 4, !dbg !2641
  ret i32 %retval.0, !dbg !2636
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !2642 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !2646, metadata !DIExpression()), !dbg !2647
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2648
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2648
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2648
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2648
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2648
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2648
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2648

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2648
  br label %cond.end, !dbg !2648

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2648
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !2648
  ret %struct.loop* %call, !dbg !2649
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !2650 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !2655, metadata !DIExpression()), !dbg !2656
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !2657
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !2657
  br i1 %tobool, label %if.end, label %if.then, !dbg !2659

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !2659
  tail call void @free(i8* nonnull %1) #6, !dbg !2657
  br label %if.end, !dbg !2657

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !2659
  ret void, !dbg !2659
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local zeroext i8 @optimize_loop_for_size_p(%struct.loop*) local_unnamed_addr #1

declare dso_local i32 @tree_num_loop_insns(%struct.loop*, %struct.eni_weights_d*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def** @get_loop_body(%struct.loop*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @tree_may_unswitch_on(%struct.basic_block_def* %bb, %struct.loop* %loop) unnamed_addr #4 !dbg !2660 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2664, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2665, metadata !DIExpression()), !dbg !2684
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2685
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2685
  %call = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %bb) #6, !dbg !2686
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2666, metadata !DIExpression()), !dbg !2684
  %tobool = icmp eq %union.gimple_statement_d* %call, null, !dbg !2687
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !2689

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call) #8, !dbg !2690
  %cmp = icmp eq i32 %call1, 1, !dbg !2691
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2692

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2671, metadata !DIExpression(DW_OP_deref)), !dbg !2684
  %call2 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* nonnull %call, i32 1) #8, !dbg !2693
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2669, metadata !DIExpression()), !dbg !2684
  br label %for.cond, !dbg !2693

for.cond:                                         ; preds = %for.inc, %if.end
  %use.0 = phi %union.tree_node* [ %call2, %if.end ], [ %call11, %for.inc ], !dbg !2695
  call void @llvm.dbg.value(metadata %union.tree_node* %use.0, metadata !2669, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2671, metadata !DIExpression(DW_OP_deref)), !dbg !2684
  %call3 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !2696
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2696
  br i1 %tobool4, label %for.body, label %for.end, !dbg !2693

for.body:                                         ; preds = %for.cond
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %use.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2698
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2698
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !2698
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !2667, metadata !DIExpression()), !dbg !2684
  %call5 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %2) #8, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !2670, metadata !DIExpression()), !dbg !2684
  %tobool6 = icmp eq %struct.basic_block_def* %call5, null, !dbg !2701
  br i1 %tobool6, label %for.inc, label %land.lhs.true, !dbg !2703

land.lhs.true:                                    ; preds = %for.body
  %call7 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* nonnull %call5) #6, !dbg !2704
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2704
  br i1 %tobool8, label %for.inc, label %cleanup.loopexit, !dbg !2705

for.inc:                                          ; preds = %land.lhs.true, %for.body
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2671, metadata !DIExpression(DW_OP_deref)), !dbg !2684
  %call11 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !2696
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !2669, metadata !DIExpression()), !dbg !2684
  br label %for.cond, !dbg !2696, !llvm.loop !2706

for.end:                                          ; preds = %for.cond
  %call12 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call) #8, !dbg !2708
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2708
  %call13 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call) #8, !dbg !2708
  %call14 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call) #8, !dbg !2708
  %call15 = call %union.tree_node* @build2_stat(i32 %call12, %union.tree_node* %3, %union.tree_node* %call13, %union.tree_node* %call14) #6, !dbg !2708
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2668, metadata !DIExpression()), !dbg !2684
  %call16 = call i32 @integer_zerop(%union.tree_node* %call15) #6, !dbg !2709
  %tobool17 = icmp eq i32 %call16, 0, !dbg !2709
  br i1 %tobool17, label %lor.lhs.false18, label %cleanup, !dbg !2711

lor.lhs.false18:                                  ; preds = %for.end
  %call19 = call i32 @integer_nonzerop(%union.tree_node* %call15) #6, !dbg !2712
  %tobool20 = icmp eq i32 %call19, 0, !dbg !2712
  %spec.select = select i1 %tobool20, %union.tree_node* %call15, %union.tree_node* null, !dbg !2713
  br label %cleanup, !dbg !2713

cleanup.loopexit:                                 ; preds = %land.lhs.true
  br label %cleanup, !dbg !2714

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %lor.lhs.false, %entry, %lor.lhs.false18
  %retval.0 = phi %union.tree_node* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %for.end ], [ %spec.select, %lor.lhs.false18 ], [ null, %cleanup.loopexit ], !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2714
  ret %union.tree_node* %retval.0, !dbg !2714
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @simplify_using_entry_checks(%struct.loop* %loop, %union.tree_node* %cond) unnamed_addr #4 !dbg !2715 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2719, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !2720, metadata !DIExpression()), !dbg !2723
  %call = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2721, metadata !DIExpression()), !dbg !2723
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %cond, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2725
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %cond, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2725
  %arrayidx14 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2725
  %src.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !2728
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %src.phi.trans.insert, align 8, !dbg !2729
  br label %while.cond, !dbg !2730

while.cond:                                       ; preds = %if.end23, %entry
  %1 = phi %struct.basic_block_def* [ %.pre, %entry ], [ %10, %if.end23 ], !dbg !2729
  %e.0 = phi %struct.edge_def* [ %call, %entry ], [ %call25, %if.end23 ], !dbg !2723
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !2721, metadata !DIExpression()), !dbg !2723
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.0, i64 0, i32 0, !dbg !2729
  %call1 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %1) #6, !dbg !2731
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2722, metadata !DIExpression()), !dbg !2723
  %tobool = icmp eq %union.gimple_statement_d* %call1, null, !dbg !2732
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2733

land.lhs.true:                                    ; preds = %while.cond
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call1) #8, !dbg !2734
  %cmp = icmp eq i32 %call2, 1, !dbg !2735
  br i1 %cmp, label %land.lhs.true3, label %if.end, !dbg !2736

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call1) #8, !dbg !2737
  %bf.load = load i64, i64* %0, align 8, !dbg !2738
  %2 = trunc i64 %bf.load to i32, !dbg !2738
  %bf.cast = and i32 %2, 65535, !dbg !2738
  %cmp5 = icmp eq i32 %call4, %bf.cast, !dbg !2739
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !2740

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call1) #8, !dbg !2741
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2742
  %call8 = tail call i32 @operand_equal_p(%union.tree_node* %call7, %union.tree_node* %3, i32 0) #6, !dbg !2743
  %tobool9 = icmp eq i32 %call8, 0, !dbg !2743
  br i1 %tobool9, label %if.end, label %land.lhs.true10, !dbg !2744

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %call11 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call1) #8, !dbg !2745
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8, !dbg !2746
  %call15 = tail call i32 @operand_equal_p(%union.tree_node* %call11, %union.tree_node* %4, i32 0) #6, !dbg !2747
  %tobool16 = icmp eq i32 %call15, 0, !dbg !2747
  br i1 %tobool16, label %if.end, label %if.then, !dbg !2748

if.then:                                          ; preds = %land.lhs.true10
  %e.0.lcssa = phi %struct.edge_def* [ %e.0, %land.lhs.true10 ], !dbg !2723
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !2721, metadata !DIExpression()), !dbg !2723
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.0.lcssa, i64 0, i32 7, !dbg !2749
  %5 = load i32, i32* %flags, align 8, !dbg !2749
  %and = and i32 %5, 1024, !dbg !2750
  %tobool17 = icmp eq i32 %and, 0, !dbg !2750
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2751
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2751
  %cond18 = select i1 %tobool17, %union.tree_node* %7, %union.tree_node* %6, !dbg !2751
  br label %cleanup, !dbg !2751

if.end:                                           ; preds = %land.lhs.true10, %land.lhs.true6, %while.cond, %land.lhs.true3, %land.lhs.true
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2752
  %call20 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %8) #8, !dbg !2754
  %tobool21 = icmp eq i8 %call20, 0, !dbg !2754
  br i1 %tobool21, label %cleanup.loopexit, label %if.end23, !dbg !2755

if.end23:                                         ; preds = %if.end
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2756
  %call25 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %9) #8, !dbg !2757
  call void @llvm.dbg.value(metadata %struct.edge_def* %call25, metadata !2721, metadata !DIExpression()), !dbg !2723
  %src26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call25, i64 0, i32 0, !dbg !2758
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src26, align 8, !dbg !2758
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2760
  %cfg = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !2760
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2760
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !2760
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2760
  %cmp27 = icmp eq %struct.basic_block_def* %10, %13, !dbg !2761
  br i1 %cmp27, label %cleanup.loopexit, label %while.cond, !dbg !2762, !llvm.loop !2763

cleanup.loopexit:                                 ; preds = %if.end23, %if.end
  br label %cleanup, !dbg !2765

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi %union.tree_node* [ %cond18, %if.then ], [ %cond, %cleanup.loopexit ], !dbg !2728
  ret %union.tree_node* %retval.0, !dbg !2765
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local i32 @integer_nonzerop(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2766 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2770, metadata !DIExpression()), !dbg !2771
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !2772
  %tobool = icmp eq i8 %call, 0, !dbg !2772
  br i1 %tobool, label %if.end, label %if.then, !dbg !2774

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !2775
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !2777
  br label %if.end, !dbg !2778

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2779
}

declare dso_local void @initialize_original_copy_tables() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.loop* @tree_unswitch_loop(%struct.loop* %loop, %struct.basic_block_def* %unswitch_on, %union.tree_node* %cond) unnamed_addr #4 !dbg !2780 {
entry:
  %edge_true = alloca %struct.edge_def*, align 8
  %edge_false = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2784, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %unswitch_on, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !2786, metadata !DIExpression()), !dbg !2790
  %0 = bitcast %struct.edge_def** %edge_true to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2791
  %1 = bitcast %struct.edge_def** %edge_false to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2791
  %call = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %unswitch_on) #6, !dbg !2792
  %tobool = icmp eq i8 %call, 0, !dbg !2792
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2792

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2792
  br label %cond.end, !dbg !2792

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %unswitch_on, i64 0, i32 1, !dbg !2793
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2793
  %tobool2 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2793
  br i1 %tobool2, label %cond.end6, label %cond.true3, !dbg !2793

cond.true3:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2793
  br label %cond.end6, !dbg !2793

cond.end6:                                        ; preds = %cond.end, %cond.true3
  %cond7 = phi %struct.VEC_edge_base* [ %base, %cond.true3 ], [ null, %cond.end ], !dbg !2793
  %call8 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond7) #8, !dbg !2793
  %cmp = icmp eq i32 %call8, 2, !dbg !2793
  br i1 %cmp, label %cond.end11, label %cond.true9, !dbg !2793

cond.true9:                                       ; preds = %cond.end6
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2793
  br label %cond.end11, !dbg !2793

cond.end11:                                       ; preds = %cond.end6, %cond.true9
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2794
  %3 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2794
  %cmp13 = icmp eq %struct.loop* %3, null, !dbg !2794
  br i1 %cmp13, label %cond.end16, label %cond.true14, !dbg !2794

cond.true14:                                      ; preds = %cond.end11
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2794
  br label %cond.end16, !dbg !2794

cond.end16:                                       ; preds = %cond.end11, %cond.true14
  call void @llvm.dbg.value(metadata %struct.edge_def** %edge_true, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2790
  call void @llvm.dbg.value(metadata %struct.edge_def** %edge_false, metadata !2789, metadata !DIExpression(DW_OP_deref)), !dbg !2790
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %unswitch_on, %struct.edge_def** nonnull %edge_true, %struct.edge_def** nonnull %edge_false) #6, !dbg !2795
  %4 = load %struct.edge_def*, %struct.edge_def** %edge_true, align 8, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.edge_def* %4, metadata !2788, metadata !DIExpression()), !dbg !2790
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 8, !dbg !2797
  %5 = load i32, i32* %probability, align 4, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %5, metadata !2787, metadata !DIExpression()), !dbg !2790
  %call18 = call %union.tree_node* @unshare_expr(%union.tree_node* %cond) #6, !dbg !2798
  %6 = bitcast %union.tree_node* %call18 to i8*, !dbg !2798
  %sub = sub i32 10000, %5, !dbg !2799
  %call19 = call %struct.loop* @loop_version(%struct.loop* %loop, i8* %6, %struct.basic_block_def** null, i32 %5, i32 %5, i32 %sub, i8 zeroext 0) #6, !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2801
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2801
  ret %struct.loop* %call19, !dbg !2802
}

declare dso_local void @free_original_copy_tables() local_unnamed_addr #1

declare dso_local void @update_ssa(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2808, metadata !DIExpression()), !dbg !2809
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2810
  %bf.load = load i32, i32* %0, align 8, !dbg !2810
  %bf.clear = and i32 %bf.load, 255, !dbg !2810
  ret i32 %bf.clear, !dbg !2811
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2812 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 1, metadata !2820, metadata !DIExpression()), !dbg !2821
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 1) #8, !dbg !2822
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2823
  store i32 1, i32* %iter_type, align 4, !dbg !2824
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2825
  ret %union.tree_node* %call, !dbg !2826
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2827 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2833, metadata !DIExpression()), !dbg !2834
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2835
  %0 = load i8, i8* %done, align 8, !dbg !2835
  ret i8 %0, !dbg !2836
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2837 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2841, metadata !DIExpression()), !dbg !2842
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2843
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2843
  ret %struct.basic_block_def* %0, !dbg !2844
}

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2845 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2849, metadata !DIExpression()), !dbg !2851
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2852
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2852
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2854
  br i1 %tobool, label %if.end, label %if.then, !dbg !2855

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2856
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #8, !dbg !2856
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2850, metadata !DIExpression()), !dbg !2851
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !2858
  %2 = load i64*, i64** %1, align 8, !dbg !2858
  %3 = load i64, i64* %2, align 8, !dbg !2859
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2860
  store i64 %3, i64* %4, align 8, !dbg !2860
  br label %cleanup, !dbg !2861

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !2862
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !2862
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !2864
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !2865

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !2866
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !2866
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #8, !dbg !2866
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2850, metadata !DIExpression()), !dbg !2851
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !2868
  %8 = load i64*, i64** %7, align 8, !dbg !2868
  %9 = load i64, i64* %8, align 8, !dbg !2869
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !2870
  store i64 %9, i64* %10, align 8, !dbg !2870
  br label %cleanup, !dbg !2871

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2872
  store i8 1, i8* %done, align 8, !dbg !2873
  br label %cleanup, !dbg !2874

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !2851
  ret %union.tree_node* %retval.0, !dbg !2875
}

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2876 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2880, metadata !DIExpression()), !dbg !2881
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !2882
  %bf.load = load i32, i32* %0, align 8, !dbg !2882
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2882
  ret i32 %bf.lshr, !dbg !2883
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2884 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2888, metadata !DIExpression()), !dbg !2889
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2890
  ret %union.tree_node* %call, !dbg !2891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2892 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2894, metadata !DIExpression()), !dbg !2895
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !2896
  ret %union.tree_node* %call, !dbg !2897
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2898 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 1, metadata !2904, metadata !DIExpression()), !dbg !2905
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !2906
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !2907
  br i1 true, label %land.lhs.true16, label %entry.if.end_crit_edge, !dbg !2908

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end, !dbg !2908

land.lhs.true16:                                  ; preds = %entry
  br i1 true, label %if.end, label %land.lhs.true19, !dbg !2910

land.lhs.true19:                                  ; preds = %land.lhs.true16
  br i1 undef, label %land.lhs.true19.if.end_crit_edge, label %if.then, !dbg !2911

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  br label %if.end, !dbg !2911

if.then:                                          ; preds = %land.lhs.true19
  br label %if.end, !dbg !2912

if.end:                                           ; preds = %land.lhs.true19.if.end_crit_edge, %entry.if.end_crit_edge, %land.lhs.true16, %if.then
  br i1 false, label %if.end.cond.end28_crit_edge, label %cond.true25, !dbg !2913

if.end.cond.end28_crit_edge:                      ; preds = %if.end
  br label %cond.end28, !dbg !2913

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !2914
  br label %cond.end28, !dbg !2913

cond.end28:                                       ; preds = %if.end.cond.end28_crit_edge, %cond.true25
  %0 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ undef, %if.end.cond.end28_crit_edge ], !dbg !2913
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2915
  store %struct.use_optype_d* %0, %struct.use_optype_d** %uses, align 8, !dbg !2916
  br i1 true, label %land.lhs.true32, label %cond.end28.if.end42_crit_edge, !dbg !2917

cond.end28.if.end42_crit_edge:                    ; preds = %cond.end28
  br label %if.end42, !dbg !2917

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %0, null, !dbg !2919
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !2920

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !2921
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !2922
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !2923

if.then38:                                        ; preds = %land.lhs.true35
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !2924
  %2 = load i64*, i64** %1, align 8, !dbg !2924
  %3 = load i64, i64* %2, align 8, !dbg !2925
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2926
  store i64 %3, i64* %4, align 8, !dbg !2926
  br label %if.end42, !dbg !2927

if.end42:                                         ; preds = %cond.end28.if.end42_crit_edge, %land.lhs.true35, %land.lhs.true32, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2928
  store i8 0, i8* %done, align 8, !dbg !2929
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !2930
  store i32 0, i32* %phi_i, align 8, !dbg !2931
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2932
  store i32 0, i32* %num_phi, align 4, !dbg !2933
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2934
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2935
  ret void, !dbg !2936
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2937 {
entry:
  unreachable, !dbg !2942
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2943 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2945, metadata !DIExpression()), !dbg !2946
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !2947
  %tobool = icmp eq i8 %call, 0, !dbg !2947
  br i1 %tobool, label %return, label %if.end, !dbg !2949

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2950
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !2950
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2950
  br label %return, !dbg !2951

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2946
  ret %union.tree_node* %retval.0, !dbg !2952
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2953 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2957, metadata !DIExpression()), !dbg !2958
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !2959
  %tobool = icmp eq i8 %call, 0, !dbg !2959
  br i1 %tobool, label %return, label %if.end, !dbg !2961

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !2962
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !2962
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !2962
  br label %return, !dbg !2963

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !2958
  ret %struct.use_optype_d* %retval.0, !dbg !2964
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2965 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2967, metadata !DIExpression()), !dbg !2968
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !2969
  %tobool = icmp eq i8 %call, 0, !dbg !2969
  br i1 %tobool, label %return, label %if.end, !dbg !2971

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2972
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !2972
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2972
  br label %return, !dbg !2973

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2968
  ret %union.tree_node* %retval.0, !dbg !2974
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2979, metadata !DIExpression()), !dbg !2980
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2981
  %cmp = icmp eq i32 %call, 0, !dbg !2982
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2983

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2984
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2985
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2986
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2987 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2989, metadata !DIExpression()), !dbg !2990
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2991
  %cmp = icmp ugt i32 %call, 5, !dbg !2992
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2993

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2994
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2995
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2996
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2997 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3004, metadata !DIExpression()), !dbg !3005
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3006
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3006
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3007
  ret %union.tree_node* %1, !dbg !3008
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3009 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3014, metadata !DIExpression()), !dbg !3015
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3016
  ret %union.tree_node* %0, !dbg !3017
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3018 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %i, metadata !3023, metadata !DIExpression()), !dbg !3024
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3025
  %tobool = icmp eq i8 %call, 0, !dbg !3025
  br i1 %tobool, label %return, label %if.then, !dbg !3027

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3028
  %idxprom = zext i32 %i to i64, !dbg !3028
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3028
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3028
  br label %return, !dbg !3030

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3031
  ret %union.tree_node* %retval.0, !dbg !3032
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3033 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3037, metadata !DIExpression()), !dbg !3039
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3040
  %idxprom = zext i32 %call to i64, !dbg !3041
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3041
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %0, metadata !3038, metadata !DIExpression()), !dbg !3039
  %cmp = icmp eq i64 %0, 0, !dbg !3042
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3042

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3042
  br label %cond.end, !dbg !3042

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3043
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3044
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3045
  ret %union.tree_node** %2, !dbg !3046
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3047 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3051, metadata !DIExpression()), !dbg !3052
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3053
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3054
  ret i32 %call1, !dbg !3055
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3056 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3060, metadata !DIExpression()), !dbg !3061
  %idxprom = zext i32 %code to i64, !dbg !3062
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3062
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3062
  ret i32 %0, !dbg !3063
}

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #1

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3064 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3071, metadata !DIExpression()), !dbg !3072
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3073
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3073
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3073
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3073

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3073
  br label %cond.end, !dbg !3073

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3073
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3073
  %cmp = icmp eq i32 %call, 1, !dbg !3074
  %conv2 = zext i1 %cmp to i8, !dbg !3073
  ret i8 %conv2, !dbg !3075
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3076 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3080, metadata !DIExpression()), !dbg !3081
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #8, !dbg !3082
  %tobool = icmp eq i8 %call, 0, !dbg !3082
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3082

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3082
  br label %cond.end, !dbg !3082

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3083
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3083
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3083
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3083

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3083
  br label %cond.end5, !dbg !3083

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3083
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !3083
  ret %struct.edge_def* %call7, !dbg !3084
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3085 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3091, metadata !DIExpression()), !dbg !3092
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3093
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3093

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3093
  %0 = load i32, i32* %num, align 8, !dbg !3093
  br label %cond.end, !dbg !3093

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3093
  ret i32 %cond, !dbg !3093
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3094 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3100
  br label %land.end, !dbg !3101

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 0, !dbg !3101
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3101
  ret %struct.edge_def* %0, !dbg !3101
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #1

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #1

declare dso_local void @extract_true_false_edges_from_block(%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**) local_unnamed_addr #1

declare dso_local %struct.loop* @loop_version(%struct.loop*, i8*, %struct.basic_block_def**, i32, i32, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1869, !1870, !1871}
!llvm.ident = !{!1872}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !460, nameTableKind: None)
!1 = !DIFile(filename: "tree-ssa-loop-unswitch.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !138, !143, !148, !167, !174, !181, !375, !384, !388, !395, !434}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !133, line: 363, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !133, line: 355, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !144, line: 474, baseType: !5, size: 32, elements: !145)
!144 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!145 = !{!146, !147}
!146 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !149, line: 280, baseType: !5, size: 32, elements: !150)
!149 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!151 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !149, line: 1817, baseType: !5, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !149, line: 1805, baseType: !5, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !149, line: 39, baseType: !5, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!183 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!186 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!187 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!188 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!189 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!190 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!191 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!192 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!193 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!194 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!195 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!196 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!197 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!198 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!199 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!200 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!201 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!202 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!203 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!204 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!205 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!208 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!209 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!210 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!211 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!213 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!214 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!215 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!216 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!217 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!218 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!219 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!220 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!221 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!222 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!223 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!226 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!227 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!228 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!229 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!230 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!231 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!232 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!233 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!234 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!235 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!236 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!237 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!238 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!239 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!240 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!241 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!242 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!243 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!244 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!245 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!246 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!247 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!248 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!249 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!250 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!251 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!252 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!253 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!254 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!255 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!256 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!257 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!258 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!259 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!260 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!262 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!263 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!264 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!265 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!266 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!267 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!268 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!269 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!270 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!271 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!274 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!275 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!280 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!281 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!282 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!283 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!284 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!285 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!286 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!287 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!288 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!289 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!290 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!291 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!292 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!293 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!294 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!295 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!296 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!297 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!298 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!299 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!300 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!301 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!302 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!303 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!304 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!305 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!306 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!307 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!308 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!309 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!310 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!311 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!312 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!313 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!314 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!315 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!316 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!317 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!318 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!319 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!320 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!321 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!322 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!323 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!324 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!325 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!326 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!327 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!328 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!329 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!330 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!331 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!332 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!333 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!334 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!335 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!336 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!347 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!348 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!350 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!351 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!352 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!354 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!368 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!369 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!370 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!371 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!372 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!373 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!374 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !376, line: 31, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380, !381, !382, !383}
!378 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !376, line: 91, baseType: !5, size: 32, elements: !385)
!385 = !{!386, !387}
!386 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!387 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !389, line: 119, baseType: !5, size: 32, elements: !390)
!389 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !{!391, !392, !393, !394}
!391 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!394 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !396, line: 51, baseType: !5, size: 32, elements: !397)
!396 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!398 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!415 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!416 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!417 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!418 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!422 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!423 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!424 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!425 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!426 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!427 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!428 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!429 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!430 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!431 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!432 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!433 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !396, line: 727, baseType: !5, size: 32, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!436 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!447 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!448 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!449 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!450 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!451 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!452 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!453 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!454 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!455 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!456 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!457 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!458 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!459 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!460 = !{!461, !462, !463, !464, !467, !468, !470, !485, !554, !5, !181, !530, !1867, !1168, !465}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!463 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !472, line: 32, baseType: !473)
!472 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !472, line: 32, size: 96, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !473, file: !472, line: 32, baseType: !476, size: 96)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !472, line: 31, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !472, line: 31, size: 96, elements: !478)
!478 = !{!479, !480, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !477, file: !472, line: 31, baseType: !5, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !477, file: !472, line: 31, baseType: !5, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !477, file: !472, line: 31, baseType: !482, size: 32, offset: 64)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 32, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 1)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !376, line: 84, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !376, line: 100, size: 1216, elements: !488)
!488 = !{!489, !490, !491, !1831, !1832, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1857, !1865, !1866}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !487, file: !376, line: 102, baseType: !463, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !487, file: !376, line: 105, baseType: !5, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !487, file: !376, line: 108, baseType: !492, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !133, line: 217, size: 832, elements: !494)
!494 = !{!495, !1798, !1799, !1800, !1801, !1805, !1806, !1807, !1825, !1826, !1827, !1828, !1829, !1830}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !493, file: !133, line: 219, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !133, line: 151, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !133, line: 151, size: 128, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !498, file: !133, line: 151, baseType: !501, size: 128)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !133, line: 150, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !133, line: 150, size: 128, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !502, file: !133, line: 150, baseType: !5, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !502, file: !133, line: 150, baseType: !5, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !502, file: !133, line: 150, baseType: !507, size: 64, offset: 64)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 64, elements: !483)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !509, line: 108, baseType: !510)
!509 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !133, line: 122, size: 512, elements: !512)
!512 = !{!513, !514, !515, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !511, file: !133, line: 124, baseType: !492, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !511, file: !133, line: 125, baseType: !492, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !511, file: !133, line: 131, baseType: !516, size: 64, offset: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !133, line: 128, size: 64, elements: !517)
!517 = !{!518, !1789}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !516, file: !133, line: 129, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !509, line: 66, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !396, line: 143, size: 192, elements: !522)
!522 = !{!523, !1787, !1788}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !521, file: !396, line: 145, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !509, line: 69, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !396, line: 136, size: 192, elements: !527)
!527 = !{!528, !1785, !1786}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !526, file: !396, line: 137, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !509, line: 58, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !396, line: 737, size: 768, elements: !532)
!532 = !{!533, !1632, !1642, !1648, !1653, !1658, !1665, !1671, !1677, !1682, !1696, !1701, !1707, !1712, !1722, !1727, !1743, !1750, !1757, !1763, !1768, !1774, !1780}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !531, file: !396, line: 738, baseType: !534, size: 256)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !396, line: 271, size: 256, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !551, !552, !553}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !534, file: !396, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !534, file: !396, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !534, file: !396, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !534, file: !396, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !534, file: !396, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !534, file: !396, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !534, file: !396, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !534, file: !396, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !534, file: !396, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !534, file: !396, line: 312, baseType: !5, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !534, file: !396, line: 316, baseType: !547, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !548, line: 58, baseType: !549)
!548 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !550, line: 44, baseType: !5)
!550 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !534, file: !396, line: 319, baseType: !5, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !534, file: !396, line: 323, baseType: !492, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !534, file: !396, line: 327, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !509, line: 56, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !149, line: 3371, size: 1792, elements: !557)
!557 = !{!558, !591, !597, !610, !629, !640, !645, !652, !658, !671, !679, !717, !925, !953, !970, !971, !976, !985, !991, !996, !1000, !1004, !1283, !1330, !1336, !1342, !1349, !1362, !1376, !1393, !1405, !1427, !1442, !1614}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !556, file: !149, line: 3372, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !149, line: 360, size: 64, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !559, file: !149, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !559, file: !149, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !559, file: !149, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !559, file: !149, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !559, file: !149, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !559, file: !149, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !559, file: !149, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !559, file: !149, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !559, file: !149, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !559, file: !149, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !559, file: !149, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !559, file: !149, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !559, file: !149, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !559, file: !149, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !559, file: !149, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !559, file: !149, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !559, file: !149, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !559, file: !149, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !559, file: !149, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !559, file: !149, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !559, file: !149, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !559, file: !149, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !559, file: !149, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !559, file: !149, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !559, file: !149, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !559, file: !149, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !559, file: !149, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !559, file: !149, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !559, file: !149, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !559, file: !149, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !556, file: !149, line: 3373, baseType: !592, size: 192)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !149, line: 402, size: 192, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !592, file: !149, line: 403, baseType: !559, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !592, file: !149, line: 404, baseType: !554, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !149, line: 405, baseType: !554, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !556, file: !149, line: 3374, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !149, line: 1384, size: 320, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !598, file: !149, line: 1385, baseType: !592, size: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !598, file: !149, line: 1386, baseType: !602, size: 128, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !603, line: 58, baseType: !604)
!603 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 54, size: 128, elements: !605)
!605 = !{!606, !608}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !604, file: !603, line: 56, baseType: !607, size: 64)
!607 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !604, file: !603, line: 57, baseType: !609, size: 64, offset: 64)
!609 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !556, file: !149, line: 3375, baseType: !611, size: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !149, line: 1397, size: 256, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !611, file: !149, line: 1398, baseType: !592, size: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !611, file: !149, line: 1399, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !617, line: 52, size: 256, elements: !618)
!617 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!618 = !{!619, !620, !621, !622, !623, !624, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !616, file: !617, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !616, file: !617, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !616, file: !617, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !616, file: !617, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !616, file: !617, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !616, file: !617, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !616, file: !617, line: 62, baseType: !626, size: 192, offset: 64)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 192, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 3)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !556, file: !149, line: 3376, baseType: !630, size: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !149, line: 1408, size: 256, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !630, file: !149, line: 1409, baseType: !592, size: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !630, file: !149, line: 1410, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !636, line: 27, size: 192, elements: !637)
!636 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !635, file: !636, line: 29, baseType: !602, size: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !635, file: !636, line: 30, baseType: !3, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !556, file: !149, line: 3377, baseType: !641, size: 256)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !149, line: 1437, size: 256, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !641, file: !149, line: 1438, baseType: !592, size: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !641, file: !149, line: 1439, baseType: !554, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !556, file: !149, line: 3378, baseType: !646, size: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !149, line: 1418, size: 256, elements: !647)
!647 = !{!648, !649, !650}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !646, file: !149, line: 1419, baseType: !592, size: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !646, file: !149, line: 1420, baseType: !463, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !646, file: !149, line: 1421, baseType: !651, size: 8, offset: 224)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 8, elements: !483)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !556, file: !149, line: 3379, baseType: !653, size: 320)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !149, line: 1428, size: 320, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !653, file: !149, line: 1429, baseType: !592, size: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !653, file: !149, line: 1430, baseType: !554, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !653, file: !149, line: 1431, baseType: !554, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !556, file: !149, line: 3380, baseType: !659, size: 320)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !149, line: 1460, size: 320, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !659, file: !149, line: 1461, baseType: !592, size: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !659, file: !149, line: 1462, baseType: !663, size: 128, offset: 192)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !664, line: 31, size: 128, elements: !665)
!664 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!665 = !{!666, !669, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !663, file: !664, line: 32, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !663, file: !664, line: 33, baseType: !5, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !663, file: !664, line: 34, baseType: !5, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !556, file: !149, line: 3381, baseType: !672, size: 384)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !149, line: 2507, size: 384, elements: !673)
!673 = !{!674, !675, !676, !677, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !672, file: !149, line: 2508, baseType: !592, size: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !672, file: !149, line: 2509, baseType: !547, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !672, file: !149, line: 2510, baseType: !5, size: 32, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !672, file: !149, line: 2511, baseType: !554, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !672, file: !149, line: 2512, baseType: !554, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !556, file: !149, line: 3382, baseType: !680, size: 896)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !149, line: 2652, size: 896, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !680, file: !149, line: 2653, baseType: !672, size: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !680, file: !149, line: 2654, baseType: !554, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !680, file: !149, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !680, file: !149, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !680, file: !149, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !680, file: !149, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !680, file: !149, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !680, file: !149, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !680, file: !149, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !680, file: !149, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !680, file: !149, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !680, file: !149, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !680, file: !149, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !680, file: !149, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !680, file: !149, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !680, file: !149, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !680, file: !149, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !680, file: !149, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !680, file: !149, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !680, file: !149, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !680, file: !149, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !680, file: !149, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !680, file: !149, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !680, file: !149, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !680, file: !149, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !680, file: !149, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !680, file: !149, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !680, file: !149, line: 2703, baseType: !5, size: 32, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !680, file: !149, line: 2705, baseType: !554, size: 64, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !680, file: !149, line: 2706, baseType: !554, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !680, file: !149, line: 2707, baseType: !554, size: 64, offset: 704)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !680, file: !149, line: 2708, baseType: !554, size: 64, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !680, file: !149, line: 2711, baseType: !715, size: 64, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !149, line: 2711, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !556, file: !149, line: 3383, baseType: !718, size: 960)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !149, line: 2756, size: 960, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !718, file: !149, line: 2757, baseType: !680, size: 896)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !718, file: !149, line: 2758, baseType: !722, size: 64, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !509, line: 50, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !725, line: 240, size: 384, elements: !726)
!725 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !724, file: !725, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !724, file: !725, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !724, file: !725, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !724, file: !725, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !724, file: !725, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !724, file: !725, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !724, file: !725, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !724, file: !725, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !724, file: !725, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !724, file: !725, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !724, file: !725, line: 321, baseType: !738, size: 320, offset: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !725, line: 315, size: 320, elements: !739)
!739 = !{!740, !858, !860, !923, !924}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !738, file: !725, line: 316, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 64, elements: !483)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !725, line: 183, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !725, line: 166, size: 64, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !757, !758, !770, !773, !833, !834, !835, !848, !855}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !743, file: !725, line: 168, baseType: !463, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !743, file: !725, line: 169, baseType: !5, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !743, file: !725, line: 170, baseType: !468, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !743, file: !725, line: 171, baseType: !722, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !743, file: !725, line: 172, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !509, line: 53, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !725, line: 359, size: 128, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !752, file: !725, line: 360, baseType: !463, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !752, file: !725, line: 361, baseType: !756, size: 64, offset: 64)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 64, elements: !483)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !743, file: !725, line: 173, baseType: !3, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !743, file: !725, line: 174, baseType: !759, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !725, line: 133, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !725, line: 115, size: 32, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !760, file: !725, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !760, file: !725, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !760, file: !725, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !760, file: !725, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !760, file: !725, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !760, file: !725, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !760, file: !725, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !760, file: !725, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !743, file: !725, line: 175, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !725, line: 175, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !743, file: !725, line: 176, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !776, line: 75, size: 256, elements: !777)
!776 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!777 = !{!778, !792, !793, !794}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !775, file: !776, line: 76, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !776, line: 68, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !776, line: 63, size: 320, elements: !782)
!782 = !{!783, !785, !786, !787}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !776, line: 64, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !781, file: !776, line: 65, baseType: !784, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !781, file: !776, line: 66, baseType: !5, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !781, file: !776, line: 67, baseType: !788, size: 128, offset: 192)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 128, elements: !790)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !776, line: 29, baseType: !607)
!790 = !{!791}
!791 = !DISubrange(count: 2)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !775, file: !776, line: 77, baseType: !779, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !775, file: !776, line: 78, baseType: !5, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !775, file: !776, line: 79, baseType: !795, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !776, line: 49, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !776, line: 45, size: 832, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !797, file: !776, line: 46, baseType: !784, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !797, file: !776, line: 47, baseType: !774, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !797, file: !776, line: 48, baseType: !802, size: 704, offset: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !803, line: 164, size: 704, elements: !804)
!803 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!804 = !{!805, !806, !816, !817, !818, !819, !820, !821, !825, !829, !830, !831, !832}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !802, file: !803, line: 166, baseType: !609, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !802, file: !803, line: 167, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !803, line: 157, size: 192, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !808, file: !803, line: 159, baseType: !465, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !808, file: !803, line: 160, baseType: !807, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !808, file: !803, line: 161, baseType: !813, size: 32, offset: 128)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 32, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 4)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !802, file: !803, line: 168, baseType: !465, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !802, file: !803, line: 169, baseType: !465, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !802, file: !803, line: 170, baseType: !465, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !802, file: !803, line: 171, baseType: !609, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !802, file: !803, line: 172, baseType: !463, size: 32, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !802, file: !803, line: 176, baseType: !822, size: 64, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!807, !467, !609}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !802, file: !803, line: 177, baseType: !826, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !467, !807}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !802, file: !803, line: 178, baseType: !467, size: 64, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !802, file: !803, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !802, file: !803, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !802, file: !803, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !743, file: !725, line: 177, baseType: !554, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !743, file: !725, line: 178, baseType: !492, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !743, file: !725, line: 179, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !725, line: 150, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !725, line: 142, size: 320, elements: !839)
!839 = !{!840, !841, !842, !843, !846, !847}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !838, file: !725, line: 144, baseType: !554, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !838, file: !725, line: 145, baseType: !722, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !838, file: !725, line: 146, baseType: !722, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !838, file: !725, line: 147, baseType: !844, size: 32, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !845, line: 31, baseType: !463)
!845 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!846 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !838, file: !725, line: 148, baseType: !5, size: 32, offset: 224)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !838, file: !725, line: 149, baseType: !462, size: 8, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !743, file: !725, line: 180, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !725, line: 162, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !725, line: 159, size: 128, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !851, file: !725, line: 160, baseType: !554, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !851, file: !725, line: 161, baseType: !609, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !743, file: !725, line: 181, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !725, line: 181, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !738, file: !725, line: 317, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 64, elements: !483)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !738, file: !725, line: 318, baseType: !861, size: 320)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !725, line: 188, size: 320, elements: !862)
!862 = !{!863, !865, !922}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !861, file: !725, line: 190, baseType: !864, size: 192)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 192, elements: !627)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !861, file: !725, line: 193, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !725, line: 206, size: 320, elements: !868)
!868 = !{!869, !907, !908, !909, !921}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !867, file: !725, line: 208, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !509, line: 62, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !873, line: 538, size: 256, elements: !874)
!873 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!874 = !{!875, !879, !885, !898}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !872, file: !873, line: 539, baseType: !876, size: 32)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !873, line: 482, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !873, line: 484, baseType: !5, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !872, file: !873, line: 540, baseType: !880, size: 192)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !873, line: 488, size: 192, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !880, file: !873, line: 489, baseType: !876, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !873, line: 492, baseType: !468, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !880, file: !873, line: 496, baseType: !554, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !872, file: !873, line: 541, baseType: !886, size: 256)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !873, line: 504, size: 256, elements: !887)
!887 = !{!888, !889, !896, !897}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !886, file: !873, line: 505, baseType: !876, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !886, file: !873, line: 509, baseType: !890, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !873, line: 501, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !886, file: !873, line: 510, baseType: !894, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !873, line: 513, baseType: !870, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !872, file: !873, line: 542, baseType: !899, size: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !873, line: 530, size: 128, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !899, file: !873, line: 531, baseType: !876, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !899, file: !873, line: 534, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !873, line: 525, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!462, !554, !468, !607, !607}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !867, file: !725, line: 211, baseType: !5, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !867, file: !725, line: 214, baseType: !609, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !867, file: !725, line: 224, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !725, line: 202, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !725, line: 202, size: 128, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !912, file: !725, line: 202, baseType: !915, size: 128)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !725, line: 200, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !725, line: 200, size: 128, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !916, file: !725, line: 200, baseType: !5, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !916, file: !725, line: 200, baseType: !5, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !916, file: !725, line: 200, baseType: !756, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !867, file: !725, line: 234, baseType: !910, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !861, file: !725, line: 197, baseType: !609, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !738, file: !725, line: 319, baseType: !616, size: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !738, file: !725, line: 320, baseType: !635, size: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !556, file: !149, line: 3384, baseType: !926, size: 1472)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !149, line: 3114, size: 1472, elements: !927)
!927 = !{!928, !949, !950, !951, !952}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !926, file: !149, line: 3115, baseType: !929, size: 1216)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !149, line: 2984, size: 1216, elements: !930)
!930 = !{!931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !929, file: !149, line: 2985, baseType: !718, size: 960)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !929, file: !149, line: 2986, baseType: !554, size: 64, offset: 960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !929, file: !149, line: 2987, baseType: !554, size: 64, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !929, file: !149, line: 2988, baseType: !554, size: 64, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !929, file: !149, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !929, file: !149, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !929, file: !149, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !929, file: !149, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !929, file: !149, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !929, file: !149, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !929, file: !149, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !929, file: !149, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !929, file: !149, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !929, file: !149, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !929, file: !149, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !929, file: !149, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !929, file: !149, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !929, file: !149, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !926, file: !149, line: 3117, baseType: !554, size: 64, offset: 1216)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !926, file: !149, line: 3119, baseType: !554, size: 64, offset: 1280)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !926, file: !149, line: 3121, baseType: !554, size: 64, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !926, file: !149, line: 3123, baseType: !554, size: 64, offset: 1408)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !556, file: !149, line: 3385, baseType: !954, size: 1088)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !149, line: 2874, size: 1088, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !954, file: !149, line: 2875, baseType: !718, size: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !954, file: !149, line: 2876, baseType: !722, size: 64, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !954, file: !149, line: 2877, baseType: !959, size: 64, offset: 1024)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !961, line: 172, size: 128, elements: !962)
!961 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!962 = !{!963, !964, !965, !966, !967, !968, !969}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !960, file: !961, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !960, file: !961, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !960, file: !961, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !960, file: !961, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !960, file: !961, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !960, file: !961, line: 195, baseType: !5, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !960, file: !961, line: 199, baseType: !554, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !556, file: !149, line: 3386, baseType: !929, size: 1216)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !556, file: !149, line: 3387, baseType: !972, size: 1280)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !149, line: 3093, size: 1280, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !972, file: !149, line: 3094, baseType: !929, size: 1216)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !972, file: !149, line: 3095, baseType: !959, size: 64, offset: 1216)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !556, file: !149, line: 3388, baseType: !977, size: 1216)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !149, line: 2824, size: 1216, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !977, file: !149, line: 2825, baseType: !680, size: 896)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !977, file: !149, line: 2827, baseType: !554, size: 64, offset: 896)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !977, file: !149, line: 2828, baseType: !554, size: 64, offset: 960)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !977, file: !149, line: 2829, baseType: !554, size: 64, offset: 1024)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !977, file: !149, line: 2830, baseType: !554, size: 64, offset: 1088)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !977, file: !149, line: 2831, baseType: !554, size: 64, offset: 1152)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !556, file: !149, line: 3389, baseType: !986, size: 1024)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !149, line: 2850, size: 1024, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !986, file: !149, line: 2851, baseType: !718, size: 960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !986, file: !149, line: 2852, baseType: !463, size: 32, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !986, file: !149, line: 2853, baseType: !463, size: 32, offset: 992)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !556, file: !149, line: 3390, baseType: !992, size: 1024)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !149, line: 2857, size: 1024, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !992, file: !149, line: 2858, baseType: !718, size: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !992, file: !149, line: 2859, baseType: !959, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !556, file: !149, line: 3391, baseType: !997, size: 960)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !149, line: 2862, size: 960, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !997, file: !149, line: 2863, baseType: !718, size: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !556, file: !149, line: 3392, baseType: !1001, size: 1472)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !149, line: 3304, size: 1472, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1001, file: !149, line: 3305, baseType: !926, size: 1472)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !556, file: !149, line: 3393, baseType: !1005, size: 1792)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !149, line: 3248, size: 1792, elements: !1006)
!1006 = !{!1007, !1008, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1005, file: !149, line: 3249, baseType: !926, size: 1472)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1005, file: !149, line: 3251, baseType: !1009, size: 64, offset: 1472)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1011, line: 463, size: 1152, elements: !1012)
!1011 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1012 = !{!1013, !1016, !1047, !1048, !1186, !1206, !1207, !1208, !1209, !1210, !1211, !1235, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1010, file: !1011, line: 464, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1011, line: 464, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1010, file: !1011, line: 467, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !133, line: 374, size: 640, elements: !1019)
!1019 = !{!1020, !1022, !1023, !1036, !1037, !1038, !1039, !1040, !1041, !1043, !1045, !1046}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1018, file: !133, line: 377, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !509, line: 111, baseType: !492)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1018, file: !133, line: 378, baseType: !1021, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1018, file: !133, line: 381, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !133, line: 282, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !133, line: 282, size: 128, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1026, file: !133, line: 282, baseType: !1029, size: 128)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !133, line: 281, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !133, line: 281, size: 128, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1030, file: !133, line: 281, baseType: !5, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1030, file: !133, line: 281, baseType: !5, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1030, file: !133, line: 281, baseType: !1035, size: 64, offset: 64)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 64, elements: !483)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1018, file: !133, line: 384, baseType: !463, size: 32, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1018, file: !133, line: 387, baseType: !463, size: 32, offset: 224)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1018, file: !133, line: 390, baseType: !463, size: 32, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1018, file: !133, line: 394, baseType: !1024, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1018, file: !133, line: 396, baseType: !132, size: 32, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1018, file: !133, line: 399, baseType: !1042, size: 64, offset: 416)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !790)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1018, file: !133, line: 402, baseType: !1044, size: 64, offset: 480)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !790)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1018, file: !133, line: 406, baseType: !463, size: 32, offset: 544)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1018, file: !133, line: 409, baseType: !463, size: 32, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1010, file: !1011, line: 470, baseType: !520, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1010, file: !1011, line: 473, baseType: !1049, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !961, line: 39, size: 1152, elements: !1051)
!1051 = !{!1052, !1102, !1115, !1128, !1129, !1141, !1142, !1146, !1147, !1148, !1149, !1150}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1050, file: !961, line: 41, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1054, line: 144, baseType: !1055)
!1054 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1054, line: 100, size: 896, elements: !1057)
!1057 = !{!1058, !1064, !1069, !1074, !1076, !1079, !1080, !1081, !1082, !1083, !1088, !1090, !1091, !1096, !1101}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1056, file: !1054, line: 102, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1054, line: 52, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!1063, !894}
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1054, line: 47, baseType: !5)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1056, file: !1054, line: 105, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1054, line: 59, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!463, !894, !894}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1056, file: !1054, line: 108, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1054, line: 63, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !467}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1056, file: !1054, line: 111, baseType: !1075, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1056, file: !1054, line: 114, baseType: !1077, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1078, line: 46, baseType: !607)
!1078 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1056, file: !1054, line: 117, baseType: !1077, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1056, file: !1054, line: 120, baseType: !1077, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1056, file: !1054, line: 124, baseType: !5, size: 32, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1056, file: !1054, line: 128, baseType: !5, size: 32, offset: 480)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1056, file: !1054, line: 131, baseType: !1084, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1054, line: 75, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!467, !1077, !1077}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1056, file: !1054, line: 132, baseType: !1089, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1054, line: 78, baseType: !1071)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1056, file: !1054, line: 135, baseType: !467, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1056, file: !1054, line: 136, baseType: !1092, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1054, line: 82, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!467, !467, !1077, !1077}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1056, file: !1054, line: 137, baseType: !1097, size: 64, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1054, line: 83, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !467, !467}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1056, file: !1054, line: 141, baseType: !5, size: 32, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1050, file: !961, line: 48, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !396, line: 35, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !396, line: 35, size: 128, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1105, file: !396, line: 35, baseType: !1108, size: 128)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !396, line: 33, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !396, line: 33, size: 128, elements: !1110)
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1109, file: !396, line: 33, baseType: !5, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1109, file: !396, line: 33, baseType: !5, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1109, file: !396, line: 33, baseType: !1114, size: 64, offset: 64)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 64, elements: !483)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1050, file: !961, line: 51, baseType: !1116, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !149, line: 183, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !149, line: 183, size: 128, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1118, file: !149, line: 183, baseType: !1121, size: 128)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !149, line: 182, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !149, line: 182, size: 128, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1122, file: !149, line: 182, baseType: !5, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1122, file: !149, line: 182, baseType: !5, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1122, file: !149, line: 182, baseType: !1127, size: 64, offset: 64)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 64, elements: !483)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1050, file: !961, line: 54, baseType: !554, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1050, file: !961, line: 57, baseType: !1130, size: 128, offset: 256)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1131, line: 31, size: 128, elements: !1132)
!1131 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1130, file: !1131, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1130, file: !1131, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1130, file: !1131, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1130, file: !1131, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1130, file: !1131, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1130, file: !1131, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1130, file: !1131, line: 56, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !509, line: 47, baseType: !774)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1050, file: !961, line: 60, baseType: !1130, size: 128, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1050, file: !961, line: 64, baseType: !1143, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1145, line: 33, flags: DIFlagFwdDecl)
!1145 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1050, file: !961, line: 67, baseType: !554, size: 64, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1050, file: !961, line: 73, baseType: !1053, size: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1050, file: !961, line: 77, baseType: !1140, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1050, file: !961, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1050, file: !961, line: 82, baseType: !1151, size: 320, offset: 832)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !389, line: 62, size: 320, elements: !1152)
!1152 = !{!1153, !1159, !1160, !1161, !1162, !1169}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1151, file: !389, line: 63, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !389, line: 56, size: 128, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1155, file: !389, line: 57, baseType: !1154, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1155, file: !389, line: 58, baseType: !651, size: 8, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1151, file: !389, line: 64, baseType: !5, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1151, file: !389, line: 66, baseType: !5, size: 32, offset: 96)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1151, file: !389, line: 68, baseType: !462, size: 8, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1151, file: !389, line: 70, baseType: !1163, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !389, line: 37, size: 128, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !389, line: 39, baseType: !1163, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1164, file: !389, line: 40, baseType: !1168, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1151, file: !389, line: 71, baseType: !1170, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !389, line: 45, size: 320, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !389, line: 47, baseType: !1170, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1171, file: !389, line: 48, baseType: !1175, size: 256, offset: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !149, line: 1883, size: 256, elements: !1176)
!1176 = !{!1177, !1179, !1180, !1185}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1175, file: !149, line: 1884, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1175, file: !149, line: 1885, baseType: !1178, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1175, file: !149, line: 1891, baseType: !1181, size: 64, offset: 128)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !149, line: 1891, size: 64, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1181, file: !149, line: 1891, baseType: !529, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1181, file: !149, line: 1891, baseType: !554, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1175, file: !149, line: 1892, baseType: !1168, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1010, file: !1011, line: 476, baseType: !1187, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !376, line: 187, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1204, !1205}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1188, file: !376, line: 189, baseType: !463, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1188, file: !376, line: 192, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !376, line: 87, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !376, line: 87, size: 128, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1194, file: !376, line: 87, baseType: !1197, size: 128)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !376, line: 85, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !376, line: 85, size: 128, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1198, file: !376, line: 85, baseType: !5, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1198, file: !376, line: 85, baseType: !5, size: 32, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1198, file: !376, line: 85, baseType: !1203, size: 64, offset: 64)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 64, elements: !483)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1188, file: !376, line: 197, baseType: !1053, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1188, file: !376, line: 200, baseType: !486, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1010, file: !1011, line: 479, baseType: !1053, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1010, file: !1011, line: 484, baseType: !554, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1010, file: !1011, line: 488, baseType: !554, size: 64, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1010, file: !1011, line: 493, baseType: !554, size: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1010, file: !1011, line: 496, baseType: !554, size: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1010, file: !1011, line: 501, baseType: !1212, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !144, line: 2355, size: 576, elements: !1214)
!1214 = !{!1215, !1218, !1219, !1220, !1221, !1223, !1224, !1229, !1230, !1231, !1232, !1233, !1234}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1213, file: !144, line: 2356, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !144, line: 2356, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1213, file: !144, line: 2357, baseType: !468, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1213, file: !144, line: 2358, baseType: !463, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1213, file: !144, line: 2359, baseType: !463, size: 32, offset: 160)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1213, file: !144, line: 2360, baseType: !1222, size: 128, offset: 192)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 128, elements: !814)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1213, file: !144, line: 2364, baseType: !463, size: 32, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1213, file: !144, line: 2367, baseType: !1225, size: 128, offset: 384)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !144, line: 2349, size: 128, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1225, file: !144, line: 2351, baseType: !722, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1225, file: !144, line: 2352, baseType: !609, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1213, file: !144, line: 2371, baseType: !143, size: 32, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1213, file: !144, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1213, file: !144, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1213, file: !144, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1213, file: !144, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1213, file: !144, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1010, file: !1011, line: 504, baseType: !1236, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1011, line: 504, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1010, file: !1011, line: 507, baseType: !1053, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1010, file: !1011, line: 510, baseType: !463, size: 32, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1010, file: !1011, line: 513, baseType: !463, size: 32, offset: 864)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1010, file: !1011, line: 516, baseType: !547, size: 32, offset: 896)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1010, file: !1011, line: 519, baseType: !547, size: 32, offset: 928)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1010, file: !1011, line: 522, baseType: !5, size: 32, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1010, file: !1011, line: 523, baseType: !5, size: 32, offset: 992)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1010, file: !1011, line: 528, baseType: !468, size: 64, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1010, file: !1011, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1010, file: !1011, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1010, file: !1011, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1010, file: !1011, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1010, file: !1011, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1010, file: !1011, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1010, file: !1011, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1010, file: !1011, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1010, file: !1011, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1010, file: !1011, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1010, file: !1011, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1010, file: !1011, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1010, file: !1011, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1010, file: !1011, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1010, file: !1011, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1010, file: !1011, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1005, file: !149, line: 3254, baseType: !554, size: 64, offset: 1536)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1005, file: !149, line: 3257, baseType: !554, size: 64, offset: 1600)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1005, file: !149, line: 3258, baseType: !554, size: 64, offset: 1664)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1005, file: !149, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1005, file: !149, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1005, file: !149, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1005, file: !149, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1005, file: !149, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1005, file: !149, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1005, file: !149, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1005, file: !149, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1005, file: !149, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1005, file: !149, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1005, file: !149, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1005, file: !149, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1005, file: !149, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1005, file: !149, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1005, file: !149, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1005, file: !149, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1005, file: !149, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1005, file: !149, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !149, line: 3394, baseType: !1284, size: 1344)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !149, line: 2279, size: 1344, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1284, file: !149, line: 2280, baseType: !592, size: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1284, file: !149, line: 2281, baseType: !554, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1284, file: !149, line: 2282, baseType: !554, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1284, file: !149, line: 2283, baseType: !554, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1284, file: !149, line: 2284, baseType: !554, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1284, file: !149, line: 2285, baseType: !5, size: 32, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1284, file: !149, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1284, file: !149, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1284, file: !149, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1284, file: !149, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1284, file: !149, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1284, file: !149, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1284, file: !149, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1284, file: !149, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1284, file: !149, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1284, file: !149, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1284, file: !149, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1284, file: !149, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1284, file: !149, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1284, file: !149, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1284, file: !149, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1284, file: !149, line: 2305, baseType: !5, size: 32, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1284, file: !149, line: 2306, baseType: !844, size: 32, offset: 544)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1284, file: !149, line: 2307, baseType: !554, size: 64, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1284, file: !149, line: 2308, baseType: !554, size: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1284, file: !149, line: 2314, baseType: !1312, size: 64, offset: 704)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !149, line: 2309, size: 64, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1312, file: !149, line: 2310, baseType: !463, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1312, file: !149, line: 2311, baseType: !468, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1312, file: !149, line: 2312, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !149, line: 2277, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1284, file: !149, line: 2315, baseType: !554, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1284, file: !149, line: 2316, baseType: !554, size: 64, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1284, file: !149, line: 2317, baseType: !554, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1284, file: !149, line: 2318, baseType: !554, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1284, file: !149, line: 2319, baseType: !554, size: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1284, file: !149, line: 2320, baseType: !554, size: 64, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1284, file: !149, line: 2321, baseType: !554, size: 64, offset: 1152)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1284, file: !149, line: 2322, baseType: !554, size: 64, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1284, file: !149, line: 2324, baseType: !1328, size: 64, offset: 1280)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !149, line: 2324, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !556, file: !149, line: 3395, baseType: !1331, size: 320)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !149, line: 1469, size: 320, elements: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1331, file: !149, line: 1470, baseType: !592, size: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1331, file: !149, line: 1471, baseType: !554, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1331, file: !149, line: 1472, baseType: !554, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !556, file: !149, line: 3396, baseType: !1337, size: 320)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !149, line: 1482, size: 320, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1337, file: !149, line: 1483, baseType: !592, size: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1337, file: !149, line: 1484, baseType: !463, size: 32, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1337, file: !149, line: 1485, baseType: !1127, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !556, file: !149, line: 3397, baseType: !1343, size: 384)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !149, line: 1829, size: 384, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1343, file: !149, line: 1830, baseType: !592, size: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1343, file: !149, line: 1831, baseType: !547, size: 32, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1343, file: !149, line: 1832, baseType: !554, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1343, file: !149, line: 1835, baseType: !1127, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !556, file: !149, line: 3398, baseType: !1350, size: 704)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !149, line: 1898, size: 704, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1361}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1350, file: !149, line: 1899, baseType: !592, size: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1350, file: !149, line: 1902, baseType: !554, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1350, file: !149, line: 1905, baseType: !529, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1350, file: !149, line: 1908, baseType: !5, size: 32, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1350, file: !149, line: 1911, baseType: !1357, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !961, line: 117, size: 128, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1358, file: !961, line: 120, baseType: !1130, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1350, file: !149, line: 1914, baseType: !1175, size: 256, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !556, file: !149, line: 3399, baseType: !1363, size: 704)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !149, line: 2008, size: 704, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1363, file: !149, line: 2009, baseType: !592, size: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1363, file: !149, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1363, file: !149, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1363, file: !149, line: 2014, baseType: !547, size: 32, offset: 224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1363, file: !149, line: 2016, baseType: !554, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1363, file: !149, line: 2017, baseType: !1116, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1363, file: !149, line: 2019, baseType: !554, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1363, file: !149, line: 2020, baseType: !554, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1363, file: !149, line: 2021, baseType: !554, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1363, file: !149, line: 2022, baseType: !554, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1363, file: !149, line: 2023, baseType: !554, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !556, file: !149, line: 3400, baseType: !1377, size: 832)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !149, line: 2430, size: 832, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1377, file: !149, line: 2431, baseType: !592, size: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1377, file: !149, line: 2433, baseType: !554, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1377, file: !149, line: 2434, baseType: !554, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1377, file: !149, line: 2435, baseType: !554, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1377, file: !149, line: 2436, baseType: !554, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1377, file: !149, line: 2437, baseType: !1116, size: 64, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1377, file: !149, line: 2438, baseType: !554, size: 64, offset: 512)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1377, file: !149, line: 2440, baseType: !554, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1377, file: !149, line: 2441, baseType: !554, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1377, file: !149, line: 2443, baseType: !1389, size: 128, offset: 704)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !149, line: 182, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !149, line: 182, size: 128, elements: !1391)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1390, file: !149, line: 182, baseType: !1121, size: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !556, file: !149, line: 3401, baseType: !1394, size: 320)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !149, line: 3327, size: 320, elements: !1395)
!1395 = !{!1396, !1397, !1404}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1394, file: !149, line: 3329, baseType: !592, size: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1394, file: !149, line: 3330, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !149, line: 3320, size: 192, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1399, file: !149, line: 3322, baseType: !1398, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1399, file: !149, line: 3323, baseType: !1398, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1399, file: !149, line: 3324, baseType: !554, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1394, file: !149, line: 3331, baseType: !1398, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !556, file: !149, line: 3402, baseType: !1406, size: 256)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !149, line: 1540, size: 256, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1406, file: !149, line: 1541, baseType: !592, size: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1406, file: !149, line: 1542, baseType: !1410, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !149, line: 1538, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !149, line: 1538, size: 192, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1412, file: !149, line: 1538, baseType: !1415, size: 192)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !149, line: 1537, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !149, line: 1537, size: 192, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1416, file: !149, line: 1537, baseType: !5, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1416, file: !149, line: 1537, baseType: !5, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1416, file: !149, line: 1537, baseType: !1421, size: 128, offset: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 128, elements: !483)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !149, line: 1535, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !149, line: 1532, size: 128, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1423, file: !149, line: 1533, baseType: !554, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1423, file: !149, line: 1534, baseType: !554, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !556, file: !149, line: 3403, baseType: !1428, size: 512)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !149, line: 1938, size: 512, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1439, !1440, !1441}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !149, line: 1939, baseType: !592, size: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1428, file: !149, line: 1940, baseType: !547, size: 32, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1428, file: !149, line: 1941, baseType: !148, size: 32, offset: 224)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1428, file: !149, line: 1946, baseType: !1434, size: 32, offset: 256)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !149, line: 1942, size: 32, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1434, file: !149, line: 1943, baseType: !167, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1434, file: !149, line: 1944, baseType: !174, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1434, file: !149, line: 1945, baseType: !181, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1428, file: !149, line: 1950, baseType: !519, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1428, file: !149, line: 1951, baseType: !519, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1428, file: !149, line: 1953, baseType: !1127, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !556, file: !149, line: 3404, baseType: !1443, size: 1664)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !149, line: 3337, size: 1664, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1443, file: !149, line: 3338, baseType: !592, size: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1443, file: !149, line: 3341, baseType: !1447, size: 1472, offset: 192)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1448, line: 410, size: 1472, elements: !1449)
!1448 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1447, file: !1448, line: 412, baseType: !463, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1447, file: !1448, line: 413, baseType: !463, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1447, file: !1448, line: 414, baseType: !463, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1447, file: !1448, line: 415, baseType: !463, size: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1447, file: !1448, line: 416, baseType: !463, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1447, file: !1448, line: 417, baseType: !463, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1447, file: !1448, line: 418, baseType: !462, size: 8, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1447, file: !1448, line: 419, baseType: !462, size: 8, offset: 200)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1447, file: !1448, line: 420, baseType: !1459, size: 8, offset: 208)
!1459 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1447, file: !1448, line: 421, baseType: !1459, size: 8, offset: 216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1447, file: !1448, line: 422, baseType: !1459, size: 8, offset: 224)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1447, file: !1448, line: 423, baseType: !1459, size: 8, offset: 232)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1447, file: !1448, line: 424, baseType: !1459, size: 8, offset: 240)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1447, file: !1448, line: 425, baseType: !1459, size: 8, offset: 248)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1447, file: !1448, line: 426, baseType: !1459, size: 8, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1447, file: !1448, line: 427, baseType: !1459, size: 8, offset: 264)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1447, file: !1448, line: 428, baseType: !1459, size: 8, offset: 272)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1447, file: !1448, line: 429, baseType: !1459, size: 8, offset: 280)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1447, file: !1448, line: 430, baseType: !1459, size: 8, offset: 288)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1447, file: !1448, line: 431, baseType: !1459, size: 8, offset: 296)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1447, file: !1448, line: 432, baseType: !1459, size: 8, offset: 304)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1447, file: !1448, line: 433, baseType: !1459, size: 8, offset: 312)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1447, file: !1448, line: 434, baseType: !1459, size: 8, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1447, file: !1448, line: 435, baseType: !1459, size: 8, offset: 328)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1447, file: !1448, line: 436, baseType: !1459, size: 8, offset: 336)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1447, file: !1448, line: 437, baseType: !1459, size: 8, offset: 344)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1447, file: !1448, line: 438, baseType: !1459, size: 8, offset: 352)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1447, file: !1448, line: 439, baseType: !1459, size: 8, offset: 360)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1447, file: !1448, line: 440, baseType: !1459, size: 8, offset: 368)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1447, file: !1448, line: 441, baseType: !1459, size: 8, offset: 376)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1447, file: !1448, line: 442, baseType: !1459, size: 8, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1447, file: !1448, line: 443, baseType: !1459, size: 8, offset: 392)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1447, file: !1448, line: 444, baseType: !1459, size: 8, offset: 400)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1447, file: !1448, line: 445, baseType: !1459, size: 8, offset: 408)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1447, file: !1448, line: 446, baseType: !1459, size: 8, offset: 416)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1447, file: !1448, line: 447, baseType: !1459, size: 8, offset: 424)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1447, file: !1448, line: 448, baseType: !1459, size: 8, offset: 432)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1447, file: !1448, line: 449, baseType: !1459, size: 8, offset: 440)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1447, file: !1448, line: 450, baseType: !1459, size: 8, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1447, file: !1448, line: 451, baseType: !1459, size: 8, offset: 456)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1447, file: !1448, line: 452, baseType: !1459, size: 8, offset: 464)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1447, file: !1448, line: 453, baseType: !1459, size: 8, offset: 472)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1447, file: !1448, line: 454, baseType: !1459, size: 8, offset: 480)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1447, file: !1448, line: 455, baseType: !1459, size: 8, offset: 488)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1447, file: !1448, line: 456, baseType: !1459, size: 8, offset: 496)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1447, file: !1448, line: 457, baseType: !1459, size: 8, offset: 504)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1447, file: !1448, line: 458, baseType: !1459, size: 8, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1447, file: !1448, line: 459, baseType: !1459, size: 8, offset: 520)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1447, file: !1448, line: 460, baseType: !1459, size: 8, offset: 528)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1447, file: !1448, line: 461, baseType: !1459, size: 8, offset: 536)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1447, file: !1448, line: 462, baseType: !1459, size: 8, offset: 544)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1447, file: !1448, line: 463, baseType: !1459, size: 8, offset: 552)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1447, file: !1448, line: 464, baseType: !1459, size: 8, offset: 560)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1447, file: !1448, line: 465, baseType: !1459, size: 8, offset: 568)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1447, file: !1448, line: 466, baseType: !1459, size: 8, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1447, file: !1448, line: 467, baseType: !1459, size: 8, offset: 584)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1447, file: !1448, line: 468, baseType: !1459, size: 8, offset: 592)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1447, file: !1448, line: 469, baseType: !1459, size: 8, offset: 600)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1447, file: !1448, line: 470, baseType: !1459, size: 8, offset: 608)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1447, file: !1448, line: 471, baseType: !1459, size: 8, offset: 616)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1447, file: !1448, line: 472, baseType: !1459, size: 8, offset: 624)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1447, file: !1448, line: 473, baseType: !1459, size: 8, offset: 632)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1447, file: !1448, line: 474, baseType: !1459, size: 8, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1447, file: !1448, line: 475, baseType: !1459, size: 8, offset: 648)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1447, file: !1448, line: 476, baseType: !1459, size: 8, offset: 656)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1447, file: !1448, line: 477, baseType: !1459, size: 8, offset: 664)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1447, file: !1448, line: 478, baseType: !1459, size: 8, offset: 672)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1447, file: !1448, line: 479, baseType: !1459, size: 8, offset: 680)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1447, file: !1448, line: 480, baseType: !1459, size: 8, offset: 688)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1447, file: !1448, line: 481, baseType: !1459, size: 8, offset: 696)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1447, file: !1448, line: 482, baseType: !1459, size: 8, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1447, file: !1448, line: 483, baseType: !1459, size: 8, offset: 712)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1447, file: !1448, line: 484, baseType: !1459, size: 8, offset: 720)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1447, file: !1448, line: 485, baseType: !1459, size: 8, offset: 728)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1447, file: !1448, line: 486, baseType: !1459, size: 8, offset: 736)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1447, file: !1448, line: 487, baseType: !1459, size: 8, offset: 744)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1447, file: !1448, line: 488, baseType: !1459, size: 8, offset: 752)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1447, file: !1448, line: 489, baseType: !1459, size: 8, offset: 760)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1447, file: !1448, line: 490, baseType: !1459, size: 8, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1447, file: !1448, line: 491, baseType: !1459, size: 8, offset: 776)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1447, file: !1448, line: 492, baseType: !1459, size: 8, offset: 784)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1447, file: !1448, line: 493, baseType: !1459, size: 8, offset: 792)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1447, file: !1448, line: 494, baseType: !1459, size: 8, offset: 800)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1447, file: !1448, line: 495, baseType: !1459, size: 8, offset: 808)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1447, file: !1448, line: 496, baseType: !1459, size: 8, offset: 816)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1447, file: !1448, line: 497, baseType: !1459, size: 8, offset: 824)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1447, file: !1448, line: 498, baseType: !1459, size: 8, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1447, file: !1448, line: 499, baseType: !1459, size: 8, offset: 840)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1447, file: !1448, line: 500, baseType: !1459, size: 8, offset: 848)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1447, file: !1448, line: 501, baseType: !1459, size: 8, offset: 856)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1447, file: !1448, line: 502, baseType: !1459, size: 8, offset: 864)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1447, file: !1448, line: 503, baseType: !1459, size: 8, offset: 872)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1447, file: !1448, line: 504, baseType: !1459, size: 8, offset: 880)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1447, file: !1448, line: 505, baseType: !1459, size: 8, offset: 888)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1447, file: !1448, line: 506, baseType: !1459, size: 8, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1447, file: !1448, line: 507, baseType: !1459, size: 8, offset: 904)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1447, file: !1448, line: 508, baseType: !1459, size: 8, offset: 912)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1447, file: !1448, line: 509, baseType: !1459, size: 8, offset: 920)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1447, file: !1448, line: 510, baseType: !1459, size: 8, offset: 928)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1447, file: !1448, line: 511, baseType: !1459, size: 8, offset: 936)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1447, file: !1448, line: 512, baseType: !1459, size: 8, offset: 944)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1447, file: !1448, line: 513, baseType: !1459, size: 8, offset: 952)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1447, file: !1448, line: 514, baseType: !1459, size: 8, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1447, file: !1448, line: 515, baseType: !1459, size: 8, offset: 968)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1447, file: !1448, line: 516, baseType: !1459, size: 8, offset: 976)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1447, file: !1448, line: 517, baseType: !1459, size: 8, offset: 984)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1447, file: !1448, line: 518, baseType: !1459, size: 8, offset: 992)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1447, file: !1448, line: 519, baseType: !1459, size: 8, offset: 1000)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1447, file: !1448, line: 520, baseType: !1459, size: 8, offset: 1008)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1447, file: !1448, line: 521, baseType: !1459, size: 8, offset: 1016)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1447, file: !1448, line: 522, baseType: !1459, size: 8, offset: 1024)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1447, file: !1448, line: 523, baseType: !1459, size: 8, offset: 1032)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1447, file: !1448, line: 524, baseType: !1459, size: 8, offset: 1040)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1447, file: !1448, line: 525, baseType: !1459, size: 8, offset: 1048)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1447, file: !1448, line: 526, baseType: !1459, size: 8, offset: 1056)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1447, file: !1448, line: 527, baseType: !1459, size: 8, offset: 1064)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1447, file: !1448, line: 528, baseType: !1459, size: 8, offset: 1072)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1447, file: !1448, line: 529, baseType: !1459, size: 8, offset: 1080)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1447, file: !1448, line: 530, baseType: !1459, size: 8, offset: 1088)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1447, file: !1448, line: 531, baseType: !1459, size: 8, offset: 1096)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1447, file: !1448, line: 532, baseType: !1459, size: 8, offset: 1104)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1447, file: !1448, line: 533, baseType: !1459, size: 8, offset: 1112)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1447, file: !1448, line: 534, baseType: !1459, size: 8, offset: 1120)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1447, file: !1448, line: 535, baseType: !1459, size: 8, offset: 1128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1447, file: !1448, line: 536, baseType: !1459, size: 8, offset: 1136)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1447, file: !1448, line: 537, baseType: !1459, size: 8, offset: 1144)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1447, file: !1448, line: 538, baseType: !1459, size: 8, offset: 1152)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1447, file: !1448, line: 539, baseType: !1459, size: 8, offset: 1160)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1447, file: !1448, line: 540, baseType: !1459, size: 8, offset: 1168)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1447, file: !1448, line: 541, baseType: !1459, size: 8, offset: 1176)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1447, file: !1448, line: 542, baseType: !1459, size: 8, offset: 1184)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1447, file: !1448, line: 543, baseType: !1459, size: 8, offset: 1192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1447, file: !1448, line: 544, baseType: !1459, size: 8, offset: 1200)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1447, file: !1448, line: 545, baseType: !1459, size: 8, offset: 1208)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1447, file: !1448, line: 546, baseType: !1459, size: 8, offset: 1216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1447, file: !1448, line: 547, baseType: !1459, size: 8, offset: 1224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1447, file: !1448, line: 548, baseType: !1459, size: 8, offset: 1232)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1447, file: !1448, line: 549, baseType: !1459, size: 8, offset: 1240)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1447, file: !1448, line: 550, baseType: !1459, size: 8, offset: 1248)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1447, file: !1448, line: 551, baseType: !1459, size: 8, offset: 1256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1447, file: !1448, line: 552, baseType: !1459, size: 8, offset: 1264)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1447, file: !1448, line: 553, baseType: !1459, size: 8, offset: 1272)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1447, file: !1448, line: 554, baseType: !1459, size: 8, offset: 1280)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1447, file: !1448, line: 555, baseType: !1459, size: 8, offset: 1288)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1447, file: !1448, line: 556, baseType: !1459, size: 8, offset: 1296)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1447, file: !1448, line: 557, baseType: !1459, size: 8, offset: 1304)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1447, file: !1448, line: 558, baseType: !1459, size: 8, offset: 1312)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1447, file: !1448, line: 559, baseType: !1459, size: 8, offset: 1320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1447, file: !1448, line: 560, baseType: !1459, size: 8, offset: 1328)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1447, file: !1448, line: 561, baseType: !1459, size: 8, offset: 1336)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1447, file: !1448, line: 562, baseType: !1459, size: 8, offset: 1344)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1447, file: !1448, line: 563, baseType: !1459, size: 8, offset: 1352)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1447, file: !1448, line: 564, baseType: !1459, size: 8, offset: 1360)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1447, file: !1448, line: 565, baseType: !1459, size: 8, offset: 1368)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1447, file: !1448, line: 566, baseType: !1459, size: 8, offset: 1376)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1447, file: !1448, line: 567, baseType: !1459, size: 8, offset: 1384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1447, file: !1448, line: 568, baseType: !1459, size: 8, offset: 1392)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1447, file: !1448, line: 569, baseType: !1459, size: 8, offset: 1400)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1447, file: !1448, line: 570, baseType: !1459, size: 8, offset: 1408)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1447, file: !1448, line: 571, baseType: !1459, size: 8, offset: 1416)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1447, file: !1448, line: 572, baseType: !1459, size: 8, offset: 1424)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1447, file: !1448, line: 573, baseType: !1459, size: 8, offset: 1432)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1447, file: !1448, line: 574, baseType: !1459, size: 8, offset: 1440)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !556, file: !149, line: 3405, baseType: !1615, size: 384)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !149, line: 3352, size: 384, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1615, file: !149, line: 3353, baseType: !592, size: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1615, file: !149, line: 3356, baseType: !1619, size: 192, offset: 192)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1448, line: 578, size: 192, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1619, file: !1448, line: 580, baseType: !463, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1619, file: !1448, line: 581, baseType: !463, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1619, file: !1448, line: 582, baseType: !463, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1619, file: !1448, line: 583, baseType: !463, size: 32, offset: 96)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1619, file: !1448, line: 584, baseType: !462, size: 8, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1619, file: !1448, line: 585, baseType: !462, size: 8, offset: 136)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1619, file: !1448, line: 586, baseType: !462, size: 8, offset: 144)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1619, file: !1448, line: 587, baseType: !462, size: 8, offset: 152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1619, file: !1448, line: 588, baseType: !462, size: 8, offset: 160)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1619, file: !1448, line: 589, baseType: !462, size: 8, offset: 168)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1619, file: !1448, line: 590, baseType: !462, size: 8, offset: 176)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !531, file: !396, line: 739, baseType: !1633, size: 448)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !396, line: 350, size: 448, elements: !1634)
!1634 = !{!1635, !1641}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1633, file: !396, line: 353, baseType: !1636, size: 384)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !396, line: 333, size: 384, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1636, file: !396, line: 336, baseType: !534, size: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1636, file: !396, line: 343, baseType: !1163, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1636, file: !396, line: 344, baseType: !1170, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1633, file: !396, line: 359, baseType: !1127, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !531, file: !396, line: 740, baseType: !1643, size: 512)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !396, line: 365, size: 512, elements: !1644)
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1643, file: !396, line: 368, baseType: !1636, size: 384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1643, file: !396, line: 373, baseType: !554, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1643, file: !396, line: 374, baseType: !554, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !531, file: !396, line: 741, baseType: !1649, size: 576)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !396, line: 380, size: 576, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1649, file: !396, line: 383, baseType: !1643, size: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1649, file: !396, line: 389, baseType: !1127, size: 64, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !531, file: !396, line: 742, baseType: !1654, size: 320)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !396, line: 395, size: 320, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1654, file: !396, line: 397, baseType: !534, size: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1654, file: !396, line: 400, baseType: !519, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !531, file: !396, line: 743, baseType: !1659, size: 448)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !396, line: 406, size: 448, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1659, file: !396, line: 408, baseType: !534, size: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1659, file: !396, line: 412, baseType: !554, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1659, file: !396, line: 420, baseType: !554, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1659, file: !396, line: 423, baseType: !519, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !531, file: !396, line: 744, baseType: !1666, size: 384)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !396, line: 429, size: 384, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1666, file: !396, line: 431, baseType: !534, size: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1666, file: !396, line: 434, baseType: !554, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1666, file: !396, line: 437, baseType: !519, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !531, file: !396, line: 745, baseType: !1672, size: 384)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !396, line: 443, size: 384, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1672, file: !396, line: 445, baseType: !534, size: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1672, file: !396, line: 449, baseType: !554, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1672, file: !396, line: 453, baseType: !519, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !531, file: !396, line: 746, baseType: !1678, size: 320)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !396, line: 459, size: 320, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1678, file: !396, line: 461, baseType: !534, size: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1678, file: !396, line: 464, baseType: !554, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !531, file: !396, line: 747, baseType: !1683, size: 768)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !396, line: 469, size: 768, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1683, file: !396, line: 471, baseType: !534, size: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1683, file: !396, line: 474, baseType: !5, size: 32, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1683, file: !396, line: 475, baseType: !5, size: 32, offset: 288)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1683, file: !396, line: 478, baseType: !554, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1683, file: !396, line: 481, baseType: !1690, size: 384, offset: 384)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1691, size: 384, elements: !483)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !149, line: 1917, size: 384, elements: !1692)
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1691, file: !149, line: 1920, baseType: !1175, size: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1691, file: !149, line: 1921, baseType: !554, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1691, file: !149, line: 1922, baseType: !547, size: 32, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !531, file: !396, line: 748, baseType: !1697, size: 320)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !396, line: 487, size: 320, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1697, file: !396, line: 490, baseType: !534, size: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1697, file: !396, line: 494, baseType: !463, size: 32, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !531, file: !396, line: 749, baseType: !1702, size: 384)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !396, line: 500, size: 384, elements: !1703)
!1703 = !{!1704, !1705, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1702, file: !396, line: 502, baseType: !534, size: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1702, file: !396, line: 506, baseType: !519, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1702, file: !396, line: 510, baseType: !519, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !531, file: !396, line: 750, baseType: !1708, size: 320)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !396, line: 529, size: 320, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1708, file: !396, line: 531, baseType: !534, size: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1708, file: !396, line: 540, baseType: !519, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !531, file: !396, line: 751, baseType: !1713, size: 704)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !396, line: 546, size: 704, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1713, file: !396, line: 549, baseType: !1643, size: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1713, file: !396, line: 553, baseType: !468, size: 64, offset: 512)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1713, file: !396, line: 557, baseType: !462, size: 8, offset: 576)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1713, file: !396, line: 558, baseType: !462, size: 8, offset: 584)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1713, file: !396, line: 559, baseType: !462, size: 8, offset: 592)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1713, file: !396, line: 560, baseType: !462, size: 8, offset: 600)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1713, file: !396, line: 566, baseType: !1127, size: 64, offset: 640)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !531, file: !396, line: 752, baseType: !1723, size: 384)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !396, line: 571, size: 384, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1723, file: !396, line: 573, baseType: !1654, size: 320)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1723, file: !396, line: 577, baseType: !554, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !531, file: !396, line: 753, baseType: !1728, size: 576)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !396, line: 600, size: 576, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1742}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1728, file: !396, line: 602, baseType: !1654, size: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1728, file: !396, line: 605, baseType: !554, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1728, file: !396, line: 609, baseType: !1077, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1728, file: !396, line: 612, baseType: !1734, size: 64, offset: 448)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !396, line: 581, size: 320, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1735, file: !396, line: 583, baseType: !181, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1735, file: !396, line: 586, baseType: !554, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1735, file: !396, line: 589, baseType: !554, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1735, file: !396, line: 592, baseType: !554, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1735, file: !396, line: 595, baseType: !554, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1728, file: !396, line: 616, baseType: !519, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !531, file: !396, line: 754, baseType: !1744, size: 512)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !396, line: 622, size: 512, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1744, file: !396, line: 624, baseType: !1654, size: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1744, file: !396, line: 628, baseType: !554, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1744, file: !396, line: 632, baseType: !554, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1744, file: !396, line: 636, baseType: !554, size: 64, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !531, file: !396, line: 755, baseType: !1751, size: 704)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !396, line: 642, size: 704, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1756}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1751, file: !396, line: 644, baseType: !1744, size: 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1751, file: !396, line: 648, baseType: !554, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1751, file: !396, line: 652, baseType: !554, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1751, file: !396, line: 653, baseType: !554, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !531, file: !396, line: 756, baseType: !1758, size: 448)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !396, line: 663, size: 448, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1758, file: !396, line: 665, baseType: !1654, size: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1758, file: !396, line: 668, baseType: !554, size: 64, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1758, file: !396, line: 673, baseType: !554, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !531, file: !396, line: 757, baseType: !1764, size: 384)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !396, line: 694, size: 384, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1764, file: !396, line: 696, baseType: !1654, size: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1764, file: !396, line: 699, baseType: !554, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !531, file: !396, line: 758, baseType: !1769, size: 384)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !396, line: 681, size: 384, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1769, file: !396, line: 683, baseType: !534, size: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1769, file: !396, line: 686, baseType: !554, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1769, file: !396, line: 689, baseType: !554, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !531, file: !396, line: 759, baseType: !1775, size: 384)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !396, line: 707, size: 384, elements: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1775, file: !396, line: 709, baseType: !534, size: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1775, file: !396, line: 712, baseType: !554, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1775, file: !396, line: 712, baseType: !554, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !531, file: !396, line: 760, baseType: !1781, size: 320)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !396, line: 718, size: 320, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1781, file: !396, line: 720, baseType: !534, size: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1781, file: !396, line: 723, baseType: !554, size: 64, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !526, file: !396, line: 138, baseType: !525, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !396, line: 139, baseType: !525, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !521, file: !396, line: 146, baseType: !524, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !521, file: !396, line: 152, baseType: !519, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !516, file: !133, line: 130, baseType: !722, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !511, file: !133, line: 134, baseType: !467, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !511, file: !133, line: 137, baseType: !554, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !511, file: !133, line: 138, baseType: !547, size: 32, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !511, file: !133, line: 142, baseType: !5, size: 32, offset: 352)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !133, line: 144, baseType: !463, size: 32, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !511, file: !133, line: 145, baseType: !463, size: 32, offset: 416)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !133, line: 146, baseType: !1797, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !133, line: 119, baseType: !609)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !493, file: !133, line: 220, baseType: !496, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !493, file: !133, line: 223, baseType: !467, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !493, file: !133, line: 226, baseType: !486, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !493, file: !133, line: 229, baseType: !1802, size: 128, offset: 256)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1803, size: 128, elements: !790)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !133, line: 229, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !493, file: !133, line: 232, baseType: !492, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !493, file: !133, line: 233, baseType: !492, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !493, file: !133, line: 238, baseType: !1808, size: 64, offset: 512)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !133, line: 235, size: 64, elements: !1809)
!1809 = !{!1810, !1816}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1808, file: !133, line: 236, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !133, line: 273, size: 128, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1812, file: !133, line: 275, baseType: !519, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1812, file: !133, line: 278, baseType: !519, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1808, file: !133, line: 237, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !133, line: 259, size: 320, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1823, !1824}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1818, file: !133, line: 261, baseType: !722, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1818, file: !133, line: 262, baseType: !722, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1818, file: !133, line: 266, baseType: !722, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1818, file: !133, line: 267, baseType: !722, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1818, file: !133, line: 270, baseType: !463, size: 32, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !493, file: !133, line: 241, baseType: !1797, size: 64, offset: 576)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !493, file: !133, line: 244, baseType: !463, size: 32, offset: 640)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !493, file: !133, line: 247, baseType: !463, size: 32, offset: 672)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !493, file: !133, line: 250, baseType: !463, size: 32, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !493, file: !133, line: 253, baseType: !463, size: 32, offset: 736)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !133, line: 256, baseType: !463, size: 32, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !487, file: !376, line: 111, baseType: !492, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !487, file: !376, line: 114, baseType: !1833, size: 64, offset: 192)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !376, line: 41, size: 64, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1833, file: !376, line: 42, baseType: !375, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1833, file: !376, line: 43, baseType: !5, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !487, file: !376, line: 117, baseType: !5, size: 32, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !487, file: !376, line: 120, baseType: !5, size: 32, offset: 288)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !487, file: !376, line: 123, baseType: !1192, size: 64, offset: 320)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !487, file: !376, line: 126, baseType: !486, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !376, line: 129, baseType: !486, size: 64, offset: 448)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !487, file: !376, line: 132, baseType: !467, size: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !487, file: !376, line: 139, baseType: !554, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !487, file: !376, line: 143, baseType: !602, size: 128, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !487, file: !376, line: 146, baseType: !602, size: 128, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !487, file: !376, line: 148, baseType: !462, size: 8, offset: 896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !487, file: !376, line: 149, baseType: !462, size: 8, offset: 904)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !487, file: !376, line: 153, baseType: !384, size: 32, offset: 928)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !487, file: !376, line: 156, baseType: !1850, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !376, line: 48, size: 320, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1856}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1851, file: !376, line: 50, baseType: !529, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1851, file: !376, line: 59, baseType: !602, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1851, file: !376, line: 64, baseType: !462, size: 8, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1851, file: !376, line: 67, baseType: !1850, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !487, file: !376, line: 159, baseType: !1858, size: 64, offset: 1024)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !376, line: 72, size: 256, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1859, file: !376, line: 74, baseType: !510, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1859, file: !376, line: 77, baseType: !1858, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1859, file: !376, line: 78, baseType: !1858, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1859, file: !376, line: 81, baseType: !1858, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !487, file: !376, line: 162, baseType: !462, size: 8, offset: 1088)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !487, file: !376, line: 166, baseType: !554, size: 64, offset: 1152)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!1869 = !{i32 2, !"Dwarf Version", i32 4}
!1870 = !{i32 2, !"Debug Info Version", i32 3}
!1871 = !{i32 1, !"wchar_size", i32 4}
!1872 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1873 = distinct !DISubprogram(name: "vprintf", scope: !1874, file: !1874, line: 39, type: !1875, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1885)
!1874 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!463, !1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !468)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1879, file: !1, baseType: !5, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1879, file: !1, baseType: !5, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1879, file: !1, baseType: !467, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1879, file: !1, baseType: !467, size: 64, offset: 128)
!1885 = !{!1886, !1887}
!1886 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1873, file: !1874, line: 39, type: !1877)
!1887 = !DILocalVariable(name: "__arg", arg: 2, scope: !1873, file: !1874, line: 39, type: !1878)
!1888 = !DILocation(line: 0, scope: !1873)
!1889 = !DILocation(line: 41, column: 20, scope: !1873)
!1890 = !DILocation(line: 41, column: 10, scope: !1873)
!1891 = !DILocation(line: 41, column: 3, scope: !1873)
!1892 = distinct !DISubprogram(name: "getchar", scope: !1874, file: !1874, line: 47, type: !1893, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!463}
!1895 = !{}
!1896 = !DILocation(line: 49, column: 16, scope: !1892)
!1897 = !DILocation(line: 49, column: 10, scope: !1892)
!1898 = !DILocation(line: 49, column: 3, scope: !1892)
!1899 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1874, file: !1874, line: 56, type: !1900, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1953)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!463, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1904, line: 7, baseType: !1905)
!1904 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1906, line: 49, size: 1728, elements: !1907)
!1906 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1923, !1925, !1926, !1927, !1930, !1932, !1933, !1934, !1937, !1939, !1942, !1945, !1946, !1947, !1948, !1949}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1905, file: !1906, line: 51, baseType: !463, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1905, file: !1906, line: 54, baseType: !465, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1905, file: !1906, line: 55, baseType: !465, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1905, file: !1906, line: 56, baseType: !465, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1905, file: !1906, line: 57, baseType: !465, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1905, file: !1906, line: 58, baseType: !465, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1905, file: !1906, line: 59, baseType: !465, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1905, file: !1906, line: 60, baseType: !465, size: 64, offset: 448)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1905, file: !1906, line: 61, baseType: !465, size: 64, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1905, file: !1906, line: 64, baseType: !465, size: 64, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1905, file: !1906, line: 65, baseType: !465, size: 64, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1905, file: !1906, line: 66, baseType: !465, size: 64, offset: 704)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1905, file: !1906, line: 68, baseType: !1921, size: 64, offset: 768)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1906, line: 36, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1905, file: !1906, line: 70, baseType: !1924, size: 64, offset: 832)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1905, file: !1906, line: 72, baseType: !463, size: 32, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1905, file: !1906, line: 73, baseType: !463, size: 32, offset: 928)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1905, file: !1906, line: 74, baseType: !1928, size: 64, offset: 960)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1929, line: 152, baseType: !609)
!1929 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1905, file: !1906, line: 77, baseType: !1931, size: 16, offset: 1024)
!1931 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1905, file: !1906, line: 78, baseType: !1459, size: 8, offset: 1040)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1905, file: !1906, line: 79, baseType: !651, size: 8, offset: 1048)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1905, file: !1906, line: 81, baseType: !1935, size: 64, offset: 1088)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1906, line: 43, baseType: null)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1905, file: !1906, line: 89, baseType: !1938, size: 64, offset: 1152)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1929, line: 153, baseType: !609)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1905, file: !1906, line: 91, baseType: !1940, size: 64, offset: 1216)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1906, line: 37, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1905, file: !1906, line: 92, baseType: !1943, size: 64, offset: 1280)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1906, line: 38, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1905, file: !1906, line: 93, baseType: !1924, size: 64, offset: 1344)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1905, file: !1906, line: 94, baseType: !467, size: 64, offset: 1408)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1905, file: !1906, line: 95, baseType: !1077, size: 64, offset: 1472)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1905, file: !1906, line: 96, baseType: !463, size: 32, offset: 1536)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1905, file: !1906, line: 98, baseType: !1950, size: 160, offset: 1568)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 160, elements: !1951)
!1951 = !{!1952}
!1952 = !DISubrange(count: 20)
!1953 = !{!1954}
!1954 = !DILocalVariable(name: "__fp", arg: 1, scope: !1899, file: !1874, line: 56, type: !1902)
!1955 = !DILocation(line: 0, scope: !1899)
!1956 = !DILocation(line: 58, column: 10, scope: !1899)
!1957 = !DILocation(line: 58, column: 3, scope: !1899)
!1958 = distinct !DISubprogram(name: "getc_unlocked", scope: !1874, file: !1874, line: 66, type: !1900, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1959)
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "__fp", arg: 1, scope: !1958, file: !1874, line: 66, type: !1902)
!1961 = !DILocation(line: 0, scope: !1958)
!1962 = !DILocation(line: 68, column: 10, scope: !1958)
!1963 = !DILocation(line: 68, column: 3, scope: !1958)
!1964 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1874, file: !1874, line: 73, type: !1893, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1895)
!1965 = !DILocation(line: 75, column: 10, scope: !1964)
!1966 = !DILocation(line: 75, column: 3, scope: !1964)
!1967 = distinct !DISubprogram(name: "putchar", scope: !1874, file: !1874, line: 82, type: !1968, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!463, !463}
!1970 = !{!1971}
!1971 = !DILocalVariable(name: "__c", arg: 1, scope: !1967, file: !1874, line: 82, type: !463)
!1972 = !DILocation(line: 0, scope: !1967)
!1973 = !DILocation(line: 84, column: 21, scope: !1967)
!1974 = !DILocation(line: 84, column: 10, scope: !1967)
!1975 = !DILocation(line: 84, column: 3, scope: !1967)
!1976 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1874, file: !1874, line: 91, type: !1977, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!463, !463, !1902}
!1979 = !{!1980, !1981}
!1980 = !DILocalVariable(name: "__c", arg: 1, scope: !1976, file: !1874, line: 91, type: !463)
!1981 = !DILocalVariable(name: "__stream", arg: 2, scope: !1976, file: !1874, line: 91, type: !1902)
!1982 = !DILocation(line: 0, scope: !1976)
!1983 = !DILocation(line: 93, column: 10, scope: !1976)
!1984 = !DILocation(line: 93, column: 3, scope: !1976)
!1985 = distinct !DISubprogram(name: "putc_unlocked", scope: !1874, file: !1874, line: 101, type: !1977, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1986)
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "__c", arg: 1, scope: !1985, file: !1874, line: 101, type: !463)
!1988 = !DILocalVariable(name: "__stream", arg: 2, scope: !1985, file: !1874, line: 101, type: !1902)
!1989 = !DILocation(line: 0, scope: !1985)
!1990 = !DILocation(line: 103, column: 10, scope: !1985)
!1991 = !DILocation(line: 103, column: 3, scope: !1985)
!1992 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1874, file: !1874, line: 108, type: !1968, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1993)
!1993 = !{!1994}
!1994 = !DILocalVariable(name: "__c", arg: 1, scope: !1992, file: !1874, line: 108, type: !463)
!1995 = !DILocation(line: 0, scope: !1992)
!1996 = !DILocation(line: 110, column: 10, scope: !1992)
!1997 = !DILocation(line: 110, column: 3, scope: !1992)
!1998 = distinct !DISubprogram(name: "getline", scope: !1874, file: !1874, line: 118, type: !1999, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2003)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!2001, !464, !2002, !1902}
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1929, line: 193, baseType: !609)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!2003 = !{!2004, !2005, !2006}
!2004 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1998, file: !1874, line: 118, type: !464)
!2005 = !DILocalVariable(name: "__n", arg: 2, scope: !1998, file: !1874, line: 118, type: !2002)
!2006 = !DILocalVariable(name: "__stream", arg: 3, scope: !1998, file: !1874, line: 118, type: !1902)
!2007 = !DILocation(line: 0, scope: !1998)
!2008 = !DILocation(line: 120, column: 10, scope: !1998)
!2009 = !DILocation(line: 120, column: 3, scope: !1998)
!2010 = distinct !DISubprogram(name: "feof_unlocked", scope: !1874, file: !1874, line: 128, type: !1900, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2011)
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "__stream", arg: 1, scope: !2010, file: !1874, line: 128, type: !1902)
!2013 = !DILocation(line: 0, scope: !2010)
!2014 = !DILocation(line: 130, column: 10, scope: !2010)
!2015 = !DILocation(line: 130, column: 3, scope: !2010)
!2016 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1874, file: !1874, line: 135, type: !1900, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2017)
!2017 = !{!2018}
!2018 = !DILocalVariable(name: "__stream", arg: 1, scope: !2016, file: !1874, line: 135, type: !1902)
!2019 = !DILocation(line: 0, scope: !2016)
!2020 = !DILocation(line: 137, column: 10, scope: !2016)
!2021 = !DILocation(line: 137, column: 3, scope: !2016)
!2022 = distinct !DISubprogram(name: "tolower", scope: !2023, file: !2023, line: 207, type: !1968, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2024)
!2023 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2024 = !{!2025}
!2025 = !DILocalVariable(name: "__c", arg: 1, scope: !2022, file: !2023, line: 207, type: !463)
!2026 = !DILocation(line: 0, scope: !2022)
!2027 = !DILocation(line: 209, column: 22, scope: !2022)
!2028 = !DILocation(line: 209, column: 39, scope: !2022)
!2029 = !DILocation(line: 209, column: 38, scope: !2022)
!2030 = !DILocation(line: 209, column: 37, scope: !2022)
!2031 = !DILocation(line: 209, column: 10, scope: !2022)
!2032 = !DILocation(line: 209, column: 3, scope: !2022)
!2033 = distinct !DISubprogram(name: "toupper", scope: !2023, file: !2023, line: 213, type: !1968, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2034)
!2034 = !{!2035}
!2035 = !DILocalVariable(name: "__c", arg: 1, scope: !2033, file: !2023, line: 213, type: !463)
!2036 = !DILocation(line: 0, scope: !2033)
!2037 = !DILocation(line: 215, column: 22, scope: !2033)
!2038 = !DILocation(line: 215, column: 39, scope: !2033)
!2039 = !DILocation(line: 215, column: 38, scope: !2033)
!2040 = !DILocation(line: 215, column: 37, scope: !2033)
!2041 = !DILocation(line: 215, column: 10, scope: !2033)
!2042 = !DILocation(line: 215, column: 3, scope: !2033)
!2043 = distinct !DISubprogram(name: "atoi", scope: !2044, file: !2044, line: 361, type: !2045, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2047)
!2044 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!463, !468}
!2047 = !{!2048}
!2048 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2043, file: !2044, line: 361, type: !468)
!2049 = !DILocation(line: 0, scope: !2043)
!2050 = !DILocation(line: 363, column: 16, scope: !2043)
!2051 = !DILocation(line: 363, column: 10, scope: !2043)
!2052 = !DILocation(line: 363, column: 3, scope: !2043)
!2053 = distinct !DISubprogram(name: "atol", scope: !2044, file: !2044, line: 366, type: !2054, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2056)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!609, !468}
!2056 = !{!2057}
!2057 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2053, file: !2044, line: 366, type: !468)
!2058 = !DILocation(line: 0, scope: !2053)
!2059 = !DILocation(line: 368, column: 10, scope: !2053)
!2060 = !DILocation(line: 368, column: 3, scope: !2053)
!2061 = distinct !DISubprogram(name: "atoll", scope: !2044, file: !2044, line: 373, type: !2062, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2065)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !468}
!2064 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2061, file: !2044, line: 373, type: !468)
!2067 = !DILocation(line: 0, scope: !2061)
!2068 = !DILocation(line: 375, column: 10, scope: !2061)
!2069 = !DILocation(line: 375, column: 3, scope: !2061)
!2070 = distinct !DISubprogram(name: "bsearch", scope: !2071, file: !2071, line: 20, type: !2072, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2075)
!2071 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!467, !894, !894, !1077, !1077, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2044, line: 808, baseType: !1066)
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085}
!2076 = !DILocalVariable(name: "__key", arg: 1, scope: !2070, file: !2071, line: 20, type: !894)
!2077 = !DILocalVariable(name: "__base", arg: 2, scope: !2070, file: !2071, line: 20, type: !894)
!2078 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2070, file: !2071, line: 20, type: !1077)
!2079 = !DILocalVariable(name: "__size", arg: 4, scope: !2070, file: !2071, line: 20, type: !1077)
!2080 = !DILocalVariable(name: "__compar", arg: 5, scope: !2070, file: !2071, line: 21, type: !2074)
!2081 = !DILocalVariable(name: "__l", scope: !2070, file: !2071, line: 23, type: !1077)
!2082 = !DILocalVariable(name: "__u", scope: !2070, file: !2071, line: 23, type: !1077)
!2083 = !DILocalVariable(name: "__idx", scope: !2070, file: !2071, line: 23, type: !1077)
!2084 = !DILocalVariable(name: "__p", scope: !2070, file: !2071, line: 24, type: !894)
!2085 = !DILocalVariable(name: "__comparison", scope: !2070, file: !2071, line: 25, type: !463)
!2086 = !DILocation(line: 0, scope: !2070)
!2087 = !DILocation(line: 29, column: 3, scope: !2070)
!2088 = !DILocation(line: 27, column: 7, scope: !2070)
!2089 = !DILocation(line: 29, column: 14, scope: !2070)
!2090 = !DILocation(line: 31, column: 20, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2070, file: !2071, line: 30, column: 5)
!2092 = !DILocation(line: 31, column: 27, scope: !2091)
!2093 = !DILocation(line: 32, column: 56, scope: !2091)
!2094 = !DILocation(line: 32, column: 47, scope: !2091)
!2095 = !DILocation(line: 33, column: 22, scope: !2091)
!2096 = !DILocation(line: 34, column: 24, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !2071, line: 34, column: 11)
!2098 = !DILocation(line: 34, column: 11, scope: !2091)
!2099 = !DILocation(line: 36, column: 29, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !2071, line: 36, column: 16)
!2101 = !DILocation(line: 36, column: 16, scope: !2097)
!2102 = !DILocation(line: 37, column: 14, scope: !2100)
!2103 = distinct !{!2103, !2087, !2104}
!2104 = !DILocation(line: 40, column: 5, scope: !2070)
!2105 = !DILocation(line: 43, column: 1, scope: !2070)
!2106 = distinct !DISubprogram(name: "atof", scope: !2107, file: !2107, line: 25, type: !2108, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2111)
!2107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!2110, !468}
!2110 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2106, file: !2107, line: 25, type: !468)
!2113 = !DILocation(line: 0, scope: !2106)
!2114 = !DILocation(line: 27, column: 10, scope: !2106)
!2115 = !DILocation(line: 27, column: 3, scope: !2106)
!2116 = distinct !DISubprogram(name: "strtoimax", scope: !2117, file: !2117, line: 324, type: !2118, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2124)
!2117 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!2120, !1877, !2123, !463}
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2121, line: 101, baseType: !2122)
!2121 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1929, line: 72, baseType: !609)
!2123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !464)
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "nptr", arg: 1, scope: !2116, file: !2117, line: 324, type: !1877)
!2126 = !DILocalVariable(name: "endptr", arg: 2, scope: !2116, file: !2117, line: 324, type: !2123)
!2127 = !DILocalVariable(name: "base", arg: 3, scope: !2116, file: !2117, line: 324, type: !463)
!2128 = !DILocation(line: 0, scope: !2116)
!2129 = !DILocation(line: 327, column: 10, scope: !2116)
!2130 = !DILocation(line: 327, column: 3, scope: !2116)
!2131 = distinct !DISubprogram(name: "strtoumax", scope: !2117, file: !2117, line: 336, type: !2132, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2136)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2134, !1877, !2123, !463}
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2121, line: 102, baseType: !2135)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1929, line: 73, baseType: !607)
!2136 = !{!2137, !2138, !2139}
!2137 = !DILocalVariable(name: "nptr", arg: 1, scope: !2131, file: !2117, line: 336, type: !1877)
!2138 = !DILocalVariable(name: "endptr", arg: 2, scope: !2131, file: !2117, line: 336, type: !2123)
!2139 = !DILocalVariable(name: "base", arg: 3, scope: !2131, file: !2117, line: 336, type: !463)
!2140 = !DILocation(line: 0, scope: !2131)
!2141 = !DILocation(line: 339, column: 10, scope: !2131)
!2142 = !DILocation(line: 339, column: 3, scope: !2131)
!2143 = distinct !DISubprogram(name: "wcstoimax", scope: !2117, file: !2117, line: 348, type: !2144, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2153)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2120, !2146, !2150, !463}
!2146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2147)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2117, line: 34, baseType: !463)
!2150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2151)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2153 = !{!2154, !2155, !2156}
!2154 = !DILocalVariable(name: "nptr", arg: 1, scope: !2143, file: !2117, line: 348, type: !2146)
!2155 = !DILocalVariable(name: "endptr", arg: 2, scope: !2143, file: !2117, line: 348, type: !2150)
!2156 = !DILocalVariable(name: "base", arg: 3, scope: !2143, file: !2117, line: 348, type: !463)
!2157 = !DILocation(line: 0, scope: !2143)
!2158 = !DILocation(line: 351, column: 10, scope: !2143)
!2159 = !DILocation(line: 351, column: 3, scope: !2143)
!2160 = distinct !DISubprogram(name: "wcstoumax", scope: !2117, file: !2117, line: 362, type: !2161, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2134, !2146, !2150, !463}
!2163 = !{!2164, !2165, !2166}
!2164 = !DILocalVariable(name: "nptr", arg: 1, scope: !2160, file: !2117, line: 362, type: !2146)
!2165 = !DILocalVariable(name: "endptr", arg: 2, scope: !2160, file: !2117, line: 362, type: !2150)
!2166 = !DILocalVariable(name: "base", arg: 3, scope: !2160, file: !2117, line: 362, type: !463)
!2167 = !DILocation(line: 0, scope: !2160)
!2168 = !DILocation(line: 365, column: 10, scope: !2160)
!2169 = !DILocation(line: 365, column: 3, scope: !2160)
!2170 = distinct !DISubprogram(name: "stat", scope: !2171, file: !2171, line: 453, type: !2172, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2209)
!2171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!463, !468, !2174}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2176, line: 46, size: 1152, elements: !2177)
!2176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2177 = !{!2178, !2180, !2182, !2184, !2186, !2188, !2190, !2191, !2192, !2193, !2195, !2197, !2205, !2206, !2207}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2175, file: !2176, line: 48, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1929, line: 145, baseType: !607)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2175, file: !2176, line: 53, baseType: !2181, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1929, line: 148, baseType: !607)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2175, file: !2176, line: 61, baseType: !2183, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1929, line: 151, baseType: !607)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2175, file: !2176, line: 62, baseType: !2185, size: 32, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1929, line: 150, baseType: !5)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2175, file: !2176, line: 64, baseType: !2187, size: 32, offset: 224)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1929, line: 146, baseType: !5)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2175, file: !2176, line: 65, baseType: !2189, size: 32, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1929, line: 147, baseType: !5)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2175, file: !2176, line: 67, baseType: !463, size: 32, offset: 288)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2175, file: !2176, line: 69, baseType: !2179, size: 64, offset: 320)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2175, file: !2176, line: 74, baseType: !1928, size: 64, offset: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2175, file: !2176, line: 78, baseType: !2194, size: 64, offset: 448)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1929, line: 174, baseType: !609)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2175, file: !2176, line: 80, baseType: !2196, size: 64, offset: 512)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1929, line: 179, baseType: !609)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2175, file: !2176, line: 91, baseType: !2198, size: 128, offset: 576)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2199, line: 10, size: 128, elements: !2200)
!2199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2200 = !{!2201, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2198, file: !2199, line: 12, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1929, line: 160, baseType: !609)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2198, file: !2199, line: 16, baseType: !2204, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1929, line: 196, baseType: !609)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2175, file: !2176, line: 92, baseType: !2198, size: 128, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2175, file: !2176, line: 93, baseType: !2198, size: 128, offset: 832)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2175, file: !2176, line: 106, baseType: !2208, size: 192, offset: 960)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2204, size: 192, elements: !627)
!2209 = !{!2210, !2211}
!2210 = !DILocalVariable(name: "__path", arg: 1, scope: !2170, file: !2171, line: 453, type: !468)
!2211 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2170, file: !2171, line: 453, type: !2174)
!2212 = !DILocation(line: 0, scope: !2170)
!2213 = !DILocation(line: 455, column: 10, scope: !2170)
!2214 = !DILocation(line: 455, column: 3, scope: !2170)
!2215 = distinct !DISubprogram(name: "lstat", scope: !2171, file: !2171, line: 460, type: !2172, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2216)
!2216 = !{!2217, !2218}
!2217 = !DILocalVariable(name: "__path", arg: 1, scope: !2215, file: !2171, line: 460, type: !468)
!2218 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2215, file: !2171, line: 460, type: !2174)
!2219 = !DILocation(line: 0, scope: !2215)
!2220 = !DILocation(line: 462, column: 10, scope: !2215)
!2221 = !DILocation(line: 462, column: 3, scope: !2215)
!2222 = distinct !DISubprogram(name: "fstat", scope: !2171, file: !2171, line: 467, type: !2223, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!463, !463, !2174}
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "__fd", arg: 1, scope: !2222, file: !2171, line: 467, type: !463)
!2227 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2222, file: !2171, line: 467, type: !2174)
!2228 = !DILocation(line: 0, scope: !2222)
!2229 = !DILocation(line: 469, column: 10, scope: !2222)
!2230 = !DILocation(line: 469, column: 3, scope: !2222)
!2231 = distinct !DISubprogram(name: "fstatat", scope: !2171, file: !2171, line: 474, type: !2232, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!463, !463, !468, !2174, !463}
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "__fd", arg: 1, scope: !2231, file: !2171, line: 474, type: !463)
!2236 = !DILocalVariable(name: "__filename", arg: 2, scope: !2231, file: !2171, line: 474, type: !468)
!2237 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2231, file: !2171, line: 474, type: !2174)
!2238 = !DILocalVariable(name: "__flag", arg: 4, scope: !2231, file: !2171, line: 474, type: !463)
!2239 = !DILocation(line: 0, scope: !2231)
!2240 = !DILocation(line: 477, column: 10, scope: !2231)
!2241 = !DILocation(line: 477, column: 3, scope: !2231)
!2242 = distinct !DISubprogram(name: "mknod", scope: !2171, file: !2171, line: 483, type: !2243, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!463, !468, !2185, !2179}
!2245 = !{!2246, !2247, !2248}
!2246 = !DILocalVariable(name: "__path", arg: 1, scope: !2242, file: !2171, line: 483, type: !468)
!2247 = !DILocalVariable(name: "__mode", arg: 2, scope: !2242, file: !2171, line: 483, type: !2185)
!2248 = !DILocalVariable(name: "__dev", arg: 3, scope: !2242, file: !2171, line: 483, type: !2179)
!2249 = !DILocation(line: 0, scope: !2242)
!2250 = !DILocation(line: 485, column: 10, scope: !2242)
!2251 = !DILocation(line: 485, column: 3, scope: !2242)
!2252 = distinct !DISubprogram(name: "mknodat", scope: !2171, file: !2171, line: 491, type: !2253, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!463, !463, !468, !2185, !2179}
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DILocalVariable(name: "__fd", arg: 1, scope: !2252, file: !2171, line: 491, type: !463)
!2257 = !DILocalVariable(name: "__path", arg: 2, scope: !2252, file: !2171, line: 491, type: !468)
!2258 = !DILocalVariable(name: "__mode", arg: 3, scope: !2252, file: !2171, line: 491, type: !2185)
!2259 = !DILocalVariable(name: "__dev", arg: 4, scope: !2252, file: !2171, line: 491, type: !2179)
!2260 = !DILocation(line: 0, scope: !2252)
!2261 = !DILocation(line: 494, column: 10, scope: !2252)
!2262 = !DILocation(line: 494, column: 3, scope: !2252)
!2263 = distinct !DISubprogram(name: "stat64", scope: !2171, file: !2171, line: 502, type: !2264, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2286)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!463, !468, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2176, line: 119, size: 1152, elements: !2268)
!2268 = !{!2269, !2270, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2282, !2283, !2284, !2285}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2267, file: !2176, line: 121, baseType: !2179, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2267, file: !2176, line: 123, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1929, line: 149, baseType: !607)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2267, file: !2176, line: 124, baseType: !2183, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2267, file: !2176, line: 125, baseType: !2185, size: 32, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2267, file: !2176, line: 132, baseType: !2187, size: 32, offset: 224)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2267, file: !2176, line: 133, baseType: !2189, size: 32, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2267, file: !2176, line: 135, baseType: !463, size: 32, offset: 288)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2267, file: !2176, line: 136, baseType: !2179, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2267, file: !2176, line: 137, baseType: !1928, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2267, file: !2176, line: 143, baseType: !2194, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2267, file: !2176, line: 144, baseType: !2281, size: 64, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1929, line: 180, baseType: !609)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2267, file: !2176, line: 152, baseType: !2198, size: 128, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2267, file: !2176, line: 153, baseType: !2198, size: 128, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2267, file: !2176, line: 154, baseType: !2198, size: 128, offset: 832)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2267, file: !2176, line: 164, baseType: !2208, size: 192, offset: 960)
!2286 = !{!2287, !2288}
!2287 = !DILocalVariable(name: "__path", arg: 1, scope: !2263, file: !2171, line: 502, type: !468)
!2288 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2263, file: !2171, line: 502, type: !2266)
!2289 = !DILocation(line: 0, scope: !2263)
!2290 = !DILocation(line: 504, column: 10, scope: !2263)
!2291 = !DILocation(line: 504, column: 3, scope: !2263)
!2292 = distinct !DISubprogram(name: "lstat64", scope: !2171, file: !2171, line: 509, type: !2264, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2293)
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "__path", arg: 1, scope: !2292, file: !2171, line: 509, type: !468)
!2295 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2292, file: !2171, line: 509, type: !2266)
!2296 = !DILocation(line: 0, scope: !2292)
!2297 = !DILocation(line: 511, column: 10, scope: !2292)
!2298 = !DILocation(line: 511, column: 3, scope: !2292)
!2299 = distinct !DISubprogram(name: "fstat64", scope: !2171, file: !2171, line: 516, type: !2300, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!463, !463, !2266}
!2302 = !{!2303, !2304}
!2303 = !DILocalVariable(name: "__fd", arg: 1, scope: !2299, file: !2171, line: 516, type: !463)
!2304 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2299, file: !2171, line: 516, type: !2266)
!2305 = !DILocation(line: 0, scope: !2299)
!2306 = !DILocation(line: 518, column: 10, scope: !2299)
!2307 = !DILocation(line: 518, column: 3, scope: !2299)
!2308 = distinct !DISubprogram(name: "fstatat64", scope: !2171, file: !2171, line: 523, type: !2309, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!463, !463, !468, !2266, !463}
!2311 = !{!2312, !2313, !2314, !2315}
!2312 = !DILocalVariable(name: "__fd", arg: 1, scope: !2308, file: !2171, line: 523, type: !463)
!2313 = !DILocalVariable(name: "__filename", arg: 2, scope: !2308, file: !2171, line: 523, type: !468)
!2314 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2308, file: !2171, line: 523, type: !2266)
!2315 = !DILocalVariable(name: "__flag", arg: 4, scope: !2308, file: !2171, line: 523, type: !463)
!2316 = !DILocation(line: 0, scope: !2308)
!2317 = !DILocation(line: 526, column: 10, scope: !2308)
!2318 = !DILocation(line: 526, column: 3, scope: !2308)
!2319 = distinct !DISubprogram(name: "tree_ssa_unswitch_loops", scope: !1, file: !1, line: 82, type: !2320, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!5}
!2322 = !{!2323, !2329, !2330}
!2323 = !DILocalVariable(name: "li", scope: !2319, file: !1, line: 84, type: !2324)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !376, line: 515, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 508, size: 128, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2325, file: !376, line: 511, baseType: !470, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2325, file: !376, line: 514, baseType: !5, size: 32, offset: 64)
!2329 = !DILocalVariable(name: "loop", scope: !2319, file: !1, line: 85, type: !486)
!2330 = !DILocalVariable(name: "changed", scope: !2319, file: !1, line: 86, type: !462)
!2331 = !DILocation(line: 84, column: 3, scope: !2319)
!2332 = !DILocation(line: 85, column: 3, scope: !2319)
!2333 = !DILocation(line: 0, scope: !2319)
!2334 = !DILocation(line: 89, column: 3, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 89, column: 3)
!2336 = !DILocation(line: 89, column: 3, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 89, column: 3)
!2338 = !DILocation(line: 91, column: 18, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2337, file: !1, line: 90, column: 5)
!2340 = !DILocation(line: 91, column: 15, scope: !2339)
!2341 = distinct !{!2341, !2334, !2342}
!2342 = !DILocation(line: 92, column: 5, scope: !2335)
!2343 = !DILocation(line: 94, column: 7, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 94, column: 7)
!2345 = !DILocation(line: 97, column: 1, scope: !2319)
!2346 = distinct !DISubprogram(name: "fel_init", scope: !376, file: !376, line: 535, type: !2347, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2351)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !2349, !2350, !5}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357}
!2352 = !DILocalVariable(name: "li", arg: 1, scope: !2346, file: !376, line: 535, type: !2349)
!2353 = !DILocalVariable(name: "loop", arg: 2, scope: !2346, file: !376, line: 535, type: !2350)
!2354 = !DILocalVariable(name: "flags", arg: 3, scope: !2346, file: !376, line: 535, type: !5)
!2355 = !DILocalVariable(name: "aloop", scope: !2346, file: !376, line: 537, type: !486)
!2356 = !DILocalVariable(name: "i", scope: !2346, file: !376, line: 538, type: !5)
!2357 = !DILocalVariable(name: "mn", scope: !2346, file: !376, line: 539, type: !463)
!2358 = !DILocation(line: 0, scope: !2346)
!2359 = !DILocation(line: 537, column: 3, scope: !2346)
!2360 = !DILocation(line: 541, column: 7, scope: !2346)
!2361 = !DILocation(line: 541, column: 11, scope: !2346)
!2362 = !DILocation(line: 542, column: 8, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2346, file: !376, line: 542, column: 7)
!2364 = !DILocation(line: 542, column: 7, scope: !2346)
!2365 = !DILocation(line: 544, column: 11, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !376, line: 543, column: 5)
!2367 = !DILocation(line: 544, column: 20, scope: !2366)
!2368 = !DILocation(line: 545, column: 13, scope: !2366)
!2369 = !DILocation(line: 546, column: 7, scope: !2366)
!2370 = !DILocation(line: 549, column: 18, scope: !2346)
!2371 = !DILocation(line: 549, column: 7, scope: !2346)
!2372 = !DILocation(line: 549, column: 16, scope: !2346)
!2373 = !DILocation(line: 554, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !376, line: 554, column: 7)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !376, line: 553, column: 5)
!2376 = distinct !DILexicalBlock(scope: !2346, file: !376, line: 552, column: 7)
!2377 = !DILocation(line: 0, scope: !2374)
!2378 = !DILocation(line: 554, column: 19, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2374, file: !376, line: 554, column: 7)
!2380 = !DILocation(line: 555, column: 6, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2379, file: !376, line: 555, column: 6)
!2382 = !DILocation(line: 555, column: 12, scope: !2381)
!2383 = !DILocation(line: 556, column: 6, scope: !2381)
!2384 = !DILocation(line: 556, column: 16, scope: !2381)
!2385 = !DILocation(line: 556, column: 22, scope: !2381)
!2386 = !DILocation(line: 557, column: 6, scope: !2381)
!2387 = !DILocation(line: 557, column: 16, scope: !2381)
!2388 = !DILocation(line: 557, column: 20, scope: !2381)
!2389 = !DILocation(line: 555, column: 6, scope: !2379)
!2390 = !DILocation(line: 558, column: 4, scope: !2381)
!2391 = !DILocation(line: 554, column: 75, scope: !2379)
!2392 = !DILocation(line: 554, column: 7, scope: !2379)
!2393 = distinct !{!2393, !2373, !2394}
!2394 = !DILocation(line: 558, column: 4, scope: !2374)
!2395 = !DILocation(line: 608, column: 3, scope: !2346)
!2396 = !DILocation(line: 609, column: 1, scope: !2346)
!2397 = distinct !DISubprogram(name: "tree_unswitch_single_loop", scope: !1, file: !1, line: 175, type: !2398, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!462, !486, !463}
!2400 = !{!2401, !2402, !2403, !2405, !2406, !2407, !2408, !2409}
!2401 = !DILocalVariable(name: "loop", arg: 1, scope: !2397, file: !1, line: 175, type: !486)
!2402 = !DILocalVariable(name: "num", arg: 2, scope: !2397, file: !1, line: 175, type: !463)
!2403 = !DILocalVariable(name: "bbs", scope: !2397, file: !1, line: 177, type: !2404)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!2405 = !DILocalVariable(name: "nloop", scope: !2397, file: !1, line: 178, type: !486)
!2406 = !DILocalVariable(name: "i", scope: !2397, file: !1, line: 179, type: !5)
!2407 = !DILocalVariable(name: "cond", scope: !2397, file: !1, line: 180, type: !554)
!2408 = !DILocalVariable(name: "stmt", scope: !2397, file: !1, line: 181, type: !529)
!2409 = !DILocalVariable(name: "changed", scope: !2397, file: !1, line: 182, type: !462)
!2410 = !DILocation(line: 0, scope: !2397)
!2411 = !DILocation(line: 185, column: 13, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 185, column: 7)
!2413 = !DILocation(line: 185, column: 11, scope: !2412)
!2414 = !DILocation(line: 185, column: 7, scope: !2397)
!2415 = !DILocation(line: 187, column: 11, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !1, line: 187, column: 11)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 186, column: 5)
!2418 = !DILocation(line: 187, column: 21, scope: !2416)
!2419 = !DILocation(line: 187, column: 25, scope: !2416)
!2420 = !DILocation(line: 187, column: 36, scope: !2416)
!2421 = !DILocation(line: 187, column: 11, scope: !2417)
!2422 = !DILocation(line: 188, column: 2, scope: !2416)
!2423 = !DILocation(line: 193, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 193, column: 7)
!2425 = !DILocation(line: 193, column: 7, scope: !2424)
!2426 = !DILocation(line: 193, column: 7, scope: !2397)
!2427 = !DILocation(line: 195, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !1, line: 195, column: 11)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !1, line: 194, column: 5)
!2430 = !DILocation(line: 195, column: 21, scope: !2428)
!2431 = !DILocation(line: 195, column: 25, scope: !2428)
!2432 = !DILocation(line: 195, column: 36, scope: !2428)
!2433 = !DILocation(line: 195, column: 11, scope: !2429)
!2434 = !DILocation(line: 196, column: 2, scope: !2428)
!2435 = !DILocation(line: 201, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 201, column: 7)
!2437 = !DILocation(line: 201, column: 7, scope: !2397)
!2438 = !DILocation(line: 203, column: 11, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !1, line: 203, column: 11)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !1, line: 202, column: 5)
!2441 = !DILocation(line: 203, column: 21, scope: !2439)
!2442 = !DILocation(line: 203, column: 25, scope: !2439)
!2443 = !DILocation(line: 203, column: 36, scope: !2439)
!2444 = !DILocation(line: 203, column: 11, scope: !2440)
!2445 = !DILocation(line: 204, column: 2, scope: !2439)
!2446 = !DILocation(line: 209, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 209, column: 7)
!2448 = !DILocation(line: 210, column: 20, scope: !2447)
!2449 = !DILocation(line: 210, column: 7, scope: !2447)
!2450 = !DILocation(line: 209, column: 7, scope: !2397)
!2451 = !DILocation(line: 212, column: 11, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !1, line: 212, column: 11)
!2453 = distinct !DILexicalBlock(scope: !2447, file: !1, line: 211, column: 5)
!2454 = !DILocation(line: 212, column: 21, scope: !2452)
!2455 = !DILocation(line: 212, column: 25, scope: !2452)
!2456 = !DILocation(line: 212, column: 36, scope: !2452)
!2457 = !DILocation(line: 212, column: 11, scope: !2453)
!2458 = !DILocation(line: 213, column: 2, scope: !2452)
!2459 = !DILocation(line: 218, column: 9, scope: !2397)
!2460 = !DILocation(line: 0, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !1, line: 223, column: 7)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !1, line: 223, column: 7)
!2463 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 221, column: 5)
!2464 = !DILocation(line: 220, column: 3, scope: !2397)
!2465 = !DILocation(line: 223, column: 7, scope: !2463)
!2466 = !DILocation(line: 223, column: 24, scope: !2461)
!2467 = !DILocation(line: 223, column: 16, scope: !2461)
!2468 = !DILocation(line: 223, column: 7, scope: !2462)
!2469 = !DILocation(line: 224, column: 36, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2461, file: !1, line: 224, column: 6)
!2471 = !DILocation(line: 224, column: 14, scope: !2470)
!2472 = !DILocation(line: 224, column: 12, scope: !2470)
!2473 = !DILocation(line: 224, column: 6, scope: !2461)
!2474 = !DILocation(line: 227, column: 22, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2463, file: !1, line: 227, column: 11)
!2476 = !DILocation(line: 223, column: 36, scope: !2461)
!2477 = !DILocation(line: 223, column: 7, scope: !2461)
!2478 = distinct !{!2478, !2468, !2479}
!2479 = !DILocation(line: 225, column: 4, scope: !2462)
!2480 = !DILocation(line: 227, column: 13, scope: !2475)
!2481 = !DILocation(line: 227, column: 11, scope: !2463)
!2482 = !DILocation(line: 229, column: 10, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2475, file: !1, line: 228, column: 2)
!2484 = !DILocation(line: 229, column: 4, scope: !2483)
!2485 = !DILocation(line: 230, column: 4, scope: !2483)
!2486 = !DILocation(line: 233, column: 14, scope: !2463)
!2487 = !DILocation(line: 234, column: 25, scope: !2463)
!2488 = !DILocation(line: 234, column: 14, scope: !2463)
!2489 = !DILocation(line: 235, column: 11, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2463, file: !1, line: 235, column: 11)
!2491 = !DILocation(line: 235, column: 11, scope: !2463)
!2492 = !DILocation(line: 238, column: 47, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 236, column: 2)
!2494 = !DILocation(line: 238, column: 4, scope: !2493)
!2495 = !DILocation(line: 240, column: 2, scope: !2493)
!2496 = !DILocation(line: 241, column: 16, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 241, column: 16)
!2498 = !DILocation(line: 241, column: 16, scope: !2490)
!2499 = !DILocation(line: 244, column: 47, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 242, column: 2)
!2501 = !DILocation(line: 244, column: 4, scope: !2500)
!2502 = !DILocation(line: 250, column: 7, scope: !2463)
!2503 = !DILocation(line: 251, column: 8, scope: !2463)
!2504 = distinct !{!2504, !2464, !2505}
!2505 = !DILocation(line: 252, column: 5, scope: !2397)
!2506 = !DILocation(line: 254, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 254, column: 7)
!2508 = !DILocation(line: 254, column: 17, scope: !2507)
!2509 = !DILocation(line: 254, column: 21, scope: !2507)
!2510 = !DILocation(line: 254, column: 32, scope: !2507)
!2511 = !DILocation(line: 254, column: 7, scope: !2397)
!2512 = !DILocation(line: 255, column: 5, scope: !2507)
!2513 = !DILocation(line: 257, column: 3, scope: !2397)
!2514 = !DILocation(line: 259, column: 37, scope: !2397)
!2515 = !DILocation(line: 259, column: 11, scope: !2397)
!2516 = !DILocation(line: 260, column: 8, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 260, column: 7)
!2518 = !DILocation(line: 260, column: 7, scope: !2397)
!2519 = !DILocation(line: 262, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 261, column: 5)
!2521 = !DILocation(line: 263, column: 13, scope: !2520)
!2522 = !DILocation(line: 263, column: 7, scope: !2520)
!2523 = !DILocation(line: 264, column: 7, scope: !2520)
!2524 = !DILocation(line: 268, column: 3, scope: !2397)
!2525 = !DILocation(line: 269, column: 3, scope: !2397)
!2526 = !DILocation(line: 272, column: 41, scope: !2397)
!2527 = !DILocation(line: 272, column: 3, scope: !2397)
!2528 = !DILocation(line: 273, column: 3, scope: !2397)
!2529 = !DILocation(line: 274, column: 9, scope: !2397)
!2530 = !DILocation(line: 274, column: 3, scope: !2397)
!2531 = !DILocation(line: 276, column: 1, scope: !2397)
!2532 = distinct !DISubprogram(name: "fel_next", scope: !376, file: !376, line: 518, type: !2533, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2349, !2350}
!2535 = !{!2536, !2537, !2538}
!2536 = !DILocalVariable(name: "li", arg: 1, scope: !2532, file: !376, line: 518, type: !2349)
!2537 = !DILocalVariable(name: "loop", arg: 2, scope: !2532, file: !376, line: 518, type: !2350)
!2538 = !DILocalVariable(name: "anum", scope: !2532, file: !376, line: 520, type: !463)
!2539 = !DILocation(line: 0, scope: !2532)
!2540 = !DILocation(line: 520, column: 3, scope: !2532)
!2541 = !DILocation(line: 522, column: 3, scope: !2532)
!2542 = !DILocation(line: 522, column: 10, scope: !2532)
!2543 = !DILocation(line: 524, column: 14, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2532, file: !376, line: 523, column: 5)
!2545 = !DILocation(line: 525, column: 25, scope: !2544)
!2546 = !DILocation(line: 525, column: 15, scope: !2544)
!2547 = !DILocation(line: 525, column: 13, scope: !2544)
!2548 = !DILocation(line: 526, column: 11, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2544, file: !376, line: 526, column: 11)
!2550 = !DILocation(line: 526, column: 11, scope: !2544)
!2551 = distinct !{!2551, !2541, !2552}
!2552 = !DILocation(line: 528, column: 5, scope: !2532)
!2553 = !DILocation(line: 530, column: 3, scope: !2532)
!2554 = !DILocation(line: 531, column: 9, scope: !2532)
!2555 = !DILocation(line: 532, column: 1, scope: !2532)
!2556 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !472, file: !472, line: 32, type: !2557, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!470, !463}
!2559 = !{!2560}
!2560 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2556, file: !472, line: 32, type: !463)
!2561 = !DILocation(line: 0, scope: !2556)
!2562 = !DILocation(line: 32, column: 1, scope: !2556)
!2563 = distinct !DISubprogram(name: "number_of_loops", scope: !376, file: !376, line: 459, type: !2320, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1895)
!2564 = !DILocation(line: 461, column: 8, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2563, file: !376, line: 461, column: 7)
!2566 = !DILocation(line: 461, column: 7, scope: !2563)
!2567 = !DILocation(line: 464, column: 10, scope: !2563)
!2568 = !DILocation(line: 464, column: 3, scope: !2563)
!2569 = !DILocation(line: 0, scope: !2563)
!2570 = !DILocation(line: 465, column: 1, scope: !2563)
!2571 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !376, file: !376, line: 85, type: !2572, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2576)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!463, !2574, !5, !2350}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!2576 = !{!2577, !2578, !2579}
!2577 = !DILocalVariable(name: "vec_", arg: 1, scope: !2571, file: !376, line: 85, type: !2574)
!2578 = !DILocalVariable(name: "ix_", arg: 2, scope: !2571, file: !376, line: 85, type: !5)
!2579 = !DILocalVariable(name: "ptr", arg: 3, scope: !2571, file: !376, line: 85, type: !2350)
!2580 = !DILocation(line: 0, scope: !2571)
!2581 = !DILocation(line: 85, column: 1, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2571, file: !376, line: 85, column: 1)
!2583 = !DILocation(line: 85, column: 1, scope: !2571)
!2584 = !DILocation(line: 85, column: 1, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !376, line: 85, column: 1)
!2586 = !DILocation(line: 85, column: 1, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !376, line: 85, column: 1)
!2588 = !DILocation(line: 0, scope: !2582)
!2589 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !472, file: !472, line: 31, type: !2590, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2594)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!2592, !2593, !463}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "vec_", arg: 1, scope: !2589, file: !472, line: 31, type: !2593)
!2596 = !DILocalVariable(name: "obj_", arg: 2, scope: !2589, file: !472, line: 31, type: !463)
!2597 = !DILocalVariable(name: "slot_", scope: !2589, file: !472, line: 31, type: !2592)
!2598 = !DILocation(line: 0, scope: !2589)
!2599 = !DILocation(line: 31, column: 1, scope: !2589)
!2600 = distinct !DISubprogram(name: "loop_outer", scope: !376, file: !376, line: 434, type: !2601, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2605)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!486, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "loop", arg: 1, scope: !2600, file: !376, line: 434, type: !2603)
!2607 = !DILocalVariable(name: "n", scope: !2600, file: !376, line: 436, type: !5)
!2608 = !DILocation(line: 0, scope: !2600)
!2609 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !376, file: !376, line: 85, type: !2610, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!5, !2574}
!2612 = !{!2613}
!2613 = !DILocalVariable(name: "vec_", arg: 1, scope: !2609, file: !376, line: 85, type: !2574)
!2614 = !DILocation(line: 0, scope: !2609)
!2615 = !DILocation(line: 85, column: 1, scope: !2609)
!2616 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !376, file: !376, line: 85, type: !2617, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!485, !2574, !5}
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "vec_", arg: 1, scope: !2616, file: !376, line: 85, type: !2574)
!2621 = !DILocalVariable(name: "ix_", arg: 2, scope: !2616, file: !376, line: 85, type: !5)
!2622 = !DILocation(line: 0, scope: !2616)
!2623 = !DILocation(line: 85, column: 1, scope: !2616)
!2624 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !472, file: !472, line: 31, type: !2625, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2629)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!463, !2627, !5, !2592}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!2629 = !{!2630, !2631, !2632}
!2630 = !DILocalVariable(name: "vec_", arg: 1, scope: !2624, file: !472, line: 31, type: !2627)
!2631 = !DILocalVariable(name: "ix_", arg: 2, scope: !2624, file: !472, line: 31, type: !5)
!2632 = !DILocalVariable(name: "ptr", arg: 3, scope: !2624, file: !472, line: 31, type: !2592)
!2633 = !DILocation(line: 0, scope: !2624)
!2634 = !DILocation(line: 31, column: 1, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2624, file: !472, line: 31, column: 1)
!2636 = !DILocation(line: 31, column: 1, scope: !2624)
!2637 = !DILocation(line: 31, column: 1, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !472, line: 31, column: 1)
!2639 = !DILocation(line: 31, column: 1, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !472, line: 31, column: 1)
!2641 = !DILocation(line: 0, scope: !2635)
!2642 = distinct !DISubprogram(name: "get_loop", scope: !376, file: !376, line: 417, type: !2643, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!486, !5}
!2645 = !{!2646}
!2646 = !DILocalVariable(name: "num", arg: 1, scope: !2642, file: !376, line: 417, type: !5)
!2647 = !DILocation(line: 0, scope: !2642)
!2648 = !DILocation(line: 419, column: 10, scope: !2642)
!2649 = !DILocation(line: 419, column: 3, scope: !2642)
!2650 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !472, file: !472, line: 32, type: !2651, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2654)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !2653}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!2654 = !{!2655}
!2655 = !DILocalVariable(name: "vec_", arg: 1, scope: !2650, file: !472, line: 32, type: !2653)
!2656 = !DILocation(line: 0, scope: !2650)
!2657 = !DILocation(line: 32, column: 1, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2650, file: !472, line: 32, column: 1)
!2659 = !DILocation(line: 32, column: 1, scope: !2650)
!2660 = distinct !DISubprogram(name: "tree_may_unswitch_on", scope: !1, file: !1, line: 103, type: !2661, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!554, !1021, !486}
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2664 = !DILocalVariable(name: "bb", arg: 1, scope: !2660, file: !1, line: 103, type: !1021)
!2665 = !DILocalVariable(name: "loop", arg: 2, scope: !2660, file: !1, line: 103, type: !486)
!2666 = !DILocalVariable(name: "stmt", scope: !2660, file: !1, line: 105, type: !529)
!2667 = !DILocalVariable(name: "def", scope: !2660, file: !1, line: 105, type: !529)
!2668 = !DILocalVariable(name: "cond", scope: !2660, file: !1, line: 106, type: !554)
!2669 = !DILocalVariable(name: "use", scope: !2660, file: !1, line: 106, type: !554)
!2670 = !DILocalVariable(name: "def_bb", scope: !2660, file: !1, line: 107, type: !1021)
!2671 = !DILocalVariable(name: "iter", scope: !2660, file: !1, line: 108, type: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !389, line: 140, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !389, line: 131, size: 320, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2679, !2681, !2682, !2683}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2673, file: !389, line: 133, baseType: !462, size: 8)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2673, file: !389, line: 134, baseType: !388, size: 32, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2673, file: !389, line: 135, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !389, line: 42, baseType: !1163)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2673, file: !389, line: 136, baseType: !2680, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !389, line: 50, baseType: !1170)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2673, file: !389, line: 137, baseType: !463, size: 32, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2673, file: !389, line: 138, baseType: !463, size: 32, offset: 224)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2673, file: !389, line: 139, baseType: !529, size: 64, offset: 256)
!2684 = !DILocation(line: 0, scope: !2660)
!2685 = !DILocation(line: 108, column: 3, scope: !2660)
!2686 = !DILocation(line: 111, column: 10, scope: !2660)
!2687 = !DILocation(line: 112, column: 8, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 112, column: 7)
!2689 = !DILocation(line: 112, column: 13, scope: !2688)
!2690 = !DILocation(line: 112, column: 16, scope: !2688)
!2691 = !DILocation(line: 112, column: 35, scope: !2688)
!2692 = !DILocation(line: 112, column: 7, scope: !2660)
!2693 = !DILocation(line: 116, column: 3, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 116, column: 3)
!2695 = !DILocation(line: 0, scope: !2694)
!2696 = !DILocation(line: 116, column: 3, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 116, column: 3)
!2698 = !DILocation(line: 118, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2697, file: !1, line: 117, column: 5)
!2700 = !DILocation(line: 119, column: 16, scope: !2699)
!2701 = !DILocation(line: 120, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !1, line: 120, column: 11)
!2703 = !DILocation(line: 121, column: 4, scope: !2702)
!2704 = !DILocation(line: 121, column: 7, scope: !2702)
!2705 = !DILocation(line: 120, column: 11, scope: !2699)
!2706 = distinct !{!2706, !2693, !2707}
!2707 = !DILocation(line: 123, column: 5, scope: !2694)
!2708 = !DILocation(line: 125, column: 10, scope: !2660)
!2709 = !DILocation(line: 131, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 131, column: 7)
!2711 = !DILocation(line: 131, column: 28, scope: !2710)
!2712 = !DILocation(line: 131, column: 31, scope: !2710)
!2713 = !DILocation(line: 131, column: 7, scope: !2660)
!2714 = !DILocation(line: 135, column: 1, scope: !2660)
!2715 = distinct !DISubprogram(name: "simplify_using_entry_checks", scope: !1, file: !1, line: 142, type: !2716, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!554, !486, !554}
!2718 = !{!2719, !2720, !2721, !2722}
!2719 = !DILocalVariable(name: "loop", arg: 1, scope: !2715, file: !1, line: 142, type: !486)
!2720 = !DILocalVariable(name: "cond", arg: 2, scope: !2715, file: !1, line: 142, type: !554)
!2721 = !DILocalVariable(name: "e", scope: !2715, file: !1, line: 144, type: !508)
!2722 = !DILocalVariable(name: "stmt", scope: !2715, file: !1, line: 145, type: !529)
!2723 = !DILocation(line: 0, scope: !2715)
!2724 = !DILocation(line: 144, column: 12, scope: !2715)
!2725 = !DILocation(line: 0, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 150, column: 11)
!2727 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 148, column: 5)
!2728 = !DILocation(line: 0, scope: !2727)
!2729 = !DILocation(line: 149, column: 28, scope: !2727)
!2730 = !DILocation(line: 147, column: 3, scope: !2715)
!2731 = !DILocation(line: 149, column: 14, scope: !2727)
!2732 = !DILocation(line: 150, column: 11, scope: !2726)
!2733 = !DILocation(line: 151, column: 4, scope: !2726)
!2734 = !DILocation(line: 151, column: 7, scope: !2726)
!2735 = !DILocation(line: 151, column: 26, scope: !2726)
!2736 = !DILocation(line: 152, column: 4, scope: !2726)
!2737 = !DILocation(line: 152, column: 7, scope: !2726)
!2738 = !DILocation(line: 152, column: 34, scope: !2726)
!2739 = !DILocation(line: 152, column: 31, scope: !2726)
!2740 = !DILocation(line: 153, column: 4, scope: !2726)
!2741 = !DILocation(line: 153, column: 24, scope: !2726)
!2742 = !DILocation(line: 154, column: 10, scope: !2726)
!2743 = !DILocation(line: 153, column: 7, scope: !2726)
!2744 = !DILocation(line: 155, column: 4, scope: !2726)
!2745 = !DILocation(line: 155, column: 24, scope: !2726)
!2746 = !DILocation(line: 156, column: 10, scope: !2726)
!2747 = !DILocation(line: 155, column: 7, scope: !2726)
!2748 = !DILocation(line: 150, column: 11, scope: !2727)
!2749 = !DILocation(line: 157, column: 13, scope: !2726)
!2750 = !DILocation(line: 157, column: 19, scope: !2726)
!2751 = !DILocation(line: 157, column: 10, scope: !2726)
!2752 = !DILocation(line: 161, column: 30, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 161, column: 11)
!2754 = !DILocation(line: 161, column: 12, scope: !2753)
!2755 = !DILocation(line: 161, column: 11, scope: !2727)
!2756 = !DILocation(line: 164, column: 32, scope: !2727)
!2757 = !DILocation(line: 164, column: 11, scope: !2727)
!2758 = !DILocation(line: 165, column: 14, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 165, column: 11)
!2760 = !DILocation(line: 165, column: 21, scope: !2759)
!2761 = !DILocation(line: 165, column: 18, scope: !2759)
!2762 = !DILocation(line: 165, column: 11, scope: !2727)
!2763 = distinct !{!2763, !2730, !2764}
!2764 = !DILocation(line: 167, column: 5, scope: !2715)
!2765 = !DILocation(line: 168, column: 1, scope: !2715)
!2766 = distinct !DISubprogram(name: "update_stmt", scope: !396, file: !396, line: 1456, type: !2767, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !529}
!2769 = !{!2770}
!2770 = !DILocalVariable(name: "s", arg: 1, scope: !2766, file: !396, line: 1456, type: !529)
!2771 = !DILocation(line: 0, scope: !2766)
!2772 = !DILocation(line: 1458, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2766, file: !396, line: 1458, column: 7)
!2774 = !DILocation(line: 1458, column: 7, scope: !2766)
!2775 = !DILocation(line: 1460, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !396, line: 1459, column: 5)
!2777 = !DILocation(line: 1461, column: 7, scope: !2776)
!2778 = !DILocation(line: 1462, column: 5, scope: !2776)
!2779 = !DILocation(line: 1463, column: 1, scope: !2766)
!2780 = distinct !DISubprogram(name: "tree_unswitch_loop", scope: !1, file: !1, line: 284, type: !2781, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!486, !486, !1021, !554}
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789}
!2784 = !DILocalVariable(name: "loop", arg: 1, scope: !2780, file: !1, line: 284, type: !486)
!2785 = !DILocalVariable(name: "unswitch_on", arg: 2, scope: !2780, file: !1, line: 285, type: !1021)
!2786 = !DILocalVariable(name: "cond", arg: 3, scope: !2780, file: !1, line: 285, type: !554)
!2787 = !DILocalVariable(name: "prob_true", scope: !2780, file: !1, line: 287, type: !5)
!2788 = !DILocalVariable(name: "edge_true", scope: !2780, file: !1, line: 288, type: !508)
!2789 = !DILocalVariable(name: "edge_false", scope: !2780, file: !1, line: 288, type: !508)
!2790 = !DILocation(line: 0, scope: !2780)
!2791 = !DILocation(line: 288, column: 3, scope: !2780)
!2792 = !DILocation(line: 291, column: 3, scope: !2780)
!2793 = !DILocation(line: 292, column: 3, scope: !2780)
!2794 = !DILocation(line: 293, column: 3, scope: !2780)
!2795 = !DILocation(line: 295, column: 3, scope: !2780)
!2796 = !DILocation(line: 296, column: 15, scope: !2780)
!2797 = !DILocation(line: 296, column: 26, scope: !2780)
!2798 = !DILocation(line: 297, column: 30, scope: !2780)
!2799 = !DILocation(line: 299, column: 27, scope: !2780)
!2800 = !DILocation(line: 297, column: 10, scope: !2780)
!2801 = !DILocation(line: 300, column: 1, scope: !2780)
!2802 = !DILocation(line: 297, column: 3, scope: !2780)
!2803 = distinct !DISubprogram(name: "gimple_code", scope: !396, file: !396, line: 1052, type: !2804, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2807)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!395, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !509, line: 60, baseType: !1867)
!2807 = !{!2808}
!2808 = !DILocalVariable(name: "g", arg: 1, scope: !2803, file: !396, line: 1052, type: !2806)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocation(line: 1054, column: 20, scope: !2803)
!2811 = !DILocation(line: 1054, column: 3, scope: !2803)
!2812 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2813, file: !2813, line: 792, type: !2814, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2817)
!2813 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!554, !2816, !529, !463}
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2817 = !{!2818, !2819, !2820}
!2818 = !DILocalVariable(name: "ptr", arg: 1, scope: !2812, file: !2813, line: 792, type: !2816)
!2819 = !DILocalVariable(name: "stmt", arg: 2, scope: !2812, file: !2813, line: 792, type: !529)
!2820 = !DILocalVariable(name: "flags", arg: 3, scope: !2812, file: !2813, line: 792, type: !463)
!2821 = !DILocation(line: 0, scope: !2812)
!2822 = !DILocation(line: 794, column: 3, scope: !2812)
!2823 = !DILocation(line: 795, column: 8, scope: !2812)
!2824 = !DILocation(line: 795, column: 18, scope: !2812)
!2825 = !DILocation(line: 796, column: 10, scope: !2812)
!2826 = !DILocation(line: 796, column: 3, scope: !2812)
!2827 = distinct !DISubprogram(name: "op_iter_done", scope: !2813, file: !2813, line: 652, type: !2828, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2832)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!462, !2830}
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2832 = !{!2833}
!2833 = !DILocalVariable(name: "ptr", arg: 1, scope: !2827, file: !2813, line: 652, type: !2830)
!2834 = !DILocation(line: 0, scope: !2827)
!2835 = !DILocation(line: 654, column: 15, scope: !2827)
!2836 = !DILocation(line: 654, column: 3, scope: !2827)
!2837 = distinct !DISubprogram(name: "gimple_bb", scope: !396, file: !396, line: 1112, type: !2838, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!492, !2806}
!2840 = !{!2841}
!2841 = !DILocalVariable(name: "g", arg: 1, scope: !2837, file: !396, line: 1112, type: !2806)
!2842 = !DILocation(line: 0, scope: !2837)
!2843 = !DILocation(line: 1114, column: 20, scope: !2837)
!2844 = !DILocation(line: 1114, column: 3, scope: !2837)
!2845 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2813, file: !2813, line: 699, type: !2846, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!554, !2816}
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "ptr", arg: 1, scope: !2845, file: !2813, line: 699, type: !2816)
!2850 = !DILocalVariable(name: "val", scope: !2845, file: !2813, line: 701, type: !554)
!2851 = !DILocation(line: 0, scope: !2845)
!2852 = !DILocation(line: 705, column: 12, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2845, file: !2813, line: 705, column: 7)
!2854 = !DILocation(line: 705, column: 7, scope: !2853)
!2855 = !DILocation(line: 705, column: 7, scope: !2845)
!2856 = !DILocation(line: 707, column: 13, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !2813, line: 706, column: 5)
!2858 = !DILocation(line: 708, column: 24, scope: !2857)
!2859 = !DILocation(line: 708, column: 30, scope: !2857)
!2860 = !DILocation(line: 708, column: 17, scope: !2857)
!2861 = !DILocation(line: 709, column: 7, scope: !2857)
!2862 = !DILocation(line: 711, column: 12, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2845, file: !2813, line: 711, column: 7)
!2864 = !DILocation(line: 711, column: 7, scope: !2863)
!2865 = !DILocation(line: 711, column: 7, scope: !2845)
!2866 = !DILocation(line: 713, column: 13, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !2813, line: 712, column: 5)
!2868 = !DILocation(line: 714, column: 24, scope: !2867)
!2869 = !DILocation(line: 714, column: 30, scope: !2867)
!2870 = !DILocation(line: 714, column: 17, scope: !2867)
!2871 = !DILocation(line: 715, column: 7, scope: !2867)
!2872 = !DILocation(line: 718, column: 8, scope: !2845)
!2873 = !DILocation(line: 718, column: 13, scope: !2845)
!2874 = !DILocation(line: 719, column: 3, scope: !2845)
!2875 = !DILocation(line: 721, column: 1, scope: !2845)
!2876 = distinct !DISubprogram(name: "gimple_cond_code", scope: !396, file: !396, line: 2221, type: !2877, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!181, !2806}
!2879 = !{!2880}
!2880 = !DILocalVariable(name: "gs", arg: 1, scope: !2876, file: !396, line: 2221, type: !2806)
!2881 = !DILocation(line: 0, scope: !2876)
!2882 = !DILocation(line: 2224, column: 38, scope: !2876)
!2883 = !DILocation(line: 2224, column: 3, scope: !2876)
!2884 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !396, file: !396, line: 2241, type: !2885, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!554, !2806}
!2887 = !{!2888}
!2888 = !DILocalVariable(name: "gs", arg: 1, scope: !2884, file: !396, line: 2241, type: !2806)
!2889 = !DILocation(line: 0, scope: !2884)
!2890 = !DILocation(line: 2244, column: 10, scope: !2884)
!2891 = !DILocation(line: 2244, column: 3, scope: !2884)
!2892 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !396, file: !396, line: 2271, type: !2885, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2893)
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "gs", arg: 1, scope: !2892, file: !396, line: 2271, type: !2806)
!2895 = !DILocation(line: 0, scope: !2892)
!2896 = !DILocation(line: 2274, column: 10, scope: !2892)
!2897 = !DILocation(line: 2274, column: 3, scope: !2892)
!2898 = distinct !DISubprogram(name: "op_iter_init", scope: !2813, file: !2813, line: 742, type: !2899, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2816, !529, !463}
!2901 = !{!2902, !2903, !2904}
!2902 = !DILocalVariable(name: "ptr", arg: 1, scope: !2898, file: !2813, line: 742, type: !2816)
!2903 = !DILocalVariable(name: "stmt", arg: 2, scope: !2898, file: !2813, line: 742, type: !529)
!2904 = !DILocalVariable(name: "flags", arg: 3, scope: !2898, file: !2813, line: 742, type: !463)
!2905 = !DILocation(line: 0, scope: !2898)
!2906 = !DILocation(line: 748, column: 8, scope: !2898)
!2907 = !DILocation(line: 748, column: 13, scope: !2898)
!2908 = !DILocation(line: 750, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2898, file: !2813, line: 749, column: 7)
!2910 = !DILocation(line: 751, column: 7, scope: !2909)
!2911 = !DILocation(line: 749, column: 7, scope: !2898)
!2912 = !DILocation(line: 752, column: 5, scope: !2909)
!2913 = !DILocation(line: 753, column: 15, scope: !2898)
!2914 = !DILocation(line: 753, column: 52, scope: !2898)
!2915 = !DILocation(line: 753, column: 8, scope: !2898)
!2916 = !DILocation(line: 753, column: 13, scope: !2898)
!2917 = !DILocation(line: 755, column: 7, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2898, file: !2813, line: 754, column: 7)
!2919 = !DILocation(line: 755, column: 10, scope: !2918)
!2920 = !DILocation(line: 756, column: 7, scope: !2918)
!2921 = !DILocation(line: 756, column: 10, scope: !2918)
!2922 = !DILocation(line: 756, column: 29, scope: !2918)
!2923 = !DILocation(line: 754, column: 7, scope: !2898)
!2924 = !DILocation(line: 757, column: 22, scope: !2918)
!2925 = !DILocation(line: 757, column: 28, scope: !2918)
!2926 = !DILocation(line: 757, column: 15, scope: !2918)
!2927 = !DILocation(line: 757, column: 5, scope: !2918)
!2928 = !DILocation(line: 758, column: 8, scope: !2898)
!2929 = !DILocation(line: 758, column: 13, scope: !2898)
!2930 = !DILocation(line: 760, column: 8, scope: !2898)
!2931 = !DILocation(line: 760, column: 14, scope: !2898)
!2932 = !DILocation(line: 761, column: 8, scope: !2898)
!2933 = !DILocation(line: 761, column: 16, scope: !2898)
!2934 = !DILocation(line: 762, column: 8, scope: !2898)
!2935 = !DILocation(line: 762, column: 17, scope: !2898)
!2936 = !DILocation(line: 763, column: 1, scope: !2898)
!2937 = distinct !DISubprogram(name: "gimple_def_ops", scope: !396, file: !396, line: 1292, type: !2938, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!1163, !2806}
!2940 = !{!2941}
!2941 = !DILocalVariable(name: "g", arg: 1, scope: !2937, file: !396, line: 1292, type: !2806)
!2942 = !DILocation(line: 0, scope: !2937)
!2943 = distinct !DISubprogram(name: "gimple_vdef", scope: !396, file: !396, line: 1375, type: !2885, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2944)
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "g", arg: 1, scope: !2943, file: !396, line: 1375, type: !2806)
!2946 = !DILocation(line: 0, scope: !2943)
!2947 = !DILocation(line: 1377, column: 8, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2943, file: !396, line: 1377, column: 7)
!2949 = !DILocation(line: 1377, column: 7, scope: !2943)
!2950 = !DILocation(line: 1379, column: 23, scope: !2943)
!2951 = !DILocation(line: 1379, column: 3, scope: !2943)
!2952 = !DILocation(line: 1380, column: 1, scope: !2943)
!2953 = distinct !DISubprogram(name: "gimple_use_ops", scope: !396, file: !396, line: 1313, type: !2954, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!1170, !2806}
!2956 = !{!2957}
!2957 = !DILocalVariable(name: "g", arg: 1, scope: !2953, file: !396, line: 1313, type: !2806)
!2958 = !DILocation(line: 0, scope: !2953)
!2959 = !DILocation(line: 1315, column: 8, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2953, file: !396, line: 1315, column: 7)
!2961 = !DILocation(line: 1315, column: 7, scope: !2953)
!2962 = !DILocation(line: 1317, column: 26, scope: !2953)
!2963 = !DILocation(line: 1317, column: 3, scope: !2953)
!2964 = !DILocation(line: 1318, column: 1, scope: !2953)
!2965 = distinct !DISubprogram(name: "gimple_vuse", scope: !396, file: !396, line: 1365, type: !2885, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2966)
!2966 = !{!2967}
!2967 = !DILocalVariable(name: "g", arg: 1, scope: !2965, file: !396, line: 1365, type: !2806)
!2968 = !DILocation(line: 0, scope: !2965)
!2969 = !DILocation(line: 1367, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2965, file: !396, line: 1367, column: 7)
!2971 = !DILocation(line: 1367, column: 7, scope: !2965)
!2972 = !DILocation(line: 1369, column: 23, scope: !2965)
!2973 = !DILocation(line: 1369, column: 3, scope: !2965)
!2974 = !DILocation(line: 1370, column: 1, scope: !2965)
!2975 = distinct !DISubprogram(name: "gimple_has_ops", scope: !396, file: !396, line: 1274, type: !2976, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!462, !2806}
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "g", arg: 1, scope: !2975, file: !396, line: 1274, type: !2806)
!2980 = !DILocation(line: 0, scope: !2975)
!2981 = !DILocation(line: 1276, column: 10, scope: !2975)
!2982 = !DILocation(line: 1276, column: 26, scope: !2975)
!2983 = !DILocation(line: 1276, column: 41, scope: !2975)
!2984 = !DILocation(line: 1276, column: 44, scope: !2975)
!2985 = !DILocation(line: 1276, column: 60, scope: !2975)
!2986 = !DILocation(line: 1276, column: 3, scope: !2975)
!2987 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !396, file: !396, line: 1283, type: !2976, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2988)
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "g", arg: 1, scope: !2987, file: !396, line: 1283, type: !2806)
!2990 = !DILocation(line: 0, scope: !2987)
!2991 = !DILocation(line: 1285, column: 10, scope: !2987)
!2992 = !DILocation(line: 1285, column: 26, scope: !2987)
!2993 = !DILocation(line: 1285, column: 43, scope: !2987)
!2994 = !DILocation(line: 1285, column: 46, scope: !2987)
!2995 = !DILocation(line: 1285, column: 62, scope: !2987)
!2996 = !DILocation(line: 1285, column: 3, scope: !2987)
!2997 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2813, file: !2813, line: 427, type: !2998, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3003)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!554, !3000}
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !389, line: 30, baseType: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !149, line: 1893, baseType: !1175)
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "use", arg: 1, scope: !2997, file: !2813, line: 427, type: !3000)
!3005 = !DILocation(line: 0, scope: !2997)
!3006 = !DILocation(line: 429, column: 17, scope: !2997)
!3007 = !DILocation(line: 429, column: 10, scope: !2997)
!3008 = !DILocation(line: 429, column: 3, scope: !2997)
!3009 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2813, file: !2813, line: 434, type: !3010, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3013)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!554, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !389, line: 27, baseType: !1168)
!3013 = !{!3014}
!3014 = !DILocalVariable(name: "def", arg: 1, scope: !3009, file: !2813, line: 434, type: !3012)
!3015 = !DILocation(line: 0, scope: !3009)
!3016 = !DILocation(line: 436, column: 10, scope: !3009)
!3017 = !DILocation(line: 436, column: 3, scope: !3009)
!3018 = distinct !DISubprogram(name: "gimple_op", scope: !396, file: !396, line: 1631, type: !3019, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!554, !2806, !5}
!3021 = !{!3022, !3023}
!3022 = !DILocalVariable(name: "gs", arg: 1, scope: !3018, file: !396, line: 1631, type: !2806)
!3023 = !DILocalVariable(name: "i", arg: 2, scope: !3018, file: !396, line: 1631, type: !5)
!3024 = !DILocation(line: 0, scope: !3018)
!3025 = !DILocation(line: 1633, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3018, file: !396, line: 1633, column: 7)
!3027 = !DILocation(line: 1633, column: 7, scope: !3018)
!3028 = !DILocation(line: 1638, column: 14, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3026, file: !396, line: 1634, column: 5)
!3030 = !DILocation(line: 1638, column: 7, scope: !3029)
!3031 = !DILocation(line: 0, scope: !3026)
!3032 = !DILocation(line: 1642, column: 1, scope: !3018)
!3033 = distinct !DISubprogram(name: "gimple_ops", scope: !396, file: !396, line: 1614, type: !3034, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!1168, !529}
!3036 = !{!3037, !3038}
!3037 = !DILocalVariable(name: "gs", arg: 1, scope: !3033, file: !396, line: 1614, type: !529)
!3038 = !DILocalVariable(name: "off", scope: !3033, file: !396, line: 1616, type: !1077)
!3039 = !DILocation(line: 0, scope: !3033)
!3040 = !DILocation(line: 1621, column: 28, scope: !3033)
!3041 = !DILocation(line: 1621, column: 9, scope: !3033)
!3042 = !DILocation(line: 1622, column: 3, scope: !3033)
!3043 = !DILocation(line: 1624, column: 20, scope: !3033)
!3044 = !DILocation(line: 1624, column: 32, scope: !3033)
!3045 = !DILocation(line: 1624, column: 10, scope: !3033)
!3046 = !DILocation(line: 1624, column: 3, scope: !3033)
!3047 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !396, file: !396, line: 1073, type: !3048, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!434, !529}
!3050 = !{!3051}
!3051 = !DILocalVariable(name: "gs", arg: 1, scope: !3047, file: !396, line: 1073, type: !529)
!3052 = !DILocation(line: 0, scope: !3047)
!3053 = !DILocation(line: 1075, column: 24, scope: !3047)
!3054 = !DILocation(line: 1075, column: 10, scope: !3047)
!3055 = !DILocation(line: 1075, column: 3, scope: !3047)
!3056 = distinct !DISubprogram(name: "gss_for_code", scope: !396, file: !396, line: 1061, type: !3057, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!434, !395}
!3059 = !{!3060}
!3060 = !DILocalVariable(name: "code", arg: 1, scope: !3056, file: !396, line: 1061, type: !395)
!3061 = !DILocation(line: 0, scope: !3056)
!3062 = !DILocation(line: 1066, column: 10, scope: !3056)
!3063 = !DILocation(line: 1066, column: 3, scope: !3056)
!3064 = distinct !DISubprogram(name: "single_pred_p", scope: !133, file: !133, line: 634, type: !3065, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3070)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!462, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !509, line: 112, baseType: !3068)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!3070 = !{!3071}
!3071 = !DILocalVariable(name: "bb", arg: 1, scope: !3064, file: !133, line: 634, type: !3067)
!3072 = !DILocation(line: 0, scope: !3064)
!3073 = !DILocation(line: 636, column: 10, scope: !3064)
!3074 = !DILocation(line: 636, column: 33, scope: !3064)
!3075 = !DILocation(line: 636, column: 3, scope: !3064)
!3076 = distinct !DISubprogram(name: "single_pred_edge", scope: !133, file: !133, line: 653, type: !3077, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!508, !3067}
!3079 = !{!3080}
!3080 = !DILocalVariable(name: "bb", arg: 1, scope: !3076, file: !133, line: 653, type: !3067)
!3081 = !DILocation(line: 0, scope: !3076)
!3082 = !DILocation(line: 655, column: 3, scope: !3076)
!3083 = !DILocation(line: 656, column: 10, scope: !3076)
!3084 = !DILocation(line: 656, column: 3, scope: !3076)
!3085 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !133, file: !133, line: 150, type: !3086, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3090)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!5, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!3090 = !{!3091}
!3091 = !DILocalVariable(name: "vec_", arg: 1, scope: !3085, file: !133, line: 150, type: !3088)
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocation(line: 150, column: 1, scope: !3085)
!3094 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !133, file: !133, line: 150, type: !3095, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3097)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!508, !3088, !5}
!3097 = !{!3098, !3099}
!3098 = !DILocalVariable(name: "vec_", arg: 1, scope: !3094, file: !133, line: 150, type: !3088)
!3099 = !DILocalVariable(name: "ix_", arg: 2, scope: !3094, file: !133, line: 150, type: !5)
!3100 = !DILocation(line: 0, scope: !3094)
!3101 = !DILocation(line: 150, column: 1, scope: !3094)
