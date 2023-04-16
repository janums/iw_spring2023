; ModuleID = 'cfgloop.bc'
source_filename = "cfgloop.c"
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
%struct.pointer_set_t = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c"cfgloop.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c";;\0A;; Loop %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c";;  header %d, \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"latch %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"multiple latches:\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c";;  depth %d, outer %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c";;  nodes:\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c";; %d loops found\0A\00", align 1
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8
@.str.11 = private unnamed_addr constant [37 x i8] c"size of loop %d should be %d, not %d\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"bb %d do not belong to loop %d\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"loop %d's header does not have exactly 2 entries\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"loop %d's latch does not have exactly 1 successor\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"loop %d's latch does not have header as successor\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"loop %d's latch does not belong directly to it\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"loop %d's header does not belong directly to it\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"loop %d's latch is marked as part of irreducible region\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"basic block %d should be marked irreducible\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"basic block %d should not be marked irreducible\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"edge from %d to %d should be marked irreducible\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"edge from %d to %d should not be marked irreducible\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"corrupted head of the exits list of loop %d\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"corrupted exits list of loop %d\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"nonempty exits list of loop %d, but exits are not recorded\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Exit %d->%d not recorded\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Wrong list of exited loops for edge  %d->%d\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Too many loop exits recorded\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"%d exits recorded for loop %d (having %d exits)\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c";; %d succs { \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.34 = private unnamed_addr constant [46 x i8] c"Disambiguating loop %d with multiple latches\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"Found latch edge %d -> %d using profile information.\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Found latch edge %d -> %d using iv structure.\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@mfb_reis_set = internal unnamed_addr global %struct.pointer_set_t* null, align 8, !dbg !0
@.str.38 = private unnamed_addr constant [31 x i8] c"Merged latch edges of loop %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Edge %d->%d exits %u loops\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1874 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1887, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1888, metadata !DIExpression()), !dbg !1889
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1890
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1891
  ret i32 %call, !dbg !1892
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1893 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1897
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1898
  ret i32 %call, !dbg !1899
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1904, metadata !DIExpression()), !dbg !1905
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1906
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1906
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1906
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1906
  %cmp = icmp uge i8* %0, %1, !dbg !1906
  %conv1 = zext i1 %cmp to i64, !dbg !1906
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1906
  %tobool = icmp eq i64 %expval, 0, !dbg !1906
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1906

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1906
  br label %cond.end, !dbg !1906

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1906
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1906
  %2 = load i8, i8* %0, align 1, !dbg !1906
  %conv3 = zext i8 %2 to i32, !dbg !1906
  br label %cond.end, !dbg !1906

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1906
  ret i32 %cond, !dbg !1907
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1908 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1910, metadata !DIExpression()), !dbg !1911
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1912
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1912
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1912
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1912
  %cmp = icmp uge i8* %0, %1, !dbg !1912
  %conv1 = zext i1 %cmp to i64, !dbg !1912
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1912
  %tobool = icmp eq i64 %expval, 0, !dbg !1912
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1912

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1912
  br label %cond.end, !dbg !1912

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1912
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1912
  %2 = load i8, i8* %0, align 1, !dbg !1912
  %conv3 = zext i8 %2 to i32, !dbg !1912
  br label %cond.end, !dbg !1912

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1912
  ret i32 %cond, !dbg !1913
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1914 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1915
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1915
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1915
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1915
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1915
  %cmp = icmp uge i8* %1, %2, !dbg !1915
  %conv1 = zext i1 %cmp to i64, !dbg !1915
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1915
  %tobool = icmp eq i64 %expval, 0, !dbg !1915
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1915

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1915
  br label %cond.end, !dbg !1915

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1915
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1915
  %3 = load i8, i8* %1, align 1, !dbg !1915
  %conv3 = zext i8 %3 to i32, !dbg !1915
  br label %cond.end, !dbg !1915

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1915
  ret i32 %cond, !dbg !1916
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1921, metadata !DIExpression()), !dbg !1922
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1923
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1924
  ret i32 %call, !dbg !1925
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1926 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1931, metadata !DIExpression()), !dbg !1932
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1933
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1933
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1933
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1933
  %cmp = icmp uge i8* %0, %1, !dbg !1933
  %conv1 = zext i1 %cmp to i64, !dbg !1933
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1933
  %tobool = icmp eq i64 %expval, 0, !dbg !1933
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1933

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1933
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1933
  br label %cond.end, !dbg !1933

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1933
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1933
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1933
  store i8 %conv2, i8* %0, align 1, !dbg !1933
  %conv6 = and i32 %__c, 255, !dbg !1933
  br label %cond.end, !dbg !1933

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1933
  ret i32 %cond, !dbg !1934
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1935 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1937, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1938, metadata !DIExpression()), !dbg !1939
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1940
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1940
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1940
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1940
  %cmp = icmp uge i8* %0, %1, !dbg !1940
  %conv1 = zext i1 %cmp to i64, !dbg !1940
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1940
  %tobool = icmp eq i64 %expval, 0, !dbg !1940
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1940

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1940
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1940
  br label %cond.end, !dbg !1940

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1940
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1940
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1940
  store i8 %conv2, i8* %0, align 1, !dbg !1940
  %conv6 = and i32 %__c, 255, !dbg !1940
  br label %cond.end, !dbg !1940

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1940
  ret i32 %cond, !dbg !1941
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1942 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1944, metadata !DIExpression()), !dbg !1945
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1946
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1946
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1946
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1946
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1946
  %cmp = icmp uge i8* %1, %2, !dbg !1946
  %conv1 = zext i1 %cmp to i64, !dbg !1946
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1946
  %tobool = icmp eq i64 %expval, 0, !dbg !1946
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1946

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1946
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1946
  br label %cond.end, !dbg !1946

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1946
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1946
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1946
  store i8 %conv4, i8* %1, align 1, !dbg !1946
  %conv6 = and i32 %__c, 255, !dbg !1946
  br label %cond.end, !dbg !1946

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1946
  ret i32 %cond, !dbg !1947
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1948 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1954, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1955, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1956, metadata !DIExpression()), !dbg !1957
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1958
  ret i64 %call, !dbg !1959
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1960 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1962, metadata !DIExpression()), !dbg !1963
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1964
  %0 = load i32, i32* %_flags, align 8, !dbg !1964
  %and = lshr i32 %0, 4, !dbg !1964
  %and.lobit = and i32 %and, 1, !dbg !1964
  ret i32 %and.lobit, !dbg !1965
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1966 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1968, metadata !DIExpression()), !dbg !1969
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1970
  %0 = load i32, i32* %_flags, align 8, !dbg !1970
  %and = lshr i32 %0, 5, !dbg !1970
  %and.lobit = and i32 %and, 1, !dbg !1970
  ret i32 %and.lobit, !dbg !1971
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1972 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1975, metadata !DIExpression()), !dbg !1976
  %__c.off = add i32 %__c, 128, !dbg !1977
  %0 = icmp ult i32 %__c.off, 384, !dbg !1977
  br i1 %0, label %cond.true, label %cond.end, !dbg !1977

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1978
  %1 = load i32*, i32** %call, align 8, !dbg !1979
  %idxprom = sext i32 %__c to i64, !dbg !1980
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1980
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1980
  br label %cond.end, !dbg !1981

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1981
  ret i32 %cond, !dbg !1982
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1985, metadata !DIExpression()), !dbg !1986
  %__c.off = add i32 %__c, 128, !dbg !1987
  %0 = icmp ult i32 %__c.off, 384, !dbg !1987
  br i1 %0, label %cond.true, label %cond.end, !dbg !1987

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1988
  %1 = load i32*, i32** %call, align 8, !dbg !1989
  %idxprom = sext i32 %__c to i64, !dbg !1990
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1990
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1990
  br label %cond.end, !dbg !1991

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1991
  ret i32 %cond, !dbg !1992
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1993 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1998, metadata !DIExpression()), !dbg !1999
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2000
  %conv = trunc i64 %call to i32, !dbg !2001
  ret i32 %conv, !dbg !2002
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2003 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2007, metadata !DIExpression()), !dbg !2008
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2009
  ret i64 %call, !dbg !2010
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2016, metadata !DIExpression()), !dbg !2017
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2018
  ret i64 %call, !dbg !2019
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2020 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2026, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2027, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2028, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 0, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2032, metadata !DIExpression()), !dbg !2036
  br label %while.cond, !dbg !2037

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2038
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2031, metadata !DIExpression()), !dbg !2036
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2039
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2037

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2040
  %div = lshr i64 %add, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %div, metadata !2033, metadata !DIExpression()), !dbg !2036
  %mul = mul i64 %div, %__size, !dbg !2043
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2044
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2034, metadata !DIExpression()), !dbg !2036
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %call, metadata !2035, metadata !DIExpression()), !dbg !2036
  %cmp1 = icmp slt i32 %call, 0, !dbg !2046
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2048

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2049
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2051

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2031, metadata !DIExpression()), !dbg !2036
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2036
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2031, metadata !DIExpression()), !dbg !2036
  br label %while.cond, !dbg !2037, !llvm.loop !2053

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2036
  ret i8* %retval.0, !dbg !2055
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2062, metadata !DIExpression()), !dbg !2063
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2064
  ret double %call, !dbg !2065
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2075, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %base, metadata !2077, metadata !DIExpression()), !dbg !2078
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2079
  ret i64 %call, !dbg !2080
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2081 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2087, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %base, metadata !2089, metadata !DIExpression()), !dbg !2090
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2091
  ret i64 %call, !dbg !2092
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2104, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i32 %base, metadata !2106, metadata !DIExpression()), !dbg !2107
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2108
  ret i64 %call, !dbg !2109
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2110 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2114, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %base, metadata !2116, metadata !DIExpression()), !dbg !2117
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2118
  ret i64 %call, !dbg !2119
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2120 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2161, metadata !DIExpression()), !dbg !2162
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2163
  ret i32 %call, !dbg !2164
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2167, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2168, metadata !DIExpression()), !dbg !2169
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2170
  ret i32 %call, !dbg !2171
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2176, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2177, metadata !DIExpression()), !dbg !2178
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2179
  ret i32 %call, !dbg !2180
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2181 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2185, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2186, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2188, metadata !DIExpression()), !dbg !2189
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2190
  ret i32 %call, !dbg !2191
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2192 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2198, metadata !DIExpression(DW_OP_deref)), !dbg !2199
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2200
  ret i32 %call, !dbg !2201
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2202 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2206, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2209, metadata !DIExpression()), !dbg !2210
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2209, metadata !DIExpression(DW_OP_deref)), !dbg !2210
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2211
  ret i32 %call, !dbg !2212
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2238, metadata !DIExpression()), !dbg !2239
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2240
  ret i32 %call, !dbg !2241
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2242 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2247
  ret i32 %call, !dbg !2248
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2253, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2254, metadata !DIExpression()), !dbg !2255
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2256
  ret i32 %call, !dbg !2257
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2258 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2262, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2263, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2265, metadata !DIExpression()), !dbg !2266
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2267
  ret i32 %call, !dbg !2268
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @flow_loop_nested_p(%struct.loop* %outer, %struct.loop* %loop) local_unnamed_addr #5 !dbg !2269 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %outer, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2274, metadata !DIExpression()), !dbg !2276
  %call = tail call fastcc i32 @loop_depth(%struct.loop* %outer) #7, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %call, metadata !2275, metadata !DIExpression()), !dbg !2276
  %call1 = tail call fastcc i32 @loop_depth(%struct.loop* %loop) #7, !dbg !2278
  %cmp = icmp ugt i32 %call1, %call, !dbg !2279
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2280

land.rhs:                                         ; preds = %entry
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2281
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2281
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2281
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2281

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2281
  br label %cond.end, !dbg !2281

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !2281
  %call3 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %call) #7, !dbg !2281
  %cmp4 = icmp eq %struct.loop* %call3, %outer, !dbg !2282
  %phitmp = zext i1 %cmp4 to i8
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = phi i8 [ 0, %entry ], [ %phitmp, %cond.end ]
  ret i8 %1, !dbg !2283
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @loop_depth(%struct.loop* %loop) unnamed_addr #0 !dbg !2284 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2288, metadata !DIExpression()), !dbg !2289
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2290
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2290
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2290
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2290

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2290
  br label %cond.end, !dbg !2290

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2290
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !2290
  ret i32 %call, !dbg !2291
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2292 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2299, metadata !DIExpression()), !dbg !2300
  br label %land.end, !dbg !2301

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2301
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2301
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2301
  ret %struct.loop* %0, !dbg !2301
}

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @superloop_at_depth(%struct.loop* %loop, i32 %depth) local_unnamed_addr #5 !dbg !2302 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %depth, metadata !2307, metadata !DIExpression()), !dbg !2309
  %call = tail call fastcc i32 @loop_depth(%struct.loop* %loop) #7, !dbg !2310
  call void @llvm.dbg.value(metadata i32 %call, metadata !2308, metadata !DIExpression()), !dbg !2309
  %cmp = icmp ult i32 %call, %depth, !dbg !2311
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2311

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2311
  br label %cond.end, !dbg !2311

cond.end:                                         ; preds = %entry, %cond.true
  %cmp1 = icmp eq i32 %call, %depth, !dbg !2312
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !2314

if.end:                                           ; preds = %cond.end
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2315
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2315
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2315
  br i1 %tobool, label %cond.end5, label %cond.true2, !dbg !2315

cond.true2:                                       ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2315
  br label %cond.end5, !dbg !2315

cond.end5:                                        ; preds = %if.end, %cond.true2
  %cond6 = phi %struct.VEC_loop_p_base* [ %base, %cond.true2 ], [ null, %if.end ], !dbg !2315
  %call7 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond6, i32 %depth) #7, !dbg !2315
  br label %cleanup, !dbg !2316

cleanup:                                          ; preds = %cond.end, %cond.end5
  %retval.0 = phi %struct.loop* [ %call7, %cond.end5 ], [ %loop, %cond.end ], !dbg !2309
  ret %struct.loop* %retval.0, !dbg !2317
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @flow_loop_dump(%struct.loop* %loop, %struct._IO_FILE* %file, void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, i32 %verbose) local_unnamed_addr #5 !dbg !2318 {
entry:
  %latches = alloca %struct.VEC_edge_heap*, align 8
  %e = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2325, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2326, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, metadata !2327, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !2328, metadata !DIExpression()), !dbg !2333
  %0 = bitcast %struct.VEC_edge_heap** %latches to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2334
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2335
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2335
  %tobool = icmp eq %struct.loop* %loop, null, !dbg !2336
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !2338

lor.lhs.false:                                    ; preds = %entry
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2339
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2339
  %tobool1 = icmp eq %struct.basic_block_def* %2, null, !dbg !2340
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !2341

if.end:                                           ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !2342
  %3 = load i32, i32* %num, align 8, !dbg !2342
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %3) #6, !dbg !2343
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2344
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !2345
  %5 = load i32, i32* %index, align 8, !dbg !2345
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %5) #6, !dbg !2346
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2347
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2347
  %tobool4 = icmp eq %struct.basic_block_def* %6, null, !dbg !2349
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !2350

if.then5:                                         ; preds = %if.end
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !2351
  %7 = load i32, i32* %index7, align 8, !dbg !2351
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %7) #6, !dbg !2352
  br label %if.end17, !dbg !2352

if.else:                                          ; preds = %if.end
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2353
  %call10 = tail call fastcc %struct.VEC_edge_heap* @get_loop_latch_edges(%struct.loop* nonnull %loop) #7, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call10, metadata !2331, metadata !DIExpression()), !dbg !2333
  store %struct.VEC_edge_heap* %call10, %struct.VEC_edge_heap** %latches, align 8, !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !2330, metadata !DIExpression()), !dbg !2333
  br label %for.cond, !dbg !2357

for.cond:                                         ; preds = %for.body, %if.else
  %8 = phi %struct.VEC_edge_heap* [ %call10, %if.else ], [ %.pre, %for.body ], !dbg !2359
  %i.0 = phi i32 [ 0, %if.else ], [ %inc, %for.body ], !dbg !2361
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %8, metadata !2331, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %8, metadata !2331, metadata !DIExpression()), !dbg !2333
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %8, i64 0, i32 0, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2332, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  %call12 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.0, %struct.edge_def** nonnull %e) #7, !dbg !2359
  %tobool13 = icmp eq i32 %call12, 0, !dbg !2362
  br i1 %tobool13, label %for.end, label %for.body, !dbg !2362

for.body:                                         ; preds = %for.cond
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2363
  call void @llvm.dbg.value(metadata %struct.edge_def* %9, metadata !2332, metadata !DIExpression()), !dbg !2333
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i64 0, i32 0, !dbg !2364
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2364
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !2365
  %11 = load i32, i32* %index14, align 8, !dbg !2365
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %11) #6, !dbg !2366
  %inc = add i32 %i.0, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2330, metadata !DIExpression()), !dbg !2333
  %.pre = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %latches, align 8, !dbg !2359
  br label %for.cond, !dbg !2368, !llvm.loop !2369

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %latches, metadata !2331, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %latches) #7, !dbg !2371
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2372
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.then5
  %call18 = call fastcc i32 @loop_depth(%struct.loop* nonnull %loop) #7, !dbg !2373
  %call19 = call fastcc %struct.loop* @loop_outer(%struct.loop* nonnull %loop) #7, !dbg !2374
  %tobool20 = icmp eq %struct.loop* %call19, null, !dbg !2374
  br i1 %tobool20, label %cond.end25, label %cond.true21, !dbg !2374

cond.true21:                                      ; preds = %if.end17
  %call22 = call fastcc %struct.loop* @loop_outer(%struct.loop* nonnull %loop) #7, !dbg !2375
  %num23 = getelementptr inbounds %struct.loop, %struct.loop* %call22, i64 0, i32 0, !dbg !2376
  %12 = load i32, i32* %num23, align 8, !dbg !2376
  %phitmp = sext i32 %12 to i64, !dbg !2374
  br label %cond.end25, !dbg !2374

cond.end25:                                       ; preds = %if.end17, %cond.true21
  %cond26 = phi i64 [ %phitmp, %cond.true21 ], [ -1, %if.end17 ]
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %call18, i64 %cond26) #6, !dbg !2377
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2378
  %call29 = call %struct.basic_block_def** @get_loop_body(%struct.loop* nonnull %loop) #7, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call29, metadata !2329, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 0, metadata !2330, metadata !DIExpression()), !dbg !2333
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2380
  br label %for.cond30, !dbg !2383

for.cond30:                                       ; preds = %for.body32, %cond.end25
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body32 ], [ 0, %cond.end25 ], !dbg !2384
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2330, metadata !DIExpression()), !dbg !2333
  %13 = load i32, i32* %num_nodes, align 4, !dbg !2385
  %14 = zext i32 %13 to i64, !dbg !2386
  %cmp = icmp ult i64 %indvars.iv, %14, !dbg !2386
  br i1 %cmp, label %for.body32, label %for.end37, !dbg !2387

for.body32:                                       ; preds = %for.cond30
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call29, i64 %indvars.iv, !dbg !2388
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2388
  %index33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 9, !dbg !2389
  %16 = load i32, i32* %index33, align 8, !dbg !2389
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %16) #6, !dbg !2390
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2391
  br label %for.cond30, !dbg !2392, !llvm.loop !2393

for.end37:                                        ; preds = %for.cond30
  %17 = bitcast %struct.basic_block_def** %call29 to i8*, !dbg !2395
  call void @free(i8* %17) #6, !dbg !2396
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2397
  %tobool39 = icmp eq void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, null, !dbg !2398
  br i1 %tobool39, label %cleanup, label %if.then40, !dbg !2400

if.then40:                                        ; preds = %for.end37
  call void %loop_dump_aux(%struct.loop* nonnull %loop, %struct._IO_FILE* %file, i32 %verbose) #6, !dbg !2401
  br label %cleanup, !dbg !2401

cleanup:                                          ; preds = %for.end37, %lor.lhs.false, %entry, %if.then40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2402
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2402
  ret void, !dbg !2402
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.VEC_edge_heap* @get_loop_latch_edges(%struct.loop* %loop) unnamed_addr #5 !dbg !2403 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ret = alloca %struct.VEC_edge_heap*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2407, metadata !DIExpression()), !dbg !2417
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2418
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2418
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2419
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2419
  %2 = bitcast %struct.VEC_edge_heap** %ret to i8*, !dbg !2420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !2416, metadata !DIExpression()), !dbg !2417
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %ret, align 8, !dbg !2421
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2422
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2422
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2422
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2422
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 0, !dbg !2422
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2422
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2422
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2422
  store i32 %6, i32* %5, align 8, !dbg !2422
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2422
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2422
  store %struct.VEC_edge_gc** %8, %struct.VEC_edge_gc*** %7, align 8, !dbg !2422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2422
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2424
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2424
  br label %for.cond, !dbg !2422

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %9, align 8, !dbg !2426
  %12 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !2426
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2415, metadata !DIExpression(DW_OP_deref)), !dbg !2417
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %11, %struct.VEC_edge_gc** %12, %struct.edge_def** nonnull %e) #7, !dbg !2426
  %tobool = icmp eq i8 %call1, 0, !dbg !2422
  br i1 %tobool, label %for.end, label %for.body, !dbg !2422

for.body:                                         ; preds = %for.cond
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2427
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !2415, metadata !DIExpression()), !dbg !2417
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i64 0, i32 0, !dbg !2430
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2430
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2431
  %call3 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %14, %struct.basic_block_def* %15) #6, !dbg !2432
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2432
  br i1 %tobool4, label %for.inc, label %if.then, !dbg !2433

if.then:                                          ; preds = %for.body
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %ret, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2417
  %call5 = call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull %ret, %struct.edge_def* %16) #7, !dbg !2434
  br label %for.inc, !dbg !2434

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2408, metadata !DIExpression(DW_OP_deref)), !dbg !2417
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2426
  br label %for.cond, !dbg !2426, !llvm.loop !2435

for.end:                                          ; preds = %for.cond
  %17 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %ret, align 8, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %17, metadata !2416, metadata !DIExpression()), !dbg !2417
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2438
  ret %struct.VEC_edge_heap* %17, !dbg !2439
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %vec_, i32 %ix_, %struct.edge_def** %ptr) unnamed_addr #0 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.edge_def** %ptr, metadata !2449, metadata !DIExpression()), !dbg !2450
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2451
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2451

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2451
  %0 = load i32, i32* %num, align 8, !dbg !2451
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2451
  br i1 %cmp, label %if.then, label %if.else, !dbg !2453

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2454
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2454
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2454
  br label %return, !dbg !2454

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2456

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ null, %if.else ], [ %1, %if.then ], !dbg !2458
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2458
  store %struct.edge_def* %storemerge, %struct.edge_def** %ptr, align 8, !dbg !2458
  ret i32 %retval.0, !dbg !2453
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !2459 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !2464, metadata !DIExpression()), !dbg !2465
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !2466
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !2466
  br i1 %tobool, label %if.end, label %if.then, !dbg !2468

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !2468
  tail call void @free(i8* nonnull %1) #6, !dbg !2466
  br label %if.end, !dbg !2466

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %vec_, align 8, !dbg !2468
  ret void, !dbg !2468
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2469 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2473, metadata !DIExpression()), !dbg !2475
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2476
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2476
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2476
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2476

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2476
  br label %cond.end, !dbg !2476

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2476
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %call, metadata !2474, metadata !DIExpression()), !dbg !2475
  %cmp = icmp eq i32 %call, 0, !dbg !2477
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2479

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2480
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2480
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2480

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2480
  br label %cond.end8, !dbg !2480

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2480
  %sub = add i32 %call, -1, !dbg !2480
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #7, !dbg !2480
  br label %cleanup, !dbg !2481

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2475
  ret %struct.loop* %retval.0, !dbg !2482
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) local_unnamed_addr #5 !dbg !2483 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2487, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 0, metadata !2490, metadata !DIExpression()), !dbg !2491
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2492
  %0 = load i32, i32* %num_nodes, align 4, !dbg !2492
  %tobool = icmp eq i32 %0, 0, !dbg !2492
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2492

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 818, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2492
  %.pre = load i32, i32* %num_nodes, align 4, !dbg !2493
  br label %cond.end, !dbg !2492

cond.end:                                         ; preds = %entry, %cond.true
  %1 = phi i32 [ %0, %entry ], [ %.pre, %cond.true ], !dbg !2493
  %conv = zext i32 %1 to i64, !dbg !2493
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2493
  %2 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %2, metadata !2488, metadata !DIExpression()), !dbg !2491
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2494
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2494
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2496
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2496
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2496
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2496
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2496
  %cmp = icmp eq %struct.basic_block_def* %3, %6, !dbg !2497
  %7 = load i32, i32* %num_nodes, align 4, !dbg !2498
  br i1 %cmp, label %if.then, label %if.else, !dbg !2499

if.then:                                          ; preds = %cond.end
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 3, !dbg !2500
  %8 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2500
  %cmp6 = icmp eq i32 %7, %8, !dbg !2500
  br i1 %cmp6, label %cond.end10, label %cond.true8, !dbg !2500

cond.true8:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 826, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2500
  br label %cond.end10, !dbg !2500

cond.end10:                                       ; preds = %if.then, %cond.true8
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2502
  %9 = bitcast %struct.basic_block_def** %header to i64*, !dbg !2502
  %10 = load i64, i64* %9, align 8, !dbg !2502
  call void @llvm.dbg.value(metadata i32 1, metadata !2490, metadata !DIExpression()), !dbg !2491
  %11 = bitcast i8* %call to i64*, !dbg !2503
  store i64 %10, i64* %11, align 8, !dbg !2503
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2504
  %cfg13 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !2504
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13, align 8, !dbg !2504
  %x_exit_block_ptr14 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 1, !dbg !2504
  %14 = bitcast %struct.basic_block_def** %x_exit_block_ptr14 to i64*, !dbg !2504
  %15 = load i64, i64* %14, align 8, !dbg !2504
  call void @llvm.dbg.value(metadata i32 2, metadata !2490, metadata !DIExpression()), !dbg !2491
  %arrayidx17 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2505
  %16 = bitcast i8* %arrayidx17 to i64*, !dbg !2506
  store i64 %15, i64* %16, align 8, !dbg !2506
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13, align 8, !dbg !2507
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 0, !dbg !2507
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2507
  br label %for.cond, !dbg !2507

for.cond:                                         ; preds = %for.body, %cond.end10
  %19 = phi %struct.control_flow_graph* [ %17, %cond.end10 ], [ %.pre2, %for.body ], !dbg !2509
  %.pn = phi %struct.basic_block_def* [ %18, %cond.end10 ], [ %bb.0, %for.body ]
  %tv.0 = phi i32 [ 2, %cond.end10 ], [ %inc25, %for.body ], !dbg !2511
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2512
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %tv.0, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2489, metadata !DIExpression()), !dbg !2491
  %x_exit_block_ptr22 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 1, !dbg !2509
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr22, align 8, !dbg !2509
  %cmp23 = icmp eq %struct.basic_block_def* %bb.0, %20, !dbg !2509
  br i1 %cmp23, label %if.end.loopexit, label %for.body, !dbg !2507

for.body:                                         ; preds = %for.cond
  %inc25 = add i32 %tv.0, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !2490, metadata !DIExpression()), !dbg !2491
  %idxprom26 = zext i32 %tv.0 to i64, !dbg !2514
  %arrayidx27 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %2, i64 %idxprom26, !dbg !2514
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %arrayidx27, align 8, !dbg !2515
  %.pre1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2509
  %cfg21.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre1, i64 0, i32 1, !dbg !2516
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21.phi.trans.insert, align 8, !dbg !2509
  br label %for.cond, !dbg !2509, !llvm.loop !2517

if.else:                                          ; preds = %cond.end
  %call30 = tail call i32 @get_loop_body_with_size(%struct.loop* %loop, %struct.basic_block_def** %2, i32 %7) #7, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %call30, metadata !2490, metadata !DIExpression()), !dbg !2491
  br label %if.end

if.end.loopexit:                                  ; preds = %for.cond
  %tv.0.lcssa = phi i32 [ %tv.0, %for.cond ], !dbg !2511
  call void @llvm.dbg.value(metadata i32 %tv.0.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %tv.0.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %tv.0.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2491
  br label %if.end, !dbg !2520

if.end:                                           ; preds = %if.end.loopexit, %if.else
  %tv.1 = phi i32 [ %call30, %if.else ], [ %tv.0.lcssa, %if.end.loopexit ], !dbg !2498
  call void @llvm.dbg.value(metadata i32 %tv.1, metadata !2490, metadata !DIExpression()), !dbg !2491
  %21 = load i32, i32* %num_nodes, align 4, !dbg !2520
  %cmp32 = icmp eq i32 %tv.1, %21, !dbg !2520
  br i1 %cmp32, label %cond.end36, label %cond.true34, !dbg !2520

cond.true34:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 835, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2520
  br label %cond.end36, !dbg !2520

cond.end36:                                       ; preds = %if.end, %cond.true34
  ret %struct.basic_block_def** %2, !dbg !2521
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @flow_loops_dump(%struct._IO_FILE* %file, void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, i32 %verbose) local_unnamed_addr #5 !dbg !2522 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2526, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, metadata !2527, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !2528, metadata !DIExpression()), !dbg !2536
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2537
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2537
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2538
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2539
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2539
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2539
  %tobool = icmp ne %struct.loops* %3, null, !dbg !2539
  %tobool1 = icmp ne %struct._IO_FILE* %file, null, !dbg !2541
  %or.cond = and i1 %tobool, %tobool1, !dbg !2542
  br i1 %or.cond, label %if.end, label %cleanup, !dbg !2542

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !2543
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %call) #6, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2529, metadata !DIExpression(DW_OP_deref)), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2535, metadata !DIExpression(DW_OP_deref)), !dbg !2536
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 1) #7, !dbg !2545
  br label %for.cond, !dbg !2545

for.cond:                                         ; preds = %for.body, %if.end
  %4 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2535, metadata !DIExpression()), !dbg !2536
  %tobool3 = icmp eq %struct.loop* %4, null, !dbg !2545
  br i1 %tobool3, label %for.end, label %for.body, !dbg !2545

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @flow_loop_dump(%struct.loop* nonnull %4, %struct._IO_FILE* nonnull %file, void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, i32 %verbose) #7, !dbg !2549
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2529, metadata !DIExpression(DW_OP_deref)), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2535, metadata !DIExpression(DW_OP_deref)), !dbg !2536
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !2547
  br label %for.cond, !dbg !2547, !llvm.loop !2551

for.end:                                          ; preds = %for.cond
  %tobool4 = icmp eq i32 %verbose, 0, !dbg !2553
  br i1 %tobool4, label %cleanup, label %if.then5, !dbg !2555

if.then5:                                         ; preds = %for.end
  call fastcc void @flow_loops_cfg_dump(%struct._IO_FILE* nonnull %file) #7, !dbg !2556
  br label %cleanup, !dbg !2556

cleanup:                                          ; preds = %for.end, %if.then5, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2557
  ret void, !dbg !2557
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2558 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2561
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2561
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2561
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2561
  br i1 %tobool, label %return, label %if.end, !dbg !2563

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2564
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2564
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2564
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2564

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2564
  br label %cond.end, !dbg !2564

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2564
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !2564
  br label %return, !dbg !2565

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2566
  ret i32 %retval.0, !dbg !2567
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2568 {
entry:
  %aloop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2574, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2575, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2576, metadata !DIExpression()), !dbg !2580
  %0 = bitcast %struct.loop** %aloop to i8*, !dbg !2581
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2581
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2582
  store i32 0, i32* %idx, align 8, !dbg !2583
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2584
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 4, !dbg !2584
  %2 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2584
  %tobool = icmp eq %struct.loops* %2, null, !dbg !2584
  br i1 %tobool, label %if.then, label %if.end, !dbg !2586

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2587
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2589
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2590
  br label %cleanup, !dbg !2591

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !2592
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #7, !dbg !2592
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2593
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2594
  %and = and i32 %flags, 1, !dbg !2595
  %3 = xor i32 %and, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %3, metadata !2579, metadata !DIExpression()), !dbg !2580
  %and4 = and i32 %flags, 4, !dbg !2597
  %tobool5 = icmp eq i32 %and4, 0, !dbg !2597
  br i1 %tobool5, label %if.else, label %for.cond.preheader, !dbg !2599

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !2600

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2603
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2578, metadata !DIExpression()), !dbg !2580
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2604
  %x_current_loops8 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !2604
  %5 = load %struct.loops*, %struct.loops** %x_current_loops8, align 8, !dbg !2604
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %5, i64 0, i32 1, !dbg !2604
  %6 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2604
  %tobool9 = icmp eq %struct.VEC_loop_p_gc* %6, null, !dbg !2604
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !2604

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %6, i64 0, i32 0, !dbg !2604
  br label %cond.end, !dbg !2604

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond13 = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2604
  call void @llvm.dbg.value(metadata %struct.loop** %aloop, metadata !2577, metadata !DIExpression(DW_OP_deref)), !dbg !2580
  %call14 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond13, i32 %i.0, %struct.loop** nonnull %aloop) #7, !dbg !2604
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2600
  br i1 %tobool15, label %if.end114.loopexit2, label %for.body, !dbg !2600

for.body:                                         ; preds = %cond.end
  %7 = load %struct.loop*, %struct.loop** %aloop, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2577, metadata !DIExpression()), !dbg !2580
  %cmp = icmp eq %struct.loop* %7, null, !dbg !2608
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !2609

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2577, metadata !DIExpression()), !dbg !2580
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 8, !dbg !2610
  %8 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2610
  %cmp16 = icmp eq %struct.loop* %8, null, !dbg !2611
  br i1 %cmp16, label %land.lhs.true17, label %for.inc, !dbg !2612

land.lhs.true17:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2577, metadata !DIExpression()), !dbg !2580
  %num = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 0, !dbg !2613
  %9 = load i32, i32* %num, align 8, !dbg !2613
  %cmp18 = icmp slt i32 %9, %3, !dbg !2614
  br i1 %cmp18, label %for.inc, label %if.then19, !dbg !2615

if.then19:                                        ; preds = %land.lhs.true17
  %10 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2616
  %tobool21 = icmp eq %struct.VEC_int_heap* %10, null, !dbg !2616
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !2616

cond.true22:                                      ; preds = %if.then19
  %base24 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %10, i64 0, i32 0, !dbg !2616
  br label %cond.end26, !dbg !2616

cond.end26:                                       ; preds = %if.then19, %cond.true22
  %cond27 = phi %struct.VEC_int_base* [ %base24, %cond.true22 ], [ null, %if.then19 ], !dbg !2616
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2577, metadata !DIExpression()), !dbg !2580
  %call29 = call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond27, i32 %9) #7, !dbg !2616
  br label %for.inc, !dbg !2616

for.inc:                                          ; preds = %land.lhs.true17, %for.body, %land.lhs.true, %cond.end26
  %inc = add i32 %i.0, 1, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2578, metadata !DIExpression()), !dbg !2580
  br label %for.cond, !dbg !2618, !llvm.loop !2619

if.else:                                          ; preds = %if.end
  %and31 = and i32 %flags, 2, !dbg !2621
  %tobool32 = icmp eq i32 %and31, 0, !dbg !2621
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2623
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 4, !dbg !2623
  %12 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2623
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %12, i64 0, i32 3, !dbg !2623
  %13 = bitcast %struct.loop** %tree_root to i64*, !dbg !2623
  %14 = load i64, i64* %13, align 8, !dbg !2623
  %15 = bitcast %struct.loop** %aloop to i64*, !dbg !2623
  store i64 %14, i64* %15, align 8, !dbg !2623
  %16 = inttoptr i64 %14 to %struct.loop*, !dbg !2624
  br i1 %tobool32, label %while.cond79.preheader, label %for.cond36.preheader, !dbg !2624

for.cond36.preheader:                             ; preds = %if.else
  br label %for.cond36, !dbg !2625

while.cond79.preheader:                           ; preds = %if.else
  br label %while.cond79, !dbg !2628

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc40
  %17 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %18 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %19 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %20 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %21 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %22 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ], !dbg !2630
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !2577, metadata !DIExpression()), !dbg !2580
  %inner37 = getelementptr inbounds %struct.loop, %struct.loop* %22, i64 0, i32 8, !dbg !2632
  %23 = load %struct.loop*, %struct.loop** %inner37, align 8, !dbg !2632
  %cmp38 = icmp eq %struct.loop* %23, null, !dbg !2633
  br i1 %cmp38, label %while.cond.preheader, label %for.inc40, !dbg !2625

while.cond.preheader:                             ; preds = %for.cond36
  %.lcssa16 = phi %struct.loop* [ %17, %for.cond36 ]
  %.lcssa15 = phi %struct.loop* [ %18, %for.cond36 ]
  %.lcssa14 = phi %struct.loop* [ %19, %for.cond36 ]
  %.lcssa13 = phi %struct.loop* [ %20, %for.cond36 ]
  br label %while.cond, !dbg !2634

for.inc40:                                        ; preds = %for.cond36
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2577, metadata !DIExpression()), !dbg !2580
  %inner41 = getelementptr inbounds %struct.loop, %struct.loop* %21, i64 0, i32 8, !dbg !2635
  %24 = bitcast %struct.loop** %inner41 to i64*, !dbg !2635
  %25 = load i64, i64* %24, align 8, !dbg !2635
  store i64 %25, i64* %15, align 8, !dbg !2636
  %26 = inttoptr i64 %25 to %struct.loop*, !dbg !2637
  br label %for.cond36, !dbg !2637, !llvm.loop !2638

while.cond:                                       ; preds = %while.cond.preheader, %if.end74
  %27 = phi %struct.loop* [ %.lcssa16, %while.cond.preheader ], [ %43, %if.end74 ]
  %28 = phi %struct.loop* [ %.lcssa15, %while.cond.preheader ], [ %44, %if.end74 ]
  %29 = phi %struct.loop* [ %.lcssa14, %while.cond.preheader ], [ %44, %if.end74 ]
  %30 = phi %struct.loop* [ %.lcssa13, %while.cond.preheader ], [ %44, %if.end74 ], !dbg !2640
  call void @llvm.dbg.value(metadata %struct.loop* %30, metadata !2577, metadata !DIExpression()), !dbg !2580
  %num43 = getelementptr inbounds %struct.loop, %struct.loop* %30, i64 0, i32 0, !dbg !2643
  %31 = load i32, i32* %num43, align 8, !dbg !2643
  %cmp44 = icmp slt i32 %31, %3, !dbg !2644
  br i1 %cmp44, label %if.end56, label %if.then45, !dbg !2645

if.then45:                                        ; preds = %while.cond
  %32 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2646
  %tobool47 = icmp eq %struct.VEC_int_heap* %32, null, !dbg !2646
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !2646

cond.true48:                                      ; preds = %if.then45
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %32, i64 0, i32 0, !dbg !2646
  br label %cond.end52, !dbg !2646

cond.end52:                                       ; preds = %if.then45, %cond.true48
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true48 ], [ null, %if.then45 ], !dbg !2646
  call void @llvm.dbg.value(metadata %struct.loop* %29, metadata !2577, metadata !DIExpression()), !dbg !2580
  %num54 = getelementptr inbounds %struct.loop, %struct.loop* %29, i64 0, i32 0, !dbg !2646
  %33 = load i32, i32* %num54, align 8, !dbg !2646
  %call55 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond53, i32 %33) #7, !dbg !2646
  br label %if.end56, !dbg !2646

if.end56:                                         ; preds = %while.cond, %cond.end52
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !2577, metadata !DIExpression()), !dbg !2580
  %next = getelementptr inbounds %struct.loop, %struct.loop* %28, i64 0, i32 9, !dbg !2647
  %34 = load %struct.loop*, %struct.loop** %next, align 8, !dbg !2647
  %tobool57 = icmp eq %struct.loop* %34, null, !dbg !2649
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !2577, metadata !DIExpression()), !dbg !2580
  br i1 %tobool57, label %if.else67, label %if.then58, !dbg !2650

if.then58:                                        ; preds = %if.end56
  %35 = ptrtoint %struct.loop* %34 to i64, !dbg !2650
  store i64 %35, i64* %15, align 8, !dbg !2651
  br label %for.cond60, !dbg !2654

for.cond60:                                       ; preds = %for.inc64, %if.then58
  %36 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %37 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %38 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ], !dbg !2655
  call void @llvm.dbg.value(metadata %struct.loop* %38, metadata !2577, metadata !DIExpression()), !dbg !2580
  %inner61 = getelementptr inbounds %struct.loop, %struct.loop* %38, i64 0, i32 8, !dbg !2657
  %39 = load %struct.loop*, %struct.loop** %inner61, align 8, !dbg !2657
  %cmp62 = icmp eq %struct.loop* %39, null, !dbg !2658
  br i1 %cmp62, label %if.end74.loopexit, label %for.inc64, !dbg !2659

for.inc64:                                        ; preds = %for.cond60
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !2577, metadata !DIExpression()), !dbg !2580
  %inner65 = getelementptr inbounds %struct.loop, %struct.loop* %37, i64 0, i32 8, !dbg !2660
  %40 = bitcast %struct.loop** %inner65 to i64*, !dbg !2660
  %41 = load i64, i64* %40, align 8, !dbg !2660
  store i64 %41, i64* %15, align 8, !dbg !2661
  %42 = inttoptr i64 %41 to %struct.loop*, !dbg !2662
  br label %for.cond60, !dbg !2662, !llvm.loop !2663

if.else67:                                        ; preds = %if.end56
  %call68 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %28) #7, !dbg !2665
  %tobool69 = icmp eq %struct.loop* %call68, null, !dbg !2665
  br i1 %tobool69, label %if.end114.loopexit1, label %if.else71, !dbg !2667

if.else71:                                        ; preds = %if.else67
  call void @llvm.dbg.value(metadata %struct.loop* %27, metadata !2577, metadata !DIExpression()), !dbg !2580
  %call72 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %27) #7, !dbg !2668
  call void @llvm.dbg.value(metadata %struct.loop* %call72, metadata !2577, metadata !DIExpression()), !dbg !2580
  store %struct.loop* %call72, %struct.loop** %aloop, align 8, !dbg !2669
  br label %if.end74

if.end74.loopexit:                                ; preds = %for.cond60
  %.lcssa12 = phi %struct.loop* [ %36, %for.cond60 ]
  %.lcssa11 = phi %struct.loop* [ %38, %for.cond60 ], !dbg !2655
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !2577, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !2577, metadata !DIExpression()), !dbg !2580
  br label %if.end74, !dbg !2634

if.end74:                                         ; preds = %if.end74.loopexit, %if.else71
  %43 = phi %struct.loop* [ %.lcssa12, %if.end74.loopexit ], [ %call72, %if.else71 ]
  %44 = phi %struct.loop* [ %.lcssa11, %if.end74.loopexit ], [ %call72, %if.else71 ]
  br label %while.cond, !dbg !2634, !llvm.loop !2670

while.cond79:                                     ; preds = %while.cond79.preheader, %if.end111
  %45 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %69, %if.end111 ]
  %46 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %70, %if.end111 ]
  %47 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %71, %if.end111 ]
  %48 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %72, %if.end111 ]
  %49 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %73, %if.end111 ]
  %50 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %74, %if.end111 ]
  %51 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %75, %if.end111 ]
  %52 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %76, %if.end111 ], !dbg !2672
  call void @llvm.dbg.value(metadata %struct.loop* %52, metadata !2577, metadata !DIExpression()), !dbg !2580
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %52, i64 0, i32 0, !dbg !2675
  %53 = load i32, i32* %num81, align 8, !dbg !2675
  %cmp82 = icmp slt i32 %53, %3, !dbg !2676
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2677

if.then83:                                        ; preds = %while.cond79
  %54 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2678
  %tobool85 = icmp eq %struct.VEC_int_heap* %54, null, !dbg !2678
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2678

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %54, i64 0, i32 0, !dbg !2678
  br label %cond.end90, !dbg !2678

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2678
  call void @llvm.dbg.value(metadata %struct.loop* %51, metadata !2577, metadata !DIExpression()), !dbg !2580
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %51, i64 0, i32 0, !dbg !2678
  %55 = load i32, i32* %num92, align 8, !dbg !2678
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %55) #7, !dbg !2678
  br label %if.end94, !dbg !2678

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %50, metadata !2577, metadata !DIExpression()), !dbg !2580
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %50, i64 0, i32 8, !dbg !2679
  %56 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2679
  %cmp96 = icmp eq %struct.loop* %56, null, !dbg !2681
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2682

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2683

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %49, metadata !2577, metadata !DIExpression()), !dbg !2580
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %49, i64 0, i32 8, !dbg !2685
  %57 = bitcast %struct.loop** %inner98 to i64*, !dbg !2685
  %58 = load i64, i64* %57, align 8, !dbg !2685
  store i64 %58, i64* %15, align 8, !dbg !2686
  %59 = inttoptr i64 %58 to %struct.loop*, !dbg !2687
  br label %if.end111, !dbg !2687

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %60 = phi %struct.loop* [ %45, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %61 = phi %struct.loop* [ %46, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %62 = phi %struct.loop* [ %47, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %63 = phi %struct.loop* [ %48, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2688
  call void @llvm.dbg.value(metadata %struct.loop* %63, metadata !2577, metadata !DIExpression()), !dbg !2580
  %cmp101 = icmp eq %struct.loop* %63, null, !dbg !2689
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2690

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %62, metadata !2577, metadata !DIExpression()), !dbg !2580
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %62, i64 0, i32 9, !dbg !2691
  %64 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2691
  %cmp103 = icmp eq %struct.loop* %64, null, !dbg !2692
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %65 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2693
  call void @llvm.dbg.value(metadata %struct.loop* %61, metadata !2577, metadata !DIExpression()), !dbg !2580
  br i1 %65, label %while.body104, label %while.end106, !dbg !2683

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %61) #7, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2577, metadata !DIExpression()), !dbg !2580
  store %struct.loop* %call105, %struct.loop** %aloop, align 8, !dbg !2695
  br label %while.cond100, !dbg !2683, !llvm.loop !2696

while.end106:                                     ; preds = %land.end
  %.lcssa10 = phi %struct.loop* [ %60, %land.end ]
  %.lcssa = phi %struct.loop* [ %61, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2698
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2700

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa10, metadata !2577, metadata !DIExpression()), !dbg !2580
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa10, i64 0, i32 9, !dbg !2701
  %66 = bitcast %struct.loop** %next110 to i64*, !dbg !2701
  %67 = load i64, i64* %66, align 8, !dbg !2701
  store i64 %67, i64* %15, align 8, !dbg !2702
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
  br label %while.cond79, !dbg !2628, !llvm.loop !2703

if.end114.loopexit:                               ; preds = %while.end106
  br label %if.end114, !dbg !2705

if.end114.loopexit1:                              ; preds = %if.else67
  br label %if.end114, !dbg !2705

if.end114.loopexit2:                              ; preds = %cond.end
  br label %if.end114, !dbg !2705

if.end114:                                        ; preds = %if.end114.loopexit2, %if.end114.loopexit1, %if.end114.loopexit
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #7, !dbg !2705
  br label %cleanup, !dbg !2706

cleanup:                                          ; preds = %if.end114, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2706
  ret void, !dbg !2706
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2707 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2711, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2712, metadata !DIExpression()), !dbg !2714
  %0 = bitcast i32* %anum to i8*, !dbg !2715
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2715
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2714
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2714
  br label %while.cond, !dbg !2716

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2717
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2717
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2717

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2717
  br label %cond.end, !dbg !2717

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2717
  %2 = load i32, i32* %idx, align 8, !dbg !2717
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2714
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #7, !dbg !2717
  %tobool2 = icmp eq i32 %call, 0, !dbg !2716
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2716

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2718
  %inc = add i32 %3, 1, !dbg !2718
  store i32 %inc, i32* %idx, align 8, !dbg !2718
  %4 = load i32, i32* %anum, align 4, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %4, metadata !2713, metadata !DIExpression()), !dbg !2714
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #7, !dbg !2721
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2722
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2723
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2725, !llvm.loop !2726

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #7, !dbg !2728
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2729
  br label %cleanup, !dbg !2730

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2730

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2730
  ret void, !dbg !2730
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flow_loops_cfg_dump(%struct._IO_FILE* %file) unnamed_addr #5 !dbg !2731 {
entry:
  %succ = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2735, metadata !DIExpression()), !dbg !2742
  %tobool = icmp eq %struct._IO_FILE* %file, null, !dbg !2743
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !2745

if.end:                                           ; preds = %entry
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2746
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2746
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2746
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2746
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2746
  %3 = bitcast %struct.edge_def** %succ to i8*, !dbg !2747
  %4 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2747
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2748
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2748
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2748
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2750
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2750
  br label %for.cond, !dbg !2746

for.cond:                                         ; preds = %for.end, %if.end
  %10 = phi %struct.control_flow_graph* [ %1, %if.end ], [ %.pre1, %for.end ], !dbg !2752
  %.pn = phi %struct.basic_block_def* [ %2, %if.end ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2753
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2753
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2736, metadata !DIExpression()), !dbg !2742
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2752
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2752
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2752
  br i1 %cmp, label %cleanup.cont.loopexit, label %for.body, !dbg !2746

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2754
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2755
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2756
  %12 = load i32, i32* %index, align 8, !dbg !2756
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32 %12) #6, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2758
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2758
  %call3 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2758
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 0, !dbg !2758
  store i32 %13, i32* %6, align 8, !dbg !2758
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 1, !dbg !2758
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %7, align 8, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2758
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2758
  br label %for.cond4, !dbg !2758

for.cond4:                                        ; preds = %for.body7, %for.body
  %15 = load i32, i32* %8, align 8, !dbg !2759
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2759
  call void @llvm.dbg.value(metadata %struct.edge_def** %succ, metadata !2737, metadata !DIExpression(DW_OP_deref)), !dbg !2747
  %call5 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %succ) #7, !dbg !2759
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2758
  br i1 %tobool6, label %for.end, label %for.body7, !dbg !2758

for.body7:                                        ; preds = %for.cond4
  %17 = load %struct.edge_def*, %struct.edge_def** %succ, align 8, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2737, metadata !DIExpression()), !dbg !2747
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 1, !dbg !2761
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2761
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 9, !dbg !2762
  %19 = load i32, i32* %index8, align 8, !dbg !2762
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i32 %19) #6, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2741, metadata !DIExpression(DW_OP_deref)), !dbg !2747
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2759
  br label %for.cond4, !dbg !2759, !llvm.loop !2764

for.end:                                          ; preds = %for.cond4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2767
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2767
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2752
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2768
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2752
  br label %for.cond, !dbg !2752, !llvm.loop !2769

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !2771

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !2771
}

; Function Attrs: nounwind uwtable
define dso_local void @flow_loop_free(%struct.loop* %loop) local_unnamed_addr #5 !dbg !2772 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2776, metadata !DIExpression()), !dbg !2779
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2780
  tail call fastcc void @VEC_loop_p_gc_free(%struct.VEC_loop_p_gc** nonnull %superloops) #7, !dbg !2780
  %exits = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 18, !dbg !2781
  %0 = load %struct.loop_exit*, %struct.loop_exit** %exits, align 8, !dbg !2781
  %next1 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %0, i64 0, i32 2, !dbg !2783
  %1 = load %struct.loop_exit*, %struct.loop_exit** %next1, align 8, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.loop_exit* %1, metadata !2777, metadata !DIExpression()), !dbg !2779
  br label %for.cond, !dbg !2784

for.cond:                                         ; preds = %for.body, %entry
  %.in = phi %struct.loop_exit* [ %0, %entry ], [ %.pre, %for.body ]
  %2 = phi %struct.loop_exit* [ %0, %entry ], [ %.pre, %for.body ], !dbg !2785
  %exit.0 = phi %struct.loop_exit* [ %1, %entry ], [ %3, %for.body ], !dbg !2787
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exit.0, metadata !2777, metadata !DIExpression()), !dbg !2779
  %cmp = icmp eq %struct.loop_exit* %exit.0, %2, !dbg !2788
  br i1 %cmp, label %for.end, label %for.body, !dbg !2789

for.body:                                         ; preds = %for.cond
  %next3 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 2, !dbg !2790
  %3 = load %struct.loop_exit*, %struct.loop_exit** %next3, align 8, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.loop_exit* %3, metadata !2778, metadata !DIExpression()), !dbg !2779
  store %struct.loop_exit* %exit.0, %struct.loop_exit** %next3, align 8, !dbg !2792
  %prev = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 1, !dbg !2793
  store %struct.loop_exit* %exit.0, %struct.loop_exit** %prev, align 8, !dbg !2794
  call void @llvm.dbg.value(metadata %struct.loop_exit* %3, metadata !2777, metadata !DIExpression()), !dbg !2779
  %.pre = load %struct.loop_exit*, %struct.loop_exit** %exits, align 8, !dbg !2785
  br label %for.cond, !dbg !2795, !llvm.loop !2796

for.end:                                          ; preds = %for.cond
  %.in.lcssa = phi %struct.loop_exit* [ %.in, %for.cond ]
  %4 = bitcast %struct.loop_exit* %.in.lcssa to i8*, !dbg !2787
  tail call void @ggc_free(i8* %4) #6, !dbg !2798
  %5 = bitcast %struct.loop* %loop to i8*, !dbg !2799
  tail call void @ggc_free(i8* %5) #6, !dbg !2800
  ret void, !dbg !2801
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_loop_p_gc_free(%struct.VEC_loop_p_gc** %vec_) unnamed_addr #0 !dbg !2802 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_gc** %vec_, metadata !2807, metadata !DIExpression()), !dbg !2808
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %vec_, align 8, !dbg !2809
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2809
  br i1 %tobool, label %if.end, label %if.then, !dbg !2811

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_loop_p_gc* %0 to i8*, !dbg !2811
  tail call void @ggc_free(i8* nonnull %1) #6, !dbg !2809
  br label %if.end, !dbg !2809

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_loop_p_gc* null, %struct.VEC_loop_p_gc** %vec_, align 8, !dbg !2811
  ret void, !dbg !2811
}

declare dso_local void @ggc_free(i8*) #2

; Function Attrs: nounwind uwtable
define dso_local void @flow_loops_free(%struct.loops* %loops) local_unnamed_addr #5 !dbg !2812 {
entry:
  %loop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loops* %loops, metadata !2816, metadata !DIExpression()), !dbg !2821
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %loops, i64 0, i32 1, !dbg !2822
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2822
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2823
  br i1 %tobool, label %if.end8, label %if.then, !dbg !2824

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2825
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2825
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()), !dbg !2826
  br label %for.cond, !dbg !2827

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = phi %struct.VEC_loop_p_gc* [ %0, %if.then ], [ %.pre, %for.inc ], !dbg !2829
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !2831
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2817, metadata !DIExpression()), !dbg !2826
  %tobool2 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2829
  br i1 %tobool2, label %cond.end, label %cond.true, !dbg !2829

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2829
  br label %cond.end, !dbg !2829

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2829
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2820, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  %call = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond, i32 %i.0, %struct.loop** nonnull %loop) #7, !dbg !2829
  %tobool4 = icmp eq i32 %call, 0, !dbg !2832
  br i1 %tobool4, label %for.end, label %for.body, !dbg !2832

for.body:                                         ; preds = %cond.end
  %3 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.loop* %3, metadata !2820, metadata !DIExpression()), !dbg !2826
  %tobool5 = icmp eq %struct.loop* %3, null, !dbg !2833
  br i1 %tobool5, label %for.inc, label %if.end, !dbg !2836

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %3, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @flow_loop_free(%struct.loop* nonnull %3) #7, !dbg !2837
  br label %for.inc, !dbg !2838

for.inc:                                          ; preds = %for.body, %if.end
  %inc = add i32 %i.0, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2817, metadata !DIExpression()), !dbg !2826
  %.pre = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2829
  br label %for.cond, !dbg !2840, !llvm.loop !2841

for.end:                                          ; preds = %cond.end
  call fastcc void @VEC_loop_p_gc_free(%struct.VEC_loop_p_gc** nonnull %larray) #7, !dbg !2843
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2844
  br label %if.end8, !dbg !2845

if.end8:                                          ; preds = %entry, %for.end
  ret void, !dbg !2846
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !2847 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !2853, metadata !DIExpression()), !dbg !2854
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2855
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2855

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2855
  %0 = load i32, i32* %num, align 8, !dbg !2855
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2855
  br i1 %cmp, label %if.then, label %if.else, !dbg !2857

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2858
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2858
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2858
  br label %return, !dbg !2858

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2860

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !2862
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2862
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !2862
  ret i32 %retval.0, !dbg !2857
}

; Function Attrs: nounwind uwtable
define dso_local i32 @flow_loop_nodes_find(%struct.basic_block_def* %header, %struct.loop* %loop) local_unnamed_addr #5 !dbg !2863 {
entry:
  %stack = alloca %struct.VEC_basic_block_heap*, align 8
  %latch = alloca %struct.edge_def*, align 8
  %latch_ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp25 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %header, metadata !2867, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2868, metadata !DIExpression()), !dbg !2885
  %0 = bitcast %struct.VEC_basic_block_heap** %stack to i8*, !dbg !2886
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* null, metadata !2869, metadata !DIExpression()), !dbg !2885
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %stack, align 8, !dbg !2887
  call void @llvm.dbg.value(metadata i32 1, metadata !2870, metadata !DIExpression()), !dbg !2885
  %1 = bitcast %struct.edge_def** %latch to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2888
  %2 = bitcast %struct.edge_iterator* %latch_ei to i8*, !dbg !2889
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2889
  %call = tail call fastcc i32 @loop_depth(%struct.loop* %loop) #7, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %call, metadata !2873, metadata !DIExpression()), !dbg !2885
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header, i64 0, i32 3, !dbg !2891
  store %struct.loop* %loop, %struct.loop** %loop_father, align 8, !dbg !2892
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header, i64 0, i32 10, !dbg !2893
  store i32 %call, i32* %loop_depth, align 4, !dbg !2894
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2895
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2895
  %header1 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2895
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !2895
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 0, !dbg !2895
  %call2 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2895
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2895
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call2, 0, !dbg !2895
  store i32 %6, i32* %5, align 8, !dbg !2895
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2895
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call2, 1, !dbg !2895
  store %struct.VEC_edge_gc** %8, %struct.VEC_edge_gc*** %7, align 8, !dbg !2895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2895
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %latch_ei, i64 0, i32 0, !dbg !2896
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %latch_ei, i64 0, i32 1, !dbg !2896
  %11 = bitcast %struct.edge_def** %e to i8*, !dbg !2897
  %12 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2897
  %13 = bitcast %struct.edge_iterator* %tmp25 to i8*, !dbg !2898
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp25, i64 0, i32 0, !dbg !2898
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp25, i64 0, i32 1, !dbg !2898
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2899
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2899
  br label %for.cond, !dbg !2895

for.cond:                                         ; preds = %for.inc41, %entry
  %num_nodes.0 = phi i32 [ 1, %entry ], [ %num_nodes.4, %for.inc41 ], !dbg !2900
  call void @llvm.dbg.value(metadata i32 %num_nodes.0, metadata !2870, metadata !DIExpression()), !dbg !2885
  %18 = load i32, i32* %9, align 8, !dbg !2901
  %19 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !2901
  call void @llvm.dbg.value(metadata %struct.edge_def** %latch, metadata !2871, metadata !DIExpression(DW_OP_deref)), !dbg !2885
  %call3 = call fastcc zeroext i8 @ei_cond(i32 %18, %struct.VEC_edge_gc** %19, %struct.edge_def** nonnull %latch) #7, !dbg !2901
  %tobool = icmp eq i8 %call3, 0, !dbg !2895
  br i1 %tobool, label %for.end42, label %for.body, !dbg !2895

for.body:                                         ; preds = %for.cond
  %20 = load %struct.edge_def*, %struct.edge_def** %latch, align 8, !dbg !2902
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !2871, metadata !DIExpression()), !dbg !2885
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 0, !dbg !2904
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2904
  %loop_father4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 3, !dbg !2905
  %22 = load %struct.loop*, %struct.loop** %loop_father4, align 8, !dbg !2905
  %cmp = icmp eq %struct.loop* %22, %loop, !dbg !2906
  br i1 %cmp, label %for.inc41, label %lor.lhs.false, !dbg !2907

lor.lhs.false:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !2871, metadata !DIExpression()), !dbg !2885
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !2908
  %call7 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %21, %struct.basic_block_def* %23) #6, !dbg !2909
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2909
  br i1 %tobool8, label %for.inc41, label %if.end, !dbg !2910

if.end:                                           ; preds = %lor.lhs.false
  %inc = add nsw i32 %num_nodes.0, 1, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2870, metadata !DIExpression()), !dbg !2885
  %24 = load %struct.edge_def*, %struct.edge_def** %latch, align 8, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !2871, metadata !DIExpression()), !dbg !2885
  %src9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 0, !dbg !2912
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src9, align 8, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %stack, metadata !2869, metadata !DIExpression(DW_OP_deref)), !dbg !2885
  %call10 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %stack, %struct.basic_block_def* %25) #7, !dbg !2912
  %26 = load %struct.edge_def*, %struct.edge_def** %latch, align 8, !dbg !2913
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !2871, metadata !DIExpression()), !dbg !2885
  %src11 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 0, !dbg !2914
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %src11, align 8, !dbg !2914
  %loop_father12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 3, !dbg !2915
  store %struct.loop* %loop, %struct.loop** %loop_father12, align 8, !dbg !2916
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !2871, metadata !DIExpression()), !dbg !2885
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %src11, align 8, !dbg !2917
  %loop_depth14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 10, !dbg !2918
  store i32 %call, i32* %loop_depth14, align 4, !dbg !2919
  br label %while.cond, !dbg !2920

while.cond:                                       ; preds = %for.end, %if.end
  %num_nodes.1 = phi i32 [ %inc, %if.end ], [ %num_nodes.2.lcssa, %for.end ], !dbg !2911
  call void @llvm.dbg.value(metadata i32 %num_nodes.1, metadata !2870, metadata !DIExpression()), !dbg !2885
  %29 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %stack, align 8, !dbg !2921
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %29, metadata !2869, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %29, metadata !2869, metadata !DIExpression()), !dbg !2885
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %29, i64 0, i32 0, !dbg !2921
  %call16 = call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base) #7, !dbg !2921
  %cmp17 = icmp eq i32 %call16, 0, !dbg !2921
  br i1 %cmp17, label %for.inc41.loopexit, label %while.body, !dbg !2920

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #8, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2923
  %30 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %stack, align 8, !dbg !2924
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %30, metadata !2869, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %30, metadata !2869, metadata !DIExpression()), !dbg !2885
  %base20 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %30, i64 0, i32 0, !dbg !2924
  %call24 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_pop(%struct.VEC_basic_block_base* %base20) #7, !dbg !2924
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call24, metadata !2874, metadata !DIExpression()), !dbg !2897
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !2925
  %preds26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call24, i64 0, i32 0, !dbg !2925
  %call27 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds26) #7, !dbg !2925
  %31 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 0, !dbg !2925
  store i32 %31, i32* %14, align 8, !dbg !2925
  %32 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 1, !dbg !2925
  store %struct.VEC_edge_gc** %32, %struct.VEC_edge_gc*** %15, align 8, !dbg !2925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !2925
  br label %for.cond28, !dbg !2925

for.cond28:                                       ; preds = %for.inc, %while.body
  %num_nodes.2 = phi i32 [ %num_nodes.1, %while.body ], [ %num_nodes.3, %for.inc ], !dbg !2926
  call void @llvm.dbg.value(metadata i32 %num_nodes.2, metadata !2870, metadata !DIExpression()), !dbg !2885
  %33 = load i32, i32* %16, align 8, !dbg !2927
  %34 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %17, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2879, metadata !DIExpression(DW_OP_deref)), !dbg !2897
  %call29 = call fastcc zeroext i8 @ei_cond(i32 %33, %struct.VEC_edge_gc** %34, %struct.edge_def** nonnull %e) #7, !dbg !2927
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2925
  br i1 %tobool30, label %for.end, label %for.body31, !dbg !2925

for.body31:                                       ; preds = %for.cond28
  %35 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2928
  call void @llvm.dbg.value(metadata %struct.edge_def* %35, metadata !2879, metadata !DIExpression()), !dbg !2897
  %src32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i64 0, i32 0, !dbg !2929
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %src32, align 8, !dbg !2929
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %36, metadata !2881, metadata !DIExpression()), !dbg !2930
  %loop_father33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i64 0, i32 3, !dbg !2931
  %37 = load %struct.loop*, %struct.loop** %loop_father33, align 8, !dbg !2931
  %cmp34 = icmp eq %struct.loop* %37, %loop, !dbg !2933
  br i1 %cmp34, label %for.inc, label %if.then35, !dbg !2934

if.then35:                                        ; preds = %for.body31
  store %struct.loop* %loop, %struct.loop** %loop_father33, align 8, !dbg !2935
  %loop_depth37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i64 0, i32 10, !dbg !2937
  store i32 %call, i32* %loop_depth37, align 4, !dbg !2938
  %inc38 = add nsw i32 %num_nodes.2, 1, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %inc38, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %stack, metadata !2869, metadata !DIExpression(DW_OP_deref)), !dbg !2885
  %call39 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %stack, %struct.basic_block_def* %36) #7, !dbg !2940
  br label %for.inc, !dbg !2941

for.inc:                                          ; preds = %for.body31, %if.then35
  %num_nodes.3 = phi i32 [ %inc38, %if.then35 ], [ %num_nodes.2, %for.body31 ], !dbg !2926
  call void @llvm.dbg.value(metadata i32 %num_nodes.3, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2880, metadata !DIExpression(DW_OP_deref)), !dbg !2897
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2927
  br label %for.cond28, !dbg !2927, !llvm.loop !2942

for.end:                                          ; preds = %for.cond28
  %num_nodes.2.lcssa = phi i32 [ %num_nodes.2, %for.cond28 ], !dbg !2926
  call void @llvm.dbg.value(metadata i32 %num_nodes.2.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %num_nodes.2.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %num_nodes.2.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #8, !dbg !2944
  br label %while.cond, !dbg !2920, !llvm.loop !2945

for.inc41.loopexit:                               ; preds = %while.cond
  %num_nodes.1.lcssa = phi i32 [ %num_nodes.1, %while.cond ], !dbg !2911
  call void @llvm.dbg.value(metadata i32 %num_nodes.1.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %num_nodes.1.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %num_nodes.1.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  br label %for.inc41, !dbg !2901

for.inc41:                                        ; preds = %for.inc41.loopexit, %lor.lhs.false, %for.body
  %num_nodes.4 = phi i32 [ %num_nodes.0, %lor.lhs.false ], [ %num_nodes.0, %for.body ], [ %num_nodes.1.lcssa, %for.inc41.loopexit ], !dbg !2885
  call void @llvm.dbg.value(metadata i32 %num_nodes.4, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %latch_ei, metadata !2872, metadata !DIExpression(DW_OP_deref)), !dbg !2885
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %latch_ei) #7, !dbg !2901
  br label %for.cond, !dbg !2901, !llvm.loop !2946

for.end42:                                        ; preds = %for.cond
  %num_nodes.0.lcssa = phi i32 [ %num_nodes.0, %for.cond ], !dbg !2900
  call void @llvm.dbg.value(metadata i32 %num_nodes.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %num_nodes.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %num_nodes.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %stack, metadata !2869, metadata !DIExpression(DW_OP_deref)), !dbg !2885
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %stack) #7, !dbg !2948
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2949
  ret i32 %num_nodes.0.lcssa, !dbg !2950
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2951 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2955, metadata !DIExpression()), !dbg !2957
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2958
  store i32 0, i32* %index, align 8, !dbg !2959
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2960
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2961
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2962
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2962
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2962
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2963 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2968, metadata !DIExpression()), !dbg !2969
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2970
  %tobool = icmp eq i8 %call, 0, !dbg !2970
  br i1 %tobool, label %if.then, label %if.else, !dbg !2972

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2973
  br label %return, !dbg !2975

if.else:                                          ; preds = %entry
  br label %return, !dbg !2976

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2978
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2978
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2978
  ret i8 %retval.0, !dbg !2979
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !2980 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !2986, metadata !DIExpression()), !dbg !2987
  %call = tail call fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 1) #7, !dbg !2988
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !2988
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !2988
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2988

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !2988
  br label %cond.end, !dbg !2988

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2988
  %call1 = tail call fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %cond, %struct.basic_block_def* %obj_) #7, !dbg !2988
  ret %struct.basic_block_def** %call1, !dbg !2988
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %vec_) unnamed_addr #0 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2995, metadata !DIExpression()), !dbg !2996
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !2997
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2997

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !2997
  %0 = load i32, i32* %num, align 8, !dbg !2997
  br label %cond.end, !dbg !2997

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2997
  ret i32 %cond, !dbg !2997
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_pop(%struct.VEC_basic_block_base* %vec_) unnamed_addr #0 !dbg !2998 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3003, metadata !DIExpression()), !dbg !3005
  %num1 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !3006
  %0 = load i32, i32* %num1, align 8, !dbg !3006
  %dec = add i32 %0, -1, !dbg !3006
  store i32 %dec, i32* %num1, align 8, !dbg !3006
  %idxprom = zext i32 %dec to i64, !dbg !3006
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3006
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3004, metadata !DIExpression()), !dbg !3005
  ret %struct.basic_block_def* %1, !dbg !3006
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3007 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3012, metadata !DIExpression()), !dbg !3013
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3014
  %0 = load i32, i32* %index, align 8, !dbg !3014
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3014
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3014
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3014
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3014
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3014

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3014
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3014
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3014
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3014
  br label %cond.end, !dbg !3014

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3014
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3014
  %cmp = icmp ult i32 %0, %call2, !dbg !3014
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3014

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3014
  br label %cond.end5, !dbg !3014

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3015
  %inc = add i32 %5, 1, !dbg !3015
  store i32 %inc, i32* %index, align 8, !dbg !3015
  ret void, !dbg !3016
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** %vec_) unnamed_addr #0 !dbg !3017 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !3021, metadata !DIExpression()), !dbg !3022
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !3023
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !3023
  br i1 %tobool, label %if.end, label %if.then, !dbg !3025

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_basic_block_heap* %0 to i8*, !dbg !3025
  tail call void @free(i8* nonnull %1) #6, !dbg !3023
  br label %if.end, !dbg !3023

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !3025
  ret void, !dbg !3025
}

; Function Attrs: nounwind uwtable
define dso_local void @flow_loop_tree_node_add(%struct.loop* %father, %struct.loop* %loop) local_unnamed_addr #5 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %father, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3031, metadata !DIExpression()), !dbg !3032
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %father, i64 0, i32 8, !dbg !3033
  %0 = bitcast %struct.loop** %inner to i64*, !dbg !3033
  %1 = load i64, i64* %0, align 8, !dbg !3033
  %next = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 9, !dbg !3034
  %2 = bitcast %struct.loop** %next to i64*, !dbg !3035
  store i64 %1, i64* %2, align 8, !dbg !3035
  store %struct.loop* %loop, %struct.loop** %inner, align 8, !dbg !3036
  tail call fastcc void @establish_preds(%struct.loop* %loop, %struct.loop* %father) #7, !dbg !3037
  ret void, !dbg !3038
}

; Function Attrs: nounwind uwtable
define internal fastcc void @establish_preds(%struct.loop* %loop, %struct.loop* %father) unnamed_addr #5 !dbg !3039 {
entry:
  %ploop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3041, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata %struct.loop* %father, metadata !3042, metadata !DIExpression()), !dbg !3046
  %0 = bitcast %struct.loop** %ploop to i8*, !dbg !3047
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3047
  %call = tail call fastcc i32 @loop_depth(%struct.loop* %father) #7, !dbg !3048
  %add = add i32 %call, 1, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %add, metadata !3044, metadata !DIExpression()), !dbg !3046
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3050
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3050
  %tobool = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !3050
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3050

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !3050
  br label %cond.end, !dbg !3050

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3050
  tail call fastcc void @VEC_loop_p_base_truncate(%struct.VEC_loop_p_base* %cond, i32 0) #7, !dbg !3050
  %call3 = tail call fastcc i32 @VEC_loop_p_gc_reserve(%struct.VEC_loop_p_gc** nonnull %superloops, i32 %add) #7, !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !3045, metadata !DIExpression()), !dbg !3046
  %superloops4 = getelementptr inbounds %struct.loop, %struct.loop* %father, i64 0, i32 7, !dbg !3052
  br label %for.cond, !dbg !3055

for.cond:                                         ; preds = %cond.end20, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %cond.end20 ], !dbg !3056
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3045, metadata !DIExpression()), !dbg !3046
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops4, align 8, !dbg !3057
  %tobool5 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3057
  br i1 %tobool5, label %cond.end10, label %cond.true6, !dbg !3057

cond.true6:                                       ; preds = %for.cond
  %base8 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3057
  br label %cond.end10, !dbg !3057

cond.end10:                                       ; preds = %for.cond, %cond.true6
  %cond11 = phi %struct.VEC_loop_p_base* [ %base8, %cond.true6 ], [ null, %for.cond ], !dbg !3057
  call void @llvm.dbg.value(metadata %struct.loop** %ploop, metadata !3043, metadata !DIExpression(DW_OP_deref)), !dbg !3046
  %call12 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond11, i32 %i.0, %struct.loop** nonnull %ploop) #7, !dbg !3057
  %tobool13 = icmp eq i32 %call12, 0, !dbg !3058
  %3 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3046
  %tobool15 = icmp ne %struct.VEC_loop_p_gc* %3, null, !dbg !3046
  br i1 %tobool13, label %for.end, label %for.body, !dbg !3058

for.body:                                         ; preds = %cond.end10
  br i1 %tobool15, label %cond.true16, label %cond.end20, !dbg !3059

cond.true16:                                      ; preds = %for.body
  %base18 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %3, i64 0, i32 0, !dbg !3059
  br label %cond.end20, !dbg !3059

cond.end20:                                       ; preds = %for.body, %cond.true16
  %cond21 = phi %struct.VEC_loop_p_base* [ %base18, %cond.true16 ], [ null, %for.body ], !dbg !3059
  %4 = load %struct.loop*, %struct.loop** %ploop, align 8, !dbg !3059
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !3043, metadata !DIExpression()), !dbg !3046
  %call22 = call fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %cond21, %struct.loop* %4) #7, !dbg !3059
  %inc = add i32 %i.0, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3045, metadata !DIExpression()), !dbg !3046
  br label %for.cond, !dbg !3061, !llvm.loop !3062

for.end:                                          ; preds = %cond.end10
  %.lcssa = phi %struct.VEC_loop_p_gc* [ %3, %cond.end10 ], !dbg !3046
  %tobool15.lcssa = phi i1 [ %tobool15, %cond.end10 ], !dbg !3046
  br i1 %tobool15.lcssa, label %cond.true25, label %cond.end29, !dbg !3064

cond.true25:                                      ; preds = %for.end
  %base27 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %.lcssa, i64 0, i32 0, !dbg !3064
  br label %cond.end29, !dbg !3064

cond.end29:                                       ; preds = %for.end, %cond.true25
  %cond30 = phi %struct.VEC_loop_p_base* [ %base27, %cond.true25 ], [ null, %for.end ], !dbg !3064
  %call31 = call fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %cond30, %struct.loop* %father) #7, !dbg !3064
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !3065
  %5 = bitcast %struct.loop** %inner to i64*, !dbg !3065
  %6 = load i64, i64* %5, align 8, !dbg !3065
  %7 = bitcast %struct.loop** %ploop to i64*, !dbg !3067
  store i64 %6, i64* %7, align 8, !dbg !3067
  %8 = inttoptr i64 %6 to %struct.loop*, !dbg !3068
  br label %for.cond32, !dbg !3068

for.cond32:                                       ; preds = %for.body34, %cond.end29
  %9 = phi %struct.loop* [ %14, %for.body34 ], [ %8, %cond.end29 ]
  %10 = phi %struct.loop* [ %14, %for.body34 ], [ %8, %cond.end29 ], !dbg !3069
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !3043, metadata !DIExpression()), !dbg !3046
  %tobool33 = icmp eq %struct.loop* %10, null, !dbg !3071
  br i1 %tobool33, label %for.end36, label %for.body34, !dbg !3071

for.body34:                                       ; preds = %for.cond32
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !3043, metadata !DIExpression()), !dbg !3046
  call fastcc void @establish_preds(%struct.loop* %9, %struct.loop* %loop) #7, !dbg !3072
  %11 = load %struct.loop*, %struct.loop** %ploop, align 8, !dbg !3073
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !3043, metadata !DIExpression()), !dbg !3046
  %next = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 9, !dbg !3074
  %12 = bitcast %struct.loop** %next to i64*, !dbg !3074
  %13 = load i64, i64* %12, align 8, !dbg !3074
  store i64 %13, i64* %7, align 8, !dbg !3075
  %14 = inttoptr i64 %13 to %struct.loop*, !dbg !3076
  br label %for.cond32, !dbg !3076, !llvm.loop !3077

for.end36:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3079
  ret void, !dbg !3079
}

; Function Attrs: nounwind uwtable
define dso_local void @flow_loop_tree_node_remove(%struct.loop* %loop) local_unnamed_addr #5 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3082, metadata !DIExpression()), !dbg !3085
  %call = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop) #7, !dbg !3086
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !3084, metadata !DIExpression()), !dbg !3085
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %call, i64 0, i32 8, !dbg !3087
  %0 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !3087
  %cmp = icmp eq %struct.loop* %0, %loop, !dbg !3089
  br i1 %cmp, label %if.then, label %if.else, !dbg !3090

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 9, !dbg !3091
  %1 = bitcast %struct.loop** %next to i64*, !dbg !3091
  %2 = load i64, i64* %1, align 8, !dbg !3091
  %3 = bitcast %struct.loop** %inner to i64*, !dbg !3092
  store i64 %2, i64* %3, align 8, !dbg !3092
  br label %if.end, !dbg !3093

if.else:                                          ; preds = %entry
  br label %for.cond, !dbg !3094

for.cond:                                         ; preds = %for.inc, %if.else
  %prev.0 = phi %struct.loop* [ %0, %if.else ], [ %4, %for.inc ], !dbg !3097
  call void @llvm.dbg.value(metadata %struct.loop* %prev.0, metadata !3083, metadata !DIExpression()), !dbg !3085
  %next3 = getelementptr inbounds %struct.loop, %struct.loop* %prev.0, i64 0, i32 9, !dbg !3098
  %4 = load %struct.loop*, %struct.loop** %next3, align 8, !dbg !3098
  %cmp4 = icmp eq %struct.loop* %4, %loop, !dbg !3100
  br i1 %cmp4, label %for.end, label %for.inc, !dbg !3101

for.inc:                                          ; preds = %for.cond
  br label %for.cond, !dbg !3102, !llvm.loop !3103

for.end:                                          ; preds = %for.cond
  %next3.lcssa = phi %struct.loop** [ %next3, %for.cond ], !dbg !3098
  %next6 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 9, !dbg !3105
  %5 = bitcast %struct.loop** %next6 to i64*, !dbg !3105
  %6 = load i64, i64* %5, align 8, !dbg !3105
  %7 = bitcast %struct.loop** %next3.lcssa to i64*, !dbg !3106
  store i64 %6, i64* %7, align 8, !dbg !3106
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3107
  %8 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3107
  %tobool = icmp eq %struct.VEC_loop_p_gc* %8, null, !dbg !3107
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3107

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %8, i64 0, i32 0, !dbg !3107
  br label %cond.end, !dbg !3107

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3107
  tail call fastcc void @VEC_loop_p_base_truncate(%struct.VEC_loop_p_base* %cond, i32 0) #7, !dbg !3107
  ret void, !dbg !3108
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_loop_p_base_truncate(%struct.VEC_loop_p_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !3109 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 0, metadata !3115, metadata !DIExpression()), !dbg !3116
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3117
  br label %cond.true, !dbg !3117

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3117

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !3117

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !3117

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3118
  store i32 0, i32* %num3, align 8, !dbg !3118
  br label %if.end, !dbg !3118

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !3117
}

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @alloc_loop() local_unnamed_addr #5 !dbg !3120 {
entry:
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 152) #6, !dbg !3125
  %0 = bitcast i8* %call to %struct.loop*, !dbg !3125
  call void @llvm.dbg.value(metadata %struct.loop* %0, metadata !3124, metadata !DIExpression()), !dbg !3126
  %call1 = tail call i8* @ggc_alloc_cleared_stat(i64 32) #6, !dbg !3127
  %exits = getelementptr inbounds i8, i8* %call, i64 128, !dbg !3128
  %1 = bitcast i8* %exits to i8**, !dbg !3129
  store i8* %call1, i8** %1, align 8, !dbg !3129
  %.cast = ptrtoint i8* %call1 to i64, !dbg !3130
  %prev = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !3131
  %2 = bitcast i8* %prev to i64*, !dbg !3132
  store i64 %.cast, i64* %2, align 8, !dbg !3132
  %3 = bitcast i8* %exits to %struct.loop_exit**, !dbg !3133
  %4 = load %struct.loop_exit*, %struct.loop_exit** %3, align 8, !dbg !3133
  %next = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %4, i64 0, i32 2, !dbg !3134
  %5 = bitcast %struct.loop_exit** %next to i64*, !dbg !3135
  store i64 %.cast, i64* %5, align 8, !dbg !3135
  %6 = getelementptr inbounds i8, i8* %call, i64 136, !dbg !3136
  store i8 0, i8* %6, align 8, !dbg !3137
  %single_iv = getelementptr inbounds i8, i8* %call, i64 144, !dbg !3138
  %7 = bitcast i8* %single_iv to %union.tree_node**, !dbg !3138
  store %union.tree_node* null, %union.tree_node** %7, align 8, !dbg !3139
  ret %struct.loop* %0, !dbg !3140
}

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @flow_loops_find(%struct.loops* %loops) local_unnamed_addr #5 !dbg !3141 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp18 = alloca %struct.edge_iterator, align 8
  %ei76 = alloca %struct.edge_iterator, align 8
  %tmp112 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loops* %loops, metadata !3145, metadata !DIExpression()), !dbg !3183
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3184
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !3185
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3186
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3186
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3186
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 3, !dbg !3186
  %3 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3186
  %cmp = icmp eq i32 %3, 2, !dbg !3188
  br i1 %cmp, label %if.then, label %if.end, !dbg !3189

if.then:                                          ; preds = %entry
  tail call fastcc void @init_loops_structure(%struct.loops* %loops, i32 1) #7, !dbg !3190
  br label %cleanup154, !dbg !3192

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* null, metadata !3160, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32* null, metadata !3161, metadata !DIExpression()), !dbg !3183
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !3193
  %4 = load i32, i32* %x_last_basic_block, align 8, !dbg !3193
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %4) #6, !dbg !3194
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3149, metadata !DIExpression()), !dbg !3183
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3195
  call void @llvm.dbg.value(metadata i32 0, metadata !3147, metadata !DIExpression()), !dbg !3183
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3196
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3196
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !3196
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !3196
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3196
  %8 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3197
  %9 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3198
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3198
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3198
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3200
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3200
  %14 = bitcast %struct.edge_iterator* %tmp18 to i8*, !dbg !3202
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp18, i64 0, i32 0, !dbg !3202
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp18, i64 0, i32 1, !dbg !3202
  br label %for.cond, !dbg !3196

for.cond:                                         ; preds = %cleanup, %if.end
  %17 = phi %struct.control_flow_graph* [ %6, %if.end ], [ %.pre4, %cleanup ], !dbg !3203
  %.pn = phi %struct.basic_block_def* [ %7, %if.end ], [ %header.0, %cleanup ]
  %num_loops.0 = phi i32 [ 0, %if.end ], [ %num_loops.3, %cleanup ], !dbg !3204
  %header.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3205
  %header.0 = load %struct.basic_block_def*, %struct.basic_block_def** %header.0.in, align 8, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %num_loops.0, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %header.0, metadata !3162, metadata !DIExpression()), !dbg !3183
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 1, !dbg !3203
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3203
  %cmp7 = icmp eq %struct.basic_block_def* %header.0, %18, !dbg !3203
  br i1 %cmp7, label %for.end40, label %for.body, !dbg !3196

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3206
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header.0, i64 0, i32 10, !dbg !3207
  store i32 0, i32* %loop_depth, align 4, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3209
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header.0, i64 0, i32 0, !dbg !3209
  %call8 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3209
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call8, 0, !dbg !3209
  store i32 %19, i32* %10, align 8, !dbg !3209
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call8, 1, !dbg !3209
  store %struct.VEC_edge_gc** %20, %struct.VEC_edge_gc*** %11, align 8, !dbg !3209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3209
  br label %for.cond9, !dbg !3209

for.cond9:                                        ; preds = %for.inc, %for.body
  %21 = load i32, i32* %12, align 8, !dbg !3210
  %22 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3210
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3148, metadata !DIExpression(DW_OP_deref)), !dbg !3183
  %call10 = call fastcc zeroext i8 @ei_cond(i32 %21, %struct.VEC_edge_gc** %22, %struct.edge_def** nonnull %e) #7, !dbg !3210
  %tobool = icmp eq i8 %call10, 0, !dbg !3209
  br i1 %tobool, label %for.cond9.for.end_crit_edge, label %for.body11, !dbg !3209

for.cond9.for.end_crit_edge:                      ; preds = %for.cond9
  %.pre5 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3211
  br label %for.end, !dbg !3209

for.body11:                                       ; preds = %for.cond9
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3148, metadata !DIExpression()), !dbg !3183
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 7, !dbg !3215
  %24 = load i32, i32* %flags, align 8, !dbg !3215
  %and = and i32 %24, 2, !dbg !3216
  %tobool12 = icmp eq i32 %and, 0, !dbg !3216
  br i1 %tobool12, label %for.inc, label %for.end.loopexit, !dbg !3217

for.inc:                                          ; preds = %for.body11
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3164, metadata !DIExpression(DW_OP_deref)), !dbg !3197
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3210
  br label %for.cond9, !dbg !3210, !llvm.loop !3218

for.end.loopexit:                                 ; preds = %for.body11
  %.lcssa8 = phi %struct.edge_def* [ %23, %for.body11 ], !dbg !3213
  br label %for.end, !dbg !3211

for.end:                                          ; preds = %for.end.loopexit, %for.cond9.for.end_crit_edge
  %25 = phi %struct.edge_def* [ %.pre5, %for.cond9.for.end_crit_edge ], [ %.lcssa8, %for.end.loopexit ], !dbg !3211
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !3148, metadata !DIExpression()), !dbg !3183
  %tobool15 = icmp eq %struct.edge_def* %25, null, !dbg !3211
  br i1 %tobool15, label %if.end17, label %cleanup, !dbg !3220

if.end17:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3221
  %call20 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3221
  %26 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 0, !dbg !3221
  store i32 %26, i32* %15, align 8, !dbg !3221
  %27 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 1, !dbg !3221
  store %struct.VEC_edge_gc** %27, %struct.VEC_edge_gc*** %16, align 8, !dbg !3221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !3221
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3221
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header.0, i64 0, i32 9, !dbg !3222
  br label %for.cond21, !dbg !3221

for.cond21:                                       ; preds = %for.inc36, %if.end17
  %num_loops.1 = phi i32 [ %num_loops.0, %if.end17 ], [ %num_loops.2, %for.inc36 ], !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.1, metadata !3147, metadata !DIExpression()), !dbg !3183
  %28 = load i32, i32* %12, align 8, !dbg !3225
  %29 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3225
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3148, metadata !DIExpression(DW_OP_deref)), !dbg !3183
  %call22 = call fastcc zeroext i8 @ei_cond(i32 %28, %struct.VEC_edge_gc** %29, %struct.edge_def** nonnull %e) #7, !dbg !3225
  %tobool23 = icmp eq i8 %call22, 0, !dbg !3221
  br i1 %tobool23, label %cleanup.loopexit, label %for.body24, !dbg !3221

for.body24:                                       ; preds = %for.cond21
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.edge_def* %30, metadata !3148, metadata !DIExpression()), !dbg !3183
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i64 0, i32 0, !dbg !3227
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3227
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %31, metadata !3168, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata %struct.edge_def* %30, metadata !3148, metadata !DIExpression()), !dbg !3183
  %flags25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i64 0, i32 7, !dbg !3229
  %32 = load i32, i32* %flags25, align 8, !dbg !3229
  %and26 = and i32 %32, 2, !dbg !3229
  %tobool27 = icmp eq i32 %and26, 0, !dbg !3229
  br i1 %tobool27, label %cond.end, label %cond.true, !dbg !3229

cond.true:                                        ; preds = %for.body24
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 424, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3229
  br label %cond.end, !dbg !3229

cond.end:                                         ; preds = %for.body24, %cond.true
  %33 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3230
  %cfg29 = getelementptr inbounds %struct.function, %struct.function* %33, i64 0, i32 1, !dbg !3230
  %34 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg29, align 8, !dbg !3230
  %x_entry_block_ptr30 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %34, i64 0, i32 0, !dbg !3230
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr30, align 8, !dbg !3230
  %cmp31 = icmp eq %struct.basic_block_def* %31, %35, !dbg !3231
  br i1 %cmp31, label %for.inc36, label %land.lhs.true, !dbg !3232

land.lhs.true:                                    ; preds = %cond.end
  %call32 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %31, %struct.basic_block_def* %header.0) #6, !dbg !3233
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3233
  br i1 %tobool33, label %for.inc36, label %if.then34, !dbg !3234

if.then34:                                        ; preds = %land.lhs.true
  %36 = load i32, i32* %index, align 8, !dbg !3235
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %36) #7, !dbg !3236
  %inc = add nsw i32 %num_loops.1, 1, !dbg !3237
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3147, metadata !DIExpression()), !dbg !3183
  br label %for.inc36, !dbg !3238

for.inc36:                                        ; preds = %land.lhs.true, %cond.end, %if.then34
  %num_loops.2 = phi i32 [ %inc, %if.then34 ], [ %num_loops.1, %land.lhs.true ], [ %num_loops.1, %cond.end ], !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.2, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3164, metadata !DIExpression(DW_OP_deref)), !dbg !3197
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3225
  br label %for.cond21, !dbg !3225, !llvm.loop !3239

cleanup.loopexit:                                 ; preds = %for.cond21
  %num_loops.1.lcssa = phi i32 [ %num_loops.1, %for.cond21 ], !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.1.lcssa, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.1.lcssa, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.1.lcssa, metadata !3147, metadata !DIExpression()), !dbg !3183
  br label %cleanup, !dbg !3241

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %num_loops.3 = phi i32 [ %num_loops.0, %for.end ], [ %num_loops.1.lcssa, %cleanup.loopexit ], !dbg !3204
  call void @llvm.dbg.value(metadata i32 %num_loops.3, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3241
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3203
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3242
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !3203
  br label %for.cond, !dbg !3203, !llvm.loop !3243

for.end40:                                        ; preds = %for.cond
  %num_loops.0.lcssa = phi i32 [ %num_loops.0, %for.cond ], !dbg !3204
  call void @llvm.dbg.value(metadata i32 %num_loops.0.lcssa, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.0.lcssa, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.0.lcssa, metadata !3147, metadata !DIExpression()), !dbg !3183
  %add = add nsw i32 %num_loops.0.lcssa, 1, !dbg !3245
  call fastcc void @init_loops_structure(%struct.loops* %loops, i32 %add) #7, !dbg !3246
  %37 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3247
  %cfg42 = getelementptr inbounds %struct.function, %struct.function* %37, i64 0, i32 1, !dbg !3247
  %38 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg42, align 8, !dbg !3247
  %x_entry_block_ptr43 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %38, i64 0, i32 0, !dbg !3247
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr43, align 8, !dbg !3247
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %loops, i64 0, i32 3, !dbg !3249
  %40 = bitcast %struct.loop** %tree_root to i64*, !dbg !3249
  br label %for.cond45, !dbg !3247

for.cond45:                                       ; preds = %for.body51, %for.end40
  %41 = phi %struct.control_flow_graph* [ %38, %for.end40 ], [ %.pre6, %for.body51 ], !dbg !3251
  %.pn3 = phi %struct.basic_block_def* [ %39, %for.end40 ], [ %bb.0, %for.body51 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn3, i64 0, i32 6, !dbg !3252
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3252
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3163, metadata !DIExpression()), !dbg !3183
  %x_exit_block_ptr48 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %41, i64 0, i32 1, !dbg !3251
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr48, align 8, !dbg !3251
  %cmp49 = icmp eq %struct.basic_block_def* %bb.0, %42, !dbg !3251
  br i1 %cmp49, label %for.end54, label %for.body51, !dbg !3247

for.body51:                                       ; preds = %for.cond45
  %43 = load i64, i64* %40, align 8, !dbg !3253
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 3, !dbg !3254
  %44 = bitcast %struct.loop** %loop_father to i64*, !dbg !3255
  store i64 %43, i64* %44, align 8, !dbg !3255
  %.pre6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg42, align 8, !dbg !3251
  br label %for.cond45, !dbg !3251, !llvm.loop !3256

for.end54:                                        ; preds = %for.cond45
  %.lcssa = phi %struct.control_flow_graph* [ %41, %for.cond45 ], !dbg !3251
  %tobool55 = icmp eq i32 %num_loops.0.lcssa, 0, !dbg !3258
  br i1 %tobool55, label %if.end144, label %if.then56, !dbg !3259

if.then56:                                        ; preds = %for.end54
  %x_n_basic_blocks59 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 3, !dbg !3260
  %45 = load i32, i32* %x_n_basic_blocks59, align 8, !dbg !3260
  %conv60 = sext i32 %45 to i64, !dbg !3260
  %mul = shl nsw i64 %conv60, 2, !dbg !3260
  %call61 = call i8* @xmalloc(i64 %mul) #6, !dbg !3260
  %46 = bitcast i8* %call61 to i32*, !dbg !3260
  call void @llvm.dbg.value(metadata i32* %46, metadata !3160, metadata !DIExpression()), !dbg !3183
  %47 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3261
  %cfg63 = getelementptr inbounds %struct.function, %struct.function* %47, i64 0, i32 1, !dbg !3261
  %48 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg63, align 8, !dbg !3261
  %x_n_basic_blocks64 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %48, i64 0, i32 3, !dbg !3261
  %49 = load i32, i32* %x_n_basic_blocks64, align 8, !dbg !3261
  %conv65 = sext i32 %49 to i64, !dbg !3261
  %mul66 = shl nsw i64 %conv65, 2, !dbg !3261
  %call67 = call i8* @xmalloc(i64 %mul66) #6, !dbg !3261
  %50 = bitcast i8* %call67 to i32*, !dbg !3261
  call void @llvm.dbg.value(metadata i32* %50, metadata !3161, metadata !DIExpression()), !dbg !3183
  %call68 = call i32 @pre_and_rev_post_order_compute(i32* %46, i32* %50, i8 zeroext 0) #6, !dbg !3262
  call void @llvm.dbg.value(metadata i32 1, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 0, metadata !3146, metadata !DIExpression()), !dbg !3183
  %51 = bitcast %struct.edge_iterator* %ei76 to i8*, !dbg !3263
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %loops, i64 0, i32 1, !dbg !3263
  %52 = bitcast %struct.edge_iterator* %tmp112 to i8*, !dbg !3264
  %53 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp112, i64 0, i32 0, !dbg !3264
  %54 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp112, i64 0, i32 1, !dbg !3264
  %55 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei76, i64 0, i32 0, !dbg !3265
  %56 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei76, i64 0, i32 1, !dbg !3265
  br label %for.cond69, !dbg !3266

for.cond69:                                       ; preds = %cleanup137, %if.then56
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup137 ], [ 0, %if.then56 ], !dbg !3267
  %num_loops.4 = phi i32 [ %num_loops.5, %cleanup137 ], [ 1, %if.then56 ], !dbg !3267
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3146, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %num_loops.4, metadata !3147, metadata !DIExpression()), !dbg !3183
  %57 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3268
  %cfg71 = getelementptr inbounds %struct.function, %struct.function* %57, i64 0, i32 1, !dbg !3268
  %58 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg71, align 8, !dbg !3268
  %x_n_basic_blocks72 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %58, i64 0, i32 3, !dbg !3268
  %59 = load i32, i32* %x_n_basic_blocks72, align 8, !dbg !3268
  %sub = add nsw i32 %59, -2, !dbg !3269
  %60 = sext i32 %sub to i64, !dbg !3270
  %cmp73 = icmp slt i64 %indvars.iv, %60, !dbg !3270
  br i1 %cmp73, label %for.body75, label %for.end143, !dbg !3271

for.body75:                                       ; preds = %for.cond69
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #8, !dbg !3272
  %arrayidx = getelementptr inbounds i32, i32* %50, i64 %indvars.iv, !dbg !3273
  %61 = load i32, i32* %arrayidx, align 4, !dbg !3273
  %div = lshr i32 %61, 6, !dbg !3273
  %idxprom77 = zext i32 %div to i64, !dbg !3273
  %arrayidx78 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 3, i64 %idxprom77, !dbg !3273
  %62 = load i64, i64* %arrayidx78, align 8, !dbg !3273
  %rem = and i32 %61, 63, !dbg !3273
  %sh_prom = zext i32 %rem to i64, !dbg !3273
  %63 = shl i64 1, %sh_prom, !dbg !3273
  %64 = and i64 %62, %63, !dbg !3273
  %tobool82 = icmp eq i64 %64, 0, !dbg !3273
  br i1 %tobool82, label %cleanup137, label %if.end84, !dbg !3275

if.end84:                                         ; preds = %for.body75
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %58, i64 0, i32 2, !dbg !3276
  %65 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3276
  %tobool87 = icmp eq %struct.VEC_basic_block_gc* %65, null, !dbg !3276
  br i1 %tobool87, label %cond.end93, label %cond.true88, !dbg !3276

cond.true88:                                      ; preds = %if.end84
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %65, i64 0, i32 0, !dbg !3276
  br label %cond.end93, !dbg !3276

cond.end93:                                       ; preds = %if.end84, %cond.true88
  %cond94 = phi %struct.VEC_basic_block_base* [ %base, %cond.true88 ], [ null, %if.end84 ], !dbg !3276
  %call97 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond94, i32 %61) #7, !dbg !3276
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call97, metadata !3162, metadata !DIExpression()), !dbg !3183
  %call98 = call %struct.loop* @alloc_loop() #7, !dbg !3277
  call void @llvm.dbg.value(metadata %struct.loop* %call98, metadata !3172, metadata !DIExpression()), !dbg !3263
  %66 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3278
  %tobool99 = icmp eq %struct.VEC_loop_p_gc* %66, null, !dbg !3278
  br i1 %tobool99, label %cond.end104, label %cond.true100, !dbg !3278

cond.true100:                                     ; preds = %cond.end93
  %base102 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %66, i64 0, i32 0, !dbg !3278
  br label %cond.end104, !dbg !3278

cond.end104:                                      ; preds = %cond.end93, %cond.true100
  %cond105 = phi %struct.VEC_loop_p_base* [ %base102, %cond.true100 ], [ null, %cond.end93 ], !dbg !3278
  %call106 = call fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %cond105, %struct.loop* %call98) #7, !dbg !3278
  %header107 = getelementptr inbounds %struct.loop, %struct.loop* %call98, i64 0, i32 2, !dbg !3279
  store %struct.basic_block_def* %call97, %struct.basic_block_def** %header107, align 8, !dbg !3280
  %num = getelementptr inbounds %struct.loop, %struct.loop* %call98, i64 0, i32 0, !dbg !3281
  store i32 %num_loops.4, i32* %num, align 8, !dbg !3282
  %inc108 = add nsw i32 %num_loops.4, 1, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %inc108, metadata !3147, metadata !DIExpression()), !dbg !3183
  %loop_father109 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call97, i64 0, i32 3, !dbg !3284
  %67 = load %struct.loop*, %struct.loop** %loop_father109, align 8, !dbg !3284
  call void @flow_loop_tree_node_add(%struct.loop* %67, %struct.loop* %call98) #7, !dbg !3285
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %header107, align 8, !dbg !3286
  %call111 = call i32 @flow_loop_nodes_find(%struct.basic_block_def* %68, %struct.loop* %call98) #7, !dbg !3287
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %call98, i64 0, i32 6, !dbg !3288
  store i32 %call111, i32* %num_nodes, align 4, !dbg !3289
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #8, !dbg !3290
  %preds113 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call97, i64 0, i32 0, !dbg !3290
  %call114 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds113) #7, !dbg !3290
  %69 = extractvalue { i32, %struct.VEC_edge_gc** } %call114, 0, !dbg !3290
  store i32 %69, i32* %53, align 8, !dbg !3290
  %70 = extractvalue { i32, %struct.VEC_edge_gc** } %call114, 1, !dbg !3290
  store %struct.VEC_edge_gc** %70, %struct.VEC_edge_gc*** %54, align 8, !dbg !3290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %51, i8* nonnull align 8 %52, i64 16, i1 false), !dbg !3290
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #8, !dbg !3290
  %latch124 = getelementptr inbounds %struct.loop, %struct.loop* %call98, i64 0, i32 3, !dbg !3291
  br label %for.cond115, !dbg !3290

for.cond115:                                      ; preds = %for.inc135, %cond.end104
  %71 = load i32, i32* %55, align 8, !dbg !3295
  %72 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %56, align 8, !dbg !3295
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3148, metadata !DIExpression(DW_OP_deref)), !dbg !3183
  %call116 = call fastcc zeroext i8 @ei_cond(i32 %71, %struct.VEC_edge_gc** %72, %struct.edge_def** nonnull %e) #7, !dbg !3295
  %tobool117 = icmp eq i8 %call116, 0, !dbg !3290
  br i1 %tobool117, label %cleanup137.loopexit, label %for.body118, !dbg !3290

for.body118:                                      ; preds = %for.cond115
  %73 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3296
  call void @llvm.dbg.value(metadata %struct.edge_def* %73, metadata !3148, metadata !DIExpression()), !dbg !3183
  %src120 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i64 0, i32 0, !dbg !3297
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %src120, align 8, !dbg !3297
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %74, metadata !3179, metadata !DIExpression()), !dbg !3298
  %call121 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %call98, %struct.basic_block_def* %74) #7, !dbg !3299
  %tobool122 = icmp eq i8 %call121, 0, !dbg !3299
  br i1 %tobool122, label %cleanup132, label %if.then123, !dbg !3300

if.then123:                                       ; preds = %for.body118
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %latch124, align 8, !dbg !3301
  %cmp125 = icmp eq %struct.basic_block_def* %75, null, !dbg !3302
  br i1 %cmp125, label %if.end129, label %if.then127, !dbg !3303

if.then127:                                       ; preds = %if.then123
  store %struct.basic_block_def* null, %struct.basic_block_def** %latch124, align 8, !dbg !3304
  br label %cleanup132, !dbg !3306

if.end129:                                        ; preds = %if.then123
  store %struct.basic_block_def* %74, %struct.basic_block_def** %latch124, align 8, !dbg !3307
  br label %cleanup132, !dbg !3308

cleanup132:                                       ; preds = %for.body118, %if.end129, %if.then127
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then127 ], [ true, %if.end129 ], [ true, %for.body118 ]
  br i1 %cleanup.dest.slot.1, label %for.inc135, label %cleanup137.loopexit

for.inc135:                                       ; preds = %cleanup132
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei76, metadata !3178, metadata !DIExpression(DW_OP_deref)), !dbg !3263
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei76) #7, !dbg !3295
  br label %for.cond115, !dbg !3295, !llvm.loop !3309

cleanup137.loopexit:                              ; preds = %cleanup132, %for.cond115
  br label %cleanup137, !dbg !3311

cleanup137:                                       ; preds = %cleanup137.loopexit, %for.body75
  %num_loops.5 = phi i32 [ %num_loops.4, %for.body75 ], [ %inc108, %cleanup137.loopexit ], !dbg !3267
  call void @llvm.dbg.value(metadata i32 %num_loops.5, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #8, !dbg !3311
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3312
  call void @llvm.dbg.value(metadata i32 undef, metadata !3146, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3183
  br label %for.cond69, !dbg !3313, !llvm.loop !3314

for.end143:                                       ; preds = %for.cond69
  call void @free(i8* %call61) #6, !dbg !3316
  call void @free(i8* %call67) #6, !dbg !3317
  br label %if.end144, !dbg !3318

if.end144:                                        ; preds = %for.end54, %for.end143
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3319
  %76 = load i8*, i8** %popcount, align 8, !dbg !3319
  call void @free(i8* %76) #6, !dbg !3319
  %77 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3319
  call void @free(i8* %77) #6, !dbg !3319
  %exits = getelementptr inbounds %struct.loops, %struct.loops* %loops, i64 0, i32 2, !dbg !3320
  store %struct.htab* null, %struct.htab** %exits, align 8, !dbg !3321
  %larray145 = getelementptr inbounds %struct.loops, %struct.loops* %loops, i64 0, i32 1, !dbg !3322
  %78 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray145, align 8, !dbg !3322
  %tobool146 = icmp eq %struct.VEC_loop_p_gc* %78, null, !dbg !3322
  br i1 %tobool146, label %cond.end151, label %cond.true147, !dbg !3322

cond.true147:                                     ; preds = %if.end144
  %base149 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %78, i64 0, i32 0, !dbg !3322
  br label %cond.end151, !dbg !3322

cond.end151:                                      ; preds = %if.end144, %cond.true147
  %cond152 = phi %struct.VEC_loop_p_base* [ %base149, %cond.true147 ], [ null, %if.end144 ], !dbg !3322
  %call153 = call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond152) #7, !dbg !3322
  br label %cleanup154, !dbg !3323

cleanup154:                                       ; preds = %cond.end151, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call153, %cond.end151 ], !dbg !3183
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3324
  ret i32 %retval.0, !dbg !3324
}

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @init_loops_structure(%struct.loops* %loops, i32 %num_loops) unnamed_addr #5 !dbg !3325 {
entry:
  call void @llvm.dbg.value(metadata %struct.loops* %loops, metadata !3329, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 %num_loops, metadata !3330, metadata !DIExpression()), !dbg !3332
  %0 = bitcast %struct.loops* %loops to i8*, !dbg !3333
  %call = tail call i8* @memset(i8* %0, i32 0, i64 32) #6, !dbg !3334
  %call1 = tail call fastcc %struct.VEC_loop_p_gc* @VEC_loop_p_gc_alloc(i32 %num_loops) #7, !dbg !3335
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %loops, i64 0, i32 1, !dbg !3336
  store %struct.VEC_loop_p_gc* %call1, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3337
  %call2 = tail call %struct.loop* @alloc_loop() #7, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.loop* %call2, metadata !3331, metadata !DIExpression()), !dbg !3332
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3339
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3339
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3339
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 3, !dbg !3339
  %3 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3339
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %call2, i64 0, i32 6, !dbg !3340
  store i32 %3, i32* %num_nodes, align 4, !dbg !3341
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3342
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3342
  %5 = bitcast %struct.basic_block_def** %x_exit_block_ptr to i64*, !dbg !3342
  %6 = load i64, i64* %5, align 8, !dbg !3342
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %call2, i64 0, i32 3, !dbg !3343
  %7 = bitcast %struct.basic_block_def** %latch to i64*, !dbg !3344
  store i64 %6, i64* %7, align 8, !dbg !3344
  %8 = bitcast %struct.control_flow_graph** %cfg to i64**, !dbg !3345
  %9 = load i64*, i64** %8, align 8, !dbg !3345
  %10 = load i64, i64* %9, align 8, !dbg !3345
  %header = getelementptr inbounds %struct.loop, %struct.loop* %call2, i64 0, i32 2, !dbg !3346
  %11 = bitcast %struct.basic_block_def** %header to i64*, !dbg !3347
  store i64 %10, i64* %11, align 8, !dbg !3347
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3348
  %x_entry_block_ptr9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !3348
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr9, align 8, !dbg !3348
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 3, !dbg !3349
  store %struct.loop* %call2, %struct.loop** %loop_father, align 8, !dbg !3350
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3351
  %x_exit_block_ptr12 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 1, !dbg !3351
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr12, align 8, !dbg !3351
  %loop_father13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 3, !dbg !3352
  store %struct.loop* %call2, %struct.loop** %loop_father13, align 8, !dbg !3353
  %16 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3354
  %tobool = icmp eq %struct.VEC_loop_p_gc* %16, null, !dbg !3354
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3354

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %16, i64 0, i32 0, !dbg !3354
  br label %cond.end, !dbg !3354

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3354
  %call16 = tail call fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %cond, %struct.loop* %call2) #7, !dbg !3354
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %loops, i64 0, i32 3, !dbg !3355
  store %struct.loop* %call2, %struct.loop** %tree_root, align 8, !dbg !3356
  ret void, !dbg !3357
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3358 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3362, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3363, metadata !DIExpression()), !dbg !3367
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3368
  %0 = load i8*, i8** %popcount, align 8, !dbg !3368
  %tobool = icmp eq i8* %0, null, !dbg !3369
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3370

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3371
  %.pre2 = zext i32 %.pre to i64, !dbg !3372
  %.pre3 = shl i64 1, %.pre2, !dbg !3372
  %.pre4 = lshr i32 %bitno, 6, !dbg !3373
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3374
  br label %if.end7, !dbg !3370

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3375
  %idxprom = zext i32 %div to i64, !dbg !3375
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3375
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3375
  %rem = and i32 %bitno, 63, !dbg !3375
  %sh_prom = zext i32 %rem to i64, !dbg !3375
  %2 = shl i64 1, %sh_prom, !dbg !3376
  %3 = and i64 %1, %2, !dbg !3376
  %tobool1 = icmp eq i64 %3, 0, !dbg !3376
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3378

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3379
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3380
  %inc = add i8 %4, 1, !dbg !3380
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3380
  br label %if.end7, !dbg !3379

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3374
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3372
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3374
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3381
  %or = or i64 %5, %shl.pre-phi, !dbg !3381
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3381
  ret void, !dbg !3382
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i32 @pre_and_rev_post_order_compute(i32*, i32*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3383 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3387, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3388, metadata !DIExpression()), !dbg !3389
  br label %land.end, !dbg !3390

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3390
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3390
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3390
  ret %struct.basic_block_def* %0, !dbg !3390
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %vec_, %struct.loop* %obj_) unnamed_addr #0 !dbg !3391 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata %struct.loop* %obj_, metadata !3396, metadata !DIExpression()), !dbg !3398
  %num1 = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3399
  %0 = load i32, i32* %num1, align 8, !dbg !3399
  %inc = add i32 %0, 1, !dbg !3399
  store i32 %inc, i32* %num1, align 8, !dbg !3399
  %idxprom = zext i32 %0 to i64, !dbg !3399
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3399
  call void @llvm.dbg.value(metadata %struct.loop** %arrayidx, metadata !3397, metadata !DIExpression()), !dbg !3398
  store %struct.loop* %obj_, %struct.loop** %arrayidx, align 8, !dbg !3399
  ret %struct.loop** %arrayidx, !dbg !3399
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !3400 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3407, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3408, metadata !DIExpression()), !dbg !3410
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3411
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3411
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3411
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3411
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3411
  %cmp = icmp eq %struct.basic_block_def* %2, %bb, !dbg !3413
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !3414

lor.lhs.false:                                    ; preds = %entry
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !3415
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3415
  %cmp3 = icmp eq %struct.basic_block_def* %3, %bb, !dbg !3416
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !3417

if.end:                                           ; preds = %lor.lhs.false
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !3418
  %4 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3418
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !3409, metadata !DIExpression()), !dbg !3410
  %cmp4 = icmp eq %struct.loop* %4, %loop, !dbg !3419
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !3420

lor.rhs:                                          ; preds = %if.end
  %call = tail call zeroext i8 @flow_loop_nested_p(%struct.loop* %loop, %struct.loop* %4) #7, !dbg !3421
  %tobool = icmp ne i8 %call, 0, !dbg !3420
  %phitmp = zext i1 %tobool to i8, !dbg !3420
  br label %lor.end, !dbg !3420

lor.end:                                          ; preds = %lor.rhs, %if.end
  %5 = phi i8 [ 1, %if.end ], [ %phitmp, %lor.rhs ]
  br label %cleanup, !dbg !3422

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.end
  %retval.0 = phi i8 [ %5, %lor.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !3410
  ret i8 %retval.0, !dbg !3423
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3424 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3428, metadata !DIExpression()), !dbg !3429
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3430
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3430

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3430
  %0 = load i32, i32* %num, align 8, !dbg !3430
  br label %cond.end, !dbg !3430

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3430
  ret i32 %cond, !dbg !3430
}

; Function Attrs: nounwind uwtable
define dso_local void @disambiguate_loops_with_multiple_latches() local_unnamed_addr #5 !dbg !3431 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !3437
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3437
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3435, metadata !DIExpression(DW_OP_deref)), !dbg !3439
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3436, metadata !DIExpression(DW_OP_deref)), !dbg !3439
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !3440
  br label %for.cond, !dbg !3440

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !3442
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !3436, metadata !DIExpression()), !dbg !3439
  %tobool = icmp eq %struct.loop* %2, null, !dbg !3440
  br i1 %tobool, label %for.end, label %for.body, !dbg !3440

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !3436, metadata !DIExpression()), !dbg !3439
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 3, !dbg !3444
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3444
  %tobool1 = icmp eq %struct.basic_block_def* %3, null, !dbg !3447
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !3448

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !3436, metadata !DIExpression()), !dbg !3439
  call fastcc void @disambiguate_multiple_latches(%struct.loop* nonnull %2) #7, !dbg !3449
  br label %for.inc, !dbg !3449

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3435, metadata !DIExpression(DW_OP_deref)), !dbg !3439
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3436, metadata !DIExpression(DW_OP_deref)), !dbg !3439
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !3442
  br label %for.cond, !dbg !3442, !llvm.loop !3450

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3452
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3452
  ret void, !dbg !3452
}

; Function Attrs: nounwind uwtable
define internal fastcc void @disambiguate_multiple_latches(%struct.loop* %loop) unnamed_addr #5 !dbg !3453 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3455, metadata !DIExpression()), !dbg !3457
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3458
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3458
  br i1 %tobool, label %if.end, label %if.then, !dbg !3460

if.then:                                          ; preds = %entry
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !3461
  %1 = load i32, i32* %num, align 8, !dbg !3461
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0), i32 %1) #6, !dbg !3462
  br label %if.end, !dbg !3462

if.end:                                           ; preds = %entry, %if.then
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3463
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3463
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3463
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3463
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3463
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3464
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3464
  %call1 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %4, %struct.basic_block_def* %5) #6, !dbg !3465
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !3456, metadata !DIExpression()), !dbg !3457
  %tobool2 = icmp eq %struct.edge_def* %call1, null, !dbg !3466
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3468

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* nonnull %call1) #6, !dbg !3469
  br label %if.end5, !dbg !3469

if.end5:                                          ; preds = %if.end, %if.then3
  br label %while.cond, !dbg !3470

while.cond:                                       ; preds = %if.end9, %if.end5
  %call6 = tail call fastcc %struct.edge_def* @find_subloop_latch_edge(%struct.loop* %loop) #7, !dbg !3471
  call void @llvm.dbg.value(metadata %struct.edge_def* %call6, metadata !3456, metadata !DIExpression()), !dbg !3457
  %tobool7 = icmp eq %struct.edge_def* %call6, null, !dbg !3473
  br i1 %tobool7, label %while.end, label %if.end9, !dbg !3475

if.end9:                                          ; preds = %while.cond
  tail call fastcc void @form_subloop(%struct.loop* %loop, %struct.edge_def* nonnull %call6) #7, !dbg !3476
  br label %while.cond, !dbg !3470, !llvm.loop !3477

while.end:                                        ; preds = %while.cond
  tail call fastcc void @merge_latch_edges(%struct.loop* %loop) #7, !dbg !3479
  ret void, !dbg !3480
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_loop_body_with_size(%struct.loop* %loop, %struct.basic_block_def** %body, i32 %max_size) local_unnamed_addr #5 !dbg !3481 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3485, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %body, metadata !3486, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %max_size, metadata !3487, metadata !DIExpression()), !dbg !3488
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3489
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3489
  %1 = bitcast %struct.loop* %loop to i8*, !dbg !3490
  %call = tail call i32 @dfs_enumerate_from(%struct.basic_block_def* %0, i32 1, i8 (%struct.basic_block_def*, i8*)* nonnull @glb_enum_p, %struct.basic_block_def** %body, i32 %max_size, i8* %1) #6, !dbg !3491
  ret i32 %call, !dbg !3492
}

declare dso_local i32 @dfs_enumerate_from(%struct.basic_block_def*, i32, i8 (%struct.basic_block_def*, i8*)*, %struct.basic_block_def**, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @glb_enum_p(%struct.basic_block_def* %bb, i8* %glb_loop) #5 !dbg !3493 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3497, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %glb_loop, metadata !3498, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %glb_loop, metadata !3499, metadata !DIExpression()), !dbg !3501
  %header = getelementptr inbounds i8, i8* %glb_loop, i64 8, !dbg !3502
  %0 = bitcast i8* %header to %struct.basic_block_def**, !dbg !3502
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %0, align 8, !dbg !3502
  %cmp = icmp eq %struct.basic_block_def* %1, %bb, !dbg !3503
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3504

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %glb_loop, metadata !3499, metadata !DIExpression()), !dbg !3501
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %bb, %struct.basic_block_def* %1) #6, !dbg !3505
  %tobool = icmp ne i8 %call, 0, !dbg !3504
  %phitmp = zext i1 %tobool to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3506
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop* %loop) local_unnamed_addr #5 !dbg !3507 {
entry:
  %tv = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3509, metadata !DIExpression()), !dbg !3512
  %0 = bitcast i32* %tv to i8*, !dbg !3513
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3513
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3514
  %1 = load i32, i32* %num_nodes, align 4, !dbg !3514
  %tobool = icmp eq i32 %1, 0, !dbg !3514
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3514

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 878, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3514
  %.pre = load i32, i32* %num_nodes, align 4, !dbg !3515
  br label %cond.end, !dbg !3514

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i32 [ %1, %entry ], [ %.pre, %cond.true ], !dbg !3515
  %conv = zext i32 %2 to i64, !dbg !3515
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3515
  %3 = bitcast i8* %call to %struct.basic_block_def**, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %3, metadata !3510, metadata !DIExpression()), !dbg !3512
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3516
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3516
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3516
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3516
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3516
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !3516
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3516
  %cmp = icmp eq %struct.basic_block_def* %4, %7, !dbg !3516
  br i1 %cmp, label %cond.true3, label %cond.end5, !dbg !3516

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 882, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3516
  br label %cond.end5, !dbg !3516

cond.end5:                                        ; preds = %cond.end, %cond.true3
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i32 0, i32* %tv, align 4, !dbg !3517
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3518
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3518
  call void @llvm.dbg.value(metadata i32* %tv, metadata !3511, metadata !DIExpression(DW_OP_deref)), !dbg !3512
  call fastcc void @fill_sons_in_loop(%struct.loop* %loop, %struct.basic_block_def* %8, %struct.basic_block_def** %3, i32* nonnull %tv) #7, !dbg !3519
  %9 = load i32, i32* %tv, align 4, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %9, metadata !3511, metadata !DIExpression()), !dbg !3512
  %10 = load i32, i32* %num_nodes, align 4, !dbg !3520
  %cmp8 = icmp eq i32 %9, %10, !dbg !3520
  br i1 %cmp8, label %cond.end12, label %cond.true10, !dbg !3520

cond.true10:                                      ; preds = %cond.end5
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 887, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3520
  br label %cond.end12, !dbg !3520

cond.end12:                                       ; preds = %cond.end5, %cond.true10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3521
  ret %struct.basic_block_def** %3, !dbg !3522
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_sons_in_loop(%struct.loop* %loop, %struct.basic_block_def* %bb, %struct.basic_block_def** %tovisit, i32* %tv) unnamed_addr #5 !dbg !3523 {
entry:
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3533
  br label %tailrecurse, !dbg !3538

tailrecurse:                                      ; preds = %if.then9, %entry
  %bb.tr = phi %struct.basic_block_def* [ %bb, %entry ], [ %postpone.0.lcssa, %if.then9 ]
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3527, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.tr, metadata !3528, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tovisit, metadata !3529, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i32* %tv, metadata !3530, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3532, metadata !DIExpression()), !dbg !3540
  %0 = load i32, i32* %tv, align 4, !dbg !3541
  %inc = add nsw i32 %0, 1, !dbg !3541
  store i32 %inc, i32* %tv, align 4, !dbg !3541
  %idxprom = sext i32 %0 to i64, !dbg !3542
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tovisit, i64 %idxprom, !dbg !3542
  store %struct.basic_block_def* %bb.tr, %struct.basic_block_def** %arrayidx, align 8, !dbg !3543
  %call = tail call %struct.basic_block_def* @first_dom_son(i32 1, %struct.basic_block_def* %bb.tr) #6, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3531, metadata !DIExpression()), !dbg !3540
  br label %for.cond, !dbg !3545

for.cond:                                         ; preds = %for.inc, %tailrecurse
  %son.0 = phi %struct.basic_block_def* [ %call, %tailrecurse ], [ %call7, %for.inc ], !dbg !3546
  %postpone.0 = phi %struct.basic_block_def* [ null, %tailrecurse ], [ %postpone.1, %for.inc ], !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %postpone.0, metadata !3532, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %son.0, metadata !3531, metadata !DIExpression()), !dbg !3540
  %tobool = icmp eq %struct.basic_block_def* %son.0, null, !dbg !3547
  br i1 %tobool, label %for.end, label %for.body, !dbg !3547

for.body:                                         ; preds = %for.cond
  %call1 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* nonnull %son.0) #7, !dbg !3548
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3548
  br i1 %tobool2, label %for.inc, label %if.end, !dbg !3550

if.end:                                           ; preds = %for.body
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3551
  %call3 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %1, %struct.basic_block_def* nonnull %son.0) #6, !dbg !3552
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3552
  br i1 %tobool4, label %if.end6, label %for.inc, !dbg !3553

if.end6:                                          ; preds = %if.end
  tail call fastcc void @fill_sons_in_loop(%struct.loop* %loop, %struct.basic_block_def* nonnull %son.0, %struct.basic_block_def** %tovisit, i32* %tv) #7, !dbg !3554
  br label %for.inc, !dbg !3555

for.inc:                                          ; preds = %if.end, %for.body, %if.end6
  %postpone.1 = phi %struct.basic_block_def* [ %postpone.0, %if.end6 ], [ %postpone.0, %for.body ], [ %son.0, %if.end ], !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %postpone.1, metadata !3532, metadata !DIExpression()), !dbg !3540
  %call7 = tail call %struct.basic_block_def* @next_dom_son(i32 1, %struct.basic_block_def* nonnull %son.0) #6, !dbg !3556
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call7, metadata !3531, metadata !DIExpression()), !dbg !3540
  br label %for.cond, !dbg !3557, !llvm.loop !3558

for.end:                                          ; preds = %for.cond
  %postpone.0.lcssa = phi %struct.basic_block_def* [ %postpone.0, %for.cond ], !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %postpone.0.lcssa, metadata !3532, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %postpone.0.lcssa, metadata !3532, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %postpone.0.lcssa, metadata !3532, metadata !DIExpression()), !dbg !3540
  %tobool8 = icmp eq %struct.basic_block_def* %postpone.0.lcssa, null, !dbg !3560
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3561

if.then9:                                         ; preds = %for.end
  br label %tailrecurse, !dbg !3538

if.end10:                                         ; preds = %for.end
  ret void, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def** @get_loop_body_in_custom_order(%struct.loop* %loop, i32 (i8*, i8*)* %bb_comparator) local_unnamed_addr #5 !dbg !3563 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3567, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %bb_comparator, metadata !3568, metadata !DIExpression()), !dbg !3570
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #7, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !3569, metadata !DIExpression()), !dbg !3570
  %0 = bitcast %struct.basic_block_def** %call to i8*, !dbg !3572
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3573
  %1 = load i32, i32* %num_nodes, align 4, !dbg !3573
  %conv = zext i32 %1 to i64, !dbg !3574
  tail call void @spec_qsort(i8* %0, i64 %conv, i64 8, i32 (i8*, i8*)* %bb_comparator) #6, !dbg !3575
  ret %struct.basic_block_def** %call, !dbg !3576
}

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def** @get_loop_body_in_bfs_order(%struct.loop* %loop) local_unnamed_addr #5 !dbg !3577 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3579, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 1, metadata !3584, metadata !DIExpression()), !dbg !3588
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3589
  %0 = load i32, i32* %num_nodes, align 4, !dbg !3589
  %tobool = icmp eq i32 %0, 0, !dbg !3589
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3589

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 920, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3589
  br label %cond.end, !dbg !3589

cond.end:                                         ; preds = %entry, %cond.true
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3590
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3590
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3590
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3590
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3590
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3590
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3590
  %cmp = icmp eq %struct.basic_block_def* %1, %4, !dbg !3590
  br i1 %cmp, label %cond.true1, label %cond.end3, !dbg !3590

cond.true1:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 921, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3590
  br label %cond.end3, !dbg !3590

cond.end3:                                        ; preds = %cond.end, %cond.true1
  %5 = load i32, i32* %num_nodes, align 4, !dbg !3591
  %conv = zext i32 %5 to i64, !dbg !3591
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3591
  %6 = bitcast i8* %call to %struct.basic_block_def**, !dbg !3591
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %6, metadata !3580, metadata !DIExpression()), !dbg !3588
  %call6 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call6, metadata !3582, metadata !DIExpression()), !dbg !3588
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3593
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3593
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !3581, metadata !DIExpression()), !dbg !3588
  %8 = bitcast %struct.edge_def** %e to i8*, !dbg !3594
  %9 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3594
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3595
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3595
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3595
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3597
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3597
  br label %while.cond, !dbg !3599

while.cond:                                       ; preds = %cond.end38, %cond.end3
  %bb.0 = phi %struct.basic_block_def* [ %7, %cond.end3 ], [ %34, %cond.end38 ], !dbg !3588
  %i.0 = phi i32 [ 0, %cond.end3 ], [ %i.2.lcssa, %cond.end38 ], !dbg !3600
  %vc.0 = phi i32 [ 1, %cond.end3 ], [ %inc40, %cond.end38 ], !dbg !3588
  call void @llvm.dbg.value(metadata i32 %vc.0, metadata !3584, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3583, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3581, metadata !DIExpression()), !dbg !3588
  %15 = load i32, i32* %num_nodes, align 4, !dbg !3601
  %cmp8 = icmp ult i32 %i.0, %15, !dbg !3602
  br i1 %cmp8, label %while.body, label %while.end, !dbg !3599

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3603
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3604
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3605
  %16 = load i32, i32* %index, align 8, !dbg !3605
  %call10 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call6, i32 %16) #6, !dbg !3607
  %tobool11 = icmp eq i32 %call10, 0, !dbg !3607
  br i1 %tobool11, label %if.then, label %if.end, !dbg !3608

if.then:                                          ; preds = %while.body
  %17 = load i32, i32* %index, align 8, !dbg !3609
  %call13 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call6, i32 %17) #6, !dbg !3611
  %inc = add i32 %i.0, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3583, metadata !DIExpression()), !dbg !3588
  %idxprom = zext i32 %i.0 to i64, !dbg !3613
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %6, i64 %idxprom, !dbg !3613
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %arrayidx, align 8, !dbg !3614
  br label %if.end, !dbg !3615

if.end:                                           ; preds = %while.body, %if.then
  %i.1 = phi i32 [ %i.0, %while.body ], [ %inc, %if.then ], !dbg !3588
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3583, metadata !DIExpression()), !dbg !3588
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3616
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3616
  %call14 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3616
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 0, !dbg !3616
  store i32 %18, i32* %11, align 8, !dbg !3616
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 1, !dbg !3616
  store %struct.VEC_edge_gc** %19, %struct.VEC_edge_gc*** %12, align 8, !dbg !3616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !3616
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3616
  br label %for.cond, !dbg !3616

for.cond:                                         ; preds = %for.inc, %if.end
  %i.2 = phi i32 [ %i.1, %if.end ], [ %i.4, %for.inc ], !dbg !3600
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3583, metadata !DIExpression()), !dbg !3588
  %20 = load i32, i32* %13, align 8, !dbg !3617
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3617
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3585, metadata !DIExpression(DW_OP_deref)), !dbg !3594
  %call15 = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e) #7, !dbg !3617
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3616
  br i1 %tobool16, label %for.end, label %for.body, !dbg !3616

for.body:                                         ; preds = %for.cond
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3618
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !3585, metadata !DIExpression()), !dbg !3594
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i64 0, i32 1, !dbg !3621
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3621
  %call17 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %23) #7, !dbg !3622
  %tobool18 = icmp eq i8 %call17, 0, !dbg !3622
  br i1 %tobool18, label %for.inc, label %if.then19, !dbg !3623

if.then19:                                        ; preds = %for.body
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3624
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !3585, metadata !DIExpression()), !dbg !3594
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 1, !dbg !3627
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8, !dbg !3627
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 9, !dbg !3628
  %26 = load i32, i32* %index21, align 8, !dbg !3628
  %call22 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call6, i32 %26) #6, !dbg !3629
  %tobool23 = icmp eq i32 %call22, 0, !dbg !3629
  br i1 %tobool23, label %if.then24, label %for.inc, !dbg !3630

if.then24:                                        ; preds = %if.then19
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3631
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3585, metadata !DIExpression()), !dbg !3594
  %dest25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i64 0, i32 1, !dbg !3633
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest25, align 8, !dbg !3633
  %index26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 9, !dbg !3634
  %29 = load i32, i32* %index26, align 8, !dbg !3634
  %call27 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call6, i32 %29) #6, !dbg !3635
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3636
  call void @llvm.dbg.value(metadata %struct.edge_def* %30, metadata !3585, metadata !DIExpression()), !dbg !3594
  %dest28 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i64 0, i32 1, !dbg !3637
  %31 = bitcast %struct.basic_block_def** %dest28 to i64*, !dbg !3637
  %32 = load i64, i64* %31, align 8, !dbg !3637
  %inc29 = add i32 %i.2, 1, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !3583, metadata !DIExpression()), !dbg !3588
  %idxprom30 = zext i32 %i.2 to i64, !dbg !3639
  %arrayidx31 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %6, i64 %idxprom30, !dbg !3639
  %33 = bitcast %struct.basic_block_def** %arrayidx31 to i64*, !dbg !3640
  store i64 %32, i64* %33, align 8, !dbg !3640
  br label %for.inc, !dbg !3641

for.inc:                                          ; preds = %if.then19, %for.body, %if.then24
  %i.4 = phi i32 [ %i.2, %for.body ], [ %i.2, %if.then19 ], [ %inc29, %if.then24 ], !dbg !3600
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !3583, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3587, metadata !DIExpression(DW_OP_deref)), !dbg !3594
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3617
  br label %for.cond, !dbg !3617, !llvm.loop !3642

for.end:                                          ; preds = %for.cond
  %i.2.lcssa = phi i32 [ %i.2, %for.cond ], !dbg !3600
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !3583, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !3583, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %i.2.lcssa, metadata !3583, metadata !DIExpression()), !dbg !3588
  %cmp34 = icmp ult i32 %i.2.lcssa, %vc.0, !dbg !3644
  br i1 %cmp34, label %cond.true36, label %cond.end38, !dbg !3644

cond.true36:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 951, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3644
  br label %cond.end38, !dbg !3644

cond.end38:                                       ; preds = %for.end, %cond.true36
  %inc40 = add i32 %vc.0, 1, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %inc40, metadata !3584, metadata !DIExpression()), !dbg !3588
  %idxprom41 = zext i32 %vc.0 to i64, !dbg !3646
  %arrayidx42 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %6, i64 %idxprom41, !dbg !3646
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx42, align 8, !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %34, metadata !3581, metadata !DIExpression()), !dbg !3588
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3647
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3647
  br label %while.cond, !dbg !3599, !llvm.loop !3648

while.end:                                        ; preds = %while.cond
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call6) #6, !dbg !3649
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3582, metadata !DIExpression()), !dbg !3588
  ret %struct.basic_block_def** %6, !dbg !3650
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rescan_loop_exit(%struct.edge_def* %e, i8 zeroext %new_edge, i8 zeroext %removed) local_unnamed_addr #5 !dbg !3651 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3655, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8 %new_edge, metadata !3656, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8 %removed, metadata !3657, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.loop_exit* null, metadata !3659, metadata !DIExpression()), !dbg !3663
  %call = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !3664
  %tobool = icmp eq i8 %call, 0, !dbg !3664
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3666

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq i8 %removed, 0, !dbg !3667
  br i1 %tobool1, label %land.lhs.true, label %if.end30, !dbg !3669

land.lhs.true:                                    ; preds = %if.end
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3670
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3670
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 3, !dbg !3671
  %1 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3671
  %cmp = icmp eq %struct.loop* %1, null, !dbg !3672
  br i1 %cmp, label %if.end30, label %land.lhs.true2, !dbg !3673

land.lhs.true2:                                   ; preds = %land.lhs.true
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3674
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3674
  %loop_father3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 3, !dbg !3675
  %3 = load %struct.loop*, %struct.loop** %loop_father3, align 8, !dbg !3675
  %cmp4 = icmp eq %struct.loop* %3, null, !dbg !3676
  br i1 %cmp4, label %if.end30, label %land.lhs.true5, !dbg !3677

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %call9 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* nonnull %1, %struct.basic_block_def* %2) #7, !dbg !3678
  %tobool10 = icmp eq i8 %call9, 0, !dbg !3678
  br i1 %tobool10, label %if.then11, label %if.end30, !dbg !3679

if.then11:                                        ; preds = %land.lhs.true5
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3680
  %loop_father13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 3, !dbg !3682
  %5 = load %struct.loop*, %struct.loop** %loop_father13, align 8, !dbg !3682
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3683
  %loop_father15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 3, !dbg !3684
  %7 = load %struct.loop*, %struct.loop** %loop_father15, align 8, !dbg !3684
  %call16 = tail call %struct.loop* @find_common_loop(%struct.loop* %5, %struct.loop* %7) #7, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.loop* %call16, metadata !3662, metadata !DIExpression()), !dbg !3663
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3686
  %loop_father18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 3, !dbg !3688
  %9 = load %struct.loop*, %struct.loop** %loop_father18, align 8, !dbg !3688
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !3661, metadata !DIExpression()), !dbg !3663
  br label %for.cond, !dbg !3689

for.cond:                                         ; preds = %for.body, %if.then11
  %exits.0 = phi %struct.loop_exit* [ null, %if.then11 ], [ %10, %for.body ], !dbg !3663
  %aloop.0 = phi %struct.loop* [ %9, %if.then11 ], [ %call29, %for.body ], !dbg !3690
  call void @llvm.dbg.value(metadata %struct.loop* %aloop.0, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exits.0, metadata !3659, metadata !DIExpression()), !dbg !3663
  %cmp19 = icmp eq %struct.loop* %aloop.0, %call16, !dbg !3691
  br i1 %cmp19, label %if.end30.loopexit, label %for.body, !dbg !3693

for.body:                                         ; preds = %for.cond
  %call20 = tail call i8* @ggc_alloc_stat(i64 32) #6, !dbg !3694
  %10 = bitcast i8* %call20 to %struct.loop_exit*, !dbg !3694
  call void @llvm.dbg.value(metadata %struct.loop_exit* %10, metadata !3660, metadata !DIExpression()), !dbg !3663
  %e21 = bitcast i8* %call20 to %struct.edge_def**, !dbg !3696
  store %struct.edge_def* %e, %struct.edge_def** %e21, align 8, !dbg !3697
  %exits22 = getelementptr inbounds %struct.loop, %struct.loop* %aloop.0, i64 0, i32 18, !dbg !3698
  %11 = load %struct.loop_exit*, %struct.loop_exit** %exits22, align 8, !dbg !3698
  %next = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %11, i64 0, i32 2, !dbg !3699
  %12 = bitcast %struct.loop_exit** %next to i64*, !dbg !3699
  %13 = load i64, i64* %12, align 8, !dbg !3699
  %next23 = getelementptr inbounds i8, i8* %call20, i64 16, !dbg !3700
  %14 = bitcast i8* %next23 to i64*, !dbg !3701
  store i64 %13, i64* %14, align 8, !dbg !3701
  %15 = bitcast %struct.loop_exit** %exits22 to i64*, !dbg !3702
  %16 = load i64, i64* %15, align 8, !dbg !3702
  %prev = getelementptr inbounds i8, i8* %call20, i64 8, !dbg !3703
  %17 = bitcast i8* %prev to i64*, !dbg !3704
  store i64 %16, i64* %17, align 8, !dbg !3704
  %18 = inttoptr i64 %13 to %struct.loop_exit*, !dbg !3705
  %prev26 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %18, i64 0, i32 1, !dbg !3706
  %19 = bitcast %struct.loop_exit** %prev26 to i8**, !dbg !3707
  store i8* %call20, i8** %19, align 8, !dbg !3707
  %20 = bitcast i8* %prev to %struct.loop_exit**, !dbg !3708
  %21 = load %struct.loop_exit*, %struct.loop_exit** %20, align 8, !dbg !3708
  %next28 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %21, i64 0, i32 2, !dbg !3709
  %22 = bitcast %struct.loop_exit** %next28 to i8**, !dbg !3710
  store i8* %call20, i8** %22, align 8, !dbg !3710
  %next_e = getelementptr inbounds i8, i8* %call20, i64 24, !dbg !3711
  %23 = bitcast i8* %next_e to %struct.loop_exit**, !dbg !3711
  store %struct.loop_exit* %exits.0, %struct.loop_exit** %23, align 8, !dbg !3712
  call void @llvm.dbg.value(metadata %struct.loop_exit* %10, metadata !3659, metadata !DIExpression()), !dbg !3663
  %call29 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %aloop.0) #7, !dbg !3713
  call void @llvm.dbg.value(metadata %struct.loop* %call29, metadata !3661, metadata !DIExpression()), !dbg !3663
  br label %for.cond, !dbg !3714, !llvm.loop !3715

if.end30.loopexit:                                ; preds = %for.cond
  %exits.0.lcssa = phi %struct.loop_exit* [ %exits.0, %for.cond ], !dbg !3663
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exits.0.lcssa, metadata !3659, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exits.0.lcssa, metadata !3659, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exits.0.lcssa, metadata !3659, metadata !DIExpression()), !dbg !3663
  br label %if.end30, !dbg !3717

if.end30:                                         ; preds = %if.end30.loopexit, %land.lhs.true5, %land.lhs.true2, %land.lhs.true, %if.end
  %exits.1 = phi %struct.loop_exit* [ null, %if.end ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ %exits.0.lcssa, %if.end30.loopexit ], !dbg !3719
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exits.1, metadata !3659, metadata !DIExpression()), !dbg !3663
  %tobool31 = icmp eq %struct.loop_exit* %exits.1, null, !dbg !3717
  %tobool33 = icmp ne i8 %new_edge, 0, !dbg !3720
  %or.cond = and i1 %tobool31, %tobool33, !dbg !3721
  br i1 %or.cond, label %cleanup.cont, label %if.end35, !dbg !3721

if.end35:                                         ; preds = %if.end30
  %24 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3722
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %24, i64 0, i32 4, !dbg !3722
  %25 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3722
  %exits36 = getelementptr inbounds %struct.loops, %struct.loops* %25, i64 0, i32 2, !dbg !3723
  %26 = load %struct.htab*, %struct.htab** %exits36, align 8, !dbg !3723
  %27 = bitcast %struct.edge_def* %e to i8*, !dbg !3724
  %28 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !3725
  %call37 = tail call i32 %28(i8* %27) #6, !dbg !3725
  %tobool38 = icmp ne %struct.loop_exit* %exits.1, null, !dbg !3726
  %cond = zext i1 %tobool38 to i32, !dbg !3726
  %call39 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %26, i8* %27, i32 %call37, i32 %cond) #6, !dbg !3727
  call void @llvm.dbg.value(metadata i8** %call39, metadata !3658, metadata !DIExpression()), !dbg !3663
  %tobool40 = icmp eq i8** %call39, null, !dbg !3728
  br i1 %tobool40, label %cleanup.cont, label %if.end42, !dbg !3730

if.end42:                                         ; preds = %if.end35
  br i1 %tobool31, label %if.else, label %if.then44, !dbg !3731

if.then44:                                        ; preds = %if.end42
  %29 = load i8*, i8** %call39, align 8, !dbg !3732
  %tobool45 = icmp eq i8* %29, null, !dbg !3732
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !3736

if.then46:                                        ; preds = %if.then44
  tail call void @loop_exit_free(i8* nonnull %29) #7, !dbg !3737
  br label %if.end47, !dbg !3737

if.end47:                                         ; preds = %if.then44, %if.then46
  %30 = bitcast i8** %call39 to %struct.loop_exit**, !dbg !3738
  store %struct.loop_exit* %exits.1, %struct.loop_exit** %30, align 8, !dbg !3738
  br label %cleanup.cont, !dbg !3739

if.else:                                          ; preds = %if.end42
  %31 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3740
  %x_current_loops49 = getelementptr inbounds %struct.function, %struct.function* %31, i64 0, i32 4, !dbg !3740
  %32 = load %struct.loops*, %struct.loops** %x_current_loops49, align 8, !dbg !3740
  %exits50 = getelementptr inbounds %struct.loops, %struct.loops* %32, i64 0, i32 2, !dbg !3741
  %33 = load %struct.htab*, %struct.htab** %exits50, align 8, !dbg !3741
  tail call void @htab_clear_slot(%struct.htab* %33, i8** nonnull %call39) #6, !dbg !3742
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end35, %entry, %if.end30, %if.else, %if.end47
  ret void, !dbg !3743
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 %flags) unnamed_addr #0 !dbg !3744 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3748, metadata !DIExpression()), !dbg !3749
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3750
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3750
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3750
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !3751
  %2 = load i32, i32* %state, align 8, !dbg !3751
  %and = and i32 %2, %flags, !dbg !3752
  %cmp = icmp eq i32 %and, %flags, !dbg !3753
  %conv1 = zext i1 %cmp to i8, !dbg !3754
  ret i8 %conv1, !dbg !3755
}

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @find_common_loop(%struct.loop* %loop_s, %struct.loop* %loop_d) local_unnamed_addr #5 !dbg !3756 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop_s, metadata !3760, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata %struct.loop* %loop_d, metadata !3761, metadata !DIExpression()), !dbg !3764
  %tobool = icmp eq %struct.loop* %loop_s, null, !dbg !3765
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3767

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq %struct.loop* %loop_d, null, !dbg !3768
  br i1 %tobool1, label %cleanup, label %if.end3, !dbg !3770

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc i32 @loop_depth(%struct.loop* nonnull %loop_s) #7, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %call, metadata !3762, metadata !DIExpression()), !dbg !3764
  %call4 = tail call fastcc i32 @loop_depth(%struct.loop* nonnull %loop_d) #7, !dbg !3772
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3763, metadata !DIExpression()), !dbg !3764
  %cmp = icmp ult i32 %call, %call4, !dbg !3773
  br i1 %cmp, label %if.then5, label %if.else, !dbg !3775

if.then5:                                         ; preds = %if.end3
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop_d, i64 0, i32 7, !dbg !3776
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3776
  %tobool6 = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3776
  br i1 %tobool6, label %cond.end, label %cond.true, !dbg !3776

cond.true:                                        ; preds = %if.then5
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3776
  br label %cond.end, !dbg !3776

cond.end:                                         ; preds = %if.then5, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.then5 ], !dbg !3776
  %call8 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %call) #7, !dbg !3776
  call void @llvm.dbg.value(metadata %struct.loop* %call8, metadata !3761, metadata !DIExpression()), !dbg !3764
  br label %if.end21, !dbg !3777

if.else:                                          ; preds = %if.end3
  %cmp9 = icmp ugt i32 %call, %call4, !dbg !3778
  br i1 %cmp9, label %if.then10, label %if.end21, !dbg !3780

if.then10:                                        ; preds = %if.else
  %superloops11 = getelementptr inbounds %struct.loop, %struct.loop* %loop_s, i64 0, i32 7, !dbg !3781
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops11, align 8, !dbg !3781
  %tobool12 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !3781
  br i1 %tobool12, label %cond.end17, label %cond.true13, !dbg !3781

cond.true13:                                      ; preds = %if.then10
  %base15 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !3781
  br label %cond.end17, !dbg !3781

cond.end17:                                       ; preds = %if.then10, %cond.true13
  %cond18 = phi %struct.VEC_loop_p_base* [ %base15, %cond.true13 ], [ null, %if.then10 ], !dbg !3781
  %call19 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond18, i32 %call4) #7, !dbg !3781
  call void @llvm.dbg.value(metadata %struct.loop* %call19, metadata !3760, metadata !DIExpression()), !dbg !3764
  br label %if.end21, !dbg !3782

if.end21:                                         ; preds = %if.else, %cond.end17, %cond.end
  %loop_d.addr.0 = phi %struct.loop* [ %call8, %cond.end ], [ %loop_d, %cond.end17 ], [ %loop_d, %if.else ]
  %loop_s.addr.1 = phi %struct.loop* [ %loop_s, %cond.end ], [ %call19, %cond.end17 ], [ %loop_s, %if.else ]
  call void @llvm.dbg.value(metadata %struct.loop* %loop_s.addr.1, metadata !3760, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata %struct.loop* %loop_d.addr.0, metadata !3761, metadata !DIExpression()), !dbg !3764
  br label %while.cond, !dbg !3783

while.cond:                                       ; preds = %while.body, %if.end21
  %loop_d.addr.1 = phi %struct.loop* [ %loop_d.addr.0, %if.end21 ], [ %call24, %while.body ], !dbg !3764
  %loop_s.addr.2 = phi %struct.loop* [ %loop_s.addr.1, %if.end21 ], [ %call23, %while.body ]
  call void @llvm.dbg.value(metadata %struct.loop* %loop_s.addr.2, metadata !3760, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata %struct.loop* %loop_d.addr.1, metadata !3761, metadata !DIExpression()), !dbg !3764
  %cmp22 = icmp eq %struct.loop* %loop_s.addr.2, %loop_d.addr.1, !dbg !3784
  br i1 %cmp22, label %cleanup.loopexit, label %while.body, !dbg !3783

while.body:                                       ; preds = %while.cond
  %call23 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop_s.addr.2) #7, !dbg !3785
  call void @llvm.dbg.value(metadata %struct.loop* %call23, metadata !3760, metadata !DIExpression()), !dbg !3764
  %call24 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop_d.addr.1) #7, !dbg !3787
  call void @llvm.dbg.value(metadata %struct.loop* %call24, metadata !3761, metadata !DIExpression()), !dbg !3764
  br label %while.cond, !dbg !3783, !llvm.loop !3788

cleanup.loopexit:                                 ; preds = %while.cond
  %loop_d.addr.1.lcssa = phi %struct.loop* [ %loop_d.addr.1, %while.cond ], !dbg !3764
  call void @llvm.dbg.value(metadata %struct.loop* %loop_d.addr.1.lcssa, metadata !3761, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata %struct.loop* %loop_d.addr.1.lcssa, metadata !3761, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata %struct.loop* %loop_s.addr.2, metadata !3760, metadata !DIExpression()), !dbg !3764
  br label %cleanup, !dbg !3790

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  %retval.0 = phi %struct.loop* [ %loop_d, %entry ], [ %loop_s, %if.end ], [ %loop_d.addr.1.lcssa, %cleanup.loopexit ], !dbg !3764
  ret %struct.loop* %retval.0, !dbg !3790
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #2

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @loop_exit_free(i8* %ex) #5 !dbg !3791 {
entry:
  call void @llvm.dbg.value(metadata i8* %ex, metadata !3793, metadata !DIExpression()), !dbg !3796
  %0 = bitcast i8* %ex to %struct.loop_exit*, !dbg !3797
  call void @llvm.dbg.value(metadata %struct.loop_exit* %0, metadata !3794, metadata !DIExpression()), !dbg !3796
  br label %for.cond, !dbg !3798

for.cond:                                         ; preds = %for.body, %entry
  %1 = phi i8* [ %ex, %entry ], [ %3, %for.body ], !dbg !3796
  %exit.0 = phi %struct.loop_exit* [ %0, %entry ], [ %2, %for.body ], !dbg !3796
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exit.0, metadata !3794, metadata !DIExpression()), !dbg !3796
  %tobool = icmp eq %struct.loop_exit* %exit.0, null, !dbg !3799
  br i1 %tobool, label %for.end, label %for.body, !dbg !3799

for.body:                                         ; preds = %for.cond
  %next_e = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 3, !dbg !3801
  %2 = load %struct.loop_exit*, %struct.loop_exit** %next_e, align 8, !dbg !3801
  %3 = bitcast %struct.loop_exit* %2 to i8*, !dbg !3796
  call void @llvm.dbg.value(metadata %struct.loop_exit* %2, metadata !3795, metadata !DIExpression()), !dbg !3796
  %prev = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 1, !dbg !3804
  %4 = bitcast %struct.loop_exit** %prev to i64*, !dbg !3804
  %5 = load i64, i64* %4, align 8, !dbg !3804
  %next1 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 2, !dbg !3805
  %6 = load %struct.loop_exit*, %struct.loop_exit** %next1, align 8, !dbg !3805
  %prev2 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %6, i64 0, i32 1, !dbg !3806
  %7 = bitcast %struct.loop_exit** %prev2 to i64*, !dbg !3807
  store i64 %5, i64* %7, align 8, !dbg !3807
  %8 = bitcast %struct.loop_exit** %next1 to i64*, !dbg !3808
  %9 = load i64, i64* %8, align 8, !dbg !3808
  %10 = load %struct.loop_exit*, %struct.loop_exit** %prev, align 8, !dbg !3809
  %next5 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %10, i64 0, i32 2, !dbg !3810
  %11 = bitcast %struct.loop_exit** %next5 to i64*, !dbg !3811
  store i64 %9, i64* %11, align 8, !dbg !3811
  tail call void @ggc_free(i8* %1) #6, !dbg !3812
  call void @llvm.dbg.value(metadata %struct.loop_exit* %2, metadata !3794, metadata !DIExpression()), !dbg !3796
  br label %for.cond, !dbg !3813, !llvm.loop !3814

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3816
}

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @record_loop_exits() local_unnamed_addr #5 !dbg !3817 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3822
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3822
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3823
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3824
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !3824
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3824
  %tobool = icmp eq %struct.loops* %3, null, !dbg !3824
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3826

if.end:                                           ; preds = %entry
  %call = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !3827
  %tobool1 = icmp eq i8 %call, 0, !dbg !3827
  br i1 %tobool1, label %if.end3, label %cleanup, !dbg !3829

if.end3:                                          ; preds = %if.end
  tail call fastcc void @loops_state_set(i32 8) #7, !dbg !3830
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3831
  %x_current_loops5 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !3831
  %5 = load %struct.loops*, %struct.loops** %x_current_loops5, align 8, !dbg !3831
  %exits = getelementptr inbounds %struct.loops, %struct.loops* %5, i64 0, i32 2, !dbg !3831
  %6 = load %struct.htab*, %struct.htab** %exits, align 8, !dbg !3831
  %cmp = icmp eq %struct.htab* %6, null, !dbg !3831
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3831

cond.true:                                        ; preds = %if.end3
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1082, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3831
  br label %cond.end, !dbg !3831

cond.end:                                         ; preds = %if.end3, %cond.true
  %call6 = tail call fastcc i32 @number_of_loops() #7, !dbg !3832
  %mul = shl i32 %call6, 1, !dbg !3833
  %conv = zext i32 %mul to i64, !dbg !3834
  %call7 = tail call %struct.htab* @htab_create_alloc(i64 %conv, i32 (i8*)* nonnull @loop_exit_hash, i32 (i8*, i8*)* nonnull @loop_exit_eq, void (i8*)* nonnull @loop_exit_free, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !3835
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3836
  %x_current_loops9 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 4, !dbg !3836
  %8 = load %struct.loops*, %struct.loops** %x_current_loops9, align 8, !dbg !3836
  %exits10 = getelementptr inbounds %struct.loops, %struct.loops* %8, i64 0, i32 2, !dbg !3837
  store %struct.htab* %call7, %struct.htab** %exits10, align 8, !dbg !3838
  %cfg = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3839
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3839
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3839
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3839
  %11 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3841
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3841
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3841
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3845
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3845
  br label %for.cond, !dbg !3839

for.cond:                                         ; preds = %for.inc21, %cond.end
  %16 = phi %struct.control_flow_graph* [ %9, %cond.end ], [ %.pre1, %for.inc21 ], !dbg !3847
  %.pn = phi %struct.basic_block_def* [ %10, %cond.end ], [ %bb.0, %for.inc21 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3848
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3848
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3819, metadata !DIExpression()), !dbg !3849
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %16, i64 0, i32 1, !dbg !3847
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3847
  %cmp14 = icmp eq %struct.basic_block_def* %bb.0, %17, !dbg !3847
  br i1 %cmp14, label %cleanup.loopexit, label %for.body, !dbg !3839

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3850
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3850
  %call16 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3850
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 0, !dbg !3850
  store i32 %18, i32* %12, align 8, !dbg !3850
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 1, !dbg !3850
  store %struct.VEC_edge_gc** %19, %struct.VEC_edge_gc*** %13, align 8, !dbg !3850
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !3850
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3850
  br label %for.cond17, !dbg !3850

for.cond17:                                       ; preds = %for.body20, %for.body
  %20 = load i32, i32* %14, align 8, !dbg !3851
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !3851
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3821, metadata !DIExpression(DW_OP_deref)), !dbg !3849
  %call18 = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e) #7, !dbg !3851
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3850
  br i1 %tobool19, label %for.inc21, label %for.body20, !dbg !3850

for.body20:                                       ; preds = %for.cond17
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3852
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !3821, metadata !DIExpression()), !dbg !3849
  call void @rescan_loop_exit(%struct.edge_def* %22, i8 zeroext 1, i8 zeroext 0) #7, !dbg !3854
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3820, metadata !DIExpression(DW_OP_deref)), !dbg !3849
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3851
  br label %for.cond17, !dbg !3851, !llvm.loop !3855

for.inc21:                                        ; preds = %for.cond17
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3847
  %cfg13.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3857
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13.phi.trans.insert, align 8, !dbg !3847
  br label %for.cond, !dbg !3847, !llvm.loop !3858

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3860

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3860
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3860
  ret void, !dbg !3860
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_set(i32 %flags) unnamed_addr #0 !dbg !3861 {
entry:
  call void @llvm.dbg.value(metadata i32 8, metadata !3865, metadata !DIExpression()), !dbg !3866
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3867
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3867
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3867
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !3868
  %2 = load i32, i32* %state, align 8, !dbg !3869
  %or = or i32 %2, 8, !dbg !3869
  store i32 %or, i32* %state, align 8, !dbg !3869
  ret void, !dbg !3870
}

declare dso_local %struct.htab* @htab_create_alloc(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8* (i64, i64)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @loop_exit_hash(i8* %ex) #5 !dbg !3871 {
entry:
  call void @llvm.dbg.value(metadata i8* %ex, metadata !3873, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* %ex, metadata !3874, metadata !DIExpression()), !dbg !3876
  %0 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !3877
  %1 = bitcast i8* %ex to i8**, !dbg !3878
  %2 = load i8*, i8** %1, align 8, !dbg !3878
  %call = tail call i32 %0(i8* %2) #6, !dbg !3877
  ret i32 %call, !dbg !3879
}

; Function Attrs: nounwind uwtable
define internal i32 @loop_exit_eq(i8* %ex, i8* %e) #5 !dbg !3880 {
entry:
  call void @llvm.dbg.value(metadata i8* %ex, metadata !3882, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i8* %e, metadata !3883, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i8* %ex, metadata !3884, metadata !DIExpression()), !dbg !3885
  %e1 = bitcast i8* %ex to %struct.edge_def**, !dbg !3886
  %0 = load %struct.edge_def*, %struct.edge_def** %e1, align 8, !dbg !3886
  %1 = bitcast i8* %e to %struct.edge_def*, !dbg !3887
  %cmp = icmp eq %struct.edge_def* %0, %1, !dbg !3888
  %conv = zext i1 %cmp to i32, !dbg !3888
  ret i32 %conv, !dbg !3889
}

declare dso_local i8* @ggc_calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define dso_local void @dump_recorded_exits(%struct._IO_FILE* %file) local_unnamed_addr #5 !dbg !3890 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3892, metadata !DIExpression()), !dbg !3893
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3894
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3894
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3894
  %exits = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 2, !dbg !3896
  %2 = load %struct.htab*, %struct.htab** %exits, align 8, !dbg !3896
  %tobool = icmp eq %struct.htab* %2, null, !dbg !3894
  br i1 %tobool, label %return, label %if.end, !dbg !3897

if.end:                                           ; preds = %entry
  %3 = bitcast %struct._IO_FILE* %file to i8*, !dbg !3898
  tail call void @htab_traverse(%struct.htab* nonnull %2, i32 (i8**, i8*)* nonnull @dump_recorded_exit, i8* %3) #6, !dbg !3899
  br label %return, !dbg !3900

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3900
}

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @dump_recorded_exit(i8** %slot, i8* %file) #5 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3905, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8* %file, metadata !3906, metadata !DIExpression()), !dbg !3910
  %0 = bitcast i8** %slot to %struct.loop_exit**, !dbg !3911
  %1 = load %struct.loop_exit*, %struct.loop_exit** %0, align 8, !dbg !3911
  call void @llvm.dbg.value(metadata %struct.loop_exit* %1, metadata !3907, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3910
  %e1 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %1, i64 0, i32 0, !dbg !3912
  %2 = load %struct.edge_def*, %struct.edge_def** %e1, align 8, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.edge_def* %2, metadata !3909, metadata !DIExpression()), !dbg !3910
  br label %for.cond, !dbg !3913

for.cond:                                         ; preds = %for.body, %entry
  %exit.0 = phi %struct.loop_exit* [ %1, %entry ], [ %3, %for.body ], !dbg !3910
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3910
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3908, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exit.0, metadata !3907, metadata !DIExpression()), !dbg !3910
  %cmp = icmp eq %struct.loop_exit* %exit.0, null, !dbg !3914
  br i1 %cmp, label %for.end, label %for.body, !dbg !3917

for.body:                                         ; preds = %for.cond
  %inc = add i32 %n.0, 1, !dbg !3918
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3908, metadata !DIExpression()), !dbg !3910
  %next_e = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 3, !dbg !3919
  %3 = load %struct.loop_exit*, %struct.loop_exit** %next_e, align 8, !dbg !3919
  call void @llvm.dbg.value(metadata %struct.loop_exit* %3, metadata !3907, metadata !DIExpression()), !dbg !3910
  br label %for.cond, !dbg !3920, !llvm.loop !3921

for.end:                                          ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !3910
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3908, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3908, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3908, metadata !DIExpression()), !dbg !3910
  %4 = bitcast i8* %file to %struct._IO_FILE*, !dbg !3923
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i64 0, i32 0, !dbg !3924
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3924
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !3925
  %6 = load i32, i32* %index, align 8, !dbg !3925
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i64 0, i32 1, !dbg !3926
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3926
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 9, !dbg !3927
  %8 = load i32, i32* %index2, align 8, !dbg !3927
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i32 %6, i32 %8, i32 %n.0.lcssa) #6, !dbg !3928
  ret i32 1, !dbg !3929
}

; Function Attrs: nounwind uwtable
define dso_local void @release_recorded_exits() local_unnamed_addr #5 !dbg !3930 {
entry:
  %call = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !3931
  %tobool = icmp eq i8 %call, 0, !dbg !3931
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3931

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3931
  br label %cond.end, !dbg !3931

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3932
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3932
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3932
  %exits = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 2, !dbg !3933
  %2 = load %struct.htab*, %struct.htab** %exits, align 8, !dbg !3933
  tail call void @htab_delete(%struct.htab* %2) #6, !dbg !3934
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3935
  %x_current_loops2 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 4, !dbg !3935
  %4 = load %struct.loops*, %struct.loops** %x_current_loops2, align 8, !dbg !3935
  %exits3 = getelementptr inbounds %struct.loops, %struct.loops* %4, i64 0, i32 2, !dbg !3936
  store %struct.htab* null, %struct.htab** %exits3, align 8, !dbg !3937
  tail call fastcc void @loops_state_clear(i32 8) #7, !dbg !3938
  ret void, !dbg !3939
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_clear(i32 %flags) unnamed_addr #0 !dbg !3940 {
entry:
  call void @llvm.dbg.value(metadata i32 8, metadata !3942, metadata !DIExpression()), !dbg !3943
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3944
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3944
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3944
  %tobool = icmp eq %struct.loops* %1, null, !dbg !3944
  br i1 %tobool, label %return, label %if.end, !dbg !3946

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !3947
  %2 = load i32, i32* %state, align 8, !dbg !3948
  %and = and i32 %2, -9, !dbg !3948
  store i32 %and, i32* %state, align 8, !dbg !3948
  br label %return, !dbg !3949

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3949
}

; Function Attrs: nounwind uwtable
define dso_local %struct.VEC_edge_heap* @get_loop_exit_edges(%struct.loop* %loop) local_unnamed_addr #5 !dbg !3950 {
entry:
  %edges = alloca %struct.VEC_edge_heap*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3952, metadata !DIExpression()), !dbg !3959
  %0 = bitcast %struct.VEC_edge_heap** %edges to i8*, !dbg !3960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3960
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !3953, metadata !DIExpression()), !dbg !3959
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %edges, align 8, !dbg !3961
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3962
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3962
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3963
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3963
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3964
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3964
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3964
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3964
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3964
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !3964
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3964
  %cmp = icmp eq %struct.basic_block_def* %3, %6, !dbg !3964
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3964

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3964
  br label %cond.end, !dbg !3964

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !3965
  %tobool = icmp eq i8 %call, 0, !dbg !3965
  br i1 %tobool, label %if.else, label %if.then, !dbg !3967

if.then:                                          ; preds = %cond.end
  %exits = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 18, !dbg !3968
  %7 = load %struct.loop_exit*, %struct.loop_exit** %exits, align 8, !dbg !3968
  br label %for.cond, !dbg !3971

for.cond:                                         ; preds = %for.body, %if.then
  %.pn = phi %struct.loop_exit* [ %7, %if.then ], [ %exit.0, %for.body ]
  %exit.0.in = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %.pn, i64 0, i32 2, !dbg !3972
  %exit.0 = load %struct.loop_exit*, %struct.loop_exit** %exit.0.in, align 8, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exit.0, metadata !3958, metadata !DIExpression()), !dbg !3959
  %e1 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 0, !dbg !3973
  %8 = load %struct.edge_def*, %struct.edge_def** %e1, align 8, !dbg !3973
  %tobool2 = icmp eq %struct.edge_def* %8, null, !dbg !3975
  br i1 %tobool2, label %if.end23.loopexit, label %for.body, !dbg !3975

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %edges, metadata !3953, metadata !DIExpression(DW_OP_deref)), !dbg !3959
  %call4 = call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull %edges, %struct.edge_def* nonnull %8) #7, !dbg !3976
  br label %for.cond, !dbg !3977, !llvm.loop !3978

if.else:                                          ; preds = %cond.end
  %call6 = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #7, !dbg !3980
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call6, metadata !3956, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 0, metadata !3955, metadata !DIExpression()), !dbg !3959
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3982
  %9 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3985
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3985
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3985
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3987
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3987
  br label %for.cond7, !dbg !3989

for.cond7:                                        ; preds = %for.inc21, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc21 ], [ 0, %if.else ], !dbg !3990
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3955, metadata !DIExpression()), !dbg !3959
  %14 = load i32, i32* %num_nodes, align 4, !dbg !3991
  %15 = zext i32 %14 to i64, !dbg !3992
  %cmp8 = icmp ult i64 %indvars.iv, %15, !dbg !3992
  br i1 %cmp8, label %for.body9, label %for.end22, !dbg !3993

for.body9:                                        ; preds = %for.cond7
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3994
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call6, i64 %indvars.iv, !dbg !3994
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3994
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 1, !dbg !3994
  %call10 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3994
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 0, !dbg !3994
  store i32 %17, i32* %10, align 8, !dbg !3994
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 1, !dbg !3994
  store %struct.VEC_edge_gc** %18, %struct.VEC_edge_gc*** %11, align 8, !dbg !3994
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !3994
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3994
  br label %for.cond11, !dbg !3994

for.cond11:                                       ; preds = %for.inc19, %for.body9
  %19 = load i32, i32* %12, align 8, !dbg !3995
  %20 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3995
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3959
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %19, %struct.VEC_edge_gc** %20, %struct.edge_def** nonnull %e) #7, !dbg !3995
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3994
  br i1 %tobool13, label %for.inc21, label %for.body14, !dbg !3994

for.body14:                                       ; preds = %for.cond11
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3996
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !3954, metadata !DIExpression()), !dbg !3959
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 1, !dbg !3999
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3999
  %call15 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %22) #7, !dbg !4000
  %tobool16 = icmp eq i8 %call15, 0, !dbg !4000
  br i1 %tobool16, label %if.then17, label %for.inc19, !dbg !4001

if.then17:                                        ; preds = %for.body14
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4002
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3954, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %edges, metadata !3953, metadata !DIExpression(DW_OP_deref)), !dbg !3959
  %call18 = call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull %edges, %struct.edge_def* %23) #7, !dbg !4002
  br label %for.inc19, !dbg !4002

for.inc19:                                        ; preds = %for.body14, %if.then17
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3957, metadata !DIExpression(DW_OP_deref)), !dbg !3959
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3995
  br label %for.cond11, !dbg !3995, !llvm.loop !4003

for.inc21:                                        ; preds = %for.cond11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4005
  br label %for.cond7, !dbg !4006, !llvm.loop !4007

for.end22:                                        ; preds = %for.cond7
  %24 = bitcast %struct.basic_block_def** %call6 to i8*, !dbg !4009
  call void @free(i8* %24) #6, !dbg !4010
  br label %if.end23

if.end23.loopexit:                                ; preds = %for.cond
  br label %if.end23, !dbg !4011

if.end23:                                         ; preds = %if.end23.loopexit, %for.end22
  %25 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %edges, align 8, !dbg !4011
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %25, metadata !3953, metadata !DIExpression()), !dbg !3959
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4012
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4012
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4012
  ret %struct.VEC_edge_heap* %25, !dbg !4013
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !4014 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !4018, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !4019, metadata !DIExpression()), !dbg !4020
  %call = tail call fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** %vec_, i32 1) #7, !dbg !4021
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !4021
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !4021
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4021

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !4021
  br label %cond.end, !dbg !4021

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4021
  %call1 = tail call fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %cond, %struct.edge_def* %obj_) #7, !dbg !4021
  ret %struct.edge_def** %call1, !dbg !4021
}

; Function Attrs: nounwind uwtable
define dso_local i32 @num_loop_branches(%struct.loop* %loop) local_unnamed_addr #5 !dbg !4022 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4024, metadata !DIExpression()), !dbg !4028
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !4029
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4029
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4029
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !4029
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4029
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 1, !dbg !4029
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4029
  %cmp = icmp eq %struct.basic_block_def* %0, %3, !dbg !4029
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4029

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4029
  br label %cond.end, !dbg !4029

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #7, !dbg !4030
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !4027, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 0, metadata !4026, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 0, metadata !4025, metadata !DIExpression()), !dbg !4028
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !4031
  br label %for.cond, !dbg !4034

for.cond:                                         ; preds = %cond.end7, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end7 ], [ 0, %cond.end ], !dbg !4035
  %n.0 = phi i32 [ %spec.select, %cond.end7 ], [ 0, %cond.end ], !dbg !4028
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !4026, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4025, metadata !DIExpression()), !dbg !4028
  %4 = load i32, i32* %num_nodes, align 4, !dbg !4036
  %5 = zext i32 %4 to i64, !dbg !4037
  %cmp1 = icmp ult i64 %indvars.iv, %5, !dbg !4037
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4038

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !4039
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4039
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 1, !dbg !4039
  %7 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4039
  %tobool = icmp eq %struct.VEC_edge_gc* %7, null, !dbg !4039
  br i1 %tobool, label %cond.end7, label %cond.true2, !dbg !4039

cond.true2:                                       ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %7, i64 0, i32 0, !dbg !4039
  br label %cond.end7, !dbg !4039

cond.end7:                                        ; preds = %for.body, %cond.true2
  %cond8 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %for.body ], !dbg !4039
  %call9 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond8) #7, !dbg !4039
  %cmp10 = icmp ugt i32 %call9, 1, !dbg !4041
  %inc = zext i1 %cmp10 to i32, !dbg !4042
  %spec.select = add i32 %n.0, %inc, !dbg !4042
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4026, metadata !DIExpression()), !dbg !4028
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4043
  br label %for.cond, !dbg !4044, !llvm.loop !4045

for.end:                                          ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !4028
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !4026, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !4026, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !4026, metadata !DIExpression()), !dbg !4028
  %8 = bitcast %struct.basic_block_def** %call to i8*, !dbg !4047
  tail call void @free(i8* %8) #6, !dbg !4048
  ret i32 %n.0.lcssa, !dbg !4049
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4050 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4054, metadata !DIExpression()), !dbg !4055
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4056
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4056

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4056
  %0 = load i32, i32* %num, align 8, !dbg !4056
  br label %cond.end, !dbg !4056

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4056
  ret i32 %cond, !dbg !4056
}

; Function Attrs: nounwind uwtable
define dso_local void @add_bb_to_loop(%struct.basic_block_def* %bb, %struct.loop* %loop) local_unnamed_addr #5 !dbg !4057 {
entry:
  %ploop = alloca %struct.loop*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp19 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4061, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4062, metadata !DIExpression()), !dbg !4067
  %0 = bitcast %struct.loop** %ploop to i8*, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4068
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4069
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4069
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !4070
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4070
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !4071
  %3 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4071
  %cmp = icmp eq %struct.loop* %3, null, !dbg !4071
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4071

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4071
  br label %cond.end, !dbg !4071

cond.end:                                         ; preds = %entry, %cond.true
  store %struct.loop* %loop, %struct.loop** %loop_father, align 8, !dbg !4072
  %call = tail call fastcc i32 @loop_depth(%struct.loop* %loop) #7, !dbg !4073
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 10, !dbg !4074
  store i32 %call, i32* %loop_depth, align 4, !dbg !4075
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !4076
  %4 = load i32, i32* %num_nodes, align 4, !dbg !4077
  %inc = add i32 %4, 1, !dbg !4077
  store i32 %inc, i32* %num_nodes, align 4, !dbg !4077
  call void @llvm.dbg.value(metadata i32 0, metadata !4063, metadata !DIExpression()), !dbg !4067
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !4078
  br label %for.cond, !dbg !4081

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc11, %for.body ], !dbg !4082
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4063, metadata !DIExpression()), !dbg !4067
  %5 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4083
  %tobool = icmp eq %struct.VEC_loop_p_gc* %5, null, !dbg !4083
  br i1 %tobool, label %cond.end5, label %cond.true2, !dbg !4083

cond.true2:                                       ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %5, i64 0, i32 0, !dbg !4083
  br label %cond.end5, !dbg !4083

cond.end5:                                        ; preds = %for.cond, %cond.true2
  %cond6 = phi %struct.VEC_loop_p_base* [ %base, %cond.true2 ], [ null, %for.cond ], !dbg !4083
  call void @llvm.dbg.value(metadata %struct.loop** %ploop, metadata !4064, metadata !DIExpression(DW_OP_deref)), !dbg !4067
  %call7 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond6, i32 %i.0, %struct.loop** nonnull %ploop) #7, !dbg !4083
  %tobool8 = icmp eq i32 %call7, 0, !dbg !4084
  br i1 %tobool8, label %for.end, label %for.body, !dbg !4084

for.body:                                         ; preds = %cond.end5
  %6 = load %struct.loop*, %struct.loop** %ploop, align 8, !dbg !4085
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !4064, metadata !DIExpression()), !dbg !4067
  %num_nodes9 = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 6, !dbg !4086
  %7 = load i32, i32* %num_nodes9, align 4, !dbg !4087
  %inc10 = add i32 %7, 1, !dbg !4087
  store i32 %inc10, i32* %num_nodes9, align 4, !dbg !4087
  %inc11 = add i32 %i.0, 1, !dbg !4088
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !4063, metadata !DIExpression()), !dbg !4067
  br label %for.cond, !dbg !4089, !llvm.loop !4090

for.end:                                          ; preds = %cond.end5
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4092
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !4092
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4092
  %call12 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !4092
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4092
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call12, 0, !dbg !4092
  store i32 %10, i32* %9, align 8, !dbg !4092
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4092
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call12, 1, !dbg !4092
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !4092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !4092
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !4092
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4094
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4094
  br label %for.cond13, !dbg !4092

for.cond13:                                       ; preds = %for.body16, %for.end
  %15 = load i32, i32* %13, align 8, !dbg !4096
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !4096
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4066, metadata !DIExpression(DW_OP_deref)), !dbg !4067
  %call14 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #7, !dbg !4096
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4092
  br i1 %tobool15, label %for.end18, label %for.body16, !dbg !4092

for.body16:                                       ; preds = %for.cond13
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4097
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !4066, metadata !DIExpression()), !dbg !4067
  call void @rescan_loop_exit(%struct.edge_def* %17, i8 zeroext 1, i8 zeroext 0) #7, !dbg !4099
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4065, metadata !DIExpression(DW_OP_deref)), !dbg !4067
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4096
  br label %for.cond13, !dbg !4096, !llvm.loop !4100

for.end18:                                        ; preds = %for.cond13
  %18 = bitcast %struct.edge_iterator* %tmp19 to i8*, !dbg !4102
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !4102
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4102
  %call20 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4102
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp19, i64 0, i32 0, !dbg !4102
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 0, !dbg !4102
  store i32 %20, i32* %19, align 8, !dbg !4102
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp19, i64 0, i32 1, !dbg !4102
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 1, !dbg !4102
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %21, align 8, !dbg !4102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !4102
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !4102
  br label %for.cond21, !dbg !4102

for.cond21:                                       ; preds = %for.body24, %for.end18
  %23 = load i32, i32* %13, align 8, !dbg !4104
  %24 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !4104
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4066, metadata !DIExpression(DW_OP_deref)), !dbg !4067
  %call22 = call fastcc zeroext i8 @ei_cond(i32 %23, %struct.VEC_edge_gc** %24, %struct.edge_def** nonnull %e) #7, !dbg !4104
  %tobool23 = icmp eq i8 %call22, 0, !dbg !4102
  br i1 %tobool23, label %for.end26, label %for.body24, !dbg !4102

for.body24:                                       ; preds = %for.cond21
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4106
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !4066, metadata !DIExpression()), !dbg !4067
  call void @rescan_loop_exit(%struct.edge_def* %25, i8 zeroext 1, i8 zeroext 0) #7, !dbg !4108
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4065, metadata !DIExpression(DW_OP_deref)), !dbg !4067
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4104
  br label %for.cond21, !dbg !4104, !llvm.loop !4109

for.end26:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4111
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4111
  ret void, !dbg !4111
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_bb_from_loops(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !4112 {
entry:
  %ploop = alloca %struct.loop*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp17 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4116, metadata !DIExpression()), !dbg !4122
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !4123
  %0 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4123
  call void @llvm.dbg.value(metadata %struct.loop* %0, metadata !4118, metadata !DIExpression()), !dbg !4122
  %1 = bitcast %struct.loop** %ploop to i8*, !dbg !4124
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4124
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4125
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4125
  %3 = bitcast %struct.edge_def** %e to i8*, !dbg !4126
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !4126
  %cmp = icmp eq %struct.loop* %0, null, !dbg !4127
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4127

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4127
  br label %cond.end, !dbg !4127

cond.end:                                         ; preds = %entry, %cond.true
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %0, i64 0, i32 6, !dbg !4128
  %4 = load i32, i32* %num_nodes, align 4, !dbg !4129
  %dec = add i32 %4, -1, !dbg !4129
  store i32 %dec, i32* %num_nodes, align 4, !dbg !4129
  call void @llvm.dbg.value(metadata i32 0, metadata !4117, metadata !DIExpression()), !dbg !4122
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %0, i64 0, i32 7, !dbg !4130
  br label %for.cond, !dbg !4133

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !4134
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4117, metadata !DIExpression()), !dbg !4122
  %5 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4135
  %tobool = icmp eq %struct.VEC_loop_p_gc* %5, null, !dbg !4135
  br i1 %tobool, label %cond.end4, label %cond.true1, !dbg !4135

cond.true1:                                       ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %5, i64 0, i32 0, !dbg !4135
  br label %cond.end4, !dbg !4135

cond.end4:                                        ; preds = %for.cond, %cond.true1
  %cond5 = phi %struct.VEC_loop_p_base* [ %base, %cond.true1 ], [ null, %for.cond ], !dbg !4135
  call void @llvm.dbg.value(metadata %struct.loop** %ploop, metadata !4119, metadata !DIExpression(DW_OP_deref)), !dbg !4122
  %call = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond5, i32 %i.0, %struct.loop** nonnull %ploop) #7, !dbg !4135
  %tobool6 = icmp eq i32 %call, 0, !dbg !4136
  br i1 %tobool6, label %for.end, label %for.body, !dbg !4136

for.body:                                         ; preds = %cond.end4
  %6 = load %struct.loop*, %struct.loop** %ploop, align 8, !dbg !4137
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !4119, metadata !DIExpression()), !dbg !4122
  %num_nodes7 = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 6, !dbg !4138
  %7 = load i32, i32* %num_nodes7, align 4, !dbg !4139
  %dec8 = add i32 %7, -1, !dbg !4139
  store i32 %dec8, i32* %num_nodes7, align 4, !dbg !4139
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4140
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4117, metadata !DIExpression()), !dbg !4122
  br label %for.cond, !dbg !4141, !llvm.loop !4142

for.end:                                          ; preds = %cond.end4
  store %struct.loop* null, %struct.loop** %loop_father, align 8, !dbg !4144
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 10, !dbg !4145
  store i32 0, i32* %loop_depth, align 4, !dbg !4146
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4147
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !4147
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4147
  %call10 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !4147
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4147
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 0, !dbg !4147
  store i32 %10, i32* %9, align 8, !dbg !4147
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4147
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 1, !dbg !4147
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !4147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !4147
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !4147
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4149
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4149
  br label %for.cond11, !dbg !4147

for.cond11:                                       ; preds = %for.body14, %for.end
  %15 = load i32, i32* %13, align 8, !dbg !4151
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !4151
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4121, metadata !DIExpression(DW_OP_deref)), !dbg !4122
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #7, !dbg !4151
  %tobool13 = icmp eq i8 %call12, 0, !dbg !4147
  br i1 %tobool13, label %for.end16, label %for.body14, !dbg !4147

for.body14:                                       ; preds = %for.cond11
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4152
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @rescan_loop_exit(%struct.edge_def* %17, i8 zeroext 0, i8 zeroext 1) #7, !dbg !4154
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4120, metadata !DIExpression(DW_OP_deref)), !dbg !4122
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4151
  br label %for.cond11, !dbg !4151, !llvm.loop !4155

for.end16:                                        ; preds = %for.cond11
  %18 = bitcast %struct.edge_iterator* %tmp17 to i8*, !dbg !4157
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !4157
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4157
  %call18 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4157
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp17, i64 0, i32 0, !dbg !4157
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 0, !dbg !4157
  store i32 %20, i32* %19, align 8, !dbg !4157
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp17, i64 0, i32 1, !dbg !4157
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 1, !dbg !4157
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %21, align 8, !dbg !4157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !4157
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !4157
  br label %for.cond19, !dbg !4157

for.cond19:                                       ; preds = %for.body22, %for.end16
  %23 = load i32, i32* %13, align 8, !dbg !4159
  %24 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !4159
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4121, metadata !DIExpression(DW_OP_deref)), !dbg !4122
  %call20 = call fastcc zeroext i8 @ei_cond(i32 %23, %struct.VEC_edge_gc** %24, %struct.edge_def** nonnull %e) #7, !dbg !4159
  %tobool21 = icmp eq i8 %call20, 0, !dbg !4157
  br i1 %tobool21, label %for.end24, label %for.body22, !dbg !4157

for.body22:                                       ; preds = %for.cond19
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4161
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @rescan_loop_exit(%struct.edge_def* %25, i8 zeroext 0, i8 zeroext 1) #7, !dbg !4163
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4120, metadata !DIExpression(DW_OP_deref)), !dbg !4122
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4159
  br label %for.cond19, !dbg !4159, !llvm.loop !4164

for.end24:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !4166
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4166
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4166
  ret void, !dbg !4166
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_loop(%struct.loop* %loop) local_unnamed_addr #5 !dbg !4167 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4169, metadata !DIExpression()), !dbg !4170
  tail call void @flow_loop_tree_node_remove(%struct.loop* %loop) #7, !dbg !4171
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4172
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4172
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4172
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4172
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4172
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4172
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4172

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4172
  br label %cond.end, !dbg !4172

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4172
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !4172
  %3 = load i32, i32* %num, align 8, !dbg !4172
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_replace(%struct.VEC_loop_p_base* %cond, i32 %3, %struct.loop* null) #7, !dbg !4172
  tail call void @flow_loop_free(%struct.loop* %loop) #7, !dbg !4173
  ret void, !dbg !4174
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_replace(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop* %obj_) unnamed_addr #0 !dbg !4175 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4179, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata %struct.loop* null, metadata !4181, metadata !DIExpression()), !dbg !4183
  %idxprom = zext i32 %ix_ to i64, !dbg !4184
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4184
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4184
  call void @llvm.dbg.value(metadata %struct.loop* %0, metadata !4182, metadata !DIExpression()), !dbg !4183
  store %struct.loop* null, %struct.loop** %arrayidx, align 8, !dbg !4184
  ret %struct.loop* %0, !dbg !4184
}

; Function Attrs: nounwind uwtable
define dso_local void @cancel_loop_tree(%struct.loop* %loop) local_unnamed_addr #5 !dbg !4185 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4187, metadata !DIExpression()), !dbg !4188
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !4188
  br label %while.cond, !dbg !4189

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !4190
  %tobool = icmp eq %struct.loop* %0, null, !dbg !4189
  br i1 %tobool, label %while.end, label %while.body, !dbg !4189

while.body:                                       ; preds = %while.cond
  tail call void @cancel_loop_tree(%struct.loop* nonnull %0) #7, !dbg !4191
  br label %while.cond, !dbg !4189, !llvm.loop !4192

while.end:                                        ; preds = %while.cond
  tail call fastcc void @cancel_loop(%struct.loop* %loop) #7, !dbg !4194
  ret void, !dbg !4195
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cancel_loop(%struct.loop* %loop) unnamed_addr #5 !dbg !4196 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4198, metadata !DIExpression()), !dbg !4202
  %call = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop) #7, !dbg !4203
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !4201, metadata !DIExpression()), !dbg !4202
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !4204
  %0 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !4204
  %tobool = icmp eq %struct.loop* %0, null, !dbg !4204
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4204

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4204
  br label %cond.end, !dbg !4204

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #7, !dbg !4205
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call1, metadata !4199, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4202
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !4206
  br label %for.cond, !dbg !4209

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !4210
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4200, metadata !DIExpression()), !dbg !4202
  %1 = load i32, i32* %num_nodes, align 4, !dbg !4211
  %2 = zext i32 %1 to i64, !dbg !4212
  %cmp = icmp ult i64 %indvars.iv, %2, !dbg !4212
  br i1 %cmp, label %for.body, label %for.end, !dbg !4213

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call1, i64 %indvars.iv, !dbg !4214
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4214
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 3, !dbg !4215
  store %struct.loop* %call, %struct.loop** %loop_father, align 8, !dbg !4216
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4217
  br label %for.cond, !dbg !4218, !llvm.loop !4219

for.end:                                          ; preds = %for.cond
  tail call void @delete_loop(%struct.loop* %loop) #7, !dbg !4221
  ret void, !dbg !4222
}

; Function Attrs: nounwind uwtable
define dso_local void @verify_loop_structure() local_unnamed_addr #5 !dbg !4223 {
entry:
  %loop = alloca %struct.loop*, align 8
  %e = alloca %struct.edge_def*, align 8
  %li = alloca %struct.loop_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %ei153 = alloca %struct.edge_iterator, align 8
  %tmp186 = alloca %struct.edge_iterator, align 8
  %ei290 = alloca %struct.edge_iterator, align 8
  %tmp297 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !4256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4256
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()), !dbg !4257
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !4258
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4258
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !4259
  call void @llvm.dbg.value(metadata i32 %call, metadata !4234, metadata !DIExpression()), !dbg !4257
  %2 = bitcast %struct.loop_iterator* %li to i8*, !dbg !4260
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4260
  %conv = zext i32 %call to i64, !dbg !4261
  %call1 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !4261
  %3 = bitcast i8* %call1 to i32*, !dbg !4261
  call void @llvm.dbg.value(metadata i32* %3, metadata !4225, metadata !DIExpression()), !dbg !4257
  store i32 2, i32* %3, align 4, !dbg !4262
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4263
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !4263
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4263
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !4263
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4263
  %7 = bitcast %struct.loop** %loop to i64*, !dbg !4265
  br label %for.cond, !dbg !4263

for.cond:                                         ; preds = %for.inc10, %entry
  %8 = phi %struct.control_flow_graph* [ %5, %entry ], [ %.pre6, %for.inc10 ], !dbg !4268
  %.pn = phi %struct.basic_block_def* [ %6, %entry ], [ %bb.0, %for.inc10 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4269
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4269
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4230, metadata !DIExpression()), !dbg !4257
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !4268
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4268
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %9, !dbg !4268
  br i1 %cmp, label %for.end12, label %for.body, !dbg !4263

for.body:                                         ; preds = %for.cond
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 3, !dbg !4270
  %10 = bitcast %struct.loop** %loop_father to i64*, !dbg !4270
  %11 = load i64, i64* %10, align 8, !dbg !4270
  store i64 %11, i64* %7, align 8, !dbg !4271
  %12 = inttoptr i64 %11 to %struct.loop*, !dbg !4272
  br label %for.cond5, !dbg !4272

for.cond5:                                        ; preds = %for.body6, %for.body
  %13 = phi %struct.loop* [ %call9, %for.body6 ], [ %12, %for.body ]
  %14 = phi %struct.loop* [ %call9, %for.body6 ], [ %12, %for.body ], !dbg !4273
  call void @llvm.dbg.value(metadata %struct.loop* %14, metadata !4231, metadata !DIExpression()), !dbg !4257
  %tobool = icmp eq %struct.loop* %14, null, !dbg !4275
  br i1 %tobool, label %for.inc10, label %for.body6, !dbg !4275

for.body6:                                        ; preds = %for.cond5
  call void @llvm.dbg.value(metadata %struct.loop* %13, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num7 = getelementptr inbounds %struct.loop, %struct.loop* %13, i64 0, i32 0, !dbg !4276
  %15 = load i32, i32* %num7, align 8, !dbg !4276
  %idxprom = sext i32 %15 to i64, !dbg !4277
  %arrayidx8 = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !4277
  %16 = load i32, i32* %arrayidx8, align 4, !dbg !4278
  %inc = add i32 %16, 1, !dbg !4278
  store i32 %inc, i32* %arrayidx8, align 4, !dbg !4278
  %17 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4279
  call void @llvm.dbg.value(metadata %struct.loop* %17, metadata !4231, metadata !DIExpression()), !dbg !4257
  %call9 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %17) #7, !dbg !4280
  call void @llvm.dbg.value(metadata %struct.loop* %call9, metadata !4231, metadata !DIExpression()), !dbg !4257
  store %struct.loop* %call9, %struct.loop** %loop, align 8, !dbg !4281
  br label %for.cond5, !dbg !4282, !llvm.loop !4283

for.inc10:                                        ; preds = %for.cond5
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4268
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4285
  %.pre6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !4268
  br label %for.cond, !dbg !4268, !llvm.loop !4286

for.end12:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 1) #7, !dbg !4288
  br label %for.cond13, !dbg !4288

for.cond13:                                       ; preds = %for.inc24, %for.end12
  %err.0 = phi i32 [ 0, %for.end12 ], [ %err.1, %for.inc24 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.0, metadata !4232, metadata !DIExpression()), !dbg !4257
  %18 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4290
  call void @llvm.dbg.value(metadata %struct.loop* %18, metadata !4231, metadata !DIExpression()), !dbg !4257
  %tobool14 = icmp eq %struct.loop* %18, null, !dbg !4288
  br i1 %tobool14, label %for.end25, label %for.body15, !dbg !4288

for.body15:                                       ; preds = %for.cond13
  call void @llvm.dbg.value(metadata %struct.loop* %18, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num16 = getelementptr inbounds %struct.loop, %struct.loop* %18, i64 0, i32 0, !dbg !4292
  %19 = load i32, i32* %num16, align 8, !dbg !4292
  call void @llvm.dbg.value(metadata i32 %19, metadata !4226, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop* %18, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %18, i64 0, i32 6, !dbg !4294
  %20 = load i32, i32* %num_nodes, align 4, !dbg !4294
  %idxprom17 = zext i32 %19 to i64, !dbg !4296
  %arrayidx18 = getelementptr inbounds i32, i32* %3, i64 %idxprom17, !dbg !4296
  %21 = load i32, i32* %arrayidx18, align 4, !dbg !4296
  %cmp19 = icmp eq i32 %20, %21, !dbg !4297
  br i1 %cmp19, label %for.inc24, label %if.then, !dbg !4298

if.then:                                          ; preds = %for.body15
  call void @llvm.dbg.value(metadata %struct.loop* %18, metadata !4231, metadata !DIExpression()), !dbg !4257
  call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %19, i32 %21, i32 %20) #6, !dbg !4299
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %for.inc24, !dbg !4301

for.inc24:                                        ; preds = %for.body15, %if.then
  %err.1 = phi i32 [ 1, %if.then ], [ %err.0, %for.body15 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.1, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !4290
  br label %for.cond13, !dbg !4290, !llvm.loop !4302

for.end25:                                        ; preds = %for.cond13
  %err.0.lcssa = phi i32 [ %err.0, %for.cond13 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !4304
  br label %for.cond26, !dbg !4304

for.cond26:                                       ; preds = %for.end46, %for.end25
  %err.2 = phi i32 [ %err.0.lcssa, %for.end25 ], [ %err.3.lcssa, %for.end46 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %err.2, metadata !4232, metadata !DIExpression()), !dbg !4257
  %22 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4307
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !4231, metadata !DIExpression()), !dbg !4257
  %tobool27 = icmp eq %struct.loop* %22, null, !dbg !4304
  br i1 %tobool27, label %for.end48, label %for.body28, !dbg !4304

for.body28:                                       ; preds = %for.cond26
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !4231, metadata !DIExpression()), !dbg !4257
  %call29 = call %struct.basic_block_def** @get_loop_body(%struct.loop* nonnull %22) #7, !dbg !4309
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call29, metadata !4229, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 0, metadata !4227, metadata !DIExpression()), !dbg !4257
  br label %for.cond30, !dbg !4311

for.cond30:                                       ; preds = %for.inc44, %for.body28
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc44 ], [ 0, %for.body28 ], !dbg !4306
  %err.3 = phi i32 [ %err.4, %for.inc44 ], [ %err.2, %for.body28 ], !dbg !4306
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4227, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.3, metadata !4232, metadata !DIExpression()), !dbg !4257
  %23 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4313
  call void @llvm.dbg.value(metadata %struct.loop* %23, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num_nodes31 = getelementptr inbounds %struct.loop, %struct.loop* %23, i64 0, i32 6, !dbg !4315
  %24 = load i32, i32* %num_nodes31, align 4, !dbg !4315
  %25 = zext i32 %24 to i64, !dbg !4316
  %cmp32 = icmp ult i64 %indvars.iv, %25, !dbg !4316
  br i1 %cmp32, label %for.body34, label %for.end46, !dbg !4317

for.body34:                                       ; preds = %for.cond30
  call void @llvm.dbg.value(metadata %struct.loop* %23, metadata !4231, metadata !DIExpression()), !dbg !4257
  %arrayidx36 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call29, i64 %indvars.iv, !dbg !4318
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx36, align 8, !dbg !4318
  %call37 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %23, %struct.basic_block_def* %26) #7, !dbg !4320
  %tobool38 = icmp eq i8 %call37, 0, !dbg !4320
  br i1 %tobool38, label %if.then39, label %for.inc44, !dbg !4321

if.then39:                                        ; preds = %for.body34
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx36, align 8, !dbg !4322
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 9, !dbg !4324
  %28 = load i32, i32* %index, align 8, !dbg !4324
  %29 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4325
  call void @llvm.dbg.value(metadata %struct.loop* %29, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num42 = getelementptr inbounds %struct.loop, %struct.loop* %29, i64 0, i32 0, !dbg !4326
  %30 = load i32, i32* %num42, align 8, !dbg !4326
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %28, i32 %30) #6, !dbg !4327
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %for.inc44, !dbg !4328

for.inc44:                                        ; preds = %for.body34, %if.then39
  %err.4 = phi i32 [ %err.3, %for.body34 ], [ 1, %if.then39 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.4, metadata !4232, metadata !DIExpression()), !dbg !4257
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4329
  br label %for.cond30, !dbg !4330, !llvm.loop !4331

for.end46:                                        ; preds = %for.cond30
  %err.3.lcssa = phi i32 [ %err.3, %for.cond30 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %err.3.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.3.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.3.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  %31 = bitcast %struct.basic_block_def** %call29 to i8*, !dbg !4333
  call void @free(i8* %31) #6, !dbg !4334
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !4307
  br label %for.cond26, !dbg !4307, !llvm.loop !4335

for.end48:                                        ; preds = %for.cond26
  %err.2.lcssa = phi i32 [ %err.2, %for.cond26 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %err.2.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.2.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.2.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !4337
  br label %for.cond49, !dbg !4337

for.cond49:                                       ; preds = %for.inc99, %for.end48
  %err.5 = phi i32 [ %err.2.lcssa, %for.end48 ], [ %err.12, %for.inc99 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.5, metadata !4232, metadata !DIExpression()), !dbg !4257
  %32 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4339
  call void @llvm.dbg.value(metadata %struct.loop* %32, metadata !4231, metadata !DIExpression()), !dbg !4257
  %tobool50 = icmp eq %struct.loop* %32, null, !dbg !4337
  br i1 %tobool50, label %for.end100, label %for.body51, !dbg !4337

for.body51:                                       ; preds = %for.cond49
  call void @llvm.dbg.value(metadata %struct.loop* %32, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num52 = getelementptr inbounds %struct.loop, %struct.loop* %32, i64 0, i32 0, !dbg !4341
  %33 = load i32, i32* %num52, align 8, !dbg !4341
  call void @llvm.dbg.value(metadata i32 %33, metadata !4226, metadata !DIExpression()), !dbg !4257
  %call53 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 1) #7, !dbg !4343
  %tobool55 = icmp eq i8 %call53, 0, !dbg !4343
  br i1 %tobool55, label %if.end63, label %land.lhs.true, !dbg !4345

land.lhs.true:                                    ; preds = %for.body51
  %34 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4346
  call void @llvm.dbg.value(metadata %struct.loop* %34, metadata !4231, metadata !DIExpression()), !dbg !4257
  %header = getelementptr inbounds %struct.loop, %struct.loop* %34, i64 0, i32 2, !dbg !4346
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4346
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i64 0, i32 0, !dbg !4346
  %36 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4346
  %tobool56 = icmp eq %struct.VEC_edge_gc* %36, null, !dbg !4346
  br i1 %tobool56, label %cond.end, label %cond.true, !dbg !4346

cond.true:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.loop* %34, metadata !4231, metadata !DIExpression()), !dbg !4257
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %36, i64 0, i32 0, !dbg !4346
  br label %cond.end, !dbg !4346

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %land.lhs.true ], !dbg !4346
  %call59 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4346
  %cmp60 = icmp eq i32 %call59, 2, !dbg !4347
  br i1 %cmp60, label %if.end63, label %if.then62, !dbg !4348

if.then62:                                        ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %33) #6, !dbg !4349
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end63, !dbg !4351

if.end63:                                         ; preds = %cond.end, %for.body51, %if.then62
  %err.6 = phi i32 [ 1, %if.then62 ], [ %err.5, %cond.end ], [ %err.5, %for.body51 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.6, metadata !4232, metadata !DIExpression()), !dbg !4257
  %call64 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 2) #7, !dbg !4352
  %tobool65 = icmp eq i8 %call64, 0, !dbg !4352
  br i1 %tobool65, label %if.end84, label %if.then66, !dbg !4354

if.then66:                                        ; preds = %if.end63
  %37 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4355
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !4231, metadata !DIExpression()), !dbg !4257
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %37, i64 0, i32 3, !dbg !4358
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4358
  %call67 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %38) #7, !dbg !4359
  %tobool68 = icmp eq i8 %call67, 0, !dbg !4359
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !4360

if.then69:                                        ; preds = %if.then66
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32 %33) #6, !dbg !4361
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end70, !dbg !4363

if.end70:                                         ; preds = %if.then66, %if.then69
  %err.7 = phi i32 [ %err.6, %if.then66 ], [ 1, %if.then69 ], !dbg !4364
  call void @llvm.dbg.value(metadata i32 %err.7, metadata !4232, metadata !DIExpression()), !dbg !4257
  %39 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4365
  call void @llvm.dbg.value(metadata %struct.loop* %39, metadata !4231, metadata !DIExpression()), !dbg !4257
  %latch71 = getelementptr inbounds %struct.loop, %struct.loop* %39, i64 0, i32 3, !dbg !4367
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %latch71, align 8, !dbg !4367
  %call72 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %40) #7, !dbg !4368
  %41 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4369
  call void @llvm.dbg.value(metadata %struct.loop* %41, metadata !4231, metadata !DIExpression()), !dbg !4257
  %header73 = getelementptr inbounds %struct.loop, %struct.loop* %41, i64 0, i32 2, !dbg !4370
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %header73, align 8, !dbg !4370
  %cmp74 = icmp eq %struct.basic_block_def* %call72, %42, !dbg !4371
  br i1 %cmp74, label %if.end77, label %if.then76, !dbg !4372

if.then76:                                        ; preds = %if.end70
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 %33) #6, !dbg !4373
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  %.pre7 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4375
  br label %if.end77, !dbg !4377

if.end77:                                         ; preds = %if.end70, %if.then76
  %43 = phi %struct.loop* [ %.pre7, %if.then76 ], [ %41, %if.end70 ], !dbg !4375
  %err.8 = phi i32 [ 1, %if.then76 ], [ %err.7, %if.end70 ], !dbg !4364
  call void @llvm.dbg.value(metadata i32 %err.8, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop* %43, metadata !4231, metadata !DIExpression()), !dbg !4257
  %latch78 = getelementptr inbounds %struct.loop, %struct.loop* %43, i64 0, i32 3, !dbg !4378
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %latch78, align 8, !dbg !4378
  %loop_father79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 3, !dbg !4379
  %45 = load %struct.loop*, %struct.loop** %loop_father79, align 8, !dbg !4379
  call void @llvm.dbg.value(metadata %struct.loop* %43, metadata !4231, metadata !DIExpression()), !dbg !4257
  %cmp80 = icmp eq %struct.loop* %45, %43, !dbg !4380
  br i1 %cmp80, label %if.end84, label %if.then82, !dbg !4381

if.then82:                                        ; preds = %if.end77
  call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 %33) #6, !dbg !4382
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end84, !dbg !4384

if.end84:                                         ; preds = %if.end77, %if.end63, %if.then82
  %err.10 = phi i32 [ %err.6, %if.end63 ], [ 1, %if.then82 ], [ %err.8, %if.end77 ], !dbg !4364
  call void @llvm.dbg.value(metadata i32 %err.10, metadata !4232, metadata !DIExpression()), !dbg !4257
  %46 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4385
  call void @llvm.dbg.value(metadata %struct.loop* %46, metadata !4231, metadata !DIExpression()), !dbg !4257
  %header85 = getelementptr inbounds %struct.loop, %struct.loop* %46, i64 0, i32 2, !dbg !4387
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %header85, align 8, !dbg !4387
  %loop_father86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i64 0, i32 3, !dbg !4388
  %48 = load %struct.loop*, %struct.loop** %loop_father86, align 8, !dbg !4388
  call void @llvm.dbg.value(metadata %struct.loop* %46, metadata !4231, metadata !DIExpression()), !dbg !4257
  %cmp87 = icmp eq %struct.loop* %48, %46, !dbg !4389
  br i1 %cmp87, label %if.end90, label %if.then89, !dbg !4390

if.then89:                                        ; preds = %if.end84
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i32 %33) #6, !dbg !4391
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end90, !dbg !4393

if.end90:                                         ; preds = %if.end84, %if.then89
  %err.11 = phi i32 [ 1, %if.then89 ], [ %err.10, %if.end84 ], !dbg !4364
  call void @llvm.dbg.value(metadata i32 %err.11, metadata !4232, metadata !DIExpression()), !dbg !4257
  %call91 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 4) #7, !dbg !4394
  %tobool93 = icmp eq i8 %call91, 0, !dbg !4394
  br i1 %tobool93, label %for.inc99, label %land.lhs.true94, !dbg !4396

land.lhs.true94:                                  ; preds = %if.end90
  %49 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4397
  call void @llvm.dbg.value(metadata %struct.loop* %49, metadata !4231, metadata !DIExpression()), !dbg !4257
  %call95 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %49) #7, !dbg !4398
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call95, i64 0, i32 7, !dbg !4399
  %50 = load i32, i32* %flags, align 8, !dbg !4399
  %51 = trunc i32 %50 to i8, !dbg !4400
  %tobool96 = icmp slt i8 %51, 0, !dbg !4400
  br i1 %tobool96, label %if.then97, label %for.inc99, !dbg !4401

if.then97:                                        ; preds = %land.lhs.true94
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 %33) #6, !dbg !4402
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %for.inc99, !dbg !4404

for.inc99:                                        ; preds = %if.end90, %land.lhs.true94, %if.then97
  %err.12 = phi i32 [ 1, %if.then97 ], [ %err.11, %land.lhs.true94 ], [ %err.11, %if.end90 ], !dbg !4364
  call void @llvm.dbg.value(metadata i32 %err.12, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !4339
  br label %for.cond49, !dbg !4339, !llvm.loop !4405

for.end100:                                       ; preds = %for.cond49
  %err.5.lcssa = phi i32 [ %err.5, %for.cond49 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.5.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.5.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.5.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  %call101 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 4) #7, !dbg !4407
  %tobool102 = icmp eq i8 %call101, 0, !dbg !4407
  br i1 %tobool102, label %if.end225, label %if.then103, !dbg !4408

if.then103:                                       ; preds = %for.end100
  %52 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4409
  %cfg105 = getelementptr inbounds %struct.function, %struct.function* %52, i64 0, i32 1, !dbg !4409
  %53 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg105, align 8, !dbg !4409
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %53, i64 0, i32 5, !dbg !4409
  %54 = load i32, i32* %x_last_basic_block, align 8, !dbg !4409
  %call106 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %54) #6, !dbg !4410
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call106, metadata !4228, metadata !DIExpression()), !dbg !4257
  %55 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4411
  %cfg108 = getelementptr inbounds %struct.function, %struct.function* %55, i64 0, i32 1, !dbg !4411
  %56 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg108, align 8, !dbg !4411
  %x_entry_block_ptr109 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %56, i64 0, i32 0, !dbg !4411
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr109, align 8, !dbg !4411
  %58 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4412
  %59 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4413
  %60 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4413
  %61 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4413
  %62 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4415
  %63 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4415
  br label %for.cond111, !dbg !4411

for.cond111:                                      ; preds = %for.end137, %if.then103
  %64 = phi %struct.control_flow_graph* [ %56, %if.then103 ], [ %.pre9, %for.end137 ], !dbg !4417
  %.pn1 = phi %struct.basic_block_def* [ %57, %if.then103 ], [ %bb.1, %for.end137 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !4418
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !4418
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !4230, metadata !DIExpression()), !dbg !4257
  %x_exit_block_ptr114 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %64, i64 0, i32 1, !dbg !4417
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr114, align 8, !dbg !4417
  %cmp115 = icmp eq %struct.basic_block_def* %bb.1, %65, !dbg !4417
  br i1 %cmp115, label %for.end140, label %for.body117, !dbg !4411

for.body117:                                      ; preds = %for.cond111
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #8, !dbg !4419
  %flags118 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 13, !dbg !4420
  %66 = load i32, i32* %flags118, align 8, !dbg !4420
  %and119 = and i32 %66, 4, !dbg !4422
  %tobool120 = icmp eq i32 %and119, 0, !dbg !4422
  %index122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !4423
  %67 = load i32, i32* %index122, align 8, !dbg !4423
  br i1 %tobool120, label %if.else, label %if.then121, !dbg !4424

if.then121:                                       ; preds = %for.body117
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call106, i32 %67) #7, !dbg !4425
  br label %if.end124, !dbg !4425

if.else:                                          ; preds = %for.body117
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call106, i32 %67) #7, !dbg !4426
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.then121
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #8, !dbg !4427
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !4427
  %call125 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !4427
  %68 = extractvalue { i32, %struct.VEC_edge_gc** } %call125, 0, !dbg !4427
  store i32 %68, i32* %60, align 8, !dbg !4427
  %69 = extractvalue { i32, %struct.VEC_edge_gc** } %call125, 1, !dbg !4427
  store %struct.VEC_edge_gc** %69, %struct.VEC_edge_gc*** %61, align 8, !dbg !4427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %58, i8* nonnull align 8 %59, i64 16, i1 false), !dbg !4427
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #8, !dbg !4427
  br label %for.cond126, !dbg !4427

for.cond126:                                      ; preds = %for.inc136, %if.end124
  %70 = load i32, i32* %62, align 8, !dbg !4428
  %71 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %63, align 8, !dbg !4428
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4233, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  %call127 = call fastcc zeroext i8 @ei_cond(i32 %70, %struct.VEC_edge_gc** %71, %struct.edge_def** nonnull %e) #7, !dbg !4428
  %tobool128 = icmp eq i8 %call127, 0, !dbg !4427
  br i1 %tobool128, label %for.end137, label %for.body129, !dbg !4427

for.body129:                                      ; preds = %for.cond126
  %72 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4429
  call void @llvm.dbg.value(metadata %struct.edge_def* %72, metadata !4233, metadata !DIExpression()), !dbg !4257
  %flags130 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i64 0, i32 7, !dbg !4431
  %73 = load i32, i32* %flags130, align 8, !dbg !4431
  %74 = trunc i32 %73 to i8, !dbg !4432
  %tobool132 = icmp slt i8 %74, 0, !dbg !4432
  br i1 %tobool132, label %if.then133, label %for.inc136, !dbg !4433

if.then133:                                       ; preds = %for.body129
  call void @llvm.dbg.value(metadata %struct.edge_def* %72, metadata !4233, metadata !DIExpression()), !dbg !4257
  %or = or i32 %73, 16384, !dbg !4434
  store i32 %or, i32* %flags130, align 8, !dbg !4434
  br label %for.inc136, !dbg !4435

for.inc136:                                       ; preds = %for.body129, %if.then133
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4238, metadata !DIExpression(DW_OP_deref)), !dbg !4412
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4428
  br label %for.cond126, !dbg !4428, !llvm.loop !4436

for.end137:                                       ; preds = %for.cond126
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #8, !dbg !4438
  %.pre8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4417
  %cfg113.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre8, i64 0, i32 1, !dbg !4439
  %.pre9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg113.phi.trans.insert, align 8, !dbg !4417
  br label %for.cond111, !dbg !4417, !llvm.loop !4440

for.end140:                                       ; preds = %for.cond111
  %call141 = call zeroext i8 @mark_irreducible_loops() #6, !dbg !4442
  %75 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4443
  %cfg143 = getelementptr inbounds %struct.function, %struct.function* %75, i64 0, i32 1, !dbg !4443
  %76 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg143, align 8, !dbg !4443
  %x_entry_block_ptr144 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %76, i64 0, i32 0, !dbg !4443
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr144, align 8, !dbg !4443
  %78 = bitcast %struct.edge_iterator* %ei153 to i8*, !dbg !4444
  %79 = bitcast %struct.edge_iterator* %tmp186 to i8*, !dbg !4445
  %80 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp186, i64 0, i32 0, !dbg !4445
  %81 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp186, i64 0, i32 1, !dbg !4445
  %82 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei153, i64 0, i32 0, !dbg !4447
  %83 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei153, i64 0, i32 1, !dbg !4447
  br label %for.cond146, !dbg !4443

for.cond146:                                      ; preds = %for.end221, %for.end140
  %84 = phi %struct.control_flow_graph* [ %76, %for.end140 ], [ %.pre11, %for.end221 ], !dbg !4449
  %err.13 = phi i32 [ %err.5.lcssa, %for.end140 ], [ %err.16.lcssa, %for.end221 ], !dbg !4306
  %.pn2 = phi %struct.basic_block_def* [ %77, %for.end140 ], [ %bb.2, %for.end221 ]
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn2, i64 0, i32 6, !dbg !4450
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !4450
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !4230, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.13, metadata !4232, metadata !DIExpression()), !dbg !4257
  %x_exit_block_ptr149 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %84, i64 0, i32 1, !dbg !4449
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr149, align 8, !dbg !4449
  %cmp150 = icmp eq %struct.basic_block_def* %bb.2, %85, !dbg !4449
  br i1 %cmp150, label %for.end224, label %for.body152, !dbg !4443

for.body152:                                      ; preds = %for.cond146
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #8, !dbg !4451
  %flags154 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 13, !dbg !4452
  %86 = load i32, i32* %flags154, align 8, !dbg !4452
  %and155 = and i32 %86, 4, !dbg !4454
  %tobool156 = icmp eq i32 %and155, 0, !dbg !4454
  br i1 %tobool156, label %if.else166, label %land.lhs.true157, !dbg !4455

land.lhs.true157:                                 ; preds = %for.body152
  %index158 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 9, !dbg !4456
  %87 = load i32, i32* %index158, align 8, !dbg !4456
  %div = lshr i32 %87, 6, !dbg !4456
  %idxprom159 = zext i32 %div to i64, !dbg !4456
  %arrayidx160 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call106, i64 0, i32 3, i64 %idxprom159, !dbg !4456
  %88 = load i64, i64* %arrayidx160, align 8, !dbg !4456
  %rem = and i32 %87, 63, !dbg !4456
  %sh_prom = zext i32 %rem to i64, !dbg !4456
  %89 = shl i64 1, %sh_prom, !dbg !4456
  %90 = and i64 %88, %89, !dbg !4456
  %tobool163 = icmp eq i64 %90, 0, !dbg !4456
  br i1 %tobool163, label %if.then164, label %if.else166, !dbg !4457

if.then164:                                       ; preds = %land.lhs.true157
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 %87) #6, !dbg !4458
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end185, !dbg !4460

if.else166:                                       ; preds = %land.lhs.true157, %for.body152
  br i1 %tobool156, label %land.lhs.true170, label %if.end185, !dbg !4461

land.lhs.true170:                                 ; preds = %if.else166
  %index172 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 9, !dbg !4463
  %91 = load i32, i32* %index172, align 8, !dbg !4463
  %div173 = lshr i32 %91, 6, !dbg !4463
  %idxprom174 = zext i32 %div173 to i64, !dbg !4463
  %arrayidx175 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call106, i64 0, i32 3, i64 %idxprom174, !dbg !4463
  %92 = load i64, i64* %arrayidx175, align 8, !dbg !4463
  %rem177 = and i32 %91, 63, !dbg !4463
  %sh_prom178 = zext i32 %rem177 to i64, !dbg !4463
  %93 = shl i64 1, %sh_prom178, !dbg !4463
  %94 = and i64 %92, %93, !dbg !4463
  %tobool181 = icmp eq i64 %94, 0, !dbg !4463
  br i1 %tobool181, label %if.end185, label %if.then182, !dbg !4464

if.then182:                                       ; preds = %land.lhs.true170
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0), i32 %91) #6, !dbg !4465
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end185, !dbg !4467

if.end185:                                        ; preds = %land.lhs.true170, %if.else166, %if.then182, %if.then164
  %err.15 = phi i32 [ 1, %if.then164 ], [ %err.13, %if.else166 ], [ 1, %if.then182 ], [ %err.13, %land.lhs.true170 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.15, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %79) #8, !dbg !4468
  %succs187 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 1, !dbg !4468
  %call188 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs187) #7, !dbg !4468
  %95 = extractvalue { i32, %struct.VEC_edge_gc** } %call188, 0, !dbg !4468
  store i32 %95, i32* %80, align 8, !dbg !4468
  %96 = extractvalue { i32, %struct.VEC_edge_gc** } %call188, 1, !dbg !4468
  store %struct.VEC_edge_gc** %96, %struct.VEC_edge_gc*** %81, align 8, !dbg !4468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %78, i8* nonnull align 8 %79, i64 16, i1 false), !dbg !4468
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %79) #8, !dbg !4468
  br label %for.cond189, !dbg !4468

for.cond189:                                      ; preds = %if.end217, %if.end185
  %err.16 = phi i32 [ %err.15, %if.end185 ], [ %err.18, %if.end217 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %err.16, metadata !4232, metadata !DIExpression()), !dbg !4257
  %97 = load i32, i32* %82, align 8, !dbg !4469
  %98 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %83, align 8, !dbg !4469
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4233, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  %call190 = call fastcc zeroext i8 @ei_cond(i32 %97, %struct.VEC_edge_gc** %98, %struct.edge_def** nonnull %e) #7, !dbg !4469
  %tobool191 = icmp eq i8 %call190, 0, !dbg !4468
  br i1 %tobool191, label %for.end221, label %for.body192, !dbg !4468

for.body192:                                      ; preds = %for.cond189
  %99 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4470
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  %flags193 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i64 0, i32 7, !dbg !4473
  %100 = load i32, i32* %flags193, align 8, !dbg !4473
  %101 = trunc i32 %100 to i8, !dbg !4474
  %tobool195 = icmp slt i8 %101, 0, !dbg !4474
  br i1 %tobool195, label %land.lhs.true196, label %if.else203, !dbg !4475

land.lhs.true196:                                 ; preds = %for.body192
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  %and198 = and i32 %100, 16384, !dbg !4476
  %tobool199 = icmp eq i32 %and198, 0, !dbg !4476
  br i1 %tobool199, label %if.then200, label %if.else203, !dbg !4477

if.then200:                                       ; preds = %land.lhs.true196
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i64 0, i32 0, !dbg !4478
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4478
  %index201 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %102, i64 0, i32 9, !dbg !4480
  %103 = load i32, i32* %index201, align 8, !dbg !4480
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i64 0, i32 1, !dbg !4481
  %104 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4481
  %index202 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %104, i64 0, i32 9, !dbg !4482
  %105 = load i32, i32* %index202, align 8, !dbg !4482
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i32 %103, i32 %105) #6, !dbg !4483
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end217, !dbg !4484

if.else203:                                       ; preds = %land.lhs.true196, %for.body192
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  br i1 %tobool195, label %if.end217, label %land.lhs.true207, !dbg !4485

land.lhs.true207:                                 ; preds = %if.else203
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  %and209 = and i32 %100, 16384, !dbg !4487
  %tobool210 = icmp eq i32 %and209, 0, !dbg !4487
  br i1 %tobool210, label %if.end217, label %if.then211, !dbg !4488

if.then211:                                       ; preds = %land.lhs.true207
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  %src212 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i64 0, i32 0, !dbg !4489
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %src212, align 8, !dbg !4489
  %index213 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %106, i64 0, i32 9, !dbg !4491
  %107 = load i32, i32* %index213, align 8, !dbg !4491
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !4233, metadata !DIExpression()), !dbg !4257
  %dest214 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i64 0, i32 1, !dbg !4492
  %108 = load %struct.basic_block_def*, %struct.basic_block_def** %dest214, align 8, !dbg !4492
  %index215 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %108, i64 0, i32 9, !dbg !4493
  %109 = load i32, i32* %index215, align 8, !dbg !4493
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i64 0, i64 0), i32 %107, i32 %109) #6, !dbg !4494
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end217, !dbg !4495

if.end217:                                        ; preds = %land.lhs.true207, %if.else203, %if.then211, %if.then200
  %err.18 = phi i32 [ 1, %if.then200 ], [ %err.16, %if.else203 ], [ 1, %if.then211 ], [ %err.16, %land.lhs.true207 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.18, metadata !4232, metadata !DIExpression()), !dbg !4257
  %110 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4496
  call void @llvm.dbg.value(metadata %struct.edge_def* %110, metadata !4233, metadata !DIExpression()), !dbg !4257
  %flags218 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %110, i64 0, i32 7, !dbg !4497
  %111 = load i32, i32* %flags218, align 8, !dbg !4498
  %and219 = and i32 %111, -16385, !dbg !4498
  store i32 %and219, i32* %flags218, align 8, !dbg !4498
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei153, metadata !4244, metadata !DIExpression(DW_OP_deref)), !dbg !4444
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei153) #7, !dbg !4469
  br label %for.cond189, !dbg !4469, !llvm.loop !4499

for.end221:                                       ; preds = %for.cond189
  %err.16.lcssa = phi i32 [ %err.16, %for.cond189 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %err.16.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.16.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.16.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #8, !dbg !4501
  %.pre10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4449
  %cfg148.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre10, i64 0, i32 1, !dbg !4502
  %.pre11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg148.phi.trans.insert, align 8, !dbg !4449
  br label %for.cond146, !dbg !4449, !llvm.loop !4503

for.end224:                                       ; preds = %for.cond146
  %err.13.lcssa = phi i32 [ %err.13, %for.cond146 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %err.13.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.13.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.13.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  %112 = bitcast %struct.simple_bitmap_def* %call106 to i8*, !dbg !4505
  call void @free(i8* %112) #6, !dbg !4506
  br label %if.end225, !dbg !4507

if.end225:                                        ; preds = %for.end100, %for.end224
  %err.19 = phi i32 [ %err.13.lcssa, %for.end224 ], [ %err.5.lcssa, %for.end100 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %err.19, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !4508
  br label %for.cond226, !dbg !4508

for.cond226:                                      ; preds = %for.inc272, %if.end225
  %err.20 = phi i32 [ %err.19, %if.end225 ], [ %err.24, %for.inc272 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.20, metadata !4232, metadata !DIExpression()), !dbg !4257
  %113 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4510
  call void @llvm.dbg.value(metadata %struct.loop* %113, metadata !4231, metadata !DIExpression()), !dbg !4257
  %tobool227 = icmp eq %struct.loop* %113, null, !dbg !4508
  br i1 %tobool227, label %for.end273, label %for.body228, !dbg !4508

for.body228:                                      ; preds = %for.cond226
  call void @llvm.dbg.value(metadata %struct.loop* %113, metadata !4231, metadata !DIExpression()), !dbg !4257
  %exits = getelementptr inbounds %struct.loop, %struct.loop* %113, i64 0, i32 18, !dbg !4512
  %114 = load %struct.loop_exit*, %struct.loop_exit** %exits, align 8, !dbg !4512
  %tobool229 = icmp eq %struct.loop_exit* %114, null, !dbg !4515
  br i1 %tobool229, label %if.then234, label %lor.lhs.false, !dbg !4516

lor.lhs.false:                                    ; preds = %for.body228
  call void @llvm.dbg.value(metadata %struct.loop* %113, metadata !4231, metadata !DIExpression()), !dbg !4257
  %e231 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %114, i64 0, i32 0, !dbg !4517
  %115 = load %struct.edge_def*, %struct.edge_def** %e231, align 8, !dbg !4517
  %cmp232 = icmp eq %struct.edge_def* %115, null, !dbg !4518
  br i1 %cmp232, label %if.else236, label %if.then234, !dbg !4519

if.then234:                                       ; preds = %lor.lhs.false, %for.body228
  call void @llvm.dbg.value(metadata %struct.loop* %113, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num235 = getelementptr inbounds %struct.loop, %struct.loop* %113, i64 0, i32 0, !dbg !4520
  %116 = load i32, i32* %num235, align 8, !dbg !4520
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i32 %116) #6, !dbg !4522
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end259, !dbg !4523

if.else236:                                       ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.loop* %113, metadata !4231, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_exit* %114, metadata !4237, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 0, metadata !4226, metadata !DIExpression()), !dbg !4257
  br label %for.cond238, !dbg !4524

for.cond238:                                      ; preds = %for.inc250, %if.else236
  %.pn3 = phi %struct.loop_exit* [ %114, %if.else236 ], [ %exit.0, %for.inc250 ]
  %mexit.0 = phi %struct.loop_exit* [ %114, %if.else236 ], [ %mexit.1, %for.inc250 ], !dbg !4527
  %i.0 = phi i32 [ 0, %if.else236 ], [ %inc244, %for.inc250 ], !dbg !4527
  %exit.0.in = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %.pn3, i64 0, i32 2, !dbg !4527
  %exit.0 = load %struct.loop_exit*, %struct.loop_exit** %exit.0.in, align 8, !dbg !4527
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4226, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_exit* %mexit.0, metadata !4237, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exit.0, metadata !4236, metadata !DIExpression()), !dbg !4257
  %e239 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.0, i64 0, i32 0, !dbg !4528
  %117 = load %struct.edge_def*, %struct.edge_def** %e239, align 8, !dbg !4528
  %tobool240 = icmp ne %struct.edge_def* %117, null, !dbg !4530
  %cmp241 = icmp ne %struct.loop_exit* %exit.0, %mexit.0, !dbg !4531
  %spec.select = and i1 %cmp241, %tobool240, !dbg !4532
  br i1 %spec.select, label %for.body243, label %for.end252, !dbg !4533

for.body243:                                      ; preds = %for.cond238
  %inc244 = add i32 %i.0, 1, !dbg !4534
  call void @llvm.dbg.value(metadata i32 %inc244, metadata !4226, metadata !DIExpression()), !dbg !4257
  %and245 = and i32 %i.0, 1, !dbg !4537
  %tobool246 = icmp eq i32 %and245, 0, !dbg !4537
  br i1 %tobool246, label %for.inc250, label %if.then247, !dbg !4538

if.then247:                                       ; preds = %for.body243
  %next248 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %mexit.0, i64 0, i32 2, !dbg !4539
  %118 = load %struct.loop_exit*, %struct.loop_exit** %next248, align 8, !dbg !4539
  call void @llvm.dbg.value(metadata %struct.loop_exit* %118, metadata !4237, metadata !DIExpression()), !dbg !4257
  br label %for.inc250, !dbg !4540

for.inc250:                                       ; preds = %for.body243, %if.then247
  %mexit.1 = phi %struct.loop_exit* [ %118, %if.then247 ], [ %mexit.0, %for.body243 ], !dbg !4527
  call void @llvm.dbg.value(metadata %struct.loop_exit* %mexit.1, metadata !4237, metadata !DIExpression()), !dbg !4257
  br label %for.cond238, !dbg !4541, !llvm.loop !4542

for.end252:                                       ; preds = %for.cond238
  %exit.0.lcssa = phi %struct.loop_exit* [ %exit.0, %for.cond238 ], !dbg !4527
  call void @llvm.dbg.value(metadata %struct.loop* %113, metadata !4231, metadata !DIExpression()), !dbg !4257
  %cmp254 = icmp eq %struct.loop_exit* %exit.0.lcssa, %114, !dbg !4544
  br i1 %cmp254, label %if.end259, label %if.then256, !dbg !4546

if.then256:                                       ; preds = %for.end252
  call void @llvm.dbg.value(metadata %struct.loop* %113, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num257 = getelementptr inbounds %struct.loop, %struct.loop* %113, i64 0, i32 0, !dbg !4547
  %119 = load i32, i32* %num257, align 8, !dbg !4547
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 %119) #6, !dbg !4549
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end259, !dbg !4550

if.end259:                                        ; preds = %for.end252, %if.then256, %if.then234
  %err.22 = phi i32 [ 1, %if.then234 ], [ 1, %if.then256 ], [ %err.20, %for.end252 ], !dbg !4551
  call void @llvm.dbg.value(metadata i32 %err.22, metadata !4232, metadata !DIExpression()), !dbg !4257
  %call260 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !4552
  %tobool261 = icmp eq i8 %call260, 0, !dbg !4552
  br i1 %tobool261, label %if.then262, label %for.inc272, !dbg !4554

if.then262:                                       ; preds = %if.end259
  %120 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4555
  call void @llvm.dbg.value(metadata %struct.loop* %120, metadata !4231, metadata !DIExpression()), !dbg !4257
  %exits263 = getelementptr inbounds %struct.loop, %struct.loop* %120, i64 0, i32 18, !dbg !4558
  %121 = load %struct.loop_exit*, %struct.loop_exit** %exits263, align 8, !dbg !4558
  %next264 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %121, i64 0, i32 2, !dbg !4559
  %122 = load %struct.loop_exit*, %struct.loop_exit** %next264, align 8, !dbg !4559
  call void @llvm.dbg.value(metadata %struct.loop* %120, metadata !4231, metadata !DIExpression()), !dbg !4257
  %cmp266 = icmp eq %struct.loop_exit* %122, %121, !dbg !4560
  br i1 %cmp266, label %for.inc272, label %if.then268, !dbg !4561

if.then268:                                       ; preds = %if.then262
  call void @llvm.dbg.value(metadata %struct.loop* %120, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num269 = getelementptr inbounds %struct.loop, %struct.loop* %120, i64 0, i32 0, !dbg !4562
  %123 = load i32, i32* %num269, align 8, !dbg !4562
  call void (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i64 0, i64 0), i32 %123) #6, !dbg !4564
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %for.inc272, !dbg !4565

for.inc272:                                       ; preds = %if.then262, %if.end259, %if.then268
  %err.24 = phi i32 [ %err.22, %if.end259 ], [ 1, %if.then268 ], [ %err.22, %if.then262 ], !dbg !4566
  call void @llvm.dbg.value(metadata i32 %err.24, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !4510
  br label %for.cond226, !dbg !4510, !llvm.loop !4567

for.end273:                                       ; preds = %for.cond226
  %err.20.lcssa = phi i32 [ %err.20, %for.cond226 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.20.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.20.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.20.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  %call274 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !4569
  %tobool275 = icmp eq i8 %call274, 0, !dbg !4569
  br i1 %tobool275, label %if.end387, label %if.then276, !dbg !4570

if.then276:                                       ; preds = %for.end273
  call void @llvm.dbg.value(metadata i32 0, metadata !4248, metadata !DIExpression()), !dbg !4571
  %mul = shl nuw nsw i64 %conv, 2, !dbg !4572
  %call278 = call i8* @memset(i8* %call1, i32 0, i64 %mul) #6, !dbg !4573
  %124 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4574
  %cfg280 = getelementptr inbounds %struct.function, %struct.function* %124, i64 0, i32 1, !dbg !4574
  %125 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg280, align 8, !dbg !4574
  %x_entry_block_ptr281 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %125, i64 0, i32 0, !dbg !4574
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr281, align 8, !dbg !4574
  %127 = bitcast %struct.edge_iterator* %ei290 to i8*, !dbg !4575
  %128 = bitcast %struct.edge_iterator* %tmp297 to i8*, !dbg !4576
  %129 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp297, i64 0, i32 0, !dbg !4576
  %130 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp297, i64 0, i32 1, !dbg !4576
  %131 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei290, i64 0, i32 0, !dbg !4578
  %132 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei290, i64 0, i32 1, !dbg !4578
  br label %for.cond283, !dbg !4574

for.cond283:                                      ; preds = %cleanup, %if.then276
  %133 = phi %struct.function* [ %124, %if.then276 ], [ %.pre12, %cleanup ]
  %134 = phi %struct.control_flow_graph* [ %125, %if.then276 ], [ %.pre13, %cleanup ], !dbg !4580
  %135 = phi %struct.function* [ %124, %if.then276 ], [ %.pre12, %cleanup ], !dbg !4580
  %err.25 = phi i32 [ %err.20.lcssa, %if.then276 ], [ %err.30, %cleanup ], !dbg !4306
  %.pn4 = phi %struct.basic_block_def* [ %126, %if.then276 ], [ %bb.3, %cleanup ]
  %n_exits.0 = phi i32 [ 0, %if.then276 ], [ %n_exits.3, %cleanup ], !dbg !4581
  %bb.3.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn4, i64 0, i32 6, !dbg !4582
  %bb.3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.3.in, align 8, !dbg !4582
  call void @llvm.dbg.value(metadata i32 %n_exits.0, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !4230, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.25, metadata !4232, metadata !DIExpression()), !dbg !4257
  %x_exit_block_ptr286 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %134, i64 0, i32 1, !dbg !4580
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr286, align 8, !dbg !4580
  %cmp287 = icmp eq %struct.basic_block_def* %bb.3, %136, !dbg !4580
  br i1 %cmp287, label %for.end351, label %for.body289, !dbg !4574

for.body289:                                      ; preds = %for.cond283
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %127) #8, !dbg !4583
  %loop_father291 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 3, !dbg !4584
  %137 = load %struct.loop*, %struct.loop** %loop_father291, align 8, !dbg !4584
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %135, i64 0, i32 4, !dbg !4586
  %138 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4586
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %138, i64 0, i32 3, !dbg !4587
  %139 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !4587
  %cmp293 = icmp eq %struct.loop* %137, %139, !dbg !4588
  br i1 %cmp293, label %cleanup, label %if.end296, !dbg !4589

if.end296:                                        ; preds = %for.body289
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %128) #8, !dbg !4590
  %succs298 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 1, !dbg !4590
  %call299 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs298) #7, !dbg !4590
  %140 = extractvalue { i32, %struct.VEC_edge_gc** } %call299, 0, !dbg !4590
  store i32 %140, i32* %129, align 8, !dbg !4590
  %141 = extractvalue { i32, %struct.VEC_edge_gc** } %call299, 1, !dbg !4590
  store %struct.VEC_edge_gc** %141, %struct.VEC_edge_gc*** %130, align 8, !dbg !4590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %127, i8* nonnull align 8 %128, i64 16, i1 false), !dbg !4590
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %128) #8, !dbg !4590
  %142 = bitcast %struct.loop** %loop_father291 to i64*, !dbg !4591
  br label %for.cond300, !dbg !4590

for.cond300:                                      ; preds = %for.inc347, %if.end296
  %err.26 = phi i32 [ %err.25, %if.end296 ], [ %err.29, %for.inc347 ], !dbg !4306
  %n_exits.1 = phi i32 [ %n_exits.0, %if.end296 ], [ %n_exits.2, %for.inc347 ], !dbg !4581
  call void @llvm.dbg.value(metadata i32 %n_exits.1, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.26, metadata !4232, metadata !DIExpression()), !dbg !4257
  %143 = load i32, i32* %131, align 8, !dbg !4594
  %144 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %132, align 8, !dbg !4594
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4233, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  %call301 = call fastcc zeroext i8 @ei_cond(i32 %143, %struct.VEC_edge_gc** %144, %struct.edge_def** nonnull %e) #7, !dbg !4594
  %tobool302 = icmp eq i8 %call301, 0, !dbg !4590
  br i1 %tobool302, label %cleanup.loopexit, label %for.body303, !dbg !4590

for.body303:                                      ; preds = %for.cond300
  %145 = load %struct.loop*, %struct.loop** %loop_father291, align 8, !dbg !4595
  %146 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4597
  call void @llvm.dbg.value(metadata %struct.edge_def* %146, metadata !4233, metadata !DIExpression()), !dbg !4257
  %dest305 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %146, i64 0, i32 1, !dbg !4598
  %147 = load %struct.basic_block_def*, %struct.basic_block_def** %dest305, align 8, !dbg !4598
  %call306 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %145, %struct.basic_block_def* %147) #7, !dbg !4599
  %tobool307 = icmp eq i8 %call306, 0, !dbg !4599
  br i1 %tobool307, label %if.end309, label %for.inc347, !dbg !4600

if.end309:                                        ; preds = %for.body303
  %inc310 = add i32 %n_exits.1, 1, !dbg !4601
  call void @llvm.dbg.value(metadata i32 %inc310, metadata !4248, metadata !DIExpression()), !dbg !4571
  %148 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4602
  call void @llvm.dbg.value(metadata %struct.edge_def* %148, metadata !4233, metadata !DIExpression()), !dbg !4257
  %call311 = call fastcc %struct.loop_exit* @get_exit_descriptions(%struct.edge_def* %148) #7, !dbg !4603
  call void @llvm.dbg.value(metadata %struct.loop_exit* %call311, metadata !4236, metadata !DIExpression()), !dbg !4257
  %tobool312 = icmp eq %struct.loop_exit* %call311, null, !dbg !4604
  br i1 %tobool312, label %if.then313, label %if.end318, !dbg !4606

if.then313:                                       ; preds = %if.end309
  %149 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4607
  call void @llvm.dbg.value(metadata %struct.edge_def* %149, metadata !4233, metadata !DIExpression()), !dbg !4257
  %src314 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %149, i64 0, i32 0, !dbg !4609
  %150 = load %struct.basic_block_def*, %struct.basic_block_def** %src314, align 8, !dbg !4609
  %index315 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %150, i64 0, i32 9, !dbg !4610
  %151 = load i32, i32* %index315, align 8, !dbg !4610
  call void @llvm.dbg.value(metadata %struct.edge_def* %149, metadata !4233, metadata !DIExpression()), !dbg !4257
  %dest316 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %149, i64 0, i32 1, !dbg !4611
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %dest316, align 8, !dbg !4611
  %index317 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %152, i64 0, i32 9, !dbg !4612
  %153 = load i32, i32* %index317, align 8, !dbg !4612
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %151, i32 %153) #6, !dbg !4613
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end318, !dbg !4614

if.end318:                                        ; preds = %if.end309, %if.then313
  %err.27 = phi i32 [ %err.26, %if.end309 ], [ 1, %if.then313 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.27, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4571
  br label %for.cond319, !dbg !4615

for.cond319:                                      ; preds = %for.body321, %if.end318
  %exit.1 = phi %struct.loop_exit* [ %call311, %if.end318 ], [ %154, %for.body321 ], !dbg !4616
  %eloops.0 = phi i32 [ 0, %if.end318 ], [ %inc322, %for.body321 ], !dbg !4616
  call void @llvm.dbg.value(metadata i32 %eloops.0, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exit.1, metadata !4236, metadata !DIExpression()), !dbg !4257
  %tobool320 = icmp eq %struct.loop_exit* %exit.1, null, !dbg !4617
  br i1 %tobool320, label %for.end324, label %for.body321, !dbg !4617

for.body321:                                      ; preds = %for.cond319
  %inc322 = add i32 %eloops.0, 1, !dbg !4619
  call void @llvm.dbg.value(metadata i32 %inc322, metadata !4251, metadata !DIExpression()), !dbg !4571
  %next_e = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.1, i64 0, i32 3, !dbg !4621
  %154 = load %struct.loop_exit*, %struct.loop_exit** %next_e, align 8, !dbg !4621
  call void @llvm.dbg.value(metadata %struct.loop_exit* %154, metadata !4236, metadata !DIExpression()), !dbg !4257
  br label %for.cond319, !dbg !4622, !llvm.loop !4623

for.end324:                                       ; preds = %for.cond319
  %eloops.0.lcssa = phi i32 [ %eloops.0, %for.cond319 ], !dbg !4616
  call void @llvm.dbg.value(metadata i32 %eloops.0.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %eloops.0.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %eloops.0.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  %155 = load i64, i64* %142, align 8, !dbg !4625
  store i64 %155, i64* %7, align 8, !dbg !4626
  %156 = inttoptr i64 %155 to %struct.loop*, !dbg !4627
  br label %for.cond326, !dbg !4627

for.cond326:                                      ; preds = %for.body331, %for.end324
  %157 = phi %struct.loop* [ %156, %for.end324 ], [ %call337, %for.body331 ]
  %158 = phi %struct.loop* [ %156, %for.end324 ], [ %call337, %for.body331 ], !dbg !4628
  %eloops.1 = phi i32 [ %eloops.0.lcssa, %for.end324 ], [ %dec, %for.body331 ], !dbg !4616
  call void @llvm.dbg.value(metadata i32 %eloops.1, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata %struct.loop* %158, metadata !4231, metadata !DIExpression()), !dbg !4257
  %159 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4630
  call void @llvm.dbg.value(metadata %struct.edge_def* %159, metadata !4233, metadata !DIExpression()), !dbg !4257
  %dest327 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %159, i64 0, i32 1, !dbg !4631
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %dest327, align 8, !dbg !4631
  %loop_father328 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %160, i64 0, i32 3, !dbg !4632
  %161 = load %struct.loop*, %struct.loop** %loop_father328, align 8, !dbg !4632
  %cmp329 = icmp eq %struct.loop* %158, %161, !dbg !4633
  br i1 %cmp329, label %for.end338, label %for.body331, !dbg !4634

for.body331:                                      ; preds = %for.cond326
  %dec = add i32 %eloops.1, -1, !dbg !4635
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata %struct.loop* %157, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num332 = getelementptr inbounds %struct.loop, %struct.loop* %157, i64 0, i32 0, !dbg !4637
  %162 = load i32, i32* %num332, align 8, !dbg !4637
  %idxprom333 = sext i32 %162 to i64, !dbg !4638
  %arrayidx334 = getelementptr inbounds i32, i32* %3, i64 %idxprom333, !dbg !4638
  %163 = load i32, i32* %arrayidx334, align 4, !dbg !4639
  %inc335 = add i32 %163, 1, !dbg !4639
  store i32 %inc335, i32* %arrayidx334, align 4, !dbg !4639
  %164 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4640
  call void @llvm.dbg.value(metadata %struct.loop* %164, metadata !4231, metadata !DIExpression()), !dbg !4257
  %call337 = call fastcc %struct.loop* @loop_outer(%struct.loop* %164) #7, !dbg !4641
  call void @llvm.dbg.value(metadata %struct.loop* %call337, metadata !4231, metadata !DIExpression()), !dbg !4257
  store %struct.loop* %call337, %struct.loop** %loop, align 8, !dbg !4642
  br label %for.cond326, !dbg !4643, !llvm.loop !4644

for.end338:                                       ; preds = %for.cond326
  %eloops.1.lcssa = phi i32 [ %eloops.1, %for.cond326 ], !dbg !4616
  %.lcssa18 = phi %struct.edge_def* [ %159, %for.cond326 ], !dbg !4630
  %.lcssa = phi %struct.basic_block_def* [ %160, %for.cond326 ], !dbg !4631
  call void @llvm.dbg.value(metadata i32 %eloops.1.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %eloops.1.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %eloops.1.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  %cmp339 = icmp eq i32 %eloops.1.lcssa, 0, !dbg !4646
  br i1 %cmp339, label %for.inc347, label %if.then341, !dbg !4648

if.then341:                                       ; preds = %for.end338
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa18, metadata !4233, metadata !DIExpression()), !dbg !4257
  %src342 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.lcssa18, i64 0, i32 0, !dbg !4649
  %165 = load %struct.basic_block_def*, %struct.basic_block_def** %src342, align 8, !dbg !4649
  %index343 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %165, i64 0, i32 9, !dbg !4651
  %166 = load i32, i32* %index343, align 8, !dbg !4651
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa18, metadata !4233, metadata !DIExpression()), !dbg !4257
  %index345 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 9, !dbg !4652
  %167 = load i32, i32* %index345, align 8, !dbg !4652
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0), i32 %166, i32 %167) #6, !dbg !4653
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %for.inc347, !dbg !4654

for.inc347:                                       ; preds = %for.end338, %for.body303, %if.then341
  %err.29 = phi i32 [ %err.26, %for.body303 ], [ 1, %if.then341 ], [ %err.27, %for.end338 ], !dbg !4257
  %n_exits.2 = phi i32 [ %n_exits.1, %for.body303 ], [ %inc310, %if.then341 ], [ %inc310, %for.end338 ], !dbg !4571
  call void @llvm.dbg.value(metadata i32 %n_exits.2, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.29, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei290, metadata !4252, metadata !DIExpression(DW_OP_deref)), !dbg !4575
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei290) #7, !dbg !4594
  br label %for.cond300, !dbg !4594, !llvm.loop !4655

cleanup.loopexit:                                 ; preds = %for.cond300
  %err.26.lcssa = phi i32 [ %err.26, %for.cond300 ], !dbg !4306
  %n_exits.1.lcssa = phi i32 [ %n_exits.1, %for.cond300 ], !dbg !4581
  call void @llvm.dbg.value(metadata i32 %err.26.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %n_exits.1.lcssa, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.26.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %n_exits.1.lcssa, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.26.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %n_exits.1.lcssa, metadata !4248, metadata !DIExpression()), !dbg !4571
  %.pre12.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4580
  br label %cleanup, !dbg !4657

cleanup:                                          ; preds = %cleanup.loopexit, %for.body289
  %.pre12 = phi %struct.function* [ %133, %for.body289 ], [ %.pre12.pre, %cleanup.loopexit ], !dbg !4580
  %err.30 = phi i32 [ %err.25, %for.body289 ], [ %err.26.lcssa, %cleanup.loopexit ], !dbg !4306
  %n_exits.3 = phi i32 [ %n_exits.0, %for.body289 ], [ %n_exits.1.lcssa, %cleanup.loopexit ], !dbg !4581
  call void @llvm.dbg.value(metadata i32 %n_exits.3, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.30, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %127) #8, !dbg !4657
  %cfg285.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre12, i64 0, i32 1, !dbg !4658
  %.pre13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg285.phi.trans.insert, align 8, !dbg !4580
  br label %for.cond283, !dbg !4580, !llvm.loop !4659

for.end351:                                       ; preds = %for.cond283
  %.lcssa19 = phi %struct.function* [ %133, %for.cond283 ]
  %err.25.lcssa = phi i32 [ %err.25, %for.cond283 ], !dbg !4306
  %n_exits.0.lcssa = phi i32 [ %n_exits.0, %for.cond283 ], !dbg !4581
  call void @llvm.dbg.value(metadata i32 %err.25.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %n_exits.0.lcssa, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.25.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %n_exits.0.lcssa, metadata !4248, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.25.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %n_exits.0.lcssa, metadata !4248, metadata !DIExpression()), !dbg !4571
  %conv352 = zext i32 %n_exits.0.lcssa to i64, !dbg !4661
  %x_current_loops354 = getelementptr inbounds %struct.function, %struct.function* %.lcssa19, i64 0, i32 4, !dbg !4663
  %168 = load %struct.loops*, %struct.loops** %x_current_loops354, align 8, !dbg !4663
  %exits355 = getelementptr inbounds %struct.loops, %struct.loops* %168, i64 0, i32 2, !dbg !4664
  %169 = load %struct.htab*, %struct.htab** %exits355, align 8, !dbg !4664
  %call356 = call i64 @htab_elements(%struct.htab* %169) #6, !dbg !4665
  %cmp357 = icmp eq i64 %call356, %conv352, !dbg !4666
  br i1 %cmp357, label %if.end360, label %if.then359, !dbg !4667

if.then359:                                       ; preds = %for.end351
  call void (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !4668
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end360, !dbg !4670

if.end360:                                        ; preds = %for.end351, %if.then359
  %err.31 = phi i32 [ 1, %if.then359 ], [ %err.25.lcssa, %for.end351 ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.31, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !4671
  br label %for.cond361, !dbg !4671

for.cond361:                                      ; preds = %for.inc385, %if.end360
  %err.32 = phi i32 [ %err.31, %if.end360 ], [ %err.33, %for.inc385 ], !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.32, metadata !4232, metadata !DIExpression()), !dbg !4257
  %170 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4673
  call void @llvm.dbg.value(metadata %struct.loop* %170, metadata !4231, metadata !DIExpression()), !dbg !4257
  %tobool362 = icmp eq %struct.loop* %170, null, !dbg !4671
  br i1 %tobool362, label %if.end387.loopexit, label %for.body363, !dbg !4671

for.body363:                                      ; preds = %for.cond361
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata %struct.loop* %170, metadata !4231, metadata !DIExpression()), !dbg !4257
  %exits364 = getelementptr inbounds %struct.loop, %struct.loop* %170, i64 0, i32 18, !dbg !4675
  %171 = load %struct.loop_exit*, %struct.loop_exit** %exits364, align 8, !dbg !4675
  br label %for.cond366, !dbg !4678

for.cond366:                                      ; preds = %for.body369, %for.body363
  %.pn5 = phi %struct.loop_exit* [ %171, %for.body363 ], [ %exit.2, %for.body369 ]
  %eloops.2 = phi i32 [ 0, %for.body363 ], [ %inc370, %for.body369 ], !dbg !4679
  %exit.2.in = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %.pn5, i64 0, i32 2, !dbg !4680
  %exit.2 = load %struct.loop_exit*, %struct.loop_exit** %exit.2.in, align 8, !dbg !4680
  call void @llvm.dbg.value(metadata i32 %eloops.2, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata %struct.loop_exit* %exit.2, metadata !4236, metadata !DIExpression()), !dbg !4257
  %e367 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %exit.2, i64 0, i32 0, !dbg !4681
  %172 = load %struct.edge_def*, %struct.edge_def** %e367, align 8, !dbg !4681
  %tobool368 = icmp eq %struct.edge_def* %172, null, !dbg !4683
  br i1 %tobool368, label %for.end373, label %for.body369, !dbg !4683

for.body369:                                      ; preds = %for.cond366
  %inc370 = add i32 %eloops.2, 1, !dbg !4684
  call void @llvm.dbg.value(metadata i32 %inc370, metadata !4251, metadata !DIExpression()), !dbg !4571
  br label %for.cond366, !dbg !4685, !llvm.loop !4686

for.end373:                                       ; preds = %for.cond366
  %eloops.2.lcssa = phi i32 [ %eloops.2, %for.cond366 ], !dbg !4679
  call void @llvm.dbg.value(metadata i32 %eloops.2.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %eloops.2.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %eloops.2.lcssa, metadata !4251, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata %struct.loop* %170, metadata !4231, metadata !DIExpression()), !dbg !4257
  %num374 = getelementptr inbounds %struct.loop, %struct.loop* %170, i64 0, i32 0, !dbg !4688
  %173 = load i32, i32* %num374, align 8, !dbg !4688
  %idxprom375 = sext i32 %173 to i64, !dbg !4690
  %arrayidx376 = getelementptr inbounds i32, i32* %3, i64 %idxprom375, !dbg !4690
  %174 = load i32, i32* %arrayidx376, align 4, !dbg !4690
  %cmp377 = icmp eq i32 %eloops.2.lcssa, %174, !dbg !4691
  br i1 %cmp377, label %for.inc385, label %if.then379, !dbg !4692

if.then379:                                       ; preds = %for.end373
  call void @llvm.dbg.value(metadata %struct.loop* %170, metadata !4231, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop* %170, metadata !4231, metadata !DIExpression()), !dbg !4257
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0), i32 %eloops.2.lcssa, i32 %173, i32 %174) #6, !dbg !4693
  call void @llvm.dbg.value(metadata i32 1, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %for.inc385, !dbg !4695

for.inc385:                                       ; preds = %for.end373, %if.then379
  %err.33 = phi i32 [ 1, %if.then379 ], [ %err.32, %for.end373 ], !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.33, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4257
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !4673
  br label %for.cond361, !dbg !4673, !llvm.loop !4696

if.end387.loopexit:                               ; preds = %for.cond361
  %err.32.lcssa = phi i32 [ %err.32, %for.cond361 ], !dbg !4571
  call void @llvm.dbg.value(metadata i32 %err.32.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.32.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.32.lcssa, metadata !4232, metadata !DIExpression()), !dbg !4257
  br label %if.end387, !dbg !4698

if.end387:                                        ; preds = %if.end387.loopexit, %for.end273
  %err.34 = phi i32 [ %err.20.lcssa, %for.end273 ], [ %err.32.lcssa, %if.end387.loopexit ], !dbg !4257
  call void @llvm.dbg.value(metadata i32 %err.34, metadata !4232, metadata !DIExpression()), !dbg !4257
  %tobool388 = icmp eq i32 %err.34, 0, !dbg !4698
  br i1 %tobool388, label %cond.end391, label %cond.true389, !dbg !4698

cond.true389:                                     ; preds = %if.end387
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1575, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4698
  br label %cond.end391, !dbg !4698

cond.end391:                                      ; preds = %if.end387, %cond.true389
  call void @free(i8* %call1) #6, !dbg !4699
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4700
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4700
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4700
  ret void, !dbg !4700
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4701 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4705, metadata !DIExpression()), !dbg !4706
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4707
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4707
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4707
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4707

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4707
  br label %cond.end, !dbg !4707

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4707
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4707
  %cmp = icmp eq i32 %call, 1, !dbg !4708
  %conv2 = zext i1 %cmp to i8, !dbg !4707
  ret i8 %conv2, !dbg !4709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4710 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4714, metadata !DIExpression()), !dbg !4715
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !4716
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !4717
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4717
  ret %struct.basic_block_def* %0, !dbg !4718
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) local_unnamed_addr #5 !dbg !4719 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4723, metadata !DIExpression()), !dbg !4724
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !4725
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4725
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4726
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4726
  %call = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %0, %struct.basic_block_def* %1) #6, !dbg !4727
  ret %struct.edge_def* %call, !dbg !4728
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4729 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4731, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4732, metadata !DIExpression()), !dbg !4736
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4737
  %0 = load i8*, i8** %popcount, align 8, !dbg !4737
  %tobool = icmp eq i8* %0, null, !dbg !4738
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4739

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4740
  %.pre2 = zext i32 %.pre to i64, !dbg !4741
  %.pre3 = shl i64 1, %.pre2, !dbg !4741
  %.pre4 = lshr i32 %bitno, 6, !dbg !4742
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4743
  br label %if.end7, !dbg !4739

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4744
  %idxprom = zext i32 %div to i64, !dbg !4744
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4744
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4744
  %rem = and i32 %bitno, 63, !dbg !4744
  %sh_prom = zext i32 %rem to i64, !dbg !4744
  %2 = shl i64 1, %sh_prom, !dbg !4745
  %3 = and i64 %1, %2, !dbg !4745
  %tobool1 = icmp eq i64 %3, 0, !dbg !4745
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !4747

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4748
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4749
  %dec = add i8 %4, -1, !dbg !4749
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !4749
  br label %if.end7, !dbg !4748

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4743
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4741
  %neg = xor i64 %shl.pre-phi, -1, !dbg !4750
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4743
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4751
  %and14 = and i64 %5, %neg, !dbg !4751
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !4751
  ret void, !dbg !4752
}

declare dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.loop_exit* @get_exit_descriptions(%struct.edge_def* %e) unnamed_addr #5 !dbg !4753 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4757, metadata !DIExpression()), !dbg !4758
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4759
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4759
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4759
  %exits = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 2, !dbg !4760
  %2 = load %struct.htab*, %struct.htab** %exits, align 8, !dbg !4760
  %3 = bitcast %struct.edge_def* %e to i8*, !dbg !4761
  %4 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4762
  %call = tail call i32 %4(i8* %3) #6, !dbg !4762
  %call1 = tail call i8* @htab_find_with_hash(%struct.htab* %2, i8* %3, i32 %call) #6, !dbg !4763
  %5 = bitcast i8* %call1 to %struct.loop_exit*, !dbg !4764
  ret %struct.loop_exit* %5, !dbg !4765
}

declare dso_local i64 @htab_elements(%struct.htab*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) local_unnamed_addr #5 !dbg !4766 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4768, metadata !DIExpression()), !dbg !4771
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4772
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4772
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4773
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4773
  %call = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 1) #7, !dbg !4774
  %tobool = icmp eq i8 %call, 0, !dbg !4774
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4774

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1594, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4774
  br label %cond.end, !dbg !4774

cond.end:                                         ; preds = %entry, %cond.true
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4775
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4775
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4775
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4775
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 0, !dbg !4775
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4775
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4775
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !4775
  store i32 %5, i32* %4, align 8, !dbg !4775
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4775
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !4775
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !4775
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !4775
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4775
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4777
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4777
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !4779
  br label %for.cond, !dbg !4775

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %8, align 8, !dbg !4781
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !4781
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4769, metadata !DIExpression(DW_OP_deref)), !dbg !4771
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #7, !dbg !4781
  %tobool3 = icmp eq i8 %call2, 0, !dbg !4775
  br i1 %tobool3, label %for.cond.for.end_crit_edge, label %for.body, !dbg !4775

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  %.pre = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4782
  br label %for.end, !dbg !4775

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4783
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4769, metadata !DIExpression()), !dbg !4771
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !4784
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4784
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4785
  %cmp = icmp eq %struct.basic_block_def* %13, %14, !dbg !4786
  br i1 %cmp, label %for.inc, label %for.end.loopexit, !dbg !4787

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4770, metadata !DIExpression(DW_OP_deref)), !dbg !4771
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4781
  br label %for.cond, !dbg !4781, !llvm.loop !4788

for.end.loopexit:                                 ; preds = %for.body
  %.lcssa = phi %struct.edge_def* [ %12, %for.body ], !dbg !4783
  br label %for.end, !dbg !4790

for.end:                                          ; preds = %for.end.loopexit, %for.cond.for.end_crit_edge
  %15 = phi %struct.edge_def* [ %.pre, %for.cond.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !4782
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4769, metadata !DIExpression()), !dbg !4771
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4790
  ret %struct.edge_def* %15, !dbg !4791
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @loop_exit_edge_p(%struct.loop* %loop, %struct.edge_def* %e) local_unnamed_addr #5 !dbg !4792 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4799, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4800, metadata !DIExpression()), !dbg !4801
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !4802
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4802
  %call = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %0) #7, !dbg !4803
  %tobool = icmp eq i8 %call, 0, !dbg !4803
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4804

land.rhs:                                         ; preds = %entry
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !4805
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4805
  %call1 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %1) #7, !dbg !4806
  %tobool2 = icmp eq i8 %call1, 0, !dbg !4807
  %phitmp = zext i1 %tobool2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !4808
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @single_exit(%struct.loop* %loop) local_unnamed_addr #5 !dbg !4809 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4811, metadata !DIExpression()), !dbg !4813
  %exits = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 18, !dbg !4814
  %0 = load %struct.loop_exit*, %struct.loop_exit** %exits, align 8, !dbg !4814
  %next = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %0, i64 0, i32 2, !dbg !4815
  %1 = load %struct.loop_exit*, %struct.loop_exit** %next, align 8, !dbg !4815
  call void @llvm.dbg.value(metadata %struct.loop_exit* %1, metadata !4812, metadata !DIExpression()), !dbg !4813
  %call = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #7, !dbg !4816
  %tobool = icmp eq i8 %call, 0, !dbg !4816
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4818

if.end:                                           ; preds = %entry
  %e = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %1, i64 0, i32 0, !dbg !4819
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4819
  %tobool1 = icmp eq %struct.edge_def* %2, null, !dbg !4821
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !4822

land.lhs.true:                                    ; preds = %if.end
  %next2 = getelementptr inbounds %struct.loop_exit, %struct.loop_exit* %1, i64 0, i32 2, !dbg !4823
  %3 = load %struct.loop_exit*, %struct.loop_exit** %next2, align 8, !dbg !4823
  %4 = load %struct.loop_exit*, %struct.loop_exit** %exits, align 8, !dbg !4824
  %cmp = icmp eq %struct.loop_exit* %3, %4, !dbg !4825
  br i1 %cmp, label %if.then4, label %cleanup, !dbg !4826

if.then4:                                         ; preds = %land.lhs.true
  br label %cleanup, !dbg !4827

cleanup:                                          ; preds = %if.end, %entry, %land.lhs.true, %if.then4
  %retval.0 = phi %struct.edge_def* [ %2, %if.then4 ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %if.end ], !dbg !4813
  ret %struct.edge_def* %retval.0, !dbg !4828
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @is_loop_exit(%struct.loop* %loop, %struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !4829 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4833, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4834, metadata !DIExpression()), !dbg !4837
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4838
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4838
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4839
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4839
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4840
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4840
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4840
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4840
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4840
  store i32 %4, i32* %3, align 8, !dbg !4840
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4840
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4840
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !4840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !4840
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !4840
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4842
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4842
  br label %for.cond, !dbg !4840

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !4844
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4844
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4835, metadata !DIExpression(DW_OP_deref)), !dbg !4837
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !4844
  %tobool = icmp eq i8 %call1, 0, !dbg !4840
  br i1 %tobool, label %cleanup, label %for.body, !dbg !4840

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4845
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !4835, metadata !DIExpression()), !dbg !4837
  %call2 = call zeroext i8 @loop_exit_edge_p(%struct.loop* %loop, %struct.edge_def* %11) #7, !dbg !4847
  %tobool3 = icmp eq i8 %call2, 0, !dbg !4847
  br i1 %tobool3, label %for.inc, label %cleanup, !dbg !4848

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4836, metadata !DIExpression(DW_OP_deref)), !dbg !4837
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4844
  br label %for.cond, !dbg !4844, !llvm.loop !4849

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !4837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4851
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4851
  ret i8 %retval.0, !dbg !4851
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4852 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4856, metadata !DIExpression()), !dbg !4857
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !4858
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !4858
  ret %struct.VEC_int_heap* %0, !dbg !4858
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !4859 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4864, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4865, metadata !DIExpression()), !dbg !4867
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4868
  %0 = load i32, i32* %num1, align 4, !dbg !4868
  %inc = add i32 %0, 1, !dbg !4868
  store i32 %inc, i32* %num1, align 4, !dbg !4868
  %idxprom = zext i32 %0 to i64, !dbg !4868
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4868
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4866, metadata !DIExpression()), !dbg !4867
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !4868
  ret i32* %arrayidx, !dbg !4868
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !4869 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4875, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4876, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4879
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4879

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4879
  %0 = load i32, i32* %num, align 4, !dbg !4879
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4879
  br i1 %cmp, label %if.then, label %if.else, !dbg !4881

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4882
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4882
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4882
  br label %return, !dbg !4882

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4884

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !4886
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4886
  store i32 %storemerge, i32* %ptr, align 4, !dbg !4886
  ret i32 %retval.0, !dbg !4881
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !4887 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !4891, metadata !DIExpression()), !dbg !4892
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4893
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4893
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4893
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4893
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4893
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4893
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4893

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4893
  br label %cond.end, !dbg !4893

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4893
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #7, !dbg !4893
  ret %struct.loop* %call, !dbg !4894
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !4895 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4902
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4902
  br i1 %tobool, label %if.end, label %if.then, !dbg !4904

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !4904
  tail call void @free(i8* nonnull %1) #6, !dbg !4902
  br label %if.end, !dbg !4902

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !4904
  ret void, !dbg !4904
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4905 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4910
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4910
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4910

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4910
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4910
  br label %cond.end, !dbg !4910

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4910
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4910
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4911
  %conv3 = zext i1 %cmp to i8, !dbg !4912
  ret i8 %conv3, !dbg !4913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4914 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4919
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4919
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4919

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4919
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4919
  br label %cond.end, !dbg !4919

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4919
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4919
  ret %struct.edge_def* %call2, !dbg !4920
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4921 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4926
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4926

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4926
  br label %cond.end, !dbg !4926

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4927
  ret %struct.VEC_edge_gc* %0, !dbg !4928
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4929 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4933, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4934, metadata !DIExpression()), !dbg !4935
  br label %land.end, !dbg !4936

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4936
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4936
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4936
  ret %struct.edge_def* %0, !dbg !4936
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4937 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !4941, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 1, metadata !4942, metadata !DIExpression()), !dbg !4944
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !4945
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !4945
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4945

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !4945
  br label %cond.end, !dbg !4945

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4945
  %call = tail call fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %cond, i32 1) #7, !dbg !4945
  %tobool1 = icmp eq i32 %call, 0, !dbg !4945
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4945
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4943, metadata !DIExpression()), !dbg !4944
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4945

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_basic_block_heap** %vec_ to i8**, !dbg !4946
  %2 = load i8*, i8** %1, align 8, !dbg !4946
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !4946
  store i8* %call3, i8** %1, align 8, !dbg !4946
  br label %if.end, !dbg !4946

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4945
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !4948 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4952, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !4953, metadata !DIExpression()), !dbg !4955
  %num1 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !4956
  %0 = load i32, i32* %num1, align 8, !dbg !4956
  %inc = add i32 %0, 1, !dbg !4956
  store i32 %inc, i32* %num1, align 8, !dbg !4956
  %idxprom = zext i32 %0 to i64, !dbg !4956
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4956
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !4954, metadata !DIExpression()), !dbg !4955
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !4956
  ret %struct.basic_block_def** %arrayidx, !dbg !4956
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4957 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4961, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.value(metadata i32 1, metadata !4962, metadata !DIExpression()), !dbg !4963
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !4964
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4964

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 1, !dbg !4964
  %0 = load i32, i32* %alloc, align 4, !dbg !4964
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !4964
  %1 = load i32, i32* %num, align 8, !dbg !4964
  %cmp1 = icmp ne i32 %0, %1, !dbg !4964
  %phitmp = zext i1 %cmp1 to i32, !dbg !4964
  br label %cond.end, !dbg !4964

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4964

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4964
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_gc_reserve(%struct.VEC_loop_p_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4965 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_gc** %vec_, metadata !4969, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4970, metadata !DIExpression()), !dbg !4972
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %vec_, align 8, !dbg !4973
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !4973
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4973

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !4973
  br label %cond.end, !dbg !4973

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4973
  %call = tail call fastcc i32 @VEC_loop_p_base_space(%struct.VEC_loop_p_base* %cond, i32 %alloc_) #7, !dbg !4973
  %tobool1 = icmp eq i32 %call, 0, !dbg !4973
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4973
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4971, metadata !DIExpression()), !dbg !4972
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4973

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_loop_p_gc** %vec_ to i8**, !dbg !4974
  %2 = load i8*, i8** %1, align 8, !dbg !4974
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 %alloc_) #6, !dbg !4974
  store i8* %call3, i8** %1, align 8, !dbg !4974
  br label %if.end, !dbg !4974

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4973
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_space(%struct.VEC_loop_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4976 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4980, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4981, metadata !DIExpression()), !dbg !4982
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !4983
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4983

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 1, !dbg !4983
  %0 = load i32, i32* %alloc, align 4, !dbg !4983
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !4983
  %1 = load i32, i32* %num, align 8, !dbg !4983
  %sub = sub i32 %0, %1, !dbg !4983
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4983
  br label %cond.end, !dbg !4983

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4983
  br label %cond.end, !dbg !4983

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4983
  ret i32 %cond, !dbg !4983
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_loop_p_gc* @VEC_loop_p_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4984 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4988, metadata !DIExpression()), !dbg !4989
  %call = tail call i8* @vec_gc_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !4990
  %0 = bitcast i8* %call to %struct.VEC_loop_p_gc*, !dbg !4990
  ret %struct.VEC_loop_p_gc* %0, !dbg !4990
}

declare dso_local i8* @vec_gc_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.edge_def* @find_subloop_latch_edge(%struct.loop* %loop) unnamed_addr #5 !dbg !4991 {
entry:
  %latches = alloca %struct.VEC_edge_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4995, metadata !DIExpression()), !dbg !4998
  %0 = bitcast %struct.VEC_edge_heap** %latches to i8*, !dbg !4999
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4999
  %call = tail call fastcc %struct.VEC_edge_heap* @get_loop_latch_edges(%struct.loop* %loop) #7, !dbg !5000
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !4996, metadata !DIExpression()), !dbg !4998
  store %struct.VEC_edge_heap* %call, %struct.VEC_edge_heap** %latches, align 8, !dbg !5001
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4997, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !4996, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !4996, metadata !DIExpression()), !dbg !4998
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %call, i64 0, i32 0, !dbg !5002
  %call1 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #7, !dbg !5002
  %cmp = icmp ugt i32 %call1, 1, !dbg !5004
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5005

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !4996, metadata !DIExpression()), !dbg !4998
  %call2 = tail call fastcc %struct.edge_def* @find_subloop_latch_edge_by_profile(%struct.VEC_edge_heap* %call) #7, !dbg !5006
  call void @llvm.dbg.value(metadata %struct.edge_def* %call2, metadata !4997, metadata !DIExpression()), !dbg !4998
  %tobool3 = icmp eq %struct.edge_def* %call2, null, !dbg !5008
  br i1 %tobool3, label %land.lhs.true, label %if.end8, !dbg !5010

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @current_ir_type() #6, !dbg !5011
  %cmp5 = icmp eq i32 %call4, 0, !dbg !5012
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !5013

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !4996, metadata !DIExpression()), !dbg !4998
  %call7 = tail call fastcc %struct.edge_def* @find_subloop_latch_edge_by_ivs(%struct.loop* %loop, %struct.VEC_edge_heap* %call) #7, !dbg !5014
  call void @llvm.dbg.value(metadata %struct.edge_def* %call7, metadata !4997, metadata !DIExpression()), !dbg !4998
  br label %if.end8, !dbg !5015

if.end8:                                          ; preds = %if.then, %land.lhs.true, %if.then6, %entry
  %latch.1 = phi %struct.edge_def* [ null, %entry ], [ %call2, %if.then ], [ %call7, %if.then6 ], [ null, %land.lhs.true ], !dbg !4998
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch.1, metadata !4997, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %latches, metadata !4996, metadata !DIExpression(DW_OP_deref)), !dbg !4998
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %latches) #7, !dbg !5016
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5017
  ret %struct.edge_def* %latch.1, !dbg !5018
}

; Function Attrs: nounwind uwtable
define internal fastcc void @form_subloop(%struct.loop* %loop, %struct.edge_def* %latch) unnamed_addr #5 !dbg !5019 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5023, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch, metadata !5024, metadata !DIExpression()), !dbg !5029
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !5030
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !5030
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !5031
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5031
  %call = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !5032
  store %struct.pointer_set_t* %call, %struct.pointer_set_t** @mfb_reis_set, align 8, !dbg !5033
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !5034
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !5034
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !5034
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !5034
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 0, !dbg !5034
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !5034
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !5034
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !5034
  store i32 %5, i32* %4, align 8, !dbg !5034
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !5034
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !5034
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !5034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !5034
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !5034
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !5036
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !5036
  br label %for.cond, !dbg !5034

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %8, align 8, !dbg !5038
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !5038
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5026, metadata !DIExpression(DW_OP_deref)), !dbg !5029
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #7, !dbg !5038
  %tobool = icmp eq i8 %call2, 0, !dbg !5034
  br i1 %tobool, label %for.end, label %for.body, !dbg !5034

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5039
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !5026, metadata !DIExpression()), !dbg !5029
  %cmp = icmp eq %struct.edge_def* %12, %latch, !dbg !5042
  br i1 %cmp, label %for.inc, label %if.then, !dbg !5043

if.then:                                          ; preds = %for.body
  %13 = bitcast %struct.edge_def* %12 to i8*, !dbg !5043
  %14 = load %struct.pointer_set_t*, %struct.pointer_set_t** @mfb_reis_set, align 8, !dbg !5044
  %call3 = call i32 @pointer_set_insert(%struct.pointer_set_t* %14, i8* %13) #6, !dbg !5045
  br label %for.inc, !dbg !5045

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !5025, metadata !DIExpression(DW_OP_deref)), !dbg !5029
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !5038
  br label %for.cond, !dbg !5038, !llvm.loop !5046

for.end:                                          ; preds = %for.cond
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !5048
  %call5 = call %struct.edge_def* @make_forwarder_block(%struct.basic_block_def* %15, i8 (%struct.edge_def*)* nonnull @mfb_redirect_edges_in_set, void (%struct.basic_block_def*)* null) #6, !dbg !5049
  call void @llvm.dbg.value(metadata %struct.edge_def* %call5, metadata !5027, metadata !DIExpression()), !dbg !5029
  %16 = load %struct.pointer_set_t*, %struct.pointer_set_t** @mfb_reis_set, align 8, !dbg !5050
  call void @pointer_set_destroy(%struct.pointer_set_t* %16) #6, !dbg !5051
  %17 = bitcast %struct.edge_def* %call5 to i64*, !dbg !5052
  %18 = load i64, i64* %17, align 8, !dbg !5052
  %19 = bitcast %struct.basic_block_def** %header to i64*, !dbg !5053
  store i64 %18, i64* %19, align 8, !dbg !5053
  %call7 = call %struct.loop* @alloc_loop() #7, !dbg !5054
  call void @llvm.dbg.value(metadata %struct.loop* %call7, metadata !5028, metadata !DIExpression()), !dbg !5029
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call5, i64 0, i32 1, !dbg !5055
  %20 = bitcast %struct.basic_block_def** %dest to i64*, !dbg !5055
  %21 = load i64, i64* %20, align 8, !dbg !5055
  %header8 = getelementptr inbounds %struct.loop, %struct.loop* %call7, i64 0, i32 2, !dbg !5056
  %22 = bitcast %struct.basic_block_def** %header8 to i64*, !dbg !5057
  store i64 %21, i64* %22, align 8, !dbg !5057
  %23 = bitcast %struct.edge_def* %latch to i64*, !dbg !5058
  %24 = load i64, i64* %23, align 8, !dbg !5058
  %latch10 = getelementptr inbounds %struct.loop, %struct.loop* %call7, i64 0, i32 3, !dbg !5059
  %25 = bitcast %struct.basic_block_def** %latch10 to i64*, !dbg !5060
  store i64 %24, i64* %25, align 8, !dbg !5060
  call void @add_loop(%struct.loop* %call7, %struct.loop* %loop) #6, !dbg !5061
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5062
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !5062
  ret void, !dbg !5062
}

; Function Attrs: nounwind uwtable
define internal fastcc void @merge_latch_edges(%struct.loop* %loop) unnamed_addr #5 !dbg !5063 {
entry:
  %latches = alloca %struct.VEC_edge_heap*, align 8
  %e = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5065, metadata !DIExpression()), !dbg !5070
  %0 = bitcast %struct.VEC_edge_heap** %latches to i8*, !dbg !5071
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5071
  %call = tail call fastcc %struct.VEC_edge_heap* @get_loop_latch_edges(%struct.loop* %loop) #7, !dbg !5072
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5066, metadata !DIExpression()), !dbg !5070
  store %struct.VEC_edge_heap* %call, %struct.VEC_edge_heap** %latches, align 8, !dbg !5073
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !5074
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5074
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5066, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5066, metadata !DIExpression()), !dbg !5070
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %call, i64 0, i32 0, !dbg !5075
  %call1 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #7, !dbg !5075
  %cmp = icmp eq i32 %call1, 0, !dbg !5075
  br i1 %cmp, label %cond.true2, label %cond.end4, !dbg !5075

cond.true2:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 690, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5075
  br label %cond.end4, !dbg !5075

cond.end4:                                        ; preds = %entry, %cond.true2
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5066, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5066, metadata !DIExpression()), !dbg !5070
  %call12 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #7, !dbg !5076
  %cmp13 = icmp eq i32 %call12, 1, !dbg !5078
  br i1 %cmp13, label %if.then, label %if.else, !dbg !5079

if.then:                                          ; preds = %cond.end4
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5066, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5066, metadata !DIExpression()), !dbg !5070
  %call20 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base, i32 0) #7, !dbg !5080
  %2 = bitcast %struct.edge_def* %call20 to i64*, !dbg !5081
  %3 = load i64, i64* %2, align 8, !dbg !5081
  %latch21 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !5082
  %4 = bitcast %struct.basic_block_def** %latch21 to i64*, !dbg !5083
  store i64 %3, i64* %4, align 8, !dbg !5083
  br label %if.end39, !dbg !5084

if.else:                                          ; preds = %cond.end4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5085
  %tobool22 = icmp eq %struct._IO_FILE* %5, null, !dbg !5085
  br i1 %tobool22, label %if.end, label %if.then23, !dbg !5088

if.then23:                                        ; preds = %if.else
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !5089
  %6 = load i32, i32* %num, align 8, !dbg !5089
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 %6) #6, !dbg !5090
  br label %if.end, !dbg !5090

if.end:                                           ; preds = %if.else, %if.then23
  %call25 = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !5091
  store %struct.pointer_set_t* %call25, %struct.pointer_set_t** @mfb_reis_set, align 8, !dbg !5092
  call void @llvm.dbg.value(metadata i32 0, metadata !5069, metadata !DIExpression()), !dbg !5070
  %7 = bitcast %struct.edge_def** %e to i8**, !dbg !5093
  br label %for.cond, !dbg !5096

for.cond:                                         ; preds = %for.body, %if.end
  %8 = phi %struct.VEC_edge_heap* [ %call, %if.end ], [ %.pre, %for.body ], !dbg !5097
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !5098
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %8, metadata !5066, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %8, metadata !5066, metadata !DIExpression()), !dbg !5070
  %base28 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %8, i64 0, i32 0, !dbg !5097
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5068, metadata !DIExpression(DW_OP_deref)), !dbg !5070
  %call32 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base28, i32 %i.0, %struct.edge_def** nonnull %e) #7, !dbg !5097
  %tobool33 = icmp eq i32 %call32, 0, !dbg !5099
  br i1 %tobool33, label %for.end, label %for.body, !dbg !5099

for.body:                                         ; preds = %for.cond
  %9 = load %struct.pointer_set_t*, %struct.pointer_set_t** @mfb_reis_set, align 8, !dbg !5100
  %10 = load i8*, i8** %7, align 8, !dbg !5101
  %call34 = call i32 @pointer_set_insert(%struct.pointer_set_t* %9, i8* %10) #6, !dbg !5102
  %inc = add i32 %i.0, 1, !dbg !5103
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5069, metadata !DIExpression()), !dbg !5070
  %.pre = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %latches, align 8, !dbg !5097
  br label %for.cond, !dbg !5104, !llvm.loop !5105

for.end:                                          ; preds = %for.cond
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !5107
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !5107
  %call35 = call %struct.edge_def* @make_forwarder_block(%struct.basic_block_def* %11, i8 (%struct.edge_def*)* nonnull @mfb_redirect_edges_in_set, void (%struct.basic_block_def*)* null) #6, !dbg !5108
  call void @llvm.dbg.value(metadata %struct.edge_def* %call35, metadata !5067, metadata !DIExpression()), !dbg !5070
  %12 = load %struct.pointer_set_t*, %struct.pointer_set_t** @mfb_reis_set, align 8, !dbg !5109
  call void @pointer_set_destroy(%struct.pointer_set_t* %12) #6, !dbg !5110
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call35, i64 0, i32 1, !dbg !5111
  %13 = bitcast %struct.basic_block_def** %dest to i64*, !dbg !5111
  %14 = load i64, i64* %13, align 8, !dbg !5111
  %15 = bitcast %struct.basic_block_def** %header to i64*, !dbg !5112
  store i64 %14, i64* %15, align 8, !dbg !5112
  %16 = bitcast %struct.edge_def* %call35 to i64*, !dbg !5113
  %17 = load i64, i64* %16, align 8, !dbg !5113
  %latch38 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !5114
  %18 = bitcast %struct.basic_block_def** %latch38 to i64*, !dbg !5115
  store i64 %17, i64* %18, align 8, !dbg !5115
  br label %if.end39

if.end39:                                         ; preds = %for.end, %if.then
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %latches, metadata !5066, metadata !DIExpression(DW_OP_deref)), !dbg !5070
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %latches) #7, !dbg !5116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5117
  ret void, !dbg !5117
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.edge_def* @find_subloop_latch_edge_by_profile(%struct.VEC_edge_heap* %latches) unnamed_addr #5 !dbg !5118 {
entry:
  %e = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %latches, metadata !5122, metadata !DIExpression()), !dbg !5128
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !5129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5129
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !5125, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 0, metadata !5126, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 0, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i32 0, metadata !5123, metadata !DIExpression()), !dbg !5128
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %latches, i64 0, i32 0, !dbg !5130
  br label %for.cond, !dbg !5133

for.cond:                                         ; preds = %if.end, %entry
  %tcount.0 = phi i64 [ 0, %entry ], [ %add, %if.end ], !dbg !5128
  %mcount.0 = phi i64 [ 0, %entry ], [ %mcount.1, %if.end ], !dbg !5128
  %me.0 = phi %struct.edge_def* [ null, %entry ], [ %me.1, %if.end ], !dbg !5128
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !5134
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5123, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %me.0, metadata !5125, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %mcount.0, metadata !5126, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %tcount.0, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5124, metadata !DIExpression(DW_OP_deref)), !dbg !5128
  %call = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.0, %struct.edge_def** nonnull %e) #7, !dbg !5135
  %tobool1 = icmp eq i32 %call, 0, !dbg !5136
  br i1 %tobool1, label %for.end, label %for.body, !dbg !5136

for.body:                                         ; preds = %for.cond
  %1 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5137
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !5124, metadata !DIExpression()), !dbg !5128
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 9, !dbg !5140
  %2 = load i64, i64* %count, align 8, !dbg !5140
  %cmp = icmp sgt i64 %2, %mcount.0, !dbg !5141
  br i1 %cmp, label %if.then, label %if.end, !dbg !5142

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !5124, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !5125, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !5124, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %2, metadata !5126, metadata !DIExpression()), !dbg !5128
  br label %if.end, !dbg !5143

if.end:                                           ; preds = %if.then, %for.body
  %mcount.1 = phi i64 [ %2, %if.then ], [ %mcount.0, %for.body ], !dbg !5128
  %me.1 = phi %struct.edge_def* [ %1, %if.then ], [ %me.0, %for.body ], !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %me.1, metadata !5125, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %mcount.1, metadata !5126, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !5124, metadata !DIExpression()), !dbg !5128
  %add = add nsw i64 %tcount.0, %2, !dbg !5145
  call void @llvm.dbg.value(metadata i64 %add, metadata !5127, metadata !DIExpression()), !dbg !5128
  %inc = add i32 %i.0, 1, !dbg !5146
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5123, metadata !DIExpression()), !dbg !5128
  br label %for.cond, !dbg !5147, !llvm.loop !5148

for.end:                                          ; preds = %for.cond
  %tcount.0.lcssa = phi i64 [ %tcount.0, %for.cond ], !dbg !5128
  %mcount.0.lcssa = phi i64 [ %mcount.0, %for.cond ], !dbg !5128
  %me.0.lcssa = phi %struct.edge_def* [ %me.0, %for.cond ], !dbg !5128
  call void @llvm.dbg.value(metadata i64 %tcount.0.lcssa, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %mcount.0.lcssa, metadata !5126, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %me.0.lcssa, metadata !5125, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %tcount.0.lcssa, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %mcount.0.lcssa, metadata !5126, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %me.0.lcssa, metadata !5125, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %tcount.0.lcssa, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 %mcount.0.lcssa, metadata !5126, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata %struct.edge_def* %me.0.lcssa, metadata !5125, metadata !DIExpression()), !dbg !5128
  %cmp4 = icmp slt i64 %tcount.0.lcssa, 10, !dbg !5150
  br i1 %cmp4, label %cleanup, label %lor.lhs.false, !dbg !5152

lor.lhs.false:                                    ; preds = %for.end
  %sub = sub nsw i64 %tcount.0.lcssa, %mcount.0.lcssa, !dbg !5153
  %mul = shl nsw i64 %sub, 3, !dbg !5154
  %cmp5 = icmp sgt i64 %mul, %tcount.0.lcssa, !dbg !5155
  br i1 %cmp5, label %cleanup, label %if.end7, !dbg !5156

if.end7:                                          ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5157
  %tobool8 = icmp eq %struct._IO_FILE* %3, null, !dbg !5157
  br i1 %tobool8, label %cleanup, label %if.then9, !dbg !5159

if.then9:                                         ; preds = %if.end7
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %me.0.lcssa, i64 0, i32 0, !dbg !5160
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !5160
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !5161
  %5 = load i32, i32* %index, align 8, !dbg !5161
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %me.0.lcssa, i64 0, i32 1, !dbg !5162
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5162
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !5163
  %7 = load i32, i32* %index10, align 8, !dbg !5163
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i64 0, i64 0), i32 %5, i32 %7) #6, !dbg !5164
  br label %cleanup, !dbg !5164

cleanup:                                          ; preds = %if.end7, %if.then9, %for.end, %lor.lhs.false
  %retval.0 = phi %struct.edge_def* [ null, %lor.lhs.false ], [ null, %for.end ], [ %me.0.lcssa, %if.then9 ], [ %me.0.lcssa, %if.end7 ], !dbg !5128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5165
  ret %struct.edge_def* %retval.0, !dbg !5165
}

declare dso_local i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.edge_def* @find_subloop_latch_edge_by_ivs(%struct.loop* %loop, %struct.VEC_edge_heap* %latches) unnamed_addr #5 !dbg !5166 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %psi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5170, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %latches, metadata !5171, metadata !DIExpression()), !dbg !5185
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !5186
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5186
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %latches, i64 0, i32 0, !dbg !5187
  %call = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base, i32 0) #7, !dbg !5187
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !5173, metadata !DIExpression()), !dbg !5185
  %1 = bitcast %struct.gimple_stmt_iterator* %psi to i8*, !dbg !5188
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5188
  call void @llvm.dbg.value(metadata i32 1, metadata !5174, metadata !DIExpression()), !dbg !5185
  br label %for.cond, !dbg !5189

for.cond:                                         ; preds = %for.body, %entry
  %latch.0 = phi %struct.edge_def* [ %call, %entry ], [ %spec.select, %for.body ], !dbg !5185
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ], !dbg !5191
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5174, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch.0, metadata !5173, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5172, metadata !DIExpression(DW_OP_deref)), !dbg !5185
  %call7 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.0, %struct.edge_def** nonnull %e) #7, !dbg !5192
  %tobool8 = icmp eq i32 %call7, 0, !dbg !5194
  br i1 %tobool8, label %for.cond12.preheader, label %for.body, !dbg !5194

for.cond12.preheader:                             ; preds = %for.cond
  %latch.0.lcssa = phi %struct.edge_def* [ %latch.0, %for.cond ], !dbg !5185
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch.0.lcssa, metadata !5173, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch.0.lcssa, metadata !5173, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch.0.lcssa, metadata !5173, metadata !DIExpression()), !dbg !5185
  %src23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %latch.0.lcssa, i64 0, i32 0, !dbg !5195
  br label %for.cond12, !dbg !5199

for.body:                                         ; preds = %for.cond
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %latch.0, i64 0, i32 0, !dbg !5200
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !5200
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5202
  call void @llvm.dbg.value(metadata %struct.edge_def* %3, metadata !5172, metadata !DIExpression()), !dbg !5185
  %src9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 0, !dbg !5203
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src9, align 8, !dbg !5203
  %call10 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %2, %struct.basic_block_def* %4) #6, !dbg !5204
  %tobool11 = icmp eq i8 %call10, 0, !dbg !5204
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5205
  call void @llvm.dbg.value(metadata %struct.edge_def* %5, metadata !5172, metadata !DIExpression()), !dbg !5185
  %spec.select = select i1 %tobool11, %struct.edge_def* %latch.0, %struct.edge_def* %5, !dbg !5206
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select, metadata !5173, metadata !DIExpression()), !dbg !5185
  %inc = add i32 %i.0, 1, !dbg !5207
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5174, metadata !DIExpression()), !dbg !5185
  br label %for.cond, !dbg !5208, !llvm.loop !5209

for.cond12:                                       ; preds = %for.cond12.preheader, %for.inc28
  %i.1 = phi i32 [ %inc29, %for.inc28 ], [ 0, %for.cond12.preheader ], !dbg !5211
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !5174, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5172, metadata !DIExpression(DW_OP_deref)), !dbg !5185
  %call19 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.1, %struct.edge_def** nonnull %e) #7, !dbg !5212
  %tobool20 = icmp eq i32 %call19, 0, !dbg !5199
  br i1 %tobool20, label %for.end30, label %for.body21, !dbg !5199

for.body21:                                       ; preds = %for.cond12
  %6 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5213
  call void @llvm.dbg.value(metadata %struct.edge_def* %6, metadata !5172, metadata !DIExpression()), !dbg !5185
  %src22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i64 0, i32 0, !dbg !5214
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src22, align 8, !dbg !5214
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src23, align 8, !dbg !5215
  %call24 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %7, %struct.basic_block_def* %8) #6, !dbg !5216
  %tobool25 = icmp eq i8 %call24, 0, !dbg !5216
  br i1 %tobool25, label %cleanup.loopexit2, label %for.inc28, !dbg !5217

for.inc28:                                        ; preds = %for.body21
  %inc29 = add i32 %i.1, 1, !dbg !5218
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !5174, metadata !DIExpression()), !dbg !5185
  br label %for.cond12, !dbg !5219, !llvm.loop !5220

for.end30:                                        ; preds = %for.cond12
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5222
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !5222
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !5224
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !5224
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %10) #6, !dbg !5222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !5222
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !5222
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %latch.0.lcssa, i64 0, i32 6, !dbg !5225
  br label %for.cond31, !dbg !5228

for.cond31:                                       ; preds = %for.inc71, %for.end30
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !5176, metadata !DIExpression(DW_OP_deref)), !dbg !5185
  %call32 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #7, !dbg !5229
  %tobool33 = icmp eq i8 %call32, 0, !dbg !5230
  br i1 %tobool33, label %for.body34, label %for.end72, !dbg !5231

for.body34:                                       ; preds = %for.cond31
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !5176, metadata !DIExpression(DW_OP_deref)), !dbg !5185
  %call35 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #7, !dbg !5232
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call35, metadata !5175, metadata !DIExpression()), !dbg !5185
  %11 = load i32, i32* %dest_idx, align 4, !dbg !5233
  %call36 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call35, i32 %11) #7, !dbg !5233
  %call37 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call36) #7, !dbg !5233
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !5183, metadata !DIExpression()), !dbg !5185
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5234
  %bf.load = load i64, i64* %12, align 8, !dbg !5234
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5236
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5236
  br i1 %cmp, label %lor.lhs.false, label %for.inc71, !dbg !5237

lor.lhs.false:                                    ; preds = %for.body34
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5238
  %13 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5238
  %14 = load %union.gimple_statement_d*, %union.gimple_statement_d** %13, align 8, !dbg !5238
  %cmp39 = icmp eq %union.gimple_statement_d* %14, %call35, !dbg !5239
  br i1 %cmp39, label %for.inc71, label %if.end41, !dbg !5240

if.end41:                                         ; preds = %lor.lhs.false
  %call44 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %14) #7, !dbg !5241
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call44, metadata !5184, metadata !DIExpression()), !dbg !5185
  %tobool45 = icmp eq %struct.basic_block_def* %call44, null, !dbg !5242
  br i1 %tobool45, label %for.inc71, label %lor.lhs.false46, !dbg !5244

lor.lhs.false46:                                  ; preds = %if.end41
  %call47 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* nonnull %call44) #7, !dbg !5245
  %tobool48 = icmp eq i8 %call47, 0, !dbg !5245
  br i1 %tobool48, label %for.inc71, label %for.cond51.preheader, !dbg !5246

for.cond51.preheader:                             ; preds = %lor.lhs.false46
  br label %for.cond51, !dbg !5247

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc68
  %i.2 = phi i32 [ %inc69, %for.inc68 ], [ 0, %for.cond51.preheader ], !dbg !5249
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !5174, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5172, metadata !DIExpression(DW_OP_deref)), !dbg !5185
  %call58 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.2, %struct.edge_def** nonnull %e) #7, !dbg !5250
  %tobool59 = icmp eq i32 %call58, 0, !dbg !5247
  br i1 %tobool59, label %for.inc71.loopexit, label %for.body60, !dbg !5247

for.body60:                                       ; preds = %for.cond51
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5252
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !5172, metadata !DIExpression()), !dbg !5185
  %cmp61 = icmp eq %struct.edge_def* %15, %latch.0.lcssa, !dbg !5254
  br i1 %cmp61, label %for.inc68, label %land.lhs.true, !dbg !5255

land.lhs.true:                                    ; preds = %for.body60
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !5172, metadata !DIExpression()), !dbg !5185
  %dest_idx62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 6, !dbg !5256
  %16 = load i32, i32* %dest_idx62, align 4, !dbg !5256
  %call63 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call35, i32 %16) #7, !dbg !5256
  %call64 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call63) #7, !dbg !5256
  %cmp65 = icmp eq %union.tree_node* %call64, %call37, !dbg !5257
  br i1 %cmp65, label %cleanup.loopexit, label %for.inc68, !dbg !5258

for.inc68:                                        ; preds = %for.body60, %land.lhs.true
  %inc69 = add i32 %i.2, 1, !dbg !5259
  call void @llvm.dbg.value(metadata i32 %inc69, metadata !5174, metadata !DIExpression()), !dbg !5185
  br label %for.cond51, !dbg !5260, !llvm.loop !5261

for.inc71.loopexit:                               ; preds = %for.cond51
  br label %for.inc71, !dbg !5263

for.inc71:                                        ; preds = %for.inc71.loopexit, %lor.lhs.false46, %if.end41, %for.body34, %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !5176, metadata !DIExpression(DW_OP_deref)), !dbg !5185
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %psi) #7, !dbg !5263
  br label %for.cond31, !dbg !5264, !llvm.loop !5265

for.end72:                                        ; preds = %for.cond31
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5267
  %tobool73 = icmp eq %struct._IO_FILE* %17, null, !dbg !5267
  br i1 %tobool73, label %cleanup, label %if.then74, !dbg !5269

if.then74:                                        ; preds = %for.end72
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src23, align 8, !dbg !5270
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 9, !dbg !5271
  %19 = load i32, i32* %index, align 8, !dbg !5271
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %latch.0.lcssa, i64 0, i32 1, !dbg !5272
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5272
  %index76 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 9, !dbg !5273
  %21 = load i32, i32* %index76, align 8, !dbg !5273
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i64 0, i64 0), i32 %19, i32 %21) #6, !dbg !5274
  br label %cleanup, !dbg !5274

cleanup.loopexit:                                 ; preds = %land.lhs.true
  br label %cleanup, !dbg !5275

cleanup.loopexit2:                                ; preds = %for.body21
  br label %cleanup, !dbg !5275

cleanup:                                          ; preds = %cleanup.loopexit2, %cleanup.loopexit, %for.end72, %if.then74
  %retval.0 = phi %struct.edge_def* [ %latch.0.lcssa, %if.then74 ], [ %latch.0.lcssa, %for.end72 ], [ null, %cleanup.loopexit ], [ null, %cleanup.loopexit2 ], !dbg !5185
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5275
  ret %struct.edge_def* %retval.0, !dbg !5275
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !5276 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !5280, metadata !DIExpression()), !dbg !5281
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !5282
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5282
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !5283
  %conv1 = zext i1 %cmp to i8, !dbg !5284
  ret i8 %conv1, !dbg !5285
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !5286 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !5290, metadata !DIExpression()), !dbg !5291
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !5292
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5292
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !5293
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !5293
  ret %union.gimple_statement_d* %1, !dbg !5294
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !5295 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !5303, metadata !DIExpression()), !dbg !5304
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !5305
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !5305
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !5306
  ret %union.tree_node* %1, !dbg !5307
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !5308 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5312, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 %i, metadata !5313, metadata !DIExpression()), !dbg !5314
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !5315
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !5316
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !5317
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5318 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5325, metadata !DIExpression()), !dbg !5326
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !5327
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !5327
  ret %struct.basic_block_def* %0, !dbg !5328
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !5329 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !5334, metadata !DIExpression()), !dbg !5335
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !5336
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5336
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !5337
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !5337
  %2 = load i64, i64* %1, align 8, !dbg !5337
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !5338
  store i64 %2, i64* %3, align 8, !dbg !5338
  ret void, !dbg !5339
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5340 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5345, metadata !DIExpression()), !dbg !5347
  call void @llvm.dbg.value(metadata i32 %index, metadata !5346, metadata !DIExpression()), !dbg !5347
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !5348
  %0 = load i32, i32* %capacity, align 8, !dbg !5348
  %cmp = icmp ult i32 %0, %index, !dbg !5348
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5348

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5348
  br label %cond.end, !dbg !5348

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !5349
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !5349
  ret %struct.phi_arg_d* %arrayidx, !dbg !5350
}

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

declare dso_local i32 @pointer_set_insert(%struct.pointer_set_t*, i8*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_forwarder_block(%struct.basic_block_def*, i8 (%struct.edge_def*)*, void (%struct.basic_block_def*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mfb_redirect_edges_in_set(%struct.edge_def* %e) #5 !dbg !5351 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !5355, metadata !DIExpression()), !dbg !5356
  %0 = load %struct.pointer_set_t*, %struct.pointer_set_t** @mfb_reis_set, align 8, !dbg !5357
  %1 = bitcast %struct.edge_def* %e to i8*, !dbg !5358
  %call = tail call i32 @pointer_set_contains(%struct.pointer_set_t* %0, i8* %1) #6, !dbg !5359
  %conv = trunc i32 %call to i8, !dbg !5359
  ret i8 %conv, !dbg !5360
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

declare dso_local void @add_loop(%struct.loop*, %struct.loop*) local_unnamed_addr #2

declare dso_local i32 @pointer_set_contains(%struct.pointer_set_t*, i8*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @first_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @next_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5361 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !5365, metadata !DIExpression()), !dbg !5368
  call void @llvm.dbg.value(metadata i32 1, metadata !5366, metadata !DIExpression()), !dbg !5368
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !5369
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !5369
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5369

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !5369
  br label %cond.end, !dbg !5369

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5369
  %call = tail call fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %cond, i32 1) #7, !dbg !5369
  %tobool1 = icmp eq i32 %call, 0, !dbg !5369
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !5369
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !5367, metadata !DIExpression()), !dbg !5368
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5369

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_edge_heap** %vec_ to i8**, !dbg !5370
  %2 = load i8*, i8** %1, align 8, !dbg !5370
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !5370
  store i8* %call3, i8** %1, align 8, !dbg !5370
  br label %if.end, !dbg !5370

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !5369
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !5372 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5377, metadata !DIExpression()), !dbg !5380
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !5378, metadata !DIExpression()), !dbg !5380
  %num1 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !5381
  %0 = load i32, i32* %num1, align 8, !dbg !5381
  %inc = add i32 %0, 1, !dbg !5381
  store i32 %inc, i32* %num1, align 8, !dbg !5381
  %idxprom = zext i32 %0 to i64, !dbg !5381
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5381
  call void @llvm.dbg.value(metadata %struct.edge_def** %arrayidx, metadata !5379, metadata !DIExpression()), !dbg !5380
  store %struct.edge_def* %obj_, %struct.edge_def** %arrayidx, align 8, !dbg !5381
  ret %struct.edge_def** %arrayidx, !dbg !5381
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5382 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5386, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata i32 1, metadata !5387, metadata !DIExpression()), !dbg !5388
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !5389
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5389

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 1, !dbg !5389
  %0 = load i32, i32* %alloc, align 4, !dbg !5389
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !5389
  %1 = load i32, i32* %num, align 8, !dbg !5389
  %cmp1 = icmp ne i32 %0, %1, !dbg !5389
  %phitmp = zext i1 %cmp1 to i32, !dbg !5389
  br label %cond.end, !dbg !5389

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5389

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5389
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5390 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5394, metadata !DIExpression()), !dbg !5395
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !5396
  %tobool = icmp eq i8 %call, 0, !dbg !5396
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5396

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5396
  br label %cond.end, !dbg !5396

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5397
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !5397
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5397
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !5397

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !5397
  br label %cond.end5, !dbg !5397

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !5397
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !5397
  ret %struct.edge_def* %call7, !dbg !5398
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

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
!llvm.module.flags = !{!1870, !1871, !1872}
!llvm.ident = !{!1873}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mfb_reis_set", scope: !2, file: !3, line: 644, type: !1868, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !390, globals: !1867, nameTableKind: None)
!3 = !DIFile(filename: "cfgloop.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !386}
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
!390 = !{!391, !392, !393, !394, !397, !398, !400, !401, !1777, !470, !1786, !7, !1787, !1057, !1788, !423, !1789, !1122, !1802, !1110, !523, !183, !1807, !1809, !1811, !1862}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!393 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!400 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !378, line: 100, size: 1216, elements: !403)
!403 = !{!404, !405, !406, !1750, !1751, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1776, !1784, !1785}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !402, file: !378, line: 102, baseType: !393, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !402, file: !378, line: 105, baseType: !7, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !402, file: !378, line: 108, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !409)
!409 = !{!410, !1717, !1718, !1719, !1720, !1724, !1725, !1726, !1744, !1745, !1746, !1747, !1748, !1749}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !408, file: !135, line: 219, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !413, file: !135, line: 151, baseType: !416, size: 128)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !418)
!418 = !{!419, !420, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !417, file: !135, line: 150, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !417, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !417, file: !135, line: 150, baseType: !422, size: 64, offset: 64)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 64, elements: !567)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !424, line: 108, baseType: !425)
!424 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !427)
!427 = !{!428, !429, !430, !1709, !1710, !1711, !1712, !1713, !1714, !1715}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !426, file: !135, line: 124, baseType: !407, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !426, file: !135, line: 125, baseType: !407, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !426, file: !135, line: 131, baseType: !431, size: 64, offset: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !432)
!432 = !{!433, !1708}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !431, file: !135, line: 129, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !424, line: 66, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !437, line: 143, size: 192, elements: !438)
!437 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!438 = !{!439, !1706, !1707}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !436, file: !437, line: 145, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !424, line: 69, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !437, line: 136, size: 192, elements: !443)
!443 = !{!444, !1704, !1705}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !442, file: !437, line: 137, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !424, line: 58, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !437, line: 737, size: 768, elements: !448)
!448 = !{!449, !1551, !1561, !1567, !1572, !1577, !1584, !1590, !1596, !1601, !1615, !1620, !1626, !1631, !1641, !1646, !1662, !1669, !1676, !1682, !1687, !1693, !1699}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !447, file: !437, line: 738, baseType: !450, size: 256)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !437, line: 271, size: 256, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !467, !468, !469}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !450, file: !437, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !450, file: !437, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !450, file: !437, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !450, file: !437, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !450, file: !437, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !450, file: !437, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !450, file: !437, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !450, file: !437, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !450, file: !437, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !450, file: !437, line: 312, baseType: !7, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !450, file: !437, line: 316, baseType: !463, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !464, line: 58, baseType: !465)
!464 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !466, line: 44, baseType: !7)
!466 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!467 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !450, file: !437, line: 319, baseType: !7, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !450, file: !437, line: 323, baseType: !407, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !450, file: !437, line: 327, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !424, line: 56, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !473)
!473 = !{!474, !507, !513, !525, !544, !555, !560, !569, !575, !588, !596, !634, !842, !870, !887, !888, !893, !902, !908, !913, !917, !921, !1202, !1249, !1255, !1261, !1268, !1281, !1295, !1312, !1324, !1346, !1361, !1533}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !472, file: !151, line: 3372, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !475, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !475, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !475, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !475, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !475, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !475, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !475, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !475, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !475, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !475, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !475, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !475, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !475, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !475, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !475, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !475, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !475, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !475, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !475, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !475, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !475, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !475, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !475, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !475, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !475, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !475, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !475, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !475, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !475, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !475, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !472, file: !151, line: 3373, baseType: !508, size: 192)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !508, file: !151, line: 403, baseType: !475, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !508, file: !151, line: 404, baseType: !470, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !151, line: 405, baseType: !470, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !472, file: !151, line: 3374, baseType: !514, size: 320)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !514, file: !151, line: 1385, baseType: !508, size: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !514, file: !151, line: 1386, baseType: !518, size: 128, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !519, line: 58, baseType: !520)
!519 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 54, size: 128, elements: !521)
!521 = !{!522, !524}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !520, file: !519, line: 56, baseType: !523, size: 64)
!523 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !520, file: !519, line: 57, baseType: !400, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !472, file: !151, line: 3375, baseType: !526, size: 256)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !526, file: !151, line: 1398, baseType: !508, size: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !526, file: !151, line: 1399, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !532, line: 52, size: 256, elements: !533)
!532 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!533 = !{!534, !535, !536, !537, !538, !539, !540}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !531, file: !532, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !531, file: !532, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !531, file: !532, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !531, file: !532, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !531, file: !532, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !531, file: !532, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !531, file: !532, line: 62, baseType: !541, size: 192, offset: 64)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 192, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 3)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !472, file: !151, line: 3376, baseType: !545, size: 256)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !545, file: !151, line: 1409, baseType: !508, size: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !545, file: !151, line: 1410, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !551, line: 27, size: 192, elements: !552)
!551 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !550, file: !551, line: 29, baseType: !518, size: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !550, file: !551, line: 30, baseType: !5, size: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !472, file: !151, line: 3377, baseType: !556, size: 256)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !556, file: !151, line: 1438, baseType: !508, size: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !556, file: !151, line: 1439, baseType: !470, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !472, file: !151, line: 3378, baseType: !561, size: 256)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !562)
!562 = !{!563, !564, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !561, file: !151, line: 1419, baseType: !508, size: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !561, file: !151, line: 1420, baseType: !393, size: 32, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !561, file: !151, line: 1421, baseType: !566, size: 8, offset: 224)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 8, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 1)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !472, file: !151, line: 3379, baseType: !570, size: 320)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !570, file: !151, line: 1429, baseType: !508, size: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !570, file: !151, line: 1430, baseType: !470, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !570, file: !151, line: 1431, baseType: !470, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !472, file: !151, line: 3380, baseType: !576, size: 320)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !576, file: !151, line: 1461, baseType: !508, size: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !576, file: !151, line: 1462, baseType: !580, size: 128, offset: 192)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !581, line: 31, size: 128, elements: !582)
!581 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!582 = !{!583, !586, !587}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !580, file: !581, line: 32, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !580, file: !581, line: 33, baseType: !7, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !580, file: !581, line: 34, baseType: !7, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !472, file: !151, line: 3381, baseType: !589, size: 384)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !589, file: !151, line: 2508, baseType: !508, size: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !589, file: !151, line: 2509, baseType: !463, size: 32, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !589, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !151, line: 2511, baseType: !470, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !589, file: !151, line: 2512, baseType: !470, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !472, file: !151, line: 3382, baseType: !597, size: 896)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !597, file: !151, line: 2653, baseType: !589, size: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !597, file: !151, line: 2654, baseType: !470, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !597, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !597, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !597, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !597, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !597, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !597, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !597, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !597, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !597, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !597, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !597, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !597, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !597, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !597, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !597, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !597, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !597, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !597, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !597, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !597, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !597, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !597, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !597, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !597, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !597, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !597, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !597, file: !151, line: 2705, baseType: !470, size: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !597, file: !151, line: 2706, baseType: !470, size: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !597, file: !151, line: 2707, baseType: !470, size: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !597, file: !151, line: 2708, baseType: !470, size: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !597, file: !151, line: 2711, baseType: !632, size: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !472, file: !151, line: 3383, baseType: !635, size: 960)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !635, file: !151, line: 2757, baseType: !597, size: 896)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !635, file: !151, line: 2758, baseType: !639, size: 64, offset: 896)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !424, line: 50, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !642, line: 240, size: 384, elements: !643)
!642 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !641, file: !642, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !641, file: !642, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !641, file: !642, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !641, file: !642, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !641, file: !642, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !641, file: !642, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !641, file: !642, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !641, file: !642, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !641, file: !642, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !641, file: !642, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !641, file: !642, line: 321, baseType: !655, size: 320, offset: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !642, line: 315, size: 320, elements: !656)
!656 = !{!657, !775, !777, !840, !841}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !655, file: !642, line: 316, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 64, elements: !567)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !642, line: 183, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !642, line: 166, size: 64, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !674, !675, !687, !690, !750, !751, !752, !765, !772}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !660, file: !642, line: 168, baseType: !393, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !660, file: !642, line: 169, baseType: !7, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !660, file: !642, line: 170, baseType: !398, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !660, file: !642, line: 171, baseType: !639, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !660, file: !642, line: 172, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !424, line: 53, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !642, line: 359, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !669, file: !642, line: 360, baseType: !393, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !669, file: !642, line: 361, baseType: !673, size: 64, offset: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 64, elements: !567)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !660, file: !642, line: 173, baseType: !5, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !660, file: !642, line: 174, baseType: !676, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !642, line: 133, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !642, line: 115, size: 32, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !677, file: !642, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !677, file: !642, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !677, file: !642, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !677, file: !642, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !677, file: !642, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !677, file: !642, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !677, file: !642, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !677, file: !642, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !660, file: !642, line: 175, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !642, line: 175, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !660, file: !642, line: 176, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !693, line: 75, size: 256, elements: !694)
!693 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!694 = !{!695, !709, !710, !711}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !692, file: !693, line: 76, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !693, line: 68, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !693, line: 63, size: 320, elements: !699)
!699 = !{!700, !702, !703, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !693, line: 64, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !698, file: !693, line: 65, baseType: !701, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !698, file: !693, line: 66, baseType: !7, size: 32, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !698, file: !693, line: 67, baseType: !705, size: 128, offset: 192)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 128, elements: !707)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !693, line: 29, baseType: !523)
!707 = !{!708}
!708 = !DISubrange(count: 2)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !692, file: !693, line: 77, baseType: !696, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !692, file: !693, line: 78, baseType: !7, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !692, file: !693, line: 79, baseType: !712, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !693, line: 49, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !693, line: 45, size: 832, elements: !715)
!715 = !{!716, !717, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !714, file: !693, line: 46, baseType: !701, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !714, file: !693, line: 47, baseType: !691, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !714, file: !693, line: 48, baseType: !719, size: 704, offset: 128)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !720, line: 164, size: 704, elements: !721)
!720 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!721 = !{!722, !723, !733, !734, !735, !736, !737, !738, !742, !746, !747, !748, !749}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !719, file: !720, line: 166, baseType: !400, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !719, file: !720, line: 167, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !720, line: 157, size: 192, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !725, file: !720, line: 159, baseType: !395, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !725, file: !720, line: 160, baseType: !724, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !725, file: !720, line: 161, baseType: !730, size: 32, offset: 128)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 32, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 4)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !719, file: !720, line: 168, baseType: !395, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !719, file: !720, line: 169, baseType: !395, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !719, file: !720, line: 170, baseType: !395, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !719, file: !720, line: 171, baseType: !400, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !719, file: !720, line: 172, baseType: !393, size: 32, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !719, file: !720, line: 176, baseType: !739, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!724, !397, !400}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !719, file: !720, line: 177, baseType: !743, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !397, !724}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !719, file: !720, line: 178, baseType: !397, size: 64, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !719, file: !720, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !719, file: !720, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !719, file: !720, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !660, file: !642, line: 177, baseType: !470, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !660, file: !642, line: 178, baseType: !407, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !660, file: !642, line: 179, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !642, line: 150, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !642, line: 142, size: 320, elements: !756)
!756 = !{!757, !758, !759, !760, !763, !764}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !755, file: !642, line: 144, baseType: !470, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !755, file: !642, line: 145, baseType: !639, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !755, file: !642, line: 146, baseType: !639, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !755, file: !642, line: 147, baseType: !761, size: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !762, line: 31, baseType: !393)
!762 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!763 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !755, file: !642, line: 148, baseType: !7, size: 32, offset: 224)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !755, file: !642, line: 149, baseType: !392, size: 8, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !660, file: !642, line: 180, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !642, line: 162, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !642, line: 159, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !768, file: !642, line: 160, baseType: !470, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !768, file: !642, line: 161, baseType: !400, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !660, file: !642, line: 181, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !642, line: 181, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !655, file: !642, line: 317, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 64, elements: !567)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !655, file: !642, line: 318, baseType: !778, size: 320)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !642, line: 188, size: 320, elements: !779)
!779 = !{!780, !782, !839}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !778, file: !642, line: 190, baseType: !781, size: 192)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 192, elements: !542)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !778, file: !642, line: 193, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !642, line: 206, size: 320, elements: !785)
!785 = !{!786, !824, !825, !826, !838}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !784, file: !642, line: 208, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !424, line: 62, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !790, line: 538, size: 256, elements: !791)
!790 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!791 = !{!792, !796, !802, !815}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !789, file: !790, line: 539, baseType: !793, size: 32)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !790, line: 482, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !790, line: 484, baseType: !7, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !789, file: !790, line: 540, baseType: !797, size: 192)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !790, line: 488, size: 192, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !797, file: !790, line: 489, baseType: !793, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !797, file: !790, line: 492, baseType: !398, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !797, file: !790, line: 496, baseType: !470, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !789, file: !790, line: 541, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !790, line: 504, size: 256, elements: !804)
!804 = !{!805, !806, !813, !814}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !790, line: 505, baseType: !793, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !803, file: !790, line: 509, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !790, line: 501, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !803, file: !790, line: 510, baseType: !811, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !790, line: 513, baseType: !787, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !789, file: !790, line: 542, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !790, line: 530, size: 128, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !816, file: !790, line: 531, baseType: !793, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !816, file: !790, line: 534, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !790, line: 525, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!392, !470, !398, !523, !523}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !784, file: !642, line: 211, baseType: !7, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !784, file: !642, line: 214, baseType: !400, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !784, file: !642, line: 224, baseType: !827, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !642, line: 202, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !642, line: 202, size: 128, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !829, file: !642, line: 202, baseType: !832, size: 128)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !642, line: 200, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !642, line: 200, size: 128, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !833, file: !642, line: 200, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !833, file: !642, line: 200, baseType: !7, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !833, file: !642, line: 200, baseType: !673, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !784, file: !642, line: 234, baseType: !827, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !778, file: !642, line: 197, baseType: !400, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !655, file: !642, line: 319, baseType: !531, size: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !655, file: !642, line: 320, baseType: !550, size: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !472, file: !151, line: 3384, baseType: !843, size: 1472)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !844)
!844 = !{!845, !866, !867, !868, !869}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !843, file: !151, line: 3115, baseType: !846, size: 1216)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !846, file: !151, line: 2985, baseType: !635, size: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !846, file: !151, line: 2986, baseType: !470, size: 64, offset: 960)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !846, file: !151, line: 2987, baseType: !470, size: 64, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !846, file: !151, line: 2988, baseType: !470, size: 64, offset: 1088)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !846, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !846, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !846, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !846, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !846, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !846, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !846, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !846, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !846, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !846, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !846, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !846, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !846, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !846, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !843, file: !151, line: 3117, baseType: !470, size: 64, offset: 1216)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !843, file: !151, line: 3119, baseType: !470, size: 64, offset: 1280)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !843, file: !151, line: 3121, baseType: !470, size: 64, offset: 1344)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !843, file: !151, line: 3123, baseType: !470, size: 64, offset: 1408)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !472, file: !151, line: 3385, baseType: !871, size: 1088)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !872)
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !871, file: !151, line: 2875, baseType: !635, size: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !871, file: !151, line: 2876, baseType: !639, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !871, file: !151, line: 2877, baseType: !876, size: 64, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !878, line: 172, size: 128, elements: !879)
!878 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!879 = !{!880, !881, !882, !883, !884, !885, !886}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !877, file: !878, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !877, file: !878, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !877, file: !878, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !877, file: !878, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !877, file: !878, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !877, file: !878, line: 195, baseType: !7, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !877, file: !878, line: 199, baseType: !470, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !472, file: !151, line: 3386, baseType: !846, size: 1216)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !472, file: !151, line: 3387, baseType: !889, size: 1280)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !889, file: !151, line: 3094, baseType: !846, size: 1216)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !889, file: !151, line: 3095, baseType: !876, size: 64, offset: 1216)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !472, file: !151, line: 3388, baseType: !894, size: 1216)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !894, file: !151, line: 2825, baseType: !597, size: 896)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !894, file: !151, line: 2827, baseType: !470, size: 64, offset: 896)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !894, file: !151, line: 2828, baseType: !470, size: 64, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !894, file: !151, line: 2829, baseType: !470, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !894, file: !151, line: 2830, baseType: !470, size: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !894, file: !151, line: 2831, baseType: !470, size: 64, offset: 1152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !472, file: !151, line: 3389, baseType: !903, size: 1024)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !903, file: !151, line: 2851, baseType: !635, size: 960)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !903, file: !151, line: 2852, baseType: !393, size: 32, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !903, file: !151, line: 2853, baseType: !393, size: 32, offset: 992)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !472, file: !151, line: 3390, baseType: !909, size: 1024)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !909, file: !151, line: 2858, baseType: !635, size: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !909, file: !151, line: 2859, baseType: !876, size: 64, offset: 960)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !472, file: !151, line: 3391, baseType: !914, size: 960)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !914, file: !151, line: 2863, baseType: !635, size: 960)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !472, file: !151, line: 3392, baseType: !918, size: 1472)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !919)
!919 = !{!920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !918, file: !151, line: 3305, baseType: !843, size: 1472)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !472, file: !151, line: 3393, baseType: !922, size: 1792)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !923)
!923 = !{!924, !925, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !922, file: !151, line: 3249, baseType: !843, size: 1472)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !922, file: !151, line: 3251, baseType: !926, size: 64, offset: 1472)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !928, line: 463, size: 1152, elements: !929)
!928 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!929 = !{!930, !933, !964, !965, !1104, !1125, !1126, !1127, !1128, !1129, !1130, !1154, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !927, file: !928, line: 464, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !928, line: 464, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !927, file: !928, line: 467, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !936)
!936 = !{!937, !939, !940, !953, !954, !955, !956, !957, !958, !960, !962, !963}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !935, file: !135, line: 377, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !424, line: 111, baseType: !407)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !935, file: !135, line: 378, baseType: !938, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !935, file: !135, line: 381, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !943, file: !135, line: 282, baseType: !946, size: 128)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !947, file: !135, line: 281, baseType: !7, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !947, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !947, file: !135, line: 281, baseType: !952, size: 64, offset: 64)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 64, elements: !567)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !935, file: !135, line: 384, baseType: !393, size: 32, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !935, file: !135, line: 387, baseType: !393, size: 32, offset: 224)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !935, file: !135, line: 390, baseType: !393, size: 32, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !935, file: !135, line: 394, baseType: !941, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !935, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !935, file: !135, line: 399, baseType: !959, size: 64, offset: 416)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !707)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !935, file: !135, line: 402, baseType: !961, size: 64, offset: 480)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !707)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !935, file: !135, line: 406, baseType: !393, size: 32, offset: 544)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !935, file: !135, line: 409, baseType: !393, size: 32, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !927, file: !928, line: 470, baseType: !435, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !927, file: !928, line: 473, baseType: !966, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !878, line: 39, size: 1152, elements: !968)
!968 = !{!969, !1019, !1032, !1045, !1046, !1058, !1059, !1063, !1064, !1065, !1066, !1067}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !967, file: !878, line: 41, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !971, line: 144, baseType: !972)
!971 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !971, line: 100, size: 896, elements: !974)
!974 = !{!975, !981, !986, !991, !993, !996, !997, !998, !999, !1000, !1005, !1007, !1008, !1013, !1018}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !973, file: !971, line: 102, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !971, line: 52, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!980, !811}
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !971, line: 47, baseType: !7)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !973, file: !971, line: 105, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !971, line: 59, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!393, !811, !811}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !973, file: !971, line: 108, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !971, line: 63, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !397}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !973, file: !971, line: 111, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !973, file: !971, line: 114, baseType: !994, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !995, line: 46, baseType: !523)
!995 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !973, file: !971, line: 117, baseType: !994, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !973, file: !971, line: 120, baseType: !994, size: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !973, file: !971, line: 124, baseType: !7, size: 32, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !973, file: !971, line: 128, baseType: !7, size: 32, offset: 480)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !973, file: !971, line: 131, baseType: !1001, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !971, line: 75, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!397, !994, !994}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !973, file: !971, line: 132, baseType: !1006, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !971, line: 78, baseType: !988)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !973, file: !971, line: 135, baseType: !397, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !973, file: !971, line: 136, baseType: !1009, size: 64, offset: 704)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !971, line: 82, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!397, !397, !994, !994}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !973, file: !971, line: 137, baseType: !1014, size: 64, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !971, line: 83, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !397, !397}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !973, file: !971, line: 141, baseType: !7, size: 32, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !967, file: !878, line: 48, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !437, line: 35, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !437, line: 35, size: 128, elements: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1022, file: !437, line: 35, baseType: !1025, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !437, line: 33, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !437, line: 33, size: 128, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1026, file: !437, line: 33, baseType: !7, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1026, file: !437, line: 33, baseType: !7, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1026, file: !437, line: 33, baseType: !1031, size: 64, offset: 64)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 64, elements: !567)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !967, file: !878, line: 51, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1035, file: !151, line: 183, baseType: !1038, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1039, file: !151, line: 182, baseType: !7, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1039, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1039, file: !151, line: 182, baseType: !1044, size: 64, offset: 64)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 64, elements: !567)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !967, file: !878, line: 54, baseType: !470, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !967, file: !878, line: 57, baseType: !1047, size: 128, offset: 256)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1048, line: 31, size: 128, elements: !1049)
!1048 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1047, file: !1048, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1047, file: !1048, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1047, file: !1048, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1047, file: !1048, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1047, file: !1048, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1047, file: !1048, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1047, file: !1048, line: 56, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !424, line: 47, baseType: !691)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !967, file: !878, line: 60, baseType: !1047, size: 128, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !967, file: !878, line: 64, baseType: !1060, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1062, line: 33, flags: DIFlagFwdDecl)
!1062 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !967, file: !878, line: 67, baseType: !470, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !967, file: !878, line: 73, baseType: !970, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !967, file: !878, line: 77, baseType: !1057, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !967, file: !878, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !967, file: !878, line: 82, baseType: !1068, size: 320, offset: 832)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1069, line: 62, size: 320, elements: !1070)
!1069 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1070 = !{!1071, !1077, !1078, !1079, !1080, !1087}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1068, file: !1069, line: 63, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1069, line: 56, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !1069, line: 57, baseType: !1072, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1073, file: !1069, line: 58, baseType: !566, size: 8, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1068, file: !1069, line: 64, baseType: !7, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1068, file: !1069, line: 66, baseType: !7, size: 32, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1068, file: !1069, line: 68, baseType: !392, size: 8, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1068, file: !1069, line: 70, baseType: !1081, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1069, line: 37, size: 128, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !1069, line: 39, baseType: !1081, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1082, file: !1069, line: 40, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1068, file: !1069, line: 71, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1069, line: 45, size: 320, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1089, file: !1069, line: 47, baseType: !1088, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1089, file: !1069, line: 48, baseType: !1093, size: 256, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1094)
!1094 = !{!1095, !1097, !1098, !1103}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1093, file: !151, line: 1884, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1093, file: !151, line: 1885, baseType: !1096, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1093, file: !151, line: 1891, baseType: !1099, size: 64, offset: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1093, file: !151, line: 1891, size: 64, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1099, file: !151, line: 1891, baseType: !445, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1099, file: !151, line: 1891, baseType: !470, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1093, file: !151, line: 1892, baseType: !1086, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !927, file: !928, line: 476, baseType: !1105, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !378, line: 187, size: 256, elements: !1107)
!1107 = !{!1108, !1109, !1123, !1124}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1106, file: !378, line: 189, baseType: !393, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1106, file: !378, line: 192, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !378, line: 87, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !378, line: 87, size: 128, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1112, file: !378, line: 87, baseType: !1115, size: 128)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !378, line: 85, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !378, line: 85, size: 128, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1116, file: !378, line: 85, baseType: !7, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1116, file: !378, line: 85, baseType: !7, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1116, file: !378, line: 85, baseType: !1121, size: 64, offset: 64)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1122, size: 64, elements: !567)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !378, line: 84, baseType: !401)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1106, file: !378, line: 197, baseType: !970, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1106, file: !378, line: 200, baseType: !401, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !927, file: !928, line: 479, baseType: !970, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !927, file: !928, line: 484, baseType: !470, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !927, file: !928, line: 488, baseType: !470, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !927, file: !928, line: 493, baseType: !470, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !927, file: !928, line: 496, baseType: !470, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !927, file: !928, line: 501, baseType: !1131, size: 64, offset: 640)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1133)
!1133 = !{!1134, !1137, !1138, !1139, !1140, !1142, !1143, !1148, !1149, !1150, !1151, !1152, !1153}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1132, file: !146, line: 2356, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1132, file: !146, line: 2357, baseType: !398, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1132, file: !146, line: 2358, baseType: !393, size: 32, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1132, file: !146, line: 2359, baseType: !393, size: 32, offset: 160)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1132, file: !146, line: 2360, baseType: !1141, size: 128, offset: 192)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 128, elements: !731)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1132, file: !146, line: 2364, baseType: !393, size: 32, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1132, file: !146, line: 2367, baseType: !1144, size: 128, offset: 384)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1144, file: !146, line: 2351, baseType: !639, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1144, file: !146, line: 2352, baseType: !400, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1132, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1132, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1132, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1132, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1132, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1132, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !927, file: !928, line: 504, baseType: !1155, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !928, line: 504, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !927, file: !928, line: 507, baseType: !970, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !927, file: !928, line: 510, baseType: !393, size: 32, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !927, file: !928, line: 513, baseType: !393, size: 32, offset: 864)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !927, file: !928, line: 516, baseType: !463, size: 32, offset: 896)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !927, file: !928, line: 519, baseType: !463, size: 32, offset: 928)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !927, file: !928, line: 522, baseType: !7, size: 32, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !927, file: !928, line: 523, baseType: !7, size: 32, offset: 992)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !927, file: !928, line: 528, baseType: !398, size: 64, offset: 1024)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !927, file: !928, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !927, file: !928, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !927, file: !928, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !927, file: !928, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !927, file: !928, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !927, file: !928, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !927, file: !928, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !927, file: !928, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !927, file: !928, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !927, file: !928, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !927, file: !928, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !927, file: !928, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !927, file: !928, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !927, file: !928, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !927, file: !928, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !927, file: !928, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !922, file: !151, line: 3254, baseType: !470, size: 64, offset: 1536)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !922, file: !151, line: 3257, baseType: !470, size: 64, offset: 1600)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !922, file: !151, line: 3258, baseType: !470, size: 64, offset: 1664)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !922, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !922, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !922, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !922, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !922, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !922, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !922, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !922, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !922, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !922, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !922, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !922, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !922, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !922, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !922, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !922, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !922, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !922, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !151, line: 3394, baseType: !1203, size: 1344)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1203, file: !151, line: 2280, baseType: !508, size: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1203, file: !151, line: 2281, baseType: !470, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1203, file: !151, line: 2282, baseType: !470, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1203, file: !151, line: 2283, baseType: !470, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1203, file: !151, line: 2284, baseType: !470, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1203, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1203, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1203, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1203, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1203, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1203, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1203, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1203, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1203, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1203, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1203, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1203, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1203, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1203, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1203, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1203, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1203, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1203, file: !151, line: 2306, baseType: !761, size: 32, offset: 544)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1203, file: !151, line: 2307, baseType: !470, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1203, file: !151, line: 2308, baseType: !470, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1203, file: !151, line: 2314, baseType: !1231, size: 64, offset: 704)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1231, file: !151, line: 2310, baseType: !393, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1231, file: !151, line: 2311, baseType: !398, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1231, file: !151, line: 2312, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1203, file: !151, line: 2315, baseType: !470, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1203, file: !151, line: 2316, baseType: !470, size: 64, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1203, file: !151, line: 2317, baseType: !470, size: 64, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1203, file: !151, line: 2318, baseType: !470, size: 64, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1203, file: !151, line: 2319, baseType: !470, size: 64, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1203, file: !151, line: 2320, baseType: !470, size: 64, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1203, file: !151, line: 2321, baseType: !470, size: 64, offset: 1152)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1203, file: !151, line: 2322, baseType: !470, size: 64, offset: 1216)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1203, file: !151, line: 2324, baseType: !1247, size: 64, offset: 1280)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !472, file: !151, line: 3395, baseType: !1250, size: 320)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1250, file: !151, line: 1470, baseType: !508, size: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1250, file: !151, line: 1471, baseType: !470, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1250, file: !151, line: 1472, baseType: !470, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !472, file: !151, line: 3396, baseType: !1256, size: 320)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1256, file: !151, line: 1483, baseType: !508, size: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1256, file: !151, line: 1484, baseType: !393, size: 32, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1256, file: !151, line: 1485, baseType: !1044, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !472, file: !151, line: 3397, baseType: !1262, size: 384)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1262, file: !151, line: 1830, baseType: !508, size: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1262, file: !151, line: 1831, baseType: !463, size: 32, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1262, file: !151, line: 1832, baseType: !470, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1262, file: !151, line: 1835, baseType: !1044, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !472, file: !151, line: 3398, baseType: !1269, size: 704)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1280}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1269, file: !151, line: 1899, baseType: !508, size: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1269, file: !151, line: 1902, baseType: !470, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1269, file: !151, line: 1905, baseType: !445, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1269, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1269, file: !151, line: 1911, baseType: !1276, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !878, line: 117, size: 128, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1277, file: !878, line: 120, baseType: !1047, size: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1269, file: !151, line: 1914, baseType: !1093, size: 256, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !472, file: !151, line: 3399, baseType: !1282, size: 704)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1282, file: !151, line: 2009, baseType: !508, size: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1282, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1282, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1282, file: !151, line: 2014, baseType: !463, size: 32, offset: 224)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1282, file: !151, line: 2016, baseType: !470, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1282, file: !151, line: 2017, baseType: !1033, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1282, file: !151, line: 2019, baseType: !470, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1282, file: !151, line: 2020, baseType: !470, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1282, file: !151, line: 2021, baseType: !470, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1282, file: !151, line: 2022, baseType: !470, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1282, file: !151, line: 2023, baseType: !470, size: 64, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !472, file: !151, line: 3400, baseType: !1296, size: 832)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1296, file: !151, line: 2431, baseType: !508, size: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1296, file: !151, line: 2433, baseType: !470, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1296, file: !151, line: 2434, baseType: !470, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1296, file: !151, line: 2435, baseType: !470, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1296, file: !151, line: 2436, baseType: !470, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1296, file: !151, line: 2437, baseType: !1033, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1296, file: !151, line: 2438, baseType: !470, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1296, file: !151, line: 2440, baseType: !470, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1296, file: !151, line: 2441, baseType: !470, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1296, file: !151, line: 2443, baseType: !1308, size: 128, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1309, file: !151, line: 182, baseType: !1038, size: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !472, file: !151, line: 3401, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1323}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !151, line: 3329, baseType: !508, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1313, file: !151, line: 3330, baseType: !1317, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1318, file: !151, line: 3322, baseType: !1317, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1318, file: !151, line: 3323, baseType: !1317, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1318, file: !151, line: 3324, baseType: !470, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1313, file: !151, line: 3331, baseType: !1317, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !472, file: !151, line: 3402, baseType: !1325, size: 256)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1325, file: !151, line: 1541, baseType: !508, size: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1325, file: !151, line: 1542, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1332)
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1331, file: !151, line: 1538, baseType: !1334, size: 192)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1336)
!1336 = !{!1337, !1338, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1335, file: !151, line: 1537, baseType: !7, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1335, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1335, file: !151, line: 1537, baseType: !1340, size: 128, offset: 64)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, size: 128, elements: !567)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1342, file: !151, line: 1533, baseType: !470, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1342, file: !151, line: 1534, baseType: !470, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !472, file: !151, line: 3403, baseType: !1347, size: 512)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1358, !1359, !1360}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1347, file: !151, line: 1939, baseType: !508, size: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1347, file: !151, line: 1940, baseType: !463, size: 32, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1347, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1347, file: !151, line: 1946, baseType: !1353, size: 32, offset: 256)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1354)
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1353, file: !151, line: 1943, baseType: !169, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1353, file: !151, line: 1944, baseType: !176, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1353, file: !151, line: 1945, baseType: !183, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1347, file: !151, line: 1950, baseType: !434, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1347, file: !151, line: 1951, baseType: !434, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1347, file: !151, line: 1953, baseType: !1044, size: 64, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !472, file: !151, line: 3404, baseType: !1362, size: 1664)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1362, file: !151, line: 3338, baseType: !508, size: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1362, file: !151, line: 3341, baseType: !1366, size: 1472, offset: 192)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1367, line: 410, size: 1472, elements: !1368)
!1367 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1366, file: !1367, line: 412, baseType: !393, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1366, file: !1367, line: 413, baseType: !393, size: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1366, file: !1367, line: 414, baseType: !393, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1366, file: !1367, line: 415, baseType: !393, size: 32, offset: 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1366, file: !1367, line: 416, baseType: !393, size: 32, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1366, file: !1367, line: 417, baseType: !393, size: 32, offset: 160)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1366, file: !1367, line: 418, baseType: !392, size: 8, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1366, file: !1367, line: 419, baseType: !392, size: 8, offset: 200)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1366, file: !1367, line: 420, baseType: !1378, size: 8, offset: 208)
!1378 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1366, file: !1367, line: 421, baseType: !1378, size: 8, offset: 216)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1366, file: !1367, line: 422, baseType: !1378, size: 8, offset: 224)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1366, file: !1367, line: 423, baseType: !1378, size: 8, offset: 232)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1366, file: !1367, line: 424, baseType: !1378, size: 8, offset: 240)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1366, file: !1367, line: 425, baseType: !1378, size: 8, offset: 248)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1366, file: !1367, line: 426, baseType: !1378, size: 8, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1366, file: !1367, line: 427, baseType: !1378, size: 8, offset: 264)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1366, file: !1367, line: 428, baseType: !1378, size: 8, offset: 272)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1366, file: !1367, line: 429, baseType: !1378, size: 8, offset: 280)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1366, file: !1367, line: 430, baseType: !1378, size: 8, offset: 288)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1366, file: !1367, line: 431, baseType: !1378, size: 8, offset: 296)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1366, file: !1367, line: 432, baseType: !1378, size: 8, offset: 304)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1366, file: !1367, line: 433, baseType: !1378, size: 8, offset: 312)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1366, file: !1367, line: 434, baseType: !1378, size: 8, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1366, file: !1367, line: 435, baseType: !1378, size: 8, offset: 328)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1366, file: !1367, line: 436, baseType: !1378, size: 8, offset: 336)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1366, file: !1367, line: 437, baseType: !1378, size: 8, offset: 344)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1366, file: !1367, line: 438, baseType: !1378, size: 8, offset: 352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1366, file: !1367, line: 439, baseType: !1378, size: 8, offset: 360)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1366, file: !1367, line: 440, baseType: !1378, size: 8, offset: 368)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1366, file: !1367, line: 441, baseType: !1378, size: 8, offset: 376)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1366, file: !1367, line: 442, baseType: !1378, size: 8, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1366, file: !1367, line: 443, baseType: !1378, size: 8, offset: 392)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1366, file: !1367, line: 444, baseType: !1378, size: 8, offset: 400)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1366, file: !1367, line: 445, baseType: !1378, size: 8, offset: 408)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1366, file: !1367, line: 446, baseType: !1378, size: 8, offset: 416)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1366, file: !1367, line: 447, baseType: !1378, size: 8, offset: 424)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1366, file: !1367, line: 448, baseType: !1378, size: 8, offset: 432)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1366, file: !1367, line: 449, baseType: !1378, size: 8, offset: 440)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1366, file: !1367, line: 450, baseType: !1378, size: 8, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1366, file: !1367, line: 451, baseType: !1378, size: 8, offset: 456)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1366, file: !1367, line: 452, baseType: !1378, size: 8, offset: 464)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1366, file: !1367, line: 453, baseType: !1378, size: 8, offset: 472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1366, file: !1367, line: 454, baseType: !1378, size: 8, offset: 480)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1366, file: !1367, line: 455, baseType: !1378, size: 8, offset: 488)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1366, file: !1367, line: 456, baseType: !1378, size: 8, offset: 496)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1366, file: !1367, line: 457, baseType: !1378, size: 8, offset: 504)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1366, file: !1367, line: 458, baseType: !1378, size: 8, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1366, file: !1367, line: 459, baseType: !1378, size: 8, offset: 520)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1366, file: !1367, line: 460, baseType: !1378, size: 8, offset: 528)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1366, file: !1367, line: 461, baseType: !1378, size: 8, offset: 536)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1366, file: !1367, line: 462, baseType: !1378, size: 8, offset: 544)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1366, file: !1367, line: 463, baseType: !1378, size: 8, offset: 552)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1366, file: !1367, line: 464, baseType: !1378, size: 8, offset: 560)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1366, file: !1367, line: 465, baseType: !1378, size: 8, offset: 568)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1366, file: !1367, line: 466, baseType: !1378, size: 8, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1366, file: !1367, line: 467, baseType: !1378, size: 8, offset: 584)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1366, file: !1367, line: 468, baseType: !1378, size: 8, offset: 592)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1366, file: !1367, line: 469, baseType: !1378, size: 8, offset: 600)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1366, file: !1367, line: 470, baseType: !1378, size: 8, offset: 608)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1366, file: !1367, line: 471, baseType: !1378, size: 8, offset: 616)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1366, file: !1367, line: 472, baseType: !1378, size: 8, offset: 624)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1366, file: !1367, line: 473, baseType: !1378, size: 8, offset: 632)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1366, file: !1367, line: 474, baseType: !1378, size: 8, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1366, file: !1367, line: 475, baseType: !1378, size: 8, offset: 648)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1366, file: !1367, line: 476, baseType: !1378, size: 8, offset: 656)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1366, file: !1367, line: 477, baseType: !1378, size: 8, offset: 664)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1366, file: !1367, line: 478, baseType: !1378, size: 8, offset: 672)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1366, file: !1367, line: 479, baseType: !1378, size: 8, offset: 680)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1366, file: !1367, line: 480, baseType: !1378, size: 8, offset: 688)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1366, file: !1367, line: 481, baseType: !1378, size: 8, offset: 696)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1366, file: !1367, line: 482, baseType: !1378, size: 8, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1366, file: !1367, line: 483, baseType: !1378, size: 8, offset: 712)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1366, file: !1367, line: 484, baseType: !1378, size: 8, offset: 720)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1366, file: !1367, line: 485, baseType: !1378, size: 8, offset: 728)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1366, file: !1367, line: 486, baseType: !1378, size: 8, offset: 736)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1366, file: !1367, line: 487, baseType: !1378, size: 8, offset: 744)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1366, file: !1367, line: 488, baseType: !1378, size: 8, offset: 752)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1366, file: !1367, line: 489, baseType: !1378, size: 8, offset: 760)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1366, file: !1367, line: 490, baseType: !1378, size: 8, offset: 768)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1366, file: !1367, line: 491, baseType: !1378, size: 8, offset: 776)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1366, file: !1367, line: 492, baseType: !1378, size: 8, offset: 784)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1366, file: !1367, line: 493, baseType: !1378, size: 8, offset: 792)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1366, file: !1367, line: 494, baseType: !1378, size: 8, offset: 800)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1366, file: !1367, line: 495, baseType: !1378, size: 8, offset: 808)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1366, file: !1367, line: 496, baseType: !1378, size: 8, offset: 816)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1366, file: !1367, line: 497, baseType: !1378, size: 8, offset: 824)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1366, file: !1367, line: 498, baseType: !1378, size: 8, offset: 832)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1366, file: !1367, line: 499, baseType: !1378, size: 8, offset: 840)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1366, file: !1367, line: 500, baseType: !1378, size: 8, offset: 848)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1366, file: !1367, line: 501, baseType: !1378, size: 8, offset: 856)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1366, file: !1367, line: 502, baseType: !1378, size: 8, offset: 864)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1366, file: !1367, line: 503, baseType: !1378, size: 8, offset: 872)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1366, file: !1367, line: 504, baseType: !1378, size: 8, offset: 880)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1366, file: !1367, line: 505, baseType: !1378, size: 8, offset: 888)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1366, file: !1367, line: 506, baseType: !1378, size: 8, offset: 896)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1366, file: !1367, line: 507, baseType: !1378, size: 8, offset: 904)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1366, file: !1367, line: 508, baseType: !1378, size: 8, offset: 912)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1366, file: !1367, line: 509, baseType: !1378, size: 8, offset: 920)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1366, file: !1367, line: 510, baseType: !1378, size: 8, offset: 928)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1366, file: !1367, line: 511, baseType: !1378, size: 8, offset: 936)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1366, file: !1367, line: 512, baseType: !1378, size: 8, offset: 944)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1366, file: !1367, line: 513, baseType: !1378, size: 8, offset: 952)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1366, file: !1367, line: 514, baseType: !1378, size: 8, offset: 960)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1366, file: !1367, line: 515, baseType: !1378, size: 8, offset: 968)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1366, file: !1367, line: 516, baseType: !1378, size: 8, offset: 976)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1366, file: !1367, line: 517, baseType: !1378, size: 8, offset: 984)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1366, file: !1367, line: 518, baseType: !1378, size: 8, offset: 992)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1366, file: !1367, line: 519, baseType: !1378, size: 8, offset: 1000)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1366, file: !1367, line: 520, baseType: !1378, size: 8, offset: 1008)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1366, file: !1367, line: 521, baseType: !1378, size: 8, offset: 1016)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1366, file: !1367, line: 522, baseType: !1378, size: 8, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1366, file: !1367, line: 523, baseType: !1378, size: 8, offset: 1032)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1366, file: !1367, line: 524, baseType: !1378, size: 8, offset: 1040)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1366, file: !1367, line: 525, baseType: !1378, size: 8, offset: 1048)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1366, file: !1367, line: 526, baseType: !1378, size: 8, offset: 1056)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1366, file: !1367, line: 527, baseType: !1378, size: 8, offset: 1064)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1366, file: !1367, line: 528, baseType: !1378, size: 8, offset: 1072)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1366, file: !1367, line: 529, baseType: !1378, size: 8, offset: 1080)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1366, file: !1367, line: 530, baseType: !1378, size: 8, offset: 1088)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1366, file: !1367, line: 531, baseType: !1378, size: 8, offset: 1096)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1366, file: !1367, line: 532, baseType: !1378, size: 8, offset: 1104)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1366, file: !1367, line: 533, baseType: !1378, size: 8, offset: 1112)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1366, file: !1367, line: 534, baseType: !1378, size: 8, offset: 1120)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1366, file: !1367, line: 535, baseType: !1378, size: 8, offset: 1128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1366, file: !1367, line: 536, baseType: !1378, size: 8, offset: 1136)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1366, file: !1367, line: 537, baseType: !1378, size: 8, offset: 1144)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1366, file: !1367, line: 538, baseType: !1378, size: 8, offset: 1152)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1366, file: !1367, line: 539, baseType: !1378, size: 8, offset: 1160)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1366, file: !1367, line: 540, baseType: !1378, size: 8, offset: 1168)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1366, file: !1367, line: 541, baseType: !1378, size: 8, offset: 1176)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1366, file: !1367, line: 542, baseType: !1378, size: 8, offset: 1184)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1366, file: !1367, line: 543, baseType: !1378, size: 8, offset: 1192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1366, file: !1367, line: 544, baseType: !1378, size: 8, offset: 1200)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1366, file: !1367, line: 545, baseType: !1378, size: 8, offset: 1208)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1366, file: !1367, line: 546, baseType: !1378, size: 8, offset: 1216)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1366, file: !1367, line: 547, baseType: !1378, size: 8, offset: 1224)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1366, file: !1367, line: 548, baseType: !1378, size: 8, offset: 1232)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1366, file: !1367, line: 549, baseType: !1378, size: 8, offset: 1240)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1366, file: !1367, line: 550, baseType: !1378, size: 8, offset: 1248)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1366, file: !1367, line: 551, baseType: !1378, size: 8, offset: 1256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1366, file: !1367, line: 552, baseType: !1378, size: 8, offset: 1264)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1366, file: !1367, line: 553, baseType: !1378, size: 8, offset: 1272)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1366, file: !1367, line: 554, baseType: !1378, size: 8, offset: 1280)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1366, file: !1367, line: 555, baseType: !1378, size: 8, offset: 1288)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1366, file: !1367, line: 556, baseType: !1378, size: 8, offset: 1296)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1366, file: !1367, line: 557, baseType: !1378, size: 8, offset: 1304)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1366, file: !1367, line: 558, baseType: !1378, size: 8, offset: 1312)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1366, file: !1367, line: 559, baseType: !1378, size: 8, offset: 1320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1366, file: !1367, line: 560, baseType: !1378, size: 8, offset: 1328)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1366, file: !1367, line: 561, baseType: !1378, size: 8, offset: 1336)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1366, file: !1367, line: 562, baseType: !1378, size: 8, offset: 1344)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1366, file: !1367, line: 563, baseType: !1378, size: 8, offset: 1352)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1366, file: !1367, line: 564, baseType: !1378, size: 8, offset: 1360)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1366, file: !1367, line: 565, baseType: !1378, size: 8, offset: 1368)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1366, file: !1367, line: 566, baseType: !1378, size: 8, offset: 1376)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1366, file: !1367, line: 567, baseType: !1378, size: 8, offset: 1384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1366, file: !1367, line: 568, baseType: !1378, size: 8, offset: 1392)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1366, file: !1367, line: 569, baseType: !1378, size: 8, offset: 1400)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1366, file: !1367, line: 570, baseType: !1378, size: 8, offset: 1408)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1366, file: !1367, line: 571, baseType: !1378, size: 8, offset: 1416)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1366, file: !1367, line: 572, baseType: !1378, size: 8, offset: 1424)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1366, file: !1367, line: 573, baseType: !1378, size: 8, offset: 1432)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1366, file: !1367, line: 574, baseType: !1378, size: 8, offset: 1440)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !472, file: !151, line: 3405, baseType: !1534, size: 384)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1534, file: !151, line: 3353, baseType: !508, size: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1534, file: !151, line: 3356, baseType: !1538, size: 192, offset: 192)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1367, line: 578, size: 192, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1538, file: !1367, line: 580, baseType: !393, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1538, file: !1367, line: 581, baseType: !393, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1538, file: !1367, line: 582, baseType: !393, size: 32, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1538, file: !1367, line: 583, baseType: !393, size: 32, offset: 96)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1538, file: !1367, line: 584, baseType: !392, size: 8, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1538, file: !1367, line: 585, baseType: !392, size: 8, offset: 136)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1538, file: !1367, line: 586, baseType: !392, size: 8, offset: 144)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1538, file: !1367, line: 587, baseType: !392, size: 8, offset: 152)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1538, file: !1367, line: 588, baseType: !392, size: 8, offset: 160)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1538, file: !1367, line: 589, baseType: !392, size: 8, offset: 168)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1538, file: !1367, line: 590, baseType: !392, size: 8, offset: 176)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !447, file: !437, line: 739, baseType: !1552, size: 448)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !437, line: 350, size: 448, elements: !1553)
!1553 = !{!1554, !1560}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1552, file: !437, line: 353, baseType: !1555, size: 384)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !437, line: 333, size: 384, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1555, file: !437, line: 336, baseType: !450, size: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1555, file: !437, line: 343, baseType: !1081, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1555, file: !437, line: 344, baseType: !1088, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1552, file: !437, line: 359, baseType: !1044, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !447, file: !437, line: 740, baseType: !1562, size: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !437, line: 365, size: 512, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1562, file: !437, line: 368, baseType: !1555, size: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1562, file: !437, line: 373, baseType: !470, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1562, file: !437, line: 374, baseType: !470, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !447, file: !437, line: 741, baseType: !1568, size: 576)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !437, line: 380, size: 576, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1568, file: !437, line: 383, baseType: !1562, size: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1568, file: !437, line: 389, baseType: !1044, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !447, file: !437, line: 742, baseType: !1573, size: 320)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !437, line: 395, size: 320, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1573, file: !437, line: 397, baseType: !450, size: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1573, file: !437, line: 400, baseType: !434, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !447, file: !437, line: 743, baseType: !1578, size: 448)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !437, line: 406, size: 448, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1578, file: !437, line: 408, baseType: !450, size: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1578, file: !437, line: 412, baseType: !470, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1578, file: !437, line: 420, baseType: !470, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1578, file: !437, line: 423, baseType: !434, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !447, file: !437, line: 744, baseType: !1585, size: 384)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !437, line: 429, size: 384, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1585, file: !437, line: 431, baseType: !450, size: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1585, file: !437, line: 434, baseType: !470, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1585, file: !437, line: 437, baseType: !434, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !447, file: !437, line: 745, baseType: !1591, size: 384)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !437, line: 443, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1591, file: !437, line: 445, baseType: !450, size: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1591, file: !437, line: 449, baseType: !470, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1591, file: !437, line: 453, baseType: !434, size: 64, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !447, file: !437, line: 746, baseType: !1597, size: 320)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !437, line: 459, size: 320, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1597, file: !437, line: 461, baseType: !450, size: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1597, file: !437, line: 464, baseType: !470, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !447, file: !437, line: 747, baseType: !1602, size: 768)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !437, line: 469, size: 768, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1602, file: !437, line: 471, baseType: !450, size: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1602, file: !437, line: 474, baseType: !7, size: 32, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1602, file: !437, line: 475, baseType: !7, size: 32, offset: 288)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1602, file: !437, line: 478, baseType: !470, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1602, file: !437, line: 481, baseType: !1609, size: 384, offset: 384)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 384, elements: !567)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !151, line: 1917, size: 384, elements: !1611)
!1611 = !{!1612, !1613, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1610, file: !151, line: 1920, baseType: !1093, size: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1610, file: !151, line: 1921, baseType: !470, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1610, file: !151, line: 1922, baseType: !463, size: 32, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !447, file: !437, line: 748, baseType: !1616, size: 320)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !437, line: 487, size: 320, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1616, file: !437, line: 490, baseType: !450, size: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1616, file: !437, line: 494, baseType: !393, size: 32, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !447, file: !437, line: 749, baseType: !1621, size: 384)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !437, line: 500, size: 384, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1621, file: !437, line: 502, baseType: !450, size: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1621, file: !437, line: 506, baseType: !434, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1621, file: !437, line: 510, baseType: !434, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !447, file: !437, line: 750, baseType: !1627, size: 320)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !437, line: 529, size: 320, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1627, file: !437, line: 531, baseType: !450, size: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1627, file: !437, line: 540, baseType: !434, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !447, file: !437, line: 751, baseType: !1632, size: 704)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !437, line: 546, size: 704, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1632, file: !437, line: 549, baseType: !1562, size: 512)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1632, file: !437, line: 553, baseType: !398, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1632, file: !437, line: 557, baseType: !392, size: 8, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1632, file: !437, line: 558, baseType: !392, size: 8, offset: 584)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1632, file: !437, line: 559, baseType: !392, size: 8, offset: 592)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1632, file: !437, line: 560, baseType: !392, size: 8, offset: 600)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1632, file: !437, line: 566, baseType: !1044, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !447, file: !437, line: 752, baseType: !1642, size: 384)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !437, line: 571, size: 384, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1642, file: !437, line: 573, baseType: !1573, size: 320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1642, file: !437, line: 577, baseType: !470, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !447, file: !437, line: 753, baseType: !1647, size: 576)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !437, line: 600, size: 576, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1661}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1647, file: !437, line: 602, baseType: !1573, size: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1647, file: !437, line: 605, baseType: !470, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1647, file: !437, line: 609, baseType: !994, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1647, file: !437, line: 612, baseType: !1653, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !437, line: 581, size: 320, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659, !1660}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1654, file: !437, line: 583, baseType: !183, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1654, file: !437, line: 586, baseType: !470, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1654, file: !437, line: 589, baseType: !470, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1654, file: !437, line: 592, baseType: !470, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1654, file: !437, line: 595, baseType: !470, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1647, file: !437, line: 616, baseType: !434, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !447, file: !437, line: 754, baseType: !1663, size: 512)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !437, line: 622, size: 512, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1663, file: !437, line: 624, baseType: !1573, size: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1663, file: !437, line: 628, baseType: !470, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1663, file: !437, line: 632, baseType: !470, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1663, file: !437, line: 636, baseType: !470, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !447, file: !437, line: 755, baseType: !1670, size: 704)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !437, line: 642, size: 704, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1670, file: !437, line: 644, baseType: !1663, size: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1670, file: !437, line: 648, baseType: !470, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1670, file: !437, line: 652, baseType: !470, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1670, file: !437, line: 653, baseType: !470, size: 64, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !447, file: !437, line: 756, baseType: !1677, size: 448)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !437, line: 663, size: 448, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1677, file: !437, line: 665, baseType: !1573, size: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1677, file: !437, line: 668, baseType: !470, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1677, file: !437, line: 673, baseType: !470, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !447, file: !437, line: 757, baseType: !1683, size: 384)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !437, line: 694, size: 384, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1683, file: !437, line: 696, baseType: !1573, size: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1683, file: !437, line: 699, baseType: !470, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !447, file: !437, line: 758, baseType: !1688, size: 384)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !437, line: 681, size: 384, elements: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1688, file: !437, line: 683, baseType: !450, size: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1688, file: !437, line: 686, baseType: !470, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1688, file: !437, line: 689, baseType: !470, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !447, file: !437, line: 759, baseType: !1694, size: 384)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !437, line: 707, size: 384, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1694, file: !437, line: 709, baseType: !450, size: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1694, file: !437, line: 712, baseType: !470, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1694, file: !437, line: 712, baseType: !470, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !447, file: !437, line: 760, baseType: !1700, size: 320)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !437, line: 718, size: 320, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1700, file: !437, line: 720, baseType: !450, size: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1700, file: !437, line: 723, baseType: !470, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !442, file: !437, line: 138, baseType: !441, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !437, line: 139, baseType: !441, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !436, file: !437, line: 146, baseType: !440, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !436, file: !437, line: 152, baseType: !434, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !431, file: !135, line: 130, baseType: !639, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !426, file: !135, line: 134, baseType: !397, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !426, file: !135, line: 137, baseType: !470, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !426, file: !135, line: 138, baseType: !463, size: 32, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !426, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !135, line: 144, baseType: !393, size: 32, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !426, file: !135, line: 145, baseType: !393, size: 32, offset: 416)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !426, file: !135, line: 146, baseType: !1716, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !400)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !408, file: !135, line: 220, baseType: !411, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !408, file: !135, line: 223, baseType: !397, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !408, file: !135, line: 226, baseType: !401, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !408, file: !135, line: 229, baseType: !1721, size: 128, offset: 256)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, size: 128, elements: !707)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !408, file: !135, line: 232, baseType: !407, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !408, file: !135, line: 233, baseType: !407, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !408, file: !135, line: 238, baseType: !1727, size: 64, offset: 512)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1728)
!1728 = !{!1729, !1735}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1727, file: !135, line: 236, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1731, file: !135, line: 275, baseType: !434, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1731, file: !135, line: 278, baseType: !434, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1727, file: !135, line: 237, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1737, file: !135, line: 261, baseType: !639, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1737, file: !135, line: 262, baseType: !639, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1737, file: !135, line: 266, baseType: !639, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1737, file: !135, line: 267, baseType: !639, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1737, file: !135, line: 270, baseType: !393, size: 32, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !408, file: !135, line: 241, baseType: !1716, size: 64, offset: 576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !408, file: !135, line: 244, baseType: !393, size: 32, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !408, file: !135, line: 247, baseType: !393, size: 32, offset: 672)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !408, file: !135, line: 250, baseType: !393, size: 32, offset: 704)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !408, file: !135, line: 253, baseType: !393, size: 32, offset: 736)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !135, line: 256, baseType: !393, size: 32, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !402, file: !378, line: 111, baseType: !407, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !402, file: !378, line: 114, baseType: !1752, size: 64, offset: 192)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !378, line: 41, size: 64, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1752, file: !378, line: 42, baseType: !377, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1752, file: !378, line: 43, baseType: !7, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !402, file: !378, line: 117, baseType: !7, size: 32, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !402, file: !378, line: 120, baseType: !7, size: 32, offset: 288)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !402, file: !378, line: 123, baseType: !1110, size: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !402, file: !378, line: 126, baseType: !401, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !378, line: 129, baseType: !401, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !402, file: !378, line: 132, baseType: !397, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !402, file: !378, line: 139, baseType: !470, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !402, file: !378, line: 143, baseType: !518, size: 128, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !402, file: !378, line: 146, baseType: !518, size: 128, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !402, file: !378, line: 148, baseType: !392, size: 8, offset: 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !402, file: !378, line: 149, baseType: !392, size: 8, offset: 904)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !402, file: !378, line: 153, baseType: !386, size: 32, offset: 928)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !402, file: !378, line: 156, baseType: !1769, size: 64, offset: 960)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !378, line: 48, size: 320, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1770, file: !378, line: 50, baseType: !445, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1770, file: !378, line: 59, baseType: !518, size: 128, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1770, file: !378, line: 64, baseType: !392, size: 8, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1770, file: !378, line: 67, baseType: !1769, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !402, file: !378, line: 159, baseType: !1777, size: 64, offset: 1024)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !378, line: 72, size: 256, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1778, file: !378, line: 74, baseType: !425, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1778, file: !378, line: 77, baseType: !1777, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1778, file: !378, line: 78, baseType: !1777, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1778, file: !378, line: 81, baseType: !1777, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !402, file: !378, line: 162, baseType: !392, size: 8, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !402, file: !378, line: 166, baseType: !470, size: 64, offset: 1152)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1791, line: 32, baseType: !1792)
!1791 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1791, line: 32, size: 96, elements: !1793)
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1792, file: !1791, line: 32, baseType: !1795, size: 96)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1791, line: 31, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1791, line: 31, size: 96, elements: !1797)
!1797 = !{!1798, !1799, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1796, file: !1791, line: 31, baseType: !7, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1796, file: !1791, line: 31, baseType: !7, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1796, file: !1791, line: 31, baseType: !1801, size: 32, offset: 64)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 32, elements: !567)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !135, line: 283, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !135, line: 283, size: 128, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1804, file: !135, line: 283, baseType: !946, size: 128)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1778)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1813, line: 7, baseType: !1814)
!1813 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1815, line: 49, size: 1728, elements: !1816)
!1815 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1832, !1834, !1835, !1836, !1839, !1841, !1842, !1843, !1846, !1848, !1851, !1854, !1855, !1856, !1857, !1858}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1814, file: !1815, line: 51, baseType: !393, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1814, file: !1815, line: 54, baseType: !395, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1814, file: !1815, line: 55, baseType: !395, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1814, file: !1815, line: 56, baseType: !395, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1814, file: !1815, line: 57, baseType: !395, size: 64, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1814, file: !1815, line: 58, baseType: !395, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1814, file: !1815, line: 59, baseType: !395, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1814, file: !1815, line: 60, baseType: !395, size: 64, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1814, file: !1815, line: 61, baseType: !395, size: 64, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1814, file: !1815, line: 64, baseType: !395, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1814, file: !1815, line: 65, baseType: !395, size: 64, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1814, file: !1815, line: 66, baseType: !395, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1814, file: !1815, line: 68, baseType: !1830, size: 64, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1815, line: 36, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1814, file: !1815, line: 70, baseType: !1833, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1814, file: !1815, line: 72, baseType: !393, size: 32, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1814, file: !1815, line: 73, baseType: !393, size: 32, offset: 928)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1814, file: !1815, line: 74, baseType: !1837, size: 64, offset: 960)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1838, line: 152, baseType: !400)
!1838 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1814, file: !1815, line: 77, baseType: !1840, size: 16, offset: 1024)
!1840 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1814, file: !1815, line: 78, baseType: !1378, size: 8, offset: 1040)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1814, file: !1815, line: 79, baseType: !566, size: 8, offset: 1048)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1814, file: !1815, line: 81, baseType: !1844, size: 64, offset: 1088)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1815, line: 43, baseType: null)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1814, file: !1815, line: 89, baseType: !1847, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1838, line: 153, baseType: !400)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1814, file: !1815, line: 91, baseType: !1849, size: 64, offset: 1216)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1815, line: 37, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1814, file: !1815, line: 92, baseType: !1852, size: 64, offset: 1280)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1815, line: 38, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1814, file: !1815, line: 93, baseType: !1833, size: 64, offset: 1344)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1814, file: !1815, line: 94, baseType: !397, size: 64, offset: 1408)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1814, file: !1815, line: 95, baseType: !994, size: 64, offset: 1472)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1814, file: !1815, line: 96, baseType: !393, size: 32, offset: 1536)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1814, file: !1815, line: 98, baseType: !1859, size: 160, offset: 1568)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 160, elements: !1860)
!1860 = !{!1861}
!1861 = !DISubrange(count: 20)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !135, line: 152, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !135, line: 152, size: 128, elements: !1865)
!1865 = !{!1866}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1864, file: !135, line: 152, baseType: !416, size: 128)
!1867 = !{!0}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !151, line: 5199, flags: DIFlagFwdDecl)
!1870 = !{i32 2, !"Dwarf Version", i32 4}
!1871 = !{i32 2, !"Debug Info Version", i32 3}
!1872 = !{i32 1, !"wchar_size", i32 4}
!1873 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1874 = distinct !DISubprogram(name: "vprintf", scope: !1875, file: !1875, line: 39, type: !1876, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!393, !1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !398)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1880, file: !3, baseType: !7, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1880, file: !3, baseType: !7, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1880, file: !3, baseType: !397, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1880, file: !3, baseType: !397, size: 64, offset: 128)
!1886 = !{!1887, !1888}
!1887 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1874, file: !1875, line: 39, type: !1878)
!1888 = !DILocalVariable(name: "__arg", arg: 2, scope: !1874, file: !1875, line: 39, type: !1879)
!1889 = !DILocation(line: 0, scope: !1874)
!1890 = !DILocation(line: 41, column: 20, scope: !1874)
!1891 = !DILocation(line: 41, column: 10, scope: !1874)
!1892 = !DILocation(line: 41, column: 3, scope: !1874)
!1893 = distinct !DISubprogram(name: "getchar", scope: !1875, file: !1875, line: 47, type: !1894, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!393}
!1896 = !{}
!1897 = !DILocation(line: 49, column: 16, scope: !1893)
!1898 = !DILocation(line: 49, column: 10, scope: !1893)
!1899 = !DILocation(line: 49, column: 3, scope: !1893)
!1900 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1875, file: !1875, line: 56, type: !1901, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!393, !1811}
!1903 = !{!1904}
!1904 = !DILocalVariable(name: "__fp", arg: 1, scope: !1900, file: !1875, line: 56, type: !1811)
!1905 = !DILocation(line: 0, scope: !1900)
!1906 = !DILocation(line: 58, column: 10, scope: !1900)
!1907 = !DILocation(line: 58, column: 3, scope: !1900)
!1908 = distinct !DISubprogram(name: "getc_unlocked", scope: !1875, file: !1875, line: 66, type: !1901, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "__fp", arg: 1, scope: !1908, file: !1875, line: 66, type: !1811)
!1911 = !DILocation(line: 0, scope: !1908)
!1912 = !DILocation(line: 68, column: 10, scope: !1908)
!1913 = !DILocation(line: 68, column: 3, scope: !1908)
!1914 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1875, file: !1875, line: 73, type: !1894, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1915 = !DILocation(line: 75, column: 10, scope: !1914)
!1916 = !DILocation(line: 75, column: 3, scope: !1914)
!1917 = distinct !DISubprogram(name: "putchar", scope: !1875, file: !1875, line: 82, type: !1918, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!393, !393}
!1920 = !{!1921}
!1921 = !DILocalVariable(name: "__c", arg: 1, scope: !1917, file: !1875, line: 82, type: !393)
!1922 = !DILocation(line: 0, scope: !1917)
!1923 = !DILocation(line: 84, column: 21, scope: !1917)
!1924 = !DILocation(line: 84, column: 10, scope: !1917)
!1925 = !DILocation(line: 84, column: 3, scope: !1917)
!1926 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1875, file: !1875, line: 91, type: !1927, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!393, !393, !1811}
!1929 = !{!1930, !1931}
!1930 = !DILocalVariable(name: "__c", arg: 1, scope: !1926, file: !1875, line: 91, type: !393)
!1931 = !DILocalVariable(name: "__stream", arg: 2, scope: !1926, file: !1875, line: 91, type: !1811)
!1932 = !DILocation(line: 0, scope: !1926)
!1933 = !DILocation(line: 93, column: 10, scope: !1926)
!1934 = !DILocation(line: 93, column: 3, scope: !1926)
!1935 = distinct !DISubprogram(name: "putc_unlocked", scope: !1875, file: !1875, line: 101, type: !1927, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1936)
!1936 = !{!1937, !1938}
!1937 = !DILocalVariable(name: "__c", arg: 1, scope: !1935, file: !1875, line: 101, type: !393)
!1938 = !DILocalVariable(name: "__stream", arg: 2, scope: !1935, file: !1875, line: 101, type: !1811)
!1939 = !DILocation(line: 0, scope: !1935)
!1940 = !DILocation(line: 103, column: 10, scope: !1935)
!1941 = !DILocation(line: 103, column: 3, scope: !1935)
!1942 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1875, file: !1875, line: 108, type: !1918, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1943)
!1943 = !{!1944}
!1944 = !DILocalVariable(name: "__c", arg: 1, scope: !1942, file: !1875, line: 108, type: !393)
!1945 = !DILocation(line: 0, scope: !1942)
!1946 = !DILocation(line: 110, column: 10, scope: !1942)
!1947 = !DILocation(line: 110, column: 3, scope: !1942)
!1948 = distinct !DISubprogram(name: "getline", scope: !1875, file: !1875, line: 118, type: !1949, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1951, !394, !1952, !1811}
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1838, line: 193, baseType: !400)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1953 = !{!1954, !1955, !1956}
!1954 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1948, file: !1875, line: 118, type: !394)
!1955 = !DILocalVariable(name: "__n", arg: 2, scope: !1948, file: !1875, line: 118, type: !1952)
!1956 = !DILocalVariable(name: "__stream", arg: 3, scope: !1948, file: !1875, line: 118, type: !1811)
!1957 = !DILocation(line: 0, scope: !1948)
!1958 = !DILocation(line: 120, column: 10, scope: !1948)
!1959 = !DILocation(line: 120, column: 3, scope: !1948)
!1960 = distinct !DISubprogram(name: "feof_unlocked", scope: !1875, file: !1875, line: 128, type: !1901, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1961)
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "__stream", arg: 1, scope: !1960, file: !1875, line: 128, type: !1811)
!1963 = !DILocation(line: 0, scope: !1960)
!1964 = !DILocation(line: 130, column: 10, scope: !1960)
!1965 = !DILocation(line: 130, column: 3, scope: !1960)
!1966 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1875, file: !1875, line: 135, type: !1901, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1967)
!1967 = !{!1968}
!1968 = !DILocalVariable(name: "__stream", arg: 1, scope: !1966, file: !1875, line: 135, type: !1811)
!1969 = !DILocation(line: 0, scope: !1966)
!1970 = !DILocation(line: 137, column: 10, scope: !1966)
!1971 = !DILocation(line: 137, column: 3, scope: !1966)
!1972 = distinct !DISubprogram(name: "tolower", scope: !1973, file: !1973, line: 207, type: !1918, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1973 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "__c", arg: 1, scope: !1972, file: !1973, line: 207, type: !393)
!1976 = !DILocation(line: 0, scope: !1972)
!1977 = !DILocation(line: 209, column: 22, scope: !1972)
!1978 = !DILocation(line: 209, column: 39, scope: !1972)
!1979 = !DILocation(line: 209, column: 38, scope: !1972)
!1980 = !DILocation(line: 209, column: 37, scope: !1972)
!1981 = !DILocation(line: 209, column: 10, scope: !1972)
!1982 = !DILocation(line: 209, column: 3, scope: !1972)
!1983 = distinct !DISubprogram(name: "toupper", scope: !1973, file: !1973, line: 213, type: !1918, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!1984 = !{!1985}
!1985 = !DILocalVariable(name: "__c", arg: 1, scope: !1983, file: !1973, line: 213, type: !393)
!1986 = !DILocation(line: 0, scope: !1983)
!1987 = !DILocation(line: 215, column: 22, scope: !1983)
!1988 = !DILocation(line: 215, column: 39, scope: !1983)
!1989 = !DILocation(line: 215, column: 38, scope: !1983)
!1990 = !DILocation(line: 215, column: 37, scope: !1983)
!1991 = !DILocation(line: 215, column: 10, scope: !1983)
!1992 = !DILocation(line: 215, column: 3, scope: !1983)
!1993 = distinct !DISubprogram(name: "atoi", scope: !1994, file: !1994, line: 361, type: !1995, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1994 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!393, !398}
!1997 = !{!1998}
!1998 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1993, file: !1994, line: 361, type: !398)
!1999 = !DILocation(line: 0, scope: !1993)
!2000 = !DILocation(line: 363, column: 16, scope: !1993)
!2001 = !DILocation(line: 363, column: 10, scope: !1993)
!2002 = !DILocation(line: 363, column: 3, scope: !1993)
!2003 = distinct !DISubprogram(name: "atol", scope: !1994, file: !1994, line: 366, type: !2004, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!400, !398}
!2006 = !{!2007}
!2007 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2003, file: !1994, line: 366, type: !398)
!2008 = !DILocation(line: 0, scope: !2003)
!2009 = !DILocation(line: 368, column: 10, scope: !2003)
!2010 = !DILocation(line: 368, column: 3, scope: !2003)
!2011 = distinct !DISubprogram(name: "atoll", scope: !1994, file: !1994, line: 373, type: !2012, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!2014, !398}
!2014 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2015 = !{!2016}
!2016 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2011, file: !1994, line: 373, type: !398)
!2017 = !DILocation(line: 0, scope: !2011)
!2018 = !DILocation(line: 375, column: 10, scope: !2011)
!2019 = !DILocation(line: 375, column: 3, scope: !2011)
!2020 = distinct !DISubprogram(name: "bsearch", scope: !2021, file: !2021, line: 20, type: !2022, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2021 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!397, !811, !811, !994, !994, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1994, line: 808, baseType: !983)
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2026 = !DILocalVariable(name: "__key", arg: 1, scope: !2020, file: !2021, line: 20, type: !811)
!2027 = !DILocalVariable(name: "__base", arg: 2, scope: !2020, file: !2021, line: 20, type: !811)
!2028 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2020, file: !2021, line: 20, type: !994)
!2029 = !DILocalVariable(name: "__size", arg: 4, scope: !2020, file: !2021, line: 20, type: !994)
!2030 = !DILocalVariable(name: "__compar", arg: 5, scope: !2020, file: !2021, line: 21, type: !2024)
!2031 = !DILocalVariable(name: "__l", scope: !2020, file: !2021, line: 23, type: !994)
!2032 = !DILocalVariable(name: "__u", scope: !2020, file: !2021, line: 23, type: !994)
!2033 = !DILocalVariable(name: "__idx", scope: !2020, file: !2021, line: 23, type: !994)
!2034 = !DILocalVariable(name: "__p", scope: !2020, file: !2021, line: 24, type: !811)
!2035 = !DILocalVariable(name: "__comparison", scope: !2020, file: !2021, line: 25, type: !393)
!2036 = !DILocation(line: 0, scope: !2020)
!2037 = !DILocation(line: 29, column: 3, scope: !2020)
!2038 = !DILocation(line: 27, column: 7, scope: !2020)
!2039 = !DILocation(line: 29, column: 14, scope: !2020)
!2040 = !DILocation(line: 31, column: 20, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2020, file: !2021, line: 30, column: 5)
!2042 = !DILocation(line: 31, column: 27, scope: !2041)
!2043 = !DILocation(line: 32, column: 56, scope: !2041)
!2044 = !DILocation(line: 32, column: 47, scope: !2041)
!2045 = !DILocation(line: 33, column: 22, scope: !2041)
!2046 = !DILocation(line: 34, column: 24, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2041, file: !2021, line: 34, column: 11)
!2048 = !DILocation(line: 34, column: 11, scope: !2041)
!2049 = !DILocation(line: 36, column: 29, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !2021, line: 36, column: 16)
!2051 = !DILocation(line: 36, column: 16, scope: !2047)
!2052 = !DILocation(line: 37, column: 14, scope: !2050)
!2053 = distinct !{!2053, !2037, !2054}
!2054 = !DILocation(line: 40, column: 5, scope: !2020)
!2055 = !DILocation(line: 43, column: 1, scope: !2020)
!2056 = distinct !DISubprogram(name: "atof", scope: !2057, file: !2057, line: 25, type: !2058, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2061)
!2057 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!2060, !398}
!2060 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2056, file: !2057, line: 25, type: !398)
!2063 = !DILocation(line: 0, scope: !2056)
!2064 = !DILocation(line: 27, column: 10, scope: !2056)
!2065 = !DILocation(line: 27, column: 3, scope: !2056)
!2066 = distinct !DISubprogram(name: "strtoimax", scope: !2067, file: !2067, line: 324, type: !2068, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2074)
!2067 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2070, !1878, !2073, !393}
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2071, line: 101, baseType: !2072)
!2071 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1838, line: 72, baseType: !400)
!2073 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !394)
!2074 = !{!2075, !2076, !2077}
!2075 = !DILocalVariable(name: "nptr", arg: 1, scope: !2066, file: !2067, line: 324, type: !1878)
!2076 = !DILocalVariable(name: "endptr", arg: 2, scope: !2066, file: !2067, line: 324, type: !2073)
!2077 = !DILocalVariable(name: "base", arg: 3, scope: !2066, file: !2067, line: 324, type: !393)
!2078 = !DILocation(line: 0, scope: !2066)
!2079 = !DILocation(line: 327, column: 10, scope: !2066)
!2080 = !DILocation(line: 327, column: 3, scope: !2066)
!2081 = distinct !DISubprogram(name: "strtoumax", scope: !2067, file: !2067, line: 336, type: !2082, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2086)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!2084, !1878, !2073, !393}
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2071, line: 102, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1838, line: 73, baseType: !523)
!2086 = !{!2087, !2088, !2089}
!2087 = !DILocalVariable(name: "nptr", arg: 1, scope: !2081, file: !2067, line: 336, type: !1878)
!2088 = !DILocalVariable(name: "endptr", arg: 2, scope: !2081, file: !2067, line: 336, type: !2073)
!2089 = !DILocalVariable(name: "base", arg: 3, scope: !2081, file: !2067, line: 336, type: !393)
!2090 = !DILocation(line: 0, scope: !2081)
!2091 = !DILocation(line: 339, column: 10, scope: !2081)
!2092 = !DILocation(line: 339, column: 3, scope: !2081)
!2093 = distinct !DISubprogram(name: "wcstoimax", scope: !2067, file: !2067, line: 348, type: !2094, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2103)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2070, !2096, !2100, !393}
!2096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2097)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2067, line: 34, baseType: !393)
!2100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2101)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2103 = !{!2104, !2105, !2106}
!2104 = !DILocalVariable(name: "nptr", arg: 1, scope: !2093, file: !2067, line: 348, type: !2096)
!2105 = !DILocalVariable(name: "endptr", arg: 2, scope: !2093, file: !2067, line: 348, type: !2100)
!2106 = !DILocalVariable(name: "base", arg: 3, scope: !2093, file: !2067, line: 348, type: !393)
!2107 = !DILocation(line: 0, scope: !2093)
!2108 = !DILocation(line: 351, column: 10, scope: !2093)
!2109 = !DILocation(line: 351, column: 3, scope: !2093)
!2110 = distinct !DISubprogram(name: "wcstoumax", scope: !2067, file: !2067, line: 362, type: !2111, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2084, !2096, !2100, !393}
!2113 = !{!2114, !2115, !2116}
!2114 = !DILocalVariable(name: "nptr", arg: 1, scope: !2110, file: !2067, line: 362, type: !2096)
!2115 = !DILocalVariable(name: "endptr", arg: 2, scope: !2110, file: !2067, line: 362, type: !2100)
!2116 = !DILocalVariable(name: "base", arg: 3, scope: !2110, file: !2067, line: 362, type: !393)
!2117 = !DILocation(line: 0, scope: !2110)
!2118 = !DILocation(line: 365, column: 10, scope: !2110)
!2119 = !DILocation(line: 365, column: 3, scope: !2110)
!2120 = distinct !DISubprogram(name: "stat", scope: !2121, file: !2121, line: 453, type: !2122, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2159)
!2121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!393, !398, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2126, line: 46, size: 1152, elements: !2127)
!2126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2127 = !{!2128, !2130, !2132, !2134, !2136, !2138, !2140, !2141, !2142, !2143, !2145, !2147, !2155, !2156, !2157}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2125, file: !2126, line: 48, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1838, line: 145, baseType: !523)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2125, file: !2126, line: 53, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1838, line: 148, baseType: !523)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2125, file: !2126, line: 61, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1838, line: 151, baseType: !523)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2125, file: !2126, line: 62, baseType: !2135, size: 32, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1838, line: 150, baseType: !7)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2125, file: !2126, line: 64, baseType: !2137, size: 32, offset: 224)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1838, line: 146, baseType: !7)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2125, file: !2126, line: 65, baseType: !2139, size: 32, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1838, line: 147, baseType: !7)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2125, file: !2126, line: 67, baseType: !393, size: 32, offset: 288)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2125, file: !2126, line: 69, baseType: !2129, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2125, file: !2126, line: 74, baseType: !1837, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2125, file: !2126, line: 78, baseType: !2144, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1838, line: 174, baseType: !400)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2125, file: !2126, line: 80, baseType: !2146, size: 64, offset: 512)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1838, line: 179, baseType: !400)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2125, file: !2126, line: 91, baseType: !2148, size: 128, offset: 576)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2149, line: 10, size: 128, elements: !2150)
!2149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2150 = !{!2151, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2148, file: !2149, line: 12, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1838, line: 160, baseType: !400)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2148, file: !2149, line: 16, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1838, line: 196, baseType: !400)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2125, file: !2126, line: 92, baseType: !2148, size: 128, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2125, file: !2126, line: 93, baseType: !2148, size: 128, offset: 832)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2125, file: !2126, line: 106, baseType: !2158, size: 192, offset: 960)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2154, size: 192, elements: !542)
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "__path", arg: 1, scope: !2120, file: !2121, line: 453, type: !398)
!2161 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2120, file: !2121, line: 453, type: !2124)
!2162 = !DILocation(line: 0, scope: !2120)
!2163 = !DILocation(line: 455, column: 10, scope: !2120)
!2164 = !DILocation(line: 455, column: 3, scope: !2120)
!2165 = distinct !DISubprogram(name: "lstat", scope: !2121, file: !2121, line: 460, type: !2122, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167, !2168}
!2167 = !DILocalVariable(name: "__path", arg: 1, scope: !2165, file: !2121, line: 460, type: !398)
!2168 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2165, file: !2121, line: 460, type: !2124)
!2169 = !DILocation(line: 0, scope: !2165)
!2170 = !DILocation(line: 462, column: 10, scope: !2165)
!2171 = !DILocation(line: 462, column: 3, scope: !2165)
!2172 = distinct !DISubprogram(name: "fstat", scope: !2121, file: !2121, line: 467, type: !2173, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!393, !393, !2124}
!2175 = !{!2176, !2177}
!2176 = !DILocalVariable(name: "__fd", arg: 1, scope: !2172, file: !2121, line: 467, type: !393)
!2177 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2172, file: !2121, line: 467, type: !2124)
!2178 = !DILocation(line: 0, scope: !2172)
!2179 = !DILocation(line: 469, column: 10, scope: !2172)
!2180 = !DILocation(line: 469, column: 3, scope: !2172)
!2181 = distinct !DISubprogram(name: "fstatat", scope: !2121, file: !2121, line: 474, type: !2182, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!393, !393, !398, !2124, !393}
!2184 = !{!2185, !2186, !2187, !2188}
!2185 = !DILocalVariable(name: "__fd", arg: 1, scope: !2181, file: !2121, line: 474, type: !393)
!2186 = !DILocalVariable(name: "__filename", arg: 2, scope: !2181, file: !2121, line: 474, type: !398)
!2187 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2181, file: !2121, line: 474, type: !2124)
!2188 = !DILocalVariable(name: "__flag", arg: 4, scope: !2181, file: !2121, line: 474, type: !393)
!2189 = !DILocation(line: 0, scope: !2181)
!2190 = !DILocation(line: 477, column: 10, scope: !2181)
!2191 = !DILocation(line: 477, column: 3, scope: !2181)
!2192 = distinct !DISubprogram(name: "mknod", scope: !2121, file: !2121, line: 483, type: !2193, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!393, !398, !2135, !2129}
!2195 = !{!2196, !2197, !2198}
!2196 = !DILocalVariable(name: "__path", arg: 1, scope: !2192, file: !2121, line: 483, type: !398)
!2197 = !DILocalVariable(name: "__mode", arg: 2, scope: !2192, file: !2121, line: 483, type: !2135)
!2198 = !DILocalVariable(name: "__dev", arg: 3, scope: !2192, file: !2121, line: 483, type: !2129)
!2199 = !DILocation(line: 0, scope: !2192)
!2200 = !DILocation(line: 485, column: 10, scope: !2192)
!2201 = !DILocation(line: 485, column: 3, scope: !2192)
!2202 = distinct !DISubprogram(name: "mknodat", scope: !2121, file: !2121, line: 491, type: !2203, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!393, !393, !398, !2135, !2129}
!2205 = !{!2206, !2207, !2208, !2209}
!2206 = !DILocalVariable(name: "__fd", arg: 1, scope: !2202, file: !2121, line: 491, type: !393)
!2207 = !DILocalVariable(name: "__path", arg: 2, scope: !2202, file: !2121, line: 491, type: !398)
!2208 = !DILocalVariable(name: "__mode", arg: 3, scope: !2202, file: !2121, line: 491, type: !2135)
!2209 = !DILocalVariable(name: "__dev", arg: 4, scope: !2202, file: !2121, line: 491, type: !2129)
!2210 = !DILocation(line: 0, scope: !2202)
!2211 = !DILocation(line: 494, column: 10, scope: !2202)
!2212 = !DILocation(line: 494, column: 3, scope: !2202)
!2213 = distinct !DISubprogram(name: "stat64", scope: !2121, file: !2121, line: 502, type: !2214, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!393, !398, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2126, line: 119, size: 1152, elements: !2218)
!2218 = !{!2219, !2220, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2232, !2233, !2234, !2235}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2217, file: !2126, line: 121, baseType: !2129, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2217, file: !2126, line: 123, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1838, line: 149, baseType: !523)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2217, file: !2126, line: 124, baseType: !2133, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2217, file: !2126, line: 125, baseType: !2135, size: 32, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2217, file: !2126, line: 132, baseType: !2137, size: 32, offset: 224)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2217, file: !2126, line: 133, baseType: !2139, size: 32, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2217, file: !2126, line: 135, baseType: !393, size: 32, offset: 288)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2217, file: !2126, line: 136, baseType: !2129, size: 64, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2217, file: !2126, line: 137, baseType: !1837, size: 64, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2217, file: !2126, line: 143, baseType: !2144, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2217, file: !2126, line: 144, baseType: !2231, size: 64, offset: 512)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1838, line: 180, baseType: !400)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2217, file: !2126, line: 152, baseType: !2148, size: 128, offset: 576)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2217, file: !2126, line: 153, baseType: !2148, size: 128, offset: 704)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2217, file: !2126, line: 154, baseType: !2148, size: 128, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2217, file: !2126, line: 164, baseType: !2158, size: 192, offset: 960)
!2236 = !{!2237, !2238}
!2237 = !DILocalVariable(name: "__path", arg: 1, scope: !2213, file: !2121, line: 502, type: !398)
!2238 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2213, file: !2121, line: 502, type: !2216)
!2239 = !DILocation(line: 0, scope: !2213)
!2240 = !DILocation(line: 504, column: 10, scope: !2213)
!2241 = !DILocation(line: 504, column: 3, scope: !2213)
!2242 = distinct !DISubprogram(name: "lstat64", scope: !2121, file: !2121, line: 509, type: !2214, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "__path", arg: 1, scope: !2242, file: !2121, line: 509, type: !398)
!2245 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2242, file: !2121, line: 509, type: !2216)
!2246 = !DILocation(line: 0, scope: !2242)
!2247 = !DILocation(line: 511, column: 10, scope: !2242)
!2248 = !DILocation(line: 511, column: 3, scope: !2242)
!2249 = distinct !DISubprogram(name: "fstat64", scope: !2121, file: !2121, line: 516, type: !2250, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!393, !393, !2216}
!2252 = !{!2253, !2254}
!2253 = !DILocalVariable(name: "__fd", arg: 1, scope: !2249, file: !2121, line: 516, type: !393)
!2254 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2249, file: !2121, line: 516, type: !2216)
!2255 = !DILocation(line: 0, scope: !2249)
!2256 = !DILocation(line: 518, column: 10, scope: !2249)
!2257 = !DILocation(line: 518, column: 3, scope: !2249)
!2258 = distinct !DISubprogram(name: "fstatat64", scope: !2121, file: !2121, line: 523, type: !2259, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!393, !393, !398, !2216, !393}
!2261 = !{!2262, !2263, !2264, !2265}
!2262 = !DILocalVariable(name: "__fd", arg: 1, scope: !2258, file: !2121, line: 523, type: !393)
!2263 = !DILocalVariable(name: "__filename", arg: 2, scope: !2258, file: !2121, line: 523, type: !398)
!2264 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2258, file: !2121, line: 523, type: !2216)
!2265 = !DILocalVariable(name: "__flag", arg: 4, scope: !2258, file: !2121, line: 523, type: !393)
!2266 = !DILocation(line: 0, scope: !2258)
!2267 = !DILocation(line: 526, column: 10, scope: !2258)
!2268 = !DILocation(line: 526, column: 3, scope: !2258)
!2269 = distinct !DISubprogram(name: "flow_loop_nested_p", scope: !3, file: !3, line: 66, type: !2270, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!392, !1807, !1807}
!2272 = !{!2273, !2274, !2275}
!2273 = !DILocalVariable(name: "outer", arg: 1, scope: !2269, file: !3, line: 66, type: !1807)
!2274 = !DILocalVariable(name: "loop", arg: 2, scope: !2269, file: !3, line: 66, type: !1807)
!2275 = !DILocalVariable(name: "odepth", scope: !2269, file: !3, line: 68, type: !7)
!2276 = !DILocation(line: 0, scope: !2269)
!2277 = !DILocation(line: 68, column: 21, scope: !2269)
!2278 = !DILocation(line: 70, column: 11, scope: !2269)
!2279 = !DILocation(line: 70, column: 29, scope: !2269)
!2280 = !DILocation(line: 71, column: 4, scope: !2269)
!2281 = !DILocation(line: 71, column: 7, scope: !2269)
!2282 = !DILocation(line: 71, column: 52, scope: !2269)
!2283 = !DILocation(line: 70, column: 3, scope: !2269)
!2284 = distinct !DISubprogram(name: "loop_depth", scope: !378, file: !378, line: 425, type: !2285, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!7, !1807}
!2287 = !{!2288}
!2288 = !DILocalVariable(name: "loop", arg: 1, scope: !2284, file: !378, line: 425, type: !1807)
!2289 = !DILocation(line: 0, scope: !2284)
!2290 = !DILocation(line: 427, column: 10, scope: !2284)
!2291 = !DILocation(line: 427, column: 3, scope: !2284)
!2292 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !378, file: !378, line: 85, type: !2293, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2297)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!1122, !2295, !7}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!2297 = !{!2298, !2299}
!2298 = !DILocalVariable(name: "vec_", arg: 1, scope: !2292, file: !378, line: 85, type: !2295)
!2299 = !DILocalVariable(name: "ix_", arg: 2, scope: !2292, file: !378, line: 85, type: !7)
!2300 = !DILocation(line: 0, scope: !2292)
!2301 = !DILocation(line: 85, column: 1, scope: !2292)
!2302 = distinct !DISubprogram(name: "superloop_at_depth", scope: !3, file: !3, line: 78, type: !2303, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!401, !401, !7}
!2305 = !{!2306, !2307, !2308}
!2306 = !DILocalVariable(name: "loop", arg: 1, scope: !2302, file: !3, line: 78, type: !401)
!2307 = !DILocalVariable(name: "depth", arg: 2, scope: !2302, file: !3, line: 78, type: !7)
!2308 = !DILocalVariable(name: "ldepth", scope: !2302, file: !3, line: 80, type: !7)
!2309 = !DILocation(line: 0, scope: !2302)
!2310 = !DILocation(line: 80, column: 21, scope: !2302)
!2311 = !DILocation(line: 82, column: 3, scope: !2302)
!2312 = !DILocation(line: 84, column: 13, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 84, column: 7)
!2314 = !DILocation(line: 84, column: 7, scope: !2302)
!2315 = !DILocation(line: 87, column: 10, scope: !2302)
!2316 = !DILocation(line: 87, column: 3, scope: !2302)
!2317 = !DILocation(line: 88, column: 1, scope: !2302)
!2318 = distinct !DISubprogram(name: "flow_loop_dump", scope: !3, file: !3, line: 112, type: !2319, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !1807, !1811, !2321, !393}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !1807, !1811, !393}
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2325 = !DILocalVariable(name: "loop", arg: 1, scope: !2318, file: !3, line: 112, type: !1807)
!2326 = !DILocalVariable(name: "file", arg: 2, scope: !2318, file: !3, line: 112, type: !1811)
!2327 = !DILocalVariable(name: "loop_dump_aux", arg: 3, scope: !2318, file: !3, line: 113, type: !2321)
!2328 = !DILocalVariable(name: "verbose", arg: 4, scope: !2318, file: !3, line: 114, type: !393)
!2329 = !DILocalVariable(name: "bbs", scope: !2318, file: !3, line: 116, type: !1787)
!2330 = !DILocalVariable(name: "i", scope: !2318, file: !3, line: 117, type: !7)
!2331 = !DILocalVariable(name: "latches", scope: !2318, file: !3, line: 118, type: !1862)
!2332 = !DILocalVariable(name: "e", scope: !2318, file: !3, line: 119, type: !423)
!2333 = !DILocation(line: 0, scope: !2318)
!2334 = !DILocation(line: 118, column: 3, scope: !2318)
!2335 = !DILocation(line: 119, column: 3, scope: !2318)
!2336 = !DILocation(line: 121, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 121, column: 7)
!2338 = !DILocation(line: 121, column: 14, scope: !2337)
!2339 = !DILocation(line: 121, column: 25, scope: !2337)
!2340 = !DILocation(line: 121, column: 19, scope: !2337)
!2341 = !DILocation(line: 121, column: 7, scope: !2318)
!2342 = !DILocation(line: 124, column: 44, scope: !2318)
!2343 = !DILocation(line: 124, column: 3, scope: !2318)
!2344 = !DILocation(line: 126, column: 43, scope: !2318)
!2345 = !DILocation(line: 126, column: 51, scope: !2318)
!2346 = !DILocation(line: 126, column: 3, scope: !2318)
!2347 = !DILocation(line: 127, column: 13, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 127, column: 7)
!2349 = !DILocation(line: 127, column: 7, scope: !2348)
!2350 = !DILocation(line: 127, column: 7, scope: !2318)
!2351 = !DILocation(line: 128, column: 47, scope: !2348)
!2352 = !DILocation(line: 128, column: 5, scope: !2348)
!2353 = !DILocation(line: 131, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 130, column: 5)
!2355 = !DILocation(line: 132, column: 17, scope: !2354)
!2356 = !DILocation(line: 132, column: 15, scope: !2354)
!2357 = !DILocation(line: 133, column: 12, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 133, column: 7)
!2359 = !DILocation(line: 133, column: 19, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 133, column: 7)
!2361 = !DILocation(line: 0, scope: !2358)
!2362 = !DILocation(line: 133, column: 7, scope: !2358)
!2363 = !DILocation(line: 134, column: 24, scope: !2360)
!2364 = !DILocation(line: 134, column: 27, scope: !2360)
!2365 = !DILocation(line: 134, column: 32, scope: !2360)
!2366 = !DILocation(line: 134, column: 2, scope: !2360)
!2367 = !DILocation(line: 133, column: 55, scope: !2360)
!2368 = !DILocation(line: 133, column: 7, scope: !2360)
!2369 = distinct !{!2369, !2362, !2370}
!2370 = !DILocation(line: 134, column: 37, scope: !2358)
!2371 = !DILocation(line: 135, column: 7, scope: !2354)
!2372 = !DILocation(line: 136, column: 7, scope: !2354)
!2373 = !DILocation(line: 140, column: 5, scope: !2318)
!2374 = !DILocation(line: 140, column: 32, scope: !2318)
!2375 = !DILocation(line: 141, column: 13, scope: !2318)
!2376 = !DILocation(line: 141, column: 32, scope: !2318)
!2377 = !DILocation(line: 139, column: 3, scope: !2318)
!2378 = !DILocation(line: 143, column: 3, scope: !2318)
!2379 = !DILocation(line: 144, column: 9, scope: !2318)
!2380 = !DILocation(line: 0, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 145, column: 3)
!2382 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 145, column: 3)
!2383 = !DILocation(line: 145, column: 8, scope: !2382)
!2384 = !DILocation(line: 0, scope: !2382)
!2385 = !DILocation(line: 145, column: 25, scope: !2381)
!2386 = !DILocation(line: 145, column: 17, scope: !2381)
!2387 = !DILocation(line: 145, column: 3, scope: !2382)
!2388 = !DILocation(line: 146, column: 27, scope: !2381)
!2389 = !DILocation(line: 146, column: 35, scope: !2381)
!2390 = !DILocation(line: 146, column: 5, scope: !2381)
!2391 = !DILocation(line: 145, column: 37, scope: !2381)
!2392 = !DILocation(line: 145, column: 3, scope: !2381)
!2393 = distinct !{!2393, !2387, !2394}
!2394 = !DILocation(line: 146, column: 40, scope: !2382)
!2395 = !DILocation(line: 147, column: 9, scope: !2318)
!2396 = !DILocation(line: 147, column: 3, scope: !2318)
!2397 = !DILocation(line: 148, column: 3, scope: !2318)
!2398 = !DILocation(line: 150, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 150, column: 7)
!2400 = !DILocation(line: 150, column: 7, scope: !2318)
!2401 = !DILocation(line: 151, column: 5, scope: !2399)
!2402 = !DILocation(line: 152, column: 1, scope: !2318)
!2403 = distinct !DISubprogram(name: "get_loop_latch_edges", scope: !3, file: !3, line: 93, type: !2404, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!1862, !1807}
!2406 = !{!2407, !2408, !2415, !2416}
!2407 = !DILocalVariable(name: "loop", arg: 1, scope: !2403, file: !3, line: 93, type: !1807)
!2408 = !DILocalVariable(name: "ei", scope: !2403, file: !3, line: 95, type: !2409)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !2410)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2410, file: !135, line: 680, baseType: !7, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2410, file: !135, line: 681, baseType: !2414, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!2415 = !DILocalVariable(name: "e", scope: !2403, file: !3, line: 96, type: !423)
!2416 = !DILocalVariable(name: "ret", scope: !2403, file: !3, line: 97, type: !1862)
!2417 = !DILocation(line: 0, scope: !2403)
!2418 = !DILocation(line: 95, column: 3, scope: !2403)
!2419 = !DILocation(line: 96, column: 3, scope: !2403)
!2420 = !DILocation(line: 97, column: 3, scope: !2403)
!2421 = !DILocation(line: 97, column: 21, scope: !2403)
!2422 = !DILocation(line: 99, column: 3, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 99, column: 3)
!2424 = !DILocation(line: 0, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 99, column: 3)
!2426 = !DILocation(line: 99, column: 3, scope: !2425)
!2427 = !DILocation(line: 101, column: 43, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 101, column: 11)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 100, column: 5)
!2430 = !DILocation(line: 101, column: 46, scope: !2428)
!2431 = !DILocation(line: 101, column: 57, scope: !2428)
!2432 = !DILocation(line: 101, column: 11, scope: !2428)
!2433 = !DILocation(line: 101, column: 11, scope: !2429)
!2434 = !DILocation(line: 102, column: 2, scope: !2428)
!2435 = distinct !{!2435, !2422, !2436}
!2436 = !DILocation(line: 103, column: 5, scope: !2423)
!2437 = !DILocation(line: 105, column: 10, scope: !2403)
!2438 = !DILocation(line: 106, column: 1, scope: !2403)
!2439 = !DILocation(line: 105, column: 3, scope: !2403)
!2440 = distinct !DISubprogram(name: "VEC_edge_base_iterate", scope: !135, file: !135, line: 150, type: !2441, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!393, !2443, !7, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!2446 = !{!2447, !2448, !2449}
!2447 = !DILocalVariable(name: "vec_", arg: 1, scope: !2440, file: !135, line: 150, type: !2443)
!2448 = !DILocalVariable(name: "ix_", arg: 2, scope: !2440, file: !135, line: 150, type: !7)
!2449 = !DILocalVariable(name: "ptr", arg: 3, scope: !2440, file: !135, line: 150, type: !2445)
!2450 = !DILocation(line: 0, scope: !2440)
!2451 = !DILocation(line: 150, column: 1, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2440, file: !135, line: 150, column: 1)
!2453 = !DILocation(line: 150, column: 1, scope: !2440)
!2454 = !DILocation(line: 150, column: 1, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !135, line: 150, column: 1)
!2456 = !DILocation(line: 150, column: 1, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !135, line: 150, column: 1)
!2458 = !DILocation(line: 0, scope: !2452)
!2459 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !135, file: !135, line: 152, type: !2460, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2463)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "vec_", arg: 1, scope: !2459, file: !135, line: 152, type: !2462)
!2465 = !DILocation(line: 0, scope: !2459)
!2466 = !DILocation(line: 152, column: 1, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2459, file: !135, line: 152, column: 1)
!2468 = !DILocation(line: 152, column: 1, scope: !2459)
!2469 = distinct !DISubprogram(name: "loop_outer", scope: !378, file: !378, line: 434, type: !2470, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!401, !1807}
!2472 = !{!2473, !2474}
!2473 = !DILocalVariable(name: "loop", arg: 1, scope: !2469, file: !378, line: 434, type: !1807)
!2474 = !DILocalVariable(name: "n", scope: !2469, file: !378, line: 436, type: !7)
!2475 = !DILocation(line: 0, scope: !2469)
!2476 = !DILocation(line: 436, column: 16, scope: !2469)
!2477 = !DILocation(line: 438, column: 9, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2469, file: !378, line: 438, column: 7)
!2479 = !DILocation(line: 438, column: 7, scope: !2469)
!2480 = !DILocation(line: 441, column: 10, scope: !2469)
!2481 = !DILocation(line: 441, column: 3, scope: !2469)
!2482 = !DILocation(line: 442, column: 1, scope: !2469)
!2483 = distinct !DISubprogram(name: "get_loop_body", scope: !3, file: !3, line: 813, type: !2484, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!1787, !1807}
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DILocalVariable(name: "loop", arg: 1, scope: !2483, file: !3, line: 813, type: !1807)
!2488 = !DILocalVariable(name: "body", scope: !2483, file: !3, line: 815, type: !1787)
!2489 = !DILocalVariable(name: "bb", scope: !2483, file: !3, line: 815, type: !938)
!2490 = !DILocalVariable(name: "tv", scope: !2483, file: !3, line: 816, type: !7)
!2491 = !DILocation(line: 0, scope: !2483)
!2492 = !DILocation(line: 818, column: 3, scope: !2483)
!2493 = !DILocation(line: 820, column: 10, scope: !2483)
!2494 = !DILocation(line: 822, column: 13, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 822, column: 7)
!2496 = !DILocation(line: 822, column: 22, scope: !2495)
!2497 = !DILocation(line: 822, column: 19, scope: !2495)
!2498 = !DILocation(line: 0, scope: !2495)
!2499 = !DILocation(line: 822, column: 7, scope: !2483)
!2500 = !DILocation(line: 826, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 823, column: 5)
!2502 = !DILocation(line: 827, column: 26, scope: !2501)
!2503 = !DILocation(line: 827, column: 18, scope: !2501)
!2504 = !DILocation(line: 828, column: 20, scope: !2501)
!2505 = !DILocation(line: 828, column: 7, scope: !2501)
!2506 = !DILocation(line: 828, column: 18, scope: !2501)
!2507 = !DILocation(line: 829, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 829, column: 7)
!2509 = !DILocation(line: 829, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 829, column: 7)
!2511 = !DILocation(line: 0, scope: !2501)
!2512 = !DILocation(line: 0, scope: !2508)
!2513 = !DILocation(line: 830, column: 9, scope: !2510)
!2514 = !DILocation(line: 830, column: 2, scope: !2510)
!2515 = !DILocation(line: 830, column: 13, scope: !2510)
!2516 = !DILocation(line: 0, scope: !2510)
!2517 = distinct !{!2517, !2507, !2518}
!2518 = !DILocation(line: 830, column: 15, scope: !2508)
!2519 = !DILocation(line: 833, column: 10, scope: !2495)
!2520 = !DILocation(line: 835, column: 3, scope: !2483)
!2521 = !DILocation(line: 836, column: 3, scope: !2483)
!2522 = distinct !DISubprogram(name: "flow_loops_dump", scope: !3, file: !3, line: 158, type: !2523, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !1811, !2321, !393}
!2525 = !{!2526, !2527, !2528, !2529, !2535}
!2526 = !DILocalVariable(name: "file", arg: 1, scope: !2522, file: !3, line: 158, type: !1811)
!2527 = !DILocalVariable(name: "loop_dump_aux", arg: 2, scope: !2522, file: !3, line: 158, type: !2321)
!2528 = !DILocalVariable(name: "verbose", arg: 3, scope: !2522, file: !3, line: 158, type: !393)
!2529 = !DILocalVariable(name: "li", scope: !2522, file: !3, line: 160, type: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !378, line: 515, baseType: !2531)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 508, size: 128, elements: !2532)
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2531, file: !378, line: 511, baseType: !1789, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2531, file: !378, line: 514, baseType: !7, size: 32, offset: 64)
!2535 = !DILocalVariable(name: "loop", scope: !2522, file: !3, line: 161, type: !401)
!2536 = !DILocation(line: 0, scope: !2522)
!2537 = !DILocation(line: 160, column: 3, scope: !2522)
!2538 = !DILocation(line: 161, column: 3, scope: !2522)
!2539 = !DILocation(line: 163, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 163, column: 7)
!2541 = !DILocation(line: 163, column: 27, scope: !2540)
!2542 = !DILocation(line: 163, column: 22, scope: !2540)
!2543 = !DILocation(line: 166, column: 41, scope: !2522)
!2544 = !DILocation(line: 166, column: 3, scope: !2522)
!2545 = !DILocation(line: 168, column: 3, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 168, column: 3)
!2547 = !DILocation(line: 168, column: 3, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 168, column: 3)
!2549 = !DILocation(line: 170, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 169, column: 5)
!2551 = distinct !{!2551, !2545, !2552}
!2552 = !DILocation(line: 171, column: 5, scope: !2546)
!2553 = !DILocation(line: 173, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 173, column: 7)
!2555 = !DILocation(line: 173, column: 7, scope: !2522)
!2556 = !DILocation(line: 174, column: 5, scope: !2554)
!2557 = !DILocation(line: 175, column: 1, scope: !2522)
!2558 = distinct !DISubprogram(name: "number_of_loops", scope: !378, file: !378, line: 459, type: !2559, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!7}
!2561 = !DILocation(line: 461, column: 8, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2558, file: !378, line: 461, column: 7)
!2563 = !DILocation(line: 461, column: 7, scope: !2558)
!2564 = !DILocation(line: 464, column: 10, scope: !2558)
!2565 = !DILocation(line: 464, column: 3, scope: !2558)
!2566 = !DILocation(line: 0, scope: !2558)
!2567 = !DILocation(line: 465, column: 1, scope: !2558)
!2568 = distinct !DISubprogram(name: "fel_init", scope: !378, file: !378, line: 535, type: !2569, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2573)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2571, !2572, !7}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579}
!2574 = !DILocalVariable(name: "li", arg: 1, scope: !2568, file: !378, line: 535, type: !2571)
!2575 = !DILocalVariable(name: "loop", arg: 2, scope: !2568, file: !378, line: 535, type: !2572)
!2576 = !DILocalVariable(name: "flags", arg: 3, scope: !2568, file: !378, line: 535, type: !7)
!2577 = !DILocalVariable(name: "aloop", scope: !2568, file: !378, line: 537, type: !401)
!2578 = !DILocalVariable(name: "i", scope: !2568, file: !378, line: 538, type: !7)
!2579 = !DILocalVariable(name: "mn", scope: !2568, file: !378, line: 539, type: !393)
!2580 = !DILocation(line: 0, scope: !2568)
!2581 = !DILocation(line: 537, column: 3, scope: !2568)
!2582 = !DILocation(line: 541, column: 7, scope: !2568)
!2583 = !DILocation(line: 541, column: 11, scope: !2568)
!2584 = !DILocation(line: 542, column: 8, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2568, file: !378, line: 542, column: 7)
!2586 = !DILocation(line: 542, column: 7, scope: !2568)
!2587 = !DILocation(line: 544, column: 11, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !378, line: 543, column: 5)
!2589 = !DILocation(line: 544, column: 20, scope: !2588)
!2590 = !DILocation(line: 545, column: 13, scope: !2588)
!2591 = !DILocation(line: 546, column: 7, scope: !2588)
!2592 = !DILocation(line: 549, column: 18, scope: !2568)
!2593 = !DILocation(line: 549, column: 7, scope: !2568)
!2594 = !DILocation(line: 549, column: 16, scope: !2568)
!2595 = !DILocation(line: 550, column: 15, scope: !2568)
!2596 = !DILocation(line: 550, column: 8, scope: !2568)
!2597 = !DILocation(line: 552, column: 13, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2568, file: !378, line: 552, column: 7)
!2599 = !DILocation(line: 552, column: 7, scope: !2568)
!2600 = !DILocation(line: 554, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !378, line: 554, column: 7)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !378, line: 553, column: 5)
!2603 = !DILocation(line: 0, scope: !2601)
!2604 = !DILocation(line: 554, column: 19, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !378, line: 554, column: 7)
!2606 = !DILocation(line: 555, column: 6, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !378, line: 555, column: 6)
!2608 = !DILocation(line: 555, column: 12, scope: !2607)
!2609 = !DILocation(line: 556, column: 6, scope: !2607)
!2610 = !DILocation(line: 556, column: 16, scope: !2607)
!2611 = !DILocation(line: 556, column: 22, scope: !2607)
!2612 = !DILocation(line: 557, column: 6, scope: !2607)
!2613 = !DILocation(line: 557, column: 16, scope: !2607)
!2614 = !DILocation(line: 557, column: 20, scope: !2607)
!2615 = !DILocation(line: 555, column: 6, scope: !2605)
!2616 = !DILocation(line: 558, column: 4, scope: !2607)
!2617 = !DILocation(line: 554, column: 75, scope: !2605)
!2618 = !DILocation(line: 554, column: 7, scope: !2605)
!2619 = distinct !{!2619, !2600, !2620}
!2620 = !DILocation(line: 558, column: 4, scope: !2601)
!2621 = !DILocation(line: 560, column: 18, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2598, file: !378, line: 560, column: 12)
!2623 = !DILocation(line: 0, scope: !2622)
!2624 = !DILocation(line: 560, column: 12, scope: !2598)
!2625 = !DILocation(line: 563, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !378, line: 563, column: 7)
!2627 = distinct !DILexicalBlock(scope: !2622, file: !378, line: 561, column: 5)
!2628 = !DILocation(line: 590, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2622, file: !378, line: 587, column: 5)
!2630 = !DILocation(line: 564, column: 5, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !378, line: 563, column: 7)
!2632 = !DILocation(line: 564, column: 12, scope: !2631)
!2633 = !DILocation(line: 564, column: 18, scope: !2631)
!2634 = !DILocation(line: 568, column: 7, scope: !2627)
!2635 = !DILocation(line: 565, column: 20, scope: !2631)
!2636 = !DILocation(line: 565, column: 11, scope: !2631)
!2637 = !DILocation(line: 563, column: 7, scope: !2631)
!2638 = distinct !{!2638, !2625, !2639}
!2639 = !DILocation(line: 566, column: 2, scope: !2626)
!2640 = !DILocation(line: 570, column: 8, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !378, line: 570, column: 8)
!2642 = distinct !DILexicalBlock(scope: !2627, file: !378, line: 569, column: 2)
!2643 = !DILocation(line: 570, column: 15, scope: !2641)
!2644 = !DILocation(line: 570, column: 19, scope: !2641)
!2645 = !DILocation(line: 570, column: 8, scope: !2642)
!2646 = !DILocation(line: 571, column: 6, scope: !2641)
!2647 = !DILocation(line: 573, column: 15, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2642, file: !378, line: 573, column: 8)
!2649 = !DILocation(line: 573, column: 8, scope: !2648)
!2650 = !DILocation(line: 573, column: 8, scope: !2642)
!2651 = !DILocation(line: 575, column: 19, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !378, line: 575, column: 8)
!2653 = distinct !DILexicalBlock(scope: !2648, file: !378, line: 574, column: 6)
!2654 = !DILocation(line: 575, column: 13, scope: !2652)
!2655 = !DILocation(line: 576, column: 6, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2652, file: !378, line: 575, column: 8)
!2657 = !DILocation(line: 576, column: 13, scope: !2656)
!2658 = !DILocation(line: 576, column: 19, scope: !2656)
!2659 = !DILocation(line: 575, column: 8, scope: !2652)
!2660 = !DILocation(line: 577, column: 21, scope: !2656)
!2661 = !DILocation(line: 577, column: 12, scope: !2656)
!2662 = !DILocation(line: 575, column: 8, scope: !2656)
!2663 = distinct !{!2663, !2659, !2664}
!2664 = !DILocation(line: 578, column: 3, scope: !2652)
!2665 = !DILocation(line: 580, column: 14, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2648, file: !378, line: 580, column: 13)
!2667 = !DILocation(line: 580, column: 13, scope: !2648)
!2668 = !DILocation(line: 583, column: 14, scope: !2666)
!2669 = !DILocation(line: 583, column: 12, scope: !2666)
!2670 = distinct !{!2670, !2634, !2671}
!2671 = !DILocation(line: 584, column: 2, scope: !2627)
!2672 = !DILocation(line: 592, column: 8, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !378, line: 592, column: 8)
!2674 = distinct !DILexicalBlock(scope: !2629, file: !378, line: 591, column: 2)
!2675 = !DILocation(line: 592, column: 15, scope: !2673)
!2676 = !DILocation(line: 592, column: 19, scope: !2673)
!2677 = !DILocation(line: 592, column: 8, scope: !2674)
!2678 = !DILocation(line: 593, column: 6, scope: !2673)
!2679 = !DILocation(line: 595, column: 15, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2674, file: !378, line: 595, column: 8)
!2681 = !DILocation(line: 595, column: 21, scope: !2680)
!2682 = !DILocation(line: 595, column: 8, scope: !2674)
!2683 = !DILocation(line: 599, column: 8, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !378, line: 598, column: 6)
!2685 = !DILocation(line: 596, column: 21, scope: !2680)
!2686 = !DILocation(line: 596, column: 12, scope: !2680)
!2687 = !DILocation(line: 596, column: 6, scope: !2680)
!2688 = !DILocation(line: 599, column: 15, scope: !2684)
!2689 = !DILocation(line: 599, column: 21, scope: !2684)
!2690 = !DILocation(line: 599, column: 29, scope: !2684)
!2691 = !DILocation(line: 599, column: 39, scope: !2684)
!2692 = !DILocation(line: 599, column: 44, scope: !2684)
!2693 = !DILocation(line: 0, scope: !2684)
!2694 = !DILocation(line: 600, column: 11, scope: !2684)
!2695 = !DILocation(line: 600, column: 9, scope: !2684)
!2696 = distinct !{!2696, !2683, !2697}
!2697 = !DILocation(line: 600, column: 28, scope: !2684)
!2698 = !DILocation(line: 601, column: 18, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2684, file: !378, line: 601, column: 12)
!2700 = !DILocation(line: 601, column: 12, scope: !2684)
!2701 = !DILocation(line: 603, column: 23, scope: !2684)
!2702 = !DILocation(line: 603, column: 14, scope: !2684)
!2703 = distinct !{!2703, !2628, !2704}
!2704 = !DILocation(line: 605, column: 2, scope: !2629)
!2705 = !DILocation(line: 608, column: 3, scope: !2568)
!2706 = !DILocation(line: 609, column: 1, scope: !2568)
!2707 = distinct !DISubprogram(name: "fel_next", scope: !378, file: !378, line: 518, type: !2708, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !2571, !2572}
!2710 = !{!2711, !2712, !2713}
!2711 = !DILocalVariable(name: "li", arg: 1, scope: !2707, file: !378, line: 518, type: !2571)
!2712 = !DILocalVariable(name: "loop", arg: 2, scope: !2707, file: !378, line: 518, type: !2572)
!2713 = !DILocalVariable(name: "anum", scope: !2707, file: !378, line: 520, type: !393)
!2714 = !DILocation(line: 0, scope: !2707)
!2715 = !DILocation(line: 520, column: 3, scope: !2707)
!2716 = !DILocation(line: 522, column: 3, scope: !2707)
!2717 = !DILocation(line: 522, column: 10, scope: !2707)
!2718 = !DILocation(line: 524, column: 14, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2707, file: !378, line: 523, column: 5)
!2720 = !DILocation(line: 525, column: 25, scope: !2719)
!2721 = !DILocation(line: 525, column: 15, scope: !2719)
!2722 = !DILocation(line: 525, column: 13, scope: !2719)
!2723 = !DILocation(line: 526, column: 11, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !378, line: 526, column: 11)
!2725 = !DILocation(line: 526, column: 11, scope: !2719)
!2726 = distinct !{!2726, !2716, !2727}
!2727 = !DILocation(line: 528, column: 5, scope: !2707)
!2728 = !DILocation(line: 530, column: 3, scope: !2707)
!2729 = !DILocation(line: 531, column: 9, scope: !2707)
!2730 = !DILocation(line: 532, column: 1, scope: !2707)
!2731 = distinct !DISubprogram(name: "flow_loops_cfg_dump", scope: !3, file: !3, line: 44, type: !2732, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{null, !1811}
!2734 = !{!2735, !2736, !2737, !2741}
!2735 = !DILocalVariable(name: "file", arg: 1, scope: !2731, file: !3, line: 44, type: !1811)
!2736 = !DILocalVariable(name: "bb", scope: !2731, file: !3, line: 46, type: !938)
!2737 = !DILocalVariable(name: "succ", scope: !2738, file: !3, line: 53, type: !423)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 52, column: 5)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 51, column: 3)
!2740 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 51, column: 3)
!2741 = !DILocalVariable(name: "ei", scope: !2738, file: !3, line: 54, type: !2409)
!2742 = !DILocation(line: 0, scope: !2731)
!2743 = !DILocation(line: 48, column: 8, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 48, column: 7)
!2745 = !DILocation(line: 48, column: 7, scope: !2731)
!2746 = !DILocation(line: 51, column: 3, scope: !2740)
!2747 = !DILocation(line: 0, scope: !2738)
!2748 = !DILocation(line: 0, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 57, column: 7)
!2750 = !DILocation(line: 0, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 57, column: 7)
!2752 = !DILocation(line: 51, column: 3, scope: !2739)
!2753 = !DILocation(line: 0, scope: !2740)
!2754 = !DILocation(line: 53, column: 7, scope: !2738)
!2755 = !DILocation(line: 54, column: 7, scope: !2738)
!2756 = !DILocation(line: 56, column: 44, scope: !2738)
!2757 = !DILocation(line: 56, column: 7, scope: !2738)
!2758 = !DILocation(line: 57, column: 7, scope: !2749)
!2759 = !DILocation(line: 57, column: 7, scope: !2751)
!2760 = !DILocation(line: 58, column: 24, scope: !2751)
!2761 = !DILocation(line: 58, column: 30, scope: !2751)
!2762 = !DILocation(line: 58, column: 36, scope: !2751)
!2763 = !DILocation(line: 58, column: 2, scope: !2751)
!2764 = distinct !{!2764, !2758, !2765}
!2765 = !DILocation(line: 58, column: 41, scope: !2749)
!2766 = !DILocation(line: 59, column: 7, scope: !2738)
!2767 = !DILocation(line: 60, column: 5, scope: !2739)
!2768 = !DILocation(line: 0, scope: !2739)
!2769 = distinct !{!2769, !2746, !2770}
!2770 = !DILocation(line: 60, column: 5, scope: !2740)
!2771 = !DILocation(line: 61, column: 1, scope: !2731)
!2772 = distinct !DISubprogram(name: "flow_loop_free", scope: !3, file: !3, line: 180, type: !2773, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !401}
!2775 = !{!2776, !2777, !2778}
!2776 = !DILocalVariable(name: "loop", arg: 1, scope: !2772, file: !3, line: 180, type: !401)
!2777 = !DILocalVariable(name: "exit", scope: !2772, file: !3, line: 182, type: !1777)
!2778 = !DILocalVariable(name: "next", scope: !2772, file: !3, line: 182, type: !1777)
!2779 = !DILocation(line: 0, scope: !2772)
!2780 = !DILocation(line: 184, column: 3, scope: !2772)
!2781 = !DILocation(line: 190, column: 21, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 190, column: 3)
!2783 = !DILocation(line: 190, column: 28, scope: !2782)
!2784 = !DILocation(line: 190, column: 8, scope: !2782)
!2785 = !DILocation(line: 190, column: 48, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 190, column: 3)
!2787 = !DILocation(line: 0, scope: !2782)
!2788 = !DILocation(line: 190, column: 39, scope: !2786)
!2789 = !DILocation(line: 190, column: 3, scope: !2782)
!2790 = !DILocation(line: 192, column: 20, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 191, column: 5)
!2792 = !DILocation(line: 193, column: 18, scope: !2791)
!2793 = !DILocation(line: 194, column: 13, scope: !2791)
!2794 = !DILocation(line: 194, column: 18, scope: !2791)
!2795 = !DILocation(line: 190, column: 3, scope: !2786)
!2796 = distinct !{!2796, !2789, !2797}
!2797 = !DILocation(line: 195, column: 5, scope: !2782)
!2798 = !DILocation(line: 197, column: 3, scope: !2772)
!2799 = !DILocation(line: 198, column: 13, scope: !2772)
!2800 = !DILocation(line: 198, column: 3, scope: !2772)
!2801 = !DILocation(line: 199, column: 1, scope: !2772)
!2802 = distinct !DISubprogram(name: "VEC_loop_p_gc_free", scope: !378, file: !378, line: 87, type: !2803, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "vec_", arg: 1, scope: !2802, file: !378, line: 87, type: !2805)
!2808 = !DILocation(line: 0, scope: !2802)
!2809 = !DILocation(line: 87, column: 1, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2802, file: !378, line: 87, column: 1)
!2811 = !DILocation(line: 87, column: 1, scope: !2802)
!2812 = distinct !DISubprogram(name: "flow_loops_free", scope: !3, file: !3, line: 204, type: !2813, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !1105}
!2815 = !{!2816, !2817, !2820}
!2816 = !DILocalVariable(name: "loops", arg: 1, scope: !2812, file: !3, line: 204, type: !1105)
!2817 = !DILocalVariable(name: "i", scope: !2818, file: !3, line: 208, type: !7)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 207, column: 5)
!2819 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 206, column: 7)
!2820 = !DILocalVariable(name: "loop", scope: !2818, file: !3, line: 209, type: !1122)
!2821 = !DILocation(line: 0, scope: !2812)
!2822 = !DILocation(line: 206, column: 14, scope: !2819)
!2823 = !DILocation(line: 206, column: 7, scope: !2819)
!2824 = !DILocation(line: 206, column: 7, scope: !2812)
!2825 = !DILocation(line: 209, column: 7, scope: !2818)
!2826 = !DILocation(line: 0, scope: !2818)
!2827 = !DILocation(line: 212, column: 12, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 212, column: 7)
!2829 = !DILocation(line: 212, column: 19, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 212, column: 7)
!2831 = !DILocation(line: 0, scope: !2828)
!2832 = !DILocation(line: 212, column: 7, scope: !2828)
!2833 = !DILocation(line: 214, column: 9, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 214, column: 8)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 213, column: 2)
!2836 = !DILocation(line: 214, column: 8, scope: !2835)
!2837 = !DILocation(line: 217, column: 4, scope: !2835)
!2838 = !DILocation(line: 218, column: 2, scope: !2835)
!2839 = !DILocation(line: 212, column: 66, scope: !2830)
!2840 = !DILocation(line: 212, column: 7, scope: !2830)
!2841 = distinct !{!2841, !2832, !2842}
!2842 = !DILocation(line: 218, column: 2, scope: !2828)
!2843 = !DILocation(line: 220, column: 7, scope: !2818)
!2844 = !DILocation(line: 221, column: 5, scope: !2819)
!2845 = !DILocation(line: 221, column: 5, scope: !2818)
!2846 = !DILocation(line: 222, column: 1, scope: !2812)
!2847 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !378, file: !378, line: 85, type: !2848, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!393, !2295, !7, !2572}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "vec_", arg: 1, scope: !2847, file: !378, line: 85, type: !2295)
!2852 = !DILocalVariable(name: "ix_", arg: 2, scope: !2847, file: !378, line: 85, type: !7)
!2853 = !DILocalVariable(name: "ptr", arg: 3, scope: !2847, file: !378, line: 85, type: !2572)
!2854 = !DILocation(line: 0, scope: !2847)
!2855 = !DILocation(line: 85, column: 1, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2847, file: !378, line: 85, column: 1)
!2857 = !DILocation(line: 85, column: 1, scope: !2847)
!2858 = !DILocation(line: 85, column: 1, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !378, line: 85, column: 1)
!2860 = !DILocation(line: 85, column: 1, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !378, line: 85, column: 1)
!2862 = !DILocation(line: 0, scope: !2856)
!2863 = distinct !DISubprogram(name: "flow_loop_nodes_find", scope: !3, file: !3, line: 228, type: !2864, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!393, !938, !401}
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2879, !2880, !2881}
!2867 = !DILocalVariable(name: "header", arg: 1, scope: !2863, file: !3, line: 228, type: !938)
!2868 = !DILocalVariable(name: "loop", arg: 2, scope: !2863, file: !3, line: 228, type: !401)
!2869 = !DILocalVariable(name: "stack", scope: !2863, file: !3, line: 230, type: !1802)
!2870 = !DILocalVariable(name: "num_nodes", scope: !2863, file: !3, line: 231, type: !393)
!2871 = !DILocalVariable(name: "latch", scope: !2863, file: !3, line: 232, type: !423)
!2872 = !DILocalVariable(name: "latch_ei", scope: !2863, file: !3, line: 233, type: !2409)
!2873 = !DILocalVariable(name: "depth", scope: !2863, file: !3, line: 234, type: !7)
!2874 = !DILocalVariable(name: "node", scope: !2875, file: !3, line: 252, type: !938)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 251, column: 2)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 240, column: 5)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 239, column: 3)
!2878 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 239, column: 3)
!2879 = !DILocalVariable(name: "e", scope: !2875, file: !3, line: 253, type: !423)
!2880 = !DILocalVariable(name: "ei", scope: !2875, file: !3, line: 254, type: !2409)
!2881 = !DILocalVariable(name: "ancestor", scope: !2882, file: !3, line: 260, type: !938)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 259, column: 6)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 258, column: 4)
!2884 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 258, column: 4)
!2885 = !DILocation(line: 0, scope: !2863)
!2886 = !DILocation(line: 230, column: 3, scope: !2863)
!2887 = !DILocation(line: 230, column: 28, scope: !2863)
!2888 = !DILocation(line: 232, column: 3, scope: !2863)
!2889 = !DILocation(line: 233, column: 3, scope: !2863)
!2890 = !DILocation(line: 234, column: 20, scope: !2863)
!2891 = !DILocation(line: 236, column: 11, scope: !2863)
!2892 = !DILocation(line: 236, column: 23, scope: !2863)
!2893 = !DILocation(line: 237, column: 11, scope: !2863)
!2894 = !DILocation(line: 237, column: 22, scope: !2863)
!2895 = !DILocation(line: 239, column: 3, scope: !2878)
!2896 = !DILocation(line: 0, scope: !2877)
!2897 = !DILocation(line: 0, scope: !2875)
!2898 = !DILocation(line: 0, scope: !2884)
!2899 = !DILocation(line: 0, scope: !2883)
!2900 = !DILocation(line: 231, column: 7, scope: !2863)
!2901 = !DILocation(line: 239, column: 3, scope: !2877)
!2902 = !DILocation(line: 241, column: 11, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 241, column: 11)
!2904 = !DILocation(line: 241, column: 18, scope: !2903)
!2905 = !DILocation(line: 241, column: 23, scope: !2903)
!2906 = !DILocation(line: 241, column: 35, scope: !2903)
!2907 = !DILocation(line: 242, column: 4, scope: !2903)
!2908 = !DILocation(line: 242, column: 58, scope: !2903)
!2909 = !DILocation(line: 242, column: 8, scope: !2903)
!2910 = !DILocation(line: 241, column: 11, scope: !2876)
!2911 = !DILocation(line: 245, column: 16, scope: !2876)
!2912 = !DILocation(line: 246, column: 7, scope: !2876)
!2913 = !DILocation(line: 247, column: 7, scope: !2876)
!2914 = !DILocation(line: 247, column: 14, scope: !2876)
!2915 = !DILocation(line: 247, column: 19, scope: !2876)
!2916 = !DILocation(line: 247, column: 31, scope: !2876)
!2917 = !DILocation(line: 248, column: 14, scope: !2876)
!2918 = !DILocation(line: 248, column: 19, scope: !2876)
!2919 = !DILocation(line: 248, column: 30, scope: !2876)
!2920 = !DILocation(line: 250, column: 7, scope: !2876)
!2921 = !DILocation(line: 250, column: 15, scope: !2876)
!2922 = !DILocation(line: 253, column: 4, scope: !2875)
!2923 = !DILocation(line: 254, column: 4, scope: !2875)
!2924 = !DILocation(line: 256, column: 11, scope: !2875)
!2925 = !DILocation(line: 258, column: 4, scope: !2884)
!2926 = !DILocation(line: 0, scope: !2876)
!2927 = !DILocation(line: 258, column: 4, scope: !2883)
!2928 = !DILocation(line: 260, column: 31, scope: !2882)
!2929 = !DILocation(line: 260, column: 34, scope: !2882)
!2930 = !DILocation(line: 0, scope: !2882)
!2931 = !DILocation(line: 262, column: 22, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 262, column: 12)
!2933 = !DILocation(line: 262, column: 34, scope: !2932)
!2934 = !DILocation(line: 262, column: 12, scope: !2882)
!2935 = !DILocation(line: 264, column: 27, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 263, column: 3)
!2937 = !DILocation(line: 265, column: 15, scope: !2936)
!2938 = !DILocation(line: 265, column: 26, scope: !2936)
!2939 = !DILocation(line: 266, column: 14, scope: !2936)
!2940 = !DILocation(line: 267, column: 5, scope: !2936)
!2941 = !DILocation(line: 268, column: 3, scope: !2936)
!2942 = distinct !{!2942, !2925, !2943}
!2943 = !DILocation(line: 269, column: 6, scope: !2884)
!2944 = !DILocation(line: 270, column: 2, scope: !2876)
!2945 = distinct !{!2945, !2920, !2944}
!2946 = distinct !{!2946, !2895, !2947}
!2947 = !DILocation(line: 271, column: 5, scope: !2878)
!2948 = !DILocation(line: 272, column: 3, scope: !2863)
!2949 = !DILocation(line: 275, column: 1, scope: !2863)
!2950 = !DILocation(line: 274, column: 3, scope: !2863)
!2951 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !2952, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!2409, !2414}
!2954 = !{!2955, !2956}
!2955 = !DILocalVariable(name: "ev", arg: 1, scope: !2951, file: !135, line: 696, type: !2414)
!2956 = !DILocalVariable(name: "i", scope: !2951, file: !135, line: 698, type: !2409)
!2957 = !DILocation(line: 0, scope: !2951)
!2958 = !DILocation(line: 700, column: 5, scope: !2951)
!2959 = !DILocation(line: 700, column: 11, scope: !2951)
!2960 = !DILocation(line: 701, column: 5, scope: !2951)
!2961 = !DILocation(line: 701, column: 15, scope: !2951)
!2962 = !DILocation(line: 703, column: 3, scope: !2951)
!2963 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !2964, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!392, !2409, !2445}
!2966 = !{!2967, !2968}
!2967 = !DILocalVariable(name: "ei", arg: 1, scope: !2963, file: !135, line: 771, type: !2409)
!2968 = !DILocalVariable(name: "p", arg: 2, scope: !2963, file: !135, line: 771, type: !2445)
!2969 = !DILocation(line: 0, scope: !2963)
!2970 = !DILocation(line: 773, column: 8, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2963, file: !135, line: 773, column: 7)
!2972 = !DILocation(line: 773, column: 7, scope: !2963)
!2973 = !DILocation(line: 775, column: 12, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !135, line: 774, column: 5)
!2975 = !DILocation(line: 776, column: 7, scope: !2974)
!2976 = !DILocation(line: 781, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2971, file: !135, line: 779, column: 5)
!2978 = !DILocation(line: 0, scope: !2971)
!2979 = !DILocation(line: 783, column: 1, scope: !2963)
!2980 = distinct !DISubprogram(name: "VEC_basic_block_heap_safe_push", scope: !135, file: !135, line: 283, type: !2981, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2984)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!1787, !2983, !938}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!2984 = !{!2985, !2986}
!2985 = !DILocalVariable(name: "vec_", arg: 1, scope: !2980, file: !135, line: 283, type: !2983)
!2986 = !DILocalVariable(name: "obj_", arg: 2, scope: !2980, file: !135, line: 283, type: !938)
!2987 = !DILocation(line: 0, scope: !2980)
!2988 = !DILocation(line: 283, column: 1, scope: !2980)
!2989 = distinct !DISubprogram(name: "VEC_basic_block_base_length", scope: !135, file: !135, line: 281, type: !2990, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2994)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!7, !2992}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "vec_", arg: 1, scope: !2989, file: !135, line: 281, type: !2992)
!2996 = !DILocation(line: 0, scope: !2989)
!2997 = !DILocation(line: 281, column: 1, scope: !2989)
!2998 = distinct !DISubprogram(name: "VEC_basic_block_base_pop", scope: !135, file: !135, line: 281, type: !2999, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3002)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!938, !3001}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!3002 = !{!3003, !3004}
!3003 = !DILocalVariable(name: "vec_", arg: 1, scope: !2998, file: !135, line: 281, type: !3001)
!3004 = !DILocalVariable(name: "obj_", scope: !2998, file: !135, line: 281, type: !938)
!3005 = !DILocation(line: 0, scope: !2998)
!3006 = !DILocation(line: 281, column: 1, scope: !2998)
!3007 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !3008, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !3010}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!3011 = !{!3012}
!3012 = !DILocalVariable(name: "i", arg: 1, scope: !3007, file: !135, line: 736, type: !3010)
!3013 = !DILocation(line: 0, scope: !3007)
!3014 = !DILocation(line: 738, column: 3, scope: !3007)
!3015 = !DILocation(line: 739, column: 11, scope: !3007)
!3016 = !DILocation(line: 740, column: 1, scope: !3007)
!3017 = distinct !DISubprogram(name: "VEC_basic_block_heap_free", scope: !135, file: !135, line: 283, type: !3018, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2983}
!3020 = !{!3021}
!3021 = !DILocalVariable(name: "vec_", arg: 1, scope: !3017, file: !135, line: 283, type: !2983)
!3022 = !DILocation(line: 0, scope: !3017)
!3023 = !DILocation(line: 283, column: 1, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3017, file: !135, line: 283, column: 1)
!3025 = !DILocation(line: 283, column: 1, scope: !3017)
!3026 = distinct !DISubprogram(name: "flow_loop_tree_node_add", scope: !3, file: !3, line: 302, type: !3027, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !401, !401}
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "father", arg: 1, scope: !3026, file: !3, line: 302, type: !401)
!3031 = !DILocalVariable(name: "loop", arg: 2, scope: !3026, file: !3, line: 302, type: !401)
!3032 = !DILocation(line: 0, scope: !3026)
!3033 = !DILocation(line: 304, column: 24, scope: !3026)
!3034 = !DILocation(line: 304, column: 9, scope: !3026)
!3035 = !DILocation(line: 304, column: 14, scope: !3026)
!3036 = !DILocation(line: 305, column: 17, scope: !3026)
!3037 = !DILocation(line: 307, column: 3, scope: !3026)
!3038 = !DILocation(line: 308, column: 1, scope: !3026)
!3039 = distinct !DISubprogram(name: "establish_preds", scope: !3, file: !3, line: 281, type: !3027, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045}
!3041 = !DILocalVariable(name: "loop", arg: 1, scope: !3039, file: !3, line: 281, type: !401)
!3042 = !DILocalVariable(name: "father", arg: 2, scope: !3039, file: !3, line: 281, type: !401)
!3043 = !DILocalVariable(name: "ploop", scope: !3039, file: !3, line: 283, type: !1122)
!3044 = !DILocalVariable(name: "depth", scope: !3039, file: !3, line: 284, type: !7)
!3045 = !DILocalVariable(name: "i", scope: !3039, file: !3, line: 285, type: !7)
!3046 = !DILocation(line: 0, scope: !3039)
!3047 = !DILocation(line: 283, column: 3, scope: !3039)
!3048 = !DILocation(line: 284, column: 20, scope: !3039)
!3049 = !DILocation(line: 284, column: 40, scope: !3039)
!3050 = !DILocation(line: 287, column: 3, scope: !3039)
!3051 = !DILocation(line: 288, column: 3, scope: !3039)
!3052 = !DILocation(line: 0, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 289, column: 3)
!3054 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 289, column: 3)
!3055 = !DILocation(line: 289, column: 8, scope: !3054)
!3056 = !DILocation(line: 0, scope: !3054)
!3057 = !DILocation(line: 289, column: 15, scope: !3053)
!3058 = !DILocation(line: 289, column: 3, scope: !3054)
!3059 = !DILocation(line: 290, column: 5, scope: !3053)
!3060 = !DILocation(line: 289, column: 68, scope: !3053)
!3061 = !DILocation(line: 289, column: 3, scope: !3053)
!3062 = distinct !{!3062, !3058, !3063}
!3063 = !DILocation(line: 290, column: 5, scope: !3054)
!3064 = !DILocation(line: 291, column: 3, scope: !3039)
!3065 = !DILocation(line: 293, column: 22, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 293, column: 3)
!3067 = !DILocation(line: 293, column: 14, scope: !3066)
!3068 = !DILocation(line: 293, column: 8, scope: !3066)
!3069 = !DILocation(line: 293, column: 29, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 293, column: 3)
!3071 = !DILocation(line: 293, column: 3, scope: !3066)
!3072 = !DILocation(line: 294, column: 5, scope: !3070)
!3073 = !DILocation(line: 293, column: 44, scope: !3070)
!3074 = !DILocation(line: 293, column: 51, scope: !3070)
!3075 = !DILocation(line: 293, column: 42, scope: !3070)
!3076 = !DILocation(line: 293, column: 3, scope: !3070)
!3077 = distinct !{!3077, !3071, !3078}
!3078 = !DILocation(line: 294, column: 33, scope: !3066)
!3079 = !DILocation(line: 295, column: 1, scope: !3039)
!3080 = distinct !DISubprogram(name: "flow_loop_tree_node_remove", scope: !3, file: !3, line: 313, type: !2773, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3081)
!3081 = !{!3082, !3083, !3084}
!3082 = !DILocalVariable(name: "loop", arg: 1, scope: !3080, file: !3, line: 313, type: !401)
!3083 = !DILocalVariable(name: "prev", scope: !3080, file: !3, line: 315, type: !401)
!3084 = !DILocalVariable(name: "father", scope: !3080, file: !3, line: 315, type: !401)
!3085 = !DILocation(line: 0, scope: !3080)
!3086 = !DILocation(line: 317, column: 12, scope: !3080)
!3087 = !DILocation(line: 320, column: 15, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 320, column: 7)
!3089 = !DILocation(line: 320, column: 21, scope: !3088)
!3090 = !DILocation(line: 320, column: 7, scope: !3080)
!3091 = !DILocation(line: 321, column: 27, scope: !3088)
!3092 = !DILocation(line: 321, column: 19, scope: !3088)
!3093 = !DILocation(line: 321, column: 5, scope: !3088)
!3094 = !DILocation(line: 324, column: 12, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 324, column: 7)
!3096 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 323, column: 5)
!3097 = !DILocation(line: 0, scope: !3095)
!3098 = !DILocation(line: 324, column: 40, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 324, column: 7)
!3100 = !DILocation(line: 324, column: 45, scope: !3099)
!3101 = !DILocation(line: 324, column: 7, scope: !3095)
!3102 = !DILocation(line: 324, column: 7, scope: !3099)
!3103 = distinct !{!3103, !3101, !3104}
!3104 = !DILocation(line: 325, column: 2, scope: !3095)
!3105 = !DILocation(line: 326, column: 26, scope: !3096)
!3106 = !DILocation(line: 326, column: 18, scope: !3096)
!3107 = !DILocation(line: 329, column: 3, scope: !3080)
!3108 = !DILocation(line: 330, column: 1, scope: !3080)
!3109 = distinct !DISubprogram(name: "VEC_loop_p_base_truncate", scope: !378, file: !378, line: 85, type: !3110, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3113)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !3112, !7}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!3113 = !{!3114, !3115}
!3114 = !DILocalVariable(name: "vec_", arg: 1, scope: !3109, file: !378, line: 85, type: !3112)
!3115 = !DILocalVariable(name: "size_", arg: 2, scope: !3109, file: !378, line: 85, type: !7)
!3116 = !DILocation(line: 0, scope: !3109)
!3117 = !DILocation(line: 85, column: 1, scope: !3109)
!3118 = !DILocation(line: 85, column: 1, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3109, file: !378, line: 85, column: 1)
!3120 = distinct !DISubprogram(name: "alloc_loop", scope: !3, file: !3, line: 335, type: !3121, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!401}
!3123 = !{!3124}
!3124 = !DILocalVariable(name: "loop", scope: !3120, file: !3, line: 337, type: !401)
!3125 = !DILocation(line: 337, column: 23, scope: !3120)
!3126 = !DILocation(line: 0, scope: !3120)
!3127 = !DILocation(line: 339, column: 17, scope: !3120)
!3128 = !DILocation(line: 339, column: 9, scope: !3120)
!3129 = !DILocation(line: 339, column: 15, scope: !3120)
!3130 = !DILocation(line: 340, column: 49, scope: !3120)
!3131 = !DILocation(line: 340, column: 36, scope: !3120)
!3132 = !DILocation(line: 340, column: 41, scope: !3120)
!3133 = !DILocation(line: 340, column: 9, scope: !3120)
!3134 = !DILocation(line: 340, column: 16, scope: !3120)
!3135 = !DILocation(line: 340, column: 21, scope: !3120)
!3136 = !DILocation(line: 341, column: 9, scope: !3120)
!3137 = !DILocation(line: 341, column: 25, scope: !3120)
!3138 = !DILocation(line: 342, column: 9, scope: !3120)
!3139 = !DILocation(line: 342, column: 19, scope: !3120)
!3140 = !DILocation(line: 344, column: 3, scope: !3120)
!3141 = distinct !DISubprogram(name: "flow_loops_find", scope: !3, file: !3, line: 375, type: !3142, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!393, !1105}
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3160, !3161, !3162, !3163, !3164, !3168, !3172, !3178, !3179}
!3145 = !DILocalVariable(name: "loops", arg: 1, scope: !3141, file: !3, line: 375, type: !1105)
!3146 = !DILocalVariable(name: "b", scope: !3141, file: !3, line: 377, type: !393)
!3147 = !DILocalVariable(name: "num_loops", scope: !3141, file: !3, line: 378, type: !393)
!3148 = !DILocalVariable(name: "e", scope: !3141, file: !3, line: 379, type: !423)
!3149 = !DILocalVariable(name: "headers", scope: !3141, file: !3, line: 380, type: !3150)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !3151, line: 45, baseType: !3152)
!3151 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !3151, line: 39, size: 192, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !3153, file: !3151, line: 41, baseType: !391, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !3153, file: !3151, line: 42, baseType: !7, size: 32, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3153, file: !3151, line: 43, baseType: !7, size: 32, offset: 96)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !3153, file: !3151, line: 44, baseType: !3159, size: 64, offset: 128)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 64, elements: !567)
!3160 = !DILocalVariable(name: "dfs_order", scope: !3141, file: !3, line: 381, type: !1786)
!3161 = !DILocalVariable(name: "rc_order", scope: !3141, file: !3, line: 382, type: !1786)
!3162 = !DILocalVariable(name: "header", scope: !3141, file: !3, line: 383, type: !938)
!3163 = !DILocalVariable(name: "bb", scope: !3141, file: !3, line: 384, type: !938)
!3164 = !DILocalVariable(name: "ei", scope: !3165, file: !3, line: 408, type: !2409)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 407, column: 5)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 406, column: 3)
!3167 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 406, column: 3)
!3168 = !DILocalVariable(name: "latch", scope: !3169, file: !3, line: 422, type: !938)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 421, column: 2)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 420, column: 7)
!3171 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 420, column: 7)
!3172 = !DILocalVariable(name: "loop", scope: !3173, file: !3, line: 461, type: !401)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 460, column: 2)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 459, column: 7)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 459, column: 7)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 450, column: 5)
!3177 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 449, column: 7)
!3178 = !DILocalVariable(name: "ei", scope: !3173, file: !3, line: 462, type: !2409)
!3179 = !DILocalVariable(name: "latch", scope: !3180, file: !3, line: 485, type: !938)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 484, column: 6)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 483, column: 4)
!3182 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 483, column: 4)
!3183 = !DILocation(line: 0, scope: !3141)
!3184 = !DILocation(line: 379, column: 3, scope: !3141)
!3185 = !DILocation(line: 387, column: 3, scope: !3141)
!3186 = !DILocation(line: 391, column: 7, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 391, column: 7)
!3188 = !DILocation(line: 391, column: 22, scope: !3187)
!3189 = !DILocation(line: 391, column: 7, scope: !3141)
!3190 = !DILocation(line: 393, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 392, column: 5)
!3192 = !DILocation(line: 394, column: 7, scope: !3191)
!3193 = !DILocation(line: 402, column: 28, scope: !3141)
!3194 = !DILocation(line: 402, column: 13, scope: !3141)
!3195 = !DILocation(line: 403, column: 3, scope: !3141)
!3196 = !DILocation(line: 406, column: 3, scope: !3167)
!3197 = !DILocation(line: 0, scope: !3165)
!3198 = !DILocation(line: 0, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 414, column: 7)
!3200 = !DILocation(line: 0, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 414, column: 7)
!3202 = !DILocation(line: 0, scope: !3171)
!3203 = !DILocation(line: 406, column: 3, scope: !3166)
!3204 = !DILocation(line: 405, column: 13, scope: !3141)
!3205 = !DILocation(line: 0, scope: !3167)
!3206 = !DILocation(line: 408, column: 7, scope: !3165)
!3207 = !DILocation(line: 410, column: 15, scope: !3165)
!3208 = !DILocation(line: 410, column: 26, scope: !3165)
!3209 = !DILocation(line: 414, column: 7, scope: !3199)
!3210 = !DILocation(line: 414, column: 7, scope: !3201)
!3211 = !DILocation(line: 417, column: 11, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 417, column: 11)
!3213 = !DILocation(line: 415, column: 6, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 415, column: 6)
!3215 = !DILocation(line: 415, column: 9, scope: !3214)
!3216 = !DILocation(line: 415, column: 15, scope: !3214)
!3217 = !DILocation(line: 415, column: 6, scope: !3201)
!3218 = distinct !{!3218, !3209, !3219}
!3219 = !DILocation(line: 416, column: 4, scope: !3199)
!3220 = !DILocation(line: 417, column: 11, scope: !3165)
!3221 = !DILocation(line: 420, column: 7, scope: !3171)
!3222 = !DILocation(line: 0, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 433, column: 6)
!3224 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 431, column: 8)
!3225 = !DILocation(line: 420, column: 7, scope: !3170)
!3226 = !DILocation(line: 422, column: 24, scope: !3169)
!3227 = !DILocation(line: 422, column: 27, scope: !3169)
!3228 = !DILocation(line: 0, scope: !3169)
!3229 = !DILocation(line: 424, column: 4, scope: !3169)
!3230 = !DILocation(line: 431, column: 17, scope: !3224)
!3231 = !DILocation(line: 431, column: 14, scope: !3224)
!3232 = !DILocation(line: 432, column: 8, scope: !3224)
!3233 = !DILocation(line: 432, column: 11, scope: !3224)
!3234 = !DILocation(line: 431, column: 8, scope: !3169)
!3235 = !DILocation(line: 435, column: 34, scope: !3223)
!3236 = !DILocation(line: 435, column: 8, scope: !3223)
!3237 = !DILocation(line: 436, column: 17, scope: !3223)
!3238 = !DILocation(line: 437, column: 6, scope: !3223)
!3239 = distinct !{!3239, !3221, !3240}
!3240 = !DILocation(line: 438, column: 2, scope: !3171)
!3241 = !DILocation(line: 439, column: 5, scope: !3166)
!3242 = !DILocation(line: 0, scope: !3166)
!3243 = distinct !{!3243, !3196, !3244}
!3244 = !DILocation(line: 439, column: 5, scope: !3167)
!3245 = !DILocation(line: 442, column: 42, scope: !3141)
!3246 = !DILocation(line: 442, column: 3, scope: !3141)
!3247 = !DILocation(line: 446, column: 3, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 446, column: 3)
!3249 = !DILocation(line: 0, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 446, column: 3)
!3251 = !DILocation(line: 446, column: 3, scope: !3250)
!3252 = !DILocation(line: 0, scope: !3248)
!3253 = !DILocation(line: 447, column: 30, scope: !3250)
!3254 = !DILocation(line: 447, column: 9, scope: !3250)
!3255 = !DILocation(line: 447, column: 21, scope: !3250)
!3256 = distinct !{!3256, !3247, !3257}
!3257 = !DILocation(line: 447, column: 30, scope: !3248)
!3258 = !DILocation(line: 449, column: 7, scope: !3177)
!3259 = !DILocation(line: 449, column: 7, scope: !3141)
!3260 = !DILocation(line: 453, column: 19, scope: !3176)
!3261 = !DILocation(line: 454, column: 18, scope: !3176)
!3262 = !DILocation(line: 455, column: 7, scope: !3176)
!3263 = !DILocation(line: 0, scope: !3173)
!3264 = !DILocation(line: 0, scope: !3182)
!3265 = !DILocation(line: 0, scope: !3181)
!3266 = !DILocation(line: 459, column: 12, scope: !3175)
!3267 = !DILocation(line: 0, scope: !3176)
!3268 = !DILocation(line: 459, column: 23, scope: !3174)
!3269 = !DILocation(line: 459, column: 38, scope: !3174)
!3270 = !DILocation(line: 459, column: 21, scope: !3174)
!3271 = !DILocation(line: 459, column: 7, scope: !3175)
!3272 = !DILocation(line: 462, column: 4, scope: !3173)
!3273 = !DILocation(line: 466, column: 9, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 466, column: 8)
!3275 = !DILocation(line: 466, column: 8, scope: !3173)
!3276 = !DILocation(line: 469, column: 13, scope: !3173)
!3277 = !DILocation(line: 471, column: 11, scope: !3173)
!3278 = !DILocation(line: 472, column: 4, scope: !3173)
!3279 = !DILocation(line: 474, column: 10, scope: !3173)
!3280 = !DILocation(line: 474, column: 17, scope: !3173)
!3281 = !DILocation(line: 475, column: 10, scope: !3173)
!3282 = !DILocation(line: 475, column: 14, scope: !3173)
!3283 = !DILocation(line: 476, column: 13, scope: !3173)
!3284 = !DILocation(line: 478, column: 37, scope: !3173)
!3285 = !DILocation(line: 478, column: 4, scope: !3173)
!3286 = !DILocation(line: 479, column: 50, scope: !3173)
!3287 = !DILocation(line: 479, column: 22, scope: !3173)
!3288 = !DILocation(line: 479, column: 10, scope: !3173)
!3289 = !DILocation(line: 479, column: 20, scope: !3173)
!3290 = !DILocation(line: 483, column: 4, scope: !3182)
!3291 = !DILocation(line: 0, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 489, column: 9)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 488, column: 3)
!3294 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 487, column: 12)
!3295 = !DILocation(line: 483, column: 4, scope: !3181)
!3296 = !DILocation(line: 485, column: 28, scope: !3180)
!3297 = !DILocation(line: 485, column: 31, scope: !3180)
!3298 = !DILocation(line: 0, scope: !3180)
!3299 = !DILocation(line: 487, column: 12, scope: !3294)
!3300 = !DILocation(line: 487, column: 12, scope: !3180)
!3301 = !DILocation(line: 489, column: 15, scope: !3292)
!3302 = !DILocation(line: 489, column: 21, scope: !3292)
!3303 = !DILocation(line: 489, column: 9, scope: !3293)
!3304 = !DILocation(line: 492, column: 21, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 490, column: 7)
!3306 = !DILocation(line: 493, column: 9, scope: !3305)
!3307 = !DILocation(line: 495, column: 17, scope: !3293)
!3308 = !DILocation(line: 496, column: 3, scope: !3293)
!3309 = distinct !{!3309, !3290, !3310}
!3310 = !DILocation(line: 497, column: 6, scope: !3182)
!3311 = !DILocation(line: 498, column: 2, scope: !3174)
!3312 = !DILocation(line: 459, column: 59, scope: !3174)
!3313 = !DILocation(line: 459, column: 7, scope: !3174)
!3314 = distinct !{!3314, !3271, !3315}
!3315 = !DILocation(line: 498, column: 2, scope: !3175)
!3316 = !DILocation(line: 500, column: 7, scope: !3176)
!3317 = !DILocation(line: 501, column: 7, scope: !3176)
!3318 = !DILocation(line: 502, column: 5, scope: !3176)
!3319 = !DILocation(line: 504, column: 3, scope: !3141)
!3320 = !DILocation(line: 506, column: 10, scope: !3141)
!3321 = !DILocation(line: 506, column: 16, scope: !3141)
!3322 = !DILocation(line: 507, column: 10, scope: !3141)
!3323 = !DILocation(line: 507, column: 3, scope: !3141)
!3324 = !DILocation(line: 508, column: 1, scope: !3141)
!3325 = distinct !DISubprogram(name: "init_loops_structure", scope: !3, file: !3, line: 351, type: !3326, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !1105, !7}
!3328 = !{!3329, !3330, !3331}
!3329 = !DILocalVariable(name: "loops", arg: 1, scope: !3325, file: !3, line: 351, type: !1105)
!3330 = !DILocalVariable(name: "num_loops", arg: 2, scope: !3325, file: !3, line: 351, type: !7)
!3331 = !DILocalVariable(name: "root", scope: !3325, file: !3, line: 353, type: !401)
!3332 = !DILocation(line: 0, scope: !3325)
!3333 = !DILocation(line: 355, column: 11, scope: !3325)
!3334 = !DILocation(line: 355, column: 3, scope: !3325)
!3335 = !DILocation(line: 356, column: 19, scope: !3325)
!3336 = !DILocation(line: 356, column: 10, scope: !3325)
!3337 = !DILocation(line: 356, column: 17, scope: !3325)
!3338 = !DILocation(line: 359, column: 10, scope: !3325)
!3339 = !DILocation(line: 360, column: 21, scope: !3325)
!3340 = !DILocation(line: 360, column: 9, scope: !3325)
!3341 = !DILocation(line: 360, column: 19, scope: !3325)
!3342 = !DILocation(line: 361, column: 17, scope: !3325)
!3343 = !DILocation(line: 361, column: 9, scope: !3325)
!3344 = !DILocation(line: 361, column: 15, scope: !3325)
!3345 = !DILocation(line: 362, column: 18, scope: !3325)
!3346 = !DILocation(line: 362, column: 9, scope: !3325)
!3347 = !DILocation(line: 362, column: 16, scope: !3325)
!3348 = !DILocation(line: 363, column: 3, scope: !3325)
!3349 = !DILocation(line: 363, column: 20, scope: !3325)
!3350 = !DILocation(line: 363, column: 32, scope: !3325)
!3351 = !DILocation(line: 364, column: 3, scope: !3325)
!3352 = !DILocation(line: 364, column: 19, scope: !3325)
!3353 = !DILocation(line: 364, column: 31, scope: !3325)
!3354 = !DILocation(line: 366, column: 3, scope: !3325)
!3355 = !DILocation(line: 367, column: 10, scope: !3325)
!3356 = !DILocation(line: 367, column: 20, scope: !3325)
!3357 = !DILocation(line: 368, column: 1, scope: !3325)
!3358 = distinct !DISubprogram(name: "SET_BIT", scope: !3151, file: !3151, line: 63, type: !3359, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{null, !3150, !7}
!3361 = !{!3362, !3363, !3364}
!3362 = !DILocalVariable(name: "map", arg: 1, scope: !3358, file: !3151, line: 63, type: !3150)
!3363 = !DILocalVariable(name: "bitno", arg: 2, scope: !3358, file: !3151, line: 63, type: !7)
!3364 = !DILocalVariable(name: "oldbit", scope: !3365, file: !3151, line: 67, type: !392)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3151, line: 66, column: 5)
!3366 = distinct !DILexicalBlock(scope: !3358, file: !3151, line: 65, column: 7)
!3367 = !DILocation(line: 0, scope: !3358)
!3368 = !DILocation(line: 65, column: 12, scope: !3366)
!3369 = !DILocation(line: 65, column: 7, scope: !3366)
!3370 = !DILocation(line: 65, column: 7, scope: !3358)
!3371 = !DILocation(line: 73, column: 40, scope: !3358)
!3372 = !DILocation(line: 73, column: 29, scope: !3358)
!3373 = !DILocation(line: 72, column: 19, scope: !3358)
!3374 = !DILocation(line: 72, column: 3, scope: !3358)
!3375 = !DILocation(line: 68, column: 16, scope: !3365)
!3376 = !DILocation(line: 69, column: 12, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3365, file: !3151, line: 69, column: 11)
!3378 = !DILocation(line: 69, column: 11, scope: !3365)
!3379 = !DILocation(line: 70, column: 2, scope: !3377)
!3380 = !DILocation(line: 70, column: 41, scope: !3377)
!3381 = !DILocation(line: 73, column: 5, scope: !3358)
!3382 = !DILocation(line: 74, column: 1, scope: !3358)
!3383 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !135, file: !135, line: 281, type: !3384, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!938, !2992, !7}
!3386 = !{!3387, !3388}
!3387 = !DILocalVariable(name: "vec_", arg: 1, scope: !3383, file: !135, line: 281, type: !2992)
!3388 = !DILocalVariable(name: "ix_", arg: 2, scope: !3383, file: !135, line: 281, type: !7)
!3389 = !DILocation(line: 0, scope: !3383)
!3390 = !DILocation(line: 281, column: 1, scope: !3383)
!3391 = distinct !DISubprogram(name: "VEC_loop_p_base_quick_push", scope: !378, file: !378, line: 85, type: !3392, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!2572, !3112, !1122}
!3394 = !{!3395, !3396, !3397}
!3395 = !DILocalVariable(name: "vec_", arg: 1, scope: !3391, file: !378, line: 85, type: !3112)
!3396 = !DILocalVariable(name: "obj_", arg: 2, scope: !3391, file: !378, line: 85, type: !1122)
!3397 = !DILocalVariable(name: "slot_", scope: !3391, file: !378, line: 85, type: !2572)
!3398 = !DILocation(line: 0, scope: !3391)
!3399 = !DILocation(line: 85, column: 1, scope: !3391)
!3400 = distinct !DISubprogram(name: "flow_bb_inside_loop_p", scope: !3, file: !3, line: 773, type: !3401, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3406)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!392, !1807, !3403}
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !424, line: 112, baseType: !3404)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!3406 = !{!3407, !3408, !3409}
!3407 = !DILocalVariable(name: "loop", arg: 1, scope: !3400, file: !3, line: 773, type: !1807)
!3408 = !DILocalVariable(name: "bb", arg: 2, scope: !3400, file: !3, line: 773, type: !3403)
!3409 = !DILocalVariable(name: "source_loop", scope: !3400, file: !3, line: 775, type: !401)
!3410 = !DILocation(line: 0, scope: !3400)
!3411 = !DILocation(line: 777, column: 13, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 777, column: 7)
!3413 = !DILocation(line: 777, column: 10, scope: !3412)
!3414 = !DILocation(line: 777, column: 29, scope: !3412)
!3415 = !DILocation(line: 777, column: 38, scope: !3412)
!3416 = !DILocation(line: 777, column: 35, scope: !3412)
!3417 = !DILocation(line: 777, column: 7, scope: !3400)
!3418 = !DILocation(line: 780, column: 21, scope: !3400)
!3419 = !DILocation(line: 781, column: 15, scope: !3400)
!3420 = !DILocation(line: 781, column: 30, scope: !3400)
!3421 = !DILocation(line: 781, column: 33, scope: !3400)
!3422 = !DILocation(line: 781, column: 3, scope: !3400)
!3423 = !DILocation(line: 782, column: 1, scope: !3400)
!3424 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !378, file: !378, line: 85, type: !3425, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!7, !2295}
!3427 = !{!3428}
!3428 = !DILocalVariable(name: "vec_", arg: 1, scope: !3424, file: !378, line: 85, type: !2295)
!3429 = !DILocation(line: 0, scope: !3424)
!3430 = !DILocation(line: 85, column: 1, scope: !3424)
!3431 = distinct !DISubprogram(name: "disambiguate_loops_with_multiple_latches", scope: !3, file: !3, line: 759, type: !3432, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null}
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "li", scope: !3431, file: !3, line: 761, type: !2530)
!3436 = !DILocalVariable(name: "loop", scope: !3431, file: !3, line: 762, type: !401)
!3437 = !DILocation(line: 761, column: 3, scope: !3431)
!3438 = !DILocation(line: 762, column: 3, scope: !3431)
!3439 = !DILocation(line: 0, scope: !3431)
!3440 = !DILocation(line: 764, column: 3, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 764, column: 3)
!3442 = !DILocation(line: 764, column: 3, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 764, column: 3)
!3444 = !DILocation(line: 766, column: 18, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 766, column: 11)
!3446 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 765, column: 5)
!3447 = !DILocation(line: 766, column: 12, scope: !3445)
!3448 = !DILocation(line: 766, column: 11, scope: !3446)
!3449 = !DILocation(line: 767, column: 2, scope: !3445)
!3450 = distinct !{!3450, !3440, !3451}
!3451 = !DILocation(line: 768, column: 5, scope: !3441)
!3452 = !DILocation(line: 769, column: 1, scope: !3431)
!3453 = distinct !DISubprogram(name: "disambiguate_multiple_latches", scope: !3, file: !3, line: 717, type: !2773, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3454)
!3454 = !{!3455, !3456}
!3455 = !DILocalVariable(name: "loop", arg: 1, scope: !3453, file: !3, line: 717, type: !401)
!3456 = !DILocalVariable(name: "e", scope: !3453, file: !3, line: 719, type: !423)
!3457 = !DILocation(line: 0, scope: !3453)
!3458 = !DILocation(line: 732, column: 7, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 732, column: 7)
!3460 = !DILocation(line: 732, column: 7, scope: !3453)
!3461 = !DILocation(line: 734, column: 13, scope: !3459)
!3462 = !DILocation(line: 733, column: 5, scope: !3459)
!3463 = !DILocation(line: 740, column: 18, scope: !3453)
!3464 = !DILocation(line: 740, column: 41, scope: !3453)
!3465 = !DILocation(line: 740, column: 7, scope: !3453)
!3466 = !DILocation(line: 741, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 741, column: 7)
!3468 = !DILocation(line: 741, column: 7, scope: !3453)
!3469 = !DILocation(line: 742, column: 5, scope: !3467)
!3470 = !DILocation(line: 744, column: 3, scope: !3453)
!3471 = !DILocation(line: 746, column: 11, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 745, column: 5)
!3473 = !DILocation(line: 747, column: 12, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 747, column: 11)
!3475 = !DILocation(line: 747, column: 11, scope: !3472)
!3476 = !DILocation(line: 750, column: 7, scope: !3472)
!3477 = distinct !{!3477, !3470, !3478}
!3478 = !DILocation(line: 751, column: 5, scope: !3453)
!3479 = !DILocation(line: 753, column: 3, scope: !3453)
!3480 = !DILocation(line: 754, column: 1, scope: !3453)
!3481 = distinct !DISubprogram(name: "get_loop_body_with_size", scope: !3, file: !3, line: 801, type: !3482, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!7, !1807, !1787, !7}
!3484 = !{!3485, !3486, !3487}
!3485 = !DILocalVariable(name: "loop", arg: 1, scope: !3481, file: !3, line: 801, type: !1807)
!3486 = !DILocalVariable(name: "body", arg: 2, scope: !3481, file: !3, line: 801, type: !1787)
!3487 = !DILocalVariable(name: "max_size", arg: 3, scope: !3481, file: !3, line: 802, type: !7)
!3488 = !DILocation(line: 0, scope: !3481)
!3489 = !DILocation(line: 804, column: 36, scope: !3481)
!3490 = !DILocation(line: 805, column: 25, scope: !3481)
!3491 = !DILocation(line: 804, column: 10, scope: !3481)
!3492 = !DILocation(line: 804, column: 3, scope: !3481)
!3493 = distinct !DISubprogram(name: "glb_enum_p", scope: !3, file: !3, line: 786, type: !3494, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!392, !3403, !811}
!3496 = !{!3497, !3498, !3499}
!3497 = !DILocalVariable(name: "bb", arg: 1, scope: !3493, file: !3, line: 786, type: !3403)
!3498 = !DILocalVariable(name: "glb_loop", arg: 2, scope: !3493, file: !3, line: 786, type: !811)
!3499 = !DILocalVariable(name: "loop", scope: !3493, file: !3, line: 788, type: !3500)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1807)
!3501 = !DILocation(line: 0, scope: !3493)
!3502 = !DILocation(line: 789, column: 23, scope: !3493)
!3503 = !DILocation(line: 789, column: 14, scope: !3493)
!3504 = !DILocation(line: 790, column: 4, scope: !3493)
!3505 = !DILocation(line: 790, column: 7, scope: !3493)
!3506 = !DILocation(line: 789, column: 3, scope: !3493)
!3507 = distinct !DISubprogram(name: "get_loop_body_in_dom_order", scope: !3, file: !3, line: 873, type: !2484, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3508)
!3508 = !{!3509, !3510, !3511}
!3509 = !DILocalVariable(name: "loop", arg: 1, scope: !3507, file: !3, line: 873, type: !1807)
!3510 = !DILocalVariable(name: "tovisit", scope: !3507, file: !3, line: 875, type: !1787)
!3511 = !DILocalVariable(name: "tv", scope: !3507, file: !3, line: 876, type: !393)
!3512 = !DILocation(line: 0, scope: !3507)
!3513 = !DILocation(line: 876, column: 3, scope: !3507)
!3514 = !DILocation(line: 878, column: 3, scope: !3507)
!3515 = !DILocation(line: 880, column: 13, scope: !3507)
!3516 = !DILocation(line: 882, column: 3, scope: !3507)
!3517 = !DILocation(line: 884, column: 6, scope: !3507)
!3518 = !DILocation(line: 885, column: 34, scope: !3507)
!3519 = !DILocation(line: 885, column: 3, scope: !3507)
!3520 = !DILocation(line: 887, column: 3, scope: !3507)
!3521 = !DILocation(line: 890, column: 1, scope: !3507)
!3522 = !DILocation(line: 889, column: 3, scope: !3507)
!3523 = distinct !DISubprogram(name: "fill_sons_in_loop", scope: !3, file: !3, line: 843, type: !3524, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !1807, !938, !1787, !1786}
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532}
!3527 = !DILocalVariable(name: "loop", arg: 1, scope: !3523, file: !3, line: 843, type: !1807)
!3528 = !DILocalVariable(name: "bb", arg: 2, scope: !3523, file: !3, line: 843, type: !938)
!3529 = !DILocalVariable(name: "tovisit", arg: 3, scope: !3523, file: !3, line: 844, type: !1787)
!3530 = !DILocalVariable(name: "tv", arg: 4, scope: !3523, file: !3, line: 844, type: !1786)
!3531 = !DILocalVariable(name: "son", scope: !3523, file: !3, line: 846, type: !938)
!3532 = !DILocalVariable(name: "postpone", scope: !3523, file: !3, line: 846, type: !938)
!3533 = !DILocation(line: 0, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 856, column: 11)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 852, column: 5)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 849, column: 3)
!3537 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 849, column: 3)
!3538 = !DILocation(line: 865, column: 5, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 864, column: 7)
!3540 = !DILocation(line: 0, scope: !3523)
!3541 = !DILocation(line: 848, column: 16, scope: !3523)
!3542 = !DILocation(line: 848, column: 3, scope: !3523)
!3543 = !DILocation(line: 848, column: 20, scope: !3523)
!3544 = !DILocation(line: 849, column: 14, scope: !3537)
!3545 = !DILocation(line: 849, column: 8, scope: !3537)
!3546 = !DILocation(line: 0, scope: !3537)
!3547 = !DILocation(line: 849, column: 3, scope: !3537)
!3548 = !DILocation(line: 853, column: 12, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 853, column: 11)
!3550 = !DILocation(line: 853, column: 11, scope: !3535)
!3551 = !DILocation(line: 856, column: 49, scope: !3534)
!3552 = !DILocation(line: 856, column: 11, scope: !3534)
!3553 = !DILocation(line: 856, column: 11, scope: !3535)
!3554 = !DILocation(line: 861, column: 7, scope: !3535)
!3555 = !DILocation(line: 862, column: 5, scope: !3535)
!3556 = !DILocation(line: 851, column: 14, scope: !3536)
!3557 = !DILocation(line: 849, column: 3, scope: !3536)
!3558 = distinct !{!3558, !3547, !3559}
!3559 = !DILocation(line: 862, column: 5, scope: !3537)
!3560 = !DILocation(line: 864, column: 7, scope: !3539)
!3561 = !DILocation(line: 864, column: 7, scope: !3523)
!3562 = !DILocation(line: 866, column: 1, scope: !3523)
!3563 = distinct !DISubprogram(name: "get_loop_body_in_custom_order", scope: !3, file: !3, line: 895, type: !3564, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!1787, !1807, !983}
!3566 = !{!3567, !3568, !3569}
!3567 = !DILocalVariable(name: "loop", arg: 1, scope: !3563, file: !3, line: 895, type: !1807)
!3568 = !DILocalVariable(name: "bb_comparator", arg: 2, scope: !3563, file: !3, line: 896, type: !983)
!3569 = !DILocalVariable(name: "bbs", scope: !3563, file: !3, line: 898, type: !1787)
!3570 = !DILocation(line: 0, scope: !3563)
!3571 = !DILocation(line: 898, column: 22, scope: !3563)
!3572 = !DILocation(line: 901, column: 15, scope: !3563)
!3573 = !DILocation(line: 901, column: 26, scope: !3563)
!3574 = !DILocation(line: 901, column: 20, scope: !3563)
!3575 = !DILocation(line: 901, column: 3, scope: !3563)
!3576 = !DILocation(line: 906, column: 3, scope: !3563)
!3577 = distinct !DISubprogram(name: "get_loop_body_in_bfs_order", scope: !3, file: !3, line: 912, type: !2484, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3587}
!3579 = !DILocalVariable(name: "loop", arg: 1, scope: !3577, file: !3, line: 912, type: !1807)
!3580 = !DILocalVariable(name: "blocks", scope: !3577, file: !3, line: 914, type: !1787)
!3581 = !DILocalVariable(name: "bb", scope: !3577, file: !3, line: 915, type: !938)
!3582 = !DILocalVariable(name: "visited", scope: !3577, file: !3, line: 916, type: !1057)
!3583 = !DILocalVariable(name: "i", scope: !3577, file: !3, line: 917, type: !7)
!3584 = !DILocalVariable(name: "vc", scope: !3577, file: !3, line: 918, type: !7)
!3585 = !DILocalVariable(name: "e", scope: !3586, file: !3, line: 929, type: !423)
!3586 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 928, column: 5)
!3587 = !DILocalVariable(name: "ei", scope: !3586, file: !3, line: 930, type: !2409)
!3588 = !DILocation(line: 0, scope: !3577)
!3589 = !DILocation(line: 920, column: 3, scope: !3577)
!3590 = !DILocation(line: 921, column: 3, scope: !3577)
!3591 = !DILocation(line: 923, column: 12, scope: !3577)
!3592 = !DILocation(line: 924, column: 13, scope: !3577)
!3593 = !DILocation(line: 926, column: 14, scope: !3577)
!3594 = !DILocation(line: 0, scope: !3586)
!3595 = !DILocation(line: 0, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 939, column: 7)
!3597 = !DILocation(line: 0, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 939, column: 7)
!3599 = !DILocation(line: 927, column: 3, scope: !3577)
!3600 = !DILocation(line: 917, column: 16, scope: !3577)
!3601 = !DILocation(line: 927, column: 20, scope: !3577)
!3602 = !DILocation(line: 927, column: 12, scope: !3577)
!3603 = !DILocation(line: 929, column: 7, scope: !3586)
!3604 = !DILocation(line: 930, column: 7, scope: !3586)
!3605 = !DILocation(line: 932, column: 39, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 932, column: 11)
!3607 = !DILocation(line: 932, column: 12, scope: !3606)
!3608 = !DILocation(line: 932, column: 11, scope: !3586)
!3609 = !DILocation(line: 935, column: 33, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 933, column: 2)
!3611 = !DILocation(line: 935, column: 4, scope: !3610)
!3612 = !DILocation(line: 936, column: 12, scope: !3610)
!3613 = !DILocation(line: 936, column: 4, scope: !3610)
!3614 = !DILocation(line: 936, column: 16, scope: !3610)
!3615 = !DILocation(line: 937, column: 2, scope: !3610)
!3616 = !DILocation(line: 939, column: 7, scope: !3596)
!3617 = !DILocation(line: 939, column: 7, scope: !3598)
!3618 = !DILocation(line: 941, column: 37, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 941, column: 8)
!3620 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 940, column: 2)
!3621 = !DILocation(line: 941, column: 40, scope: !3619)
!3622 = !DILocation(line: 941, column: 8, scope: !3619)
!3623 = !DILocation(line: 941, column: 8, scope: !3620)
!3624 = !DILocation(line: 943, column: 36, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 943, column: 12)
!3626 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 942, column: 6)
!3627 = !DILocation(line: 943, column: 39, scope: !3625)
!3628 = !DILocation(line: 943, column: 45, scope: !3625)
!3629 = !DILocation(line: 943, column: 13, scope: !3625)
!3630 = !DILocation(line: 943, column: 12, scope: !3626)
!3631 = !DILocation(line: 945, column: 30, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 944, column: 3)
!3633 = !DILocation(line: 945, column: 33, scope: !3632)
!3634 = !DILocation(line: 945, column: 39, scope: !3632)
!3635 = !DILocation(line: 945, column: 5, scope: !3632)
!3636 = !DILocation(line: 946, column: 19, scope: !3632)
!3637 = !DILocation(line: 946, column: 22, scope: !3632)
!3638 = !DILocation(line: 946, column: 13, scope: !3632)
!3639 = !DILocation(line: 946, column: 5, scope: !3632)
!3640 = !DILocation(line: 946, column: 17, scope: !3632)
!3641 = !DILocation(line: 947, column: 3, scope: !3632)
!3642 = distinct !{!3642, !3616, !3643}
!3643 = !DILocation(line: 949, column: 2, scope: !3596)
!3644 = !DILocation(line: 951, column: 7, scope: !3586)
!3645 = !DILocation(line: 953, column: 21, scope: !3586)
!3646 = !DILocation(line: 953, column: 12, scope: !3586)
!3647 = !DILocation(line: 954, column: 5, scope: !3577)
!3648 = distinct !{!3648, !3599, !3647}
!3649 = !DILocation(line: 956, column: 3, scope: !3577)
!3650 = !DILocation(line: 957, column: 3, scope: !3577)
!3651 = distinct !DISubprogram(name: "rescan_loop_exit", scope: !3, file: !3, line: 1014, type: !3652, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !423, !392, !392}
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3655 = !DILocalVariable(name: "e", arg: 1, scope: !3651, file: !3, line: 1014, type: !423)
!3656 = !DILocalVariable(name: "new_edge", arg: 2, scope: !3651, file: !3, line: 1014, type: !392)
!3657 = !DILocalVariable(name: "removed", arg: 3, scope: !3651, file: !3, line: 1014, type: !392)
!3658 = !DILocalVariable(name: "slot", scope: !3651, file: !3, line: 1016, type: !992)
!3659 = !DILocalVariable(name: "exits", scope: !3651, file: !3, line: 1017, type: !1777)
!3660 = !DILocalVariable(name: "exit", scope: !3651, file: !3, line: 1017, type: !1777)
!3661 = !DILocalVariable(name: "aloop", scope: !3651, file: !3, line: 1018, type: !401)
!3662 = !DILocalVariable(name: "cloop", scope: !3651, file: !3, line: 1018, type: !401)
!3663 = !DILocation(line: 0, scope: !3651)
!3664 = !DILocation(line: 1020, column: 8, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1020, column: 7)
!3666 = !DILocation(line: 1020, column: 7, scope: !3651)
!3667 = !DILocation(line: 1023, column: 8, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1023, column: 7)
!3669 = !DILocation(line: 1024, column: 7, scope: !3668)
!3670 = !DILocation(line: 1024, column: 13, scope: !3668)
!3671 = !DILocation(line: 1024, column: 18, scope: !3668)
!3672 = !DILocation(line: 1024, column: 30, scope: !3668)
!3673 = !DILocation(line: 1025, column: 7, scope: !3668)
!3674 = !DILocation(line: 1025, column: 13, scope: !3668)
!3675 = !DILocation(line: 1025, column: 19, scope: !3668)
!3676 = !DILocation(line: 1025, column: 31, scope: !3668)
!3677 = !DILocation(line: 1026, column: 7, scope: !3668)
!3678 = !DILocation(line: 1026, column: 11, scope: !3668)
!3679 = !DILocation(line: 1023, column: 7, scope: !3651)
!3680 = !DILocation(line: 1028, column: 36, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1027, column: 5)
!3682 = !DILocation(line: 1028, column: 41, scope: !3681)
!3683 = !DILocation(line: 1028, column: 57, scope: !3681)
!3684 = !DILocation(line: 1028, column: 63, scope: !3681)
!3685 = !DILocation(line: 1028, column: 15, scope: !3681)
!3686 = !DILocation(line: 1029, column: 23, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 1029, column: 7)
!3688 = !DILocation(line: 1029, column: 28, scope: !3687)
!3689 = !DILocation(line: 1029, column: 12, scope: !3687)
!3690 = !DILocation(line: 0, scope: !3687)
!3691 = !DILocation(line: 1030, column: 11, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 1029, column: 7)
!3693 = !DILocation(line: 1029, column: 7, scope: !3687)
!3694 = !DILocation(line: 1033, column: 11, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 1032, column: 2)
!3696 = !DILocation(line: 1034, column: 10, scope: !3695)
!3697 = !DILocation(line: 1034, column: 12, scope: !3695)
!3698 = !DILocation(line: 1036, column: 24, scope: !3695)
!3699 = !DILocation(line: 1036, column: 31, scope: !3695)
!3700 = !DILocation(line: 1036, column: 10, scope: !3695)
!3701 = !DILocation(line: 1036, column: 15, scope: !3695)
!3702 = !DILocation(line: 1037, column: 24, scope: !3695)
!3703 = !DILocation(line: 1037, column: 10, scope: !3695)
!3704 = !DILocation(line: 1037, column: 15, scope: !3695)
!3705 = !DILocation(line: 1038, column: 10, scope: !3695)
!3706 = !DILocation(line: 1038, column: 16, scope: !3695)
!3707 = !DILocation(line: 1038, column: 21, scope: !3695)
!3708 = !DILocation(line: 1039, column: 10, scope: !3695)
!3709 = !DILocation(line: 1039, column: 16, scope: !3695)
!3710 = !DILocation(line: 1039, column: 21, scope: !3695)
!3711 = !DILocation(line: 1041, column: 10, scope: !3695)
!3712 = !DILocation(line: 1041, column: 17, scope: !3695)
!3713 = !DILocation(line: 1031, column: 13, scope: !3692)
!3714 = !DILocation(line: 1029, column: 7, scope: !3692)
!3715 = distinct !{!3715, !3693, !3716}
!3716 = !DILocation(line: 1043, column: 2, scope: !3687)
!3717 = !DILocation(line: 1046, column: 8, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1046, column: 7)
!3719 = !DILocation(line: 1017, column: 21, scope: !3651)
!3720 = !DILocation(line: 1046, column: 17, scope: !3718)
!3721 = !DILocation(line: 1046, column: 14, scope: !3718)
!3722 = !DILocation(line: 1049, column: 36, scope: !3651)
!3723 = !DILocation(line: 1049, column: 51, scope: !3651)
!3724 = !DILocation(line: 1049, column: 58, scope: !3651)
!3725 = !DILocation(line: 1050, column: 8, scope: !3651)
!3726 = !DILocation(line: 1051, column: 8, scope: !3651)
!3727 = !DILocation(line: 1049, column: 10, scope: !3651)
!3728 = !DILocation(line: 1052, column: 8, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1052, column: 7)
!3730 = !DILocation(line: 1052, column: 7, scope: !3651)
!3731 = !DILocation(line: 1055, column: 7, scope: !3651)
!3732 = !DILocation(line: 1057, column: 11, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1057, column: 11)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1056, column: 5)
!3735 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1055, column: 7)
!3736 = !DILocation(line: 1057, column: 11, scope: !3734)
!3737 = !DILocation(line: 1058, column: 2, scope: !3733)
!3738 = !DILocation(line: 1059, column: 13, scope: !3734)
!3739 = !DILocation(line: 1060, column: 5, scope: !3734)
!3740 = !DILocation(line: 1062, column: 22, scope: !3735)
!3741 = !DILocation(line: 1062, column: 37, scope: !3735)
!3742 = !DILocation(line: 1062, column: 5, scope: !3735)
!3743 = !DILocation(line: 1063, column: 1, scope: !3651)
!3744 = distinct !DISubprogram(name: "loops_state_satisfies_p", scope: !378, file: !378, line: 471, type: !3745, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!392, !7}
!3747 = !{!3748}
!3748 = !DILocalVariable(name: "flags", arg: 1, scope: !3744, file: !378, line: 471, type: !7)
!3749 = !DILocation(line: 0, scope: !3744)
!3750 = !DILocation(line: 473, column: 11, scope: !3744)
!3751 = !DILocation(line: 473, column: 26, scope: !3744)
!3752 = !DILocation(line: 473, column: 32, scope: !3744)
!3753 = !DILocation(line: 473, column: 41, scope: !3744)
!3754 = !DILocation(line: 473, column: 10, scope: !3744)
!3755 = !DILocation(line: 473, column: 3, scope: !3744)
!3756 = distinct !DISubprogram(name: "find_common_loop", scope: !3, file: !3, line: 1250, type: !3757, scopeLine: 1251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!401, !401, !401}
!3759 = !{!3760, !3761, !3762, !3763}
!3760 = !DILocalVariable(name: "loop_s", arg: 1, scope: !3756, file: !3, line: 1250, type: !401)
!3761 = !DILocalVariable(name: "loop_d", arg: 2, scope: !3756, file: !3, line: 1250, type: !401)
!3762 = !DILocalVariable(name: "sdepth", scope: !3756, file: !3, line: 1252, type: !7)
!3763 = !DILocalVariable(name: "ddepth", scope: !3756, file: !3, line: 1252, type: !7)
!3764 = !DILocation(line: 0, scope: !3756)
!3765 = !DILocation(line: 1254, column: 8, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 1254, column: 7)
!3767 = !DILocation(line: 1254, column: 7, scope: !3756)
!3768 = !DILocation(line: 1255, column: 8, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 1255, column: 7)
!3770 = !DILocation(line: 1255, column: 7, scope: !3756)
!3771 = !DILocation(line: 1257, column: 12, scope: !3756)
!3772 = !DILocation(line: 1258, column: 12, scope: !3756)
!3773 = !DILocation(line: 1260, column: 14, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 1260, column: 7)
!3775 = !DILocation(line: 1260, column: 7, scope: !3756)
!3776 = !DILocation(line: 1261, column: 14, scope: !3774)
!3777 = !DILocation(line: 1261, column: 5, scope: !3774)
!3778 = !DILocation(line: 1262, column: 19, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 1262, column: 12)
!3780 = !DILocation(line: 1262, column: 12, scope: !3774)
!3781 = !DILocation(line: 1263, column: 14, scope: !3779)
!3782 = !DILocation(line: 1263, column: 5, scope: !3779)
!3783 = !DILocation(line: 1265, column: 3, scope: !3756)
!3784 = !DILocation(line: 1265, column: 17, scope: !3756)
!3785 = !DILocation(line: 1267, column: 16, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 1266, column: 5)
!3787 = !DILocation(line: 1268, column: 16, scope: !3786)
!3788 = distinct !{!3788, !3783, !3789}
!3789 = !DILocation(line: 1269, column: 5, scope: !3756)
!3790 = !DILocation(line: 1271, column: 1, scope: !3756)
!3791 = distinct !DISubprogram(name: "loop_exit_free", scope: !3, file: !3, line: 983, type: !989, scopeLine: 984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3792)
!3792 = !{!3793, !3794, !3795}
!3793 = !DILocalVariable(name: "ex", arg: 1, scope: !3791, file: !3, line: 983, type: !397)
!3794 = !DILocalVariable(name: "exit", scope: !3791, file: !3, line: 985, type: !1777)
!3795 = !DILocalVariable(name: "next", scope: !3791, file: !3, line: 985, type: !1777)
!3796 = !DILocation(line: 0, scope: !3791)
!3797 = !DILocation(line: 985, column: 28, scope: !3791)
!3798 = !DILocation(line: 987, column: 3, scope: !3791)
!3799 = !DILocation(line: 987, column: 3, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 987, column: 3)
!3801 = !DILocation(line: 989, column: 20, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 988, column: 5)
!3803 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 987, column: 3)
!3804 = !DILocation(line: 991, column: 32, scope: !3802)
!3805 = !DILocation(line: 991, column: 13, scope: !3802)
!3806 = !DILocation(line: 991, column: 19, scope: !3802)
!3807 = !DILocation(line: 991, column: 24, scope: !3802)
!3808 = !DILocation(line: 992, column: 32, scope: !3802)
!3809 = !DILocation(line: 992, column: 13, scope: !3802)
!3810 = !DILocation(line: 992, column: 19, scope: !3802)
!3811 = !DILocation(line: 992, column: 24, scope: !3802)
!3812 = !DILocation(line: 994, column: 7, scope: !3802)
!3813 = !DILocation(line: 987, column: 3, scope: !3803)
!3814 = distinct !{!3814, !3799, !3815}
!3815 = !DILocation(line: 995, column: 5, scope: !3800)
!3816 = !DILocation(line: 996, column: 1, scope: !3791)
!3817 = distinct !DISubprogram(name: "record_loop_exits", scope: !3, file: !3, line: 1069, type: !3432, scopeLine: 1070, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3818)
!3818 = !{!3819, !3820, !3821}
!3819 = !DILocalVariable(name: "bb", scope: !3817, file: !3, line: 1071, type: !938)
!3820 = !DILocalVariable(name: "ei", scope: !3817, file: !3, line: 1072, type: !2409)
!3821 = !DILocalVariable(name: "e", scope: !3817, file: !3, line: 1073, type: !423)
!3822 = !DILocation(line: 1072, column: 3, scope: !3817)
!3823 = !DILocation(line: 1073, column: 3, scope: !3817)
!3824 = !DILocation(line: 1075, column: 8, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1075, column: 7)
!3826 = !DILocation(line: 1075, column: 7, scope: !3817)
!3827 = !DILocation(line: 1078, column: 7, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1078, column: 7)
!3829 = !DILocation(line: 1078, column: 7, scope: !3817)
!3830 = !DILocation(line: 1080, column: 3, scope: !3817)
!3831 = !DILocation(line: 1082, column: 3, scope: !3817)
!3832 = !DILocation(line: 1083, column: 49, scope: !3817)
!3833 = !DILocation(line: 1083, column: 47, scope: !3817)
!3834 = !DILocation(line: 1083, column: 45, scope: !3817)
!3835 = !DILocation(line: 1083, column: 26, scope: !3817)
!3836 = !DILocation(line: 1083, column: 3, scope: !3817)
!3837 = !DILocation(line: 1083, column: 18, scope: !3817)
!3838 = !DILocation(line: 1083, column: 24, scope: !3817)
!3839 = !DILocation(line: 1089, column: 3, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1089, column: 3)
!3841 = !DILocation(line: 0, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1091, column: 7)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 1090, column: 5)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 1089, column: 3)
!3845 = !DILocation(line: 0, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 1091, column: 7)
!3847 = !DILocation(line: 1089, column: 3, scope: !3844)
!3848 = !DILocation(line: 0, scope: !3840)
!3849 = !DILocation(line: 0, scope: !3817)
!3850 = !DILocation(line: 1091, column: 7, scope: !3842)
!3851 = !DILocation(line: 1091, column: 7, scope: !3846)
!3852 = !DILocation(line: 1093, column: 22, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 1092, column: 2)
!3854 = !DILocation(line: 1093, column: 4, scope: !3853)
!3855 = distinct !{!3855, !3850, !3856}
!3856 = !DILocation(line: 1094, column: 2, scope: !3842)
!3857 = !DILocation(line: 0, scope: !3844)
!3858 = distinct !{!3858, !3839, !3859}
!3859 = !DILocation(line: 1095, column: 5, scope: !3840)
!3860 = !DILocation(line: 1096, column: 1, scope: !3817)
!3861 = distinct !DISubprogram(name: "loops_state_set", scope: !378, file: !378, line: 479, type: !3862, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !7}
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "flags", arg: 1, scope: !3861, file: !378, line: 479, type: !7)
!3866 = !DILocation(line: 0, scope: !3861)
!3867 = !DILocation(line: 481, column: 3, scope: !3861)
!3868 = !DILocation(line: 481, column: 18, scope: !3861)
!3869 = !DILocation(line: 481, column: 24, scope: !3861)
!3870 = !DILocation(line: 482, column: 1, scope: !3861)
!3871 = distinct !DISubprogram(name: "loop_exit_hash", scope: !3, file: !3, line: 963, type: !978, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3872)
!3872 = !{!3873, !3874}
!3873 = !DILocalVariable(name: "ex", arg: 1, scope: !3871, file: !3, line: 963, type: !811)
!3874 = !DILocalVariable(name: "exit", scope: !3871, file: !3, line: 965, type: !3875)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1809)
!3876 = !DILocation(line: 0, scope: !3871)
!3877 = !DILocation(line: 967, column: 10, scope: !3871)
!3878 = !DILocation(line: 967, column: 35, scope: !3871)
!3879 = !DILocation(line: 967, column: 3, scope: !3871)
!3880 = distinct !DISubprogram(name: "loop_exit_eq", scope: !3, file: !3, line: 973, type: !984, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3881)
!3881 = !{!3882, !3883, !3884}
!3882 = !DILocalVariable(name: "ex", arg: 1, scope: !3880, file: !3, line: 973, type: !811)
!3883 = !DILocalVariable(name: "e", arg: 2, scope: !3880, file: !3, line: 973, type: !811)
!3884 = !DILocalVariable(name: "exit", scope: !3880, file: !3, line: 975, type: !3875)
!3885 = !DILocation(line: 0, scope: !3880)
!3886 = !DILocation(line: 977, column: 16, scope: !3880)
!3887 = !DILocation(line: 977, column: 21, scope: !3880)
!3888 = !DILocation(line: 977, column: 18, scope: !3880)
!3889 = !DILocation(line: 977, column: 3, scope: !3880)
!3890 = distinct !DISubprogram(name: "dump_recorded_exits", scope: !3, file: !3, line: 1121, type: !2732, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3891)
!3891 = !{!3892}
!3892 = !DILocalVariable(name: "file", arg: 1, scope: !3890, file: !3, line: 1121, type: !1811)
!3893 = !DILocation(line: 0, scope: !3890)
!3894 = !DILocation(line: 1123, column: 8, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 1123, column: 7)
!3896 = !DILocation(line: 1123, column: 23, scope: !3895)
!3897 = !DILocation(line: 1123, column: 7, scope: !3890)
!3898 = !DILocation(line: 1125, column: 60, scope: !3890)
!3899 = !DILocation(line: 1125, column: 3, scope: !3890)
!3900 = !DILocation(line: 1126, column: 1, scope: !3890)
!3901 = distinct !DISubprogram(name: "dump_recorded_exit", scope: !3, file: !3, line: 1102, type: !3902, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!393, !992, !397}
!3904 = !{!3905, !3906, !3907, !3908, !3909}
!3905 = !DILocalVariable(name: "slot", arg: 1, scope: !3901, file: !3, line: 1102, type: !992)
!3906 = !DILocalVariable(name: "file", arg: 2, scope: !3901, file: !3, line: 1102, type: !397)
!3907 = !DILocalVariable(name: "exit", scope: !3901, file: !3, line: 1104, type: !1777)
!3908 = !DILocalVariable(name: "n", scope: !3901, file: !3, line: 1105, type: !7)
!3909 = !DILocalVariable(name: "e", scope: !3901, file: !3, line: 1106, type: !423)
!3910 = !DILocation(line: 0, scope: !3901)
!3911 = !DILocation(line: 1104, column: 49, scope: !3901)
!3912 = !DILocation(line: 1106, column: 18, scope: !3901)
!3913 = !DILocation(line: 1108, column: 3, scope: !3901)
!3914 = !DILocation(line: 1108, column: 15, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1108, column: 3)
!3916 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1108, column: 3)
!3917 = !DILocation(line: 1108, column: 3, scope: !3916)
!3918 = !DILocation(line: 1109, column: 6, scope: !3915)
!3919 = !DILocation(line: 1108, column: 37, scope: !3915)
!3920 = !DILocation(line: 1108, column: 3, scope: !3915)
!3921 = distinct !{!3921, !3917, !3922}
!3922 = !DILocation(line: 1109, column: 6, scope: !3916)
!3923 = !DILocation(line: 1111, column: 12, scope: !3901)
!3924 = !DILocation(line: 1112, column: 8, scope: !3901)
!3925 = !DILocation(line: 1112, column: 13, scope: !3901)
!3926 = !DILocation(line: 1112, column: 23, scope: !3901)
!3927 = !DILocation(line: 1112, column: 29, scope: !3901)
!3928 = !DILocation(line: 1111, column: 3, scope: !3901)
!3929 = !DILocation(line: 1114, column: 3, scope: !3901)
!3930 = distinct !DISubprogram(name: "release_recorded_exits", scope: !3, file: !3, line: 1131, type: !3432, scopeLine: 1132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!3931 = !DILocation(line: 1133, column: 3, scope: !3930)
!3932 = !DILocation(line: 1134, column: 16, scope: !3930)
!3933 = !DILocation(line: 1134, column: 31, scope: !3930)
!3934 = !DILocation(line: 1134, column: 3, scope: !3930)
!3935 = !DILocation(line: 1135, column: 3, scope: !3930)
!3936 = !DILocation(line: 1135, column: 18, scope: !3930)
!3937 = !DILocation(line: 1135, column: 24, scope: !3930)
!3938 = !DILocation(line: 1136, column: 3, scope: !3930)
!3939 = !DILocation(line: 1137, column: 1, scope: !3930)
!3940 = distinct !DISubprogram(name: "loops_state_clear", scope: !378, file: !378, line: 487, type: !3862, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3941)
!3941 = !{!3942}
!3942 = !DILocalVariable(name: "flags", arg: 1, scope: !3940, file: !378, line: 487, type: !7)
!3943 = !DILocation(line: 0, scope: !3940)
!3944 = !DILocation(line: 489, column: 8, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3940, file: !378, line: 489, column: 7)
!3946 = !DILocation(line: 489, column: 7, scope: !3940)
!3947 = !DILocation(line: 491, column: 18, scope: !3940)
!3948 = !DILocation(line: 491, column: 24, scope: !3940)
!3949 = !DILocation(line: 492, column: 1, scope: !3940)
!3950 = distinct !DISubprogram(name: "get_loop_exit_edges", scope: !3, file: !3, line: 1142, type: !2404, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958}
!3952 = !DILocalVariable(name: "loop", arg: 1, scope: !3950, file: !3, line: 1142, type: !1807)
!3953 = !DILocalVariable(name: "edges", scope: !3950, file: !3, line: 1144, type: !1862)
!3954 = !DILocalVariable(name: "e", scope: !3950, file: !3, line: 1145, type: !423)
!3955 = !DILocalVariable(name: "i", scope: !3950, file: !3, line: 1146, type: !7)
!3956 = !DILocalVariable(name: "body", scope: !3950, file: !3, line: 1147, type: !1787)
!3957 = !DILocalVariable(name: "ei", scope: !3950, file: !3, line: 1148, type: !2409)
!3958 = !DILocalVariable(name: "exit", scope: !3950, file: !3, line: 1149, type: !1777)
!3959 = !DILocation(line: 0, scope: !3950)
!3960 = !DILocation(line: 1144, column: 3, scope: !3950)
!3961 = !DILocation(line: 1144, column: 21, scope: !3950)
!3962 = !DILocation(line: 1145, column: 3, scope: !3950)
!3963 = !DILocation(line: 1148, column: 3, scope: !3950)
!3964 = !DILocation(line: 1151, column: 3, scope: !3950)
!3965 = !DILocation(line: 1155, column: 7, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 1155, column: 7)
!3967 = !DILocation(line: 1155, column: 7, scope: !3950)
!3968 = !DILocation(line: 1157, column: 25, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 1157, column: 7)
!3970 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 1156, column: 5)
!3971 = !DILocation(line: 1157, column: 12, scope: !3969)
!3972 = !DILocation(line: 0, scope: !3969)
!3973 = !DILocation(line: 1157, column: 44, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1157, column: 7)
!3975 = !DILocation(line: 1157, column: 7, scope: !3969)
!3976 = !DILocation(line: 1158, column: 2, scope: !3974)
!3977 = !DILocation(line: 1157, column: 7, scope: !3974)
!3978 = distinct !{!3978, !3975, !3979}
!3979 = !DILocation(line: 1158, column: 2, scope: !3969)
!3980 = !DILocation(line: 1162, column: 14, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 1161, column: 5)
!3982 = !DILocation(line: 0, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 1163, column: 7)
!3984 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 1163, column: 7)
!3985 = !DILocation(line: 0, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1164, column: 2)
!3987 = !DILocation(line: 0, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1164, column: 2)
!3989 = !DILocation(line: 1163, column: 12, scope: !3984)
!3990 = !DILocation(line: 0, scope: !3984)
!3991 = !DILocation(line: 1163, column: 29, scope: !3983)
!3992 = !DILocation(line: 1163, column: 21, scope: !3983)
!3993 = !DILocation(line: 1163, column: 7, scope: !3984)
!3994 = !DILocation(line: 1164, column: 2, scope: !3986)
!3995 = !DILocation(line: 1164, column: 2, scope: !3988)
!3996 = !DILocation(line: 1166, column: 40, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 1166, column: 10)
!3998 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1165, column: 4)
!3999 = !DILocation(line: 1166, column: 43, scope: !3997)
!4000 = !DILocation(line: 1166, column: 11, scope: !3997)
!4001 = !DILocation(line: 1166, column: 10, scope: !3998)
!4002 = !DILocation(line: 1167, column: 8, scope: !3997)
!4003 = distinct !{!4003, !3994, !4004}
!4004 = !DILocation(line: 1168, column: 4, scope: !3986)
!4005 = !DILocation(line: 1163, column: 41, scope: !3983)
!4006 = !DILocation(line: 1163, column: 7, scope: !3983)
!4007 = distinct !{!4007, !3993, !4008}
!4008 = !DILocation(line: 1168, column: 4, scope: !3984)
!4009 = !DILocation(line: 1169, column: 13, scope: !3981)
!4010 = !DILocation(line: 1169, column: 7, scope: !3981)
!4011 = !DILocation(line: 1172, column: 10, scope: !3950)
!4012 = !DILocation(line: 1173, column: 1, scope: !3950)
!4013 = !DILocation(line: 1172, column: 3, scope: !3950)
!4014 = distinct !DISubprogram(name: "VEC_edge_heap_safe_push", scope: !135, file: !135, line: 152, type: !4015, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!2445, !2462, !423}
!4017 = !{!4018, !4019}
!4018 = !DILocalVariable(name: "vec_", arg: 1, scope: !4014, file: !135, line: 152, type: !2462)
!4019 = !DILocalVariable(name: "obj_", arg: 2, scope: !4014, file: !135, line: 152, type: !423)
!4020 = !DILocation(line: 0, scope: !4014)
!4021 = !DILocation(line: 152, column: 1, scope: !4014)
!4022 = distinct !DISubprogram(name: "num_loop_branches", scope: !3, file: !3, line: 1178, type: !2285, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4023)
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DILocalVariable(name: "loop", arg: 1, scope: !4022, file: !3, line: 1178, type: !1807)
!4025 = !DILocalVariable(name: "i", scope: !4022, file: !3, line: 1180, type: !7)
!4026 = !DILocalVariable(name: "n", scope: !4022, file: !3, line: 1180, type: !7)
!4027 = !DILocalVariable(name: "body", scope: !4022, file: !3, line: 1181, type: !1787)
!4028 = !DILocation(line: 0, scope: !4022)
!4029 = !DILocation(line: 1183, column: 3, scope: !4022)
!4030 = !DILocation(line: 1185, column: 10, scope: !4022)
!4031 = !DILocation(line: 0, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 1187, column: 3)
!4033 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 1187, column: 3)
!4034 = !DILocation(line: 1187, column: 8, scope: !4033)
!4035 = !DILocation(line: 0, scope: !4033)
!4036 = !DILocation(line: 1187, column: 25, scope: !4032)
!4037 = !DILocation(line: 1187, column: 17, scope: !4032)
!4038 = !DILocation(line: 1187, column: 3, scope: !4033)
!4039 = !DILocation(line: 1188, column: 9, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1188, column: 9)
!4041 = !DILocation(line: 1188, column: 37, scope: !4040)
!4042 = !DILocation(line: 1188, column: 9, scope: !4032)
!4043 = !DILocation(line: 1187, column: 37, scope: !4032)
!4044 = !DILocation(line: 1187, column: 3, scope: !4032)
!4045 = distinct !{!4045, !4038, !4046}
!4046 = !DILocation(line: 1189, column: 8, scope: !4033)
!4047 = !DILocation(line: 1190, column: 9, scope: !4022)
!4048 = !DILocation(line: 1190, column: 3, scope: !4022)
!4049 = !DILocation(line: 1192, column: 3, scope: !4022)
!4050 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !4051, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!7, !2443}
!4053 = !{!4054}
!4054 = !DILocalVariable(name: "vec_", arg: 1, scope: !4050, file: !135, line: 150, type: !2443)
!4055 = !DILocation(line: 0, scope: !4050)
!4056 = !DILocation(line: 150, column: 1, scope: !4050)
!4057 = distinct !DISubprogram(name: "add_bb_to_loop", scope: !3, file: !3, line: 1197, type: !4058, scopeLine: 1198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !938, !401}
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066}
!4061 = !DILocalVariable(name: "bb", arg: 1, scope: !4057, file: !3, line: 1197, type: !938)
!4062 = !DILocalVariable(name: "loop", arg: 2, scope: !4057, file: !3, line: 1197, type: !401)
!4063 = !DILocalVariable(name: "i", scope: !4057, file: !3, line: 1199, type: !7)
!4064 = !DILocalVariable(name: "ploop", scope: !4057, file: !3, line: 1200, type: !1122)
!4065 = !DILocalVariable(name: "ei", scope: !4057, file: !3, line: 1201, type: !2409)
!4066 = !DILocalVariable(name: "e", scope: !4057, file: !3, line: 1202, type: !423)
!4067 = !DILocation(line: 0, scope: !4057)
!4068 = !DILocation(line: 1200, column: 3, scope: !4057)
!4069 = !DILocation(line: 1201, column: 3, scope: !4057)
!4070 = !DILocation(line: 1202, column: 3, scope: !4057)
!4071 = !DILocation(line: 1204, column: 3, scope: !4057)
!4072 = !DILocation(line: 1205, column: 19, scope: !4057)
!4073 = !DILocation(line: 1206, column: 20, scope: !4057)
!4074 = !DILocation(line: 1206, column: 7, scope: !4057)
!4075 = !DILocation(line: 1206, column: 18, scope: !4057)
!4076 = !DILocation(line: 1207, column: 9, scope: !4057)
!4077 = !DILocation(line: 1207, column: 18, scope: !4057)
!4078 = !DILocation(line: 0, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1208, column: 3)
!4080 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 1208, column: 3)
!4081 = !DILocation(line: 1208, column: 8, scope: !4080)
!4082 = !DILocation(line: 0, scope: !4080)
!4083 = !DILocation(line: 1208, column: 15, scope: !4079)
!4084 = !DILocation(line: 1208, column: 3, scope: !4080)
!4085 = !DILocation(line: 1209, column: 5, scope: !4079)
!4086 = !DILocation(line: 1209, column: 12, scope: !4079)
!4087 = !DILocation(line: 1209, column: 21, scope: !4079)
!4088 = !DILocation(line: 1208, column: 66, scope: !4079)
!4089 = !DILocation(line: 1208, column: 3, scope: !4079)
!4090 = distinct !{!4090, !4084, !4091}
!4091 = !DILocation(line: 1209, column: 21, scope: !4080)
!4092 = !DILocation(line: 1211, column: 3, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 1211, column: 3)
!4094 = !DILocation(line: 0, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 1211, column: 3)
!4096 = !DILocation(line: 1211, column: 3, scope: !4095)
!4097 = !DILocation(line: 1213, column: 25, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4095, file: !3, line: 1212, column: 5)
!4099 = !DILocation(line: 1213, column: 7, scope: !4098)
!4100 = distinct !{!4100, !4092, !4101}
!4101 = !DILocation(line: 1214, column: 5, scope: !4093)
!4102 = !DILocation(line: 1215, column: 3, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 1215, column: 3)
!4104 = !DILocation(line: 1215, column: 3, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 1215, column: 3)
!4106 = !DILocation(line: 1217, column: 25, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 1216, column: 5)
!4108 = !DILocation(line: 1217, column: 7, scope: !4107)
!4109 = distinct !{!4109, !4102, !4110}
!4110 = !DILocation(line: 1218, column: 5, scope: !4103)
!4111 = !DILocation(line: 1219, column: 1, scope: !4057)
!4112 = distinct !DISubprogram(name: "remove_bb_from_loops", scope: !3, file: !3, line: 1223, type: !4113, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !938}
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4121}
!4116 = !DILocalVariable(name: "bb", arg: 1, scope: !4112, file: !3, line: 1223, type: !938)
!4117 = !DILocalVariable(name: "i", scope: !4112, file: !3, line: 1225, type: !393)
!4118 = !DILocalVariable(name: "loop", scope: !4112, file: !3, line: 1226, type: !401)
!4119 = !DILocalVariable(name: "ploop", scope: !4112, file: !3, line: 1227, type: !1122)
!4120 = !DILocalVariable(name: "ei", scope: !4112, file: !3, line: 1228, type: !2409)
!4121 = !DILocalVariable(name: "e", scope: !4112, file: !3, line: 1229, type: !423)
!4122 = !DILocation(line: 0, scope: !4112)
!4123 = !DILocation(line: 1226, column: 27, scope: !4112)
!4124 = !DILocation(line: 1227, column: 3, scope: !4112)
!4125 = !DILocation(line: 1228, column: 3, scope: !4112)
!4126 = !DILocation(line: 1229, column: 3, scope: !4112)
!4127 = !DILocation(line: 1231, column: 3, scope: !4112)
!4128 = !DILocation(line: 1232, column: 9, scope: !4112)
!4129 = !DILocation(line: 1232, column: 18, scope: !4112)
!4130 = !DILocation(line: 0, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 1233, column: 3)
!4132 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1233, column: 3)
!4133 = !DILocation(line: 1233, column: 8, scope: !4132)
!4134 = !DILocation(line: 0, scope: !4132)
!4135 = !DILocation(line: 1233, column: 15, scope: !4131)
!4136 = !DILocation(line: 1233, column: 3, scope: !4132)
!4137 = !DILocation(line: 1234, column: 5, scope: !4131)
!4138 = !DILocation(line: 1234, column: 12, scope: !4131)
!4139 = !DILocation(line: 1234, column: 21, scope: !4131)
!4140 = !DILocation(line: 1233, column: 66, scope: !4131)
!4141 = !DILocation(line: 1233, column: 3, scope: !4131)
!4142 = distinct !{!4142, !4136, !4143}
!4143 = !DILocation(line: 1234, column: 21, scope: !4132)
!4144 = !DILocation(line: 1235, column: 19, scope: !4112)
!4145 = !DILocation(line: 1236, column: 7, scope: !4112)
!4146 = !DILocation(line: 1236, column: 18, scope: !4112)
!4147 = !DILocation(line: 1238, column: 3, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1238, column: 3)
!4149 = !DILocation(line: 0, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 1238, column: 3)
!4151 = !DILocation(line: 1238, column: 3, scope: !4150)
!4152 = !DILocation(line: 1240, column: 25, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 1239, column: 5)
!4154 = !DILocation(line: 1240, column: 7, scope: !4153)
!4155 = distinct !{!4155, !4147, !4156}
!4156 = !DILocation(line: 1241, column: 5, scope: !4148)
!4157 = !DILocation(line: 1242, column: 3, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1242, column: 3)
!4159 = !DILocation(line: 1242, column: 3, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 1242, column: 3)
!4161 = !DILocation(line: 1244, column: 25, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 1243, column: 5)
!4163 = !DILocation(line: 1244, column: 7, scope: !4162)
!4164 = distinct !{!4164, !4157, !4165}
!4165 = !DILocation(line: 1245, column: 5, scope: !4158)
!4166 = !DILocation(line: 1246, column: 1, scope: !4112)
!4167 = distinct !DISubprogram(name: "delete_loop", scope: !3, file: !3, line: 1276, type: !2773, scopeLine: 1277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4168)
!4168 = !{!4169}
!4169 = !DILocalVariable(name: "loop", arg: 1, scope: !4167, file: !3, line: 1276, type: !401)
!4170 = !DILocation(line: 0, scope: !4167)
!4171 = !DILocation(line: 1279, column: 3, scope: !4167)
!4172 = !DILocation(line: 1282, column: 3, scope: !4167)
!4173 = !DILocation(line: 1285, column: 3, scope: !4167)
!4174 = !DILocation(line: 1286, column: 1, scope: !4167)
!4175 = distinct !DISubprogram(name: "VEC_loop_p_base_replace", scope: !378, file: !378, line: 85, type: !4176, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!1122, !3112, !7, !1122}
!4178 = !{!4179, !4180, !4181, !4182}
!4179 = !DILocalVariable(name: "vec_", arg: 1, scope: !4175, file: !378, line: 85, type: !3112)
!4180 = !DILocalVariable(name: "ix_", arg: 2, scope: !4175, file: !378, line: 85, type: !7)
!4181 = !DILocalVariable(name: "obj_", arg: 3, scope: !4175, file: !378, line: 85, type: !1122)
!4182 = !DILocalVariable(name: "old_obj_", scope: !4175, file: !378, line: 85, type: !1122)
!4183 = !DILocation(line: 0, scope: !4175)
!4184 = !DILocation(line: 85, column: 1, scope: !4175)
!4185 = distinct !DISubprogram(name: "cancel_loop_tree", scope: !3, file: !3, line: 1309, type: !2773, scopeLine: 1310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4186)
!4186 = !{!4187}
!4187 = !DILocalVariable(name: "loop", arg: 1, scope: !4185, file: !3, line: 1309, type: !401)
!4188 = !DILocation(line: 0, scope: !4185)
!4189 = !DILocation(line: 1311, column: 3, scope: !4185)
!4190 = !DILocation(line: 1311, column: 16, scope: !4185)
!4191 = !DILocation(line: 1312, column: 5, scope: !4185)
!4192 = distinct !{!4192, !4189, !4193}
!4193 = !DILocation(line: 1312, column: 34, scope: !4185)
!4194 = !DILocation(line: 1313, column: 3, scope: !4185)
!4195 = !DILocation(line: 1314, column: 1, scope: !4185)
!4196 = distinct !DISubprogram(name: "cancel_loop", scope: !3, file: !3, line: 1291, type: !2773, scopeLine: 1292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4197)
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DILocalVariable(name: "loop", arg: 1, scope: !4196, file: !3, line: 1291, type: !401)
!4199 = !DILocalVariable(name: "bbs", scope: !4196, file: !3, line: 1293, type: !1787)
!4200 = !DILocalVariable(name: "i", scope: !4196, file: !3, line: 1294, type: !7)
!4201 = !DILocalVariable(name: "outer", scope: !4196, file: !3, line: 1295, type: !401)
!4202 = !DILocation(line: 0, scope: !4196)
!4203 = !DILocation(line: 1295, column: 24, scope: !4196)
!4204 = !DILocation(line: 1297, column: 3, scope: !4196)
!4205 = !DILocation(line: 1300, column: 9, scope: !4196)
!4206 = !DILocation(line: 0, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 1301, column: 3)
!4208 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 1301, column: 3)
!4209 = !DILocation(line: 1301, column: 8, scope: !4208)
!4210 = !DILocation(line: 0, scope: !4208)
!4211 = !DILocation(line: 1301, column: 25, scope: !4207)
!4212 = !DILocation(line: 1301, column: 17, scope: !4207)
!4213 = !DILocation(line: 1301, column: 3, scope: !4208)
!4214 = !DILocation(line: 1302, column: 5, scope: !4207)
!4215 = !DILocation(line: 1302, column: 13, scope: !4207)
!4216 = !DILocation(line: 1302, column: 25, scope: !4207)
!4217 = !DILocation(line: 1301, column: 37, scope: !4207)
!4218 = !DILocation(line: 1301, column: 3, scope: !4207)
!4219 = distinct !{!4219, !4213, !4220}
!4220 = !DILocation(line: 1302, column: 27, scope: !4208)
!4221 = !DILocation(line: 1304, column: 3, scope: !4196)
!4222 = !DILocation(line: 1305, column: 1, scope: !4196)
!4223 = distinct !DISubprogram(name: "verify_loop_structure", scope: !3, file: !3, line: 1324, type: !3432, scopeLine: 1325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4244, !4248, !4251, !4252}
!4225 = !DILocalVariable(name: "sizes", scope: !4223, file: !3, line: 1326, type: !1788)
!4226 = !DILocalVariable(name: "i", scope: !4223, file: !3, line: 1326, type: !7)
!4227 = !DILocalVariable(name: "j", scope: !4223, file: !3, line: 1326, type: !7)
!4228 = !DILocalVariable(name: "irreds", scope: !4223, file: !3, line: 1327, type: !3150)
!4229 = !DILocalVariable(name: "bbs", scope: !4223, file: !3, line: 1328, type: !1787)
!4230 = !DILocalVariable(name: "bb", scope: !4223, file: !3, line: 1328, type: !938)
!4231 = !DILocalVariable(name: "loop", scope: !4223, file: !3, line: 1329, type: !401)
!4232 = !DILocalVariable(name: "err", scope: !4223, file: !3, line: 1330, type: !393)
!4233 = !DILocalVariable(name: "e", scope: !4223, file: !3, line: 1331, type: !423)
!4234 = !DILocalVariable(name: "num", scope: !4223, file: !3, line: 1332, type: !7)
!4235 = !DILocalVariable(name: "li", scope: !4223, file: !3, line: 1333, type: !2530)
!4236 = !DILocalVariable(name: "exit", scope: !4223, file: !3, line: 1334, type: !1777)
!4237 = !DILocalVariable(name: "mexit", scope: !4223, file: !3, line: 1334, type: !1777)
!4238 = !DILocalVariable(name: "ei", scope: !4239, file: !3, line: 1420, type: !2409)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 1419, column: 2)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 1418, column: 7)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 1418, column: 7)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 1415, column: 5)
!4243 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1414, column: 7)
!4244 = !DILocalVariable(name: "ei", scope: !4245, file: !3, line: 1436, type: !2409)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 1435, column: 2)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 1434, column: 7)
!4247 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 1434, column: 7)
!4248 = !DILocalVariable(name: "n_exits", scope: !4249, file: !3, line: 1513, type: !7)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 1512, column: 5)
!4250 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1511, column: 7)
!4251 = !DILocalVariable(name: "eloops", scope: !4249, file: !3, line: 1513, type: !7)
!4252 = !DILocalVariable(name: "ei", scope: !4253, file: !3, line: 1518, type: !2409)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 1517, column: 2)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 1516, column: 7)
!4255 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 1516, column: 7)
!4256 = !DILocation(line: 1329, column: 3, scope: !4223)
!4257 = !DILocation(line: 0, scope: !4223)
!4258 = !DILocation(line: 1331, column: 3, scope: !4223)
!4259 = !DILocation(line: 1332, column: 18, scope: !4223)
!4260 = !DILocation(line: 1333, column: 3, scope: !4223)
!4261 = !DILocation(line: 1337, column: 11, scope: !4223)
!4262 = !DILocation(line: 1338, column: 12, scope: !4223)
!4263 = !DILocation(line: 1340, column: 3, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1340, column: 3)
!4265 = !DILocation(line: 0, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 1341, column: 5)
!4267 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 1340, column: 3)
!4268 = !DILocation(line: 1340, column: 3, scope: !4267)
!4269 = !DILocation(line: 0, scope: !4264)
!4270 = !DILocation(line: 1341, column: 21, scope: !4266)
!4271 = !DILocation(line: 1341, column: 15, scope: !4266)
!4272 = !DILocation(line: 1341, column: 10, scope: !4266)
!4273 = !DILocation(line: 1341, column: 34, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 1341, column: 5)
!4275 = !DILocation(line: 1341, column: 5, scope: !4266)
!4276 = !DILocation(line: 1342, column: 19, scope: !4274)
!4277 = !DILocation(line: 1342, column: 7, scope: !4274)
!4278 = !DILocation(line: 1342, column: 23, scope: !4274)
!4279 = !DILocation(line: 1341, column: 59, scope: !4274)
!4280 = !DILocation(line: 1341, column: 47, scope: !4274)
!4281 = !DILocation(line: 1341, column: 45, scope: !4274)
!4282 = !DILocation(line: 1341, column: 5, scope: !4274)
!4283 = distinct !{!4283, !4275, !4284}
!4284 = !DILocation(line: 1342, column: 23, scope: !4266)
!4285 = !DILocation(line: 0, scope: !4267)
!4286 = distinct !{!4286, !4263, !4287}
!4287 = !DILocation(line: 1342, column: 23, scope: !4264)
!4288 = !DILocation(line: 1344, column: 3, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1344, column: 3)
!4290 = !DILocation(line: 1344, column: 3, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 1344, column: 3)
!4292 = !DILocation(line: 1346, column: 17, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 1345, column: 5)
!4294 = !DILocation(line: 1348, column: 17, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 1348, column: 11)
!4296 = !DILocation(line: 1348, column: 30, scope: !4295)
!4297 = !DILocation(line: 1348, column: 27, scope: !4295)
!4298 = !DILocation(line: 1348, column: 11, scope: !4293)
!4299 = !DILocation(line: 1350, column: 4, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 1349, column: 2)
!4301 = !DILocation(line: 1353, column: 2, scope: !4300)
!4302 = distinct !{!4302, !4288, !4303}
!4303 = !DILocation(line: 1354, column: 5, scope: !4289)
!4304 = !DILocation(line: 1357, column: 3, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1357, column: 3)
!4306 = !DILocation(line: 1330, column: 7, scope: !4223)
!4307 = !DILocation(line: 1357, column: 3, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 1357, column: 3)
!4309 = !DILocation(line: 1359, column: 13, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 1358, column: 5)
!4311 = !DILocation(line: 1361, column: 12, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1361, column: 7)
!4313 = !DILocation(line: 1361, column: 23, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 1361, column: 7)
!4315 = !DILocation(line: 1361, column: 29, scope: !4314)
!4316 = !DILocation(line: 1361, column: 21, scope: !4314)
!4317 = !DILocation(line: 1361, column: 7, scope: !4312)
!4318 = !DILocation(line: 1362, column: 36, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 1362, column: 6)
!4320 = !DILocation(line: 1362, column: 7, scope: !4319)
!4321 = !DILocation(line: 1362, column: 6, scope: !4314)
!4322 = !DILocation(line: 1365, column: 7, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 1363, column: 4)
!4324 = !DILocation(line: 1365, column: 15, scope: !4323)
!4325 = !DILocation(line: 1365, column: 22, scope: !4323)
!4326 = !DILocation(line: 1365, column: 28, scope: !4323)
!4327 = !DILocation(line: 1364, column: 6, scope: !4323)
!4328 = !DILocation(line: 1367, column: 4, scope: !4323)
!4329 = !DILocation(line: 1361, column: 41, scope: !4314)
!4330 = !DILocation(line: 1361, column: 7, scope: !4314)
!4331 = distinct !{!4331, !4317, !4332}
!4332 = !DILocation(line: 1367, column: 4, scope: !4312)
!4333 = !DILocation(line: 1368, column: 13, scope: !4310)
!4334 = !DILocation(line: 1368, column: 7, scope: !4310)
!4335 = distinct !{!4335, !4304, !4336}
!4336 = !DILocation(line: 1369, column: 5, scope: !4305)
!4337 = !DILocation(line: 1372, column: 3, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1372, column: 3)
!4339 = !DILocation(line: 1372, column: 3, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 1372, column: 3)
!4341 = !DILocation(line: 1374, column: 17, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 1373, column: 5)
!4343 = !DILocation(line: 1376, column: 11, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 1376, column: 11)
!4345 = !DILocation(line: 1377, column: 4, scope: !4344)
!4346 = !DILocation(line: 1377, column: 7, scope: !4344)
!4347 = !DILocation(line: 1377, column: 40, scope: !4344)
!4348 = !DILocation(line: 1376, column: 11, scope: !4342)
!4349 = !DILocation(line: 1379, column: 4, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 1378, column: 2)
!4351 = !DILocation(line: 1381, column: 2, scope: !4350)
!4352 = !DILocation(line: 1382, column: 11, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 1382, column: 11)
!4354 = !DILocation(line: 1382, column: 11, scope: !4342)
!4355 = !DILocation(line: 1384, column: 24, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1384, column: 8)
!4357 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 1383, column: 2)
!4358 = !DILocation(line: 1384, column: 30, scope: !4356)
!4359 = !DILocation(line: 1384, column: 9, scope: !4356)
!4360 = !DILocation(line: 1384, column: 8, scope: !4357)
!4361 = !DILocation(line: 1386, column: 8, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 1385, column: 6)
!4363 = !DILocation(line: 1388, column: 6, scope: !4362)
!4364 = !DILocation(line: 0, scope: !4342)
!4365 = !DILocation(line: 1389, column: 21, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1389, column: 8)
!4367 = !DILocation(line: 1389, column: 27, scope: !4366)
!4368 = !DILocation(line: 1389, column: 8, scope: !4366)
!4369 = !DILocation(line: 1389, column: 37, scope: !4366)
!4370 = !DILocation(line: 1389, column: 43, scope: !4366)
!4371 = !DILocation(line: 1389, column: 34, scope: !4366)
!4372 = !DILocation(line: 1389, column: 8, scope: !4357)
!4373 = !DILocation(line: 1391, column: 8, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 1390, column: 6)
!4375 = !DILocation(line: 1394, column: 8, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1394, column: 8)
!4377 = !DILocation(line: 1393, column: 6, scope: !4374)
!4378 = !DILocation(line: 1394, column: 14, scope: !4376)
!4379 = !DILocation(line: 1394, column: 21, scope: !4376)
!4380 = !DILocation(line: 1394, column: 33, scope: !4376)
!4381 = !DILocation(line: 1394, column: 8, scope: !4357)
!4382 = !DILocation(line: 1396, column: 8, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 1395, column: 6)
!4384 = !DILocation(line: 1398, column: 6, scope: !4383)
!4385 = !DILocation(line: 1400, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 1400, column: 11)
!4387 = !DILocation(line: 1400, column: 17, scope: !4386)
!4388 = !DILocation(line: 1400, column: 25, scope: !4386)
!4389 = !DILocation(line: 1400, column: 37, scope: !4386)
!4390 = !DILocation(line: 1400, column: 11, scope: !4342)
!4391 = !DILocation(line: 1402, column: 4, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 1401, column: 2)
!4393 = !DILocation(line: 1404, column: 2, scope: !4392)
!4394 = !DILocation(line: 1405, column: 11, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 1405, column: 11)
!4396 = !DILocation(line: 1406, column: 4, scope: !4395)
!4397 = !DILocation(line: 1406, column: 25, scope: !4395)
!4398 = !DILocation(line: 1406, column: 8, scope: !4395)
!4399 = !DILocation(line: 1406, column: 32, scope: !4395)
!4400 = !DILocation(line: 1406, column: 38, scope: !4395)
!4401 = !DILocation(line: 1405, column: 11, scope: !4342)
!4402 = !DILocation(line: 1408, column: 4, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 1407, column: 2)
!4404 = !DILocation(line: 1410, column: 2, scope: !4403)
!4405 = distinct !{!4405, !4337, !4406}
!4406 = !DILocation(line: 1411, column: 5, scope: !4338)
!4407 = !DILocation(line: 1414, column: 7, scope: !4243)
!4408 = !DILocation(line: 1414, column: 7, scope: !4223)
!4409 = !DILocation(line: 1417, column: 31, scope: !4242)
!4410 = !DILocation(line: 1417, column: 16, scope: !4242)
!4411 = !DILocation(line: 1418, column: 7, scope: !4241)
!4412 = !DILocation(line: 0, scope: !4239)
!4413 = !DILocation(line: 0, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 1425, column: 4)
!4415 = !DILocation(line: 0, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 1425, column: 4)
!4417 = !DILocation(line: 1418, column: 7, scope: !4240)
!4418 = !DILocation(line: 0, scope: !4241)
!4419 = !DILocation(line: 1420, column: 4, scope: !4239)
!4420 = !DILocation(line: 1421, column: 12, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 1421, column: 8)
!4422 = !DILocation(line: 1421, column: 18, scope: !4421)
!4423 = !DILocation(line: 0, scope: !4421)
!4424 = !DILocation(line: 1421, column: 8, scope: !4239)
!4425 = !DILocation(line: 1422, column: 6, scope: !4421)
!4426 = !DILocation(line: 1424, column: 6, scope: !4421)
!4427 = !DILocation(line: 1425, column: 4, scope: !4414)
!4428 = !DILocation(line: 1425, column: 4, scope: !4416)
!4429 = !DILocation(line: 1426, column: 10, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 1426, column: 10)
!4431 = !DILocation(line: 1426, column: 13, scope: !4430)
!4432 = !DILocation(line: 1426, column: 19, scope: !4430)
!4433 = !DILocation(line: 1426, column: 10, scope: !4416)
!4434 = !DILocation(line: 1427, column: 17, scope: !4430)
!4435 = !DILocation(line: 1427, column: 8, scope: !4430)
!4436 = distinct !{!4436, !4427, !4437}
!4437 = !DILocation(line: 1427, column: 37, scope: !4414)
!4438 = !DILocation(line: 1428, column: 2, scope: !4240)
!4439 = !DILocation(line: 0, scope: !4240)
!4440 = distinct !{!4440, !4411, !4441}
!4441 = !DILocation(line: 1428, column: 2, scope: !4241)
!4442 = !DILocation(line: 1431, column: 7, scope: !4242)
!4443 = !DILocation(line: 1434, column: 7, scope: !4247)
!4444 = !DILocation(line: 0, scope: !4245)
!4445 = !DILocation(line: 0, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 1450, column: 4)
!4447 = !DILocation(line: 0, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 1450, column: 4)
!4449 = !DILocation(line: 1434, column: 7, scope: !4246)
!4450 = !DILocation(line: 0, scope: !4247)
!4451 = !DILocation(line: 1436, column: 4, scope: !4245)
!4452 = !DILocation(line: 1438, column: 13, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 1438, column: 8)
!4454 = !DILocation(line: 1438, column: 19, scope: !4453)
!4455 = !DILocation(line: 1439, column: 8, scope: !4453)
!4456 = !DILocation(line: 1439, column: 12, scope: !4453)
!4457 = !DILocation(line: 1438, column: 8, scope: !4245)
!4458 = !DILocation(line: 1441, column: 8, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 1440, column: 6)
!4460 = !DILocation(line: 1443, column: 6, scope: !4459)
!4461 = !DILocation(line: 1445, column: 8, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 1444, column: 13)
!4463 = !DILocation(line: 1445, column: 11, scope: !4462)
!4464 = !DILocation(line: 1444, column: 13, scope: !4453)
!4465 = !DILocation(line: 1447, column: 8, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1446, column: 6)
!4467 = !DILocation(line: 1449, column: 6, scope: !4466)
!4468 = !DILocation(line: 1450, column: 4, scope: !4446)
!4469 = !DILocation(line: 1450, column: 4, scope: !4448)
!4470 = !DILocation(line: 1452, column: 13, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 1452, column: 12)
!4472 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 1451, column: 6)
!4473 = !DILocation(line: 1452, column: 16, scope: !4471)
!4474 = !DILocation(line: 1452, column: 22, scope: !4471)
!4475 = !DILocation(line: 1453, column: 5, scope: !4471)
!4476 = !DILocation(line: 1453, column: 19, scope: !4471)
!4477 = !DILocation(line: 1452, column: 12, scope: !4472)
!4478 = !DILocation(line: 1456, column: 8, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 1454, column: 3)
!4480 = !DILocation(line: 1456, column: 13, scope: !4479)
!4481 = !DILocation(line: 1456, column: 23, scope: !4479)
!4482 = !DILocation(line: 1456, column: 29, scope: !4479)
!4483 = !DILocation(line: 1455, column: 5, scope: !4479)
!4484 = !DILocation(line: 1458, column: 3, scope: !4479)
!4485 = !DILocation(line: 1460, column: 10, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 1459, column: 17)
!4487 = !DILocation(line: 1460, column: 23, scope: !4486)
!4488 = !DILocation(line: 1459, column: 17, scope: !4471)
!4489 = !DILocation(line: 1463, column: 8, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 1461, column: 3)
!4491 = !DILocation(line: 1463, column: 13, scope: !4490)
!4492 = !DILocation(line: 1463, column: 23, scope: !4490)
!4493 = !DILocation(line: 1463, column: 29, scope: !4490)
!4494 = !DILocation(line: 1462, column: 5, scope: !4490)
!4495 = !DILocation(line: 1465, column: 3, scope: !4490)
!4496 = !DILocation(line: 1466, column: 8, scope: !4472)
!4497 = !DILocation(line: 1466, column: 11, scope: !4472)
!4498 = !DILocation(line: 1466, column: 17, scope: !4472)
!4499 = distinct !{!4499, !4468, !4500}
!4500 = !DILocation(line: 1467, column: 6, scope: !4446)
!4501 = !DILocation(line: 1468, column: 2, scope: !4246)
!4502 = !DILocation(line: 0, scope: !4246)
!4503 = distinct !{!4503, !4443, !4504}
!4504 = !DILocation(line: 1468, column: 2, scope: !4247)
!4505 = !DILocation(line: 1469, column: 13, scope: !4242)
!4506 = !DILocation(line: 1469, column: 7, scope: !4242)
!4507 = !DILocation(line: 1470, column: 5, scope: !4242)
!4508 = !DILocation(line: 1473, column: 3, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1473, column: 3)
!4510 = !DILocation(line: 1473, column: 3, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 1473, column: 3)
!4512 = !DILocation(line: 1475, column: 18, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 1475, column: 11)
!4514 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 1474, column: 5)
!4515 = !DILocation(line: 1475, column: 12, scope: !4513)
!4516 = !DILocation(line: 1475, column: 24, scope: !4513)
!4517 = !DILocation(line: 1475, column: 40, scope: !4513)
!4518 = !DILocation(line: 1475, column: 42, scope: !4513)
!4519 = !DILocation(line: 1475, column: 11, scope: !4514)
!4520 = !DILocation(line: 1478, column: 10, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 1476, column: 2)
!4522 = !DILocation(line: 1477, column: 4, scope: !4521)
!4523 = !DILocation(line: 1480, column: 2, scope: !4521)
!4524 = !DILocation(line: 1485, column: 9, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 1485, column: 4)
!4526 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 1482, column: 2)
!4527 = !DILocation(line: 0, scope: !4525)
!4528 = !DILocation(line: 1486, column: 15, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 1485, column: 4)
!4530 = !DILocation(line: 1486, column: 9, scope: !4529)
!4531 = !DILocation(line: 1486, column: 25, scope: !4529)
!4532 = !DILocation(line: 1486, column: 17, scope: !4529)
!4533 = !DILocation(line: 1485, column: 4, scope: !4525)
!4534 = !DILocation(line: 1489, column: 13, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 1489, column: 12)
!4536 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 1488, column: 6)
!4537 = !DILocation(line: 1489, column: 16, scope: !4535)
!4538 = !DILocation(line: 1489, column: 12, scope: !4536)
!4539 = !DILocation(line: 1490, column: 18, scope: !4535)
!4540 = !DILocation(line: 1490, column: 3, scope: !4535)
!4541 = !DILocation(line: 1485, column: 4, scope: !4529)
!4542 = distinct !{!4542, !4533, !4543}
!4543 = !DILocation(line: 1491, column: 6, scope: !4525)
!4544 = !DILocation(line: 1493, column: 13, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 1493, column: 8)
!4546 = !DILocation(line: 1493, column: 8, scope: !4526)
!4547 = !DILocation(line: 1495, column: 56, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 1494, column: 6)
!4549 = !DILocation(line: 1495, column: 8, scope: !4548)
!4550 = !DILocation(line: 1497, column: 6, scope: !4548)
!4551 = !DILocation(line: 0, scope: !4513)
!4552 = !DILocation(line: 1500, column: 12, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 1500, column: 11)
!4554 = !DILocation(line: 1500, column: 11, scope: !4514)
!4555 = !DILocation(line: 1502, column: 8, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 1502, column: 8)
!4557 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 1501, column: 2)
!4558 = !DILocation(line: 1502, column: 14, scope: !4556)
!4559 = !DILocation(line: 1502, column: 21, scope: !4556)
!4560 = !DILocation(line: 1502, column: 26, scope: !4556)
!4561 = !DILocation(line: 1502, column: 8, scope: !4557)
!4562 = !DILocation(line: 1505, column: 14, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 1503, column: 6)
!4564 = !DILocation(line: 1504, column: 8, scope: !4563)
!4565 = !DILocation(line: 1507, column: 6, scope: !4563)
!4566 = !DILocation(line: 0, scope: !4514)
!4567 = distinct !{!4567, !4508, !4568}
!4568 = !DILocation(line: 1509, column: 5, scope: !4509)
!4569 = !DILocation(line: 1511, column: 7, scope: !4250)
!4570 = !DILocation(line: 1511, column: 7, scope: !4223)
!4571 = !DILocation(line: 0, scope: !4249)
!4572 = !DILocation(line: 1515, column: 43, scope: !4249)
!4573 = !DILocation(line: 1515, column: 7, scope: !4249)
!4574 = !DILocation(line: 1516, column: 7, scope: !4255)
!4575 = !DILocation(line: 0, scope: !4253)
!4576 = !DILocation(line: 0, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 1521, column: 4)
!4578 = !DILocation(line: 0, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1521, column: 4)
!4580 = !DILocation(line: 1516, column: 7, scope: !4254)
!4581 = !DILocation(line: 1513, column: 16, scope: !4249)
!4582 = !DILocation(line: 0, scope: !4255)
!4583 = !DILocation(line: 1518, column: 4, scope: !4253)
!4584 = !DILocation(line: 1519, column: 12, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 1519, column: 8)
!4586 = !DILocation(line: 1519, column: 27, scope: !4585)
!4587 = !DILocation(line: 1519, column: 42, scope: !4585)
!4588 = !DILocation(line: 1519, column: 24, scope: !4585)
!4589 = !DILocation(line: 1519, column: 8, scope: !4253)
!4590 = !DILocation(line: 1521, column: 4, scope: !4577)
!4591 = !DILocation(line: 0, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 1538, column: 8)
!4593 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 1522, column: 6)
!4594 = !DILocation(line: 1521, column: 4, scope: !4579)
!4595 = !DILocation(line: 1523, column: 39, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 1523, column: 12)
!4597 = !DILocation(line: 1523, column: 52, scope: !4596)
!4598 = !DILocation(line: 1523, column: 55, scope: !4596)
!4599 = !DILocation(line: 1523, column: 12, scope: !4596)
!4600 = !DILocation(line: 1523, column: 12, scope: !4593)
!4601 = !DILocation(line: 1526, column: 15, scope: !4593)
!4602 = !DILocation(line: 1527, column: 38, scope: !4593)
!4603 = !DILocation(line: 1527, column: 15, scope: !4593)
!4604 = !DILocation(line: 1528, column: 13, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 1528, column: 12)
!4606 = !DILocation(line: 1528, column: 12, scope: !4593)
!4607 = !DILocation(line: 1531, column: 5, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 1529, column: 3)
!4609 = !DILocation(line: 1531, column: 8, scope: !4608)
!4610 = !DILocation(line: 1531, column: 13, scope: !4608)
!4611 = !DILocation(line: 1531, column: 23, scope: !4608)
!4612 = !DILocation(line: 1531, column: 29, scope: !4608)
!4613 = !DILocation(line: 1530, column: 5, scope: !4608)
!4614 = !DILocation(line: 1533, column: 3, scope: !4608)
!4615 = !DILocation(line: 1535, column: 8, scope: !4593)
!4616 = !DILocation(line: 0, scope: !4593)
!4617 = !DILocation(line: 1535, column: 8, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 1535, column: 8)
!4619 = !DILocation(line: 1536, column: 9, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 1535, column: 8)
!4621 = !DILocation(line: 1535, column: 34, scope: !4620)
!4622 = !DILocation(line: 1535, column: 8, scope: !4620)
!4623 = distinct !{!4623, !4617, !4624}
!4624 = !DILocation(line: 1536, column: 9, scope: !4618)
!4625 = !DILocation(line: 1538, column: 24, scope: !4592)
!4626 = !DILocation(line: 1538, column: 18, scope: !4592)
!4627 = !DILocation(line: 1538, column: 13, scope: !4592)
!4628 = !DILocation(line: 1539, column: 6, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 1538, column: 8)
!4630 = !DILocation(line: 1539, column: 14, scope: !4629)
!4631 = !DILocation(line: 1539, column: 17, scope: !4629)
!4632 = !DILocation(line: 1539, column: 23, scope: !4629)
!4633 = !DILocation(line: 1539, column: 11, scope: !4629)
!4634 = !DILocation(line: 1538, column: 8, scope: !4592)
!4635 = !DILocation(line: 1542, column: 11, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 1541, column: 3)
!4637 = !DILocation(line: 1543, column: 17, scope: !4636)
!4638 = !DILocation(line: 1543, column: 5, scope: !4636)
!4639 = !DILocation(line: 1543, column: 21, scope: !4636)
!4640 = !DILocation(line: 1540, column: 25, scope: !4629)
!4641 = !DILocation(line: 1540, column: 13, scope: !4629)
!4642 = !DILocation(line: 1540, column: 11, scope: !4629)
!4643 = !DILocation(line: 1538, column: 8, scope: !4629)
!4644 = distinct !{!4644, !4634, !4645}
!4645 = !DILocation(line: 1544, column: 3, scope: !4592)
!4646 = !DILocation(line: 1546, column: 19, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 1546, column: 12)
!4648 = !DILocation(line: 1546, column: 12, scope: !4593)
!4649 = !DILocation(line: 1549, column: 8, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 1547, column: 3)
!4651 = !DILocation(line: 1549, column: 13, scope: !4650)
!4652 = !DILocation(line: 1549, column: 29, scope: !4650)
!4653 = !DILocation(line: 1548, column: 5, scope: !4650)
!4654 = !DILocation(line: 1551, column: 3, scope: !4650)
!4655 = distinct !{!4655, !4590, !4656}
!4656 = !DILocation(line: 1552, column: 6, scope: !4577)
!4657 = !DILocation(line: 1553, column: 2, scope: !4254)
!4658 = !DILocation(line: 0, scope: !4254)
!4659 = distinct !{!4659, !4574, !4660}
!4660 = !DILocation(line: 1553, column: 2, scope: !4255)
!4661 = !DILocation(line: 1555, column: 11, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 1555, column: 11)
!4663 = !DILocation(line: 1555, column: 37, scope: !4662)
!4664 = !DILocation(line: 1555, column: 52, scope: !4662)
!4665 = !DILocation(line: 1555, column: 22, scope: !4662)
!4666 = !DILocation(line: 1555, column: 19, scope: !4662)
!4667 = !DILocation(line: 1555, column: 11, scope: !4249)
!4668 = !DILocation(line: 1557, column: 4, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 1556, column: 2)
!4670 = !DILocation(line: 1559, column: 2, scope: !4669)
!4671 = !DILocation(line: 1561, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 1561, column: 7)
!4673 = !DILocation(line: 1561, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1561, column: 7)
!4675 = !DILocation(line: 1564, column: 22, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 1564, column: 4)
!4677 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 1562, column: 2)
!4678 = !DILocation(line: 1564, column: 9, scope: !4676)
!4679 = !DILocation(line: 0, scope: !4677)
!4680 = !DILocation(line: 0, scope: !4676)
!4681 = !DILocation(line: 1564, column: 41, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 1564, column: 4)
!4683 = !DILocation(line: 1564, column: 4, scope: !4676)
!4684 = !DILocation(line: 1565, column: 12, scope: !4682)
!4685 = !DILocation(line: 1564, column: 4, scope: !4682)
!4686 = distinct !{!4686, !4683, !4687}
!4687 = !DILocation(line: 1565, column: 12, scope: !4676)
!4688 = !DILocation(line: 1566, column: 30, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 1566, column: 8)
!4690 = !DILocation(line: 1566, column: 18, scope: !4689)
!4691 = !DILocation(line: 1566, column: 15, scope: !4689)
!4692 = !DILocation(line: 1566, column: 8, scope: !4677)
!4693 = !DILocation(line: 1568, column: 8, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 1567, column: 6)
!4695 = !DILocation(line: 1571, column: 6, scope: !4694)
!4696 = distinct !{!4696, !4671, !4697}
!4697 = !DILocation(line: 1572, column: 2, scope: !4672)
!4698 = !DILocation(line: 1575, column: 3, scope: !4223)
!4699 = !DILocation(line: 1577, column: 3, scope: !4223)
!4700 = !DILocation(line: 1578, column: 1, scope: !4223)
!4701 = distinct !DISubprogram(name: "single_succ_p", scope: !135, file: !135, line: 626, type: !4702, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4704)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!392, !3403}
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "bb", arg: 1, scope: !4701, file: !135, line: 626, type: !3403)
!4706 = !DILocation(line: 0, scope: !4701)
!4707 = !DILocation(line: 628, column: 10, scope: !4701)
!4708 = !DILocation(line: 628, column: 33, scope: !4701)
!4709 = !DILocation(line: 628, column: 3, scope: !4701)
!4710 = distinct !DISubprogram(name: "single_succ", scope: !135, file: !135, line: 663, type: !4711, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!938, !3403}
!4713 = !{!4714}
!4714 = !DILocalVariable(name: "bb", arg: 1, scope: !4710, file: !135, line: 663, type: !3403)
!4715 = !DILocation(line: 0, scope: !4710)
!4716 = !DILocation(line: 665, column: 10, scope: !4710)
!4717 = !DILocation(line: 665, column: 33, scope: !4710)
!4718 = !DILocation(line: 665, column: 3, scope: !4710)
!4719 = distinct !DISubprogram(name: "loop_latch_edge", scope: !3, file: !3, line: 1582, type: !4720, scopeLine: 1583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4722)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!423, !1807}
!4722 = !{!4723}
!4723 = !DILocalVariable(name: "loop", arg: 1, scope: !4719, file: !3, line: 1582, type: !1807)
!4724 = !DILocation(line: 0, scope: !4719)
!4725 = !DILocation(line: 1584, column: 27, scope: !4719)
!4726 = !DILocation(line: 1584, column: 40, scope: !4719)
!4727 = !DILocation(line: 1584, column: 10, scope: !4719)
!4728 = !DILocation(line: 1584, column: 3, scope: !4719)
!4729 = distinct !DISubprogram(name: "RESET_BIT", scope: !3151, file: !3151, line: 82, type: !3359, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4730)
!4730 = !{!4731, !4732, !4733}
!4731 = !DILocalVariable(name: "map", arg: 1, scope: !4729, file: !3151, line: 82, type: !3150)
!4732 = !DILocalVariable(name: "bitno", arg: 2, scope: !4729, file: !3151, line: 82, type: !7)
!4733 = !DILocalVariable(name: "oldbit", scope: !4734, file: !3151, line: 86, type: !392)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !3151, line: 85, column: 5)
!4735 = distinct !DILexicalBlock(scope: !4729, file: !3151, line: 84, column: 7)
!4736 = !DILocation(line: 0, scope: !4729)
!4737 = !DILocation(line: 84, column: 12, scope: !4735)
!4738 = !DILocation(line: 84, column: 7, scope: !4735)
!4739 = !DILocation(line: 84, column: 7, scope: !4729)
!4740 = !DILocation(line: 92, column: 42, scope: !4729)
!4741 = !DILocation(line: 92, column: 31, scope: !4729)
!4742 = !DILocation(line: 91, column: 19, scope: !4729)
!4743 = !DILocation(line: 91, column: 3, scope: !4729)
!4744 = !DILocation(line: 87, column: 16, scope: !4734)
!4745 = !DILocation(line: 88, column: 11, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4734, file: !3151, line: 88, column: 11)
!4747 = !DILocation(line: 88, column: 11, scope: !4734)
!4748 = !DILocation(line: 89, column: 2, scope: !4746)
!4749 = !DILocation(line: 89, column: 41, scope: !4746)
!4750 = !DILocation(line: 92, column: 8, scope: !4729)
!4751 = !DILocation(line: 92, column: 5, scope: !4729)
!4752 = !DILocation(line: 93, column: 1, scope: !4729)
!4753 = distinct !DISubprogram(name: "get_exit_descriptions", scope: !3, file: !3, line: 1001, type: !4754, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!1777, !423}
!4756 = !{!4757}
!4757 = !DILocalVariable(name: "e", arg: 1, scope: !4753, file: !3, line: 1001, type: !423)
!4758 = !DILocation(line: 0, scope: !4753)
!4759 = !DILocation(line: 1003, column: 52, scope: !4753)
!4760 = !DILocation(line: 1003, column: 67, scope: !4753)
!4761 = !DILocation(line: 1003, column: 74, scope: !4753)
!4762 = !DILocation(line: 1004, column: 31, scope: !4753)
!4763 = !DILocation(line: 1003, column: 31, scope: !4753)
!4764 = !DILocation(line: 1003, column: 10, scope: !4753)
!4765 = !DILocation(line: 1003, column: 3, scope: !4753)
!4766 = distinct !DISubprogram(name: "loop_preheader_edge", scope: !3, file: !3, line: 1589, type: !4720, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4767)
!4767 = !{!4768, !4769, !4770}
!4768 = !DILocalVariable(name: "loop", arg: 1, scope: !4766, file: !3, line: 1589, type: !1807)
!4769 = !DILocalVariable(name: "e", scope: !4766, file: !3, line: 1591, type: !423)
!4770 = !DILocalVariable(name: "ei", scope: !4766, file: !3, line: 1592, type: !2409)
!4771 = !DILocation(line: 0, scope: !4766)
!4772 = !DILocation(line: 1591, column: 3, scope: !4766)
!4773 = !DILocation(line: 1592, column: 3, scope: !4766)
!4774 = !DILocation(line: 1594, column: 3, scope: !4766)
!4775 = !DILocation(line: 1596, column: 3, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 1596, column: 3)
!4777 = !DILocation(line: 0, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 1596, column: 3)
!4779 = !DILocation(line: 0, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 1597, column: 9)
!4781 = !DILocation(line: 1596, column: 3, scope: !4778)
!4782 = !DILocation(line: 1600, column: 10, scope: !4766)
!4783 = !DILocation(line: 1597, column: 9, scope: !4780)
!4784 = !DILocation(line: 1597, column: 12, scope: !4780)
!4785 = !DILocation(line: 1597, column: 25, scope: !4780)
!4786 = !DILocation(line: 1597, column: 16, scope: !4780)
!4787 = !DILocation(line: 1597, column: 9, scope: !4778)
!4788 = distinct !{!4788, !4775, !4789}
!4789 = !DILocation(line: 1598, column: 7, scope: !4776)
!4790 = !DILocation(line: 1601, column: 1, scope: !4766)
!4791 = !DILocation(line: 1600, column: 3, scope: !4766)
!4792 = distinct !DISubprogram(name: "loop_exit_edge_p", scope: !3, file: !3, line: 1606, type: !4793, scopeLine: 1607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!392, !1807, !4795}
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_edge", file: !424, line: 109, baseType: !4796)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!4798 = !{!4799, !4800}
!4799 = !DILocalVariable(name: "loop", arg: 1, scope: !4792, file: !3, line: 1606, type: !1807)
!4800 = !DILocalVariable(name: "e", arg: 2, scope: !4792, file: !3, line: 1606, type: !4795)
!4801 = !DILocation(line: 0, scope: !4792)
!4802 = !DILocation(line: 1608, column: 43, scope: !4792)
!4803 = !DILocation(line: 1608, column: 11, scope: !4792)
!4804 = !DILocation(line: 1609, column: 4, scope: !4792)
!4805 = !DILocation(line: 1609, column: 40, scope: !4792)
!4806 = !DILocation(line: 1609, column: 8, scope: !4792)
!4807 = !DILocation(line: 1609, column: 7, scope: !4792)
!4808 = !DILocation(line: 1608, column: 3, scope: !4792)
!4809 = distinct !DISubprogram(name: "single_exit", scope: !3, file: !3, line: 1617, type: !4720, scopeLine: 1618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4810)
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "loop", arg: 1, scope: !4809, file: !3, line: 1617, type: !1807)
!4812 = !DILocalVariable(name: "exit", scope: !4809, file: !3, line: 1619, type: !1777)
!4813 = !DILocation(line: 0, scope: !4809)
!4814 = !DILocation(line: 1619, column: 34, scope: !4809)
!4815 = !DILocation(line: 1619, column: 41, scope: !4809)
!4816 = !DILocation(line: 1621, column: 8, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 1621, column: 7)
!4818 = !DILocation(line: 1621, column: 7, scope: !4809)
!4819 = !DILocation(line: 1624, column: 13, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 1624, column: 7)
!4821 = !DILocation(line: 1624, column: 7, scope: !4820)
!4822 = !DILocation(line: 1624, column: 15, scope: !4820)
!4823 = !DILocation(line: 1624, column: 24, scope: !4820)
!4824 = !DILocation(line: 1624, column: 38, scope: !4820)
!4825 = !DILocation(line: 1624, column: 29, scope: !4820)
!4826 = !DILocation(line: 1624, column: 7, scope: !4809)
!4827 = !DILocation(line: 1625, column: 5, scope: !4820)
!4828 = !DILocation(line: 1628, column: 1, scope: !4809)
!4829 = distinct !DISubprogram(name: "is_loop_exit", scope: !3, file: !3, line: 1633, type: !4830, scopeLine: 1634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4832)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!392, !401, !938}
!4832 = !{!4833, !4834, !4835, !4836}
!4833 = !DILocalVariable(name: "loop", arg: 1, scope: !4829, file: !3, line: 1633, type: !401)
!4834 = !DILocalVariable(name: "bb", arg: 2, scope: !4829, file: !3, line: 1633, type: !938)
!4835 = !DILocalVariable(name: "e", scope: !4829, file: !3, line: 1635, type: !423)
!4836 = !DILocalVariable(name: "ei", scope: !4829, file: !3, line: 1636, type: !2409)
!4837 = !DILocation(line: 0, scope: !4829)
!4838 = !DILocation(line: 1635, column: 3, scope: !4829)
!4839 = !DILocation(line: 1636, column: 3, scope: !4829)
!4840 = !DILocation(line: 1638, column: 3, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 1638, column: 3)
!4842 = !DILocation(line: 0, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 1638, column: 3)
!4844 = !DILocation(line: 1638, column: 3, scope: !4843)
!4845 = !DILocation(line: 1639, column: 33, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 1639, column: 9)
!4847 = !DILocation(line: 1639, column: 9, scope: !4846)
!4848 = !DILocation(line: 1639, column: 9, scope: !4843)
!4849 = distinct !{!4849, !4840, !4850}
!4850 = !DILocation(line: 1640, column: 14, scope: !4841)
!4851 = !DILocation(line: 1643, column: 1, scope: !4829)
!4852 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1791, file: !1791, line: 32, type: !4853, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4855)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!1789, !393}
!4855 = !{!4856}
!4856 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4852, file: !1791, line: 32, type: !393)
!4857 = !DILocation(line: 0, scope: !4852)
!4858 = !DILocation(line: 32, column: 1, scope: !4852)
!4859 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1791, file: !1791, line: 31, type: !4860, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4863)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!1786, !4862, !393}
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!4863 = !{!4864, !4865, !4866}
!4864 = !DILocalVariable(name: "vec_", arg: 1, scope: !4859, file: !1791, line: 31, type: !4862)
!4865 = !DILocalVariable(name: "obj_", arg: 2, scope: !4859, file: !1791, line: 31, type: !393)
!4866 = !DILocalVariable(name: "slot_", scope: !4859, file: !1791, line: 31, type: !1786)
!4867 = !DILocation(line: 0, scope: !4859)
!4868 = !DILocation(line: 31, column: 1, scope: !4859)
!4869 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1791, file: !1791, line: 31, type: !4870, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4874)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!393, !4872, !7, !1786}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!4874 = !{!4875, !4876, !4877}
!4875 = !DILocalVariable(name: "vec_", arg: 1, scope: !4869, file: !1791, line: 31, type: !4872)
!4876 = !DILocalVariable(name: "ix_", arg: 2, scope: !4869, file: !1791, line: 31, type: !7)
!4877 = !DILocalVariable(name: "ptr", arg: 3, scope: !4869, file: !1791, line: 31, type: !1786)
!4878 = !DILocation(line: 0, scope: !4869)
!4879 = !DILocation(line: 31, column: 1, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4869, file: !1791, line: 31, column: 1)
!4881 = !DILocation(line: 31, column: 1, scope: !4869)
!4882 = !DILocation(line: 31, column: 1, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4880, file: !1791, line: 31, column: 1)
!4884 = !DILocation(line: 31, column: 1, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4880, file: !1791, line: 31, column: 1)
!4886 = !DILocation(line: 0, scope: !4880)
!4887 = distinct !DISubprogram(name: "get_loop", scope: !378, file: !378, line: 417, type: !4888, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!401, !7}
!4890 = !{!4891}
!4891 = !DILocalVariable(name: "num", arg: 1, scope: !4887, file: !378, line: 417, type: !7)
!4892 = !DILocation(line: 0, scope: !4887)
!4893 = !DILocation(line: 419, column: 10, scope: !4887)
!4894 = !DILocation(line: 419, column: 3, scope: !4887)
!4895 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1791, file: !1791, line: 32, type: !4896, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4899)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{null, !4898}
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!4899 = !{!4900}
!4900 = !DILocalVariable(name: "vec_", arg: 1, scope: !4895, file: !1791, line: 32, type: !4898)
!4901 = !DILocation(line: 0, scope: !4895)
!4902 = !DILocation(line: 32, column: 1, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4895, file: !1791, line: 32, column: 1)
!4904 = !DILocation(line: 32, column: 1, scope: !4895)
!4905 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !4906, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4908)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!392, !2409}
!4908 = !{!4909}
!4909 = !DILocalVariable(name: "i", arg: 1, scope: !4905, file: !135, line: 721, type: !2409)
!4910 = !DILocation(line: 723, column: 22, scope: !4905)
!4911 = !DILocation(line: 723, column: 19, scope: !4905)
!4912 = !DILocation(line: 723, column: 10, scope: !4905)
!4913 = !DILocation(line: 723, column: 3, scope: !4905)
!4914 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !4915, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4917)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!423, !2409}
!4917 = !{!4918}
!4918 = !DILocalVariable(name: "i", arg: 1, scope: !4914, file: !135, line: 752, type: !2409)
!4919 = !DILocation(line: 754, column: 10, scope: !4914)
!4920 = !DILocation(line: 754, column: 3, scope: !4914)
!4921 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !4922, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4924)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!411, !2409}
!4924 = !{!4925}
!4925 = !DILocalVariable(name: "i", arg: 1, scope: !4921, file: !135, line: 685, type: !2409)
!4926 = !DILocation(line: 687, column: 3, scope: !4921)
!4927 = !DILocation(line: 688, column: 10, scope: !4921)
!4928 = !DILocation(line: 688, column: 3, scope: !4921)
!4929 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !4930, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4932)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!423, !2443, !7}
!4932 = !{!4933, !4934}
!4933 = !DILocalVariable(name: "vec_", arg: 1, scope: !4929, file: !135, line: 150, type: !2443)
!4934 = !DILocalVariable(name: "ix_", arg: 2, scope: !4929, file: !135, line: 150, type: !7)
!4935 = !DILocation(line: 0, scope: !4929)
!4936 = !DILocation(line: 150, column: 1, scope: !4929)
!4937 = distinct !DISubprogram(name: "VEC_basic_block_heap_reserve", scope: !135, file: !135, line: 283, type: !4938, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4940)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!393, !2983, !393}
!4940 = !{!4941, !4942, !4943}
!4941 = !DILocalVariable(name: "vec_", arg: 1, scope: !4937, file: !135, line: 283, type: !2983)
!4942 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4937, file: !135, line: 283, type: !393)
!4943 = !DILocalVariable(name: "extend", scope: !4937, file: !135, line: 283, type: !393)
!4944 = !DILocation(line: 0, scope: !4937)
!4945 = !DILocation(line: 283, column: 1, scope: !4937)
!4946 = !DILocation(line: 283, column: 1, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4937, file: !135, line: 283, column: 1)
!4948 = distinct !DISubprogram(name: "VEC_basic_block_base_quick_push", scope: !135, file: !135, line: 281, type: !4949, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4951)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!1787, !3001, !938}
!4951 = !{!4952, !4953, !4954}
!4952 = !DILocalVariable(name: "vec_", arg: 1, scope: !4948, file: !135, line: 281, type: !3001)
!4953 = !DILocalVariable(name: "obj_", arg: 2, scope: !4948, file: !135, line: 281, type: !938)
!4954 = !DILocalVariable(name: "slot_", scope: !4948, file: !135, line: 281, type: !1787)
!4955 = !DILocation(line: 0, scope: !4948)
!4956 = !DILocation(line: 281, column: 1, scope: !4948)
!4957 = distinct !DISubprogram(name: "VEC_basic_block_base_space", scope: !135, file: !135, line: 281, type: !4958, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4960)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!393, !3001, !393}
!4960 = !{!4961, !4962}
!4961 = !DILocalVariable(name: "vec_", arg: 1, scope: !4957, file: !135, line: 281, type: !3001)
!4962 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4957, file: !135, line: 281, type: !393)
!4963 = !DILocation(line: 0, scope: !4957)
!4964 = !DILocation(line: 281, column: 1, scope: !4957)
!4965 = distinct !DISubprogram(name: "VEC_loop_p_gc_reserve", scope: !378, file: !378, line: 87, type: !4966, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4968)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!393, !2805, !393}
!4968 = !{!4969, !4970, !4971}
!4969 = !DILocalVariable(name: "vec_", arg: 1, scope: !4965, file: !378, line: 87, type: !2805)
!4970 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4965, file: !378, line: 87, type: !393)
!4971 = !DILocalVariable(name: "extend", scope: !4965, file: !378, line: 87, type: !393)
!4972 = !DILocation(line: 0, scope: !4965)
!4973 = !DILocation(line: 87, column: 1, scope: !4965)
!4974 = !DILocation(line: 87, column: 1, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4965, file: !378, line: 87, column: 1)
!4976 = distinct !DISubprogram(name: "VEC_loop_p_base_space", scope: !378, file: !378, line: 85, type: !4977, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4979)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!393, !3112, !393}
!4979 = !{!4980, !4981}
!4980 = !DILocalVariable(name: "vec_", arg: 1, scope: !4976, file: !378, line: 85, type: !3112)
!4981 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4976, file: !378, line: 85, type: !393)
!4982 = !DILocation(line: 0, scope: !4976)
!4983 = !DILocation(line: 85, column: 1, scope: !4976)
!4984 = distinct !DISubprogram(name: "VEC_loop_p_gc_alloc", scope: !378, file: !378, line: 87, type: !4985, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4987)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!1110, !393}
!4987 = !{!4988}
!4988 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4984, file: !378, line: 87, type: !393)
!4989 = !DILocation(line: 0, scope: !4984)
!4990 = !DILocation(line: 87, column: 1, scope: !4984)
!4991 = distinct !DISubprogram(name: "find_subloop_latch_edge", scope: !3, file: !3, line: 620, type: !4992, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4994)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!423, !401}
!4994 = !{!4995, !4996, !4997}
!4995 = !DILocalVariable(name: "loop", arg: 1, scope: !4991, file: !3, line: 620, type: !401)
!4996 = !DILocalVariable(name: "latches", scope: !4991, file: !3, line: 622, type: !1862)
!4997 = !DILocalVariable(name: "latch", scope: !4991, file: !3, line: 623, type: !423)
!4998 = !DILocation(line: 0, scope: !4991)
!4999 = !DILocation(line: 622, column: 3, scope: !4991)
!5000 = !DILocation(line: 622, column: 31, scope: !4991)
!5001 = !DILocation(line: 622, column: 21, scope: !4991)
!5002 = !DILocation(line: 625, column: 7, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 625, column: 7)
!5004 = !DILocation(line: 625, column: 34, scope: !5003)
!5005 = !DILocation(line: 625, column: 7, scope: !4991)
!5006 = !DILocation(line: 627, column: 15, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 626, column: 5)
!5008 = !DILocation(line: 629, column: 12, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 629, column: 11)
!5010 = !DILocation(line: 633, column: 4, scope: !5009)
!5011 = !DILocation(line: 633, column: 7, scope: !5009)
!5012 = !DILocation(line: 633, column: 26, scope: !5009)
!5013 = !DILocation(line: 629, column: 11, scope: !5007)
!5014 = !DILocation(line: 634, column: 10, scope: !5009)
!5015 = !DILocation(line: 634, column: 2, scope: !5009)
!5016 = !DILocation(line: 637, column: 3, scope: !4991)
!5017 = !DILocation(line: 639, column: 1, scope: !4991)
!5018 = !DILocation(line: 638, column: 3, scope: !4991)
!5019 = distinct !DISubprogram(name: "form_subloop", scope: !3, file: !3, line: 654, type: !5020, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5022)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{null, !401, !423}
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028}
!5023 = !DILocalVariable(name: "loop", arg: 1, scope: !5019, file: !3, line: 654, type: !401)
!5024 = !DILocalVariable(name: "latch", arg: 2, scope: !5019, file: !3, line: 654, type: !423)
!5025 = !DILocalVariable(name: "ei", scope: !5019, file: !3, line: 656, type: !2409)
!5026 = !DILocalVariable(name: "e", scope: !5019, file: !3, line: 657, type: !423)
!5027 = !DILocalVariable(name: "new_entry", scope: !5019, file: !3, line: 657, type: !423)
!5028 = !DILocalVariable(name: "new_loop", scope: !5019, file: !3, line: 658, type: !401)
!5029 = !DILocation(line: 0, scope: !5019)
!5030 = !DILocation(line: 656, column: 3, scope: !5019)
!5031 = !DILocation(line: 657, column: 3, scope: !5019)
!5032 = !DILocation(line: 660, column: 18, scope: !5019)
!5033 = !DILocation(line: 660, column: 16, scope: !5019)
!5034 = !DILocation(line: 661, column: 3, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 661, column: 3)
!5036 = !DILocation(line: 0, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 661, column: 3)
!5038 = !DILocation(line: 661, column: 3, scope: !5037)
!5039 = !DILocation(line: 663, column: 11, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 663, column: 11)
!5041 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 662, column: 5)
!5042 = !DILocation(line: 663, column: 13, scope: !5040)
!5043 = !DILocation(line: 663, column: 11, scope: !5041)
!5044 = !DILocation(line: 664, column: 22, scope: !5040)
!5045 = !DILocation(line: 664, column: 2, scope: !5040)
!5046 = distinct !{!5046, !5034, !5047}
!5047 = !DILocation(line: 665, column: 5, scope: !5035)
!5048 = !DILocation(line: 666, column: 43, scope: !5019)
!5049 = !DILocation(line: 666, column: 15, scope: !5019)
!5050 = !DILocation(line: 668, column: 24, scope: !5019)
!5051 = !DILocation(line: 668, column: 3, scope: !5019)
!5052 = !DILocation(line: 670, column: 29, scope: !5019)
!5053 = !DILocation(line: 670, column: 16, scope: !5019)
!5054 = !DILocation(line: 674, column: 14, scope: !5019)
!5055 = !DILocation(line: 675, column: 33, scope: !5019)
!5056 = !DILocation(line: 675, column: 13, scope: !5019)
!5057 = !DILocation(line: 675, column: 20, scope: !5019)
!5058 = !DILocation(line: 676, column: 28, scope: !5019)
!5059 = !DILocation(line: 676, column: 13, scope: !5019)
!5060 = !DILocation(line: 676, column: 19, scope: !5019)
!5061 = !DILocation(line: 677, column: 3, scope: !5019)
!5062 = !DILocation(line: 678, column: 1, scope: !5019)
!5063 = distinct !DISubprogram(name: "merge_latch_edges", scope: !3, file: !3, line: 684, type: !2773, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5064)
!5064 = !{!5065, !5066, !5067, !5068, !5069}
!5065 = !DILocalVariable(name: "loop", arg: 1, scope: !5063, file: !3, line: 684, type: !401)
!5066 = !DILocalVariable(name: "latches", scope: !5063, file: !3, line: 686, type: !1862)
!5067 = !DILocalVariable(name: "latch", scope: !5063, file: !3, line: 687, type: !423)
!5068 = !DILocalVariable(name: "e", scope: !5063, file: !3, line: 687, type: !423)
!5069 = !DILocalVariable(name: "i", scope: !5063, file: !3, line: 688, type: !7)
!5070 = !DILocation(line: 0, scope: !5063)
!5071 = !DILocation(line: 686, column: 3, scope: !5063)
!5072 = !DILocation(line: 686, column: 31, scope: !5063)
!5073 = !DILocation(line: 686, column: 21, scope: !5063)
!5074 = !DILocation(line: 687, column: 3, scope: !5063)
!5075 = !DILocation(line: 690, column: 3, scope: !5063)
!5076 = !DILocation(line: 692, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 692, column: 7)
!5078 = !DILocation(line: 692, column: 34, scope: !5077)
!5079 = !DILocation(line: 692, column: 7, scope: !5063)
!5080 = !DILocation(line: 693, column: 19, scope: !5077)
!5081 = !DILocation(line: 693, column: 49, scope: !5077)
!5082 = !DILocation(line: 693, column: 11, scope: !5077)
!5083 = !DILocation(line: 693, column: 17, scope: !5077)
!5084 = !DILocation(line: 693, column: 5, scope: !5077)
!5085 = !DILocation(line: 696, column: 11, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 696, column: 11)
!5087 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 695, column: 5)
!5088 = !DILocation(line: 696, column: 11, scope: !5087)
!5089 = !DILocation(line: 697, column: 63, scope: !5086)
!5090 = !DILocation(line: 697, column: 2, scope: !5086)
!5091 = !DILocation(line: 699, column: 22, scope: !5087)
!5092 = !DILocation(line: 699, column: 20, scope: !5087)
!5093 = !DILocation(line: 0, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 700, column: 7)
!5095 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 700, column: 7)
!5096 = !DILocation(line: 700, column: 12, scope: !5095)
!5097 = !DILocation(line: 700, column: 19, scope: !5094)
!5098 = !DILocation(line: 0, scope: !5095)
!5099 = !DILocation(line: 700, column: 7, scope: !5095)
!5100 = !DILocation(line: 701, column: 22, scope: !5094)
!5101 = !DILocation(line: 701, column: 36, scope: !5094)
!5102 = !DILocation(line: 701, column: 2, scope: !5094)
!5103 = !DILocation(line: 700, column: 55, scope: !5094)
!5104 = !DILocation(line: 700, column: 7, scope: !5094)
!5105 = distinct !{!5105, !5099, !5106}
!5106 = !DILocation(line: 701, column: 37, scope: !5095)
!5107 = !DILocation(line: 702, column: 43, scope: !5087)
!5108 = !DILocation(line: 702, column: 15, scope: !5087)
!5109 = !DILocation(line: 704, column: 28, scope: !5087)
!5110 = !DILocation(line: 704, column: 7, scope: !5087)
!5111 = !DILocation(line: 706, column: 29, scope: !5087)
!5112 = !DILocation(line: 706, column: 20, scope: !5087)
!5113 = !DILocation(line: 707, column: 28, scope: !5087)
!5114 = !DILocation(line: 707, column: 13, scope: !5087)
!5115 = !DILocation(line: 707, column: 19, scope: !5087)
!5116 = !DILocation(line: 710, column: 3, scope: !5063)
!5117 = !DILocation(line: 711, column: 1, scope: !5063)
!5118 = distinct !DISubprogram(name: "find_subloop_latch_edge_by_profile", scope: !3, file: !3, line: 528, type: !5119, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5121)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!423, !1862}
!5121 = !{!5122, !5123, !5124, !5125, !5126, !5127}
!5122 = !DILocalVariable(name: "latches", arg: 1, scope: !5118, file: !3, line: 528, type: !1862)
!5123 = !DILocalVariable(name: "i", scope: !5118, file: !3, line: 530, type: !7)
!5124 = !DILocalVariable(name: "e", scope: !5118, file: !3, line: 531, type: !423)
!5125 = !DILocalVariable(name: "me", scope: !5118, file: !3, line: 531, type: !423)
!5126 = !DILocalVariable(name: "mcount", scope: !5118, file: !3, line: 532, type: !1716)
!5127 = !DILocalVariable(name: "tcount", scope: !5118, file: !3, line: 532, type: !1716)
!5128 = !DILocation(line: 0, scope: !5118)
!5129 = !DILocation(line: 531, column: 3, scope: !5118)
!5130 = !DILocation(line: 0, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 534, column: 3)
!5132 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 534, column: 3)
!5133 = !DILocation(line: 534, column: 8, scope: !5132)
!5134 = !DILocation(line: 0, scope: !5132)
!5135 = !DILocation(line: 534, column: 15, scope: !5131)
!5136 = !DILocation(line: 534, column: 3, scope: !5132)
!5137 = !DILocation(line: 536, column: 11, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 536, column: 11)
!5139 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 535, column: 5)
!5140 = !DILocation(line: 536, column: 14, scope: !5138)
!5141 = !DILocation(line: 536, column: 20, scope: !5138)
!5142 = !DILocation(line: 536, column: 11, scope: !5139)
!5143 = !DILocation(line: 540, column: 2, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 537, column: 2)
!5145 = !DILocation(line: 541, column: 14, scope: !5139)
!5146 = !DILocation(line: 534, column: 51, scope: !5131)
!5147 = !DILocation(line: 534, column: 3, scope: !5131)
!5148 = distinct !{!5148, !5136, !5149}
!5149 = !DILocation(line: 542, column: 5, scope: !5132)
!5150 = !DILocation(line: 544, column: 14, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 544, column: 7)
!5152 = !DILocation(line: 545, column: 7, scope: !5151)
!5153 = !DILocation(line: 545, column: 18, scope: !5151)
!5154 = !DILocation(line: 545, column: 28, scope: !5151)
!5155 = !DILocation(line: 545, column: 47, scope: !5151)
!5156 = !DILocation(line: 544, column: 7, scope: !5118)
!5157 = !DILocation(line: 548, column: 7, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 548, column: 7)
!5159 = !DILocation(line: 548, column: 7, scope: !5118)
!5160 = !DILocation(line: 551, column: 11, scope: !5158)
!5161 = !DILocation(line: 551, column: 16, scope: !5158)
!5162 = !DILocation(line: 551, column: 27, scope: !5158)
!5163 = !DILocation(line: 551, column: 33, scope: !5158)
!5164 = !DILocation(line: 549, column: 5, scope: !5158)
!5165 = !DILocation(line: 553, column: 1, scope: !5118)
!5166 = distinct !DISubprogram(name: "find_subloop_latch_edge_by_ivs", scope: !3, file: !3, line: 568, type: !5167, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!423, !401, !1862}
!5169 = !{!5170, !5171, !5172, !5173, !5174, !5175, !5176, !5183, !5184}
!5170 = !DILocalVariable(name: "loop", arg: 1, scope: !5166, file: !3, line: 568, type: !401)
!5171 = !DILocalVariable(name: "latches", arg: 2, scope: !5166, file: !3, line: 568, type: !1862)
!5172 = !DILocalVariable(name: "e", scope: !5166, file: !3, line: 570, type: !423)
!5173 = !DILocalVariable(name: "latch", scope: !5166, file: !3, line: 570, type: !423)
!5174 = !DILocalVariable(name: "i", scope: !5166, file: !3, line: 571, type: !7)
!5175 = !DILocalVariable(name: "phi", scope: !5166, file: !3, line: 572, type: !445)
!5176 = !DILocalVariable(name: "psi", scope: !5166, file: !3, line: 573, type: !5177)
!5177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !437, line: 265, baseType: !5178)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 254, size: 192, elements: !5179)
!5179 = !{!5180, !5181, !5182}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5178, file: !437, line: 257, baseType: !440, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5178, file: !437, line: 263, baseType: !434, size: 64, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !5178, file: !437, line: 264, baseType: !938, size: 64, offset: 128)
!5183 = !DILocalVariable(name: "lop", scope: !5166, file: !3, line: 574, type: !470)
!5184 = !DILocalVariable(name: "bb", scope: !5166, file: !3, line: 575, type: !938)
!5185 = !DILocation(line: 0, scope: !5166)
!5186 = !DILocation(line: 570, column: 3, scope: !5166)
!5187 = !DILocation(line: 570, column: 19, scope: !5166)
!5188 = !DILocation(line: 573, column: 3, scope: !5166)
!5189 = !DILocation(line: 578, column: 8, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 578, column: 3)
!5191 = !DILocation(line: 0, scope: !5190)
!5192 = !DILocation(line: 578, column: 15, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 578, column: 3)
!5194 = !DILocation(line: 578, column: 3, scope: !5190)
!5195 = !DILocation(line: 0, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 584, column: 9)
!5197 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 583, column: 3)
!5198 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 583, column: 3)
!5199 = !DILocation(line: 583, column: 3, scope: !5198)
!5200 = !DILocation(line: 579, column: 48, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 579, column: 9)
!5202 = !DILocation(line: 579, column: 53, scope: !5201)
!5203 = !DILocation(line: 579, column: 56, scope: !5201)
!5204 = !DILocation(line: 579, column: 9, scope: !5201)
!5205 = !DILocation(line: 580, column: 15, scope: !5201)
!5206 = !DILocation(line: 579, column: 9, scope: !5193)
!5207 = !DILocation(line: 578, column: 51, scope: !5193)
!5208 = !DILocation(line: 578, column: 3, scope: !5193)
!5209 = distinct !{!5209, !5194, !5210}
!5210 = !DILocation(line: 580, column: 15, scope: !5190)
!5211 = !DILocation(line: 0, scope: !5198)
!5212 = !DILocation(line: 583, column: 15, scope: !5197)
!5213 = !DILocation(line: 584, column: 42, scope: !5196)
!5214 = !DILocation(line: 584, column: 45, scope: !5196)
!5215 = !DILocation(line: 584, column: 57, scope: !5196)
!5216 = !DILocation(line: 584, column: 10, scope: !5196)
!5217 = !DILocation(line: 584, column: 9, scope: !5197)
!5218 = !DILocation(line: 583, column: 51, scope: !5197)
!5219 = !DILocation(line: 583, column: 3, scope: !5197)
!5220 = distinct !{!5220, !5199, !5221}
!5221 = !DILocation(line: 585, column: 14, scope: !5198)
!5222 = !DILocation(line: 589, column: 14, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 589, column: 3)
!5224 = !DILocation(line: 589, column: 36, scope: !5223)
!5225 = !DILocation(line: 0, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 590, column: 5)
!5227 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 589, column: 3)
!5228 = !DILocation(line: 589, column: 8, scope: !5223)
!5229 = !DILocation(line: 589, column: 46, scope: !5227)
!5230 = !DILocation(line: 589, column: 45, scope: !5227)
!5231 = !DILocation(line: 589, column: 3, scope: !5223)
!5232 = !DILocation(line: 591, column: 13, scope: !5226)
!5233 = !DILocation(line: 592, column: 13, scope: !5226)
!5234 = !DILocation(line: 595, column: 11, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 595, column: 11)
!5236 = !DILocation(line: 595, column: 27, scope: !5235)
!5237 = !DILocation(line: 596, column: 4, scope: !5235)
!5238 = !DILocation(line: 596, column: 7, scope: !5235)
!5239 = !DILocation(line: 596, column: 31, scope: !5235)
!5240 = !DILocation(line: 595, column: 11, scope: !5226)
!5241 = !DILocation(line: 598, column: 12, scope: !5226)
!5242 = !DILocation(line: 599, column: 12, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 599, column: 11)
!5244 = !DILocation(line: 599, column: 15, scope: !5243)
!5245 = !DILocation(line: 599, column: 19, scope: !5243)
!5246 = !DILocation(line: 599, column: 11, scope: !5226)
!5247 = !DILocation(line: 602, column: 7, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 602, column: 7)
!5249 = !DILocation(line: 0, scope: !5248)
!5250 = !DILocation(line: 602, column: 19, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 602, column: 7)
!5252 = !DILocation(line: 603, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 603, column: 6)
!5254 = !DILocation(line: 603, column: 8, scope: !5253)
!5255 = !DILocation(line: 604, column: 6, scope: !5253)
!5256 = !DILocation(line: 604, column: 9, scope: !5253)
!5257 = !DILocation(line: 604, column: 40, scope: !5253)
!5258 = !DILocation(line: 603, column: 6, scope: !5251)
!5259 = !DILocation(line: 602, column: 55, scope: !5251)
!5260 = !DILocation(line: 602, column: 7, scope: !5251)
!5261 = distinct !{!5261, !5247, !5262}
!5262 = !DILocation(line: 605, column: 11, scope: !5248)
!5263 = !DILocation(line: 589, column: 63, scope: !5227)
!5264 = !DILocation(line: 589, column: 3, scope: !5227)
!5265 = distinct !{!5265, !5231, !5266}
!5266 = !DILocation(line: 606, column: 5, scope: !5223)
!5267 = !DILocation(line: 608, column: 7, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 608, column: 7)
!5269 = !DILocation(line: 608, column: 7, scope: !5166)
!5270 = !DILocation(line: 611, column: 14, scope: !5268)
!5271 = !DILocation(line: 611, column: 19, scope: !5268)
!5272 = !DILocation(line: 611, column: 33, scope: !5268)
!5273 = !DILocation(line: 611, column: 39, scope: !5268)
!5274 = !DILocation(line: 609, column: 5, scope: !5268)
!5275 = !DILocation(line: 613, column: 1, scope: !5166)
!5276 = distinct !DISubprogram(name: "gsi_end_p", scope: !437, file: !437, line: 4467, type: !5277, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5279)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!392, !5177}
!5279 = !{!5280}
!5280 = !DILocalVariable(name: "i", arg: 1, scope: !5276, file: !437, line: 4467, type: !5177)
!5281 = !DILocation(line: 4467, column: 33, scope: !5276)
!5282 = !DILocation(line: 4469, column: 12, scope: !5276)
!5283 = !DILocation(line: 4469, column: 16, scope: !5276)
!5284 = !DILocation(line: 4469, column: 10, scope: !5276)
!5285 = !DILocation(line: 4469, column: 3, scope: !5276)
!5286 = distinct !DISubprogram(name: "gsi_stmt", scope: !437, file: !437, line: 4501, type: !5287, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!445, !5177}
!5289 = !{!5290}
!5290 = !DILocalVariable(name: "i", arg: 1, scope: !5286, file: !437, line: 4501, type: !5177)
!5291 = !DILocation(line: 4501, column: 32, scope: !5286)
!5292 = !DILocation(line: 4503, column: 12, scope: !5286)
!5293 = !DILocation(line: 4503, column: 17, scope: !5286)
!5294 = !DILocation(line: 4503, column: 3, scope: !5286)
!5295 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !5296, file: !5296, line: 427, type: !5297, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5302)
!5296 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!470, !5299}
!5299 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1069, line: 30, baseType: !5300)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !151, line: 1893, baseType: !1093)
!5302 = !{!5303}
!5303 = !DILocalVariable(name: "use", arg: 1, scope: !5295, file: !5296, line: 427, type: !5299)
!5304 = !DILocation(line: 0, scope: !5295)
!5305 = !DILocation(line: 429, column: 17, scope: !5295)
!5306 = !DILocation(line: 429, column: 10, scope: !5295)
!5307 = !DILocation(line: 429, column: 3, scope: !5295)
!5308 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !5296, file: !5296, line: 442, type: !5309, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!5299, !445, !393}
!5311 = !{!5312, !5313}
!5312 = !DILocalVariable(name: "gs", arg: 1, scope: !5308, file: !5296, line: 442, type: !445)
!5313 = !DILocalVariable(name: "i", arg: 2, scope: !5308, file: !5296, line: 442, type: !393)
!5314 = !DILocation(line: 0, scope: !5308)
!5315 = !DILocation(line: 444, column: 11, scope: !5308)
!5316 = !DILocation(line: 444, column: 35, scope: !5308)
!5317 = !DILocation(line: 444, column: 3, scope: !5308)
!5318 = distinct !DISubprogram(name: "gimple_bb", scope: !437, file: !437, line: 1112, type: !5319, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5324)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!407, !5321}
!5321 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !424, line: 60, baseType: !5322)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!5324 = !{!5325}
!5325 = !DILocalVariable(name: "g", arg: 1, scope: !5318, file: !437, line: 1112, type: !5321)
!5326 = !DILocation(line: 0, scope: !5318)
!5327 = !DILocation(line: 1114, column: 20, scope: !5318)
!5328 = !DILocation(line: 1114, column: 3, scope: !5318)
!5329 = distinct !DISubprogram(name: "gsi_next", scope: !437, file: !437, line: 4485, type: !5330, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5333)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{null, !5332}
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5333 = !{!5334}
!5334 = !DILocalVariable(name: "i", arg: 1, scope: !5329, file: !437, line: 4485, type: !5332)
!5335 = !DILocation(line: 0, scope: !5329)
!5336 = !DILocation(line: 4487, column: 15, scope: !5329)
!5337 = !DILocation(line: 4487, column: 20, scope: !5329)
!5338 = !DILocation(line: 4487, column: 10, scope: !5329)
!5339 = !DILocation(line: 4488, column: 1, scope: !5329)
!5340 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !437, file: !437, line: 3100, type: !5341, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!5343, !445, !7}
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!5344 = !{!5345, !5346}
!5345 = !DILocalVariable(name: "gs", arg: 1, scope: !5340, file: !437, line: 3100, type: !445)
!5346 = !DILocalVariable(name: "index", arg: 2, scope: !5340, file: !437, line: 3100, type: !7)
!5347 = !DILocation(line: 0, scope: !5340)
!5348 = !DILocation(line: 3103, column: 3, scope: !5340)
!5349 = !DILocation(line: 3104, column: 12, scope: !5340)
!5350 = !DILocation(line: 3104, column: 3, scope: !5340)
!5351 = distinct !DISubprogram(name: "mfb_redirect_edges_in_set", scope: !3, file: !3, line: 646, type: !5352, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5354)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!392, !423}
!5354 = !{!5355}
!5355 = !DILocalVariable(name: "e", arg: 1, scope: !5351, file: !3, line: 646, type: !423)
!5356 = !DILocation(line: 0, scope: !5351)
!5357 = !DILocation(line: 648, column: 32, scope: !5351)
!5358 = !DILocation(line: 648, column: 46, scope: !5351)
!5359 = !DILocation(line: 648, column: 10, scope: !5351)
!5360 = !DILocation(line: 648, column: 3, scope: !5351)
!5361 = distinct !DISubprogram(name: "VEC_edge_heap_reserve", scope: !135, file: !135, line: 152, type: !5362, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5364)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!393, !2462, !393}
!5364 = !{!5365, !5366, !5367}
!5365 = !DILocalVariable(name: "vec_", arg: 1, scope: !5361, file: !135, line: 152, type: !2462)
!5366 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5361, file: !135, line: 152, type: !393)
!5367 = !DILocalVariable(name: "extend", scope: !5361, file: !135, line: 152, type: !393)
!5368 = !DILocation(line: 0, scope: !5361)
!5369 = !DILocation(line: 152, column: 1, scope: !5361)
!5370 = !DILocation(line: 152, column: 1, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5361, file: !135, line: 152, column: 1)
!5372 = distinct !DISubprogram(name: "VEC_edge_base_quick_push", scope: !135, file: !135, line: 150, type: !5373, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5376)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!2445, !5375, !423}
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!5376 = !{!5377, !5378, !5379}
!5377 = !DILocalVariable(name: "vec_", arg: 1, scope: !5372, file: !135, line: 150, type: !5375)
!5378 = !DILocalVariable(name: "obj_", arg: 2, scope: !5372, file: !135, line: 150, type: !423)
!5379 = !DILocalVariable(name: "slot_", scope: !5372, file: !135, line: 150, type: !2445)
!5380 = !DILocation(line: 0, scope: !5372)
!5381 = !DILocation(line: 150, column: 1, scope: !5372)
!5382 = distinct !DISubprogram(name: "VEC_edge_base_space", scope: !135, file: !135, line: 150, type: !5383, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5385)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!393, !5375, !393}
!5385 = !{!5386, !5387}
!5386 = !DILocalVariable(name: "vec_", arg: 1, scope: !5382, file: !135, line: 150, type: !5375)
!5387 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5382, file: !135, line: 150, type: !393)
!5388 = !DILocation(line: 0, scope: !5382)
!5389 = !DILocation(line: 150, column: 1, scope: !5382)
!5390 = distinct !DISubprogram(name: "single_succ_edge", scope: !135, file: !135, line: 643, type: !5391, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!423, !3403}
!5393 = !{!5394}
!5394 = !DILocalVariable(name: "bb", arg: 1, scope: !5390, file: !135, line: 643, type: !3403)
!5395 = !DILocation(line: 0, scope: !5390)
!5396 = !DILocation(line: 645, column: 3, scope: !5390)
!5397 = !DILocation(line: 646, column: 10, scope: !5390)
!5398 = !DILocation(line: 646, column: 3, scope: !5390)
