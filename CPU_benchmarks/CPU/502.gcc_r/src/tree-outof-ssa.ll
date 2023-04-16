; ModuleID = 'tree-outof-ssa.bc'
source_filename = "tree-outof-ssa.c"
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
%struct.ssaexpand = type { %struct._var_map*, %struct.bitmap_head_def*, %struct.rtx_def**, %struct.bitmap_head_def* }
%struct._var_map = type { %struct.partition_def*, i32*, i32*, i32, i32, i32, i32*, %struct.VEC_tree_heap* }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct._elim_graph = type { i32, %struct.VEC_int_heap*, %struct.VEC_int_heap*, %struct.VEC_source_location_heap*, %struct.simple_bitmap_def*, %struct.VEC_int_heap*, %struct._var_map*, %struct.edge_def*, %struct.VEC_int_heap*, %struct.VEC_tree_heap*, %struct.VEC_source_location_heap* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_source_location_heap = type { %struct.VEC_source_location_base }
%struct.VEC_source_location_base = type { i32, i32, [1 x i32] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@flag_tree_ter = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"tree-outof-ssa.c\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Inserting a temp copy on edge BB%d->BB%d : \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"= PART.%d\0A\00", align 1
@SA = external dso_local local_unnamed_addr global %struct.ssaexpand, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"Inserting a temp copy on edge BB%d->BB%d : PART.%d = \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Inserting a partition copy on edge BB%d->BB%d :PART.%d = PART.%d\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"Inserting a value copy on edge BB%d->BB%d : PART.%d = \00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Removing Dead PHI definition: \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"After Coalescing:\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1851 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1864, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1865, metadata !DIExpression()), !dbg !1866
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1867
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1868
  ret i32 %call, !dbg !1869
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1870 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1874
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1875
  ret i32 %call, !dbg !1876
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1932, metadata !DIExpression()), !dbg !1933
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1934
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1934
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1934
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1934
  %cmp = icmp uge i8* %0, %1, !dbg !1934
  %conv1 = zext i1 %cmp to i64, !dbg !1934
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1934
  %tobool = icmp eq i64 %expval, 0, !dbg !1934
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1934

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1934
  br label %cond.end, !dbg !1934

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1934
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1934
  %2 = load i8, i8* %0, align 1, !dbg !1934
  %conv3 = zext i8 %2 to i32, !dbg !1934
  br label %cond.end, !dbg !1934

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1934
  ret i32 %cond, !dbg !1935
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1936 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1938, metadata !DIExpression()), !dbg !1939
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1940
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1940
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1940
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1940
  %cmp = icmp uge i8* %0, %1, !dbg !1940
  %conv1 = zext i1 %cmp to i64, !dbg !1940
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1940
  %tobool = icmp eq i64 %expval, 0, !dbg !1940
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1940

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1940
  br label %cond.end, !dbg !1940

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1940
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1940
  %2 = load i8, i8* %0, align 1, !dbg !1940
  %conv3 = zext i8 %2 to i32, !dbg !1940
  br label %cond.end, !dbg !1940

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1940
  ret i32 %cond, !dbg !1941
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1942 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1943
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1943
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1943
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1943
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1943
  %cmp = icmp uge i8* %1, %2, !dbg !1943
  %conv1 = zext i1 %cmp to i64, !dbg !1943
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1943
  %tobool = icmp eq i64 %expval, 0, !dbg !1943
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1943

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1943
  br label %cond.end, !dbg !1943

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1943
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1943
  %3 = load i8, i8* %1, align 1, !dbg !1943
  %conv3 = zext i8 %3 to i32, !dbg !1943
  br label %cond.end, !dbg !1943

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1943
  ret i32 %cond, !dbg !1944
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1945 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1949, metadata !DIExpression()), !dbg !1950
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1951
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1952
  ret i32 %call, !dbg !1953
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1958, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1959, metadata !DIExpression()), !dbg !1960
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1961
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1961
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1961
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1961
  %cmp = icmp uge i8* %0, %1, !dbg !1961
  %conv1 = zext i1 %cmp to i64, !dbg !1961
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1961
  %tobool = icmp eq i64 %expval, 0, !dbg !1961
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1961

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1961
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1961
  br label %cond.end, !dbg !1961

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1961
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1961
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1961
  store i8 %conv2, i8* %0, align 1, !dbg !1961
  %conv6 = and i32 %__c, 255, !dbg !1961
  br label %cond.end, !dbg !1961

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1961
  ret i32 %cond, !dbg !1962
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1963 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1966, metadata !DIExpression()), !dbg !1967
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1968
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1968
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1968
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1968
  %cmp = icmp uge i8* %0, %1, !dbg !1968
  %conv1 = zext i1 %cmp to i64, !dbg !1968
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1968
  %tobool = icmp eq i64 %expval, 0, !dbg !1968
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1968

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1968
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1968
  br label %cond.end, !dbg !1968

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1968
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1968
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1968
  store i8 %conv2, i8* %0, align 1, !dbg !1968
  %conv6 = and i32 %__c, 255, !dbg !1968
  br label %cond.end, !dbg !1968

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1968
  ret i32 %cond, !dbg !1969
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1970 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1972, metadata !DIExpression()), !dbg !1973
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1974
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1974
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1974
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1974
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1974
  %cmp = icmp uge i8* %1, %2, !dbg !1974
  %conv1 = zext i1 %cmp to i64, !dbg !1974
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1974
  %tobool = icmp eq i64 %expval, 0, !dbg !1974
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1974

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1974
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1974
  br label %cond.end, !dbg !1974

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1974
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1974
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1974
  store i8 %conv4, i8* %1, align 1, !dbg !1974
  %conv6 = and i32 %__c, 255, !dbg !1974
  br label %cond.end, !dbg !1974

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1974
  ret i32 %cond, !dbg !1975
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1982, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1984, metadata !DIExpression()), !dbg !1985
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1986
  ret i64 %call, !dbg !1987
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1988 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1990, metadata !DIExpression()), !dbg !1991
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1992
  %0 = load i32, i32* %_flags, align 8, !dbg !1992
  %and = lshr i32 %0, 4, !dbg !1992
  %and.lobit = and i32 %and, 1, !dbg !1992
  ret i32 %and.lobit, !dbg !1993
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1994 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1996, metadata !DIExpression()), !dbg !1997
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1998
  %0 = load i32, i32* %_flags, align 8, !dbg !1998
  %and = lshr i32 %0, 5, !dbg !1998
  %and.lobit = and i32 %and, 1, !dbg !1998
  ret i32 %and.lobit, !dbg !1999
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2003, metadata !DIExpression()), !dbg !2004
  %__c.off = add i32 %__c, 128, !dbg !2005
  %0 = icmp ult i32 %__c.off, 384, !dbg !2005
  br i1 %0, label %cond.true, label %cond.end, !dbg !2005

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2006
  %1 = load i32*, i32** %call, align 8, !dbg !2007
  %idxprom = sext i32 %__c to i64, !dbg !2008
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2008
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2008
  br label %cond.end, !dbg !2009

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2009
  ret i32 %cond, !dbg !2010
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2013, metadata !DIExpression()), !dbg !2014
  %__c.off = add i32 %__c, 128, !dbg !2015
  %0 = icmp ult i32 %__c.off, 384, !dbg !2015
  br i1 %0, label %cond.true, label %cond.end, !dbg !2015

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2016
  %1 = load i32*, i32** %call, align 8, !dbg !2017
  %idxprom = sext i32 %__c to i64, !dbg !2018
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2018
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2018
  br label %cond.end, !dbg !2019

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2019
  ret i32 %cond, !dbg !2020
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2021 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2026, metadata !DIExpression()), !dbg !2027
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2028
  %conv = trunc i64 %call to i32, !dbg !2029
  ret i32 %conv, !dbg !2030
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2031 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2035, metadata !DIExpression()), !dbg !2036
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2037
  ret i64 %call, !dbg !2038
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2039 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2044, metadata !DIExpression()), !dbg !2045
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2046
  ret i64 %call, !dbg !2047
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2048 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2054, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2055, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2056, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2057, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2058, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 0, metadata !2059, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2060, metadata !DIExpression()), !dbg !2064
  br label %while.cond, !dbg !2065

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2066
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2064
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2060, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2059, metadata !DIExpression()), !dbg !2064
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2067
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2065

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2068
  %div = lshr i64 %add, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %div, metadata !2061, metadata !DIExpression()), !dbg !2064
  %mul = mul i64 %div, %__size, !dbg !2071
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2072
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2062, metadata !DIExpression()), !dbg !2064
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %call, metadata !2063, metadata !DIExpression()), !dbg !2064
  %cmp1 = icmp slt i32 %call, 0, !dbg !2074
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2076

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2077
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2079

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2059, metadata !DIExpression()), !dbg !2064
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2064
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2064
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2060, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2059, metadata !DIExpression()), !dbg !2064
  br label %while.cond, !dbg !2065, !llvm.loop !2081

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2064
  ret i8* %retval.0, !dbg !2083
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2090, metadata !DIExpression()), !dbg !2091
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2092
  ret double %call, !dbg !2093
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2104, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %base, metadata !2105, metadata !DIExpression()), !dbg !2106
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2107
  ret i64 %call, !dbg !2108
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2109 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %base, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2119
  ret i64 %call, !dbg !2120
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2132, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %base, metadata !2134, metadata !DIExpression()), !dbg !2135
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2136
  ret i64 %call, !dbg !2137
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2138 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2142, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %base, metadata !2144, metadata !DIExpression()), !dbg !2145
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2146
  ret i64 %call, !dbg !2147
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2148 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2189, metadata !DIExpression()), !dbg !2190
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2191
  ret i32 %call, !dbg !2192
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2193 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2195, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2196, metadata !DIExpression()), !dbg !2197
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2198
  ret i32 %call, !dbg !2199
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2205, metadata !DIExpression()), !dbg !2206
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2207
  ret i32 %call, !dbg !2208
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2209 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2213, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2218
  ret i32 %call, !dbg !2219
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2220 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2225, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2226, metadata !DIExpression()), !dbg !2227
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2226, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2228
  ret i32 %call, !dbg !2229
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2230 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2237, metadata !DIExpression()), !dbg !2238
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2237, metadata !DIExpression(DW_OP_deref)), !dbg !2238
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2239
  ret i32 %call, !dbg !2240
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2241 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2266, metadata !DIExpression()), !dbg !2267
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2268
  ret i32 %call, !dbg !2269
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2270 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2273, metadata !DIExpression()), !dbg !2274
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2275
  ret i32 %call, !dbg !2276
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2277 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2282, metadata !DIExpression()), !dbg !2283
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2284
  ret i32 %call, !dbg !2285
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2286 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2290, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2291, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2292, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2293, metadata !DIExpression()), !dbg !2294
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2295
  ret i32 %call, !dbg !2296
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @expand_phi_nodes(%struct.ssaexpand* %sa) local_unnamed_addr #5 !dbg !2297 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp12 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ssaexpand* %sa, metadata !2310, metadata !DIExpression()), !dbg !2332
  %map = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 0, !dbg !2333
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !2333
  %num_partitions = getelementptr inbounds %struct._var_map, %struct._var_map* %0, i64 0, i32 3, !dbg !2334
  %1 = load i32, i32* %num_partitions, align 8, !dbg !2334
  %call = tail call fastcc %struct._elim_graph* @new_elim_graph(i32 %1) #7, !dbg !2335
  call void @llvm.dbg.value(metadata %struct._elim_graph* %call, metadata !2312, metadata !DIExpression()), !dbg !2332
  %2 = bitcast %struct.ssaexpand* %sa to i64*, !dbg !2336
  %3 = load i64, i64* %2, align 8, !dbg !2336
  %map2 = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %call, i64 0, i32 6, !dbg !2337
  %4 = bitcast %struct._var_map** %map2 to i64*, !dbg !2338
  store i64 %3, i64* %4, align 8, !dbg !2338
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2339
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2339
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2339
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2339
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2339
  %8 = bitcast %struct.edge_def** %e to i8*, !dbg !2340
  %9 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2340
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2341
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2341
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2341
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2343
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2343
  %15 = bitcast %struct.edge_iterator* %tmp12 to i8*, !dbg !2345
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp12, i64 0, i32 0, !dbg !2345
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp12, i64 0, i32 1, !dbg !2345
  br label %for.cond, !dbg !2339

for.cond:                                         ; preds = %for.inc37, %entry
  %18 = phi %struct.control_flow_graph* [ %6, %entry ], [ %.pre1, %for.inc37 ], !dbg !2346
  %.pn = phi %struct.basic_block_def* [ %7, %entry ], [ %bb.0, %for.inc37 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2347
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2347
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2311, metadata !DIExpression()), !dbg !2332
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 1, !dbg !2346
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2346
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %19, !dbg !2346
  br i1 %cmp, label %for.end39, label %for.body, !dbg !2339

for.body:                                         ; preds = %for.cond
  %call5 = call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb.0) #7, !dbg !2348
  %call6 = call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call5) #7, !dbg !2349
  %tobool = icmp eq i8 %call6, 0, !dbg !2349
  br i1 %tobool, label %if.then, label %for.inc37, !dbg !2350

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !2352
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2353
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !2353
  %call7 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2353
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 0, !dbg !2353
  store i32 %20, i32* %11, align 8, !dbg !2353
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 1, !dbg !2353
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %12, align 8, !dbg !2353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !2353
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2353
  br label %for.cond8, !dbg !2353

for.cond8:                                        ; preds = %for.body11, %if.then
  %22 = load i32, i32* %13, align 8, !dbg !2354
  %23 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2313, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  %call9 = call fastcc zeroext i8 @ei_cond(i32 %22, %struct.VEC_edge_gc** %23, %struct.edge_def** nonnull %e) #7, !dbg !2354
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2353
  br i1 %tobool10, label %for.end, label %for.body11, !dbg !2353

for.body11:                                       ; preds = %for.cond8
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !2313, metadata !DIExpression()), !dbg !2340
  call fastcc void @eliminate_phi(%struct.edge_def* %24, %struct._elim_graph* %call) #7, !dbg !2356
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2318, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2354
  br label %for.cond8, !dbg !2354, !llvm.loop !2357

for.end:                                          ; preds = %for.cond8
  call fastcc void @set_phi_nodes(%struct.basic_block_def* %bb.0, %struct.gimple_seq_d* null) #7, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2360
  %call14 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2360
  %25 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 0, !dbg !2360
  store i32 %25, i32* %16, align 8, !dbg !2360
  %26 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 1, !dbg !2360
  store %struct.VEC_edge_gc** %26, %struct.VEC_edge_gc*** %17, align 8, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2360
  br label %for.cond15, !dbg !2361

for.cond15:                                       ; preds = %if.end, %for.end
  %27 = load i32, i32* %13, align 8, !dbg !2362
  %28 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2362
  %call16 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %27, %struct.VEC_edge_gc** %28) #7, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !2313, metadata !DIExpression()), !dbg !2340
  store %struct.edge_def* %call16, %struct.edge_def** %e, align 8, !dbg !2363
  %tobool17 = icmp eq %struct.edge_def* %call16, null, !dbg !2364
  br i1 %tobool17, label %for.end35, label %for.body18, !dbg !2364

for.body18:                                       ; preds = %for.cond15
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !2313, metadata !DIExpression()), !dbg !2340
  %insns = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 2, !dbg !2365
  %r = bitcast %union.edge_def_insns* %insns to %struct.rtx_def**, !dbg !2366
  %29 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8, !dbg !2366
  %tobool19 = icmp eq %struct.rtx_def* %29, null, !dbg !2367
  br i1 %tobool19, label %if.else, label %land.lhs.true, !dbg !2368

land.lhs.true:                                    ; preds = %for.body18
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !2313, metadata !DIExpression()), !dbg !2340
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 7, !dbg !2369
  %30 = load i32, i32* %flags, align 8, !dbg !2369
  %and = and i32 %30, 8, !dbg !2370
  %tobool20 = icmp eq i32 %and, 0, !dbg !2370
  br i1 %tobool20, label %if.else, label %land.lhs.true21, !dbg !2371

land.lhs.true21:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !2313, metadata !DIExpression()), !dbg !2340
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 1, !dbg !2372
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2372
  %call22 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %31) #7, !dbg !2373
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2373
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !2374

if.then24:                                        ; preds = %land.lhs.true21
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2375
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2313, metadata !DIExpression()), !dbg !2340
  %insns26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 2, !dbg !2376
  %33 = bitcast %union.edge_def_insns* %insns26 to i64*, !dbg !2377
  %34 = load i64, i64* %33, align 8, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2313, metadata !DIExpression()), !dbg !2340
  %r30 = bitcast %union.edge_def_insns* %insns26 to %struct.rtx_def**, !dbg !2378
  store %struct.rtx_def* null, %struct.rtx_def** %r30, align 8, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2313, metadata !DIExpression()), !dbg !2340
  %call31 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %32) #6, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call31, metadata !2331, metadata !DIExpression()), !dbg !2381
  %call32 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call31) #7, !dbg !2382
  %insns33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call32, i64 0, i32 2, !dbg !2383
  %35 = bitcast %union.edge_def_insns* %insns33 to i64*, !dbg !2384
  store i64 %34, i64* %35, align 8, !dbg !2384
  br label %if.end, !dbg !2385

if.else:                                          ; preds = %land.lhs.true21, %land.lhs.true, %for.body18
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2318, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2386
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then24
  br label %for.cond15, !dbg !2387, !llvm.loop !2388

for.end35:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2390
  br label %for.inc37, !dbg !2391

for.inc37:                                        ; preds = %for.body, %for.end35
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2346
  %cfg4.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2392
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4.phi.trans.insert, align 8, !dbg !2346
  br label %for.cond, !dbg !2346, !llvm.loop !2393

for.end39:                                        ; preds = %for.cond
  call fastcc void @delete_elim_graph(%struct._elim_graph* %call) #7, !dbg !2395
  ret void, !dbg !2396
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._elim_graph* @new_elim_graph(i32 %size) unnamed_addr #5 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !2401, metadata !DIExpression()), !dbg !2403
  %call = tail call i8* @xmalloc(i64 88) #6, !dbg !2404
  %0 = bitcast i8* %call to %struct._elim_graph*, !dbg !2405
  call void @llvm.dbg.value(metadata %struct._elim_graph* %0, metadata !2402, metadata !DIExpression()), !dbg !2403
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 30) #7, !dbg !2406
  %nodes = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2407
  %1 = bitcast i8* %nodes to %struct.VEC_int_heap**, !dbg !2407
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %1, align 8, !dbg !2408
  %call2 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 20) #7, !dbg !2409
  %const_dests = getelementptr inbounds i8, i8* %call, i64 64, !dbg !2410
  %2 = bitcast i8* %const_dests to %struct.VEC_int_heap**, !dbg !2410
  store %struct.VEC_int_heap* %call2, %struct.VEC_int_heap** %2, align 8, !dbg !2411
  %call3 = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 20) #7, !dbg !2412
  %const_copies = getelementptr inbounds i8, i8* %call, i64 72, !dbg !2413
  %3 = bitcast i8* %const_copies to %struct.VEC_tree_heap**, !dbg !2413
  store %struct.VEC_tree_heap* %call3, %struct.VEC_tree_heap** %3, align 8, !dbg !2414
  %call4 = tail call fastcc %struct.VEC_source_location_heap* @VEC_source_location_heap_alloc(i32 10) #7, !dbg !2415
  %copy_locus = getelementptr inbounds i8, i8* %call, i64 80, !dbg !2416
  %4 = bitcast i8* %copy_locus to %struct.VEC_source_location_heap**, !dbg !2416
  store %struct.VEC_source_location_heap* %call4, %struct.VEC_source_location_heap** %4, align 8, !dbg !2417
  %call5 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 20) #7, !dbg !2418
  %edge_list = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2419
  %5 = bitcast i8* %edge_list to %struct.VEC_int_heap**, !dbg !2419
  store %struct.VEC_int_heap* %call5, %struct.VEC_int_heap** %5, align 8, !dbg !2420
  %call6 = tail call fastcc %struct.VEC_source_location_heap* @VEC_source_location_heap_alloc(i32 10) #7, !dbg !2421
  %edge_locus = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2422
  %6 = bitcast i8* %edge_locus to %struct.VEC_source_location_heap**, !dbg !2422
  store %struct.VEC_source_location_heap* %call6, %struct.VEC_source_location_heap** %6, align 8, !dbg !2423
  %call7 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 30) #7, !dbg !2424
  %stack = getelementptr inbounds i8, i8* %call, i64 40, !dbg !2425
  %7 = bitcast i8* %stack to %struct.VEC_int_heap**, !dbg !2425
  store %struct.VEC_int_heap* %call7, %struct.VEC_int_heap** %7, align 8, !dbg !2426
  %call8 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %size) #6, !dbg !2427
  %visited = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2428
  %8 = bitcast i8* %visited to %struct.simple_bitmap_def**, !dbg !2428
  store %struct.simple_bitmap_def* %call8, %struct.simple_bitmap_def** %8, align 8, !dbg !2429
  ret %struct._elim_graph* %0, !dbg !2430
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2431 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2438, metadata !DIExpression()), !dbg !2439
  %cmp = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2440
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2441

lor.rhs:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2442
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2442
  %cmp1 = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2443
  %phitmp = zext i1 %cmp1 to i8, !dbg !2441
  br label %lor.end, !dbg !2441

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %1, !dbg !2444
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2453, metadata !DIExpression()), !dbg !2454
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2455
  %0 = load i32, i32* %flags, align 8, !dbg !2455
  %and = and i32 %0, 512, !dbg !2455
  %tobool = icmp eq i32 %and, 0, !dbg !2455
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2455

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2455
  br label %cond.end, !dbg !2455

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2456
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2456
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2458
  br i1 %tobool1, label %return, label %if.end, !dbg !2459

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !2460
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !2460
  br label %return, !dbg !2461

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !2454
  ret %struct.gimple_seq_d* %retval.0, !dbg !2462
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2463 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2467, metadata !DIExpression()), !dbg !2469
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2470
  store i32 0, i32* %index, align 8, !dbg !2471
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2472
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2473
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2474
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2474
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2474
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2475 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2481, metadata !DIExpression()), !dbg !2482
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2483
  %tobool = icmp eq i8 %call, 0, !dbg !2483
  br i1 %tobool, label %if.then, label %if.else, !dbg !2485

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2486
  br label %return, !dbg !2488

if.else:                                          ; preds = %entry
  br label %return, !dbg !2489

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2491
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2491
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2491
  ret i8 %retval.0, !dbg !2492
}

; Function Attrs: nounwind uwtable
define internal fastcc void @eliminate_phi(%struct.edge_def* %e, %struct._elim_graph* %g) unnamed_addr #5 !dbg !2493 {
entry:
  %part = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2497, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !2498, metadata !DIExpression()), !dbg !2507
  %const_copies = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 9, !dbg !2508
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %const_copies, align 8, !dbg !2508
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2508
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2508

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !2508
  br label %cond.end, !dbg !2508

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2508
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2508
  %cmp = icmp eq i32 %call, 0, !dbg !2508
  br i1 %cmp, label %cond.end4, label %cond.true2, !dbg !2508

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 656, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2508
  br label %cond.end4, !dbg !2508

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %copy_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 10, !dbg !2509
  %1 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %copy_locus, align 8, !dbg !2509
  %tobool6 = icmp eq %struct.VEC_source_location_heap* %1, null, !dbg !2509
  br i1 %tobool6, label %cond.end11, label %cond.true7, !dbg !2509

cond.true7:                                       ; preds = %cond.end4
  %base9 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %1, i64 0, i32 0, !dbg !2509
  br label %cond.end11, !dbg !2509

cond.end11:                                       ; preds = %cond.end4, %cond.true7
  %cond12 = phi %struct.VEC_source_location_base* [ %base9, %cond.true7 ], [ null, %cond.end4 ], !dbg !2509
  %call13 = tail call fastcc i32 @VEC_source_location_base_length(%struct.VEC_source_location_base* %cond12) #7, !dbg !2509
  %cmp14 = icmp eq i32 %call13, 0, !dbg !2509
  br i1 %cmp14, label %cond.end17, label %cond.true15, !dbg !2509

cond.true15:                                      ; preds = %cond.end11
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 657, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2509
  br label %cond.end17, !dbg !2509

cond.end17:                                       ; preds = %cond.end11, %cond.true15
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !2510
  %2 = load i32, i32* %flags, align 8, !dbg !2510
  %and = and i32 %2, 2, !dbg !2512
  %tobool19 = icmp eq i32 %and, 0, !dbg !2512
  br i1 %tobool19, label %if.end, label %cleanup.cont, !dbg !2513

if.end:                                           ; preds = %cond.end17
  %e20 = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 7, !dbg !2514
  store %struct.edge_def* %e, %struct.edge_def** %e20, align 8, !dbg !2515
  tail call fastcc void @eliminate_build(%struct._elim_graph* %g) #7, !dbg !2516
  %call21 = tail call fastcc i32 @elim_graph_size(%struct._elim_graph* %g) #7, !dbg !2517
  %cmp22 = icmp eq i32 %call21, 0, !dbg !2518
  br i1 %cmp22, label %if.end77, label %if.then23, !dbg !2519

if.then23:                                        ; preds = %if.end
  %3 = bitcast i32* %part to i8*, !dbg !2520
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !2520
  %visited = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 4, !dbg !2521
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !2521
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %4) #6, !dbg !2522
  %stack = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 5, !dbg !2523
  %5 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %stack, align 8, !dbg !2523
  %tobool24 = icmp eq %struct.VEC_int_heap* %5, null, !dbg !2523
  br i1 %tobool24, label %cond.end29, label %cond.true25, !dbg !2523

cond.true25:                                      ; preds = %if.then23
  %base27 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %5, i64 0, i32 0, !dbg !2523
  br label %cond.end29, !dbg !2523

cond.end29:                                       ; preds = %if.then23, %cond.true25
  %cond30 = phi %struct.VEC_int_base* [ %base27, %cond.true25 ], [ null, %if.then23 ], !dbg !2523
  tail call fastcc void @VEC_int_base_truncate(%struct.VEC_int_base* %cond30, i32 0) #7, !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !2499, metadata !DIExpression()), !dbg !2507
  %nodes = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 1, !dbg !2524
  br label %for.cond, !dbg !2527

for.cond:                                         ; preds = %for.inc, %cond.end29
  %x.0 = phi i32 [ 0, %cond.end29 ], [ %inc, %for.inc ], !dbg !2528
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !2499, metadata !DIExpression()), !dbg !2507
  %6 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %nodes, align 8, !dbg !2529
  %tobool31 = icmp eq %struct.VEC_int_heap* %6, null, !dbg !2529
  br i1 %tobool31, label %cond.end36, label %cond.true32, !dbg !2529

cond.true32:                                      ; preds = %for.cond
  %base34 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %6, i64 0, i32 0, !dbg !2529
  br label %cond.end36, !dbg !2529

cond.end36:                                       ; preds = %for.cond, %cond.true32
  %cond37 = phi %struct.VEC_int_base* [ %base34, %cond.true32 ], [ null, %for.cond ], !dbg !2529
  call void @llvm.dbg.value(metadata i32* %part, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %call38 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond37, i32 %x.0, i32* nonnull %part) #7, !dbg !2529
  %tobool39 = icmp eq i32 %call38, 0, !dbg !2531
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !2530
  br i1 %tobool39, label %for.end, label %for.body, !dbg !2531

for.body:                                         ; preds = %cond.end36
  %8 = load i32, i32* %part, align 4, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %8, metadata !2500, metadata !DIExpression()), !dbg !2530
  %div = lshr i32 %8, 6, !dbg !2532
  %idxprom = zext i32 %div to i64, !dbg !2532
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i64 0, i32 3, i64 %idxprom, !dbg !2532
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %8, metadata !2500, metadata !DIExpression()), !dbg !2530
  %rem = and i32 %8, 63, !dbg !2532
  %sh_prom = zext i32 %rem to i64, !dbg !2532
  %10 = shl i64 1, %sh_prom, !dbg !2532
  %11 = and i64 %9, %10, !dbg !2532
  %tobool42 = icmp eq i64 %11, 0, !dbg !2532
  br i1 %tobool42, label %if.then43, label %for.inc, !dbg !2535

if.then43:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %8, metadata !2500, metadata !DIExpression()), !dbg !2530
  call fastcc void @elim_forward(%struct._elim_graph* %g, i32 %8) #7, !dbg !2536
  br label %for.inc, !dbg !2536

for.inc:                                          ; preds = %for.body, %if.then43
  %inc = add nuw nsw i32 %x.0, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2499, metadata !DIExpression()), !dbg !2507
  br label %for.cond, !dbg !2538, !llvm.loop !2539

for.end:                                          ; preds = %cond.end36
  %.lcssa = phi %struct.simple_bitmap_def* [ %7, %cond.end36 ], !dbg !2530
  call void @sbitmap_zero(%struct.simple_bitmap_def* %.lcssa) #6, !dbg !2541
  br label %while.cond, !dbg !2542

while.cond:                                       ; preds = %if.end76, %for.end
  %12 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %stack, align 8, !dbg !2543
  %tobool47 = icmp eq %struct.VEC_int_heap* %12, null, !dbg !2543
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !2543

cond.true48:                                      ; preds = %while.cond
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %12, i64 0, i32 0, !dbg !2543
  br label %cond.end52, !dbg !2543

cond.end52:                                       ; preds = %while.cond, %cond.true48
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true48 ], [ null, %while.cond ], !dbg !2543
  %call54 = call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond53) #7, !dbg !2543
  %cmp55 = icmp eq i32 %call54, 0, !dbg !2544
  br i1 %cmp55, label %while.end, label %while.body, !dbg !2542

while.body:                                       ; preds = %cond.end52
  %13 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %stack, align 8, !dbg !2545
  %tobool57 = icmp eq %struct.VEC_int_heap* %13, null, !dbg !2545
  br i1 %tobool57, label %cond.end62, label %cond.true58, !dbg !2545

cond.true58:                                      ; preds = %while.body
  %base60 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %13, i64 0, i32 0, !dbg !2545
  br label %cond.end62, !dbg !2545

cond.end62:                                       ; preds = %while.body, %cond.true58
  %cond63 = phi %struct.VEC_int_base* [ %base60, %cond.true58 ], [ null, %while.body ], !dbg !2545
  %call64 = call fastcc i32 @VEC_int_base_pop(%struct.VEC_int_base* %cond63) #7, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %call64, metadata !2499, metadata !DIExpression()), !dbg !2507
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !2547
  %div67 = lshr i32 %call64, 6, !dbg !2547
  %idxprom68 = zext i32 %div67 to i64, !dbg !2547
  %arrayidx69 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i64 0, i32 3, i64 %idxprom68, !dbg !2547
  %15 = load i64, i64* %arrayidx69, align 8, !dbg !2547
  %rem70 = and i32 %call64, 63, !dbg !2547
  %sh_prom71 = zext i32 %rem70 to i64, !dbg !2547
  %16 = shl i64 1, %sh_prom71, !dbg !2547
  %17 = and i64 %15, %16, !dbg !2547
  %tobool74 = icmp eq i64 %17, 0, !dbg !2547
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !2549

if.then75:                                        ; preds = %cond.end62
  call fastcc void @elim_create(%struct._elim_graph* %g, i32 %call64) #7, !dbg !2550
  br label %if.end76, !dbg !2550

if.end76:                                         ; preds = %cond.end62, %if.then75
  br label %while.cond, !dbg !2542, !llvm.loop !2551

while.end:                                        ; preds = %cond.end52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !2553
  br label %if.end77, !dbg !2554

if.end77:                                         ; preds = %if.end, %while.end
  %const_dests = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 8, !dbg !2555
  br label %while.cond78, !dbg !2556

while.cond78:                                     ; preds = %cond.end113, %if.end77
  %18 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %const_copies, align 8, !dbg !2557
  %tobool80 = icmp eq %struct.VEC_tree_heap* %18, null, !dbg !2557
  br i1 %tobool80, label %cond.end85, label %cond.true81, !dbg !2557

cond.true81:                                      ; preds = %while.cond78
  %base83 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %18, i64 0, i32 0, !dbg !2557
  br label %cond.end85, !dbg !2557

cond.end85:                                       ; preds = %while.cond78, %cond.true81
  %cond86 = phi %struct.VEC_tree_base* [ %base83, %cond.true81 ], [ null, %while.cond78 ], !dbg !2557
  %call87 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond86) #7, !dbg !2557
  %cmp88 = icmp eq i32 %call87, 0, !dbg !2558
  br i1 %cmp88, label %cleanup.cont.loopexit, label %while.body89, !dbg !2556

while.body89:                                     ; preds = %cond.end85
  %19 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %const_copies, align 8, !dbg !2559
  %tobool91 = icmp eq %struct.VEC_tree_heap* %19, null, !dbg !2559
  br i1 %tobool91, label %cond.end96, label %cond.true92, !dbg !2559

cond.true92:                                      ; preds = %while.body89
  %base94 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %19, i64 0, i32 0, !dbg !2559
  br label %cond.end96, !dbg !2559

cond.end96:                                       ; preds = %while.body89, %cond.true92
  %cond97 = phi %struct.VEC_tree_base* [ %base94, %cond.true92 ], [ null, %while.body89 ], !dbg !2559
  %call98 = call fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %cond97) #7, !dbg !2559
  call void @llvm.dbg.value(metadata %union.tree_node* %call98, metadata !2505, metadata !DIExpression()), !dbg !2555
  %20 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %const_dests, align 8, !dbg !2560
  %tobool99 = icmp eq %struct.VEC_int_heap* %20, null, !dbg !2560
  br i1 %tobool99, label %cond.end104, label %cond.true100, !dbg !2560

cond.true100:                                     ; preds = %cond.end96
  %base102 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %20, i64 0, i32 0, !dbg !2560
  br label %cond.end104, !dbg !2560

cond.end104:                                      ; preds = %cond.end96, %cond.true100
  %cond105 = phi %struct.VEC_int_base* [ %base102, %cond.true100 ], [ null, %cond.end96 ], !dbg !2560
  %call106 = call fastcc i32 @VEC_int_base_pop(%struct.VEC_int_base* %cond105) #7, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %call106, metadata !2503, metadata !DIExpression()), !dbg !2555
  %21 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %copy_locus, align 8, !dbg !2561
  %tobool108 = icmp eq %struct.VEC_source_location_heap* %21, null, !dbg !2561
  br i1 %tobool108, label %cond.end113, label %cond.true109, !dbg !2561

cond.true109:                                     ; preds = %cond.end104
  %base111 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %21, i64 0, i32 0, !dbg !2561
  br label %cond.end113, !dbg !2561

cond.end113:                                      ; preds = %cond.end104, %cond.true109
  %cond114 = phi %struct.VEC_source_location_base* [ %base111, %cond.true109 ], [ null, %cond.end104 ], !dbg !2561
  %call115 = call fastcc i32 @VEC_source_location_base_pop(%struct.VEC_source_location_base* %cond114) #7, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %call115, metadata !2506, metadata !DIExpression()), !dbg !2555
  call fastcc void @insert_value_copy_on_edge(%struct.edge_def* %e, i32 %call106, %union.tree_node* %call98, i32 %call115) #7, !dbg !2562
  br label %while.cond78, !dbg !2556, !llvm.loop !2563

cleanup.cont.loopexit:                            ; preds = %cond.end85
  br label %cleanup.cont, !dbg !2565

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %cond.end17
  ret void, !dbg !2565
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2566 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2571, metadata !DIExpression()), !dbg !2572
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2573
  %0 = load i32, i32* %index, align 8, !dbg !2573
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2573
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2573
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2573
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2573
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2573

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2573
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2573
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2573
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2573
  br label %cond.end, !dbg !2573

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2573
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2573
  %cmp = icmp ult i32 %0, %call2, !dbg !2573
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2573

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2573
  br label %cond.end5, !dbg !2573

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2574
  %inc = add i32 %5, 1, !dbg !2574
  store i32 %inc, i32* %index, align 8, !dbg !2574
  ret void, !dbg !2575
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_phi_nodes(%struct.basic_block_def* %bb, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !2576 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2580, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !2581, metadata !DIExpression()), !dbg !2589
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2590
  %0 = load i32, i32* %flags, align 8, !dbg !2590
  %and = and i32 %0, 512, !dbg !2590
  %tobool = icmp eq i32 %and, 0, !dbg !2590
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2590

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2590
  br label %cond.end, !dbg !2590

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2591
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2591
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !2592
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !2593
  ret void, !dbg !2594
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2595 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2600
  %tobool = icmp eq i8 %call, 0, !dbg !2600
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2601

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2602
  br label %cond.end, !dbg !2601

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !2601
  ret %struct.edge_def* %cond, !dbg !2603
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2604 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2608, metadata !DIExpression()), !dbg !2609
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2610
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2610
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2610
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2610

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2610
  br label %cond.end, !dbg !2610

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2610
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2610
  %cmp = icmp eq i32 %call, 1, !dbg !2611
  %conv2 = zext i1 %cmp to i8, !dbg !2610
  ret i8 %conv2, !dbg !2612
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2613 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2617, metadata !DIExpression()), !dbg !2618
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !2619
  %tobool = icmp eq i8 %call, 0, !dbg !2619
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2619

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2619
  br label %cond.end, !dbg !2619

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2620
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2620
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2620
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2620

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2620
  br label %cond.end5, !dbg !2620

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2620
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !2620
  ret %struct.edge_def* %call7, !dbg !2621
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delete_elim_graph(%struct._elim_graph* %g) unnamed_addr #0 !dbg !2622 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !2626, metadata !DIExpression()), !dbg !2627
  %visited = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 4, !dbg !2628
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !2628
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 0, !dbg !2628
  %1 = load i8*, i8** %popcount, align 8, !dbg !2628
  tail call void @free(i8* %1) #6, !dbg !2628
  %2 = bitcast %struct.simple_bitmap_def** %visited to i8**, !dbg !2628
  %3 = load i8*, i8** %2, align 8, !dbg !2628
  tail call void @free(i8* %3) #6, !dbg !2628
  %stack = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 5, !dbg !2629
  tail call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %stack) #7, !dbg !2629
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !2630
  tail call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %edge_list) #7, !dbg !2630
  %const_copies = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 9, !dbg !2631
  tail call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %const_copies) #7, !dbg !2631
  %const_dests = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 8, !dbg !2632
  tail call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %const_dests) #7, !dbg !2632
  %nodes = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 1, !dbg !2633
  tail call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %nodes) #7, !dbg !2633
  %copy_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 10, !dbg !2634
  tail call fastcc void @VEC_source_location_heap_free(%struct.VEC_source_location_heap** nonnull %copy_locus) #7, !dbg !2634
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !2635
  tail call fastcc void @VEC_source_location_heap_free(%struct.VEC_source_location_heap** nonnull %edge_locus) #7, !dbg !2635
  %4 = bitcast %struct._elim_graph* %g to i8*, !dbg !2636
  tail call void @free(i8* %4) #6, !dbg !2637
  ret void, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local void @finish_out_of_ssa(%struct.ssaexpand* %sa) local_unnamed_addr #5 !dbg !2639 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssaexpand* %sa, metadata !2641, metadata !DIExpression()), !dbg !2642
  %partition_to_pseudo = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 2, !dbg !2643
  %0 = bitcast %struct.rtx_def*** %partition_to_pseudo to i8**, !dbg !2643
  %1 = load i8*, i8** %0, align 8, !dbg !2643
  tail call void @free(i8* %1) #6, !dbg !2644
  %values = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 1, !dbg !2645
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %values, align 8, !dbg !2645
  %tobool = icmp eq %struct.bitmap_head_def* %2, null, !dbg !2647
  br i1 %tobool, label %if.end, label %if.then, !dbg !2648

if.then:                                          ; preds = %entry
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %2) #6, !dbg !2649
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %values, align 8, !dbg !2649
  br label %if.end, !dbg !2649

if.end:                                           ; preds = %entry, %if.then
  %map = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 0, !dbg !2650
  %3 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !2650
  tail call void @delete_var_map(%struct._var_map* %3) #6, !dbg !2651
  %partition_has_default_def = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 3, !dbg !2652
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition_has_default_def, align 8, !dbg !2652
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %4) #6, !dbg !2652
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %partition_has_default_def, align 8, !dbg !2652
  %5 = bitcast %struct.ssaexpand* %sa to i8*, !dbg !2653
  %call = tail call i8* @memset(i8* %5, i32 0, i64 32) #6, !dbg !2654
  ret void, !dbg !2655
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @delete_var_map(%struct._var_map*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rewrite_out_of_ssa(%struct.ssaexpand* %sa) local_unnamed_addr #5 !dbg !2656 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssaexpand* %sa, metadata !2660, metadata !DIExpression()), !dbg !2661
  tail call fastcc void @insert_backedge_copies() #7, !dbg !2662
  tail call fastcc void @eliminate_useless_phis() #7, !dbg !2663
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2664
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2664
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2666

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !2667
  %and = and i32 %1, 8, !dbg !2668
  %tobool1 = icmp eq i32 %and, 0, !dbg !2668
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2669

if.then:                                          ; preds = %land.lhs.true
  %and2 = and i32 %1, -9, !dbg !2670
  tail call void @gimple_dump_cfg(%struct._IO_FILE* nonnull %0, i32 %and2) #6, !dbg !2671
  br label %if.end, !dbg !2671

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %2 = load i32, i32* @flag_tree_ter, align 4, !dbg !2672
  %conv = trunc i32 %2 to i8, !dbg !2672
  tail call fastcc void @remove_ssa_form(i8 zeroext %conv, %struct.ssaexpand* %sa) #7, !dbg !2673
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2674
  %tobool3 = icmp eq %struct._IO_FILE* %3, null, !dbg !2674
  br i1 %tobool3, label %if.end9, label %land.lhs.true4, !dbg !2676

land.lhs.true4:                                   ; preds = %if.end
  %4 = load i32, i32* @dump_flags, align 4, !dbg !2677
  %and5 = and i32 %4, 8, !dbg !2678
  %tobool6 = icmp eq i32 %and5, 0, !dbg !2678
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !2679

if.then7:                                         ; preds = %land.lhs.true4
  %and8 = and i32 %4, -9, !dbg !2680
  tail call void @gimple_dump_cfg(%struct._IO_FILE* nonnull %3, i32 %and8) #6, !dbg !2681
  br label %if.end9, !dbg !2681

if.end9:                                          ; preds = %land.lhs.true4, %if.end, %if.then7
  ret i32 0, !dbg !2682
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_backedge_copies() unnamed_addr #5 !dbg !2683 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %gsi2 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp29 = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2710
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2711
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2711
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2711
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2711
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2711
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2712
  %5 = bitcast %struct.gimple_stmt_iterator* %gsi2 to i8*, !dbg !2713
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp29 to i8*, !dbg !2713
  br label %for.cond, !dbg !2711

for.cond:                                         ; preds = %for.end87, %entry
  %7 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre4, %for.end87 ], !dbg !2714
  %.pn = phi %struct.basic_block_def* [ %3, %entry ], [ %bb.0, %for.end87 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2715
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2715
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2687, metadata !DIExpression()), !dbg !2716
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !2714
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2714
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %8, !dbg !2714
  br i1 %cmp, label %for.end91, label %for.body, !dbg !2711

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2717
  %9 = bitcast i8** %aux to i8***, !dbg !2718
  store i8** %aux, i8*** %9, align 8, !dbg !2718
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2719
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !2719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2719
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2719
  br label %for.cond4, !dbg !2720

for.cond4:                                        ; preds = %cleanup80, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2716
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2721
  %tobool = icmp eq i8 %call, 0, !dbg !2722
  br i1 %tobool, label %for.body5, label %for.end87, !dbg !2723

for.body5:                                        ; preds = %for.cond4
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2716
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2724
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call6, metadata !2689, metadata !DIExpression()), !dbg !2725
  %call7 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call6) #7, !dbg !2726
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2696, metadata !DIExpression()), !dbg !2725
  %call8 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call7) #6, !dbg !2727
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2727
  br i1 %tobool9, label %cleanup80, label %if.end, !dbg !2729

if.end:                                           ; preds = %for.body5
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2730
  %10 = bitcast i32* %var to %union.tree_node**, !dbg !2730
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2730
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2697, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i64 0, metadata !2698, metadata !DIExpression()), !dbg !2725
  br label %for.cond10, !dbg !2731

for.cond10:                                       ; preds = %cleanup76, %if.end
  %i.0 = phi i64 [ 0, %if.end ], [ %inc, %cleanup76 ], !dbg !2732
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2698, metadata !DIExpression()), !dbg !2725
  %call11 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call6) #7, !dbg !2733
  %conv = zext i32 %call11 to i64, !dbg !2733
  %cmp12 = icmp ult i64 %i.0, %conv, !dbg !2734
  br i1 %cmp12, label %for.body14, label %cleanup80.loopexit, !dbg !2735

for.body14:                                       ; preds = %for.cond10
  %call15 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call6, i64 %i.0) #7, !dbg !2736
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2699, metadata !DIExpression()), !dbg !2737
  %call16 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %call6, i64 %i.0) #7, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !2703, metadata !DIExpression()), !dbg !2737
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 7, !dbg !2739
  %12 = load i32, i32* %flags, align 8, !dbg !2739
  %and = and i32 %12, 32, !dbg !2740
  %tobool17 = icmp eq i32 %and, 0, !dbg !2740
  br i1 %tobool17, label %if.end75, label %land.lhs.true, !dbg !2741

land.lhs.true:                                    ; preds = %for.body14
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2742
  %bf.load = load i64, i64* %13, align 8, !dbg !2742
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2743
  %cmp18 = icmp eq i64 %bf.cast2, 141, !dbg !2743
  br i1 %cmp18, label %lor.lhs.false, label %if.then28, !dbg !2744

lor.lhs.false:                                    ; preds = %land.lhs.true
  %var21 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2745
  %14 = bitcast i32* %var21 to %union.tree_node**, !dbg !2745
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8, !dbg !2745
  %cmp22 = icmp eq %union.tree_node* %15, %11, !dbg !2746
  br i1 %cmp22, label %lor.lhs.false24, label %if.then28, !dbg !2747

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %call25 = call fastcc zeroext i8 @trivially_conflicts_p(%struct.basic_block_def* %bb.0, %union.tree_node* %call7, %union.tree_node* %call15) #7, !dbg !2748
  %tobool27 = icmp eq i8 %call25, 0, !dbg !2748
  br i1 %tobool27, label %if.end75, label %if.then28, !dbg !2749

if.then28:                                        ; preds = %lor.lhs.false24, %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !2708, metadata !DIExpression()), !dbg !2713
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2751
  %call30 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %call6, i64 %i.0) #7, !dbg !2752
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call30, i64 0, i32 0, !dbg !2753
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2753
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp29, %struct.basic_block_def* %16) #7, !dbg !2751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi2, metadata !2709, metadata !DIExpression(DW_OP_deref)), !dbg !2713
  %call31 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi2) #7, !dbg !2754
  %tobool32 = icmp eq i8 %call31, 0, !dbg !2754
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !2756

if.then33:                                        ; preds = %if.then28
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi2, metadata !2709, metadata !DIExpression(DW_OP_deref)), !dbg !2713
  %call34 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi2) #7, !dbg !2757
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call34, metadata !2708, metadata !DIExpression()), !dbg !2713
  br label %if.end35, !dbg !2758

if.end35:                                         ; preds = %if.then28, %if.then33
  %last.0 = phi %union.gimple_statement_d* [ null, %if.then28 ], [ %call34, %if.then33 ], !dbg !2713
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %last.0, metadata !2708, metadata !DIExpression()), !dbg !2713
  %tobool36 = icmp eq %union.gimple_statement_d* %last.0, null, !dbg !2759
  br i1 %tobool36, label %if.end54, label %land.lhs.true37, !dbg !2761

land.lhs.true37:                                  ; preds = %if.end35
  %call38 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* nonnull %last.0) #6, !dbg !2762
  %tobool40 = icmp eq i8 %call38, 0, !dbg !2762
  br i1 %tobool40, label %if.end54, label %if.then41, !dbg !2763

if.then41:                                        ; preds = %land.lhs.true37
  %bf.load43 = load i64, i64* %13, align 8, !dbg !2764
  %bf.cast453 = and i64 %bf.load43, 65535, !dbg !2767
  %cmp46 = icmp eq i64 %bf.cast453, 141, !dbg !2767
  br i1 %cmp46, label %land.lhs.true48, label %if.end54, !dbg !2768

land.lhs.true48:                                  ; preds = %if.then41
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2769
  %17 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2769
  %18 = load %union.gimple_statement_d*, %union.gimple_statement_d** %17, align 8, !dbg !2769
  %cmp50 = icmp eq %union.gimple_statement_d* %18, %last.0, !dbg !2770
  br i1 %cmp50, label %cleanup, label %if.end54, !dbg !2771

if.end54:                                         ; preds = %land.lhs.true37, %if.end35, %if.then41, %land.lhs.true48
  %call55 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call6, i64 %i.0) #7, !dbg !2772
  %call56 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %11, %union.tree_node* %call55) #6, !dbg !2772
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call56, metadata !2707, metadata !DIExpression()), !dbg !2713
  %call57 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %11, %union.gimple_statement_d* %call56) #7, !dbg !2773
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !2704, metadata !DIExpression()), !dbg !2713
  call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call56, %union.tree_node* %call57) #7, !dbg !2774
  %call58 = call fastcc zeroext i8 @gimple_phi_arg_has_location(%union.gimple_statement_d* %call6, i64 %i.0) #7, !dbg !2775
  %tobool59 = icmp eq i8 %call58, 0, !dbg !2775
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !2777

if.then60:                                        ; preds = %if.end54
  %call61 = call fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %call6, i64 %i.0) #7, !dbg !2778
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call56, i32 %call61) #7, !dbg !2779
  br label %if.end62, !dbg !2779

if.end62:                                         ; preds = %if.end54, %if.then60
  br i1 %tobool36, label %if.else, label %land.lhs.true64, !dbg !2780

land.lhs.true64:                                  ; preds = %if.end62
  %call65 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* nonnull %last.0) #6, !dbg !2782
  %tobool67 = icmp eq i8 %call65, 0, !dbg !2782
  br i1 %tobool67, label %if.else, label %if.then68, !dbg !2783

if.then68:                                        ; preds = %land.lhs.true64
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi2, metadata !2709, metadata !DIExpression(DW_OP_deref)), !dbg !2713
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi2, %union.gimple_statement_d* %call56, i32 0) #6, !dbg !2784
  br label %if.end69, !dbg !2784

if.else:                                          ; preds = %land.lhs.true64, %if.end62
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi2, metadata !2709, metadata !DIExpression(DW_OP_deref)), !dbg !2713
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi2, %union.gimple_statement_d* %call56, i32 0) #6, !dbg !2785
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then68
  %conv70 = trunc i64 %i.0 to i32, !dbg !2786
  %call71 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call6, i32 %conv70) #7, !dbg !2786
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call71, %union.tree_node* %call57) #7, !dbg !2786
  br label %cleanup, !dbg !2787

cleanup:                                          ; preds = %land.lhs.true48, %if.end69
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end69 ], [ false, %land.lhs.true48 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2787
  br i1 %cleanup.dest.slot.0, label %if.end75, label %cleanup76

if.end75:                                         ; preds = %lor.lhs.false24, %for.body14, %cleanup
  br label %cleanup76, !dbg !2788

cleanup76:                                        ; preds = %cleanup, %if.end75
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2698, metadata !DIExpression()), !dbg !2725
  br label %for.cond10, !dbg !2790, !llvm.loop !2791

cleanup80.loopexit:                               ; preds = %for.cond10
  br label %cleanup80, !dbg !2793

cleanup80:                                        ; preds = %cleanup80.loopexit, %for.body5
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2716
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2793
  br label %for.cond4, !dbg !2794, !llvm.loop !2795

for.end87:                                        ; preds = %for.cond4
  store i8* null, i8** %aux, align 8, !dbg !2797
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2714
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2798
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2714
  br label %for.cond, !dbg !2714, !llvm.loop !2799

for.end91:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2801
  ret void, !dbg !2801
}

; Function Attrs: nounwind uwtable
define internal fastcc void @eliminate_useless_phis() unnamed_addr #5 !dbg !2802 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2814
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2814
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2815
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2815
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2815
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2815
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2815
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2816
  br label %for.cond, !dbg !2815

for.cond:                                         ; preds = %for.inc, %entry
  %5 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre1, %for.inc ], !dbg !2817
  %.pn = phi %struct.basic_block_def* [ %3, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2818
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2804, metadata !DIExpression()), !dbg !2819
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2817
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2817
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2817
  br i1 %cmp, label %for.end15, label %for.body, !dbg !2815

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2820
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !2820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2820
  br label %for.cond3, !dbg !2821

for.cond3:                                        ; preds = %if.end13, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2822
  %tobool = icmp eq i8 %call, 0, !dbg !2823
  br i1 %tobool, label %for.body4, label %for.inc, !dbg !2824

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2825
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2807, metadata !DIExpression()), !dbg !2826
  %call6 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call5) #7, !dbg !2827
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2806, metadata !DIExpression()), !dbg !2819
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2828
  %7 = bitcast i32* %var to %union.tree_node**, !dbg !2828
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !2828
  %call7 = call zeroext i8 @is_gimple_reg(%union.tree_node* %8) #6, !dbg !2830
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2830
  br i1 %tobool8, label %if.then, label %if.else, !dbg !2831

if.then:                                          ; preds = %for.body4
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !2832
  br label %if.end13, !dbg !2834

if.else:                                          ; preds = %for.body4
  %call9 = call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %call6) #7, !dbg !2835
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2835
  br i1 %tobool10, label %if.else12, label %if.then11, !dbg !2838

if.then11:                                        ; preds = %if.else
  call fastcc void @remove_gimple_phi_args(%union.gimple_statement_d* %call5) #7, !dbg !2839
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !2841
  br label %if.end13, !dbg !2842

if.else12:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2843
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else12, %if.then
  br label %for.cond3, !dbg !2844, !llvm.loop !2845

for.inc:                                          ; preds = %for.cond3
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2817
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2847
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2817
  br label %for.cond, !dbg !2817, !llvm.loop !2848

for.end15:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2850
  ret void, !dbg !2850
}

declare dso_local void @gimple_dump_cfg(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_ssa_form(i8 zeroext %perform_ter, %struct.ssaexpand* %sa) unnamed_addr #5 !dbg !2851 {
entry:
  call void @llvm.dbg.value(metadata i8 %perform_ter, metadata !2855, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata %struct.ssaexpand* %sa, metadata !2856, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2857, metadata !DIExpression()), !dbg !2867
  %call = tail call %struct._var_map* @coalesce_ssa_name() #6, !dbg !2868
  call void @llvm.dbg.value(metadata %struct._var_map* %call, metadata !2858, metadata !DIExpression()), !dbg !2867
  tail call void @partition_view_normal(%struct._var_map* %call, i8 zeroext 0) #6, !dbg !2869
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2870
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2870
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2872

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !2873
  %and = and i32 %1, 8, !dbg !2874
  %tobool1 = icmp eq i32 %and, 0, !dbg !2874
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2875

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2876
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2878
  tail call void @dump_var_map(%struct._IO_FILE* %2, %struct._var_map* %call) #6, !dbg !2879
  br label %if.end, !dbg !2880

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %tobool3 = icmp eq i8 %perform_ter, 0, !dbg !2881
  br i1 %tobool3, label %if.end14, label %if.then4, !dbg !2883

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.bitmap_head_def* @find_replaceable_exprs(%struct._var_map* %call) #6, !dbg !2884
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call5, metadata !2857, metadata !DIExpression()), !dbg !2867
  %tobool6 = icmp ne %struct.bitmap_head_def* %call5, null, !dbg !2886
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2888
  %tobool8 = icmp ne %struct._IO_FILE* %3, null, !dbg !2888
  %or.cond = and i1 %tobool6, %tobool8, !dbg !2889
  br i1 %or.cond, label %land.lhs.true9, label %if.end14, !dbg !2889

land.lhs.true9:                                   ; preds = %if.then4
  %4 = load i32, i32* @dump_flags, align 4, !dbg !2890
  %and10 = and i32 %4, 8, !dbg !2891
  %tobool11 = icmp eq i32 %and10, 0, !dbg !2891
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2892

if.then12:                                        ; preds = %land.lhs.true9
  tail call void @dump_replaceable_exprs(%struct._IO_FILE* nonnull %3, %struct.bitmap_head_def* nonnull %call5) #6, !dbg !2893
  br label %if.end14, !dbg !2893

if.end14:                                         ; preds = %land.lhs.true9, %if.end, %if.then4, %if.then12
  %values.0 = phi %struct.bitmap_head_def* [ null, %if.end ], [ %call5, %if.then12 ], [ %call5, %land.lhs.true9 ], [ %call5, %if.then4 ], !dbg !2867
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %values.0, metadata !2857, metadata !DIExpression()), !dbg !2867
  tail call fastcc void @rewrite_trees(%struct._var_map* %call) #7, !dbg !2894
  %map15 = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 0, !dbg !2895
  store %struct._var_map* %call, %struct._var_map** %map15, align 8, !dbg !2896
  %values16 = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 1, !dbg !2897
  store %struct.bitmap_head_def* %values.0, %struct.bitmap_head_def** %values16, align 8, !dbg !2898
  %call17 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2899
  %partition_has_default_def = getelementptr inbounds %struct.ssaexpand, %struct.ssaexpand* %sa, i64 0, i32 3, !dbg !2900
  store %struct.bitmap_head_def* %call17, %struct.bitmap_head_def** %partition_has_default_def, align 8, !dbg !2901
  call void @llvm.dbg.value(metadata i32 1, metadata !2859, metadata !DIExpression()), !dbg !2867
  br label %for.cond, !dbg !2902

for.cond:                                         ; preds = %for.inc, %if.end14
  %i.0 = phi i32 [ 1, %if.end14 ], [ %inc, %for.inc ], !dbg !2903
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2859, metadata !DIExpression()), !dbg !2867
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2904
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 3, !dbg !2904
  %6 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2904
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %6, i64 0, i32 2, !dbg !2904
  %7 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2904
  %tobool18 = icmp eq %struct.VEC_tree_gc* %7, null, !dbg !2904
  br i1 %tobool18, label %cond.end, label %cond.true, !dbg !2904

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %7, i64 0, i32 0, !dbg !2904
  br label %cond.end, !dbg !2904

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2904
  %call22 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2904
  %cmp = icmp ult i32 %i.0, %call22, !dbg !2905
  br i1 %cmp, label %for.body, label %for.end, !dbg !2906

for.body:                                         ; preds = %cond.end
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2907
  %gimple_df24 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 3, !dbg !2907
  %9 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df24, align 8, !dbg !2907
  %ssa_names25 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %9, i64 0, i32 2, !dbg !2907
  %10 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names25, align 8, !dbg !2907
  %tobool26 = icmp eq %struct.VEC_tree_gc* %10, null, !dbg !2907
  br i1 %tobool26, label %cond.end33, label %cond.true27, !dbg !2907

cond.true27:                                      ; preds = %for.body
  %base31 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %10, i64 0, i32 0, !dbg !2907
  br label %cond.end33, !dbg !2907

cond.end33:                                       ; preds = %for.body, %cond.true27
  %cond34 = phi %struct.VEC_tree_base* [ %base31, %cond.true27 ], [ null, %for.body ], !dbg !2907
  %call35 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond34, i32 %i.0) #7, !dbg !2907
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !2860, metadata !DIExpression()), !dbg !2908
  %tobool36 = icmp eq %union.tree_node* %call35, null, !dbg !2909
  br i1 %tobool36, label %for.inc, label %land.lhs.true37, !dbg !2910

land.lhs.true37:                                  ; preds = %cond.end33
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call35, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2911
  %bf.load = load i64, i64* %11, align 8, !dbg !2911
  %bf.cast1 = and i64 %bf.load, 4294967296, !dbg !2911
  %tobool39 = icmp eq i64 %bf.cast1, 0, !dbg !2911
  br i1 %tobool39, label %for.inc, label %if.then40, !dbg !2912

if.then40:                                        ; preds = %land.lhs.true37
  %call41 = tail call fastcc i32 @var_to_partition(%struct._var_map* %call, %union.tree_node* nonnull %call35) #7, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %call41, metadata !2864, metadata !DIExpression()), !dbg !2914
  %cmp42 = icmp eq i32 %call41, -1, !dbg !2915
  br i1 %cmp42, label %for.inc, label %if.then43, !dbg !2917

if.then43:                                        ; preds = %if.then40
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition_has_default_def, align 8, !dbg !2918
  %call45 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %12, i32 %call41) #6, !dbg !2919
  br label %for.inc, !dbg !2919

for.inc:                                          ; preds = %if.then40, %land.lhs.true37, %cond.end33, %if.then43
  %inc = add i32 %i.0, 1, !dbg !2920
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2859, metadata !DIExpression()), !dbg !2867
  br label %for.cond, !dbg !2921, !llvm.loop !2922

for.end:                                          ; preds = %cond.end
  ret void, !dbg !2924
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2925 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2929, metadata !DIExpression()), !dbg !2930
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2931
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2931
  ret %struct.VEC_int_heap* %0, !dbg !2931
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2932 {
entry:
  call void @llvm.dbg.value(metadata i32 20, metadata !2936, metadata !DIExpression()), !dbg !2937
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 20) #6, !dbg !2938
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !2938
  ret %struct.VEC_tree_heap* %0, !dbg !2938
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_source_location_heap* @VEC_source_location_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2939 {
entry:
  call void @llvm.dbg.value(metadata i32 10, metadata !2943, metadata !DIExpression()), !dbg !2944
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 10, i64 8, i64 4) #6, !dbg !2945
  %0 = bitcast i8* %call to %struct.VEC_source_location_heap*, !dbg !2945
  ret %struct.VEC_source_location_heap* %0, !dbg !2945
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2946 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2951
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2951
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2951

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2951
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2951
  br label %cond.end, !dbg !2951

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2951
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2951
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !2952
  %conv3 = zext i1 %cmp to i8, !dbg !2953
  ret i8 %conv3, !dbg !2954
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2955 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2958
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2958
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2958

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2958
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2958
  br label %cond.end, !dbg !2958

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2958
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !2958
  ret %struct.edge_def* %call2, !dbg !2959
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2960 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2966, metadata !DIExpression()), !dbg !2967
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2968
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2968

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2968
  %0 = load i32, i32* %num, align 8, !dbg !2968
  br label %cond.end, !dbg !2968

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2968
  ret i32 %cond, !dbg !2968
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2969 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !2974
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2974

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2974
  br label %cond.end, !dbg !2974

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !2975
  ret %struct.VEC_edge_gc* %0, !dbg !2976
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2977 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2982, metadata !DIExpression()), !dbg !2983
  br label %land.end, !dbg !2984

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2984
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2984
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2984
  ret %struct.edge_def* %0, !dbg !2984
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2985 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2991, metadata !DIExpression()), !dbg !2992
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2993
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2993

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2993
  %0 = load i32, i32* %num, align 8, !dbg !2993
  br label %cond.end, !dbg !2993

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2993
  ret i32 %cond, !dbg !2993
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_source_location_base_length(%struct.VEC_source_location_base* %vec_) unnamed_addr #0 !dbg !2994 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_base* %vec_, metadata !3000, metadata !DIExpression()), !dbg !3001
  %tobool = icmp eq %struct.VEC_source_location_base* %vec_, null, !dbg !3002
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3002

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 0, !dbg !3002
  %0 = load i32, i32* %num, align 4, !dbg !3002
  br label %cond.end, !dbg !3002

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3002
  ret i32 %cond, !dbg !3002
}

; Function Attrs: nounwind uwtable
define internal fastcc void @eliminate_build(%struct._elim_graph* %g) unnamed_addr #5 !dbg !3003 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3005, metadata !DIExpression()), !dbg !3015
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3016
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3016
  tail call fastcc void @clear_elim_graph(%struct._elim_graph* %g) #7, !dbg !3017
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3018
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3018
  %e = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 7, !dbg !3019
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3019
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i64 0, i32 1, !dbg !3020
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3020
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %3) #6, !dbg !3018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3018
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3018
  %map = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 6, !dbg !3021
  %const_dests = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 8, !dbg !3022
  %const_copies = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 9, !dbg !3022
  %copy_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 10, !dbg !3022
  br label %for.cond, !dbg !3025

for.cond:                                         ; preds = %cleanup, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3009, metadata !DIExpression(DW_OP_deref)), !dbg !3015
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3026
  %tobool = icmp eq i8 %call, 0, !dbg !3027
  br i1 %tobool, label %for.body, label %for.end, !dbg !3028

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3009, metadata !DIExpression(DW_OP_deref)), !dbg !3015
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3029
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !3010, metadata !DIExpression()), !dbg !3021
  %4 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3030
  %call2 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call1) #7, !dbg !3031
  %call3 = call fastcc i32 @var_to_partition(%struct._var_map* %4, %union.tree_node* %call2) #7, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3007, metadata !DIExpression()), !dbg !3015
  %cmp = icmp eq i32 %call3, -1, !dbg !3033
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3035

if.end:                                           ; preds = %for.body
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3036
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i64 0, i32 6, !dbg !3036
  %6 = load i32, i32* %dest_idx, align 4, !dbg !3036
  %call5 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call1, i32 %6) #7, !dbg !3036
  %call6 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call5) #7, !dbg !3036
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3006, metadata !DIExpression()), !dbg !3015
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3037
  %call8 = call fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %call1, %struct.edge_def* %7) #7, !dbg !3038
  call void @llvm.dbg.value(metadata i32 %call8, metadata !3014, metadata !DIExpression()), !dbg !3021
  %call9 = call fastcc zeroext i8 @phi_ssa_name_p(%union.tree_node* %call6) #7, !dbg !3039
  %tobool10 = icmp eq i8 %call9, 0, !dbg !3039
  br i1 %tobool10, label %if.then15, label %lor.lhs.false, !dbg !3040

lor.lhs.false:                                    ; preds = %if.end
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3041
  %bf.load = load i64, i64* %8, align 8, !dbg !3041
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3042
  %cmp11 = icmp eq i64 %bf.cast1, 141, !dbg !3042
  br i1 %cmp11, label %land.lhs.true, label %if.else, !dbg !3043

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3044
  %call13 = call fastcc i32 @var_to_partition(%struct._var_map* %9, %union.tree_node* %call6) #7, !dbg !3045
  %cmp14 = icmp eq i32 %call13, -1, !dbg !3046
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !3047

if.then15:                                        ; preds = %if.end, %land.lhs.true
  %call16 = call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %const_dests, i32 %call3) #7, !dbg !3048
  %call17 = call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull %const_copies, %union.tree_node* %call6) #7, !dbg !3049
  %call18 = call fastcc i32* @VEC_source_location_heap_safe_push(%struct.VEC_source_location_heap** nonnull %copy_locus, i32 %call8) #7, !dbg !3050
  br label %cleanup, !dbg !3051

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3052
  %call20 = call fastcc i32 @var_to_partition(%struct._var_map* %10, %union.tree_node* %call6) #7, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %call20, metadata !3008, metadata !DIExpression()), !dbg !3015
  %cmp21 = icmp eq i32 %call3, %call20, !dbg !3055
  br i1 %cmp21, label %cleanup, label %if.then22, !dbg !3057

if.then22:                                        ; preds = %if.else
  call fastcc void @eliminate_name(%struct._elim_graph* %g, i32 %call3) #7, !dbg !3058
  call fastcc void @eliminate_name(%struct._elim_graph* %g, i32 %call20) #7, !dbg !3060
  call fastcc void @elim_graph_add_edge(%struct._elim_graph* %g, i32 %call3, i32 %call20, i32 %call8) #7, !dbg !3061
  br label %cleanup, !dbg !3062

cleanup:                                          ; preds = %if.else, %if.then15, %if.then22, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3009, metadata !DIExpression(DW_OP_deref)), !dbg !3015
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3063
  br label %for.cond, !dbg !3064, !llvm.loop !3065

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3067
  ret void, !dbg !3067
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @elim_graph_size(%struct._elim_graph* %g) unnamed_addr #0 !dbg !3068 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3072, metadata !DIExpression()), !dbg !3073
  %nodes = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 1, !dbg !3074
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %nodes, align 8, !dbg !3074
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3074
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3074

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3074
  br label %cond.end, !dbg !3074

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3074
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond) #7, !dbg !3074
  ret i32 %call, !dbg !3075
}

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_base_truncate(%struct.VEC_int_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !3076 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i32 0, metadata !3082, metadata !DIExpression()), !dbg !3083
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3084
  br label %cond.true, !dbg !3084

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3084

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !3084

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !3084

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3085
  store i32 0, i32* %num3, align 4, !dbg !3085
  br label %if.end, !dbg !3085

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !3084
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !3087 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !3095, metadata !DIExpression()), !dbg !3096
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3097
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3097

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3097
  %0 = load i32, i32* %num, align 4, !dbg !3097
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3097
  br i1 %cmp, label %if.then, label %if.else, !dbg !3099

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3100
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3100
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3100
  br label %return, !dbg !3100

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3102

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !3104
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3104
  store i32 %storemerge, i32* %ptr, align 4, !dbg !3104
  ret i32 %retval.0, !dbg !3099
}

; Function Attrs: nounwind uwtable
define internal fastcc void @elim_forward(%struct._elim_graph* %g, i32 %T) unnamed_addr #5 !dbg !3105 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3109, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 %T, metadata !3110, metadata !DIExpression()), !dbg !3116
  %visited = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 4, !dbg !3117
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !3117
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %0, i32 %T) #7, !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !3113, metadata !DIExpression()), !dbg !3119
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !3120
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !3123
  br label %for.cond, !dbg !3125

for.cond:                                         ; preds = %for.inc, %entry
  %x_.0 = phi i32 [ 0, %entry ], [ %add34, %for.inc ], !dbg !3126
  call void @llvm.dbg.value(metadata i32 %x_.0, metadata !3113, metadata !DIExpression()), !dbg !3119
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3127
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3127
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3127

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3127
  br label %cond.end, !dbg !3127

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3127
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond) #7, !dbg !3127
  %cmp = icmp ult i32 %x_.0, %call, !dbg !3127
  br i1 %cmp, label %for.body, label %do.end, !dbg !3125

for.body:                                         ; preds = %cond.end
  %2 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3128
  %tobool3 = icmp eq %struct.VEC_int_heap* %2, null, !dbg !3128
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3128

cond.true4:                                       ; preds = %for.body
  %base6 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %2, i64 0, i32 0, !dbg !3128
  br label %cond.end8, !dbg !3128

cond.end8:                                        ; preds = %for.body, %cond.true4
  %cond9 = phi %struct.VEC_int_base* [ %base6, %cond.true4 ], [ null, %for.body ], !dbg !3128
  %call10 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond9, i32 %x_.0) #7, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %call10, metadata !3115, metadata !DIExpression()), !dbg !3119
  %cmp11 = icmp eq i32 %call10, %T, !dbg !3129
  br i1 %cmp11, label %if.end, label %for.inc, !dbg !3128

if.end:                                           ; preds = %cond.end8
  %3 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3128
  %tobool13 = icmp eq %struct.VEC_int_heap* %3, null, !dbg !3128
  br i1 %tobool13, label %cond.end18, label %cond.true14, !dbg !3128

cond.true14:                                      ; preds = %if.end
  %base16 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %3, i64 0, i32 0, !dbg !3128
  br label %cond.end18, !dbg !3128

cond.end18:                                       ; preds = %if.end, %cond.true14
  %cond19 = phi %struct.VEC_int_base* [ %base16, %cond.true14 ], [ null, %if.end ], !dbg !3128
  %add = or i32 %x_.0, 1, !dbg !3128
  %call20 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond19, i32 %add) #7, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %call20, metadata !3111, metadata !DIExpression()), !dbg !3116
  %4 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %edge_locus, align 8, !dbg !3128
  %tobool21 = icmp eq %struct.VEC_source_location_heap* %4, null, !dbg !3128
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !3128

cond.true22:                                      ; preds = %cond.end18
  %base24 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %4, i64 0, i32 0, !dbg !3128
  br label %cond.end26, !dbg !3128

cond.end26:                                       ; preds = %cond.end18, %cond.true22
  %cond27 = phi %struct.VEC_source_location_base* [ %base24, %cond.true22 ], [ null, %cond.end18 ], !dbg !3128
  %div = lshr exact i32 %x_.0, 1, !dbg !3128
  %call28 = tail call fastcc i32 @VEC_source_location_base_index(%struct.VEC_source_location_base* %cond27, i32 %div) #7, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %call28, metadata !3112, metadata !DIExpression()), !dbg !3116
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !3131
  %div30 = lshr i32 %call20, 6, !dbg !3131
  %idxprom = zext i32 %div30 to i64, !dbg !3131
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 3, i64 %idxprom, !dbg !3131
  %6 = load i64, i64* %arrayidx, align 8, !dbg !3131
  %rem = and i32 %call20, 63, !dbg !3131
  %sh_prom = zext i32 %rem to i64, !dbg !3131
  %7 = shl i64 1, %sh_prom, !dbg !3131
  %8 = and i64 %6, %7, !dbg !3131
  %tobool31 = icmp eq i64 %8, 0, !dbg !3131
  br i1 %tobool31, label %if.then32, label %for.inc, !dbg !3134

if.then32:                                        ; preds = %cond.end26
  tail call fastcc void @elim_forward(%struct._elim_graph* %g, i32 %call20) #7, !dbg !3131
  br label %for.inc, !dbg !3131

for.inc:                                          ; preds = %cond.end26, %cond.end8, %if.then32
  %add34 = add i32 %x_.0, 2, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %add34, metadata !3113, metadata !DIExpression()), !dbg !3119
  br label %for.cond, !dbg !3127, !llvm.loop !3135

do.end:                                           ; preds = %cond.end
  %stack = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 5, !dbg !3136
  %call35 = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %stack, i32 %T) #7, !dbg !3136
  ret void, !dbg !3137
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !3138 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3142, metadata !DIExpression()), !dbg !3143
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3144
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3144

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3144
  %0 = load i32, i32* %num, align 4, !dbg !3144
  br label %cond.end, !dbg !3144

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3144
  ret i32 %cond, !dbg !3144
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_pop(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !3145 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3149, metadata !DIExpression()), !dbg !3151
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3152
  %0 = load i32, i32* %num1, align 4, !dbg !3152
  %dec = add i32 %0, -1, !dbg !3152
  store i32 %dec, i32* %num1, align 4, !dbg !3152
  %idxprom = zext i32 %dec to i64, !dbg !3152
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3152
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3152
  call void @llvm.dbg.value(metadata i32 %1, metadata !3150, metadata !DIExpression()), !dbg !3151
  ret i32 %1, !dbg !3152
}

; Function Attrs: nounwind uwtable
define internal fastcc void @elim_create(%struct._elim_graph* %g, i32 %T) unnamed_addr #5 !dbg !3153 {
entry:
  %locus = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3155, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i32 %T, metadata !3156, metadata !DIExpression()), !dbg !3168
  %0 = bitcast i32* %locus to i8*, !dbg !3169
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3169
  %call = tail call fastcc i32 @elim_unvisited_predecessor(%struct._elim_graph* %g, i32 %T) #7, !dbg !3170
  %tobool = icmp eq i32 %call, 0, !dbg !3170
  br i1 %tobool, label %if.else, label %if.then, !dbg !3171

if.then:                                          ; preds = %entry
  %map = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 6, !dbg !3172
  %1 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3172
  %call1 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %1, i32 %T) #7, !dbg !3173
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3160, metadata !DIExpression()), !dbg !3174
  %call2 = tail call fastcc %struct.rtx_def* @get_temp_reg(%union.tree_node* %call1) #7, !dbg !3175
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !3163, metadata !DIExpression()), !dbg !3174
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3176
  %2 = bitcast %union.tree_node** %type to i64**, !dbg !3176
  %3 = load i64*, i64** %2, align 8, !dbg !3176
  %bf.load = load i64, i64* %3, align 8, !dbg !3176
  %bf.lshr = lshr i64 %bf.load, 21, !dbg !3176
  %4 = trunc i64 %bf.lshr to i32, !dbg !3176
  %bf.cast = and i32 %4, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3164, metadata !DIExpression()), !dbg !3174
  %e = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 7, !dbg !3177
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3177
  tail call fastcc void @insert_part_to_rtx_on_edge(%struct.edge_def* %5, %struct.rtx_def* %call2, i32 %T, i32 0) #7, !dbg !3178
  call void @llvm.dbg.value(metadata i32 0, metadata !3165, metadata !DIExpression()), !dbg !3179
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !3180
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !3183
  %visited = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 4, !dbg !3185
  br label %for.cond, !dbg !3188

for.cond:                                         ; preds = %for.inc, %if.then
  %x_.0 = phi i32 [ 0, %if.then ], [ %add40, %for.inc ], !dbg !3189
  call void @llvm.dbg.value(metadata i32 %x_.0, metadata !3165, metadata !DIExpression()), !dbg !3179
  %6 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3190
  %tobool3 = icmp eq %struct.VEC_int_heap* %6, null, !dbg !3190
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !3190

cond.true:                                        ; preds = %for.cond
  %base5 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %6, i64 0, i32 0, !dbg !3190
  br label %cond.end, !dbg !3190

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base5, %cond.true ], [ null, %for.cond ], !dbg !3190
  %call6 = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond) #7, !dbg !3190
  %cmp = icmp ult i32 %x_.0, %call6, !dbg !3190
  br i1 %cmp, label %for.body, label %if.end47.loopexit, !dbg !3188

for.body:                                         ; preds = %cond.end
  %7 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3191
  %tobool8 = icmp eq %struct.VEC_int_heap* %7, null, !dbg !3191
  br i1 %tobool8, label %cond.end13, label %cond.true9, !dbg !3191

cond.true9:                                       ; preds = %for.body
  %base11 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %7, i64 0, i32 0, !dbg !3191
  br label %cond.end13, !dbg !3191

cond.end13:                                       ; preds = %for.body, %cond.true9
  %cond14 = phi %struct.VEC_int_base* [ %base11, %cond.true9 ], [ null, %for.body ], !dbg !3191
  %add = or i32 %x_.0, 1, !dbg !3191
  %call15 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond14, i32 %add) #7, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3167, metadata !DIExpression()), !dbg !3179
  %cmp16 = icmp eq i32 %call15, %T, !dbg !3192
  br i1 %cmp16, label %if.end, label %for.inc, !dbg !3191

if.end:                                           ; preds = %cond.end13
  %8 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3191
  %tobool19 = icmp eq %struct.VEC_int_heap* %8, null, !dbg !3191
  br i1 %tobool19, label %cond.end24, label %cond.true20, !dbg !3191

cond.true20:                                      ; preds = %if.end
  %base22 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %8, i64 0, i32 0, !dbg !3191
  br label %cond.end24, !dbg !3191

cond.end24:                                       ; preds = %if.end, %cond.true20
  %cond25 = phi %struct.VEC_int_base* [ %base22, %cond.true20 ], [ null, %if.end ], !dbg !3191
  %call26 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond25, i32 %x_.0) #7, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %call26, metadata !3157, metadata !DIExpression()), !dbg !3168
  %9 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %edge_locus, align 8, !dbg !3191
  %tobool27 = icmp eq %struct.VEC_source_location_heap* %9, null, !dbg !3191
  br i1 %tobool27, label %cond.end32, label %cond.true28, !dbg !3191

cond.true28:                                      ; preds = %cond.end24
  %base30 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %9, i64 0, i32 0, !dbg !3191
  br label %cond.end32, !dbg !3191

cond.end32:                                       ; preds = %cond.end24, %cond.true28
  %cond33 = phi %struct.VEC_source_location_base* [ %base30, %cond.true28 ], [ null, %cond.end24 ], !dbg !3191
  %div = lshr exact i32 %x_.0, 1, !dbg !3191
  %call34 = tail call fastcc i32 @VEC_source_location_base_index(%struct.VEC_source_location_base* %cond33, i32 %div) #7, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %call34, metadata !3159, metadata !DIExpression()), !dbg !3168
  store i32 %call34, i32* %locus, align 4, !dbg !3191
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !3194
  %div35 = lshr i32 %call26, 6, !dbg !3194
  %idxprom = zext i32 %div35 to i64, !dbg !3194
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i64 0, i32 3, i64 %idxprom, !dbg !3194
  %11 = load i64, i64* %arrayidx, align 8, !dbg !3194
  %rem = and i32 %call26, 63, !dbg !3194
  %sh_prom = zext i32 %rem to i64, !dbg !3194
  %12 = shl i64 1, %sh_prom, !dbg !3194
  %13 = and i64 %11, %12, !dbg !3194
  %tobool36 = icmp eq i64 %13, 0, !dbg !3194
  br i1 %tobool36, label %if.then37, label %for.inc, !dbg !3195

if.then37:                                        ; preds = %cond.end32
  tail call fastcc void @elim_backward(%struct._elim_graph* %g, i32 %call26) #7, !dbg !3196
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %call34, metadata !3159, metadata !DIExpression()), !dbg !3168
  tail call fastcc void @insert_rtx_to_part_on_edge(%struct.edge_def* %14, i32 %call26, %struct.rtx_def* %call2, i32 %bf.cast, i32 %call34) #7, !dbg !3196
  br label %for.inc, !dbg !3196

for.inc:                                          ; preds = %cond.end32, %cond.end13, %if.then37
  %add40 = add i32 %x_.0, 2, !dbg !3190
  call void @llvm.dbg.value(metadata i32 %add40, metadata !3165, metadata !DIExpression()), !dbg !3179
  br label %for.cond, !dbg !3190, !llvm.loop !3198

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %locus, metadata !3159, metadata !DIExpression(DW_OP_deref)), !dbg !3168
  %call41 = call fastcc i32 @elim_graph_remove_succ_edge(%struct._elim_graph* %g, i32 %T, i32* nonnull %locus) #7, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %call41, metadata !3158, metadata !DIExpression()), !dbg !3168
  %cmp42 = icmp eq i32 %call41, -1, !dbg !3201
  br i1 %cmp42, label %if.end47, label %if.then43, !dbg !3203

if.then43:                                        ; preds = %if.else
  %visited44 = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 4, !dbg !3204
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited44, align 8, !dbg !3204
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %15, i32 %T) #7, !dbg !3206
  %e45 = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 7, !dbg !3207
  %16 = load %struct.edge_def*, %struct.edge_def** %e45, align 8, !dbg !3207
  %17 = load i32, i32* %locus, align 4, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %17, metadata !3159, metadata !DIExpression()), !dbg !3168
  call fastcc void @insert_partition_copy_on_edge(%struct.edge_def* %16, i32 %T, i32 %call41, i32 %17) #7, !dbg !3209
  br label %if.end47, !dbg !3210

if.end47.loopexit:                                ; preds = %cond.end
  br label %if.end47, !dbg !3211

if.end47:                                         ; preds = %if.end47.loopexit, %if.else, %if.then43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3211
  ret void, !dbg !3211
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3212 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3217, metadata !DIExpression()), !dbg !3219
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3220
  %0 = load i32, i32* %num1, align 8, !dbg !3220
  %dec = add i32 %0, -1, !dbg !3220
  store i32 %dec, i32* %num1, align 8, !dbg !3220
  %idxprom = zext i32 %dec to i64, !dbg !3220
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3220
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3220
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3218, metadata !DIExpression()), !dbg !3219
  ret %union.tree_node* %1, !dbg !3220
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_source_location_base_pop(%struct.VEC_source_location_base* %vec_) unnamed_addr #0 !dbg !3221 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_base* %vec_, metadata !3226, metadata !DIExpression()), !dbg !3228
  %num1 = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 0, !dbg !3229
  %0 = load i32, i32* %num1, align 4, !dbg !3229
  %dec = add i32 %0, -1, !dbg !3229
  store i32 %dec, i32* %num1, align 4, !dbg !3229
  %idxprom = zext i32 %dec to i64, !dbg !3229
  %arrayidx = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3229
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %1, metadata !3227, metadata !DIExpression()), !dbg !3228
  ret i32 %1, !dbg !3229
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_value_copy_on_edge(%struct.edge_def* %e, i32 %dest, %union.tree_node* %src, i32 %locus) unnamed_addr #5 !dbg !3230 {
entry:
  %unsignedp = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3234, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %dest, metadata !3235, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata %union.tree_node* %src, metadata !3236, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %locus, metadata !3237, metadata !DIExpression()), !dbg !3244
  %0 = bitcast i32* %unsignedp to i8*, !dbg !3245
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3245
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3246
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !3246
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3248

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @dump_flags, align 4, !dbg !3249
  %and = and i32 %2, 8, !dbg !3250
  %tobool1 = icmp eq i32 %and, 0, !dbg !3250
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3251

if.then:                                          ; preds = %land.lhs.true
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3252
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8, !dbg !3252
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 9, !dbg !3254
  %4 = load i32, i32* %index, align 8, !dbg !3254
  %dest3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3255
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest3, align 8, !dbg !3255
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !3256
  %6 = load i32, i32* %index4, align 8, !dbg !3256
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %4, i32 %6, i32 %dest) #6, !dbg !3257
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3258
  tail call void @print_generic_expr(%struct._IO_FILE* %7, %union.tree_node* %src, i32 2) #6, !dbg !3259
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3260
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3261
  br label %if.end, !dbg !3262

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %9 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3263
  %idxprom = sext i32 %dest to i64, !dbg !3263
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %9, i64 %idxprom, !dbg !3263
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3263
  %tobool6 = icmp eq %struct.rtx_def* %10, null, !dbg !3263
  br i1 %tobool6, label %cond.true, label %cond.end, !dbg !3263

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3263
  br label %cond.end, !dbg !3263

cond.end:                                         ; preds = %if.end, %cond.true
  tail call fastcc void @set_location_for_edge(%struct.edge_def* %e) #7, !dbg !3264
  %tobool7 = icmp eq i32 %locus, 0, !dbg !3265
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3267

if.then8:                                         ; preds = %cond.end
  tail call void @set_curr_insn_source_location(i32 %locus) #6, !dbg !3268
  br label %if.end9, !dbg !3268

if.end9:                                          ; preds = %cond.end, %if.then8
  tail call void @start_sequence() #6, !dbg !3269
  %11 = load %struct._var_map*, %struct._var_map** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 0), align 8, !dbg !3270
  %call10 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %11, i32 %dest) #7, !dbg !3270
  %var11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3270
  %12 = bitcast i32* %var11 to %union.tree_node**, !dbg !3270
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8, !dbg !3270
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !3243, metadata !DIExpression()), !dbg !3244
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %src, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3271
  %14 = bitcast %union.tree_node** %type to i64**, !dbg !3271
  %15 = load i64*, i64** %14, align 8, !dbg !3271
  %bf.load = load i64, i64* %15, align 8, !dbg !3271
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3271
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !3271
  br i1 %cmp, label %cond.true12, label %cond.false16, !dbg !3271

cond.true12:                                      ; preds = %if.end9
  %.cast = bitcast i64* %15 to %union.tree_node*, !dbg !3271
  %call15 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !3271
  br label %cond.end22, !dbg !3271

cond.false16:                                     ; preds = %if.end9
  %type19 = bitcast i64* %15 to %struct.tree_type*, !dbg !3271
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i64 0, i32 6, !dbg !3271
  %bf.load20 = load i32, i32* %mode, align 4, !dbg !3271
  %bf.lshr = lshr i32 %bf.load20, 16, !dbg !3271
  %bf.clear21 = and i32 %bf.lshr, 255, !dbg !3271
  br label %cond.end22, !dbg !3271

cond.end22:                                       ; preds = %cond.false16, %cond.true12
  %cond23 = phi i32 [ %call15, %cond.true12 ], [ %bf.clear21, %cond.false16 ], !dbg !3271
  call void @llvm.dbg.value(metadata i32 %cond23, metadata !3241, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !3242, metadata !DIExpression(DW_OP_deref)), !dbg !3244
  %call24 = call i32 @promote_decl_mode(%union.tree_node* %13, i32* nonnull %unsignedp) #6, !dbg !3272
  call void @llvm.dbg.value(metadata i32 %call24, metadata !3240, metadata !DIExpression()), !dbg !3244
  %type26 = getelementptr inbounds %union.tree_node, %union.tree_node* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3273
  %16 = bitcast %union.tree_node** %type26 to i64**, !dbg !3273
  %17 = load i64*, i64** %16, align 8, !dbg !3273
  %bf.load28 = load i64, i64* %17, align 8, !dbg !3273
  %bf.cast302 = and i64 %bf.load28, 65535, !dbg !3273
  %cmp31 = icmp eq i64 %bf.cast302, 14, !dbg !3273
  br i1 %cmp31, label %cond.true32, label %cond.false36, !dbg !3273

cond.true32:                                      ; preds = %cond.end22
  %.cast3 = bitcast i64* %17 to %union.tree_node*, !dbg !3273
  %call35 = call i32 @vector_type_mode(%union.tree_node* %.cast3) #6, !dbg !3273
  br label %cond.end44, !dbg !3273

cond.false36:                                     ; preds = %cond.end22
  %type39 = bitcast i64* %17 to %struct.tree_type*, !dbg !3273
  %mode40 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type39, i64 0, i32 6, !dbg !3273
  %bf.load41 = load i32, i32* %mode40, align 4, !dbg !3273
  %bf.lshr42 = lshr i32 %bf.load41, 16, !dbg !3273
  %bf.clear43 = and i32 %bf.lshr42, 255, !dbg !3273
  br label %cond.end44, !dbg !3273

cond.end44:                                       ; preds = %cond.false36, %cond.true32
  %cond45 = phi i32 [ %call35, %cond.true32 ], [ %bf.clear43, %cond.false36 ], !dbg !3273
  %cmp46 = icmp eq i32 %cond23, %cond45, !dbg !3273
  br i1 %cmp46, label %cond.end49, label %cond.true47, !dbg !3273

cond.true47:                                      ; preds = %cond.end44
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3273
  br label %cond.end49, !dbg !3273

cond.end49:                                       ; preds = %cond.end44, %cond.true47
  %18 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3274
  %arrayidx52 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %18, i64 %idxprom, !dbg !3274
  %19 = bitcast %struct.rtx_def** %arrayidx52 to i32**, !dbg !3274
  %20 = load i32*, i32** %19, align 8, !dbg !3274
  %bf.load53 = load i32, i32* %20, align 8, !dbg !3274
  %bf.lshr54 = lshr i32 %bf.load53, 16, !dbg !3274
  %bf.clear55 = and i32 %bf.lshr54, 255, !dbg !3274
  %cmp56 = icmp eq i32 %call24, %bf.clear55, !dbg !3274
  br i1 %cmp56, label %cond.end59, label %cond.true57, !dbg !3274

cond.true57:                                      ; preds = %cond.end49
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3274
  br label %cond.end59, !dbg !3274

cond.end59:                                       ; preds = %cond.end49, %cond.true57
  %cmp61 = icmp eq i32 %cond23, %call24, !dbg !3275
  br i1 %cmp61, label %if.else, label %if.then62, !dbg !3277

if.then62:                                        ; preds = %cond.end59
  %call63 = call fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %src, %struct.rtx_def* null, i32 %cond23, i32 0) #7, !dbg !3278
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call63, metadata !3239, metadata !DIExpression()), !dbg !3244
  %21 = load i32, i32* %unsignedp, align 4, !dbg !3280
  call void @llvm.dbg.value(metadata i32 %21, metadata !3242, metadata !DIExpression()), !dbg !3244
  %call64 = call %struct.rtx_def* @convert_modes(i32 %call24, i32 %cond23, %struct.rtx_def* %call63, i32 %21) #6, !dbg !3281
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call64, metadata !3239, metadata !DIExpression()), !dbg !3244
  br label %if.end75, !dbg !3282

if.else:                                          ; preds = %cond.end59
  %cmp65 = icmp eq i32 %cond23, 1, !dbg !3283
  %22 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3285
  %arrayidx68 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %22, i64 %idxprom, !dbg !3285
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx68, align 8, !dbg !3285
  br i1 %cmp65, label %if.then66, label %if.else70, !dbg !3286

if.then66:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !3239, metadata !DIExpression()), !dbg !3244
  %call69 = call %struct.rtx_def* @store_expr(%union.tree_node* %src, %struct.rtx_def* %23, i32 0, i8 zeroext 0) #6, !dbg !3287
  br label %if.end75, !dbg !3289

if.else70:                                        ; preds = %if.else
  %call73 = call fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %src, %struct.rtx_def* %23, i32 %cond23, i32 0) #7, !dbg !3290
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call73, metadata !3239, metadata !DIExpression()), !dbg !3244
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %if.else70, %if.then62
  %x.1 = phi %struct.rtx_def* [ %call64, %if.then62 ], [ %23, %if.then66 ], [ %call73, %if.else70 ], !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.1, metadata !3239, metadata !DIExpression()), !dbg !3244
  %24 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3292
  %arrayidx77 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %24, i64 %idxprom, !dbg !3294
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx77, align 8, !dbg !3294
  %cmp78 = icmp eq %struct.rtx_def* %x.1, %25, !dbg !3295
  br i1 %cmp78, label %if.end83, label %if.then79, !dbg !3296

if.then79:                                        ; preds = %if.end75
  %call82 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %25, %struct.rtx_def* %x.1) #6, !dbg !3297
  br label %if.end83, !dbg !3297

if.end83:                                         ; preds = %if.end75, %if.then79
  %call84 = call %struct.rtx_def* @get_insns() #6, !dbg !3298
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call84, metadata !3238, metadata !DIExpression()), !dbg !3244
  call void @end_sequence() #6, !dbg !3299
  call void @insert_insn_on_edge(%struct.rtx_def* %call84, %struct.edge_def* %e) #6, !dbg !3300
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3301
  ret void, !dbg !3301
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_elim_graph(%struct._elim_graph* %g) unnamed_addr #0 !dbg !3302 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3304, metadata !DIExpression()), !dbg !3305
  %nodes = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 1, !dbg !3306
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %nodes, align 8, !dbg !3306
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3306
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3306

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3306
  br label %cond.end, !dbg !3306

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3306
  tail call fastcc void @VEC_int_base_truncate(%struct.VEC_int_base* %cond, i32 0) #7, !dbg !3306
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !3307
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3307
  %tobool2 = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3307
  br i1 %tobool2, label %cond.end7, label %cond.true3, !dbg !3307

cond.true3:                                       ; preds = %cond.end
  %base5 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3307
  br label %cond.end7, !dbg !3307

cond.end7:                                        ; preds = %cond.end, %cond.true3
  %cond8 = phi %struct.VEC_int_base* [ %base5, %cond.true3 ], [ null, %cond.end ], !dbg !3307
  tail call fastcc void @VEC_int_base_truncate(%struct.VEC_int_base* %cond8, i32 0) #7, !dbg !3307
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !3308
  %2 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %edge_locus, align 8, !dbg !3308
  %tobool9 = icmp eq %struct.VEC_source_location_heap* %2, null, !dbg !3308
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !3308

cond.true10:                                      ; preds = %cond.end7
  %base12 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %2, i64 0, i32 0, !dbg !3308
  br label %cond.end14, !dbg !3308

cond.end14:                                       ; preds = %cond.end7, %cond.true10
  %cond15 = phi %struct.VEC_source_location_base* [ %base12, %cond.true10 ], [ null, %cond.end7 ], !dbg !3308
  tail call fastcc void @VEC_source_location_base_truncate(%struct.VEC_source_location_base* %cond15, i32 0) #7, !dbg !3308
  ret void, !dbg !3309
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3310 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3314, metadata !DIExpression()), !dbg !3315
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3316
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3316
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3317
  %conv1 = zext i1 %cmp to i8, !dbg !3318
  ret i8 %conv1, !dbg !3319
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3320 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3324, metadata !DIExpression()), !dbg !3325
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3326
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3326
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3327
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3327
  ret %union.gimple_statement_d* %1, !dbg !3328
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @var_to_partition(%struct._var_map* %map, %union.tree_node* %var) unnamed_addr #0 !dbg !3329 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3334, metadata !DIExpression()), !dbg !3336
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3337
  %bf.load = load i64, i64* %0, align 8, !dbg !3337
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3337
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3337
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3337

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3337
  br label %cond.end, !dbg !3337

cond.end:                                         ; preds = %entry, %cond.true
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !3338
  %1 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !3338
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3338
  %2 = bitcast %union.tree_node** %version to i32*, !dbg !3338
  %3 = load i32, i32* %2, align 8, !dbg !3338
  %idxprom = zext i32 %3 to i64, !dbg !3338
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %1, i64 0, i32 1, i64 %idxprom, i32 0, !dbg !3338
  %4 = load i32, i32* %class_element, align 8, !dbg !3338
  call void @llvm.dbg.value(metadata i32 %4, metadata !3335, metadata !DIExpression()), !dbg !3336
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !3339
  %5 = load i32*, i32** %partition_to_view, align 8, !dbg !3339
  %tobool = icmp eq i32* %5, null, !dbg !3341
  br i1 %tobool, label %if.end, label %if.then, !dbg !3342

if.then:                                          ; preds = %cond.end
  %idxprom2 = sext i32 %4 to i64, !dbg !3343
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2, !dbg !3343
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !3343
  call void @llvm.dbg.value(metadata i32 %6, metadata !3335, metadata !DIExpression()), !dbg !3336
  br label %if.end, !dbg !3344

if.end:                                           ; preds = %cond.end, %if.then
  %part.0 = phi i32 [ %6, %if.then ], [ %4, %cond.end ], !dbg !3336
  call void @llvm.dbg.value(metadata i32 %part.0, metadata !3335, metadata !DIExpression()), !dbg !3336
  ret i32 %part.0, !dbg !3345
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3346 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3353, metadata !DIExpression()), !dbg !3354
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3355
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3355
  ret %union.tree_node* %0, !dbg !3356
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3357 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3361, metadata !DIExpression()), !dbg !3362
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3363
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3363
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3364
  ret %union.tree_node* %1, !dbg !3365
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3366 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3370, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 %i, metadata !3371, metadata !DIExpression()), !dbg !3372
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3373
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3374
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3375
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %gs, %struct.edge_def* %e) unnamed_addr #0 !dbg !3376 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3380, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3381, metadata !DIExpression()), !dbg !3382
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !3383
  %0 = load i32, i32* %dest_idx, align 4, !dbg !3383
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %0) #7, !dbg !3384
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !3385
  %1 = load i32, i32* %locus, align 8, !dbg !3385
  ret i32 %1, !dbg !3386
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @phi_ssa_name_p(%union.tree_node* %t) unnamed_addr #0 !dbg !3387 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3394, metadata !DIExpression()), !dbg !3395
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3396
  %bf.load = load i64, i64* %0, align 8, !dbg !3396
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3398
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3398
  %. = zext i1 %cmp to i8, !dbg !3395
  ret i8 %., !dbg !3399
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !3400 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3406, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3407, metadata !DIExpression()), !dbg !3408
  %call = tail call fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 1) #7, !dbg !3409
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3409
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3409
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3409

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3409
  br label %cond.end, !dbg !3409

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3409
  %call1 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond, i32 %obj_) #7, !dbg !3409
  ret i32* %call1, !dbg !3409
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3410 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3416, metadata !DIExpression()), !dbg !3417
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #7, !dbg !3418
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3418
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3418
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3418

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3418
  br label %cond.end, !dbg !3418

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3418
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !3418
  ret %union.tree_node** %call1, !dbg !3418
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_source_location_heap_safe_push(%struct.VEC_source_location_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !3419 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_heap** %vec_, metadata !3426, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3427, metadata !DIExpression()), !dbg !3428
  %call = tail call fastcc i32 @VEC_source_location_heap_reserve(%struct.VEC_source_location_heap** %vec_, i32 1) #7, !dbg !3429
  %0 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %vec_, align 8, !dbg !3429
  %tobool = icmp eq %struct.VEC_source_location_heap* %0, null, !dbg !3429
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3429

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %0, i64 0, i32 0, !dbg !3429
  br label %cond.end, !dbg !3429

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_source_location_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3429
  %call1 = tail call fastcc i32* @VEC_source_location_base_quick_push(%struct.VEC_source_location_base* %cond, i32 %obj_) #7, !dbg !3429
  ret i32* %call1, !dbg !3429
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @eliminate_name(%struct._elim_graph* %g, i32 %T) unnamed_addr #0 !dbg !3430 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 %T, metadata !3433, metadata !DIExpression()), !dbg !3434
  tail call fastcc void @elim_graph_add_node(%struct._elim_graph* %g, i32 %T) #7, !dbg !3435
  ret void, !dbg !3436
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @elim_graph_add_edge(%struct._elim_graph* %g, i32 %pred, i32 %succ, i32 %locus) unnamed_addr #0 !dbg !3437 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3441, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %pred, metadata !3442, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %succ, metadata !3443, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %locus, metadata !3444, metadata !DIExpression()), !dbg !3445
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !3446
  %call = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %edge_list, i32 %pred) #7, !dbg !3446
  %call2 = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %edge_list, i32 %succ) #7, !dbg !3447
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !3448
  %call3 = tail call fastcc i32* @VEC_source_location_heap_safe_push(%struct.VEC_source_location_heap** nonnull %edge_locus, i32 %locus) #7, !dbg !3448
  ret void, !dbg !3449
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3450 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3455, metadata !DIExpression()), !dbg !3456
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3457
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3457
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3458
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3458
  %2 = load i64, i64* %1, align 8, !dbg !3458
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3459
  store i64 %2, i64* %3, align 8, !dbg !3459
  ret void, !dbg !3460
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_source_location_base_truncate(%struct.VEC_source_location_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !3461 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_base* %vec_, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 0, metadata !3466, metadata !DIExpression()), !dbg !3467
  %tobool = icmp eq %struct.VEC_source_location_base* %vec_, null, !dbg !3468
  br label %cond.true, !dbg !3468

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3468

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !3468

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !3468

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 0, !dbg !3469
  store i32 0, i32* %num3, align 4, !dbg !3469
  br label %if.end, !dbg !3469

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !3468
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3471 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3476, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 %index, metadata !3477, metadata !DIExpression()), !dbg !3478
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3479
  %0 = load i32, i32* %capacity, align 8, !dbg !3479
  %cmp = icmp ult i32 %0, %index, !dbg !3479
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3479

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3479
  br label %cond.end, !dbg !3479

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3480
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3480
  ret %struct.phi_arg_d* %arrayidx, !dbg !3481
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3482 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 1, metadata !3487, metadata !DIExpression()), !dbg !3489
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3490
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3490
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3490

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3490
  br label %cond.end, !dbg !3490

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3490
  %call = tail call fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %cond, i32 1) #7, !dbg !3490
  %tobool1 = icmp eq i32 %call, 0, !dbg !3490
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3488, metadata !DIExpression()), !dbg !3489
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3490

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_int_heap** %vec_ to i8**, !dbg !3491
  %2 = load i8*, i8** %1, align 8, !dbg !3491
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 4) #6, !dbg !3491
  store i8* %call3, i8** %1, align 8, !dbg !3491
  br label %if.end, !dbg !3491

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3490
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3493 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3498, metadata !DIExpression()), !dbg !3500
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3501
  %0 = load i32, i32* %num1, align 4, !dbg !3501
  %inc = add i32 %0, 1, !dbg !3501
  store i32 %inc, i32* %num1, align 4, !dbg !3501
  %idxprom = zext i32 %0 to i64, !dbg !3501
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3501
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3501
  ret i32* %arrayidx, !dbg !3501
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3502 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3506, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i32 1, metadata !3507, metadata !DIExpression()), !dbg !3508
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3509
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3509

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 1, !dbg !3509
  %0 = load i32, i32* %alloc, align 4, !dbg !3509
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3509
  %1 = load i32, i32* %num, align 4, !dbg !3509
  %cmp1 = icmp ne i32 %0, %1, !dbg !3509
  %phitmp = zext i1 %cmp1 to i32, !dbg !3509
  br label %cond.end, !dbg !3509

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3509

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3509
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3510 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3514, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 1, metadata !3515, metadata !DIExpression()), !dbg !3517
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3518
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3518
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3518

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3518
  br label %cond.end, !dbg !3518

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3518
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !3518
  %tobool1 = icmp eq i32 %call, 0, !dbg !3518
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3518
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3516, metadata !DIExpression()), !dbg !3517
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3518

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3519
  %2 = load i8*, i8** %1, align 8, !dbg !3519
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3519
  store i8* %call3, i8** %1, align 8, !dbg !3519
  br label %if.end, !dbg !3519

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3518
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3521 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3525, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3526, metadata !DIExpression()), !dbg !3528
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3529
  %0 = load i32, i32* %num1, align 8, !dbg !3529
  %inc = add i32 %0, 1, !dbg !3529
  store i32 %inc, i32* %num1, align 8, !dbg !3529
  %idxprom = zext i32 %0 to i64, !dbg !3529
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3529
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3527, metadata !DIExpression()), !dbg !3528
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3529
  ret %union.tree_node** %arrayidx, !dbg !3529
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3530 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3534, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i32 1, metadata !3535, metadata !DIExpression()), !dbg !3536
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3537
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3537

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3537
  %0 = load i32, i32* %alloc, align 4, !dbg !3537
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3537
  %1 = load i32, i32* %num, align 8, !dbg !3537
  %cmp1 = icmp ne i32 %0, %1, !dbg !3537
  %phitmp = zext i1 %cmp1 to i32, !dbg !3537
  br label %cond.end, !dbg !3537

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3537

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3537
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_source_location_heap_reserve(%struct.VEC_source_location_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3538 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_heap** %vec_, metadata !3542, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 1, metadata !3543, metadata !DIExpression()), !dbg !3545
  %0 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %vec_, align 8, !dbg !3546
  %tobool = icmp eq %struct.VEC_source_location_heap* %0, null, !dbg !3546
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3546

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %0, i64 0, i32 0, !dbg !3546
  br label %cond.end, !dbg !3546

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_source_location_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3546
  %call = tail call fastcc i32 @VEC_source_location_base_space(%struct.VEC_source_location_base* %cond, i32 1) #7, !dbg !3546
  %tobool1 = icmp eq i32 %call, 0, !dbg !3546
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3546
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3544, metadata !DIExpression()), !dbg !3545
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3546

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_source_location_heap** %vec_ to i8**, !dbg !3547
  %2 = load i8*, i8** %1, align 8, !dbg !3547
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 4) #6, !dbg !3547
  store i8* %call3, i8** %1, align 8, !dbg !3547
  br label %if.end, !dbg !3547

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3546
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_source_location_base_quick_push(%struct.VEC_source_location_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3549 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_base* %vec_, metadata !3553, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3554, metadata !DIExpression()), !dbg !3556
  %num1 = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 0, !dbg !3557
  %0 = load i32, i32* %num1, align 4, !dbg !3557
  %inc = add i32 %0, 1, !dbg !3557
  store i32 %inc, i32* %num1, align 4, !dbg !3557
  %idxprom = zext i32 %0 to i64, !dbg !3557
  %arrayidx = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3557
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3555, metadata !DIExpression()), !dbg !3556
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3557
  ret i32* %arrayidx, !dbg !3557
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_source_location_base_space(%struct.VEC_source_location_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3558 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_base* %vec_, metadata !3562, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 1, metadata !3563, metadata !DIExpression()), !dbg !3564
  %tobool = icmp eq %struct.VEC_source_location_base* %vec_, null, !dbg !3565
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3565

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 1, !dbg !3565
  %0 = load i32, i32* %alloc, align 4, !dbg !3565
  %num = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 0, !dbg !3565
  %1 = load i32, i32* %num, align 4, !dbg !3565
  %cmp1 = icmp ne i32 %0, %1, !dbg !3565
  %phitmp = zext i1 %cmp1 to i32, !dbg !3565
  br label %cond.end, !dbg !3565

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3565

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3565
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @elim_graph_add_node(%struct._elim_graph* %g, i32 %node) unnamed_addr #0 !dbg !3566 {
entry:
  %t = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3568, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i32 %node, metadata !3569, metadata !DIExpression()), !dbg !3572
  %0 = bitcast i32* %t to i8*, !dbg !3573
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3573
  call void @llvm.dbg.value(metadata i32 0, metadata !3570, metadata !DIExpression()), !dbg !3572
  %nodes = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 1, !dbg !3574
  br label %for.cond, !dbg !3577

for.cond:                                         ; preds = %for.inc, %entry
  %x.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3578
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !3570, metadata !DIExpression()), !dbg !3572
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %nodes, align 8, !dbg !3579
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3579
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3579

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3579
  br label %cond.end, !dbg !3579

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3579
  call void @llvm.dbg.value(metadata i32* %t, metadata !3571, metadata !DIExpression(DW_OP_deref)), !dbg !3572
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %x.0, i32* nonnull %t) #7, !dbg !3579
  %tobool2 = icmp eq i32 %call, 0, !dbg !3580
  br i1 %tobool2, label %for.end, label %for.body, !dbg !3580

for.body:                                         ; preds = %cond.end
  %2 = load i32, i32* %t, align 4, !dbg !3581
  call void @llvm.dbg.value(metadata i32 %2, metadata !3571, metadata !DIExpression()), !dbg !3572
  %cmp = icmp eq i32 %2, %node, !dbg !3583
  br i1 %cmp, label %cleanup.loopexit, label %for.inc, !dbg !3584

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %x.0, 1, !dbg !3585
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3570, metadata !DIExpression()), !dbg !3572
  br label %for.cond, !dbg !3586, !llvm.loop !3587

for.end:                                          ; preds = %cond.end
  %call4 = call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %nodes, i32 %node) #7, !dbg !3589
  br label %cleanup, !dbg !3590

cleanup.loopexit:                                 ; preds = %for.body
  br label %cleanup, !dbg !3590

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3590
  ret void, !dbg !3590
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3591 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3595, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3596, metadata !DIExpression()), !dbg !3600
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3601
  %0 = load i8*, i8** %popcount, align 8, !dbg !3601
  %tobool = icmp eq i8* %0, null, !dbg !3602
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3603

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3604
  %.pre2 = zext i32 %.pre to i64, !dbg !3605
  %.pre3 = shl i64 1, %.pre2, !dbg !3605
  %.pre4 = lshr i32 %bitno, 6, !dbg !3606
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3607
  br label %if.end7, !dbg !3603

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3608
  %idxprom = zext i32 %div to i64, !dbg !3608
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3608
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3608
  %rem = and i32 %bitno, 63, !dbg !3608
  %sh_prom = zext i32 %rem to i64, !dbg !3608
  %2 = shl i64 1, %sh_prom, !dbg !3609
  %3 = and i64 %1, %2, !dbg !3609
  %tobool1 = icmp eq i64 %3, 0, !dbg !3609
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3611

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3612
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3613
  %inc = add i8 %4, 1, !dbg !3613
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3613
  br label %if.end7, !dbg !3612

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3607
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3605
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3607
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3614
  %or = or i64 %5, %shl.pre-phi, !dbg !3614
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3614
  ret void, !dbg !3615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3616 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3621, metadata !DIExpression()), !dbg !3622
  br label %land.end, !dbg !3623

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3623
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3623
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3623
  ret i32 %0, !dbg !3623
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_source_location_base_index(%struct.VEC_source_location_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3624 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_base* %vec_, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3629, metadata !DIExpression()), !dbg !3630
  br label %land.end, !dbg !3631

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3631
  %arrayidx = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3631
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3631
  ret i32 %0, !dbg !3631
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @elim_unvisited_predecessor(%struct._elim_graph* %g, i32 %T) unnamed_addr #5 !dbg !3632 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3636, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %T, metadata !3637, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 0, metadata !3640, metadata !DIExpression()), !dbg !3644
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !3645
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !3648
  %visited = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 4, !dbg !3650
  br label %for.cond, !dbg !3653

for.cond:                                         ; preds = %for.inc, %entry
  %x_.0 = phi i32 [ 0, %entry ], [ %add33, %for.inc ], !dbg !3654
  call void @llvm.dbg.value(metadata i32 %x_.0, metadata !3640, metadata !DIExpression()), !dbg !3644
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3655
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3655
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3655

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3655
  br label %cond.end, !dbg !3655

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3655
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond) #7, !dbg !3655
  %cmp = icmp ult i32 %x_.0, %call, !dbg !3655
  br i1 %cmp, label %for.body, label %cleanup, !dbg !3653

for.body:                                         ; preds = %cond.end
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3656
  %tobool3 = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3656
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3656

cond.true4:                                       ; preds = %for.body
  %base6 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3656
  br label %cond.end8, !dbg !3656

cond.end8:                                        ; preds = %for.body, %cond.true4
  %cond9 = phi %struct.VEC_int_base* [ %base6, %cond.true4 ], [ null, %for.body ], !dbg !3656
  %add = or i32 %x_.0, 1, !dbg !3656
  %call10 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond9, i32 %add) #7, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %call10, metadata !3642, metadata !DIExpression()), !dbg !3644
  %cmp11 = icmp eq i32 %call10, %T, !dbg !3657
  br i1 %cmp11, label %if.end, label %for.inc, !dbg !3656

if.end:                                           ; preds = %cond.end8
  %2 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3656
  %tobool13 = icmp eq %struct.VEC_int_heap* %2, null, !dbg !3656
  br i1 %tobool13, label %cond.end18, label %cond.true14, !dbg !3656

cond.true14:                                      ; preds = %if.end
  %base16 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %2, i64 0, i32 0, !dbg !3656
  br label %cond.end18, !dbg !3656

cond.end18:                                       ; preds = %if.end, %cond.true14
  %cond19 = phi %struct.VEC_int_base* [ %base16, %cond.true14 ], [ null, %if.end ], !dbg !3656
  %call20 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond19, i32 %x_.0) #7, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %call20, metadata !3638, metadata !DIExpression()), !dbg !3643
  %3 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %edge_locus, align 8, !dbg !3656
  %tobool21 = icmp eq %struct.VEC_source_location_heap* %3, null, !dbg !3656
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !3656

cond.true22:                                      ; preds = %cond.end18
  %base24 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %3, i64 0, i32 0, !dbg !3656
  br label %cond.end26, !dbg !3656

cond.end26:                                       ; preds = %cond.end18, %cond.true22
  %cond27 = phi %struct.VEC_source_location_base* [ %base24, %cond.true22 ], [ null, %cond.end18 ], !dbg !3656
  %div = lshr exact i32 %x_.0, 1, !dbg !3656
  %call28 = tail call fastcc i32 @VEC_source_location_base_index(%struct.VEC_source_location_base* %cond27, i32 %div) #7, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %call28, metadata !3639, metadata !DIExpression()), !dbg !3643
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !3659
  %div29 = lshr i32 %call20, 6, !dbg !3659
  %idxprom = zext i32 %div29 to i64, !dbg !3659
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i64 0, i32 3, i64 %idxprom, !dbg !3659
  %5 = load i64, i64* %arrayidx, align 8, !dbg !3659
  %rem = and i32 %call20, 63, !dbg !3659
  %sh_prom = zext i32 %rem to i64, !dbg !3659
  %6 = shl i64 1, %sh_prom, !dbg !3659
  %7 = and i64 %5, %6, !dbg !3659
  %tobool30 = icmp eq i64 %7, 0, !dbg !3659
  br i1 %tobool30, label %cleanup, label %for.inc, !dbg !3660

for.inc:                                          ; preds = %cond.end26, %cond.end8
  %add33 = add i32 %x_.0, 2, !dbg !3655
  call void @llvm.dbg.value(metadata i32 %add33, metadata !3640, metadata !DIExpression()), !dbg !3644
  br label %for.cond, !dbg !3655, !llvm.loop !3661

cleanup:                                          ; preds = %cond.end26, %cond.end
  %cleanup.dest.slot.0 = phi i32 [ 1, %cond.end26 ], [ 0, %cond.end ]
  ret i32 %cleanup.dest.slot.0, !dbg !3662
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %i) unnamed_addr #0 !dbg !3663 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3667, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %i, metadata !3668, metadata !DIExpression()), !dbg !3670
  %view_to_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 2, !dbg !3671
  %0 = load i32*, i32** %view_to_partition, align 8, !dbg !3671
  %tobool = icmp eq i32* %0, null, !dbg !3673
  br i1 %tobool, label %if.end, label %if.then, !dbg !3674

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !3675
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !3675
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3675
  call void @llvm.dbg.value(metadata i32 %1, metadata !3668, metadata !DIExpression()), !dbg !3670
  br label %if.end, !dbg !3676

if.end:                                           ; preds = %entry, %if.then
  %i.addr.0 = phi i32 [ %1, %if.then ], [ %i, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.addr.0, metadata !3668, metadata !DIExpression()), !dbg !3670
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !3677
  %2 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !3677
  %idxprom2 = sext i32 %i.addr.0 to i64, !dbg !3677
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %2, i64 0, i32 1, i64 %idxprom2, i32 0, !dbg !3677
  %3 = load i32, i32* %class_element, align 8, !dbg !3677
  call void @llvm.dbg.value(metadata i32 %3, metadata !3668, metadata !DIExpression()), !dbg !3670
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3678
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 3, !dbg !3678
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3678
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 2, !dbg !3678
  %6 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3678
  %tobool4 = icmp eq %struct.VEC_tree_gc* %6, null, !dbg !3678
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3678

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %6, i64 0, i32 0, !dbg !3678
  br label %cond.end, !dbg !3678

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3678
  %call = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %3) #7, !dbg !3678
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3669, metadata !DIExpression()), !dbg !3670
  ret %union.tree_node* %call, !dbg !3679
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @get_temp_reg(%union.tree_node* %name) unnamed_addr #5 !dbg !3680 {
entry:
  %unsignedp = alloca i32, align 4
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !3684, metadata !DIExpression()), !dbg !3690
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3691
  %bf.load = load i64, i64* %0, align 8, !dbg !3691
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3692
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3692
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3691

cond.true:                                        ; preds = %entry
  %var1 = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3693
  %1 = bitcast i32* %var1 to %union.tree_node**, !dbg !3693
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !3693
  br label %cond.end, !dbg !3691

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %union.tree_node* [ %2, %cond.true ], [ %name, %entry ], !dbg !3691
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !3685, metadata !DIExpression()), !dbg !3690
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %cond, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3694
  %3 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !3694
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3686, metadata !DIExpression()), !dbg !3690
  %4 = bitcast i32* %unsignedp to i8*, !dbg !3695
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3695
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !3687, metadata !DIExpression(DW_OP_deref)), !dbg !3690
  %call = call i32 @promote_decl_mode(%union.tree_node* %cond, i32* nonnull %unsignedp) #6, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %call, metadata !3688, metadata !DIExpression()), !dbg !3690
  %call3 = call %struct.rtx_def* @gen_reg_rtx(i32 %call) #6, !dbg !3697
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call3, metadata !3689, metadata !DIExpression()), !dbg !3690
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3698
  %bf.load5 = load i64, i64* %5, align 8, !dbg !3698
  %bf.cast72 = and i64 %bf.load5, 65535, !dbg !3698
  %cmp8 = icmp eq i64 %bf.cast72, 10, !dbg !3698
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !3698

lor.lhs.false:                                    ; preds = %cond.end
  %cmp13 = icmp eq i64 %bf.cast72, 12, !dbg !3698
  br i1 %cmp13, label %if.then, label %if.end, !dbg !3700

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %6 = bitcast %union.tree_node** %type2 to %struct.tree_common**, !dbg !3701
  %7 = load %struct.tree_common*, %struct.tree_common** %6, align 8, !dbg !3701
  %type17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %7, i64 0, i32 2, !dbg !3701
  %8 = bitcast %union.tree_node** %type17 to %struct.tree_type**, !dbg !3701
  %9 = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !3701
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 7, !dbg !3701
  %10 = load i32, i32* %align, align 8, !dbg !3701
  call void @mark_reg_pointer(%struct.rtx_def* %call3, i32 %10) #6, !dbg !3702
  br label %if.end, !dbg !3702

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3703
  ret %struct.rtx_def* %call3, !dbg !3704
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_part_to_rtx_on_edge(%struct.edge_def* %e, %struct.rtx_def* %dest, i32 %src, i32 %locus) unnamed_addr #5 !dbg !3705 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3710, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %src, metadata !3711, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 0, metadata !3712, metadata !DIExpression()), !dbg !3715
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3716
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3716
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3718

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3719
  %and = and i32 %1, 8, !dbg !3720
  %tobool1 = icmp eq i32 %and, 0, !dbg !3720
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3721

if.then:                                          ; preds = %land.lhs.true
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3722
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8, !dbg !3722
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !3724
  %3 = load i32, i32* %index, align 8, !dbg !3724
  %dest3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3725
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest3, align 8, !dbg !3725
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !3726
  %5 = load i32, i32* %index4, align 8, !dbg !3726
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %3, i32 %5) #6, !dbg !3727
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3728
  tail call void @print_simple_rtl(%struct._IO_FILE* %6, %struct.rtx_def* %dest) #6, !dbg !3729
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3730
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %src) #6, !dbg !3731
  br label %if.end, !dbg !3732

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %8 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3733
  %idxprom = sext i32 %src to i64, !dbg !3733
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom, !dbg !3733
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3733
  %tobool6 = icmp eq %struct.rtx_def* %9, null, !dbg !3733
  br i1 %tobool6, label %cond.true, label %cond.end, !dbg !3733

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3733
  br label %cond.end, !dbg !3733

cond.end:                                         ; preds = %if.end, %cond.true
  tail call fastcc void @set_location_for_edge(%struct.edge_def* %e) #7, !dbg !3734
  %10 = load %struct._var_map*, %struct._var_map** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 0), align 8, !dbg !3735
  %call10 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %10, i32 %src) #7, !dbg !3736
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3713, metadata !DIExpression()), !dbg !3715
  %11 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3737
  %arrayidx12 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %11, i64 %idxprom, !dbg !3738
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8, !dbg !3738
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3739
  %13 = bitcast %union.tree_node** %type to i64**, !dbg !3739
  %14 = load i64*, i64** %13, align 8, !dbg !3739
  %bf.load = load i64, i64* %14, align 8, !dbg !3739
  %bf.lshr = lshr i64 %bf.load, 21, !dbg !3739
  %15 = trunc i64 %bf.lshr to i32, !dbg !3739
  %bf.cast = and i32 %15, 1, !dbg !3739
  %call13 = tail call fastcc %struct.rtx_def* @emit_partition_copy(%struct.rtx_def* %dest, %struct.rtx_def* %12, i32 %bf.cast, %union.tree_node* %call10) #7, !dbg !3740
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call13, metadata !3714, metadata !DIExpression()), !dbg !3715
  tail call void @insert_insn_on_edge(%struct.rtx_def* %call13, %struct.edge_def* %e) #6, !dbg !3741
  ret void, !dbg !3742
}

; Function Attrs: nounwind uwtable
define internal fastcc void @elim_backward(%struct._elim_graph* %g, i32 %T) unnamed_addr #5 !dbg !3743 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3745, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %T, metadata !3746, metadata !DIExpression()), !dbg !3752
  %visited = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 4, !dbg !3753
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !3753
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %0, i32 %T) #7, !dbg !3754
  call void @llvm.dbg.value(metadata i32 0, metadata !3749, metadata !DIExpression()), !dbg !3755
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !3756
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !3759
  %e = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 7, !dbg !3761
  br label %for.cond, !dbg !3765

for.cond:                                         ; preds = %for.inc, %entry
  %x_.0 = phi i32 [ 0, %entry ], [ %add34, %for.inc ], !dbg !3766
  call void @llvm.dbg.value(metadata i32 %x_.0, metadata !3749, metadata !DIExpression()), !dbg !3755
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3767
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3767
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3767

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3767
  br label %cond.end, !dbg !3767

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3767
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond) #7, !dbg !3767
  %cmp = icmp ult i32 %x_.0, %call, !dbg !3767
  br i1 %cmp, label %for.body, label %do.end, !dbg !3765

for.body:                                         ; preds = %cond.end
  %2 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3768
  %tobool3 = icmp eq %struct.VEC_int_heap* %2, null, !dbg !3768
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3768

cond.true4:                                       ; preds = %for.body
  %base6 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %2, i64 0, i32 0, !dbg !3768
  br label %cond.end8, !dbg !3768

cond.end8:                                        ; preds = %for.body, %cond.true4
  %cond9 = phi %struct.VEC_int_base* [ %base6, %cond.true4 ], [ null, %for.body ], !dbg !3768
  %add = or i32 %x_.0, 1, !dbg !3768
  %call10 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond9, i32 %add) #7, !dbg !3768
  call void @llvm.dbg.value(metadata i32 %call10, metadata !3751, metadata !DIExpression()), !dbg !3755
  %cmp11 = icmp eq i32 %call10, %T, !dbg !3769
  br i1 %cmp11, label %if.end, label %for.inc, !dbg !3768

if.end:                                           ; preds = %cond.end8
  %3 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3768
  %tobool13 = icmp eq %struct.VEC_int_heap* %3, null, !dbg !3768
  br i1 %tobool13, label %cond.end18, label %cond.true14, !dbg !3768

cond.true14:                                      ; preds = %if.end
  %base16 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %3, i64 0, i32 0, !dbg !3768
  br label %cond.end18, !dbg !3768

cond.end18:                                       ; preds = %if.end, %cond.true14
  %cond19 = phi %struct.VEC_int_base* [ %base16, %cond.true14 ], [ null, %if.end ], !dbg !3768
  %call20 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond19, i32 %x_.0) #7, !dbg !3768
  call void @llvm.dbg.value(metadata i32 %call20, metadata !3747, metadata !DIExpression()), !dbg !3752
  %4 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %edge_locus, align 8, !dbg !3768
  %tobool21 = icmp eq %struct.VEC_source_location_heap* %4, null, !dbg !3768
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !3768

cond.true22:                                      ; preds = %cond.end18
  %base24 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %4, i64 0, i32 0, !dbg !3768
  br label %cond.end26, !dbg !3768

cond.end26:                                       ; preds = %cond.end18, %cond.true22
  %cond27 = phi %struct.VEC_source_location_base* [ %base24, %cond.true22 ], [ null, %cond.end18 ], !dbg !3768
  %div = lshr exact i32 %x_.0, 1, !dbg !3768
  %call28 = tail call fastcc i32 @VEC_source_location_base_index(%struct.VEC_source_location_base* %cond27, i32 %div) #7, !dbg !3768
  call void @llvm.dbg.value(metadata i32 %call28, metadata !3748, metadata !DIExpression()), !dbg !3752
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8, !dbg !3771
  %div30 = lshr i32 %call20, 6, !dbg !3771
  %idxprom = zext i32 %div30 to i64, !dbg !3771
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 3, i64 %idxprom, !dbg !3771
  %6 = load i64, i64* %arrayidx, align 8, !dbg !3771
  %rem = and i32 %call20, 63, !dbg !3771
  %sh_prom = zext i32 %rem to i64, !dbg !3771
  %7 = shl i64 1, %sh_prom, !dbg !3771
  %8 = and i64 %6, %7, !dbg !3771
  %tobool31 = icmp eq i64 %8, 0, !dbg !3771
  br i1 %tobool31, label %if.then32, label %for.inc, !dbg !3772

if.then32:                                        ; preds = %cond.end26
  tail call fastcc void @elim_backward(%struct._elim_graph* %g, i32 %call20) #7, !dbg !3773
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3773
  tail call fastcc void @insert_partition_copy_on_edge(%struct.edge_def* %9, i32 %call20, i32 %T, i32 %call28) #7, !dbg !3773
  br label %for.inc, !dbg !3773

for.inc:                                          ; preds = %cond.end26, %cond.end8, %if.then32
  %add34 = add i32 %x_.0, 2, !dbg !3767
  call void @llvm.dbg.value(metadata i32 %add34, metadata !3749, metadata !DIExpression()), !dbg !3755
  br label %for.cond, !dbg !3767, !llvm.loop !3774

do.end:                                           ; preds = %cond.end
  ret void, !dbg !3775
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_rtx_to_part_on_edge(%struct.edge_def* %e, i32 %dest, %struct.rtx_def* %src, i32 %unsignedsrcp, i32 %locus) unnamed_addr #5 !dbg !3776 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3780, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %dest, metadata !3781, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !3782, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %unsignedsrcp, metadata !3783, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %locus, metadata !3784, metadata !DIExpression()), !dbg !3786
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3787
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3787
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3789

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3790
  %and = and i32 %1, 8, !dbg !3791
  %tobool1 = icmp eq i32 %and, 0, !dbg !3791
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3792

if.then:                                          ; preds = %land.lhs.true
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3793
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8, !dbg !3793
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !3795
  %3 = load i32, i32* %index, align 8, !dbg !3795
  %dest3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3796
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest3, align 8, !dbg !3796
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !3797
  %5 = load i32, i32* %index4, align 8, !dbg !3797
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %3, i32 %5, i32 %dest) #6, !dbg !3798
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3799
  tail call void @print_simple_rtl(%struct._IO_FILE* %6, %struct.rtx_def* %src) #6, !dbg !3800
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3801
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3802
  br label %if.end, !dbg !3803

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %8 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3804
  %idxprom = sext i32 %dest to i64, !dbg !3804
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom, !dbg !3804
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3804
  %tobool6 = icmp eq %struct.rtx_def* %9, null, !dbg !3804
  br i1 %tobool6, label %cond.true, label %cond.end, !dbg !3804

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3804
  br label %cond.end, !dbg !3804

cond.end:                                         ; preds = %if.end, %cond.true
  tail call fastcc void @set_location_for_edge(%struct.edge_def* %e) #7, !dbg !3805
  %tobool7 = icmp eq i32 %locus, 0, !dbg !3806
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3808

if.then8:                                         ; preds = %cond.end
  tail call void @set_curr_insn_source_location(i32 %locus) #6, !dbg !3809
  br label %if.end9, !dbg !3809

if.end9:                                          ; preds = %cond.end, %if.then8
  %10 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3810
  %arrayidx11 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %10, i64 %idxprom, !dbg !3811
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8, !dbg !3811
  %12 = load %struct._var_map*, %struct._var_map** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 0), align 8, !dbg !3812
  %call12 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %12, i32 %dest) #7, !dbg !3813
  %call13 = tail call fastcc %struct.rtx_def* @emit_partition_copy(%struct.rtx_def* %11, %struct.rtx_def* %src, i32 %unsignedsrcp, %union.tree_node* %call12) #7, !dbg !3814
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call13, metadata !3785, metadata !DIExpression()), !dbg !3786
  tail call void @insert_insn_on_edge(%struct.rtx_def* %call13, %struct.edge_def* %e) #6, !dbg !3815
  ret void, !dbg !3816
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @elim_graph_remove_succ_edge(%struct._elim_graph* %g, i32 %node, i32* %locus) unnamed_addr #0 !dbg !3817 {
entry:
  call void @llvm.dbg.value(metadata %struct._elim_graph* %g, metadata !3821, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 %node, metadata !3822, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32* %locus, metadata !3823, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 0, metadata !3825, metadata !DIExpression()), !dbg !3826
  %edge_list = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 2, !dbg !3827
  br label %for.cond, !dbg !3830

for.cond:                                         ; preds = %for.inc, %entry
  %x.0 = phi i32 [ 0, %entry ], [ %add58, %for.inc ], !dbg !3831
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !3825, metadata !DIExpression()), !dbg !3826
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3832
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3832
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3832

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3832
  br label %cond.end, !dbg !3832

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3832
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond) #7, !dbg !3832
  %cmp = icmp ult i32 %x.0, %call, !dbg !3833
  br i1 %cmp, label %for.body, label %for.end, !dbg !3834

for.body:                                         ; preds = %cond.end
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3835
  %tobool3 = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3835
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3835

cond.true4:                                       ; preds = %for.body
  %base6 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3835
  br label %cond.end8, !dbg !3835

cond.end8:                                        ; preds = %for.body, %cond.true4
  %cond9 = phi %struct.VEC_int_base* [ %base6, %cond.true4 ], [ null, %for.body ], !dbg !3835
  %call10 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond9, i32 %x.0) #7, !dbg !3835
  %cmp11 = icmp eq i32 %call10, %node, !dbg !3837
  br i1 %cmp11, label %if.then, label %for.inc, !dbg !3838

if.then:                                          ; preds = %cond.end8
  %x.0.lcssa3 = phi i32 [ %x.0, %cond.end8 ], !dbg !3831
  call void @llvm.dbg.value(metadata i32 %x.0.lcssa3, metadata !3825, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 %x.0.lcssa3, metadata !3825, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 %x.0.lcssa3, metadata !3825, metadata !DIExpression()), !dbg !3826
  %2 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3839
  %tobool13 = icmp eq %struct.VEC_int_heap* %2, null, !dbg !3839
  br i1 %tobool13, label %cond.end18, label %cond.true14, !dbg !3839

cond.true14:                                      ; preds = %if.then
  %base16 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %2, i64 0, i32 0, !dbg !3839
  br label %cond.end18, !dbg !3839

cond.end18:                                       ; preds = %if.then, %cond.true14
  %cond19 = phi %struct.VEC_int_base* [ %base16, %cond.true14 ], [ null, %if.then ], !dbg !3839
  %call20 = tail call fastcc i32 @VEC_int_base_replace(%struct.VEC_int_base* %cond19, i32 %x.0.lcssa3, i32 -1) #7, !dbg !3839
  %3 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3841
  %tobool22 = icmp eq %struct.VEC_int_heap* %3, null, !dbg !3841
  br i1 %tobool22, label %cond.end27, label %cond.true23, !dbg !3841

cond.true23:                                      ; preds = %cond.end18
  %base25 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %3, i64 0, i32 0, !dbg !3841
  br label %cond.end27, !dbg !3841

cond.end27:                                       ; preds = %cond.end18, %cond.true23
  %cond28 = phi %struct.VEC_int_base* [ %base25, %cond.true23 ], [ null, %cond.end18 ], !dbg !3841
  %add = or i32 %x.0.lcssa3, 1, !dbg !3841
  %call29 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond28, i32 %add) #7, !dbg !3841
  call void @llvm.dbg.value(metadata i32 %call29, metadata !3824, metadata !DIExpression()), !dbg !3826
  %4 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %edge_list, align 8, !dbg !3842
  %tobool31 = icmp eq %struct.VEC_int_heap* %4, null, !dbg !3842
  br i1 %tobool31, label %cond.end36, label %cond.true32, !dbg !3842

cond.true32:                                      ; preds = %cond.end27
  %base34 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %4, i64 0, i32 0, !dbg !3842
  br label %cond.end36, !dbg !3842

cond.end36:                                       ; preds = %cond.end27, %cond.true32
  %cond37 = phi %struct.VEC_int_base* [ %base34, %cond.true32 ], [ null, %cond.end27 ], !dbg !3842
  %call39 = tail call fastcc i32 @VEC_int_base_replace(%struct.VEC_int_base* %cond37, i32 %add, i32 -1) #7, !dbg !3842
  %edge_locus = getelementptr inbounds %struct._elim_graph, %struct._elim_graph* %g, i64 0, i32 3, !dbg !3843
  %5 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %edge_locus, align 8, !dbg !3843
  %tobool40 = icmp eq %struct.VEC_source_location_heap* %5, null, !dbg !3843
  br i1 %tobool40, label %cond.end45, label %cond.true41, !dbg !3843

cond.true41:                                      ; preds = %cond.end36
  %base43 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %5, i64 0, i32 0, !dbg !3843
  br label %cond.end45, !dbg !3843

cond.end45:                                       ; preds = %cond.end36, %cond.true41
  %cond46 = phi %struct.VEC_source_location_base* [ %base43, %cond.true41 ], [ null, %cond.end36 ], !dbg !3843
  %div = lshr exact i32 %x.0.lcssa3, 1, !dbg !3843
  %call47 = tail call fastcc i32 @VEC_source_location_base_index(%struct.VEC_source_location_base* %cond46, i32 %div) #7, !dbg !3843
  store i32 %call47, i32* %locus, align 4, !dbg !3844
  %6 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %edge_locus, align 8, !dbg !3845
  %tobool49 = icmp eq %struct.VEC_source_location_heap* %6, null, !dbg !3845
  br i1 %tobool49, label %cond.end54, label %cond.true50, !dbg !3845

cond.true50:                                      ; preds = %cond.end45
  %base52 = getelementptr inbounds %struct.VEC_source_location_heap, %struct.VEC_source_location_heap* %6, i64 0, i32 0, !dbg !3845
  br label %cond.end54, !dbg !3845

cond.end54:                                       ; preds = %cond.end45, %cond.true50
  %cond55 = phi %struct.VEC_source_location_base* [ %base52, %cond.true50 ], [ null, %cond.end45 ], !dbg !3845
  %call57 = tail call fastcc i32 @VEC_source_location_base_replace(%struct.VEC_source_location_base* %cond55, i32 %div, i32 0) #7, !dbg !3845
  br label %cleanup, !dbg !3846

for.inc:                                          ; preds = %cond.end8
  %add58 = add i32 %x.0, 2, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %add58, metadata !3825, metadata !DIExpression()), !dbg !3826
  br label %for.cond, !dbg !3848, !llvm.loop !3849

for.end:                                          ; preds = %cond.end
  store i32 0, i32* %locus, align 4, !dbg !3851
  br label %cleanup, !dbg !3852

cleanup:                                          ; preds = %for.end, %cond.end54
  %retval.0 = phi i32 [ %call29, %cond.end54 ], [ -1, %for.end ], !dbg !3826
  ret i32 %retval.0, !dbg !3853
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_partition_copy_on_edge(%struct.edge_def* %e, i32 %dest, i32 %src, i32 %locus) unnamed_addr #5 !dbg !3854 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3858, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 %dest, metadata !3859, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 %src, metadata !3860, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 %locus, metadata !3861, metadata !DIExpression()), !dbg !3864
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3865
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3865
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3867

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3868
  %and = and i32 %1, 8, !dbg !3869
  %tobool1 = icmp eq i32 %and, 0, !dbg !3869
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3870

if.then:                                          ; preds = %land.lhs.true
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3871
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8, !dbg !3871
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !3873
  %3 = load i32, i32* %index, align 8, !dbg !3873
  %dest3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3874
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest3, align 8, !dbg !3874
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !3875
  %5 = load i32, i32* %index4, align 8, !dbg !3875
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i32 %3, i32 %5, i32 %dest, i32 %src) #6, !dbg !3876
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3877
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3878
  br label %if.end, !dbg !3879

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %7 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3880
  %idxprom = sext i32 %dest to i64, !dbg !3880
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %7, i64 %idxprom, !dbg !3880
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3880
  %tobool6 = icmp eq %struct.rtx_def* %8, null, !dbg !3880
  br i1 %tobool6, label %cond.true, label %cond.end, !dbg !3880

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3880
  %.pre = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3881
  br label %cond.end, !dbg !3880

cond.end:                                         ; preds = %if.end, %cond.true
  %9 = phi %struct.rtx_def** [ %7, %if.end ], [ %.pre, %cond.true ], !dbg !3881
  %idxprom7 = sext i32 %src to i64, !dbg !3881
  %arrayidx8 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %9, i64 %idxprom7, !dbg !3881
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx8, align 8, !dbg !3881
  %tobool9 = icmp eq %struct.rtx_def* %10, null, !dbg !3881
  br i1 %tobool9, label %cond.true10, label %cond.end12, !dbg !3881

cond.true10:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3881
  br label %cond.end12, !dbg !3881

cond.end12:                                       ; preds = %cond.end, %cond.true10
  tail call fastcc void @set_location_for_edge(%struct.edge_def* %e) #7, !dbg !3882
  %tobool14 = icmp eq i32 %locus, 0, !dbg !3883
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3885

if.then15:                                        ; preds = %cond.end12
  tail call void @set_curr_insn_source_location(i32 %locus) #6, !dbg !3886
  br label %if.end16, !dbg !3886

if.end16:                                         ; preds = %cond.end12, %if.then15
  %11 = load %struct._var_map*, %struct._var_map** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 0), align 8, !dbg !3887
  %call17 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %11, i32 %src) #7, !dbg !3888
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !3862, metadata !DIExpression()), !dbg !3864
  %12 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.ssaexpand, %struct.ssaexpand* @SA, i64 0, i32 2), align 8, !dbg !3889
  %arrayidx19 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %12, i64 %idxprom, !dbg !3890
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx19, align 8, !dbg !3890
  %arrayidx21 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %12, i64 %idxprom7, !dbg !3891
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx21, align 8, !dbg !3891
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3892
  %15 = bitcast %union.tree_node** %type to i64**, !dbg !3892
  %16 = load i64*, i64** %15, align 8, !dbg !3892
  %bf.load = load i64, i64* %16, align 8, !dbg !3892
  %bf.lshr = lshr i64 %bf.load, 21, !dbg !3892
  %17 = trunc i64 %bf.lshr to i32, !dbg !3892
  %bf.cast = and i32 %17, 1, !dbg !3892
  %call22 = tail call fastcc %struct.rtx_def* @emit_partition_copy(%struct.rtx_def* %13, %struct.rtx_def* %14, i32 %bf.cast, %union.tree_node* %call17) #7, !dbg !3893
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call22, metadata !3863, metadata !DIExpression()), !dbg !3864
  tail call void @insert_insn_on_edge(%struct.rtx_def* %call22, %struct.edge_def* %e) #6, !dbg !3894
  ret void, !dbg !3895
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3896 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3900, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3901, metadata !DIExpression()), !dbg !3902
  br label %land.end, !dbg !3903

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3903
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3903
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3903
  ret %union.tree_node* %0, !dbg !3903
}

declare dso_local i32 @promote_decl_mode(%union.tree_node*, i32*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_reg_rtx(i32) local_unnamed_addr #2

declare dso_local void @mark_reg_pointer(%struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_simple_rtl(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_location_for_edge(%struct.edge_def* %e) unnamed_addr #5 !dbg !3904 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3908, metadata !DIExpression()), !dbg !3918
  %goto_locus = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 5, !dbg !3919
  %0 = load i32, i32* %goto_locus, align 8, !dbg !3919
  %tobool = icmp eq i32 %0, 0, !dbg !3920
  br i1 %tobool, label %if.else, label %if.then, !dbg !3921

if.then:                                          ; preds = %entry
  tail call void @set_curr_insn_source_location(i32 %0) #6, !dbg !3922
  %goto_block = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 4, !dbg !3924
  %1 = load %union.tree_node*, %union.tree_node** %goto_block, align 8, !dbg !3924
  tail call void @set_curr_insn_block(%union.tree_node* %1) #6, !dbg !3925
  ret void, !dbg !3926

if.else:                                          ; preds = %entry
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3927
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3927
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !3909, metadata !DIExpression()), !dbg !3928
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3929
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3929
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3930
  br label %do.body, !dbg !3931

do.body:                                          ; preds = %do.cond, %if.else
  %bb.0 = phi %struct.basic_block_def* [ %2, %if.else ], [ %bb.1, %do.cond ], !dbg !3928
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3909, metadata !DIExpression()), !dbg !3928
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3932
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3932
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3932
  br label %for.cond, !dbg !3933

for.cond:                                         ; preds = %for.inc, %do.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3912, metadata !DIExpression(DW_OP_deref)), !dbg !3928
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3934
  %tobool2 = icmp eq i8 %call, 0, !dbg !3935
  br i1 %tobool2, label %for.body, label %for.end, !dbg !3936

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3912, metadata !DIExpression(DW_OP_deref)), !dbg !3928
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3937
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !3913, metadata !DIExpression()), !dbg !3938
  %call4 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call3) #7, !dbg !3939
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3939
  br i1 %tobool5, label %if.end, label %cleanup, !dbg !3941

if.end:                                           ; preds = %for.body
  %call7 = call fastcc zeroext i8 @gimple_has_location(%union.gimple_statement_d* %call3) #7, !dbg !3942
  %tobool8 = icmp eq i8 %call7, 0, !dbg !3942
  br i1 %tobool8, label %lor.lhs.false, label %if.then11, !dbg !3944

lor.lhs.false:                                    ; preds = %if.end
  %call9 = call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call3) #7, !dbg !3945
  %tobool10 = icmp eq %union.tree_node* %call9, null, !dbg !3945
  br i1 %tobool10, label %cleanup, label %if.then11, !dbg !3946

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  %call12 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call3) #7, !dbg !3947
  call void @set_curr_insn_source_location(i32 %call12) #6, !dbg !3949
  %call13 = call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call3) #7, !dbg !3950
  call void @set_curr_insn_block(%union.tree_node* %call13) #6, !dbg !3951
  br label %cleanup, !dbg !3952

cleanup:                                          ; preds = %lor.lhs.false, %for.body, %if.then11
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then11 ], [ 6, %for.body ], [ 0, %lor.lhs.false ]
  switch i32 %cleanup.dest.slot.0, label %cleanup24.loopexit [
    i32 0, label %for.inc
    i32 6, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup, %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3912, metadata !DIExpression(DW_OP_deref)), !dbg !3928
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3953
  br label %for.cond, !dbg !3954, !llvm.loop !3955

for.end:                                          ; preds = %for.cond
  %call15 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb.0) #7, !dbg !3957
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3957
  br i1 %tobool16, label %if.else19, label %if.then17, !dbg !3959

if.then17:                                        ; preds = %for.end
  %call18 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb.0) #7, !dbg !3960
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call18, metadata !3909, metadata !DIExpression()), !dbg !3928
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3961
  br label %do.cond, !dbg !3962

if.else19:                                        ; preds = %for.end
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3963
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !3909, metadata !DIExpression()), !dbg !3928
  br label %do.cond

do.cond:                                          ; preds = %if.then17, %if.else19
  %6 = phi %struct.basic_block_def* [ %.pre, %if.then17 ], [ %5, %if.else19 ], !dbg !3961
  %bb.1 = phi %struct.basic_block_def* [ %call18, %if.then17 ], [ %5, %if.else19 ], !dbg !3964
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3909, metadata !DIExpression()), !dbg !3928
  %cmp = icmp eq %struct.basic_block_def* %bb.1, %6, !dbg !3965
  br i1 %cmp, label %cleanup24.loopexit1, label %do.body, !dbg !3966, !llvm.loop !3967

cleanup24.loopexit:                               ; preds = %cleanup
  br label %cleanup24, !dbg !3969

cleanup24.loopexit1:                              ; preds = %do.cond
  br label %cleanup24, !dbg !3969

cleanup24:                                        ; preds = %cleanup24.loopexit1, %cleanup24.loopexit
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3969
  ret void
}

declare dso_local void @set_curr_insn_source_location(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def* @emit_partition_copy(%struct.rtx_def* %dest, %struct.rtx_def* %src, i32 %unsignedsrcp, %union.tree_node* %sizeexp) unnamed_addr #0 !dbg !3970 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3974, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !3975, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 %unsignedsrcp, metadata !3976, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata %union.tree_node* %sizeexp, metadata !3977, metadata !DIExpression()), !dbg !3979
  tail call void @start_sequence() #6, !dbg !3980
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src, i64 0, i32 0, !dbg !3981
  %bf.load = load i32, i32* %0, align 8, !dbg !3981
  %bf.clear = and i32 %bf.load, 16711680, !dbg !3981
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3983
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3984

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3985
  %bf.load4 = load i32, i32* %1, align 8, !dbg !3985
  %bf.lshr21 = xor i32 %bf.load, %bf.load4, !dbg !3986
  %2 = and i32 %bf.lshr21, 16711680, !dbg !3986
  %cmp7 = icmp eq i32 %2, 0, !dbg !3986
  br i1 %cmp7, label %if.end, label %if.then, !dbg !3987

if.then:                                          ; preds = %land.lhs.true
  %bf.lshr9 = lshr i32 %bf.load4, 16, !dbg !3988
  %bf.clear10 = and i32 %bf.lshr9, 255, !dbg !3988
  %call = tail call %struct.rtx_def* @convert_to_mode(i32 %bf.clear10, %struct.rtx_def* %src, i32 %unsignedsrcp) #6, !dbg !3989
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3975, metadata !DIExpression()), !dbg !3979
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !3990
  %bf.load11.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3992
  br label %if.end, !dbg !3993

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %bf.load11 = phi i32 [ %bf.load11.pre, %if.then ], [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ], !dbg !3992
  %src.addr.0 = phi %struct.rtx_def* [ %call, %if.then ], [ %src, %land.lhs.true ], [ %src, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src.addr.0, metadata !3975, metadata !DIExpression()), !dbg !3979
  %bf.clear13 = and i32 %bf.load11, 16711680, !dbg !3992
  %cmp14 = icmp eq i32 %bf.clear13, 65536, !dbg !3994
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !3995

if.then15:                                        ; preds = %if.end
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3996
  %bf.load16 = load i32, i32* %3, align 8, !dbg !3996
  %bf.clear18 = and i32 %bf.load16, 16711680, !dbg !3996
  %cmp19 = icmp eq i32 %bf.clear18, 65536, !dbg !3996
  br i1 %cmp19, label %cond.end, label %cond.true, !dbg !3996

cond.true:                                        ; preds = %if.then15
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3996
  br label %cond.end, !dbg !3996

cond.end:                                         ; preds = %if.then15, %cond.true
  %call20 = tail call %struct.rtx_def* @expr_size(%union.tree_node* %sizeexp) #6, !dbg !3998
  %call21 = tail call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %dest, %struct.rtx_def* %src.addr.0, %struct.rtx_def* %call20, i32 0) #6, !dbg !3999
  br label %if.end23, !dbg !4000

if.else:                                          ; preds = %if.end
  %call22 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %dest, %struct.rtx_def* %src.addr.0) #6, !dbg !4001
  br label %if.end23

if.end23:                                         ; preds = %if.else, %cond.end
  %call24 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4002
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call24, metadata !3978, metadata !DIExpression()), !dbg !3979
  tail call void @end_sequence() #6, !dbg !4003
  ret %struct.rtx_def* %call24, !dbg !4004
}

declare dso_local void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) local_unnamed_addr #2

declare dso_local void @set_curr_insn_block(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4005 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4009, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4010, metadata !DIExpression()), !dbg !4013
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4011, metadata !DIExpression()), !dbg !4012
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !4015
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4016
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4017
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4018
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4019
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4020
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4021
  ret void, !dbg !4022
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4023 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4027, metadata !DIExpression()), !dbg !4028
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4029
  %cmp = icmp eq i32 %call, 2, !dbg !4030
  %conv1 = zext i1 %cmp to i8, !dbg !4029
  ret i8 %conv1, !dbg !4031
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4032 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4034, metadata !DIExpression()), !dbg !4035
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %g) #7, !dbg !4036
  %cmp = icmp ne i32 %call, 0, !dbg !4037
  %conv1 = zext i1 %cmp to i8, !dbg !4036
  ret i8 %conv1, !dbg !4038
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4039 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4041, metadata !DIExpression()), !dbg !4042
  %block = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 5, !dbg !4043
  %0 = load %union.tree_node*, %union.tree_node** %block, align 8, !dbg !4043
  ret %union.tree_node* %0, !dbg !4044
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4045 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4049, metadata !DIExpression()), !dbg !4050
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !4051
  %0 = load i32, i32* %location, align 8, !dbg !4051
  ret i32 %0, !dbg !4052
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4053 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4055, metadata !DIExpression()), !dbg !4056
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4057
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4057
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !4058
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !4058
  %2 = load i64, i64* %1, align 8, !dbg !4058
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4059
  store i64 %2, i64* %3, align 8, !dbg !4059
  ret void, !dbg !4060
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4061 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4065, metadata !DIExpression()), !dbg !4066
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !4067
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !4068
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4068
  ret %struct.basic_block_def* %0, !dbg !4069
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4070 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4072, metadata !DIExpression()), !dbg !4073
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4074
  %0 = load i32, i32* %flags, align 8, !dbg !4074
  %and = and i32 %0, 512, !dbg !4075
  %tobool = icmp eq i32 %and, 0, !dbg !4075
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4076

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4077
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4077
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4078
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4079

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4080
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4080
  br label %cond.end, !dbg !4079

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4079
  ret %struct.gimple_seq_d* %cond, !dbg !4081
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4082 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4086, metadata !DIExpression()), !dbg !4087
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4088
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4088

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !4089
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !4089
  br label %cond.end, !dbg !4088

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4088
  ret %struct.gimple_seq_node_d* %cond, !dbg !4090
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4091 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4095, metadata !DIExpression()), !dbg !4096
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4097
  %bf.load = load i32, i32* %0, align 8, !dbg !4097
  %bf.clear = and i32 %bf.load, 255, !dbg !4097
  ret i32 %bf.clear, !dbg !4098
}

declare dso_local void @start_sequence() local_unnamed_addr #2

declare dso_local %struct.rtx_def* @convert_to_mode(i32, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_block_move(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @expr_size(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #2

declare dso_local void @end_sequence() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_replace(%struct.VEC_int_base* %vec_, i32 %ix_, i32 %obj_) unnamed_addr #0 !dbg !4099 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4103, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 -1, metadata !4105, metadata !DIExpression()), !dbg !4107
  %idxprom = zext i32 %ix_ to i64, !dbg !4108
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4108
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4108
  call void @llvm.dbg.value(metadata i32 %0, metadata !4106, metadata !DIExpression()), !dbg !4107
  store i32 -1, i32* %arrayidx, align 4, !dbg !4108
  ret i32 %0, !dbg !4108
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_source_location_base_replace(%struct.VEC_source_location_base* %vec_, i32 %ix_, i32 %obj_) unnamed_addr #0 !dbg !4109 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_base* %vec_, metadata !4113, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4114, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i32 0, metadata !4115, metadata !DIExpression()), !dbg !4117
  %idxprom = zext i32 %ix_ to i64, !dbg !4118
  %arrayidx = getelementptr inbounds %struct.VEC_source_location_base, %struct.VEC_source_location_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4118
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4118
  call void @llvm.dbg.value(metadata i32 %0, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i32 0, i32* %arrayidx, align 4, !dbg !4118
  ret i32 %0, !dbg !4118
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode, i32 %modifier) unnamed_addr #0 !dbg !4119 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !4123, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !4124, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4125, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32 0, metadata !4126, metadata !DIExpression()), !dbg !4127
  %call = tail call %struct.rtx_def* @expand_expr_real(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode, i32 0, %struct.rtx_def** null) #6, !dbg !4128
  ret %struct.rtx_def* %call, !dbg !4129
}

declare dso_local %struct.rtx_def* @convert_modes(i32, i32, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @store_expr(%union.tree_node*, %struct.rtx_def*, i32, i8 zeroext) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @expand_expr_real(%union.tree_node*, %struct.rtx_def*, i32, i32, %struct.rtx_def**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !4130 {
entry:
  unreachable, !dbg !4136
}

declare dso_local void @gimple_set_bb(%union.gimple_statement_d*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4137 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4139, metadata !DIExpression()), !dbg !4140
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4141
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4141

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4142
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4142
  br label %cond.end, !dbg !4141

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4141
  ret %struct.gimple_seq_node_d* %cond, !dbg !4143
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4144 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4148, metadata !DIExpression()), !dbg !4149
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4150
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4150
  ret %struct.basic_block_def* %0, !dbg !4151
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !4152 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4156, metadata !DIExpression()), !dbg !4157
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4158
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4158
  br i1 %tobool, label %if.end, label %if.then, !dbg !4160

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !4160
  tail call void @free(i8* nonnull %1) #6, !dbg !4158
  br label %if.end, !dbg !4158

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !4160
  ret void, !dbg !4160
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !4161 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !4165, metadata !DIExpression()), !dbg !4166
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4167
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !4167
  br i1 %tobool, label %if.end, label %if.then, !dbg !4169

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !4169
  tail call void @free(i8* nonnull %1) #6, !dbg !4167
  br label %if.end, !dbg !4167

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4169
  ret void, !dbg !4169
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_source_location_heap_free(%struct.VEC_source_location_heap** %vec_) unnamed_addr #0 !dbg !4170 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_source_location_heap** %vec_, metadata !4174, metadata !DIExpression()), !dbg !4175
  %0 = load %struct.VEC_source_location_heap*, %struct.VEC_source_location_heap** %vec_, align 8, !dbg !4176
  %tobool = icmp eq %struct.VEC_source_location_heap* %0, null, !dbg !4176
  br i1 %tobool, label %if.end, label %if.then, !dbg !4178

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_source_location_heap* %0 to i8*, !dbg !4178
  tail call void @free(i8* nonnull %1) #6, !dbg !4176
  br label %if.end, !dbg !4176

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_source_location_heap* null, %struct.VEC_source_location_heap** %vec_, align 8, !dbg !4178
  ret void, !dbg !4178
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4179 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4183, metadata !DIExpression()), !dbg !4184
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !4185
  %0 = load i32, i32* %nargs, align 4, !dbg !4185
  ret i32 %0, !dbg !4186
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !4187 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4191, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %index, metadata !4192, metadata !DIExpression()), !dbg !4194
  %conv = trunc i64 %index to i32, !dbg !4195
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !4196
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !4193, metadata !DIExpression()), !dbg !4194
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4197
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !4198
  ret %union.tree_node* %call1, !dbg !4199
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !4200 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %i, metadata !4205, metadata !DIExpression()), !dbg !4206
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !4207
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !4207
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4207
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4207
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4207

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !4207
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !4207
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !4207
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !4207
  br label %cond.end, !dbg !4207

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4207
  %conv = trunc i64 %i to i32, !dbg !4207
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #7, !dbg !4207
  ret %struct.edge_def* %call3, !dbg !4208
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @trivially_conflicts_p(%struct.basic_block_def* %bb, %union.tree_node* %result, %union.tree_node* %arg) unnamed_addr #5 !dbg !4209 {
entry:
  %imm_iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4213, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata %union.tree_node* %result, metadata !4214, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !4215, metadata !DIExpression()), !dbg !4230
  %0 = bitcast %struct.immediate_use_iterator_d* %imm_iter to i8*, !dbg !4231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !4231
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %arg, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4232
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4232
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !4232
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !4225, metadata !DIExpression()), !dbg !4230
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %2) #7, !dbg !4233
  %cmp = icmp eq %struct.basic_block_def* %call, %bb, !dbg !4235
  br i1 %cmp, label %if.end, label %cleanup25, !dbg !4236

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !4217, metadata !DIExpression(DW_OP_deref)), !dbg !4230
  %call1 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter, %union.tree_node* %result) #7, !dbg !4237
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call1, metadata !4216, metadata !DIExpression()), !dbg !4230
  br label %for.cond, !dbg !4237

for.cond:                                         ; preds = %for.inc, %if.end
  %use.0 = phi %struct.ssa_use_operand_d* [ %call1, %if.end ], [ %call24, %for.inc ], !dbg !4238
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use.0, metadata !4216, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !4217, metadata !DIExpression(DW_OP_deref)), !dbg !4230
  %call2 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !4239
  %tobool = icmp eq i8 %call2, 0, !dbg !4239
  br i1 %tobool, label %for.body, label %cleanup25.loopexit, !dbg !4237

for.body:                                         ; preds = %for.cond
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use.0, i64 0, i32 2, i32 0, !dbg !4240
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4240
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !4226, metadata !DIExpression()), !dbg !4241
  %call3 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %3) #7, !dbg !4242
  %tobool4 = icmp eq i8 %call3, 0, !dbg !4242
  br i1 %tobool4, label %if.end6, label %cleanup, !dbg !4244

if.end6:                                          ; preds = %for.body
  %call7 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %3) #7, !dbg !4245
  %cmp8 = icmp eq %struct.basic_block_def* %call7, %bb, !dbg !4247
  br i1 %cmp8, label %if.end10, label %cleanup, !dbg !4248

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %3) #7, !dbg !4249
  %cmp12 = icmp eq i32 %call11, 16, !dbg !4251
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !4252

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %2) #7, !dbg !4253
  %cmp16 = icmp eq i32 %call15, 16, !dbg !4255
  br i1 %cmp16, label %cleanup, label %if.end18, !dbg !4256

if.end18:                                         ; preds = %if.end14
  call fastcc void @maybe_renumber_stmts_bb(%struct.basic_block_def* %bb) #7, !dbg !4257
  %call19 = call fastcc i32 @gimple_uid(%union.gimple_statement_d* %2) #7, !dbg !4258
  %call20 = call fastcc i32 @gimple_uid(%union.gimple_statement_d* %3) #7, !dbg !4260
  %cmp21 = icmp ult i32 %call19, %call20, !dbg !4261
  %. = zext i1 %cmp21 to i32, !dbg !4262
  br label %cleanup, !dbg !4262

cleanup:                                          ; preds = %if.end6, %for.body, %if.end18, %if.end14, %if.end10
  %cleanup.dest.slot.0 = phi i32 [ 4, %for.body ], [ 1, %if.end6 ], [ 4, %if.end10 ], [ 1, %if.end14 ], [ %., %if.end18 ]
  switch i32 %cleanup.dest.slot.0, label %cleanup25.loopexit [
    i32 0, label %for.inc
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup, %cleanup
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !4217, metadata !DIExpression(DW_OP_deref)), !dbg !4230
  %call24 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !4239
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call24, metadata !4216, metadata !DIExpression()), !dbg !4230
  br label %for.cond, !dbg !4239, !llvm.loop !4263

cleanup25.loopexit:                               ; preds = %cleanup, %for.cond
  %retval.2.ph = phi i8 [ 0, %for.cond ], [ 1, %cleanup ]
  br label %cleanup25, !dbg !4265

cleanup25:                                        ; preds = %cleanup25.loopexit, %entry
  %retval.2 = phi i8 [ 0, %entry ], [ %retval.2.ph, %cleanup25.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !4265
  ret i8 %retval.2, !dbg !4265
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4266 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4271, metadata !DIExpression()), !dbg !4272
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4273
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !4274
  ret %union.tree_node* %call, !dbg !4275
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !4276 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !4281, metadata !DIExpression()), !dbg !4282
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !4283
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !4284
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4286

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4287
  %bf.load = load i64, i64* %0, align 8, !dbg !4287
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4288
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4288
  br i1 %cmp, label %if.then, label %if.end, !dbg !4289

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4290
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4290
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !4291
  br label %if.end, !dbg !4290

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !4292
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_phi_arg_has_location(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !4293 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4297, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %i, metadata !4298, metadata !DIExpression()), !dbg !4299
  %call = tail call fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %gs, i64 %i) #7, !dbg !4300
  %cmp = icmp ne i32 %call, 0, !dbg !4301
  %conv1 = zext i1 %cmp to i8, !dbg !4300
  ret i8 %conv1, !dbg !4302
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_location(%union.gimple_statement_d* %g, i32 %location) unnamed_addr #0 !dbg !4303 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4307, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i32 %location, metadata !4308, metadata !DIExpression()), !dbg !4309
  %location1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !4310
  store i32 %location, i32* %location1, align 8, !dbg !4311
  ret void, !dbg !4312
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !4313 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4317, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %i, metadata !4318, metadata !DIExpression()), !dbg !4319
  %conv = trunc i64 %i to i32, !dbg !4320
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !4321
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !4322
  %0 = load i32, i32* %locus, align 8, !dbg !4322
  ret i32 %0, !dbg !4323
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !4324 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4328, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !4329, metadata !DIExpression()), !dbg !4330
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !4331
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4332
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4332
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !4333
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !4334
  ret void, !dbg !4335
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !4336 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4341, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4342, metadata !DIExpression()), !dbg !4343
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4344
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4345
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !4346
  store i40* %imm_uses, i40** %0, align 8, !dbg !4346
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4347
  %1 = bitcast i40* %next to i64*, !dbg !4347
  %2 = load i64, i64* %1, align 8, !dbg !4347
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4348
  store i64 %2, i64* %3, align 8, !dbg !4348
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4349
  %tobool = icmp eq i8 %call, 0, !dbg !4349
  br i1 %tobool, label %if.end, label %return, !dbg !4351

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4352
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !4352
  br label %return, !dbg !4353

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4343
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4354
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4355 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4361, metadata !DIExpression()), !dbg !4362
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4363
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4363
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4364
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !4364
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !4365
  %conv1 = zext i1 %cmp to i8, !dbg !4366
  ret i8 %conv1, !dbg !4367
}

; Function Attrs: nounwind uwtable
define internal fastcc void @maybe_renumber_stmts_bb(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !4368 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4372, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 0, metadata !4373, metadata !DIExpression()), !dbg !4379
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4380
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4380
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !4381
  %1 = load i8*, i8** %aux, align 8, !dbg !4381
  %tobool = icmp eq i8* %1, null, !dbg !4383
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4384

if.end:                                           ; preds = %entry
  store i8* null, i8** %aux, align 8, !dbg !4385
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4386
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4386
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !4386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !4386
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4386
  br label %for.cond, !dbg !4387

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !4379
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4373, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4374, metadata !DIExpression(DW_OP_deref)), !dbg !4379
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4388
  %tobool2 = icmp eq i8 %call, 0, !dbg !4389
  br i1 %tobool2, label %for.body, label %cleanup.loopexit, !dbg !4390

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4374, metadata !DIExpression(DW_OP_deref)), !dbg !4379
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4391
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !4375, metadata !DIExpression()), !dbg !4392
  call fastcc void @gimple_set_uid(%union.gimple_statement_d* %call3, i32 %i.0) #7, !dbg !4393
  %inc = add i32 %i.0, 1, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4373, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4374, metadata !DIExpression(DW_OP_deref)), !dbg !4379
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4395
  br label %for.cond, !dbg !4396, !llvm.loop !4397

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !4399

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4399
  ret void, !dbg !4399
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_uid(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4400 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4402, metadata !DIExpression()), !dbg !4403
  %uid = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 1, !dbg !4404
  %0 = load i32, i32* %uid, align 4, !dbg !4404
  ret i32 %0, !dbg !4405
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4406 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4410, metadata !DIExpression()), !dbg !4412
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4413
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4413
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4411, metadata !DIExpression()), !dbg !4412
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4414
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4414
  %2 = load i64, i64* %1, align 8, !dbg !4414
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4415
  store i64 %2, i64* %3, align 8, !dbg !4415
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4416
  %tobool = icmp eq i8 %call, 0, !dbg !4416
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4418

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4419
  br label %cleanup, !dbg !4420

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4412
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4421
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4422 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4424, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4425, metadata !DIExpression()), !dbg !4428
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4429
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4426, metadata !DIExpression()), !dbg !4427
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4430
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4431
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4432
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4433
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4434
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4435
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4436
  ret void, !dbg !4437
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_uid(%union.gimple_statement_d* %g, i32 %uid) unnamed_addr #0 !dbg !4438 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4442, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %uid, metadata !4443, metadata !DIExpression()), !dbg !4444
  %uid1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 1, !dbg !4445
  store i32 %uid, i32* %uid1, align 4, !dbg !4446
  ret void, !dbg !4447
}

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !4448 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4452, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i32 0, metadata !4453, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4454, metadata !DIExpression()), !dbg !4455
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4456
  %tobool = icmp eq i8 %call, 0, !dbg !4456
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4456

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !4456
  %cmp = icmp eq i32 %call1, 0, !dbg !4456
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4456

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4456
  br label %cond.end, !dbg !4456

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4457
  store %union.tree_node* %op, %union.tree_node** %call3, align 8, !dbg !4458
  ret void, !dbg !4459
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4460 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4462, metadata !DIExpression()), !dbg !4463
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4464
  %cmp = icmp eq i32 %call, 0, !dbg !4465
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4466

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4467
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4468
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4469
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4470 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4472, metadata !DIExpression()), !dbg !4473
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4474
  %0 = load i32, i32* %num_ops, align 4, !dbg !4474
  ret i32 %0, !dbg !4475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4476 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4480, metadata !DIExpression()), !dbg !4482
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4483
  %idxprom = zext i32 %call to i64, !dbg !4484
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4484
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %0, metadata !4481, metadata !DIExpression()), !dbg !4482
  %cmp = icmp eq i64 %0, 0, !dbg !4485
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4485

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4485
  br label %cond.end, !dbg !4485

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4486
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4487
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4488
  ret %union.tree_node** %2, !dbg !4489
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4490 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4494, metadata !DIExpression()), !dbg !4495
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4496
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4497
  ret i32 %call1, !dbg !4498
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4499 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4503, metadata !DIExpression()), !dbg !4504
  %idxprom = zext i32 %code to i64, !dbg !4505
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4505
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4505
  ret i32 %0, !dbg !4506
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !4507 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4511, metadata !DIExpression()), !dbg !4512
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4513
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4513
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !4515
  br i1 %cmp, label %return, label %if.end, !dbg !4516

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4517
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4517
  %2 = load i64, i64* %1, align 8, !dbg !4517
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4518
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !4519
  store i64 %2, i64* %3, align 8, !dbg !4519
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !4520
  %5 = load i64, i64* %4, align 8, !dbg !4520
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !4521
  %7 = load i64*, i64** %6, align 8, !dbg !4521
  store i64 %5, i64* %7, align 8, !dbg !4522
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4523
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !4524
  br label %return, !dbg !4525

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4525
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !4526 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4531, metadata !DIExpression()), !dbg !4533
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !4534
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4536

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4537
  %bf.load = load i64, i64* %0, align 8, !dbg !4537
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4538
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4538
  br i1 %cmp, label %if.else, label %if.then, !dbg !4539

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4540
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4541
  br label %if.end, !dbg !4542

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4543
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4543
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !4532, metadata !DIExpression()), !dbg !4533
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !4545
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4546
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !4547 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4551, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !4552, metadata !DIExpression()), !dbg !4553
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4554
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4555
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !4556
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4556
  %1 = load i64, i64* %0, align 8, !dbg !4556
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4557
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !4558
  store i64 %1, i64* %2, align 8, !dbg !4558
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4559
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !4560
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !4561
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !4562
  ret void, !dbg !4563
}

declare dso_local void @remove_phi_node(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !4564 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4566, metadata !DIExpression()), !dbg !4571
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4572
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4572
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4567, metadata !DIExpression()), !dbg !4571
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4573
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !4573
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !4573
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !4575
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4576

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !4577
  %tobool = icmp eq i32 %3, 0, !dbg !4577
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !4579

if.end2:                                          ; preds = %if.end
  %call = tail call zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d* nonnull %0) #6, !dbg !4580
  br label %cleanup, !dbg !4581

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 0, %if.end ], !dbg !4571
  ret i8 %retval.0, !dbg !4582
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_gimple_phi_args(%union.gimple_statement_d* %phi) unnamed_addr #5 !dbg !4583 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !4587, metadata !DIExpression()), !dbg !4612
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !4613
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !4613
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4614
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !4614
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4616

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @dump_flags, align 4, !dbg !4617
  %and = and i32 %2, 8, !dbg !4618
  %tobool1 = icmp eq i32 %and, 0, !dbg !4618
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4619

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4620
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4622
  tail call void @print_gimple_stmt(%struct._IO_FILE* %3, %union.gimple_statement_d* %phi, i32 0, i32 2) #6, !dbg !4623
  br label %if.end, !dbg !4624

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4589, metadata !DIExpression(DW_OP_deref)), !dbg !4612
  %call2 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %phi, i32 1) #7, !dbg !4625
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call2, metadata !4588, metadata !DIExpression()), !dbg !4612
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4626
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4627
  br label %for.cond, !dbg !4625

for.cond:                                         ; preds = %for.inc, %if.end
  %arg_p.0 = phi %struct.ssa_use_operand_d* [ %call2, %if.end ], [ %call16, %for.inc ], !dbg !4630
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %arg_p.0, metadata !4588, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4589, metadata !DIExpression(DW_OP_deref)), !dbg !4612
  %call3 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !4631
  %tobool4 = icmp eq i8 %call3, 0, !dbg !4631
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4625

for.body:                                         ; preds = %for.cond
  %call5 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %arg_p.0) #7, !dbg !4632
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !4602, metadata !DIExpression()), !dbg !4633
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4634
  %bf.load = load i64, i64* %6, align 8, !dbg !4634
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4635
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4635
  br i1 %cmp, label %if.then6, label %for.inc, !dbg !4636

if.then6:                                         ; preds = %for.body
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %arg_p.0, %union.tree_node* null) #7, !dbg !4637
  %call7 = call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %call5) #7, !dbg !4638
  %tobool8 = icmp eq i8 %call7, 0, !dbg !4638
  br i1 %tobool8, label %for.inc, label %if.then9, !dbg !4639

if.then9:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !4640
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4641
  %7 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4641
  %8 = load %union.gimple_statement_d*, %union.gimple_statement_d** %7, align 8, !dbg !4641
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %8, metadata !4606, metadata !DIExpression()), !dbg !4626
  %call10 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %8) #7, !dbg !4642
  %cmp11 = icmp eq i32 %call10, 16, !dbg !4643
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4644

if.then12:                                        ; preds = %if.then9
  call fastcc void @remove_gimple_phi_args(%union.gimple_statement_d* %8) #7, !dbg !4645
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4646
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %8) #6, !dbg !4646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !4646
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4646
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4611, metadata !DIExpression(DW_OP_deref)), !dbg !4626
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !4647
  br label %if.end13, !dbg !4648

if.end13:                                         ; preds = %if.then12, %if.then9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !4649
  br label %for.inc, !dbg !4650

for.inc:                                          ; preds = %if.then6, %for.body, %if.end13
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4589, metadata !DIExpression(DW_OP_deref)), !dbg !4612
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !4631
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !4588, metadata !DIExpression()), !dbg !4612
  br label %for.cond, !dbg !4631, !llvm.loop !4651

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !4653
  ret void, !dbg !4653
}

declare dso_local zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d*) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !4654 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4659, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !4660, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 1, metadata !4661, metadata !DIExpression()), !dbg !4664
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !4665
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4662, metadata !DIExpression()), !dbg !4664
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4666
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4667
  store i8 0, i8* %done, align 8, !dbg !4668
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !4669
  %tobool = icmp eq i8 %call1, 0, !dbg !4669
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !4663, metadata !DIExpression()), !dbg !4664
  br i1 %tobool, label %if.then, label %if.end, !dbg !4670

if.then:                                          ; preds = %entry
  store i8 1, i8* %done, align 8, !dbg !4671
  br label %cleanup, !dbg !4674

if.end:                                           ; preds = %entry
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4675
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4676
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !4677
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4678
  store i32 %call7, i32* %num_phi, align 4, !dbg !4679
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4680
  store i32 2, i32* %iter_type, align 4, !dbg !4681
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4682
  br label %cleanup, !dbg !4683

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !4664
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4684
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4685 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4691, metadata !DIExpression()), !dbg !4692
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4693
  %0 = load i8, i8* %done, align 8, !dbg !4693
  ret i8 %0, !dbg !4694
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4695 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4699, metadata !DIExpression()), !dbg !4701
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4702
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4702
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4704
  br i1 %tobool, label %if.end, label %if.then, !dbg !4705

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4706
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !4700, metadata !DIExpression()), !dbg !4701
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !4708
  %2 = load i64, i64* %1, align 8, !dbg !4708
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4709
  store i64 %2, i64* %3, align 8, !dbg !4709
  br label %cleanup, !dbg !4710

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4711
  %4 = load i32, i32* %phi_i, align 8, !dbg !4711
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4713
  %5 = load i32, i32* %num_phi, align 4, !dbg !4713
  %cmp = icmp slt i32 %4, %5, !dbg !4714
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4715

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4716
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4716
  %inc = add nsw i32 %4, 1, !dbg !4716
  store i32 %inc, i32* %phi_i, align 8, !dbg !4716
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !4716
  br label %cleanup, !dbg !4718

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4719
  store i8 1, i8* %done, align 8, !dbg !4720
  br label %cleanup, !dbg !4721

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !4701
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4722
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4723 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4727, metadata !DIExpression()), !dbg !4728
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4729
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4730
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4731
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !4732
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4733
  store i32 0, i32* %iter_type, align 4, !dbg !4734
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4735
  store i32 0, i32* %phi_i, align 8, !dbg !4736
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4737
  store i32 0, i32* %num_phi, align 4, !dbg !4738
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4739
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4740
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4741
  store i8 1, i8* %done, align 8, !dbg !4742
  ret void, !dbg !4743
}

declare dso_local %struct._var_map* @coalesce_ssa_name() local_unnamed_addr #2

declare dso_local void @partition_view_normal(%struct._var_map*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @dump_var_map(%struct._IO_FILE*, %struct._var_map*) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @find_replaceable_exprs(%struct._var_map*) local_unnamed_addr #2

declare dso_local void @dump_replaceable_exprs(%struct._IO_FILE*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rewrite_trees(%struct._var_map* %map) unnamed_addr #5 !dbg !4744 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !4748, metadata !DIExpression()), !dbg !4749
  ret void, !dbg !4750
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1847, !1848, !1849}
!llvm.ident = !{!1850}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !457, nameTableKind: None)
!1 = !DIFile(filename: "tree-outof-ssa.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !327, !333, !338, !343, !361, !368, !375, !414, !424, !450}
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
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !328, line: 363, baseType: !5, size: 32, elements: !329)
!328 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!329 = !{!330, !331, !332}
!330 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!331 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!332 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !328, line: 355, baseType: !5, size: 32, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!336 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!337 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !339, line: 474, baseType: !5, size: 32, elements: !340)
!339 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!340 = !{!341, !342}
!341 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!342 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !133, line: 280, baseType: !5, size: 32, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!345 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!361 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !133, line: 1817, baseType: !5, size: 32, elements: !362)
!362 = !{!363, !364, !365, !366, !367}
!363 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !133, line: 1805, baseType: !5, size: 32, elements: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !376, line: 51, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!378 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!384 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!385 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!386 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!387 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!388 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!389 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!390 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!391 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!392 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!393 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!394 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!395 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!396 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!397 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!398 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!413 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "expand_modifier", file: !415, line: 52, baseType: !5, size: 32, elements: !416)
!415 = !DIFile(filename: "./expr.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!416 = !{!417, !418, !419, !420, !421, !422, !423}
!417 = !DIEnumerator(name: "EXPAND_NORMAL", value: 0, isUnsigned: true)
!418 = !DIEnumerator(name: "EXPAND_STACK_PARM", value: 1, isUnsigned: true)
!419 = !DIEnumerator(name: "EXPAND_SUM", value: 2, isUnsigned: true)
!420 = !DIEnumerator(name: "EXPAND_CONST_ADDRESS", value: 3, isUnsigned: true)
!421 = !DIEnumerator(name: "EXPAND_INITIALIZER", value: 4, isUnsigned: true)
!422 = !DIEnumerator(name: "EXPAND_WRITE", value: 5, isUnsigned: true)
!423 = !DIEnumerator(name: "EXPAND_MEMORY", value: 6, isUnsigned: true)
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !376, line: 727, baseType: !5, size: 32, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!426 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!427 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!428 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!429 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!430 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!431 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!432 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!433 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!434 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!435 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!436 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!447 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!448 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!449 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !451, line: 119, baseType: !5, size: 32, elements: !452)
!451 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!452 = !{!453, !454, !455, !456}
!453 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!454 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!455 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!456 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!457 = !{!458, !459, !460, !461, !464, !465, !467, !1251, !1761, !1767, !1835, !1782, !5, !132, !538, !706, !3, !1844, !921, !462, !584}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!460 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !468, line: 50, baseType: !469)
!468 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !471, line: 240, size: 384, elements: !472)
!471 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !470, file: !471, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !470, file: !471, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !470, file: !471, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !470, file: !471, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !470, file: !471, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !470, file: !471, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !470, file: !471, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !470, file: !471, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !470, file: !471, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !470, file: !471, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !470, file: !471, line: 321, baseType: !484, size: 320, offset: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !471, line: 315, size: 320, elements: !485)
!485 = !{!486, !1728, !1730, !1759, !1760}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !484, file: !471, line: 316, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 64, elements: !503)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !471, line: 183, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !471, line: 166, size: 64, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !505, !506, !518, !521, !583, !1706, !1707, !1718, !1725}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !489, file: !471, line: 168, baseType: !460, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !489, file: !471, line: 169, baseType: !5, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !489, file: !471, line: 170, baseType: !465, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !489, file: !471, line: 171, baseType: !467, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !489, file: !471, line: 172, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !468, line: 53, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !471, line: 359, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !498, file: !471, line: 360, baseType: !460, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !498, file: !471, line: 361, baseType: !502, size: 64, offset: 64)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 64, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 1)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !489, file: !471, line: 173, baseType: !3, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !489, file: !471, line: 174, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !471, line: 133, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 115, size: 32, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !508, file: !471, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !508, file: !471, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !508, file: !471, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !508, file: !471, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !508, file: !471, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !508, file: !471, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !508, file: !471, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !508, file: !471, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !489, file: !471, line: 175, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !471, line: 175, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !489, file: !471, line: 176, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !524, line: 75, size: 256, elements: !525)
!524 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!525 = !{!526, !541, !542, !543}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !523, file: !524, line: 76, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !524, line: 68, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !524, line: 63, size: 320, elements: !530)
!530 = !{!531, !533, !534, !535}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !524, line: 64, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !529, file: !524, line: 65, baseType: !532, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !529, file: !524, line: 66, baseType: !5, size: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !529, file: !524, line: 67, baseType: !536, size: 128, offset: 192)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 128, elements: !539)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !524, line: 29, baseType: !538)
!538 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!539 = !{!540}
!540 = !DISubrange(count: 2)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !523, file: !524, line: 77, baseType: !527, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !523, file: !524, line: 78, baseType: !5, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !523, file: !524, line: 79, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !524, line: 49, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !524, line: 45, size: 832, elements: !547)
!547 = !{!548, !549, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !546, file: !524, line: 46, baseType: !532, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !546, file: !524, line: 47, baseType: !522, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !546, file: !524, line: 48, baseType: !551, size: 704, offset: 128)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !552, line: 164, size: 704, elements: !553)
!552 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!553 = !{!554, !556, !566, !567, !568, !569, !570, !571, !575, !579, !580, !581, !582}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !551, file: !552, line: 166, baseType: !555, size: 64)
!555 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !551, file: !552, line: 167, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !552, line: 157, size: 192, elements: !559)
!559 = !{!560, !561, !562}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !558, file: !552, line: 159, baseType: !462, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !558, file: !552, line: 160, baseType: !557, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !558, file: !552, line: 161, baseType: !563, size: 32, offset: 128)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 32, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 4)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !551, file: !552, line: 168, baseType: !462, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !551, file: !552, line: 169, baseType: !462, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !551, file: !552, line: 170, baseType: !462, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !551, file: !552, line: 171, baseType: !555, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !551, file: !552, line: 172, baseType: !460, size: 32, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !551, file: !552, line: 176, baseType: !572, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!557, !464, !555}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !551, file: !552, line: 177, baseType: !576, size: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !464, !557}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !551, file: !552, line: 178, baseType: !464, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !551, file: !552, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !551, file: !552, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !551, file: !552, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !489, file: !471, line: 177, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !468, line: 56, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !133, line: 3371, size: 1792, elements: !587)
!587 = !{!588, !621, !627, !638, !657, !668, !673, !680, !686, !699, !711, !749, !754, !782, !799, !800, !805, !814, !820, !825, !829, !833, !1355, !1404, !1410, !1416, !1423, !1436, !1450, !1467, !1479, !1501, !1516, !1688}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !586, file: !133, line: 3372, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !133, line: 360, size: 64, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !589, file: !133, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !589, file: !133, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !589, file: !133, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !589, file: !133, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !589, file: !133, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !589, file: !133, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !589, file: !133, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !589, file: !133, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !589, file: !133, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !589, file: !133, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !589, file: !133, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !589, file: !133, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !589, file: !133, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !589, file: !133, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !589, file: !133, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !589, file: !133, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !589, file: !133, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !589, file: !133, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !589, file: !133, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !589, file: !133, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !589, file: !133, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !589, file: !133, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !589, file: !133, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !589, file: !133, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !589, file: !133, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !589, file: !133, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !589, file: !133, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !589, file: !133, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !589, file: !133, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !589, file: !133, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !586, file: !133, line: 3373, baseType: !622, size: 192)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !133, line: 402, size: 192, elements: !623)
!623 = !{!624, !625, !626}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !622, file: !133, line: 403, baseType: !589, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !622, file: !133, line: 404, baseType: !584, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !133, line: 405, baseType: !584, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !586, file: !133, line: 3374, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !133, line: 1384, size: 320, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !628, file: !133, line: 1385, baseType: !622, size: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !628, file: !133, line: 1386, baseType: !632, size: 128, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !633, line: 58, baseType: !634)
!633 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !633, line: 54, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !634, file: !633, line: 56, baseType: !538, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !634, file: !633, line: 57, baseType: !555, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !586, file: !133, line: 3375, baseType: !639, size: 256)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !133, line: 1397, size: 256, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !639, file: !133, line: 1398, baseType: !622, size: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !639, file: !133, line: 1399, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !645, line: 52, size: 256, elements: !646)
!645 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!646 = !{!647, !648, !649, !650, !651, !652, !653}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !644, file: !645, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !644, file: !645, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !644, file: !645, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !644, file: !645, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !644, file: !645, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !644, file: !645, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !644, file: !645, line: 62, baseType: !654, size: 192, offset: 64)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 192, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 3)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !586, file: !133, line: 3376, baseType: !658, size: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !133, line: 1408, size: 256, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !658, file: !133, line: 1409, baseType: !622, size: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !658, file: !133, line: 1410, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !664, line: 27, size: 192, elements: !665)
!664 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !663, file: !664, line: 29, baseType: !632, size: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !663, file: !664, line: 30, baseType: !3, size: 32, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !586, file: !133, line: 3377, baseType: !669, size: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !133, line: 1437, size: 256, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !669, file: !133, line: 1438, baseType: !622, size: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !669, file: !133, line: 1439, baseType: !584, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !586, file: !133, line: 3378, baseType: !674, size: 256)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !133, line: 1418, size: 256, elements: !675)
!675 = !{!676, !677, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !674, file: !133, line: 1419, baseType: !622, size: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !674, file: !133, line: 1420, baseType: !460, size: 32, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !674, file: !133, line: 1421, baseType: !679, size: 8, offset: 224)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 8, elements: !503)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !586, file: !133, line: 3379, baseType: !681, size: 320)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !133, line: 1428, size: 320, elements: !682)
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !681, file: !133, line: 1429, baseType: !622, size: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !681, file: !133, line: 1430, baseType: !584, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !681, file: !133, line: 1431, baseType: !584, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !586, file: !133, line: 3380, baseType: !687, size: 320)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !133, line: 1460, size: 320, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !687, file: !133, line: 1461, baseType: !622, size: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !687, file: !133, line: 1462, baseType: !691, size: 128, offset: 192)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !692, line: 31, size: 128, elements: !693)
!692 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!693 = !{!694, !697, !698}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !691, file: !692, line: 32, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !691, file: !692, line: 33, baseType: !5, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !691, file: !692, line: 34, baseType: !5, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !586, file: !133, line: 3381, baseType: !700, size: 384)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !133, line: 2507, size: 384, elements: !701)
!701 = !{!702, !703, !708, !709, !710}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !133, line: 2508, baseType: !622, size: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !700, file: !133, line: 2509, baseType: !704, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !705, line: 58, baseType: !706)
!705 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !707, line: 44, baseType: !5)
!707 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !700, file: !133, line: 2510, baseType: !5, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !700, file: !133, line: 2511, baseType: !584, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !700, file: !133, line: 2512, baseType: !584, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !586, file: !133, line: 3382, baseType: !712, size: 896)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !133, line: 2652, size: 896, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !712, file: !133, line: 2653, baseType: !700, size: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !712, file: !133, line: 2654, baseType: !584, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !712, file: !133, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !712, file: !133, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !712, file: !133, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !712, file: !133, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !712, file: !133, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !712, file: !133, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !712, file: !133, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !712, file: !133, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !712, file: !133, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !712, file: !133, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !712, file: !133, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !712, file: !133, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !712, file: !133, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !712, file: !133, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !712, file: !133, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !712, file: !133, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !712, file: !133, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !712, file: !133, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !712, file: !133, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !712, file: !133, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !712, file: !133, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !712, file: !133, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !712, file: !133, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !712, file: !133, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !712, file: !133, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !712, file: !133, line: 2703, baseType: !5, size: 32, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !712, file: !133, line: 2705, baseType: !584, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !712, file: !133, line: 2706, baseType: !584, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !712, file: !133, line: 2707, baseType: !584, size: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !712, file: !133, line: 2708, baseType: !584, size: 64, offset: 768)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !712, file: !133, line: 2711, baseType: !747, size: 64, offset: 832)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !133, line: 2711, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !586, file: !133, line: 3383, baseType: !750, size: 960)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !133, line: 2756, size: 960, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !750, file: !133, line: 2757, baseType: !712, size: 896)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !750, file: !133, line: 2758, baseType: !467, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !586, file: !133, line: 3384, baseType: !755, size: 1472)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !133, line: 3114, size: 1472, elements: !756)
!756 = !{!757, !778, !779, !780, !781}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !755, file: !133, line: 3115, baseType: !758, size: 1216)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !133, line: 2984, size: 1216, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !758, file: !133, line: 2985, baseType: !750, size: 960)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !758, file: !133, line: 2986, baseType: !584, size: 64, offset: 960)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !758, file: !133, line: 2987, baseType: !584, size: 64, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !758, file: !133, line: 2988, baseType: !584, size: 64, offset: 1088)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !758, file: !133, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !758, file: !133, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !758, file: !133, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !758, file: !133, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !758, file: !133, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !758, file: !133, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !758, file: !133, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !758, file: !133, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !758, file: !133, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !758, file: !133, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !758, file: !133, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !758, file: !133, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !758, file: !133, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !758, file: !133, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !755, file: !133, line: 3117, baseType: !584, size: 64, offset: 1216)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !755, file: !133, line: 3119, baseType: !584, size: 64, offset: 1280)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !755, file: !133, line: 3121, baseType: !584, size: 64, offset: 1344)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !755, file: !133, line: 3123, baseType: !584, size: 64, offset: 1408)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !586, file: !133, line: 3385, baseType: !783, size: 1088)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !133, line: 2874, size: 1088, elements: !784)
!784 = !{!785, !786, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !783, file: !133, line: 2875, baseType: !750, size: 960)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !783, file: !133, line: 2876, baseType: !467, size: 64, offset: 960)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !783, file: !133, line: 2877, baseType: !788, size: 64, offset: 1024)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !790, line: 172, size: 128, elements: !791)
!790 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!791 = !{!792, !793, !794, !795, !796, !797, !798}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !789, file: !790, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !789, file: !790, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !789, file: !790, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !789, file: !790, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !789, file: !790, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !789, file: !790, line: 195, baseType: !5, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !789, file: !790, line: 199, baseType: !584, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !586, file: !133, line: 3386, baseType: !758, size: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !586, file: !133, line: 3387, baseType: !801, size: 1280)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !133, line: 3093, size: 1280, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !801, file: !133, line: 3094, baseType: !758, size: 1216)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !801, file: !133, line: 3095, baseType: !788, size: 64, offset: 1216)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !586, file: !133, line: 3388, baseType: !806, size: 1216)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !133, line: 2824, size: 1216, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !806, file: !133, line: 2825, baseType: !712, size: 896)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !806, file: !133, line: 2827, baseType: !584, size: 64, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !806, file: !133, line: 2828, baseType: !584, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !806, file: !133, line: 2829, baseType: !584, size: 64, offset: 1024)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !806, file: !133, line: 2830, baseType: !584, size: 64, offset: 1088)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !806, file: !133, line: 2831, baseType: !584, size: 64, offset: 1152)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !586, file: !133, line: 3389, baseType: !815, size: 1024)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !133, line: 2850, size: 1024, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !815, file: !133, line: 2851, baseType: !750, size: 960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !815, file: !133, line: 2852, baseType: !460, size: 32, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !815, file: !133, line: 2853, baseType: !460, size: 32, offset: 992)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !586, file: !133, line: 3390, baseType: !821, size: 1024)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !133, line: 2857, size: 1024, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !821, file: !133, line: 2858, baseType: !750, size: 960)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !821, file: !133, line: 2859, baseType: !788, size: 64, offset: 960)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !586, file: !133, line: 3391, baseType: !826, size: 960)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !133, line: 2862, size: 960, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !826, file: !133, line: 2863, baseType: !750, size: 960)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !586, file: !133, line: 3392, baseType: !830, size: 1472)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !133, line: 3304, size: 1472, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !830, file: !133, line: 3305, baseType: !755, size: 1472)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !586, file: !133, line: 3393, baseType: !834, size: 1792)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !133, line: 3248, size: 1792, elements: !835)
!835 = !{!836, !837, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !133, line: 3249, baseType: !755, size: 1472)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !834, file: !133, line: 3251, baseType: !838, size: 64, offset: 1472)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !840, line: 463, size: 1152, elements: !841)
!840 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!841 = !{!842, !845, !1159, !1160, !1275, !1278, !1279, !1280, !1281, !1282, !1283, !1307, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !839, file: !840, line: 464, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !840, line: 464, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !839, file: !840, line: 467, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !328, line: 374, size: 640, elements: !848)
!848 = !{!849, !1134, !1135, !1148, !1149, !1150, !1151, !1152, !1153, !1155, !1157, !1158}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !847, file: !328, line: 377, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !468, line: 111, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !328, line: 217, size: 832, elements: !853)
!853 = !{!854, !1099, !1100, !1101, !1104, !1108, !1109, !1110, !1128, !1129, !1130, !1131, !1132, !1133}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !852, file: !328, line: 219, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !328, line: 151, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !328, line: 151, size: 128, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !857, file: !328, line: 151, baseType: !860, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !328, line: 150, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !328, line: 150, size: 128, elements: !862)
!862 = !{!863, !864, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !861, file: !328, line: 150, baseType: !5, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !861, file: !328, line: 150, baseType: !5, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !861, file: !328, line: 150, baseType: !866, size: 64, offset: 64)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 64, elements: !503)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !468, line: 108, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !328, line: 122, size: 512, elements: !870)
!870 = !{!871, !872, !873, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !869, file: !328, line: 124, baseType: !851, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !869, file: !328, line: 125, baseType: !851, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !869, file: !328, line: 131, baseType: !874, size: 64, offset: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !328, line: 128, size: 64, elements: !875)
!875 = !{!876, !1090}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !874, file: !328, line: 129, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !468, line: 66, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !376, line: 143, size: 192, elements: !880)
!880 = !{!881, !1088, !1089}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !879, file: !376, line: 145, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !468, line: 69, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !376, line: 136, size: 192, elements: !885)
!885 = !{!886, !1086, !1087}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !884, file: !376, line: 137, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !468, line: 58, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !376, line: 737, size: 768, elements: !890)
!890 = !{!891, !908, !941, !947, !952, !957, !964, !970, !976, !981, !995, !1000, !1006, !1011, !1021, !1026, !1044, !1051, !1058, !1064, !1069, !1075, !1081}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !889, file: !376, line: 738, baseType: !892, size: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !376, line: 271, size: 256, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !892, file: !376, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !892, file: !376, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !892, file: !376, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !892, file: !376, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !892, file: !376, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !892, file: !376, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !892, file: !376, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !892, file: !376, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !892, file: !376, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !892, file: !376, line: 312, baseType: !5, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !892, file: !376, line: 316, baseType: !704, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !892, file: !376, line: 319, baseType: !5, size: 32, offset: 96)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !892, file: !376, line: 323, baseType: !851, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !892, file: !376, line: 327, baseType: !584, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !889, file: !376, line: 739, baseType: !909, size: 448)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !376, line: 350, size: 448, elements: !910)
!910 = !{!911, !939}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !909, file: !376, line: 353, baseType: !912, size: 384)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !376, line: 333, size: 384, elements: !913)
!913 = !{!914, !915, !922}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !912, file: !376, line: 336, baseType: !892, size: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !912, file: !376, line: 343, baseType: !916, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !451, line: 37, size: 128, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !917, file: !451, line: 39, baseType: !916, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !917, file: !451, line: 40, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !912, file: !376, line: 344, baseType: !923, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !451, line: 45, size: 320, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !451, line: 47, baseType: !923, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !924, file: !451, line: 48, baseType: !928, size: 256, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !133, line: 1883, size: 256, elements: !929)
!929 = !{!930, !932, !933, !938}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !928, file: !133, line: 1884, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !928, file: !133, line: 1885, baseType: !931, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !928, file: !133, line: 1891, baseType: !934, size: 64, offset: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !133, line: 1891, size: 64, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !934, file: !133, line: 1891, baseType: !887, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !934, file: !133, line: 1891, baseType: !584, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !928, file: !133, line: 1892, baseType: !921, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !909, file: !376, line: 359, baseType: !940, size: 64, offset: 384)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 64, elements: !503)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !889, file: !376, line: 740, baseType: !942, size: 512)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !376, line: 365, size: 512, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !942, file: !376, line: 368, baseType: !912, size: 384)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !942, file: !376, line: 373, baseType: !584, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !942, file: !376, line: 374, baseType: !584, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !889, file: !376, line: 741, baseType: !948, size: 576)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !376, line: 380, size: 576, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !948, file: !376, line: 383, baseType: !942, size: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !948, file: !376, line: 389, baseType: !940, size: 64, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !889, file: !376, line: 742, baseType: !953, size: 320)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !376, line: 395, size: 320, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !953, file: !376, line: 397, baseType: !892, size: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !953, file: !376, line: 400, baseType: !877, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !889, file: !376, line: 743, baseType: !958, size: 448)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !376, line: 406, size: 448, elements: !959)
!959 = !{!960, !961, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !958, file: !376, line: 408, baseType: !892, size: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !958, file: !376, line: 412, baseType: !584, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !958, file: !376, line: 420, baseType: !584, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !958, file: !376, line: 423, baseType: !877, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !889, file: !376, line: 744, baseType: !965, size: 384)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !376, line: 429, size: 384, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !965, file: !376, line: 431, baseType: !892, size: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !965, file: !376, line: 434, baseType: !584, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !965, file: !376, line: 437, baseType: !877, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !889, file: !376, line: 745, baseType: !971, size: 384)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !376, line: 443, size: 384, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !971, file: !376, line: 445, baseType: !892, size: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !971, file: !376, line: 449, baseType: !584, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !971, file: !376, line: 453, baseType: !877, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !889, file: !376, line: 746, baseType: !977, size: 320)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !376, line: 459, size: 320, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !977, file: !376, line: 461, baseType: !892, size: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !977, file: !376, line: 464, baseType: !584, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !889, file: !376, line: 747, baseType: !982, size: 768)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !376, line: 469, size: 768, elements: !983)
!983 = !{!984, !985, !986, !987, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !982, file: !376, line: 471, baseType: !892, size: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !982, file: !376, line: 474, baseType: !5, size: 32, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !982, file: !376, line: 475, baseType: !5, size: 32, offset: 288)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !982, file: !376, line: 478, baseType: !584, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !982, file: !376, line: 481, baseType: !989, size: 384, offset: 384)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 384, elements: !503)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !133, line: 1917, size: 384, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !990, file: !133, line: 1920, baseType: !928, size: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !990, file: !133, line: 1921, baseType: !584, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !990, file: !133, line: 1922, baseType: !704, size: 32, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !889, file: !376, line: 748, baseType: !996, size: 320)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !376, line: 487, size: 320, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !996, file: !376, line: 490, baseType: !892, size: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !996, file: !376, line: 494, baseType: !460, size: 32, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !889, file: !376, line: 749, baseType: !1001, size: 384)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !376, line: 500, size: 384, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1001, file: !376, line: 502, baseType: !892, size: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1001, file: !376, line: 506, baseType: !877, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1001, file: !376, line: 510, baseType: !877, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !889, file: !376, line: 750, baseType: !1007, size: 320)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !376, line: 529, size: 320, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1007, file: !376, line: 531, baseType: !892, size: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1007, file: !376, line: 540, baseType: !877, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !889, file: !376, line: 751, baseType: !1012, size: 704)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !376, line: 546, size: 704, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1012, file: !376, line: 549, baseType: !942, size: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1012, file: !376, line: 553, baseType: !465, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1012, file: !376, line: 557, baseType: !459, size: 8, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1012, file: !376, line: 558, baseType: !459, size: 8, offset: 584)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1012, file: !376, line: 559, baseType: !459, size: 8, offset: 592)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1012, file: !376, line: 560, baseType: !459, size: 8, offset: 600)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1012, file: !376, line: 566, baseType: !940, size: 64, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !889, file: !376, line: 752, baseType: !1022, size: 384)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !376, line: 571, size: 384, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1022, file: !376, line: 573, baseType: !953, size: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1022, file: !376, line: 577, baseType: !584, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !889, file: !376, line: 753, baseType: !1027, size: 576)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !376, line: 600, size: 576, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1034, !1043}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1027, file: !376, line: 602, baseType: !953, size: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1027, file: !376, line: 605, baseType: !584, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1027, file: !376, line: 609, baseType: !1032, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1033, line: 46, baseType: !538)
!1033 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1027, file: !376, line: 612, baseType: !1035, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !376, line: 581, size: 320, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1036, file: !376, line: 583, baseType: !132, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1036, file: !376, line: 586, baseType: !584, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1036, file: !376, line: 589, baseType: !584, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1036, file: !376, line: 592, baseType: !584, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1036, file: !376, line: 595, baseType: !584, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1027, file: !376, line: 616, baseType: !877, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !889, file: !376, line: 754, baseType: !1045, size: 512)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !376, line: 622, size: 512, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1045, file: !376, line: 624, baseType: !953, size: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1045, file: !376, line: 628, baseType: !584, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1045, file: !376, line: 632, baseType: !584, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1045, file: !376, line: 636, baseType: !584, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !889, file: !376, line: 755, baseType: !1052, size: 704)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !376, line: 642, size: 704, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1052, file: !376, line: 644, baseType: !1045, size: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1052, file: !376, line: 648, baseType: !584, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1052, file: !376, line: 652, baseType: !584, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1052, file: !376, line: 653, baseType: !584, size: 64, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !889, file: !376, line: 756, baseType: !1059, size: 448)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !376, line: 663, size: 448, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1059, file: !376, line: 665, baseType: !953, size: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1059, file: !376, line: 668, baseType: !584, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1059, file: !376, line: 673, baseType: !584, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !889, file: !376, line: 757, baseType: !1065, size: 384)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !376, line: 694, size: 384, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1065, file: !376, line: 696, baseType: !953, size: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1065, file: !376, line: 699, baseType: !584, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !889, file: !376, line: 758, baseType: !1070, size: 384)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !376, line: 681, size: 384, elements: !1071)
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1070, file: !376, line: 683, baseType: !892, size: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1070, file: !376, line: 686, baseType: !584, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1070, file: !376, line: 689, baseType: !584, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !889, file: !376, line: 759, baseType: !1076, size: 384)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !376, line: 707, size: 384, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1076, file: !376, line: 709, baseType: !892, size: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1076, file: !376, line: 712, baseType: !584, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1076, file: !376, line: 712, baseType: !584, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !889, file: !376, line: 760, baseType: !1082, size: 320)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !376, line: 718, size: 320, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1082, file: !376, line: 720, baseType: !892, size: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1082, file: !376, line: 723, baseType: !584, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !884, file: !376, line: 138, baseType: !883, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !884, file: !376, line: 139, baseType: !883, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !879, file: !376, line: 146, baseType: !882, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !879, file: !376, line: 152, baseType: !877, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !874, file: !328, line: 130, baseType: !467, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !869, file: !328, line: 134, baseType: !464, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !869, file: !328, line: 137, baseType: !584, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !869, file: !328, line: 138, baseType: !704, size: 32, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !869, file: !328, line: 142, baseType: !5, size: 32, offset: 352)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !328, line: 144, baseType: !460, size: 32, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !869, file: !328, line: 145, baseType: !460, size: 32, offset: 416)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !869, file: !328, line: 146, baseType: !1098, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !328, line: 119, baseType: !555)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !852, file: !328, line: 220, baseType: !855, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !852, file: !328, line: 223, baseType: !464, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !852, file: !328, line: 226, baseType: !1102, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !328, line: 185, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !852, file: !328, line: 229, baseType: !1105, size: 128, offset: 256)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1106, size: 128, elements: !539)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !328, line: 229, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !852, file: !328, line: 232, baseType: !851, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !852, file: !328, line: 233, baseType: !851, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !852, file: !328, line: 238, baseType: !1111, size: 64, offset: 512)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !328, line: 235, size: 64, elements: !1112)
!1112 = !{!1113, !1119}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1111, file: !328, line: 236, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !328, line: 273, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1115, file: !328, line: 275, baseType: !877, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1115, file: !328, line: 278, baseType: !877, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1111, file: !328, line: 237, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !328, line: 259, size: 320, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1121, file: !328, line: 261, baseType: !467, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1121, file: !328, line: 262, baseType: !467, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1121, file: !328, line: 266, baseType: !467, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1121, file: !328, line: 267, baseType: !467, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1121, file: !328, line: 270, baseType: !460, size: 32, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !852, file: !328, line: 241, baseType: !1098, size: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !852, file: !328, line: 244, baseType: !460, size: 32, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !852, file: !328, line: 247, baseType: !460, size: 32, offset: 672)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !852, file: !328, line: 250, baseType: !460, size: 32, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !852, file: !328, line: 253, baseType: !460, size: 32, offset: 736)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !328, line: 256, baseType: !460, size: 32, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !847, file: !328, line: 378, baseType: !850, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !847, file: !328, line: 381, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !328, line: 282, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !328, line: 282, size: 128, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1138, file: !328, line: 282, baseType: !1141, size: 128)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !328, line: 281, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !328, line: 281, size: 128, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1142, file: !328, line: 281, baseType: !5, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1142, file: !328, line: 281, baseType: !5, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1142, file: !328, line: 281, baseType: !1147, size: 64, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 64, elements: !503)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !847, file: !328, line: 384, baseType: !460, size: 32, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !847, file: !328, line: 387, baseType: !460, size: 32, offset: 224)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !847, file: !328, line: 390, baseType: !460, size: 32, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !847, file: !328, line: 394, baseType: !1136, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !847, file: !328, line: 396, baseType: !327, size: 32, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !847, file: !328, line: 399, baseType: !1154, size: 64, offset: 416)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 64, elements: !539)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !847, file: !328, line: 402, baseType: !1156, size: 64, offset: 480)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !539)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !847, file: !328, line: 406, baseType: !460, size: 32, offset: 544)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !847, file: !328, line: 409, baseType: !460, size: 32, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !839, file: !840, line: 470, baseType: !878, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !839, file: !840, line: 473, baseType: !1161, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !790, line: 39, size: 1152, elements: !1163)
!1163 = !{!1164, !1214, !1227, !1239, !1240, !1252, !1253, !1257, !1258, !1259, !1260, !1261}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1162, file: !790, line: 41, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1166, line: 144, baseType: !1167)
!1166 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1166, line: 100, size: 896, elements: !1169)
!1169 = !{!1170, !1178, !1183, !1188, !1190, !1191, !1192, !1193, !1194, !1195, !1200, !1202, !1203, !1208, !1213}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1168, file: !1166, line: 102, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1166, line: 52, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1166, line: 47, baseType: !5)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1168, file: !1166, line: 105, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1166, line: 59, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!460, !1176, !1176}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1168, file: !1166, line: 108, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1166, line: 63, baseType: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !464}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1168, file: !1166, line: 111, baseType: !1189, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1168, file: !1166, line: 114, baseType: !1032, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1168, file: !1166, line: 117, baseType: !1032, size: 64, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1168, file: !1166, line: 120, baseType: !1032, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1168, file: !1166, line: 124, baseType: !5, size: 32, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1168, file: !1166, line: 128, baseType: !5, size: 32, offset: 480)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1168, file: !1166, line: 131, baseType: !1196, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1166, line: 75, baseType: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!464, !1032, !1032}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1168, file: !1166, line: 132, baseType: !1201, size: 64, offset: 576)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1166, line: 78, baseType: !1185)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1168, file: !1166, line: 135, baseType: !464, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1168, file: !1166, line: 136, baseType: !1204, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1166, line: 82, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!464, !464, !1032, !1032}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1168, file: !1166, line: 137, baseType: !1209, size: 64, offset: 768)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1166, line: 83, baseType: !1210)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !464, !464}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1168, file: !1166, line: 141, baseType: !5, size: 32, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1162, file: !790, line: 48, baseType: !1215, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !376, line: 35, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !376, line: 35, size: 128, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1217, file: !376, line: 35, baseType: !1220, size: 128)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !376, line: 33, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !376, line: 33, size: 128, elements: !1222)
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1221, file: !376, line: 33, baseType: !5, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1221, file: !376, line: 33, baseType: !5, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1221, file: !376, line: 33, baseType: !1226, size: 64, offset: 64)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 64, elements: !503)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1162, file: !790, line: 51, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !133, line: 183, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !133, line: 183, size: 128, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1230, file: !133, line: 183, baseType: !1233, size: 128)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !133, line: 182, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !133, line: 182, size: 128, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1234, file: !133, line: 182, baseType: !5, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1234, file: !133, line: 182, baseType: !5, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1234, file: !133, line: 182, baseType: !940, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1162, file: !790, line: 54, baseType: !584, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1162, file: !790, line: 57, baseType: !1241, size: 128, offset: 256)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1242, line: 31, size: 128, elements: !1243)
!1242 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1241, file: !1242, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1241, file: !1242, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1241, file: !1242, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1241, file: !1242, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1241, file: !1242, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1241, file: !1242, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1241, file: !1242, line: 56, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !468, line: 47, baseType: !522)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1162, file: !790, line: 60, baseType: !1241, size: 128, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1162, file: !790, line: 64, baseType: !1254, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1256, line: 33, flags: DIFlagFwdDecl)
!1256 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1162, file: !790, line: 67, baseType: !584, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1162, file: !790, line: 73, baseType: !1165, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1162, file: !790, line: 77, baseType: !1251, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1162, file: !790, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1162, file: !790, line: 82, baseType: !1262, size: 320, offset: 832)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !451, line: 62, size: 320, elements: !1263)
!1263 = !{!1264, !1270, !1271, !1272, !1273, !1274}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1262, file: !451, line: 63, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !451, line: 56, size: 128, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1266, file: !451, line: 57, baseType: !1265, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1266, file: !451, line: 58, baseType: !679, size: 8, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1262, file: !451, line: 64, baseType: !5, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1262, file: !451, line: 66, baseType: !5, size: 32, offset: 96)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1262, file: !451, line: 68, baseType: !459, size: 8, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1262, file: !451, line: 70, baseType: !916, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1262, file: !451, line: 71, baseType: !923, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !839, file: !840, line: 476, baseType: !1276, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !840, line: 476, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !839, file: !840, line: 479, baseType: !1165, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !839, file: !840, line: 484, baseType: !584, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !839, file: !840, line: 488, baseType: !584, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !839, file: !840, line: 493, baseType: !584, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !839, file: !840, line: 496, baseType: !584, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !839, file: !840, line: 501, baseType: !1284, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !339, line: 2355, size: 576, elements: !1286)
!1286 = !{!1287, !1290, !1291, !1292, !1293, !1295, !1296, !1301, !1302, !1303, !1304, !1305, !1306}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1285, file: !339, line: 2356, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !339, line: 2356, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1285, file: !339, line: 2357, baseType: !465, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1285, file: !339, line: 2358, baseType: !460, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1285, file: !339, line: 2359, baseType: !460, size: 32, offset: 160)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1285, file: !339, line: 2360, baseType: !1294, size: 128, offset: 192)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 128, elements: !564)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1285, file: !339, line: 2364, baseType: !460, size: 32, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1285, file: !339, line: 2367, baseType: !1297, size: 128, offset: 384)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !339, line: 2349, size: 128, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1297, file: !339, line: 2351, baseType: !467, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1297, file: !339, line: 2352, baseType: !555, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1285, file: !339, line: 2371, baseType: !338, size: 32, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1285, file: !339, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1285, file: !339, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1285, file: !339, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1285, file: !339, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1285, file: !339, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !839, file: !840, line: 504, baseType: !1308, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !840, line: 504, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !839, file: !840, line: 507, baseType: !1165, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !839, file: !840, line: 510, baseType: !460, size: 32, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !839, file: !840, line: 513, baseType: !460, size: 32, offset: 864)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !839, file: !840, line: 516, baseType: !704, size: 32, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !839, file: !840, line: 519, baseType: !704, size: 32, offset: 928)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !839, file: !840, line: 522, baseType: !5, size: 32, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !839, file: !840, line: 523, baseType: !5, size: 32, offset: 992)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !839, file: !840, line: 528, baseType: !465, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !839, file: !840, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !839, file: !840, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !839, file: !840, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !839, file: !840, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !839, file: !840, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !839, file: !840, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !839, file: !840, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !839, file: !840, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !839, file: !840, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !839, file: !840, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !839, file: !840, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !839, file: !840, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !839, file: !840, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !839, file: !840, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !839, file: !840, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !839, file: !840, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !834, file: !133, line: 3254, baseType: !584, size: 64, offset: 1536)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !834, file: !133, line: 3257, baseType: !584, size: 64, offset: 1600)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !834, file: !133, line: 3258, baseType: !584, size: 64, offset: 1664)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !834, file: !133, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !834, file: !133, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !834, file: !133, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !834, file: !133, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !834, file: !133, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !834, file: !133, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !834, file: !133, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !834, file: !133, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !834, file: !133, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !834, file: !133, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !834, file: !133, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !834, file: !133, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !834, file: !133, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !834, file: !133, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !834, file: !133, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !834, file: !133, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !834, file: !133, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !834, file: !133, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !133, line: 3394, baseType: !1356, size: 1344)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !133, line: 2279, size: 1344, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1383, !1384, !1385, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1356, file: !133, line: 2280, baseType: !622, size: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1356, file: !133, line: 2281, baseType: !584, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1356, file: !133, line: 2282, baseType: !584, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1356, file: !133, line: 2283, baseType: !584, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1356, file: !133, line: 2284, baseType: !584, size: 64, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1356, file: !133, line: 2285, baseType: !5, size: 32, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1356, file: !133, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1356, file: !133, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1356, file: !133, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1356, file: !133, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1356, file: !133, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1356, file: !133, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1356, file: !133, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1356, file: !133, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1356, file: !133, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1356, file: !133, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1356, file: !133, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1356, file: !133, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1356, file: !133, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1356, file: !133, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1356, file: !133, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1356, file: !133, line: 2305, baseType: !5, size: 32, offset: 512)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1356, file: !133, line: 2306, baseType: !1381, size: 32, offset: 544)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1382, line: 31, baseType: !460)
!1382 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1356, file: !133, line: 2307, baseType: !584, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1356, file: !133, line: 2308, baseType: !584, size: 64, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1356, file: !133, line: 2314, baseType: !1386, size: 64, offset: 704)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !133, line: 2309, size: 64, elements: !1387)
!1387 = !{!1388, !1389, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1386, file: !133, line: 2310, baseType: !460, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1386, file: !133, line: 2311, baseType: !465, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1386, file: !133, line: 2312, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !133, line: 2277, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1356, file: !133, line: 2315, baseType: !584, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1356, file: !133, line: 2316, baseType: !584, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1356, file: !133, line: 2317, baseType: !584, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1356, file: !133, line: 2318, baseType: !584, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1356, file: !133, line: 2319, baseType: !584, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1356, file: !133, line: 2320, baseType: !584, size: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1356, file: !133, line: 2321, baseType: !584, size: 64, offset: 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1356, file: !133, line: 2322, baseType: !584, size: 64, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1356, file: !133, line: 2324, baseType: !1402, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !133, line: 2324, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !586, file: !133, line: 3395, baseType: !1405, size: 320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !133, line: 1469, size: 320, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1405, file: !133, line: 1470, baseType: !622, size: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1405, file: !133, line: 1471, baseType: !584, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1405, file: !133, line: 1472, baseType: !584, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !586, file: !133, line: 3396, baseType: !1411, size: 320)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !133, line: 1482, size: 320, elements: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !133, line: 1483, baseType: !622, size: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1411, file: !133, line: 1484, baseType: !460, size: 32, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1411, file: !133, line: 1485, baseType: !940, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !586, file: !133, line: 3397, baseType: !1417, size: 384)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !133, line: 1829, size: 384, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1417, file: !133, line: 1830, baseType: !622, size: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1417, file: !133, line: 1831, baseType: !704, size: 32, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1417, file: !133, line: 1832, baseType: !584, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1417, file: !133, line: 1835, baseType: !940, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !586, file: !133, line: 3398, baseType: !1424, size: 704)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !133, line: 1898, size: 704, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1435}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1424, file: !133, line: 1899, baseType: !622, size: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1424, file: !133, line: 1902, baseType: !584, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1424, file: !133, line: 1905, baseType: !887, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1424, file: !133, line: 1908, baseType: !5, size: 32, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1424, file: !133, line: 1911, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !790, line: 117, size: 128, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1432, file: !790, line: 120, baseType: !1241, size: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1424, file: !133, line: 1914, baseType: !928, size: 256, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !586, file: !133, line: 3399, baseType: !1437, size: 704)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !133, line: 2008, size: 704, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1437, file: !133, line: 2009, baseType: !622, size: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1437, file: !133, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1437, file: !133, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1437, file: !133, line: 2014, baseType: !704, size: 32, offset: 224)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1437, file: !133, line: 2016, baseType: !584, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1437, file: !133, line: 2017, baseType: !1228, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1437, file: !133, line: 2019, baseType: !584, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1437, file: !133, line: 2020, baseType: !584, size: 64, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1437, file: !133, line: 2021, baseType: !584, size: 64, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1437, file: !133, line: 2022, baseType: !584, size: 64, offset: 576)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1437, file: !133, line: 2023, baseType: !584, size: 64, offset: 640)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !586, file: !133, line: 3400, baseType: !1451, size: 832)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !133, line: 2430, size: 832, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1451, file: !133, line: 2431, baseType: !622, size: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1451, file: !133, line: 2433, baseType: !584, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1451, file: !133, line: 2434, baseType: !584, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1451, file: !133, line: 2435, baseType: !584, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1451, file: !133, line: 2436, baseType: !584, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1451, file: !133, line: 2437, baseType: !1228, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1451, file: !133, line: 2438, baseType: !584, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1451, file: !133, line: 2440, baseType: !584, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1451, file: !133, line: 2441, baseType: !584, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1451, file: !133, line: 2443, baseType: !1463, size: 128, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !133, line: 182, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !133, line: 182, size: 128, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1464, file: !133, line: 182, baseType: !1233, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !586, file: !133, line: 3401, baseType: !1468, size: 320)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !133, line: 3327, size: 320, elements: !1469)
!1469 = !{!1470, !1471, !1478}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1468, file: !133, line: 3329, baseType: !622, size: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1468, file: !133, line: 3330, baseType: !1472, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !133, line: 3320, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1473, file: !133, line: 3322, baseType: !1472, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1473, file: !133, line: 3323, baseType: !1472, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1473, file: !133, line: 3324, baseType: !584, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1468, file: !133, line: 3331, baseType: !1472, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !586, file: !133, line: 3402, baseType: !1480, size: 256)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !133, line: 1540, size: 256, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1480, file: !133, line: 1541, baseType: !622, size: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1480, file: !133, line: 1542, baseType: !1484, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !133, line: 1538, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !133, line: 1538, size: 192, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1486, file: !133, line: 1538, baseType: !1489, size: 192)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !133, line: 1537, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !133, line: 1537, size: 192, elements: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1490, file: !133, line: 1537, baseType: !5, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1490, file: !133, line: 1537, baseType: !5, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1490, file: !133, line: 1537, baseType: !1495, size: 128, offset: 64)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 128, elements: !503)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !133, line: 1535, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !133, line: 1532, size: 128, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1497, file: !133, line: 1533, baseType: !584, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1497, file: !133, line: 1534, baseType: !584, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !586, file: !133, line: 3403, baseType: !1502, size: 512)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !133, line: 1938, size: 512, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1513, !1514, !1515}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1502, file: !133, line: 1939, baseType: !622, size: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1502, file: !133, line: 1940, baseType: !704, size: 32, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1502, file: !133, line: 1941, baseType: !343, size: 32, offset: 224)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1502, file: !133, line: 1946, baseType: !1508, size: 32, offset: 256)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !133, line: 1942, size: 32, elements: !1509)
!1509 = !{!1510, !1511, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1508, file: !133, line: 1943, baseType: !361, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1508, file: !133, line: 1944, baseType: !368, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1508, file: !133, line: 1945, baseType: !132, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1502, file: !133, line: 1950, baseType: !877, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1502, file: !133, line: 1951, baseType: !877, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1502, file: !133, line: 1953, baseType: !940, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !586, file: !133, line: 3404, baseType: !1517, size: 1664)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !133, line: 3337, size: 1664, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1517, file: !133, line: 3338, baseType: !622, size: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1517, file: !133, line: 3341, baseType: !1521, size: 1472, offset: 192)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1522, line: 410, size: 1472, elements: !1523)
!1522 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1521, file: !1522, line: 412, baseType: !460, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1521, file: !1522, line: 413, baseType: !460, size: 32, offset: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1521, file: !1522, line: 414, baseType: !460, size: 32, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1521, file: !1522, line: 415, baseType: !460, size: 32, offset: 96)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1521, file: !1522, line: 416, baseType: !460, size: 32, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1521, file: !1522, line: 417, baseType: !460, size: 32, offset: 160)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1521, file: !1522, line: 418, baseType: !459, size: 8, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1521, file: !1522, line: 419, baseType: !459, size: 8, offset: 200)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1521, file: !1522, line: 420, baseType: !1533, size: 8, offset: 208)
!1533 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1521, file: !1522, line: 421, baseType: !1533, size: 8, offset: 216)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1521, file: !1522, line: 422, baseType: !1533, size: 8, offset: 224)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1521, file: !1522, line: 423, baseType: !1533, size: 8, offset: 232)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1521, file: !1522, line: 424, baseType: !1533, size: 8, offset: 240)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1521, file: !1522, line: 425, baseType: !1533, size: 8, offset: 248)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1521, file: !1522, line: 426, baseType: !1533, size: 8, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1521, file: !1522, line: 427, baseType: !1533, size: 8, offset: 264)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1521, file: !1522, line: 428, baseType: !1533, size: 8, offset: 272)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1521, file: !1522, line: 429, baseType: !1533, size: 8, offset: 280)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1521, file: !1522, line: 430, baseType: !1533, size: 8, offset: 288)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1521, file: !1522, line: 431, baseType: !1533, size: 8, offset: 296)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1521, file: !1522, line: 432, baseType: !1533, size: 8, offset: 304)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1521, file: !1522, line: 433, baseType: !1533, size: 8, offset: 312)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1521, file: !1522, line: 434, baseType: !1533, size: 8, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1521, file: !1522, line: 435, baseType: !1533, size: 8, offset: 328)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1521, file: !1522, line: 436, baseType: !1533, size: 8, offset: 336)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1521, file: !1522, line: 437, baseType: !1533, size: 8, offset: 344)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1521, file: !1522, line: 438, baseType: !1533, size: 8, offset: 352)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1521, file: !1522, line: 439, baseType: !1533, size: 8, offset: 360)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1521, file: !1522, line: 440, baseType: !1533, size: 8, offset: 368)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1521, file: !1522, line: 441, baseType: !1533, size: 8, offset: 376)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1521, file: !1522, line: 442, baseType: !1533, size: 8, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1521, file: !1522, line: 443, baseType: !1533, size: 8, offset: 392)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1521, file: !1522, line: 444, baseType: !1533, size: 8, offset: 400)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1521, file: !1522, line: 445, baseType: !1533, size: 8, offset: 408)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1521, file: !1522, line: 446, baseType: !1533, size: 8, offset: 416)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1521, file: !1522, line: 447, baseType: !1533, size: 8, offset: 424)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1521, file: !1522, line: 448, baseType: !1533, size: 8, offset: 432)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1521, file: !1522, line: 449, baseType: !1533, size: 8, offset: 440)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1521, file: !1522, line: 450, baseType: !1533, size: 8, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1521, file: !1522, line: 451, baseType: !1533, size: 8, offset: 456)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1521, file: !1522, line: 452, baseType: !1533, size: 8, offset: 464)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1521, file: !1522, line: 453, baseType: !1533, size: 8, offset: 472)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1521, file: !1522, line: 454, baseType: !1533, size: 8, offset: 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1521, file: !1522, line: 455, baseType: !1533, size: 8, offset: 488)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1521, file: !1522, line: 456, baseType: !1533, size: 8, offset: 496)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1521, file: !1522, line: 457, baseType: !1533, size: 8, offset: 504)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1521, file: !1522, line: 458, baseType: !1533, size: 8, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1521, file: !1522, line: 459, baseType: !1533, size: 8, offset: 520)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1521, file: !1522, line: 460, baseType: !1533, size: 8, offset: 528)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1521, file: !1522, line: 461, baseType: !1533, size: 8, offset: 536)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1521, file: !1522, line: 462, baseType: !1533, size: 8, offset: 544)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1521, file: !1522, line: 463, baseType: !1533, size: 8, offset: 552)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1521, file: !1522, line: 464, baseType: !1533, size: 8, offset: 560)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1521, file: !1522, line: 465, baseType: !1533, size: 8, offset: 568)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1521, file: !1522, line: 466, baseType: !1533, size: 8, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1521, file: !1522, line: 467, baseType: !1533, size: 8, offset: 584)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1521, file: !1522, line: 468, baseType: !1533, size: 8, offset: 592)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1521, file: !1522, line: 469, baseType: !1533, size: 8, offset: 600)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1521, file: !1522, line: 470, baseType: !1533, size: 8, offset: 608)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1521, file: !1522, line: 471, baseType: !1533, size: 8, offset: 616)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1521, file: !1522, line: 472, baseType: !1533, size: 8, offset: 624)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1521, file: !1522, line: 473, baseType: !1533, size: 8, offset: 632)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1521, file: !1522, line: 474, baseType: !1533, size: 8, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1521, file: !1522, line: 475, baseType: !1533, size: 8, offset: 648)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1521, file: !1522, line: 476, baseType: !1533, size: 8, offset: 656)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1521, file: !1522, line: 477, baseType: !1533, size: 8, offset: 664)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1521, file: !1522, line: 478, baseType: !1533, size: 8, offset: 672)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1521, file: !1522, line: 479, baseType: !1533, size: 8, offset: 680)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1521, file: !1522, line: 480, baseType: !1533, size: 8, offset: 688)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1521, file: !1522, line: 481, baseType: !1533, size: 8, offset: 696)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1521, file: !1522, line: 482, baseType: !1533, size: 8, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1521, file: !1522, line: 483, baseType: !1533, size: 8, offset: 712)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1521, file: !1522, line: 484, baseType: !1533, size: 8, offset: 720)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1521, file: !1522, line: 485, baseType: !1533, size: 8, offset: 728)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1521, file: !1522, line: 486, baseType: !1533, size: 8, offset: 736)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1521, file: !1522, line: 487, baseType: !1533, size: 8, offset: 744)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1521, file: !1522, line: 488, baseType: !1533, size: 8, offset: 752)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1521, file: !1522, line: 489, baseType: !1533, size: 8, offset: 760)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1521, file: !1522, line: 490, baseType: !1533, size: 8, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1521, file: !1522, line: 491, baseType: !1533, size: 8, offset: 776)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1521, file: !1522, line: 492, baseType: !1533, size: 8, offset: 784)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1521, file: !1522, line: 493, baseType: !1533, size: 8, offset: 792)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1521, file: !1522, line: 494, baseType: !1533, size: 8, offset: 800)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1521, file: !1522, line: 495, baseType: !1533, size: 8, offset: 808)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1521, file: !1522, line: 496, baseType: !1533, size: 8, offset: 816)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1521, file: !1522, line: 497, baseType: !1533, size: 8, offset: 824)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1521, file: !1522, line: 498, baseType: !1533, size: 8, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1521, file: !1522, line: 499, baseType: !1533, size: 8, offset: 840)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1521, file: !1522, line: 500, baseType: !1533, size: 8, offset: 848)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1521, file: !1522, line: 501, baseType: !1533, size: 8, offset: 856)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1521, file: !1522, line: 502, baseType: !1533, size: 8, offset: 864)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1521, file: !1522, line: 503, baseType: !1533, size: 8, offset: 872)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1521, file: !1522, line: 504, baseType: !1533, size: 8, offset: 880)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1521, file: !1522, line: 505, baseType: !1533, size: 8, offset: 888)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1521, file: !1522, line: 506, baseType: !1533, size: 8, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1521, file: !1522, line: 507, baseType: !1533, size: 8, offset: 904)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1521, file: !1522, line: 508, baseType: !1533, size: 8, offset: 912)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1521, file: !1522, line: 509, baseType: !1533, size: 8, offset: 920)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1521, file: !1522, line: 510, baseType: !1533, size: 8, offset: 928)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1521, file: !1522, line: 511, baseType: !1533, size: 8, offset: 936)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1521, file: !1522, line: 512, baseType: !1533, size: 8, offset: 944)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1521, file: !1522, line: 513, baseType: !1533, size: 8, offset: 952)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1521, file: !1522, line: 514, baseType: !1533, size: 8, offset: 960)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1521, file: !1522, line: 515, baseType: !1533, size: 8, offset: 968)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1521, file: !1522, line: 516, baseType: !1533, size: 8, offset: 976)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1521, file: !1522, line: 517, baseType: !1533, size: 8, offset: 984)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1521, file: !1522, line: 518, baseType: !1533, size: 8, offset: 992)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1521, file: !1522, line: 519, baseType: !1533, size: 8, offset: 1000)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1521, file: !1522, line: 520, baseType: !1533, size: 8, offset: 1008)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1521, file: !1522, line: 521, baseType: !1533, size: 8, offset: 1016)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1521, file: !1522, line: 522, baseType: !1533, size: 8, offset: 1024)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1521, file: !1522, line: 523, baseType: !1533, size: 8, offset: 1032)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1521, file: !1522, line: 524, baseType: !1533, size: 8, offset: 1040)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1521, file: !1522, line: 525, baseType: !1533, size: 8, offset: 1048)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1521, file: !1522, line: 526, baseType: !1533, size: 8, offset: 1056)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1521, file: !1522, line: 527, baseType: !1533, size: 8, offset: 1064)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1521, file: !1522, line: 528, baseType: !1533, size: 8, offset: 1072)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1521, file: !1522, line: 529, baseType: !1533, size: 8, offset: 1080)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1521, file: !1522, line: 530, baseType: !1533, size: 8, offset: 1088)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1521, file: !1522, line: 531, baseType: !1533, size: 8, offset: 1096)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1521, file: !1522, line: 532, baseType: !1533, size: 8, offset: 1104)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1521, file: !1522, line: 533, baseType: !1533, size: 8, offset: 1112)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1521, file: !1522, line: 534, baseType: !1533, size: 8, offset: 1120)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1521, file: !1522, line: 535, baseType: !1533, size: 8, offset: 1128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1521, file: !1522, line: 536, baseType: !1533, size: 8, offset: 1136)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1521, file: !1522, line: 537, baseType: !1533, size: 8, offset: 1144)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1521, file: !1522, line: 538, baseType: !1533, size: 8, offset: 1152)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1521, file: !1522, line: 539, baseType: !1533, size: 8, offset: 1160)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1521, file: !1522, line: 540, baseType: !1533, size: 8, offset: 1168)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1521, file: !1522, line: 541, baseType: !1533, size: 8, offset: 1176)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1521, file: !1522, line: 542, baseType: !1533, size: 8, offset: 1184)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1521, file: !1522, line: 543, baseType: !1533, size: 8, offset: 1192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1521, file: !1522, line: 544, baseType: !1533, size: 8, offset: 1200)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1521, file: !1522, line: 545, baseType: !1533, size: 8, offset: 1208)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1521, file: !1522, line: 546, baseType: !1533, size: 8, offset: 1216)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1521, file: !1522, line: 547, baseType: !1533, size: 8, offset: 1224)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1521, file: !1522, line: 548, baseType: !1533, size: 8, offset: 1232)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1521, file: !1522, line: 549, baseType: !1533, size: 8, offset: 1240)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1521, file: !1522, line: 550, baseType: !1533, size: 8, offset: 1248)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1521, file: !1522, line: 551, baseType: !1533, size: 8, offset: 1256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1521, file: !1522, line: 552, baseType: !1533, size: 8, offset: 1264)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1521, file: !1522, line: 553, baseType: !1533, size: 8, offset: 1272)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1521, file: !1522, line: 554, baseType: !1533, size: 8, offset: 1280)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1521, file: !1522, line: 555, baseType: !1533, size: 8, offset: 1288)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1521, file: !1522, line: 556, baseType: !1533, size: 8, offset: 1296)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1521, file: !1522, line: 557, baseType: !1533, size: 8, offset: 1304)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1521, file: !1522, line: 558, baseType: !1533, size: 8, offset: 1312)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1521, file: !1522, line: 559, baseType: !1533, size: 8, offset: 1320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1521, file: !1522, line: 560, baseType: !1533, size: 8, offset: 1328)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1521, file: !1522, line: 561, baseType: !1533, size: 8, offset: 1336)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1521, file: !1522, line: 562, baseType: !1533, size: 8, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1521, file: !1522, line: 563, baseType: !1533, size: 8, offset: 1352)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1521, file: !1522, line: 564, baseType: !1533, size: 8, offset: 1360)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1521, file: !1522, line: 565, baseType: !1533, size: 8, offset: 1368)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1521, file: !1522, line: 566, baseType: !1533, size: 8, offset: 1376)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1521, file: !1522, line: 567, baseType: !1533, size: 8, offset: 1384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1521, file: !1522, line: 568, baseType: !1533, size: 8, offset: 1392)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1521, file: !1522, line: 569, baseType: !1533, size: 8, offset: 1400)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1521, file: !1522, line: 570, baseType: !1533, size: 8, offset: 1408)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1521, file: !1522, line: 571, baseType: !1533, size: 8, offset: 1416)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1521, file: !1522, line: 572, baseType: !1533, size: 8, offset: 1424)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1521, file: !1522, line: 573, baseType: !1533, size: 8, offset: 1432)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1521, file: !1522, line: 574, baseType: !1533, size: 8, offset: 1440)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !586, file: !133, line: 3405, baseType: !1689, size: 384)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !133, line: 3352, size: 384, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1689, file: !133, line: 3353, baseType: !622, size: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1689, file: !133, line: 3356, baseType: !1693, size: 192, offset: 192)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1522, line: 578, size: 192, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1693, file: !1522, line: 580, baseType: !460, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1693, file: !1522, line: 581, baseType: !460, size: 32, offset: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1693, file: !1522, line: 582, baseType: !460, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1693, file: !1522, line: 583, baseType: !460, size: 32, offset: 96)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1693, file: !1522, line: 584, baseType: !459, size: 8, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1693, file: !1522, line: 585, baseType: !459, size: 8, offset: 136)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1693, file: !1522, line: 586, baseType: !459, size: 8, offset: 144)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1693, file: !1522, line: 587, baseType: !459, size: 8, offset: 152)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1693, file: !1522, line: 588, baseType: !459, size: 8, offset: 160)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1693, file: !1522, line: 589, baseType: !459, size: 8, offset: 168)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1693, file: !1522, line: 590, baseType: !459, size: 8, offset: 176)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !489, file: !471, line: 178, baseType: !851, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !489, file: !471, line: 179, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !471, line: 150, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !471, line: 142, size: 320, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1710, file: !471, line: 144, baseType: !584, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1710, file: !471, line: 145, baseType: !467, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1710, file: !471, line: 146, baseType: !467, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1710, file: !471, line: 147, baseType: !1381, size: 32, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1710, file: !471, line: 148, baseType: !5, size: 32, offset: 224)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1710, file: !471, line: 149, baseType: !459, size: 8, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !489, file: !471, line: 180, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !471, line: 162, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !471, line: 159, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1721, file: !471, line: 160, baseType: !584, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1721, file: !471, line: 161, baseType: !555, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !489, file: !471, line: 181, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !471, line: 181, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !484, file: !471, line: 317, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 64, elements: !503)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !484, file: !471, line: 318, baseType: !1731, size: 320)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !471, line: 188, size: 320, elements: !1732)
!1732 = !{!1733, !1735, !1758}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1731, file: !471, line: 190, baseType: !1734, size: 192)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 192, elements: !655)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1731, file: !471, line: 193, baseType: !1736, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !471, line: 206, size: 320, elements: !1738)
!1738 = !{!1739, !1743, !1744, !1745, !1757}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1737, file: !471, line: 208, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !468, line: 62, baseType: !1742)
!1742 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !468, line: 61, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1737, file: !471, line: 211, baseType: !5, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1737, file: !471, line: 214, baseType: !555, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1737, file: !471, line: 224, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !471, line: 202, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !471, line: 202, size: 128, elements: !1749)
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1748, file: !471, line: 202, baseType: !1751, size: 128)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !471, line: 200, baseType: !1752)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !471, line: 200, size: 128, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1752, file: !471, line: 200, baseType: !5, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1752, file: !471, line: 200, baseType: !5, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1752, file: !471, line: 200, baseType: !502, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1737, file: !471, line: 234, baseType: !1746, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1731, file: !471, line: 197, baseType: !555, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !484, file: !471, line: 319, baseType: !644, size: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !484, file: !471, line: 320, baseType: !663, size: 192)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "elim_graph", file: !1, line: 95, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elim_graph", file: !1, line: 64, size: 704, elements: !1764)
!1764 = !{!1765, !1766, !1780, !1781, !1794, !1805, !1806, !1840, !1841, !1842, !1843}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1763, file: !1, line: 66, baseType: !460, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1763, file: !1, line: 69, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1769, line: 32, baseType: !1770)
!1769 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1769, line: 32, size: 96, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1770, file: !1769, line: 32, baseType: !1773, size: 96)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1769, line: 31, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1769, line: 31, size: 96, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1774, file: !1769, line: 31, baseType: !5, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1774, file: !1769, line: 31, baseType: !5, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1774, file: !1769, line: 31, baseType: !1779, size: 32, offset: 64)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 32, elements: !503)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "edge_list", scope: !1763, file: !1, line: 72, baseType: !1767, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "edge_locus", scope: !1763, file: !1, line: 75, baseType: !1782, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_source_location_heap", file: !1, line: 41, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_source_location_heap", file: !1, line: 41, size: 96, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1784, file: !1, line: 41, baseType: !1787, size: 96)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_source_location_base", file: !1, line: 40, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_source_location_base", file: !1, line: 40, size: 96, elements: !1789)
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1788, file: !1, line: 40, baseType: !5, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1788, file: !1, line: 40, baseType: !5, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1788, file: !1, line: 40, baseType: !1793, size: 32, offset: 64)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 32, elements: !503)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1763, file: !1, line: 78, baseType: !1795, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1796, line: 45, baseType: !1797)
!1796 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1796, line: 39, size: 192, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1798, file: !1796, line: 41, baseType: !458, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1798, file: !1796, line: 42, baseType: !5, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1798, file: !1796, line: 43, baseType: !5, size: 32, offset: 96)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1798, file: !1796, line: 44, baseType: !1804, size: 64, offset: 128)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 64, elements: !503)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1763, file: !1, line: 81, baseType: !1767, size: 64, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1763, file: !1, line: 84, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_map", file: !1808, line: 77, baseType: !1809)
!1808 = !DIFile(filename: "./tree-ssa-live.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_var_map", file: !1808, line: 54, size: 448, elements: !1811)
!1811 = !{!1812, !1827, !1829, !1830, !1831, !1832, !1833, !1834}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "var_partition", scope: !1810, file: !1808, line: 57, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "partition", file: !1814, line: 65, baseType: !1815)
!1814 = !DIFile(filename: "./include/partition.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_def", file: !1814, line: 59, size: 256, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "num_elements", scope: !1816, file: !1814, line: 62, baseType: !460, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1816, file: !1814, line: 64, baseType: !1820, size: 192, offset: 64)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1821, size: 192, elements: !503)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_elem", file: !1814, line: 46, size: 192, elements: !1822)
!1822 = !{!1823, !1824, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "class_element", scope: !1821, file: !1814, line: 50, baseType: !460, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1821, file: !1814, line: 53, baseType: !1825, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "class_count", scope: !1821, file: !1814, line: 56, baseType: !5, size: 32, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_view", scope: !1810, file: !1808, line: 60, baseType: !1828, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "view_to_partition", scope: !1810, file: !1808, line: 61, baseType: !1828, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "num_partitions", scope: !1810, file: !1808, line: 64, baseType: !5, size: 32, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "partition_size", scope: !1810, file: !1808, line: 67, baseType: !5, size: 32, offset: 224)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "num_basevars", scope: !1810, file: !1808, line: 70, baseType: !460, size: 32, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_base_index", scope: !1810, file: !1808, line: 73, baseType: !1828, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "basevars", scope: !1810, file: !1808, line: 76, baseType: !1835, size: 64, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !133, line: 184, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !133, line: 184, size: 128, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1837, file: !133, line: 184, baseType: !1233, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1763, file: !1, line: 87, baseType: !867, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "const_dests", scope: !1763, file: !1, line: 90, baseType: !1767, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "const_copies", scope: !1763, file: !1, line: 91, baseType: !1835, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "copy_locus", scope: !1763, file: !1, line: 94, baseType: !1782, size: 64, offset: 640)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !451, line: 30, baseType: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !133, line: 1893, baseType: !928)
!1847 = !{i32 2, !"Dwarf Version", i32 4}
!1848 = !{i32 2, !"Debug Info Version", i32 3}
!1849 = !{i32 1, !"wchar_size", i32 4}
!1850 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1851 = distinct !DISubprogram(name: "vprintf", scope: !1852, file: !1852, line: 39, type: !1853, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1863)
!1852 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!460, !1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !465)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1862}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1857, file: !1, baseType: !5, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1857, file: !1, baseType: !5, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1857, file: !1, baseType: !464, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1857, file: !1, baseType: !464, size: 64, offset: 128)
!1863 = !{!1864, !1865}
!1864 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1851, file: !1852, line: 39, type: !1855)
!1865 = !DILocalVariable(name: "__arg", arg: 2, scope: !1851, file: !1852, line: 39, type: !1856)
!1866 = !DILocation(line: 0, scope: !1851)
!1867 = !DILocation(line: 41, column: 20, scope: !1851)
!1868 = !DILocation(line: 41, column: 10, scope: !1851)
!1869 = !DILocation(line: 41, column: 3, scope: !1851)
!1870 = distinct !DISubprogram(name: "getchar", scope: !1852, file: !1852, line: 47, type: !1871, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!460}
!1873 = !{}
!1874 = !DILocation(line: 49, column: 16, scope: !1870)
!1875 = !DILocation(line: 49, column: 10, scope: !1870)
!1876 = !DILocation(line: 49, column: 3, scope: !1870)
!1877 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1852, file: !1852, line: 56, type: !1878, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1931)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!460, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1882, line: 7, baseType: !1883)
!1882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1884, line: 49, size: 1728, elements: !1885)
!1884 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1901, !1903, !1904, !1905, !1908, !1910, !1911, !1912, !1915, !1917, !1920, !1923, !1924, !1925, !1926, !1927}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1883, file: !1884, line: 51, baseType: !460, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1883, file: !1884, line: 54, baseType: !462, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1883, file: !1884, line: 55, baseType: !462, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1883, file: !1884, line: 56, baseType: !462, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1883, file: !1884, line: 57, baseType: !462, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1883, file: !1884, line: 58, baseType: !462, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1883, file: !1884, line: 59, baseType: !462, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1883, file: !1884, line: 60, baseType: !462, size: 64, offset: 448)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1883, file: !1884, line: 61, baseType: !462, size: 64, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1883, file: !1884, line: 64, baseType: !462, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1883, file: !1884, line: 65, baseType: !462, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1883, file: !1884, line: 66, baseType: !462, size: 64, offset: 704)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1883, file: !1884, line: 68, baseType: !1899, size: 64, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1884, line: 36, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1883, file: !1884, line: 70, baseType: !1902, size: 64, offset: 832)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1883, file: !1884, line: 72, baseType: !460, size: 32, offset: 896)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1883, file: !1884, line: 73, baseType: !460, size: 32, offset: 928)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1883, file: !1884, line: 74, baseType: !1906, size: 64, offset: 960)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1907, line: 152, baseType: !555)
!1907 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1883, file: !1884, line: 77, baseType: !1909, size: 16, offset: 1024)
!1909 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1883, file: !1884, line: 78, baseType: !1533, size: 8, offset: 1040)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1883, file: !1884, line: 79, baseType: !679, size: 8, offset: 1048)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1883, file: !1884, line: 81, baseType: !1913, size: 64, offset: 1088)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1884, line: 43, baseType: null)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1883, file: !1884, line: 89, baseType: !1916, size: 64, offset: 1152)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1907, line: 153, baseType: !555)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1883, file: !1884, line: 91, baseType: !1918, size: 64, offset: 1216)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1884, line: 37, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1883, file: !1884, line: 92, baseType: !1921, size: 64, offset: 1280)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1884, line: 38, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1883, file: !1884, line: 93, baseType: !1902, size: 64, offset: 1344)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1883, file: !1884, line: 94, baseType: !464, size: 64, offset: 1408)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1883, file: !1884, line: 95, baseType: !1032, size: 64, offset: 1472)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1883, file: !1884, line: 96, baseType: !460, size: 32, offset: 1536)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1883, file: !1884, line: 98, baseType: !1928, size: 160, offset: 1568)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 160, elements: !1929)
!1929 = !{!1930}
!1930 = !DISubrange(count: 20)
!1931 = !{!1932}
!1932 = !DILocalVariable(name: "__fp", arg: 1, scope: !1877, file: !1852, line: 56, type: !1880)
!1933 = !DILocation(line: 0, scope: !1877)
!1934 = !DILocation(line: 58, column: 10, scope: !1877)
!1935 = !DILocation(line: 58, column: 3, scope: !1877)
!1936 = distinct !DISubprogram(name: "getc_unlocked", scope: !1852, file: !1852, line: 66, type: !1878, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1937)
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "__fp", arg: 1, scope: !1936, file: !1852, line: 66, type: !1880)
!1939 = !DILocation(line: 0, scope: !1936)
!1940 = !DILocation(line: 68, column: 10, scope: !1936)
!1941 = !DILocation(line: 68, column: 3, scope: !1936)
!1942 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1852, file: !1852, line: 73, type: !1871, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1873)
!1943 = !DILocation(line: 75, column: 10, scope: !1942)
!1944 = !DILocation(line: 75, column: 3, scope: !1942)
!1945 = distinct !DISubprogram(name: "putchar", scope: !1852, file: !1852, line: 82, type: !1946, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!460, !460}
!1948 = !{!1949}
!1949 = !DILocalVariable(name: "__c", arg: 1, scope: !1945, file: !1852, line: 82, type: !460)
!1950 = !DILocation(line: 0, scope: !1945)
!1951 = !DILocation(line: 84, column: 21, scope: !1945)
!1952 = !DILocation(line: 84, column: 10, scope: !1945)
!1953 = !DILocation(line: 84, column: 3, scope: !1945)
!1954 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1852, file: !1852, line: 91, type: !1955, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!460, !460, !1880}
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "__c", arg: 1, scope: !1954, file: !1852, line: 91, type: !460)
!1959 = !DILocalVariable(name: "__stream", arg: 2, scope: !1954, file: !1852, line: 91, type: !1880)
!1960 = !DILocation(line: 0, scope: !1954)
!1961 = !DILocation(line: 93, column: 10, scope: !1954)
!1962 = !DILocation(line: 93, column: 3, scope: !1954)
!1963 = distinct !DISubprogram(name: "putc_unlocked", scope: !1852, file: !1852, line: 101, type: !1955, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1964)
!1964 = !{!1965, !1966}
!1965 = !DILocalVariable(name: "__c", arg: 1, scope: !1963, file: !1852, line: 101, type: !460)
!1966 = !DILocalVariable(name: "__stream", arg: 2, scope: !1963, file: !1852, line: 101, type: !1880)
!1967 = !DILocation(line: 0, scope: !1963)
!1968 = !DILocation(line: 103, column: 10, scope: !1963)
!1969 = !DILocation(line: 103, column: 3, scope: !1963)
!1970 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1852, file: !1852, line: 108, type: !1946, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1971)
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "__c", arg: 1, scope: !1970, file: !1852, line: 108, type: !460)
!1973 = !DILocation(line: 0, scope: !1970)
!1974 = !DILocation(line: 110, column: 10, scope: !1970)
!1975 = !DILocation(line: 110, column: 3, scope: !1970)
!1976 = distinct !DISubprogram(name: "getline", scope: !1852, file: !1852, line: 118, type: !1977, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1981)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1979, !461, !1980, !1880}
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1907, line: 193, baseType: !555)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1981 = !{!1982, !1983, !1984}
!1982 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1976, file: !1852, line: 118, type: !461)
!1983 = !DILocalVariable(name: "__n", arg: 2, scope: !1976, file: !1852, line: 118, type: !1980)
!1984 = !DILocalVariable(name: "__stream", arg: 3, scope: !1976, file: !1852, line: 118, type: !1880)
!1985 = !DILocation(line: 0, scope: !1976)
!1986 = !DILocation(line: 120, column: 10, scope: !1976)
!1987 = !DILocation(line: 120, column: 3, scope: !1976)
!1988 = distinct !DISubprogram(name: "feof_unlocked", scope: !1852, file: !1852, line: 128, type: !1878, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1989)
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "__stream", arg: 1, scope: !1988, file: !1852, line: 128, type: !1880)
!1991 = !DILocation(line: 0, scope: !1988)
!1992 = !DILocation(line: 130, column: 10, scope: !1988)
!1993 = !DILocation(line: 130, column: 3, scope: !1988)
!1994 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1852, file: !1852, line: 135, type: !1878, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1995)
!1995 = !{!1996}
!1996 = !DILocalVariable(name: "__stream", arg: 1, scope: !1994, file: !1852, line: 135, type: !1880)
!1997 = !DILocation(line: 0, scope: !1994)
!1998 = !DILocation(line: 137, column: 10, scope: !1994)
!1999 = !DILocation(line: 137, column: 3, scope: !1994)
!2000 = distinct !DISubprogram(name: "tolower", scope: !2001, file: !2001, line: 207, type: !1946, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2002)
!2001 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2002 = !{!2003}
!2003 = !DILocalVariable(name: "__c", arg: 1, scope: !2000, file: !2001, line: 207, type: !460)
!2004 = !DILocation(line: 0, scope: !2000)
!2005 = !DILocation(line: 209, column: 22, scope: !2000)
!2006 = !DILocation(line: 209, column: 39, scope: !2000)
!2007 = !DILocation(line: 209, column: 38, scope: !2000)
!2008 = !DILocation(line: 209, column: 37, scope: !2000)
!2009 = !DILocation(line: 209, column: 10, scope: !2000)
!2010 = !DILocation(line: 209, column: 3, scope: !2000)
!2011 = distinct !DISubprogram(name: "toupper", scope: !2001, file: !2001, line: 213, type: !1946, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2012)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "__c", arg: 1, scope: !2011, file: !2001, line: 213, type: !460)
!2014 = !DILocation(line: 0, scope: !2011)
!2015 = !DILocation(line: 215, column: 22, scope: !2011)
!2016 = !DILocation(line: 215, column: 39, scope: !2011)
!2017 = !DILocation(line: 215, column: 38, scope: !2011)
!2018 = !DILocation(line: 215, column: 37, scope: !2011)
!2019 = !DILocation(line: 215, column: 10, scope: !2011)
!2020 = !DILocation(line: 215, column: 3, scope: !2011)
!2021 = distinct !DISubprogram(name: "atoi", scope: !2022, file: !2022, line: 361, type: !2023, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2025)
!2022 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!460, !465}
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2021, file: !2022, line: 361, type: !465)
!2027 = !DILocation(line: 0, scope: !2021)
!2028 = !DILocation(line: 363, column: 16, scope: !2021)
!2029 = !DILocation(line: 363, column: 10, scope: !2021)
!2030 = !DILocation(line: 363, column: 3, scope: !2021)
!2031 = distinct !DISubprogram(name: "atol", scope: !2022, file: !2022, line: 366, type: !2032, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!555, !465}
!2034 = !{!2035}
!2035 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2031, file: !2022, line: 366, type: !465)
!2036 = !DILocation(line: 0, scope: !2031)
!2037 = !DILocation(line: 368, column: 10, scope: !2031)
!2038 = !DILocation(line: 368, column: 3, scope: !2031)
!2039 = distinct !DISubprogram(name: "atoll", scope: !2022, file: !2022, line: 373, type: !2040, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2043)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!2042, !465}
!2042 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2043 = !{!2044}
!2044 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2039, file: !2022, line: 373, type: !465)
!2045 = !DILocation(line: 0, scope: !2039)
!2046 = !DILocation(line: 375, column: 10, scope: !2039)
!2047 = !DILocation(line: 375, column: 3, scope: !2039)
!2048 = distinct !DISubprogram(name: "bsearch", scope: !2049, file: !2049, line: 20, type: !2050, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2053)
!2049 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!464, !1176, !1176, !1032, !1032, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2022, line: 808, baseType: !1180)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!2054 = !DILocalVariable(name: "__key", arg: 1, scope: !2048, file: !2049, line: 20, type: !1176)
!2055 = !DILocalVariable(name: "__base", arg: 2, scope: !2048, file: !2049, line: 20, type: !1176)
!2056 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2048, file: !2049, line: 20, type: !1032)
!2057 = !DILocalVariable(name: "__size", arg: 4, scope: !2048, file: !2049, line: 20, type: !1032)
!2058 = !DILocalVariable(name: "__compar", arg: 5, scope: !2048, file: !2049, line: 21, type: !2052)
!2059 = !DILocalVariable(name: "__l", scope: !2048, file: !2049, line: 23, type: !1032)
!2060 = !DILocalVariable(name: "__u", scope: !2048, file: !2049, line: 23, type: !1032)
!2061 = !DILocalVariable(name: "__idx", scope: !2048, file: !2049, line: 23, type: !1032)
!2062 = !DILocalVariable(name: "__p", scope: !2048, file: !2049, line: 24, type: !1176)
!2063 = !DILocalVariable(name: "__comparison", scope: !2048, file: !2049, line: 25, type: !460)
!2064 = !DILocation(line: 0, scope: !2048)
!2065 = !DILocation(line: 29, column: 3, scope: !2048)
!2066 = !DILocation(line: 27, column: 7, scope: !2048)
!2067 = !DILocation(line: 29, column: 14, scope: !2048)
!2068 = !DILocation(line: 31, column: 20, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2048, file: !2049, line: 30, column: 5)
!2070 = !DILocation(line: 31, column: 27, scope: !2069)
!2071 = !DILocation(line: 32, column: 56, scope: !2069)
!2072 = !DILocation(line: 32, column: 47, scope: !2069)
!2073 = !DILocation(line: 33, column: 22, scope: !2069)
!2074 = !DILocation(line: 34, column: 24, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2069, file: !2049, line: 34, column: 11)
!2076 = !DILocation(line: 34, column: 11, scope: !2069)
!2077 = !DILocation(line: 36, column: 29, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !2049, line: 36, column: 16)
!2079 = !DILocation(line: 36, column: 16, scope: !2075)
!2080 = !DILocation(line: 37, column: 14, scope: !2078)
!2081 = distinct !{!2081, !2065, !2082}
!2082 = !DILocation(line: 40, column: 5, scope: !2048)
!2083 = !DILocation(line: 43, column: 1, scope: !2048)
!2084 = distinct !DISubprogram(name: "atof", scope: !2085, file: !2085, line: 25, type: !2086, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2089)
!2085 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2088, !465}
!2088 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2089 = !{!2090}
!2090 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2084, file: !2085, line: 25, type: !465)
!2091 = !DILocation(line: 0, scope: !2084)
!2092 = !DILocation(line: 27, column: 10, scope: !2084)
!2093 = !DILocation(line: 27, column: 3, scope: !2084)
!2094 = distinct !DISubprogram(name: "strtoimax", scope: !2095, file: !2095, line: 324, type: !2096, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2102)
!2095 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!2098, !1855, !2101, !460}
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2099, line: 101, baseType: !2100)
!2099 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1907, line: 72, baseType: !555)
!2101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !461)
!2102 = !{!2103, !2104, !2105}
!2103 = !DILocalVariable(name: "nptr", arg: 1, scope: !2094, file: !2095, line: 324, type: !1855)
!2104 = !DILocalVariable(name: "endptr", arg: 2, scope: !2094, file: !2095, line: 324, type: !2101)
!2105 = !DILocalVariable(name: "base", arg: 3, scope: !2094, file: !2095, line: 324, type: !460)
!2106 = !DILocation(line: 0, scope: !2094)
!2107 = !DILocation(line: 327, column: 10, scope: !2094)
!2108 = !DILocation(line: 327, column: 3, scope: !2094)
!2109 = distinct !DISubprogram(name: "strtoumax", scope: !2095, file: !2095, line: 336, type: !2110, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2114)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!2112, !1855, !2101, !460}
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2099, line: 102, baseType: !2113)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1907, line: 73, baseType: !538)
!2114 = !{!2115, !2116, !2117}
!2115 = !DILocalVariable(name: "nptr", arg: 1, scope: !2109, file: !2095, line: 336, type: !1855)
!2116 = !DILocalVariable(name: "endptr", arg: 2, scope: !2109, file: !2095, line: 336, type: !2101)
!2117 = !DILocalVariable(name: "base", arg: 3, scope: !2109, file: !2095, line: 336, type: !460)
!2118 = !DILocation(line: 0, scope: !2109)
!2119 = !DILocation(line: 339, column: 10, scope: !2109)
!2120 = !DILocation(line: 339, column: 3, scope: !2109)
!2121 = distinct !DISubprogram(name: "wcstoimax", scope: !2095, file: !2095, line: 348, type: !2122, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2131)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2098, !2124, !2128, !460}
!2124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2125)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2095, line: 34, baseType: !460)
!2128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2129)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2131 = !{!2132, !2133, !2134}
!2132 = !DILocalVariable(name: "nptr", arg: 1, scope: !2121, file: !2095, line: 348, type: !2124)
!2133 = !DILocalVariable(name: "endptr", arg: 2, scope: !2121, file: !2095, line: 348, type: !2128)
!2134 = !DILocalVariable(name: "base", arg: 3, scope: !2121, file: !2095, line: 348, type: !460)
!2135 = !DILocation(line: 0, scope: !2121)
!2136 = !DILocation(line: 351, column: 10, scope: !2121)
!2137 = !DILocation(line: 351, column: 3, scope: !2121)
!2138 = distinct !DISubprogram(name: "wcstoumax", scope: !2095, file: !2095, line: 362, type: !2139, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!2112, !2124, !2128, !460}
!2141 = !{!2142, !2143, !2144}
!2142 = !DILocalVariable(name: "nptr", arg: 1, scope: !2138, file: !2095, line: 362, type: !2124)
!2143 = !DILocalVariable(name: "endptr", arg: 2, scope: !2138, file: !2095, line: 362, type: !2128)
!2144 = !DILocalVariable(name: "base", arg: 3, scope: !2138, file: !2095, line: 362, type: !460)
!2145 = !DILocation(line: 0, scope: !2138)
!2146 = !DILocation(line: 365, column: 10, scope: !2138)
!2147 = !DILocation(line: 365, column: 3, scope: !2138)
!2148 = distinct !DISubprogram(name: "stat", scope: !2149, file: !2149, line: 453, type: !2150, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2187)
!2149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!460, !465, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2154, line: 46, size: 1152, elements: !2155)
!2154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2155 = !{!2156, !2158, !2160, !2162, !2164, !2166, !2168, !2169, !2170, !2171, !2173, !2175, !2183, !2184, !2185}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2153, file: !2154, line: 48, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1907, line: 145, baseType: !538)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2153, file: !2154, line: 53, baseType: !2159, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1907, line: 148, baseType: !538)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2153, file: !2154, line: 61, baseType: !2161, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1907, line: 151, baseType: !538)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2153, file: !2154, line: 62, baseType: !2163, size: 32, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1907, line: 150, baseType: !5)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2153, file: !2154, line: 64, baseType: !2165, size: 32, offset: 224)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1907, line: 146, baseType: !5)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2153, file: !2154, line: 65, baseType: !2167, size: 32, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1907, line: 147, baseType: !5)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2153, file: !2154, line: 67, baseType: !460, size: 32, offset: 288)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2153, file: !2154, line: 69, baseType: !2157, size: 64, offset: 320)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2153, file: !2154, line: 74, baseType: !1906, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2153, file: !2154, line: 78, baseType: !2172, size: 64, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1907, line: 174, baseType: !555)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2153, file: !2154, line: 80, baseType: !2174, size: 64, offset: 512)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1907, line: 179, baseType: !555)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2153, file: !2154, line: 91, baseType: !2176, size: 128, offset: 576)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2177, line: 10, size: 128, elements: !2178)
!2177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2178 = !{!2179, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2176, file: !2177, line: 12, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1907, line: 160, baseType: !555)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2176, file: !2177, line: 16, baseType: !2182, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1907, line: 196, baseType: !555)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2153, file: !2154, line: 92, baseType: !2176, size: 128, offset: 704)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2153, file: !2154, line: 93, baseType: !2176, size: 128, offset: 832)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2153, file: !2154, line: 106, baseType: !2186, size: 192, offset: 960)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, size: 192, elements: !655)
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "__path", arg: 1, scope: !2148, file: !2149, line: 453, type: !465)
!2189 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2148, file: !2149, line: 453, type: !2152)
!2190 = !DILocation(line: 0, scope: !2148)
!2191 = !DILocation(line: 455, column: 10, scope: !2148)
!2192 = !DILocation(line: 455, column: 3, scope: !2148)
!2193 = distinct !DISubprogram(name: "lstat", scope: !2149, file: !2149, line: 460, type: !2150, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2194)
!2194 = !{!2195, !2196}
!2195 = !DILocalVariable(name: "__path", arg: 1, scope: !2193, file: !2149, line: 460, type: !465)
!2196 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2193, file: !2149, line: 460, type: !2152)
!2197 = !DILocation(line: 0, scope: !2193)
!2198 = !DILocation(line: 462, column: 10, scope: !2193)
!2199 = !DILocation(line: 462, column: 3, scope: !2193)
!2200 = distinct !DISubprogram(name: "fstat", scope: !2149, file: !2149, line: 467, type: !2201, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!460, !460, !2152}
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "__fd", arg: 1, scope: !2200, file: !2149, line: 467, type: !460)
!2205 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2200, file: !2149, line: 467, type: !2152)
!2206 = !DILocation(line: 0, scope: !2200)
!2207 = !DILocation(line: 469, column: 10, scope: !2200)
!2208 = !DILocation(line: 469, column: 3, scope: !2200)
!2209 = distinct !DISubprogram(name: "fstatat", scope: !2149, file: !2149, line: 474, type: !2210, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!460, !460, !465, !2152, !460}
!2212 = !{!2213, !2214, !2215, !2216}
!2213 = !DILocalVariable(name: "__fd", arg: 1, scope: !2209, file: !2149, line: 474, type: !460)
!2214 = !DILocalVariable(name: "__filename", arg: 2, scope: !2209, file: !2149, line: 474, type: !465)
!2215 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2209, file: !2149, line: 474, type: !2152)
!2216 = !DILocalVariable(name: "__flag", arg: 4, scope: !2209, file: !2149, line: 474, type: !460)
!2217 = !DILocation(line: 0, scope: !2209)
!2218 = !DILocation(line: 477, column: 10, scope: !2209)
!2219 = !DILocation(line: 477, column: 3, scope: !2209)
!2220 = distinct !DISubprogram(name: "mknod", scope: !2149, file: !2149, line: 483, type: !2221, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!460, !465, !2163, !2157}
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "__path", arg: 1, scope: !2220, file: !2149, line: 483, type: !465)
!2225 = !DILocalVariable(name: "__mode", arg: 2, scope: !2220, file: !2149, line: 483, type: !2163)
!2226 = !DILocalVariable(name: "__dev", arg: 3, scope: !2220, file: !2149, line: 483, type: !2157)
!2227 = !DILocation(line: 0, scope: !2220)
!2228 = !DILocation(line: 485, column: 10, scope: !2220)
!2229 = !DILocation(line: 485, column: 3, scope: !2220)
!2230 = distinct !DISubprogram(name: "mknodat", scope: !2149, file: !2149, line: 491, type: !2231, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!460, !460, !465, !2163, !2157}
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DILocalVariable(name: "__fd", arg: 1, scope: !2230, file: !2149, line: 491, type: !460)
!2235 = !DILocalVariable(name: "__path", arg: 2, scope: !2230, file: !2149, line: 491, type: !465)
!2236 = !DILocalVariable(name: "__mode", arg: 3, scope: !2230, file: !2149, line: 491, type: !2163)
!2237 = !DILocalVariable(name: "__dev", arg: 4, scope: !2230, file: !2149, line: 491, type: !2157)
!2238 = !DILocation(line: 0, scope: !2230)
!2239 = !DILocation(line: 494, column: 10, scope: !2230)
!2240 = !DILocation(line: 494, column: 3, scope: !2230)
!2241 = distinct !DISubprogram(name: "stat64", scope: !2149, file: !2149, line: 502, type: !2242, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2264)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!460, !465, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2154, line: 119, size: 1152, elements: !2246)
!2246 = !{!2247, !2248, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2260, !2261, !2262, !2263}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2245, file: !2154, line: 121, baseType: !2157, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2245, file: !2154, line: 123, baseType: !2249, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1907, line: 149, baseType: !538)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2245, file: !2154, line: 124, baseType: !2161, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2245, file: !2154, line: 125, baseType: !2163, size: 32, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2245, file: !2154, line: 132, baseType: !2165, size: 32, offset: 224)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2245, file: !2154, line: 133, baseType: !2167, size: 32, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2245, file: !2154, line: 135, baseType: !460, size: 32, offset: 288)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2245, file: !2154, line: 136, baseType: !2157, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2245, file: !2154, line: 137, baseType: !1906, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2245, file: !2154, line: 143, baseType: !2172, size: 64, offset: 448)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2245, file: !2154, line: 144, baseType: !2259, size: 64, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1907, line: 180, baseType: !555)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2245, file: !2154, line: 152, baseType: !2176, size: 128, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2245, file: !2154, line: 153, baseType: !2176, size: 128, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2245, file: !2154, line: 154, baseType: !2176, size: 128, offset: 832)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2245, file: !2154, line: 164, baseType: !2186, size: 192, offset: 960)
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "__path", arg: 1, scope: !2241, file: !2149, line: 502, type: !465)
!2266 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2241, file: !2149, line: 502, type: !2244)
!2267 = !DILocation(line: 0, scope: !2241)
!2268 = !DILocation(line: 504, column: 10, scope: !2241)
!2269 = !DILocation(line: 504, column: 3, scope: !2241)
!2270 = distinct !DISubprogram(name: "lstat64", scope: !2149, file: !2149, line: 509, type: !2242, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2271)
!2271 = !{!2272, !2273}
!2272 = !DILocalVariable(name: "__path", arg: 1, scope: !2270, file: !2149, line: 509, type: !465)
!2273 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2270, file: !2149, line: 509, type: !2244)
!2274 = !DILocation(line: 0, scope: !2270)
!2275 = !DILocation(line: 511, column: 10, scope: !2270)
!2276 = !DILocation(line: 511, column: 3, scope: !2270)
!2277 = distinct !DISubprogram(name: "fstat64", scope: !2149, file: !2149, line: 516, type: !2278, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!460, !460, !2244}
!2280 = !{!2281, !2282}
!2281 = !DILocalVariable(name: "__fd", arg: 1, scope: !2277, file: !2149, line: 516, type: !460)
!2282 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2277, file: !2149, line: 516, type: !2244)
!2283 = !DILocation(line: 0, scope: !2277)
!2284 = !DILocation(line: 518, column: 10, scope: !2277)
!2285 = !DILocation(line: 518, column: 3, scope: !2277)
!2286 = distinct !DISubprogram(name: "fstatat64", scope: !2149, file: !2149, line: 523, type: !2287, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!460, !460, !465, !2244, !460}
!2289 = !{!2290, !2291, !2292, !2293}
!2290 = !DILocalVariable(name: "__fd", arg: 1, scope: !2286, file: !2149, line: 523, type: !460)
!2291 = !DILocalVariable(name: "__filename", arg: 2, scope: !2286, file: !2149, line: 523, type: !465)
!2292 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2286, file: !2149, line: 523, type: !2244)
!2293 = !DILocalVariable(name: "__flag", arg: 4, scope: !2286, file: !2149, line: 523, type: !460)
!2294 = !DILocation(line: 0, scope: !2286)
!2295 = !DILocation(line: 526, column: 10, scope: !2286)
!2296 = !DILocation(line: 526, column: 3, scope: !2286)
!2297 = distinct !DISubprogram(name: "expand_phi_nodes", scope: !1, file: !1, line: 849, type: !2298, scopeLine: 850, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2309)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssaexpand", file: !2302, line: 29, size: 256, elements: !2303)
!2302 = !DIFile(filename: "./ssaexpand.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2303 = !{!2304, !2305, !2306, !2308}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2301, file: !2302, line: 32, baseType: !1807, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2301, file: !2302, line: 36, baseType: !1251, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_pseudo", scope: !2301, file: !2302, line: 41, baseType: !2307, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "partition_has_default_def", scope: !2301, file: !2302, line: 45, baseType: !1251, size: 64, offset: 192)
!2309 = !{!2310, !2311, !2312, !2313, !2318, !2325, !2331}
!2310 = !DILocalVariable(name: "sa", arg: 1, scope: !2297, file: !1, line: 849, type: !2300)
!2311 = !DILocalVariable(name: "bb", scope: !2297, file: !1, line: 851, type: !850)
!2312 = !DILocalVariable(name: "g", scope: !2297, file: !1, line: 852, type: !1761)
!2313 = !DILocalVariable(name: "e", scope: !2314, file: !1, line: 858, type: !867)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !1, line: 857, column: 7)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 856, column: 9)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !1, line: 855, column: 3)
!2317 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 855, column: 3)
!2318 = !DILocalVariable(name: "ei", scope: !2314, file: !1, line: 859, type: !2319)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !328, line: 682, baseType: !2320)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 679, size: 128, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2320, file: !328, line: 680, baseType: !5, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2320, file: !328, line: 681, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!2325 = !DILocalVariable(name: "insns", scope: !2326, file: !1, line: 877, type: !467)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !1, line: 876, column: 8)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 874, column: 10)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 873, column: 4)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 872, column: 2)
!2330 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 872, column: 2)
!2331 = !DILocalVariable(name: "bb", scope: !2326, file: !1, line: 878, type: !850)
!2332 = !DILocation(line: 0, scope: !2297)
!2333 = !DILocation(line: 852, column: 38, scope: !2297)
!2334 = !DILocation(line: 852, column: 43, scope: !2297)
!2335 = !DILocation(line: 852, column: 18, scope: !2297)
!2336 = !DILocation(line: 853, column: 16, scope: !2297)
!2337 = !DILocation(line: 853, column: 6, scope: !2297)
!2338 = !DILocation(line: 853, column: 10, scope: !2297)
!2339 = !DILocation(line: 855, column: 3, scope: !2317)
!2340 = !DILocation(line: 0, scope: !2314)
!2341 = !DILocation(line: 0, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 860, column: 2)
!2343 = !DILocation(line: 0, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2342, file: !1, line: 860, column: 2)
!2345 = !DILocation(line: 0, scope: !2330)
!2346 = !DILocation(line: 855, column: 3, scope: !2316)
!2347 = !DILocation(line: 0, scope: !2317)
!2348 = !DILocation(line: 856, column: 30, scope: !2315)
!2349 = !DILocation(line: 856, column: 10, scope: !2315)
!2350 = !DILocation(line: 856, column: 9, scope: !2316)
!2351 = !DILocation(line: 858, column: 2, scope: !2314)
!2352 = !DILocation(line: 859, column: 2, scope: !2314)
!2353 = !DILocation(line: 860, column: 2, scope: !2342)
!2354 = !DILocation(line: 860, column: 2, scope: !2344)
!2355 = !DILocation(line: 861, column: 19, scope: !2344)
!2356 = !DILocation(line: 861, column: 4, scope: !2344)
!2357 = distinct !{!2357, !2353, !2358}
!2358 = !DILocation(line: 861, column: 23, scope: !2342)
!2359 = !DILocation(line: 862, column: 2, scope: !2314)
!2360 = !DILocation(line: 872, column: 12, scope: !2330)
!2361 = !DILocation(line: 872, column: 7, scope: !2330)
!2362 = !DILocation(line: 872, column: 39, scope: !2329)
!2363 = !DILocation(line: 872, column: 37, scope: !2329)
!2364 = !DILocation(line: 872, column: 2, scope: !2330)
!2365 = !DILocation(line: 874, column: 13, scope: !2327)
!2366 = !DILocation(line: 874, column: 19, scope: !2327)
!2367 = !DILocation(line: 874, column: 10, scope: !2327)
!2368 = !DILocation(line: 874, column: 21, scope: !2327)
!2369 = !DILocation(line: 874, column: 28, scope: !2327)
!2370 = !DILocation(line: 874, column: 34, scope: !2327)
!2371 = !DILocation(line: 875, column: 3, scope: !2327)
!2372 = !DILocation(line: 875, column: 25, scope: !2327)
!2373 = !DILocation(line: 875, column: 7, scope: !2327)
!2374 = !DILocation(line: 874, column: 10, scope: !2328)
!2375 = !DILocation(line: 877, column: 15, scope: !2326)
!2376 = !DILocation(line: 877, column: 18, scope: !2326)
!2377 = !DILocation(line: 877, column: 24, scope: !2326)
!2378 = !DILocation(line: 879, column: 12, scope: !2326)
!2379 = !DILocation(line: 879, column: 14, scope: !2326)
!2380 = !DILocation(line: 880, column: 8, scope: !2326)
!2381 = !DILocation(line: 0, scope: !2326)
!2382 = !DILocation(line: 881, column: 3, scope: !2326)
!2383 = !DILocation(line: 881, column: 26, scope: !2326)
!2384 = !DILocation(line: 881, column: 34, scope: !2326)
!2385 = !DILocation(line: 882, column: 8, scope: !2326)
!2386 = !DILocation(line: 884, column: 8, scope: !2327)
!2387 = !DILocation(line: 872, column: 2, scope: !2329)
!2388 = distinct !{!2388, !2364, !2389}
!2389 = !DILocation(line: 885, column: 4, scope: !2330)
!2390 = !DILocation(line: 886, column: 7, scope: !2315)
!2391 = !DILocation(line: 886, column: 7, scope: !2314)
!2392 = !DILocation(line: 0, scope: !2316)
!2393 = distinct !{!2393, !2339, !2394}
!2394 = !DILocation(line: 886, column: 7, scope: !2317)
!2395 = !DILocation(line: 888, column: 3, scope: !2297)
!2396 = !DILocation(line: 889, column: 1, scope: !2297)
!2397 = distinct !DISubprogram(name: "new_elim_graph", scope: !1, file: !1, line: 337, type: !2398, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!1761, !460}
!2400 = !{!2401, !2402}
!2401 = !DILocalVariable(name: "size", arg: 1, scope: !2397, file: !1, line: 337, type: !460)
!2402 = !DILocalVariable(name: "g", scope: !2397, file: !1, line: 339, type: !1761)
!2403 = !DILocation(line: 0, scope: !2397)
!2404 = !DILocation(line: 339, column: 31, scope: !2397)
!2405 = !DILocation(line: 339, column: 18, scope: !2397)
!2406 = !DILocation(line: 341, column: 14, scope: !2397)
!2407 = !DILocation(line: 341, column: 6, scope: !2397)
!2408 = !DILocation(line: 341, column: 12, scope: !2397)
!2409 = !DILocation(line: 342, column: 20, scope: !2397)
!2410 = !DILocation(line: 342, column: 6, scope: !2397)
!2411 = !DILocation(line: 342, column: 18, scope: !2397)
!2412 = !DILocation(line: 343, column: 21, scope: !2397)
!2413 = !DILocation(line: 343, column: 6, scope: !2397)
!2414 = !DILocation(line: 343, column: 19, scope: !2397)
!2415 = !DILocation(line: 344, column: 19, scope: !2397)
!2416 = !DILocation(line: 344, column: 6, scope: !2397)
!2417 = !DILocation(line: 344, column: 17, scope: !2397)
!2418 = !DILocation(line: 345, column: 18, scope: !2397)
!2419 = !DILocation(line: 345, column: 6, scope: !2397)
!2420 = !DILocation(line: 345, column: 16, scope: !2397)
!2421 = !DILocation(line: 346, column: 19, scope: !2397)
!2422 = !DILocation(line: 346, column: 6, scope: !2397)
!2423 = !DILocation(line: 346, column: 17, scope: !2397)
!2424 = !DILocation(line: 347, column: 14, scope: !2397)
!2425 = !DILocation(line: 347, column: 6, scope: !2397)
!2426 = !DILocation(line: 347, column: 12, scope: !2397)
!2427 = !DILocation(line: 349, column: 16, scope: !2397)
!2428 = !DILocation(line: 349, column: 6, scope: !2397)
!2429 = !DILocation(line: 349, column: 14, scope: !2397)
!2430 = !DILocation(line: 351, column: 3, scope: !2397)
!2431 = distinct !DISubprogram(name: "gimple_seq_empty_p", scope: !376, file: !376, line: 215, type: !2432, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2437)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!459, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !468, line: 67, baseType: !2435)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!2437 = !{!2438}
!2438 = !DILocalVariable(name: "s", arg: 1, scope: !2431, file: !376, line: 215, type: !2434)
!2439 = !DILocation(line: 0, scope: !2431)
!2440 = !DILocation(line: 217, column: 12, scope: !2431)
!2441 = !DILocation(line: 217, column: 20, scope: !2431)
!2442 = !DILocation(line: 217, column: 26, scope: !2431)
!2443 = !DILocation(line: 217, column: 32, scope: !2431)
!2444 = !DILocation(line: 217, column: 3, scope: !2431)
!2445 = distinct !DISubprogram(name: "phi_nodes", scope: !2446, file: !2446, line: 508, type: !2447, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2452)
!2446 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!877, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !468, line: 112, baseType: !2450)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!2452 = !{!2453}
!2453 = !DILocalVariable(name: "bb", arg: 1, scope: !2445, file: !2446, line: 508, type: !2449)
!2454 = !DILocation(line: 0, scope: !2445)
!2455 = !DILocation(line: 510, column: 3, scope: !2445)
!2456 = !DILocation(line: 511, column: 15, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2445, file: !2446, line: 511, column: 7)
!2458 = !DILocation(line: 511, column: 8, scope: !2457)
!2459 = !DILocation(line: 511, column: 7, scope: !2445)
!2460 = !DILocation(line: 513, column: 25, scope: !2445)
!2461 = !DILocation(line: 513, column: 3, scope: !2445)
!2462 = !DILocation(line: 514, column: 1, scope: !2445)
!2463 = distinct !DISubprogram(name: "ei_start_1", scope: !328, file: !328, line: 696, type: !2464, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2319, !2324}
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "ev", arg: 1, scope: !2463, file: !328, line: 696, type: !2324)
!2468 = !DILocalVariable(name: "i", scope: !2463, file: !328, line: 698, type: !2319)
!2469 = !DILocation(line: 0, scope: !2463)
!2470 = !DILocation(line: 700, column: 5, scope: !2463)
!2471 = !DILocation(line: 700, column: 11, scope: !2463)
!2472 = !DILocation(line: 701, column: 5, scope: !2463)
!2473 = !DILocation(line: 701, column: 15, scope: !2463)
!2474 = !DILocation(line: 703, column: 3, scope: !2463)
!2475 = distinct !DISubprogram(name: "ei_cond", scope: !328, file: !328, line: 771, type: !2476, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2479)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!459, !2319, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "ei", arg: 1, scope: !2475, file: !328, line: 771, type: !2319)
!2481 = !DILocalVariable(name: "p", arg: 2, scope: !2475, file: !328, line: 771, type: !2478)
!2482 = !DILocation(line: 0, scope: !2475)
!2483 = !DILocation(line: 773, column: 8, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2475, file: !328, line: 773, column: 7)
!2485 = !DILocation(line: 773, column: 7, scope: !2475)
!2486 = !DILocation(line: 775, column: 12, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !328, line: 774, column: 5)
!2488 = !DILocation(line: 776, column: 7, scope: !2487)
!2489 = !DILocation(line: 781, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2484, file: !328, line: 779, column: 5)
!2491 = !DILocation(line: 0, scope: !2484)
!2492 = !DILocation(line: 783, column: 1, scope: !2475)
!2493 = distinct !DISubprogram(name: "eliminate_phi", scope: !1, file: !1, line: 652, type: !2494, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !867, !1761}
!2496 = !{!2497, !2498, !2499, !2500, !2503, !2505, !2506}
!2497 = !DILocalVariable(name: "e", arg: 1, scope: !2493, file: !1, line: 652, type: !867)
!2498 = !DILocalVariable(name: "g", arg: 2, scope: !2493, file: !1, line: 652, type: !1761)
!2499 = !DILocalVariable(name: "x", scope: !2493, file: !1, line: 654, type: !460)
!2500 = !DILocalVariable(name: "part", scope: !2501, file: !1, line: 669, type: !460)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 668, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 667, column: 7)
!2503 = !DILocalVariable(name: "dest", scope: !2504, file: !1, line: 692, type: !460)
!2504 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 691, column: 5)
!2505 = !DILocalVariable(name: "src", scope: !2504, file: !1, line: 693, type: !584)
!2506 = !DILocalVariable(name: "locus", scope: !2504, file: !1, line: 694, type: !706)
!2507 = !DILocation(line: 0, scope: !2493)
!2508 = !DILocation(line: 656, column: 3, scope: !2493)
!2509 = !DILocation(line: 657, column: 3, scope: !2493)
!2510 = !DILocation(line: 660, column: 10, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 660, column: 7)
!2512 = !DILocation(line: 660, column: 16, scope: !2511)
!2513 = !DILocation(line: 660, column: 7, scope: !2493)
!2514 = !DILocation(line: 663, column: 6, scope: !2493)
!2515 = !DILocation(line: 663, column: 8, scope: !2493)
!2516 = !DILocation(line: 665, column: 3, scope: !2493)
!2517 = !DILocation(line: 667, column: 7, scope: !2502)
!2518 = !DILocation(line: 667, column: 27, scope: !2502)
!2519 = !DILocation(line: 667, column: 7, scope: !2493)
!2520 = !DILocation(line: 669, column: 7, scope: !2501)
!2521 = !DILocation(line: 671, column: 24, scope: !2501)
!2522 = !DILocation(line: 671, column: 7, scope: !2501)
!2523 = !DILocation(line: 672, column: 7, scope: !2501)
!2524 = !DILocation(line: 0, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !1, line: 674, column: 7)
!2526 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 674, column: 7)
!2527 = !DILocation(line: 674, column: 12, scope: !2526)
!2528 = !DILocation(line: 0, scope: !2526)
!2529 = !DILocation(line: 674, column: 19, scope: !2525)
!2530 = !DILocation(line: 0, scope: !2501)
!2531 = !DILocation(line: 674, column: 7, scope: !2526)
!2532 = !DILocation(line: 676, column: 9, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !1, line: 676, column: 8)
!2534 = distinct !DILexicalBlock(scope: !2525, file: !1, line: 675, column: 9)
!2535 = !DILocation(line: 676, column: 8, scope: !2534)
!2536 = !DILocation(line: 677, column: 6, scope: !2533)
!2537 = !DILocation(line: 674, column: 58, scope: !2525)
!2538 = !DILocation(line: 674, column: 7, scope: !2525)
!2539 = distinct !{!2539, !2531, !2540}
!2540 = !DILocation(line: 678, column: 2, scope: !2526)
!2541 = !DILocation(line: 680, column: 7, scope: !2501)
!2542 = !DILocation(line: 681, column: 7, scope: !2501)
!2543 = !DILocation(line: 681, column: 14, scope: !2501)
!2544 = !DILocation(line: 681, column: 41, scope: !2501)
!2545 = !DILocation(line: 683, column: 8, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 682, column: 2)
!2547 = !DILocation(line: 684, column: 9, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 684, column: 8)
!2549 = !DILocation(line: 684, column: 8, scope: !2546)
!2550 = !DILocation(line: 685, column: 6, scope: !2548)
!2551 = distinct !{!2551, !2542, !2552}
!2552 = !DILocation(line: 686, column: 2, scope: !2501)
!2553 = !DILocation(line: 687, column: 5, scope: !2502)
!2554 = !DILocation(line: 687, column: 5, scope: !2501)
!2555 = !DILocation(line: 0, scope: !2504)
!2556 = !DILocation(line: 690, column: 3, scope: !2493)
!2557 = !DILocation(line: 690, column: 10, scope: !2493)
!2558 = !DILocation(line: 690, column: 45, scope: !2493)
!2559 = !DILocation(line: 696, column: 13, scope: !2504)
!2560 = !DILocation(line: 697, column: 14, scope: !2504)
!2561 = !DILocation(line: 698, column: 15, scope: !2504)
!2562 = !DILocation(line: 699, column: 7, scope: !2504)
!2563 = distinct !{!2563, !2556, !2564}
!2564 = !DILocation(line: 700, column: 5, scope: !2493)
!2565 = !DILocation(line: 701, column: 1, scope: !2493)
!2566 = distinct !DISubprogram(name: "ei_next", scope: !328, file: !328, line: 736, type: !2567, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2570)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2570 = !{!2571}
!2571 = !DILocalVariable(name: "i", arg: 1, scope: !2566, file: !328, line: 736, type: !2569)
!2572 = !DILocation(line: 0, scope: !2566)
!2573 = !DILocation(line: 738, column: 3, scope: !2566)
!2574 = !DILocation(line: 739, column: 11, scope: !2566)
!2575 = !DILocation(line: 740, column: 1, scope: !2566)
!2576 = distinct !DISubprogram(name: "set_phi_nodes", scope: !2446, file: !2446, line: 519, type: !2577, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !850, !877}
!2579 = !{!2580, !2581, !2582}
!2580 = !DILocalVariable(name: "bb", arg: 1, scope: !2576, file: !2446, line: 519, type: !850)
!2581 = !DILocalVariable(name: "seq", arg: 2, scope: !2576, file: !2446, line: 519, type: !877)
!2582 = !DILocalVariable(name: "i", scope: !2576, file: !2446, line: 521, type: !2583)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !376, line: 265, baseType: !2584)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 254, size: 192, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2584, file: !376, line: 257, baseType: !882, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2584, file: !376, line: 263, baseType: !877, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2584, file: !376, line: 264, baseType: !850, size: 64, offset: 128)
!2589 = !DILocation(line: 0, scope: !2576)
!2590 = !DILocation(line: 523, column: 3, scope: !2576)
!2591 = !DILocation(line: 524, column: 10, scope: !2576)
!2592 = !DILocation(line: 524, column: 18, scope: !2576)
!2593 = !DILocation(line: 524, column: 28, scope: !2576)
!2594 = !DILocation(line: 528, column: 1, scope: !2576)
!2595 = distinct !DISubprogram(name: "ei_safe_edge", scope: !328, file: !328, line: 761, type: !2596, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!867, !2319}
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "i", arg: 1, scope: !2595, file: !328, line: 761, type: !2319)
!2600 = !DILocation(line: 763, column: 11, scope: !2595)
!2601 = !DILocation(line: 763, column: 10, scope: !2595)
!2602 = !DILocation(line: 763, column: 26, scope: !2595)
!2603 = !DILocation(line: 763, column: 3, scope: !2595)
!2604 = distinct !DISubprogram(name: "single_pred_p", scope: !328, file: !328, line: 634, type: !2605, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!459, !2449}
!2607 = !{!2608}
!2608 = !DILocalVariable(name: "bb", arg: 1, scope: !2604, file: !328, line: 634, type: !2449)
!2609 = !DILocation(line: 0, scope: !2604)
!2610 = !DILocation(line: 636, column: 10, scope: !2604)
!2611 = !DILocation(line: 636, column: 33, scope: !2604)
!2612 = !DILocation(line: 636, column: 3, scope: !2604)
!2613 = distinct !DISubprogram(name: "single_pred_edge", scope: !328, file: !328, line: 653, type: !2614, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!867, !2449}
!2616 = !{!2617}
!2617 = !DILocalVariable(name: "bb", arg: 1, scope: !2613, file: !328, line: 653, type: !2449)
!2618 = !DILocation(line: 0, scope: !2613)
!2619 = !DILocation(line: 655, column: 3, scope: !2613)
!2620 = !DILocation(line: 656, column: 10, scope: !2613)
!2621 = !DILocation(line: 656, column: 3, scope: !2613)
!2622 = distinct !DISubprogram(name: "delete_elim_graph", scope: !1, file: !1, line: 369, type: !2623, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !1761}
!2625 = !{!2626}
!2626 = !DILocalVariable(name: "g", arg: 1, scope: !2622, file: !1, line: 369, type: !1761)
!2627 = !DILocation(line: 0, scope: !2622)
!2628 = !DILocation(line: 371, column: 3, scope: !2622)
!2629 = !DILocation(line: 372, column: 3, scope: !2622)
!2630 = !DILocation(line: 373, column: 3, scope: !2622)
!2631 = !DILocation(line: 374, column: 3, scope: !2622)
!2632 = !DILocation(line: 375, column: 3, scope: !2622)
!2633 = !DILocation(line: 376, column: 3, scope: !2622)
!2634 = !DILocation(line: 377, column: 3, scope: !2622)
!2635 = !DILocation(line: 378, column: 3, scope: !2622)
!2636 = !DILocation(line: 380, column: 9, scope: !2622)
!2637 = !DILocation(line: 380, column: 3, scope: !2622)
!2638 = !DILocation(line: 381, column: 1, scope: !2622)
!2639 = distinct !DISubprogram(name: "finish_out_of_ssa", scope: !1, file: !1, line: 1105, type: !2298, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2640)
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "sa", arg: 1, scope: !2639, file: !1, line: 1105, type: !2300)
!2642 = !DILocation(line: 0, scope: !2639)
!2643 = !DILocation(line: 1107, column: 13, scope: !2639)
!2644 = !DILocation(line: 1107, column: 3, scope: !2639)
!2645 = !DILocation(line: 1108, column: 11, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 1108, column: 7)
!2647 = !DILocation(line: 1108, column: 7, scope: !2646)
!2648 = !DILocation(line: 1108, column: 7, scope: !2639)
!2649 = !DILocation(line: 1109, column: 5, scope: !2646)
!2650 = !DILocation(line: 1110, column: 23, scope: !2639)
!2651 = !DILocation(line: 1110, column: 3, scope: !2639)
!2652 = !DILocation(line: 1111, column: 3, scope: !2639)
!2653 = !DILocation(line: 1112, column: 11, scope: !2639)
!2654 = !DILocation(line: 1112, column: 3, scope: !2639)
!2655 = !DILocation(line: 1113, column: 1, scope: !2639)
!2656 = distinct !DISubprogram(name: "rewrite_out_of_ssa", scope: !1, file: !1, line: 1120, type: !2657, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!5, !2300}
!2659 = !{!2660}
!2660 = !DILocalVariable(name: "sa", arg: 1, scope: !2656, file: !1, line: 1120, type: !2300)
!2661 = !DILocation(line: 0, scope: !2656)
!2662 = !DILocation(line: 1128, column: 3, scope: !2656)
!2663 = !DILocation(line: 1132, column: 3, scope: !2656)
!2664 = !DILocation(line: 1134, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !1, line: 1134, column: 7)
!2666 = !DILocation(line: 1134, column: 17, scope: !2665)
!2667 = !DILocation(line: 1134, column: 21, scope: !2665)
!2668 = !DILocation(line: 1134, column: 32, scope: !2665)
!2669 = !DILocation(line: 1134, column: 7, scope: !2656)
!2670 = !DILocation(line: 1135, column: 44, scope: !2665)
!2671 = !DILocation(line: 1135, column: 5, scope: !2665)
!2672 = !DILocation(line: 1137, column: 20, scope: !2656)
!2673 = !DILocation(line: 1137, column: 3, scope: !2656)
!2674 = !DILocation(line: 1139, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2656, file: !1, line: 1139, column: 7)
!2676 = !DILocation(line: 1139, column: 17, scope: !2675)
!2677 = !DILocation(line: 1139, column: 21, scope: !2675)
!2678 = !DILocation(line: 1139, column: 32, scope: !2675)
!2679 = !DILocation(line: 1139, column: 7, scope: !2656)
!2680 = !DILocation(line: 1140, column: 44, scope: !2675)
!2681 = !DILocation(line: 1140, column: 5, scope: !2675)
!2682 = !DILocation(line: 1142, column: 3, scope: !2656)
!2683 = distinct !DISubprogram(name: "insert_backedge_copies", scope: !1, file: !1, line: 1013, type: !2684, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{null}
!2686 = !{!2687, !2688, !2689, !2696, !2697, !2698, !2699, !2703, !2704, !2707, !2708, !2709}
!2687 = !DILocalVariable(name: "bb", scope: !2683, file: !1, line: 1015, type: !850)
!2688 = !DILocalVariable(name: "gsi", scope: !2683, file: !1, line: 1016, type: !2583)
!2689 = !DILocalVariable(name: "phi", scope: !2690, file: !1, line: 1025, type: !887)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 1024, column: 2)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !1, line: 1023, column: 7)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 1023, column: 7)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 1019, column: 5)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !1, line: 1018, column: 3)
!2695 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 1018, column: 3)
!2696 = !DILocalVariable(name: "result", scope: !2690, file: !1, line: 1026, type: !584)
!2697 = !DILocalVariable(name: "result_var", scope: !2690, file: !1, line: 1027, type: !584)
!2698 = !DILocalVariable(name: "i", scope: !2690, file: !1, line: 1028, type: !1032)
!2699 = !DILocalVariable(name: "arg", scope: !2700, file: !1, line: 1036, type: !584)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !1, line: 1035, column: 6)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 1034, column: 4)
!2702 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 1034, column: 4)
!2703 = !DILocalVariable(name: "e", scope: !2700, file: !1, line: 1037, type: !867)
!2704 = !DILocalVariable(name: "name", scope: !2705, file: !1, line: 1048, type: !584)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 1047, column: 3)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !1, line: 1043, column: 12)
!2707 = !DILocalVariable(name: "stmt", scope: !2705, file: !1, line: 1049, type: !887)
!2708 = !DILocalVariable(name: "last", scope: !2705, file: !1, line: 1049, type: !887)
!2709 = !DILocalVariable(name: "gsi2", scope: !2705, file: !1, line: 1050, type: !2583)
!2710 = !DILocation(line: 1016, column: 3, scope: !2683)
!2711 = !DILocation(line: 1018, column: 3, scope: !2695)
!2712 = !DILocation(line: 0, scope: !2692)
!2713 = !DILocation(line: 0, scope: !2705)
!2714 = !DILocation(line: 1018, column: 3, scope: !2694)
!2715 = !DILocation(line: 0, scope: !2695)
!2716 = !DILocation(line: 0, scope: !2683)
!2717 = !DILocation(line: 1021, column: 22, scope: !2693)
!2718 = !DILocation(line: 1021, column: 15, scope: !2693)
!2719 = !DILocation(line: 1023, column: 18, scope: !2692)
!2720 = !DILocation(line: 1023, column: 12, scope: !2692)
!2721 = !DILocation(line: 1023, column: 40, scope: !2691)
!2722 = !DILocation(line: 1023, column: 39, scope: !2691)
!2723 = !DILocation(line: 1023, column: 7, scope: !2692)
!2724 = !DILocation(line: 1025, column: 17, scope: !2690)
!2725 = !DILocation(line: 0, scope: !2690)
!2726 = !DILocation(line: 1026, column: 18, scope: !2690)
!2727 = !DILocation(line: 1030, column: 9, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 1030, column: 8)
!2729 = !DILocation(line: 1030, column: 8, scope: !2690)
!2730 = !DILocation(line: 1033, column: 17, scope: !2690)
!2731 = !DILocation(line: 1034, column: 9, scope: !2702)
!2732 = !DILocation(line: 0, scope: !2702)
!2733 = !DILocation(line: 1034, column: 20, scope: !2701)
!2734 = !DILocation(line: 1034, column: 18, scope: !2701)
!2735 = !DILocation(line: 1034, column: 4, scope: !2702)
!2736 = !DILocation(line: 1036, column: 19, scope: !2700)
!2737 = !DILocation(line: 0, scope: !2700)
!2738 = !DILocation(line: 1037, column: 17, scope: !2700)
!2739 = !DILocation(line: 1043, column: 16, scope: !2706)
!2740 = !DILocation(line: 1043, column: 22, scope: !2706)
!2741 = !DILocation(line: 1044, column: 5, scope: !2706)
!2742 = !DILocation(line: 1044, column: 9, scope: !2706)
!2743 = !DILocation(line: 1044, column: 25, scope: !2706)
!2744 = !DILocation(line: 1045, column: 9, scope: !2706)
!2745 = !DILocation(line: 1045, column: 12, scope: !2706)
!2746 = !DILocation(line: 1045, column: 31, scope: !2706)
!2747 = !DILocation(line: 1046, column: 9, scope: !2706)
!2748 = !DILocation(line: 1046, column: 12, scope: !2706)
!2749 = !DILocation(line: 1043, column: 12, scope: !2700)
!2750 = !DILocation(line: 1050, column: 5, scope: !2705)
!2751 = !DILocation(line: 1052, column: 12, scope: !2705)
!2752 = !DILocation(line: 1052, column: 25, scope: !2705)
!2753 = !DILocation(line: 1052, column: 55, scope: !2705)
!2754 = !DILocation(line: 1053, column: 10, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 1053, column: 9)
!2756 = !DILocation(line: 1053, column: 9, scope: !2705)
!2757 = !DILocation(line: 1054, column: 14, scope: !2755)
!2758 = !DILocation(line: 1054, column: 7, scope: !2755)
!2759 = !DILocation(line: 1063, column: 9, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 1063, column: 9)
!2761 = !DILocation(line: 1063, column: 14, scope: !2760)
!2762 = !DILocation(line: 1063, column: 17, scope: !2760)
!2763 = !DILocation(line: 1063, column: 9, scope: !2705)
!2764 = !DILocation(line: 1068, column: 13, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !1, line: 1068, column: 13)
!2766 = distinct !DILexicalBlock(scope: !2760, file: !1, line: 1064, column: 7)
!2767 = !DILocation(line: 1068, column: 29, scope: !2765)
!2768 = !DILocation(line: 1069, column: 6, scope: !2765)
!2769 = !DILocation(line: 1069, column: 9, scope: !2765)
!2770 = !DILocation(line: 1069, column: 33, scope: !2765)
!2771 = !DILocation(line: 1068, column: 13, scope: !2766)
!2772 = !DILocation(line: 1075, column: 12, scope: !2705)
!2773 = !DILocation(line: 1077, column: 12, scope: !2705)
!2774 = !DILocation(line: 1078, column: 5, scope: !2705)
!2775 = !DILocation(line: 1081, column: 9, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 1081, column: 9)
!2777 = !DILocation(line: 1081, column: 9, scope: !2705)
!2778 = !DILocation(line: 1083, column: 7, scope: !2776)
!2779 = !DILocation(line: 1082, column: 7, scope: !2776)
!2780 = !DILocation(line: 1087, column: 14, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 1087, column: 9)
!2782 = !DILocation(line: 1087, column: 17, scope: !2781)
!2783 = !DILocation(line: 1087, column: 9, scope: !2705)
!2784 = !DILocation(line: 1088, column: 7, scope: !2781)
!2785 = !DILocation(line: 1090, column: 7, scope: !2781)
!2786 = !DILocation(line: 1091, column: 5, scope: !2705)
!2787 = !DILocation(line: 1092, column: 3, scope: !2706)
!2788 = !DILocation(line: 1093, column: 6, scope: !2701)
!2789 = !DILocation(line: 1034, column: 48, scope: !2701)
!2790 = !DILocation(line: 1034, column: 4, scope: !2701)
!2791 = distinct !{!2791, !2735, !2792}
!2792 = !DILocation(line: 1093, column: 6, scope: !2702)
!2793 = !DILocation(line: 1023, column: 57, scope: !2691)
!2794 = !DILocation(line: 1023, column: 7, scope: !2691)
!2795 = distinct !{!2795, !2723, !2796}
!2796 = !DILocation(line: 1094, column: 2, scope: !2692)
!2797 = !DILocation(line: 1097, column: 15, scope: !2693)
!2798 = !DILocation(line: 0, scope: !2694)
!2799 = distinct !{!2799, !2711, !2800}
!2800 = !DILocation(line: 1098, column: 5, scope: !2695)
!2801 = !DILocation(line: 1099, column: 1, scope: !2683)
!2802 = distinct !DISubprogram(name: "eliminate_useless_phis", scope: !1, file: !1, line: 749, type: !2684, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2803)
!2803 = !{!2804, !2805, !2806, !2807}
!2804 = !DILocalVariable(name: "bb", scope: !2802, file: !1, line: 751, type: !850)
!2805 = !DILocalVariable(name: "gsi", scope: !2802, file: !1, line: 752, type: !2583)
!2806 = !DILocalVariable(name: "result", scope: !2802, file: !1, line: 753, type: !584)
!2807 = !DILocalVariable(name: "phi", scope: !2808, file: !1, line: 759, type: !887)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 758, column: 9)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !1, line: 757, column: 7)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 757, column: 7)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !1, line: 756, column: 5)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !1, line: 755, column: 3)
!2813 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 755, column: 3)
!2814 = !DILocation(line: 752, column: 3, scope: !2802)
!2815 = !DILocation(line: 755, column: 3, scope: !2813)
!2816 = !DILocation(line: 0, scope: !2810)
!2817 = !DILocation(line: 755, column: 3, scope: !2812)
!2818 = !DILocation(line: 0, scope: !2813)
!2819 = !DILocation(line: 0, scope: !2802)
!2820 = !DILocation(line: 757, column: 18, scope: !2810)
!2821 = !DILocation(line: 757, column: 12, scope: !2810)
!2822 = !DILocation(line: 757, column: 40, scope: !2809)
!2823 = !DILocation(line: 757, column: 39, scope: !2809)
!2824 = !DILocation(line: 757, column: 7, scope: !2810)
!2825 = !DILocation(line: 759, column: 17, scope: !2808)
!2826 = !DILocation(line: 0, scope: !2808)
!2827 = !DILocation(line: 760, column: 13, scope: !2808)
!2828 = !DILocation(line: 761, column: 24, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 761, column: 8)
!2830 = !DILocation(line: 761, column: 9, scope: !2829)
!2831 = !DILocation(line: 761, column: 8, scope: !2808)
!2832 = !DILocation(line: 781, column: 8, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !1, line: 762, column: 6)
!2834 = !DILocation(line: 782, column: 6, scope: !2833)
!2835 = !DILocation(line: 786, column: 12, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !1, line: 786, column: 12)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !1, line: 784, column: 6)
!2838 = !DILocation(line: 786, column: 12, scope: !2837)
!2839 = !DILocation(line: 788, column: 5, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !1, line: 787, column: 10)
!2841 = !DILocation(line: 789, column: 5, scope: !2840)
!2842 = !DILocation(line: 790, column: 3, scope: !2840)
!2843 = !DILocation(line: 792, column: 3, scope: !2836)
!2844 = !DILocation(line: 757, column: 7, scope: !2809)
!2845 = distinct !{!2845, !2824, !2846}
!2846 = !DILocation(line: 794, column: 2, scope: !2810)
!2847 = !DILocation(line: 0, scope: !2812)
!2848 = distinct !{!2848, !2815, !2849}
!2849 = !DILocation(line: 795, column: 5, scope: !2813)
!2850 = !DILocation(line: 796, column: 1, scope: !2802)
!2851 = distinct !DISubprogram(name: "remove_ssa_form", scope: !1, file: !1, line: 897, type: !2852, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !459, !2300}
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2864}
!2855 = !DILocalVariable(name: "perform_ter", arg: 1, scope: !2851, file: !1, line: 897, type: !459)
!2856 = !DILocalVariable(name: "sa", arg: 2, scope: !2851, file: !1, line: 897, type: !2300)
!2857 = !DILocalVariable(name: "values", scope: !2851, file: !1, line: 899, type: !1251)
!2858 = !DILocalVariable(name: "map", scope: !2851, file: !1, line: 900, type: !1807)
!2859 = !DILocalVariable(name: "i", scope: !2851, file: !1, line: 901, type: !5)
!2860 = !DILocalVariable(name: "t", scope: !2861, file: !1, line: 929, type: !584)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 928, column: 5)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !1, line: 927, column: 3)
!2863 = distinct !DILexicalBlock(scope: !2851, file: !1, line: 927, column: 3)
!2864 = !DILocalVariable(name: "p", scope: !2865, file: !1, line: 932, type: !460)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !1, line: 931, column: 2)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !1, line: 930, column: 11)
!2867 = !DILocation(line: 0, scope: !2851)
!2868 = !DILocation(line: 903, column: 9, scope: !2851)
!2869 = !DILocation(line: 907, column: 3, scope: !2851)
!2870 = !DILocation(line: 909, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2851, file: !1, line: 909, column: 7)
!2872 = !DILocation(line: 909, column: 17, scope: !2871)
!2873 = !DILocation(line: 909, column: 21, scope: !2871)
!2874 = !DILocation(line: 909, column: 32, scope: !2871)
!2875 = !DILocation(line: 909, column: 7, scope: !2851)
!2876 = !DILocation(line: 911, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 910, column: 5)
!2878 = !DILocation(line: 912, column: 21, scope: !2877)
!2879 = !DILocation(line: 912, column: 7, scope: !2877)
!2880 = !DILocation(line: 913, column: 5, scope: !2877)
!2881 = !DILocation(line: 915, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2851, file: !1, line: 915, column: 7)
!2883 = !DILocation(line: 915, column: 7, scope: !2851)
!2884 = !DILocation(line: 917, column: 16, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !1, line: 916, column: 5)
!2886 = !DILocation(line: 918, column: 11, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2885, file: !1, line: 918, column: 11)
!2888 = !DILocation(line: 918, column: 21, scope: !2887)
!2889 = !DILocation(line: 918, column: 18, scope: !2887)
!2890 = !DILocation(line: 918, column: 35, scope: !2887)
!2891 = !DILocation(line: 918, column: 46, scope: !2887)
!2892 = !DILocation(line: 918, column: 11, scope: !2885)
!2893 = !DILocation(line: 919, column: 2, scope: !2887)
!2894 = !DILocation(line: 922, column: 3, scope: !2851)
!2895 = !DILocation(line: 924, column: 7, scope: !2851)
!2896 = !DILocation(line: 924, column: 11, scope: !2851)
!2897 = !DILocation(line: 925, column: 7, scope: !2851)
!2898 = !DILocation(line: 925, column: 14, scope: !2851)
!2899 = !DILocation(line: 926, column: 35, scope: !2851)
!2900 = !DILocation(line: 926, column: 7, scope: !2851)
!2901 = !DILocation(line: 926, column: 33, scope: !2851)
!2902 = !DILocation(line: 927, column: 8, scope: !2863)
!2903 = !DILocation(line: 0, scope: !2863)
!2904 = !DILocation(line: 927, column: 19, scope: !2862)
!2905 = !DILocation(line: 927, column: 17, scope: !2862)
!2906 = !DILocation(line: 927, column: 3, scope: !2863)
!2907 = !DILocation(line: 929, column: 16, scope: !2861)
!2908 = !DILocation(line: 0, scope: !2861)
!2909 = !DILocation(line: 930, column: 11, scope: !2866)
!2910 = !DILocation(line: 930, column: 13, scope: !2866)
!2911 = !DILocation(line: 930, column: 16, scope: !2866)
!2912 = !DILocation(line: 930, column: 11, scope: !2861)
!2913 = !DILocation(line: 932, column: 12, scope: !2865)
!2914 = !DILocation(line: 0, scope: !2865)
!2915 = !DILocation(line: 933, column: 10, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2865, file: !1, line: 933, column: 8)
!2917 = !DILocation(line: 933, column: 8, scope: !2865)
!2918 = !DILocation(line: 934, column: 26, scope: !2916)
!2919 = !DILocation(line: 934, column: 6, scope: !2916)
!2920 = !DILocation(line: 927, column: 35, scope: !2862)
!2921 = !DILocation(line: 927, column: 3, scope: !2862)
!2922 = distinct !{!2922, !2906, !2923}
!2923 = !DILocation(line: 936, column: 5, scope: !2863)
!2924 = !DILocation(line: 937, column: 1, scope: !2851)
!2925 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1769, file: !1769, line: 32, type: !2926, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!1767, !460}
!2928 = !{!2929}
!2929 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2925, file: !1769, line: 32, type: !460)
!2930 = !DILocation(line: 0, scope: !2925)
!2931 = !DILocation(line: 32, column: 1, scope: !2925)
!2932 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !133, file: !133, line: 184, type: !2933, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!1835, !460}
!2935 = !{!2936}
!2936 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2932, file: !133, line: 184, type: !460)
!2937 = !DILocation(line: 0, scope: !2932)
!2938 = !DILocation(line: 184, column: 1, scope: !2932)
!2939 = distinct !DISubprogram(name: "VEC_source_location_heap_alloc", scope: !1, file: !1, line: 41, type: !2940, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!1782, !460}
!2942 = !{!2943}
!2943 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2939, file: !1, line: 41, type: !460)
!2944 = !DILocation(line: 0, scope: !2939)
!2945 = !DILocation(line: 41, column: 1, scope: !2939)
!2946 = distinct !DISubprogram(name: "ei_end_p", scope: !328, file: !328, line: 721, type: !2947, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!459, !2319}
!2949 = !{!2950}
!2950 = !DILocalVariable(name: "i", arg: 1, scope: !2946, file: !328, line: 721, type: !2319)
!2951 = !DILocation(line: 723, column: 22, scope: !2946)
!2952 = !DILocation(line: 723, column: 19, scope: !2946)
!2953 = !DILocation(line: 723, column: 10, scope: !2946)
!2954 = !DILocation(line: 723, column: 3, scope: !2946)
!2955 = distinct !DISubprogram(name: "ei_edge", scope: !328, file: !328, line: 752, type: !2596, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2956)
!2956 = !{!2957}
!2957 = !DILocalVariable(name: "i", arg: 1, scope: !2955, file: !328, line: 752, type: !2319)
!2958 = !DILocation(line: 754, column: 10, scope: !2955)
!2959 = !DILocation(line: 754, column: 3, scope: !2955)
!2960 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !328, file: !328, line: 150, type: !2961, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2965)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!5, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!2965 = !{!2966}
!2966 = !DILocalVariable(name: "vec_", arg: 1, scope: !2960, file: !328, line: 150, type: !2963)
!2967 = !DILocation(line: 0, scope: !2960)
!2968 = !DILocation(line: 150, column: 1, scope: !2960)
!2969 = distinct !DISubprogram(name: "ei_container", scope: !328, file: !328, line: 685, type: !2970, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!855, !2319}
!2972 = !{!2973}
!2973 = !DILocalVariable(name: "i", arg: 1, scope: !2969, file: !328, line: 685, type: !2319)
!2974 = !DILocation(line: 687, column: 3, scope: !2969)
!2975 = !DILocation(line: 688, column: 10, scope: !2969)
!2976 = !DILocation(line: 688, column: 3, scope: !2969)
!2977 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !328, file: !328, line: 150, type: !2978, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!867, !2963, !5}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "vec_", arg: 1, scope: !2977, file: !328, line: 150, type: !2963)
!2982 = !DILocalVariable(name: "ix_", arg: 2, scope: !2977, file: !328, line: 150, type: !5)
!2983 = !DILocation(line: 0, scope: !2977)
!2984 = !DILocation(line: 150, column: 1, scope: !2977)
!2985 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !133, file: !133, line: 182, type: !2986, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2990)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!5, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "vec_", arg: 1, scope: !2985, file: !133, line: 182, type: !2988)
!2992 = !DILocation(line: 0, scope: !2985)
!2993 = !DILocation(line: 182, column: 1, scope: !2985)
!2994 = distinct !DISubprogram(name: "VEC_source_location_base_length", scope: !1, file: !1, line: 40, type: !2995, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2999)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!5, !2997}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!2999 = !{!3000}
!3000 = !DILocalVariable(name: "vec_", arg: 1, scope: !2994, file: !1, line: 40, type: !2997)
!3001 = !DILocation(line: 0, scope: !2994)
!3002 = !DILocation(line: 40, column: 1, scope: !2994)
!3003 = distinct !DISubprogram(name: "eliminate_build", scope: !1, file: !1, line: 495, type: !2623, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3004)
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010, !3014}
!3005 = !DILocalVariable(name: "g", arg: 1, scope: !3003, file: !1, line: 495, type: !1761)
!3006 = !DILocalVariable(name: "Ti", scope: !3003, file: !1, line: 497, type: !584)
!3007 = !DILocalVariable(name: "p0", scope: !3003, file: !1, line: 498, type: !460)
!3008 = !DILocalVariable(name: "pi", scope: !3003, file: !1, line: 498, type: !460)
!3009 = !DILocalVariable(name: "gsi", scope: !3003, file: !1, line: 499, type: !2583)
!3010 = !DILocalVariable(name: "phi", scope: !3011, file: !1, line: 505, type: !887)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !1, line: 504, column: 5)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !1, line: 503, column: 3)
!3013 = distinct !DILexicalBlock(scope: !3003, file: !1, line: 503, column: 3)
!3014 = !DILocalVariable(name: "locus", scope: !3011, file: !1, line: 506, type: !706)
!3015 = !DILocation(line: 0, scope: !3003)
!3016 = !DILocation(line: 499, column: 3, scope: !3003)
!3017 = !DILocation(line: 501, column: 3, scope: !3003)
!3018 = !DILocation(line: 503, column: 14, scope: !3013)
!3019 = !DILocation(line: 503, column: 33, scope: !3013)
!3020 = !DILocation(line: 503, column: 36, scope: !3013)
!3021 = !DILocation(line: 0, scope: !3011)
!3022 = !DILocation(line: 0, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !1, line: 522, column: 9)
!3024 = distinct !DILexicalBlock(scope: !3011, file: !1, line: 519, column: 11)
!3025 = !DILocation(line: 503, column: 8, scope: !3013)
!3026 = !DILocation(line: 503, column: 44, scope: !3012)
!3027 = !DILocation(line: 503, column: 43, scope: !3012)
!3028 = !DILocation(line: 503, column: 3, scope: !3013)
!3029 = !DILocation(line: 505, column: 20, scope: !3011)
!3030 = !DILocation(line: 508, column: 33, scope: !3011)
!3031 = !DILocation(line: 508, column: 38, scope: !3011)
!3032 = !DILocation(line: 508, column: 12, scope: !3011)
!3033 = !DILocation(line: 510, column: 14, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3011, file: !1, line: 510, column: 11)
!3035 = !DILocation(line: 510, column: 11, scope: !3011)
!3036 = !DILocation(line: 513, column: 12, scope: !3011)
!3037 = !DILocation(line: 514, column: 58, scope: !3011)
!3038 = !DILocation(line: 514, column: 15, scope: !3011)
!3039 = !DILocation(line: 519, column: 12, scope: !3024)
!3040 = !DILocation(line: 520, column: 4, scope: !3024)
!3041 = !DILocation(line: 520, column: 8, scope: !3024)
!3042 = !DILocation(line: 520, column: 23, scope: !3024)
!3043 = !DILocation(line: 521, column: 8, scope: !3024)
!3044 = !DILocation(line: 521, column: 32, scope: !3024)
!3045 = !DILocation(line: 521, column: 11, scope: !3024)
!3046 = !DILocation(line: 521, column: 41, scope: !3024)
!3047 = !DILocation(line: 519, column: 11, scope: !3011)
!3048 = !DILocation(line: 525, column: 4, scope: !3023)
!3049 = !DILocation(line: 526, column: 4, scope: !3023)
!3050 = !DILocation(line: 527, column: 4, scope: !3023)
!3051 = !DILocation(line: 528, column: 2, scope: !3023)
!3052 = !DILocation(line: 531, column: 30, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3024, file: !1, line: 530, column: 9)
!3054 = !DILocation(line: 531, column: 9, scope: !3053)
!3055 = !DILocation(line: 532, column: 11, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !1, line: 532, column: 8)
!3057 = !DILocation(line: 532, column: 8, scope: !3053)
!3058 = !DILocation(line: 534, column: 8, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3056, file: !1, line: 533, column: 6)
!3060 = !DILocation(line: 535, column: 8, scope: !3059)
!3061 = !DILocation(line: 536, column: 8, scope: !3059)
!3062 = !DILocation(line: 537, column: 6, scope: !3059)
!3063 = !DILocation(line: 503, column: 61, scope: !3012)
!3064 = !DILocation(line: 503, column: 3, scope: !3012)
!3065 = distinct !{!3065, !3028, !3066}
!3066 = !DILocation(line: 539, column: 5, scope: !3013)
!3067 = !DILocation(line: 540, column: 1, scope: !3003)
!3068 = distinct !DISubprogram(name: "elim_graph_size", scope: !1, file: !1, line: 387, type: !3069, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!460, !1761}
!3071 = !{!3072}
!3072 = !DILocalVariable(name: "g", arg: 1, scope: !3068, file: !1, line: 387, type: !1761)
!3073 = !DILocation(line: 0, scope: !3068)
!3074 = !DILocation(line: 389, column: 10, scope: !3068)
!3075 = !DILocation(line: 389, column: 3, scope: !3068)
!3076 = distinct !DISubprogram(name: "VEC_int_base_truncate", scope: !1769, file: !1769, line: 31, type: !3077, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3080)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3079, !5}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "vec_", arg: 1, scope: !3076, file: !1769, line: 31, type: !3079)
!3082 = !DILocalVariable(name: "size_", arg: 2, scope: !3076, file: !1769, line: 31, type: !5)
!3083 = !DILocation(line: 0, scope: !3076)
!3084 = !DILocation(line: 31, column: 1, scope: !3076)
!3085 = !DILocation(line: 31, column: 1, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3076, file: !1769, line: 31, column: 1)
!3087 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1769, file: !1769, line: 31, type: !3088, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3092)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!460, !3090, !5, !1828}
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!3092 = !{!3093, !3094, !3095}
!3093 = !DILocalVariable(name: "vec_", arg: 1, scope: !3087, file: !1769, line: 31, type: !3090)
!3094 = !DILocalVariable(name: "ix_", arg: 2, scope: !3087, file: !1769, line: 31, type: !5)
!3095 = !DILocalVariable(name: "ptr", arg: 3, scope: !3087, file: !1769, line: 31, type: !1828)
!3096 = !DILocation(line: 0, scope: !3087)
!3097 = !DILocation(line: 31, column: 1, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3087, file: !1769, line: 31, column: 1)
!3099 = !DILocation(line: 31, column: 1, scope: !3087)
!3100 = !DILocation(line: 31, column: 1, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !1769, line: 31, column: 1)
!3102 = !DILocation(line: 31, column: 1, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3098, file: !1769, line: 31, column: 1)
!3104 = !DILocation(line: 0, scope: !3098)
!3105 = distinct !DISubprogram(name: "elim_forward", scope: !1, file: !1, line: 546, type: !3106, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !1761, !460}
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3115}
!3109 = !DILocalVariable(name: "g", arg: 1, scope: !3105, file: !1, line: 546, type: !1761)
!3110 = !DILocalVariable(name: "T", arg: 2, scope: !3105, file: !1, line: 546, type: !460)
!3111 = !DILocalVariable(name: "S", scope: !3105, file: !1, line: 548, type: !460)
!3112 = !DILocalVariable(name: "locus", scope: !3105, file: !1, line: 549, type: !706)
!3113 = !DILocalVariable(name: "x_", scope: !3114, file: !1, line: 552, type: !5)
!3114 = distinct !DILexicalBlock(scope: !3105, file: !1, line: 552, column: 3)
!3115 = !DILocalVariable(name: "y_", scope: !3114, file: !1, line: 552, type: !460)
!3116 = !DILocation(line: 0, scope: !3105)
!3117 = !DILocation(line: 551, column: 15, scope: !3105)
!3118 = !DILocation(line: 551, column: 3, scope: !3105)
!3119 = !DILocation(line: 0, scope: !3114)
!3120 = !DILocation(line: 0, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !1, line: 552, column: 3)
!3122 = distinct !DILexicalBlock(scope: !3114, file: !1, line: 552, column: 3)
!3123 = !DILocation(line: 0, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !1, line: 552, column: 3)
!3125 = !DILocation(line: 552, column: 3, scope: !3122)
!3126 = !DILocation(line: 0, scope: !3122)
!3127 = !DILocation(line: 552, column: 3, scope: !3121)
!3128 = !DILocation(line: 552, column: 3, scope: !3124)
!3129 = !DILocation(line: 552, column: 3, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3124, file: !1, line: 552, column: 3)
!3131 = !DILocation(line: 552, column: 3, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !1, line: 552, column: 3)
!3133 = distinct !DILexicalBlock(scope: !3124, file: !1, line: 552, column: 3)
!3134 = !DILocation(line: 552, column: 3, scope: !3133)
!3135 = distinct !{!3135, !3125, !3125}
!3136 = !DILocation(line: 557, column: 3, scope: !3105)
!3137 = !DILocation(line: 558, column: 1, scope: !3105)
!3138 = distinct !DISubprogram(name: "VEC_int_base_length", scope: !1769, file: !1769, line: 31, type: !3139, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!5, !3090}
!3141 = !{!3142}
!3142 = !DILocalVariable(name: "vec_", arg: 1, scope: !3138, file: !1769, line: 31, type: !3090)
!3143 = !DILocation(line: 0, scope: !3138)
!3144 = !DILocation(line: 31, column: 1, scope: !3138)
!3145 = distinct !DISubprogram(name: "VEC_int_base_pop", scope: !1769, file: !1769, line: 31, type: !3146, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!460, !3079}
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "vec_", arg: 1, scope: !3145, file: !1769, line: 31, type: !3079)
!3150 = !DILocalVariable(name: "obj_", scope: !3145, file: !1769, line: 31, type: !460)
!3151 = !DILocation(line: 0, scope: !3145)
!3152 = !DILocation(line: 31, column: 1, scope: !3145)
!3153 = distinct !DISubprogram(name: "elim_create", scope: !1, file: !1, line: 616, type: !3106, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3163, !3164, !3165, !3167}
!3155 = !DILocalVariable(name: "g", arg: 1, scope: !3153, file: !1, line: 616, type: !1761)
!3156 = !DILocalVariable(name: "T", arg: 2, scope: !3153, file: !1, line: 616, type: !460)
!3157 = !DILocalVariable(name: "P", scope: !3153, file: !1, line: 618, type: !460)
!3158 = !DILocalVariable(name: "S", scope: !3153, file: !1, line: 618, type: !460)
!3159 = !DILocalVariable(name: "locus", scope: !3153, file: !1, line: 619, type: !706)
!3160 = !DILocalVariable(name: "var", scope: !3161, file: !1, line: 623, type: !584)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !1, line: 622, column: 5)
!3162 = distinct !DILexicalBlock(scope: !3153, file: !1, line: 621, column: 7)
!3163 = !DILocalVariable(name: "U", scope: !3161, file: !1, line: 624, type: !467)
!3164 = !DILocalVariable(name: "unsignedsrcp", scope: !3161, file: !1, line: 625, type: !460)
!3165 = !DILocalVariable(name: "x_", scope: !3166, file: !1, line: 628, type: !5)
!3166 = distinct !DILexicalBlock(scope: !3161, file: !1, line: 628, column: 7)
!3167 = !DILocalVariable(name: "y_", scope: !3166, file: !1, line: 628, type: !460)
!3168 = !DILocation(line: 0, scope: !3153)
!3169 = !DILocation(line: 619, column: 3, scope: !3153)
!3170 = !DILocation(line: 621, column: 7, scope: !3162)
!3171 = !DILocation(line: 621, column: 7, scope: !3153)
!3172 = !DILocation(line: 623, column: 39, scope: !3161)
!3173 = !DILocation(line: 623, column: 18, scope: !3161)
!3174 = !DILocation(line: 0, scope: !3161)
!3175 = !DILocation(line: 624, column: 15, scope: !3161)
!3176 = !DILocation(line: 625, column: 26, scope: !3161)
!3177 = !DILocation(line: 627, column: 38, scope: !3161)
!3178 = !DILocation(line: 627, column: 7, scope: !3161)
!3179 = !DILocation(line: 0, scope: !3166)
!3180 = !DILocation(line: 0, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !1, line: 628, column: 7)
!3182 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 628, column: 7)
!3183 = !DILocation(line: 0, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3181, file: !1, line: 628, column: 7)
!3185 = !DILocation(line: 0, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 628, column: 7)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !1, line: 628, column: 7)
!3188 = !DILocation(line: 628, column: 7, scope: !3182)
!3189 = !DILocation(line: 0, scope: !3182)
!3190 = !DILocation(line: 628, column: 7, scope: !3181)
!3191 = !DILocation(line: 628, column: 7, scope: !3184)
!3192 = !DILocation(line: 628, column: 7, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3184, file: !1, line: 628, column: 7)
!3194 = !DILocation(line: 628, column: 7, scope: !3186)
!3195 = !DILocation(line: 628, column: 7, scope: !3187)
!3196 = !DILocation(line: 628, column: 7, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 628, column: 7)
!3198 = distinct !{!3198, !3188, !3188}
!3199 = !DILocation(line: 639, column: 11, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3162, file: !1, line: 638, column: 5)
!3201 = !DILocation(line: 640, column: 13, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3200, file: !1, line: 640, column: 11)
!3203 = !DILocation(line: 640, column: 11, scope: !3200)
!3204 = !DILocation(line: 642, column: 16, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !1, line: 641, column: 2)
!3206 = !DILocation(line: 642, column: 4, scope: !3205)
!3207 = !DILocation(line: 643, column: 38, scope: !3205)
!3208 = !DILocation(line: 643, column: 47, scope: !3205)
!3209 = !DILocation(line: 643, column: 4, scope: !3205)
!3210 = !DILocation(line: 644, column: 2, scope: !3205)
!3211 = !DILocation(line: 646, column: 1, scope: !3153)
!3212 = distinct !DISubprogram(name: "VEC_tree_base_pop", scope: !133, file: !133, line: 182, type: !3213, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3216)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!584, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "vec_", arg: 1, scope: !3212, file: !133, line: 182, type: !3215)
!3218 = !DILocalVariable(name: "obj_", scope: !3212, file: !133, line: 182, type: !584)
!3219 = !DILocation(line: 0, scope: !3212)
!3220 = !DILocation(line: 182, column: 1, scope: !3212)
!3221 = distinct !DISubprogram(name: "VEC_source_location_base_pop", scope: !1, file: !1, line: 40, type: !3222, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3225)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!706, !3224}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "vec_", arg: 1, scope: !3221, file: !1, line: 40, type: !3224)
!3227 = !DILocalVariable(name: "obj_", scope: !3221, file: !1, line: 40, type: !706)
!3228 = !DILocation(line: 0, scope: !3221)
!3229 = !DILocation(line: 40, column: 1, scope: !3221)
!3230 = distinct !DISubprogram(name: "insert_value_copy_on_edge", scope: !1, file: !1, line: 208, type: !3231, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !867, !460, !584, !706}
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243}
!3234 = !DILocalVariable(name: "e", arg: 1, scope: !3230, file: !1, line: 208, type: !867)
!3235 = !DILocalVariable(name: "dest", arg: 2, scope: !3230, file: !1, line: 208, type: !460)
!3236 = !DILocalVariable(name: "src", arg: 3, scope: !3230, file: !1, line: 208, type: !584)
!3237 = !DILocalVariable(name: "locus", arg: 4, scope: !3230, file: !1, line: 208, type: !706)
!3238 = !DILocalVariable(name: "seq", scope: !3230, file: !1, line: 210, type: !467)
!3239 = !DILocalVariable(name: "x", scope: !3230, file: !1, line: 210, type: !467)
!3240 = !DILocalVariable(name: "dest_mode", scope: !3230, file: !1, line: 211, type: !3)
!3241 = !DILocalVariable(name: "src_mode", scope: !3230, file: !1, line: 211, type: !3)
!3242 = !DILocalVariable(name: "unsignedp", scope: !3230, file: !1, line: 212, type: !460)
!3243 = !DILocalVariable(name: "var", scope: !3230, file: !1, line: 213, type: !584)
!3244 = !DILocation(line: 0, scope: !3230)
!3245 = !DILocation(line: 212, column: 3, scope: !3230)
!3246 = !DILocation(line: 215, column: 7, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3230, file: !1, line: 215, column: 7)
!3248 = !DILocation(line: 215, column: 17, scope: !3247)
!3249 = !DILocation(line: 215, column: 21, scope: !3247)
!3250 = !DILocation(line: 215, column: 32, scope: !3247)
!3251 = !DILocation(line: 215, column: 7, scope: !3230)
!3252 = !DILocation(line: 219, column: 12, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3247, file: !1, line: 216, column: 5)
!3254 = !DILocation(line: 219, column: 17, scope: !3253)
!3255 = !DILocation(line: 220, column: 12, scope: !3253)
!3256 = !DILocation(line: 220, column: 18, scope: !3253)
!3257 = !DILocation(line: 217, column: 7, scope: !3253)
!3258 = !DILocation(line: 221, column: 27, scope: !3253)
!3259 = !DILocation(line: 221, column: 7, scope: !3253)
!3260 = !DILocation(line: 222, column: 16, scope: !3253)
!3261 = !DILocation(line: 222, column: 7, scope: !3253)
!3262 = !DILocation(line: 223, column: 5, scope: !3253)
!3263 = !DILocation(line: 225, column: 3, scope: !3230)
!3264 = !DILocation(line: 227, column: 3, scope: !3230)
!3265 = !DILocation(line: 229, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3230, file: !1, line: 229, column: 7)
!3267 = !DILocation(line: 229, column: 7, scope: !3230)
!3268 = !DILocation(line: 230, column: 5, scope: !3266)
!3269 = !DILocation(line: 232, column: 3, scope: !3230)
!3270 = !DILocation(line: 234, column: 9, scope: !3230)
!3271 = !DILocation(line: 235, column: 14, scope: !3230)
!3272 = !DILocation(line: 236, column: 15, scope: !3230)
!3273 = !DILocation(line: 237, column: 3, scope: !3230)
!3274 = !DILocation(line: 238, column: 3, scope: !3230)
!3275 = !DILocation(line: 240, column: 16, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3230, file: !1, line: 240, column: 7)
!3277 = !DILocation(line: 240, column: 7, scope: !3230)
!3278 = !DILocation(line: 242, column: 11, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3276, file: !1, line: 241, column: 5)
!3280 = !DILocation(line: 243, column: 50, scope: !3279)
!3281 = !DILocation(line: 243, column: 11, scope: !3279)
!3282 = !DILocation(line: 244, column: 5, scope: !3279)
!3283 = !DILocation(line: 245, column: 21, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3276, file: !1, line: 245, column: 12)
!3285 = !DILocation(line: 0, scope: !3284)
!3286 = !DILocation(line: 245, column: 12, scope: !3276)
!3287 = !DILocation(line: 248, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 246, column: 5)
!3289 = !DILocation(line: 249, column: 5, scope: !3288)
!3290 = !DILocation(line: 251, column: 9, scope: !3284)
!3291 = !DILocation(line: 0, scope: !3276)
!3292 = !DILocation(line: 254, column: 15, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3230, file: !1, line: 254, column: 7)
!3294 = !DILocation(line: 254, column: 12, scope: !3293)
!3295 = !DILocation(line: 254, column: 9, scope: !3293)
!3296 = !DILocation(line: 254, column: 7, scope: !3230)
!3297 = !DILocation(line: 255, column: 5, scope: !3293)
!3298 = !DILocation(line: 256, column: 9, scope: !3230)
!3299 = !DILocation(line: 257, column: 3, scope: !3230)
!3300 = !DILocation(line: 259, column: 3, scope: !3230)
!3301 = !DILocation(line: 260, column: 1, scope: !3230)
!3302 = distinct !DISubprogram(name: "clear_elim_graph", scope: !1, file: !1, line: 358, type: !2623, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3303)
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "g", arg: 1, scope: !3302, file: !1, line: 358, type: !1761)
!3305 = !DILocation(line: 0, scope: !3302)
!3306 = !DILocation(line: 360, column: 3, scope: !3302)
!3307 = !DILocation(line: 361, column: 3, scope: !3302)
!3308 = !DILocation(line: 362, column: 3, scope: !3302)
!3309 = !DILocation(line: 363, column: 1, scope: !3302)
!3310 = distinct !DISubprogram(name: "gsi_end_p", scope: !376, file: !376, line: 4467, type: !3311, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!459, !2583}
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "i", arg: 1, scope: !3310, file: !376, line: 4467, type: !2583)
!3315 = !DILocation(line: 4467, column: 33, scope: !3310)
!3316 = !DILocation(line: 4469, column: 12, scope: !3310)
!3317 = !DILocation(line: 4469, column: 16, scope: !3310)
!3318 = !DILocation(line: 4469, column: 10, scope: !3310)
!3319 = !DILocation(line: 4469, column: 3, scope: !3310)
!3320 = distinct !DISubprogram(name: "gsi_stmt", scope: !376, file: !376, line: 4501, type: !3321, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!887, !2583}
!3323 = !{!3324}
!3324 = !DILocalVariable(name: "i", arg: 1, scope: !3320, file: !376, line: 4501, type: !2583)
!3325 = !DILocation(line: 4501, column: 32, scope: !3320)
!3326 = !DILocation(line: 4503, column: 12, scope: !3320)
!3327 = !DILocation(line: 4503, column: 17, scope: !3320)
!3328 = !DILocation(line: 4503, column: 3, scope: !3320)
!3329 = distinct !DISubprogram(name: "var_to_partition", scope: !1808, file: !1808, line: 143, type: !3330, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!460, !1807, !584}
!3332 = !{!3333, !3334, !3335}
!3333 = !DILocalVariable(name: "map", arg: 1, scope: !3329, file: !1808, line: 143, type: !1807)
!3334 = !DILocalVariable(name: "var", arg: 2, scope: !3329, file: !1808, line: 143, type: !584)
!3335 = !DILocalVariable(name: "part", scope: !3329, file: !1808, line: 145, type: !460)
!3336 = !DILocation(line: 0, scope: !3329)
!3337 = !DILocation(line: 147, column: 3, scope: !3329)
!3338 = !DILocation(line: 148, column: 10, scope: !3329)
!3339 = !DILocation(line: 149, column: 12, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3329, file: !1808, line: 149, column: 7)
!3341 = !DILocation(line: 149, column: 7, scope: !3340)
!3342 = !DILocation(line: 149, column: 7, scope: !3329)
!3343 = !DILocation(line: 150, column: 12, scope: !3340)
!3344 = !DILocation(line: 150, column: 5, scope: !3340)
!3345 = !DILocation(line: 151, column: 3, scope: !3329)
!3346 = distinct !DISubprogram(name: "gimple_phi_result", scope: !376, file: !376, line: 3071, type: !3347, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3352)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!584, !3349}
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !468, line: 60, baseType: !3350)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "gs", arg: 1, scope: !3346, file: !376, line: 3071, type: !3349)
!3354 = !DILocation(line: 0, scope: !3346)
!3355 = !DILocation(line: 3074, column: 25, scope: !3346)
!3356 = !DILocation(line: 3074, column: 3, scope: !3346)
!3357 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2446, file: !2446, line: 427, type: !3358, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!584, !1844}
!3360 = !{!3361}
!3361 = !DILocalVariable(name: "use", arg: 1, scope: !3357, file: !2446, line: 427, type: !1844)
!3362 = !DILocation(line: 0, scope: !3357)
!3363 = !DILocation(line: 429, column: 17, scope: !3357)
!3364 = !DILocation(line: 429, column: 10, scope: !3357)
!3365 = !DILocation(line: 429, column: 3, scope: !3357)
!3366 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2446, file: !2446, line: 442, type: !3367, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!1844, !887, !460}
!3369 = !{!3370, !3371}
!3370 = !DILocalVariable(name: "gs", arg: 1, scope: !3366, file: !2446, line: 442, type: !887)
!3371 = !DILocalVariable(name: "i", arg: 2, scope: !3366, file: !2446, line: 442, type: !460)
!3372 = !DILocation(line: 0, scope: !3366)
!3373 = !DILocation(line: 444, column: 11, scope: !3366)
!3374 = !DILocation(line: 444, column: 35, scope: !3366)
!3375 = !DILocation(line: 444, column: 3, scope: !3366)
!3376 = distinct !DISubprogram(name: "gimple_phi_arg_location_from_edge", scope: !2446, file: !2446, line: 483, type: !3377, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!706, !887, !867}
!3379 = !{!3380, !3381}
!3380 = !DILocalVariable(name: "gs", arg: 1, scope: !3376, file: !2446, line: 483, type: !887)
!3381 = !DILocalVariable(name: "e", arg: 2, scope: !3376, file: !2446, line: 483, type: !867)
!3382 = !DILocation(line: 0, scope: !3376)
!3383 = !DILocation(line: 485, column: 33, scope: !3376)
!3384 = !DILocation(line: 485, column: 10, scope: !3376)
!3385 = !DILocation(line: 485, column: 44, scope: !3376)
!3386 = !DILocation(line: 485, column: 3, scope: !3376)
!3387 = distinct !DISubprogram(name: "phi_ssa_name_p", scope: !2446, file: !2446, line: 603, type: !3388, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3393)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!459, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !468, line: 59, baseType: !3391)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!3393 = !{!3394}
!3394 = !DILocalVariable(name: "t", arg: 1, scope: !3387, file: !2446, line: 603, type: !3390)
!3395 = !DILocation(line: 0, scope: !3387)
!3396 = !DILocation(line: 605, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3387, file: !2446, line: 605, column: 7)
!3398 = !DILocation(line: 605, column: 21, scope: !3397)
!3399 = !DILocation(line: 611, column: 1, scope: !3387)
!3400 = distinct !DISubprogram(name: "VEC_int_heap_safe_push", scope: !1769, file: !1769, line: 32, type: !3401, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3405)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!1828, !3403, !3404}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!3405 = !{!3406, !3407}
!3406 = !DILocalVariable(name: "vec_", arg: 1, scope: !3400, file: !1769, line: 32, type: !3403)
!3407 = !DILocalVariable(name: "obj_", arg: 2, scope: !3400, file: !1769, line: 32, type: !3404)
!3408 = !DILocation(line: 0, scope: !3400)
!3409 = !DILocation(line: 32, column: 1, scope: !3400)
!3410 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !133, file: !133, line: 184, type: !3411, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3414)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!921, !3413, !584}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "vec_", arg: 1, scope: !3410, file: !133, line: 184, type: !3413)
!3416 = !DILocalVariable(name: "obj_", arg: 2, scope: !3410, file: !133, line: 184, type: !584)
!3417 = !DILocation(line: 0, scope: !3410)
!3418 = !DILocation(line: 184, column: 1, scope: !3410)
!3419 = distinct !DISubprogram(name: "VEC_source_location_heap_safe_push", scope: !1, file: !1, line: 41, type: !3420, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3425)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!3422, !3423, !3424}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!3425 = !{!3426, !3427}
!3426 = !DILocalVariable(name: "vec_", arg: 1, scope: !3419, file: !1, line: 41, type: !3423)
!3427 = !DILocalVariable(name: "obj_", arg: 2, scope: !3419, file: !1, line: 41, type: !3424)
!3428 = !DILocation(line: 0, scope: !3419)
!3429 = !DILocation(line: 41, column: 1, scope: !3419)
!3430 = distinct !DISubprogram(name: "eliminate_name", scope: !1, file: !1, line: 485, type: !3106, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3431)
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "g", arg: 1, scope: !3430, file: !1, line: 485, type: !1761)
!3433 = !DILocalVariable(name: "T", arg: 2, scope: !3430, file: !1, line: 485, type: !460)
!3434 = !DILocation(line: 0, scope: !3430)
!3435 = !DILocation(line: 487, column: 3, scope: !3430)
!3436 = !DILocation(line: 488, column: 1, scope: !3430)
!3437 = distinct !DISubprogram(name: "elim_graph_add_edge", scope: !1, file: !1, line: 411, type: !3438, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !1761, !460, !460, !706}
!3440 = !{!3441, !3442, !3443, !3444}
!3441 = !DILocalVariable(name: "g", arg: 1, scope: !3437, file: !1, line: 411, type: !1761)
!3442 = !DILocalVariable(name: "pred", arg: 2, scope: !3437, file: !1, line: 411, type: !460)
!3443 = !DILocalVariable(name: "succ", arg: 3, scope: !3437, file: !1, line: 411, type: !460)
!3444 = !DILocalVariable(name: "locus", arg: 4, scope: !3437, file: !1, line: 411, type: !706)
!3445 = !DILocation(line: 0, scope: !3437)
!3446 = !DILocation(line: 413, column: 3, scope: !3437)
!3447 = !DILocation(line: 414, column: 3, scope: !3437)
!3448 = !DILocation(line: 415, column: 3, scope: !3437)
!3449 = !DILocation(line: 416, column: 1, scope: !3437)
!3450 = distinct !DISubprogram(name: "gsi_next", scope: !376, file: !376, line: 4485, type: !3451, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3454)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "i", arg: 1, scope: !3450, file: !376, line: 4485, type: !3453)
!3456 = !DILocation(line: 0, scope: !3450)
!3457 = !DILocation(line: 4487, column: 15, scope: !3450)
!3458 = !DILocation(line: 4487, column: 20, scope: !3450)
!3459 = !DILocation(line: 4487, column: 10, scope: !3450)
!3460 = !DILocation(line: 4488, column: 1, scope: !3450)
!3461 = distinct !DISubprogram(name: "VEC_source_location_base_truncate", scope: !1, file: !1, line: 40, type: !3462, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{null, !3224, !5}
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "vec_", arg: 1, scope: !3461, file: !1, line: 40, type: !3224)
!3466 = !DILocalVariable(name: "size_", arg: 2, scope: !3461, file: !1, line: 40, type: !5)
!3467 = !DILocation(line: 0, scope: !3461)
!3468 = !DILocation(line: 40, column: 1, scope: !3461)
!3469 = !DILocation(line: 40, column: 1, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3461, file: !1, line: 40, column: 1)
!3471 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !376, file: !376, line: 3100, type: !3472, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3475)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!3474, !887, !5}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!3475 = !{!3476, !3477}
!3476 = !DILocalVariable(name: "gs", arg: 1, scope: !3471, file: !376, line: 3100, type: !887)
!3477 = !DILocalVariable(name: "index", arg: 2, scope: !3471, file: !376, line: 3100, type: !5)
!3478 = !DILocation(line: 0, scope: !3471)
!3479 = !DILocation(line: 3103, column: 3, scope: !3471)
!3480 = !DILocation(line: 3104, column: 12, scope: !3471)
!3481 = !DILocation(line: 3104, column: 3, scope: !3471)
!3482 = distinct !DISubprogram(name: "VEC_int_heap_reserve", scope: !1769, file: !1769, line: 32, type: !3483, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!460, !3403, !460}
!3485 = !{!3486, !3487, !3488}
!3486 = !DILocalVariable(name: "vec_", arg: 1, scope: !3482, file: !1769, line: 32, type: !3403)
!3487 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3482, file: !1769, line: 32, type: !460)
!3488 = !DILocalVariable(name: "extend", scope: !3482, file: !1769, line: 32, type: !460)
!3489 = !DILocation(line: 0, scope: !3482)
!3490 = !DILocation(line: 32, column: 1, scope: !3482)
!3491 = !DILocation(line: 32, column: 1, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3482, file: !1769, line: 32, column: 1)
!3493 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1769, file: !1769, line: 31, type: !3494, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!1828, !3079, !460}
!3496 = !{!3497, !3498, !3499}
!3497 = !DILocalVariable(name: "vec_", arg: 1, scope: !3493, file: !1769, line: 31, type: !3079)
!3498 = !DILocalVariable(name: "obj_", arg: 2, scope: !3493, file: !1769, line: 31, type: !460)
!3499 = !DILocalVariable(name: "slot_", scope: !3493, file: !1769, line: 31, type: !1828)
!3500 = !DILocation(line: 0, scope: !3493)
!3501 = !DILocation(line: 31, column: 1, scope: !3493)
!3502 = distinct !DISubprogram(name: "VEC_int_base_space", scope: !1769, file: !1769, line: 31, type: !3503, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!460, !3079, !460}
!3505 = !{!3506, !3507}
!3506 = !DILocalVariable(name: "vec_", arg: 1, scope: !3502, file: !1769, line: 31, type: !3079)
!3507 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3502, file: !1769, line: 31, type: !460)
!3508 = !DILocation(line: 0, scope: !3502)
!3509 = !DILocation(line: 31, column: 1, scope: !3502)
!3510 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !133, file: !133, line: 184, type: !3511, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!460, !3413, !460}
!3513 = !{!3514, !3515, !3516}
!3514 = !DILocalVariable(name: "vec_", arg: 1, scope: !3510, file: !133, line: 184, type: !3413)
!3515 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3510, file: !133, line: 184, type: !460)
!3516 = !DILocalVariable(name: "extend", scope: !3510, file: !133, line: 184, type: !460)
!3517 = !DILocation(line: 0, scope: !3510)
!3518 = !DILocation(line: 184, column: 1, scope: !3510)
!3519 = !DILocation(line: 184, column: 1, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3510, file: !133, line: 184, column: 1)
!3521 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !133, file: !133, line: 182, type: !3522, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!921, !3215, !584}
!3524 = !{!3525, !3526, !3527}
!3525 = !DILocalVariable(name: "vec_", arg: 1, scope: !3521, file: !133, line: 182, type: !3215)
!3526 = !DILocalVariable(name: "obj_", arg: 2, scope: !3521, file: !133, line: 182, type: !584)
!3527 = !DILocalVariable(name: "slot_", scope: !3521, file: !133, line: 182, type: !921)
!3528 = !DILocation(line: 0, scope: !3521)
!3529 = !DILocation(line: 182, column: 1, scope: !3521)
!3530 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !133, file: !133, line: 182, type: !3531, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!460, !3215, !460}
!3533 = !{!3534, !3535}
!3534 = !DILocalVariable(name: "vec_", arg: 1, scope: !3530, file: !133, line: 182, type: !3215)
!3535 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3530, file: !133, line: 182, type: !460)
!3536 = !DILocation(line: 0, scope: !3530)
!3537 = !DILocation(line: 182, column: 1, scope: !3530)
!3538 = distinct !DISubprogram(name: "VEC_source_location_heap_reserve", scope: !1, file: !1, line: 41, type: !3539, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!460, !3423, !460}
!3541 = !{!3542, !3543, !3544}
!3542 = !DILocalVariable(name: "vec_", arg: 1, scope: !3538, file: !1, line: 41, type: !3423)
!3543 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3538, file: !1, line: 41, type: !460)
!3544 = !DILocalVariable(name: "extend", scope: !3538, file: !1, line: 41, type: !460)
!3545 = !DILocation(line: 0, scope: !3538)
!3546 = !DILocation(line: 41, column: 1, scope: !3538)
!3547 = !DILocation(line: 41, column: 1, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3538, file: !1, line: 41, column: 1)
!3549 = distinct !DISubprogram(name: "VEC_source_location_base_quick_push", scope: !1, file: !1, line: 40, type: !3550, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!3422, !3224, !706}
!3552 = !{!3553, !3554, !3555}
!3553 = !DILocalVariable(name: "vec_", arg: 1, scope: !3549, file: !1, line: 40, type: !3224)
!3554 = !DILocalVariable(name: "obj_", arg: 2, scope: !3549, file: !1, line: 40, type: !706)
!3555 = !DILocalVariable(name: "slot_", scope: !3549, file: !1, line: 40, type: !3422)
!3556 = !DILocation(line: 0, scope: !3549)
!3557 = !DILocation(line: 40, column: 1, scope: !3549)
!3558 = distinct !DISubprogram(name: "VEC_source_location_base_space", scope: !1, file: !1, line: 40, type: !3559, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!460, !3224, !460}
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "vec_", arg: 1, scope: !3558, file: !1, line: 40, type: !3224)
!3563 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3558, file: !1, line: 40, type: !460)
!3564 = !DILocation(line: 0, scope: !3558)
!3565 = !DILocation(line: 40, column: 1, scope: !3558)
!3566 = distinct !DISubprogram(name: "elim_graph_add_node", scope: !1, file: !1, line: 396, type: !3106, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3567)
!3567 = !{!3568, !3569, !3570, !3571}
!3568 = !DILocalVariable(name: "g", arg: 1, scope: !3566, file: !1, line: 396, type: !1761)
!3569 = !DILocalVariable(name: "node", arg: 2, scope: !3566, file: !1, line: 396, type: !460)
!3570 = !DILocalVariable(name: "x", scope: !3566, file: !1, line: 398, type: !460)
!3571 = !DILocalVariable(name: "t", scope: !3566, file: !1, line: 399, type: !460)
!3572 = !DILocation(line: 0, scope: !3566)
!3573 = !DILocation(line: 399, column: 3, scope: !3566)
!3574 = !DILocation(line: 0, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !1, line: 401, column: 3)
!3576 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 401, column: 3)
!3577 = !DILocation(line: 401, column: 8, scope: !3576)
!3578 = !DILocation(line: 0, scope: !3576)
!3579 = !DILocation(line: 401, column: 15, scope: !3575)
!3580 = !DILocation(line: 401, column: 3, scope: !3576)
!3581 = !DILocation(line: 402, column: 9, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 402, column: 9)
!3583 = !DILocation(line: 402, column: 11, scope: !3582)
!3584 = !DILocation(line: 402, column: 9, scope: !3575)
!3585 = !DILocation(line: 401, column: 51, scope: !3575)
!3586 = !DILocation(line: 401, column: 3, scope: !3575)
!3587 = distinct !{!3587, !3580, !3588}
!3588 = !DILocation(line: 403, column: 7, scope: !3576)
!3589 = !DILocation(line: 404, column: 3, scope: !3566)
!3590 = !DILocation(line: 405, column: 1, scope: !3566)
!3591 = distinct !DISubprogram(name: "SET_BIT", scope: !1796, file: !1796, line: 63, type: !3592, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !1795, !5}
!3594 = !{!3595, !3596, !3597}
!3595 = !DILocalVariable(name: "map", arg: 1, scope: !3591, file: !1796, line: 63, type: !1795)
!3596 = !DILocalVariable(name: "bitno", arg: 2, scope: !3591, file: !1796, line: 63, type: !5)
!3597 = !DILocalVariable(name: "oldbit", scope: !3598, file: !1796, line: 67, type: !459)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !1796, line: 66, column: 5)
!3599 = distinct !DILexicalBlock(scope: !3591, file: !1796, line: 65, column: 7)
!3600 = !DILocation(line: 0, scope: !3591)
!3601 = !DILocation(line: 65, column: 12, scope: !3599)
!3602 = !DILocation(line: 65, column: 7, scope: !3599)
!3603 = !DILocation(line: 65, column: 7, scope: !3591)
!3604 = !DILocation(line: 73, column: 40, scope: !3591)
!3605 = !DILocation(line: 73, column: 29, scope: !3591)
!3606 = !DILocation(line: 72, column: 19, scope: !3591)
!3607 = !DILocation(line: 72, column: 3, scope: !3591)
!3608 = !DILocation(line: 68, column: 16, scope: !3598)
!3609 = !DILocation(line: 69, column: 12, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3598, file: !1796, line: 69, column: 11)
!3611 = !DILocation(line: 69, column: 11, scope: !3598)
!3612 = !DILocation(line: 70, column: 2, scope: !3610)
!3613 = !DILocation(line: 70, column: 41, scope: !3610)
!3614 = !DILocation(line: 73, column: 5, scope: !3591)
!3615 = !DILocation(line: 74, column: 1, scope: !3591)
!3616 = distinct !DISubprogram(name: "VEC_int_base_index", scope: !1769, file: !1769, line: 31, type: !3617, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!460, !3090, !5}
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "vec_", arg: 1, scope: !3616, file: !1769, line: 31, type: !3090)
!3621 = !DILocalVariable(name: "ix_", arg: 2, scope: !3616, file: !1769, line: 31, type: !5)
!3622 = !DILocation(line: 0, scope: !3616)
!3623 = !DILocation(line: 31, column: 1, scope: !3616)
!3624 = distinct !DISubprogram(name: "VEC_source_location_base_index", scope: !1, file: !1, line: 40, type: !3625, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!706, !2997, !5}
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "vec_", arg: 1, scope: !3624, file: !1, line: 40, type: !2997)
!3629 = !DILocalVariable(name: "ix_", arg: 2, scope: !3624, file: !1, line: 40, type: !5)
!3630 = !DILocation(line: 0, scope: !3624)
!3631 = !DILocation(line: 40, column: 1, scope: !3624)
!3632 = distinct !DISubprogram(name: "elim_unvisited_predecessor", scope: !1, file: !1, line: 564, type: !3633, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!460, !1761, !460}
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3642}
!3636 = !DILocalVariable(name: "g", arg: 1, scope: !3632, file: !1, line: 564, type: !1761)
!3637 = !DILocalVariable(name: "T", arg: 2, scope: !3632, file: !1, line: 564, type: !460)
!3638 = !DILocalVariable(name: "P", scope: !3632, file: !1, line: 566, type: !460)
!3639 = !DILocalVariable(name: "locus", scope: !3632, file: !1, line: 567, type: !706)
!3640 = !DILocalVariable(name: "x_", scope: !3641, file: !1, line: 569, type: !5)
!3641 = distinct !DILexicalBlock(scope: !3632, file: !1, line: 569, column: 3)
!3642 = !DILocalVariable(name: "y_", scope: !3641, file: !1, line: 569, type: !460)
!3643 = !DILocation(line: 0, scope: !3632)
!3644 = !DILocation(line: 0, scope: !3641)
!3645 = !DILocation(line: 0, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !1, line: 569, column: 3)
!3647 = distinct !DILexicalBlock(scope: !3641, file: !1, line: 569, column: 3)
!3648 = !DILocation(line: 0, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3646, file: !1, line: 569, column: 3)
!3650 = !DILocation(line: 0, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !1, line: 569, column: 3)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !1, line: 569, column: 3)
!3653 = !DILocation(line: 569, column: 3, scope: !3647)
!3654 = !DILocation(line: 0, scope: !3647)
!3655 = !DILocation(line: 569, column: 3, scope: !3646)
!3656 = !DILocation(line: 569, column: 3, scope: !3649)
!3657 = !DILocation(line: 569, column: 3, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3649, file: !1, line: 569, column: 3)
!3659 = !DILocation(line: 569, column: 3, scope: !3651)
!3660 = !DILocation(line: 569, column: 3, scope: !3652)
!3661 = distinct !{!3661, !3653, !3653}
!3662 = !DILocation(line: 575, column: 1, scope: !3632)
!3663 = distinct !DISubprogram(name: "partition_to_var", scope: !1808, file: !1808, line: 111, type: !3664, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!584, !1807, !460}
!3666 = !{!3667, !3668, !3669}
!3667 = !DILocalVariable(name: "map", arg: 1, scope: !3663, file: !1808, line: 111, type: !1807)
!3668 = !DILocalVariable(name: "i", arg: 2, scope: !3663, file: !1808, line: 111, type: !460)
!3669 = !DILocalVariable(name: "name", scope: !3663, file: !1808, line: 113, type: !584)
!3670 = !DILocation(line: 0, scope: !3663)
!3671 = !DILocation(line: 114, column: 12, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3663, file: !1808, line: 114, column: 7)
!3673 = !DILocation(line: 114, column: 7, scope: !3672)
!3674 = !DILocation(line: 114, column: 7, scope: !3663)
!3675 = !DILocation(line: 115, column: 9, scope: !3672)
!3676 = !DILocation(line: 115, column: 5, scope: !3672)
!3677 = !DILocation(line: 116, column: 7, scope: !3663)
!3678 = !DILocation(line: 117, column: 10, scope: !3663)
!3679 = !DILocation(line: 118, column: 3, scope: !3663)
!3680 = distinct !DISubprogram(name: "get_temp_reg", scope: !1, file: !1, line: 600, type: !3681, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!467, !584}
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689}
!3684 = !DILocalVariable(name: "name", arg: 1, scope: !3680, file: !1, line: 600, type: !584)
!3685 = !DILocalVariable(name: "var", scope: !3680, file: !1, line: 602, type: !584)
!3686 = !DILocalVariable(name: "type", scope: !3680, file: !1, line: 603, type: !584)
!3687 = !DILocalVariable(name: "unsignedp", scope: !3680, file: !1, line: 604, type: !460)
!3688 = !DILocalVariable(name: "reg_mode", scope: !3680, file: !1, line: 605, type: !3)
!3689 = !DILocalVariable(name: "x", scope: !3680, file: !1, line: 606, type: !467)
!3690 = !DILocation(line: 0, scope: !3680)
!3691 = !DILocation(line: 602, column: 14, scope: !3680)
!3692 = !DILocation(line: 602, column: 31, scope: !3680)
!3693 = !DILocation(line: 602, column: 45, scope: !3680)
!3694 = !DILocation(line: 603, column: 15, scope: !3680)
!3695 = !DILocation(line: 604, column: 3, scope: !3680)
!3696 = !DILocation(line: 605, column: 32, scope: !3680)
!3697 = !DILocation(line: 606, column: 11, scope: !3680)
!3698 = !DILocation(line: 607, column: 7, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3680, file: !1, line: 607, column: 7)
!3700 = !DILocation(line: 607, column: 7, scope: !3680)
!3701 = !DILocation(line: 608, column: 26, scope: !3699)
!3702 = !DILocation(line: 608, column: 5, scope: !3699)
!3703 = !DILocation(line: 610, column: 1, scope: !3680)
!3704 = !DILocation(line: 609, column: 3, scope: !3680)
!3705 = distinct !DISubprogram(name: "insert_part_to_rtx_on_edge", scope: !1, file: !1, line: 302, type: !3706, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !867, !467, !460, !706}
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714}
!3709 = !DILocalVariable(name: "e", arg: 1, scope: !3705, file: !1, line: 302, type: !867)
!3710 = !DILocalVariable(name: "dest", arg: 2, scope: !3705, file: !1, line: 302, type: !467)
!3711 = !DILocalVariable(name: "src", arg: 3, scope: !3705, file: !1, line: 302, type: !460)
!3712 = !DILocalVariable(name: "locus", arg: 4, scope: !3705, file: !1, line: 302, type: !706)
!3713 = !DILocalVariable(name: "var", scope: !3705, file: !1, line: 304, type: !584)
!3714 = !DILocalVariable(name: "seq", scope: !3705, file: !1, line: 305, type: !467)
!3715 = !DILocation(line: 0, scope: !3705)
!3716 = !DILocation(line: 306, column: 7, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3705, file: !1, line: 306, column: 7)
!3718 = !DILocation(line: 306, column: 17, scope: !3717)
!3719 = !DILocation(line: 306, column: 21, scope: !3717)
!3720 = !DILocation(line: 306, column: 32, scope: !3717)
!3721 = !DILocation(line: 306, column: 7, scope: !3705)
!3722 = !DILocation(line: 310, column: 12, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3717, file: !1, line: 307, column: 5)
!3724 = !DILocation(line: 310, column: 17, scope: !3723)
!3725 = !DILocation(line: 311, column: 12, scope: !3723)
!3726 = !DILocation(line: 311, column: 18, scope: !3723)
!3727 = !DILocation(line: 308, column: 7, scope: !3723)
!3728 = !DILocation(line: 312, column: 25, scope: !3723)
!3729 = !DILocation(line: 312, column: 7, scope: !3723)
!3730 = !DILocation(line: 313, column: 16, scope: !3723)
!3731 = !DILocation(line: 313, column: 7, scope: !3723)
!3732 = !DILocation(line: 314, column: 5, scope: !3723)
!3733 = !DILocation(line: 316, column: 3, scope: !3705)
!3734 = !DILocation(line: 318, column: 3, scope: !3705)
!3735 = !DILocation(line: 323, column: 30, scope: !3705)
!3736 = !DILocation(line: 323, column: 9, scope: !3705)
!3737 = !DILocation(line: 325, column: 12, scope: !3705)
!3738 = !DILocation(line: 325, column: 9, scope: !3705)
!3739 = !DILocation(line: 326, column: 9, scope: !3705)
!3740 = !DILocation(line: 324, column: 9, scope: !3705)
!3741 = !DILocation(line: 329, column: 3, scope: !3705)
!3742 = !DILocation(line: 330, column: 1, scope: !3705)
!3743 = distinct !DISubprogram(name: "elim_backward", scope: !1, file: !1, line: 580, type: !3106, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3751}
!3745 = !DILocalVariable(name: "g", arg: 1, scope: !3743, file: !1, line: 580, type: !1761)
!3746 = !DILocalVariable(name: "T", arg: 2, scope: !3743, file: !1, line: 580, type: !460)
!3747 = !DILocalVariable(name: "P", scope: !3743, file: !1, line: 582, type: !460)
!3748 = !DILocalVariable(name: "locus", scope: !3743, file: !1, line: 583, type: !706)
!3749 = !DILocalVariable(name: "x_", scope: !3750, file: !1, line: 586, type: !5)
!3750 = distinct !DILexicalBlock(scope: !3743, file: !1, line: 586, column: 3)
!3751 = !DILocalVariable(name: "y_", scope: !3750, file: !1, line: 586, type: !460)
!3752 = !DILocation(line: 0, scope: !3743)
!3753 = !DILocation(line: 585, column: 15, scope: !3743)
!3754 = !DILocation(line: 585, column: 3, scope: !3743)
!3755 = !DILocation(line: 0, scope: !3750)
!3756 = !DILocation(line: 0, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !1, line: 586, column: 3)
!3758 = distinct !DILexicalBlock(scope: !3750, file: !1, line: 586, column: 3)
!3759 = !DILocation(line: 0, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !1, line: 586, column: 3)
!3761 = !DILocation(line: 0, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !1, line: 586, column: 3)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !1, line: 586, column: 3)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !1, line: 586, column: 3)
!3765 = !DILocation(line: 586, column: 3, scope: !3758)
!3766 = !DILocation(line: 0, scope: !3758)
!3767 = !DILocation(line: 586, column: 3, scope: !3757)
!3768 = !DILocation(line: 586, column: 3, scope: !3760)
!3769 = !DILocation(line: 586, column: 3, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3760, file: !1, line: 586, column: 3)
!3771 = !DILocation(line: 586, column: 3, scope: !3763)
!3772 = !DILocation(line: 586, column: 3, scope: !3764)
!3773 = !DILocation(line: 586, column: 3, scope: !3762)
!3774 = distinct !{!3774, !3765, !3765}
!3775 = !DILocation(line: 594, column: 1, scope: !3743)
!3776 = distinct !DISubprogram(name: "insert_rtx_to_part_on_edge", scope: !1, file: !1, line: 266, type: !3777, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{null, !867, !460, !467, !460, !706}
!3779 = !{!3780, !3781, !3782, !3783, !3784, !3785}
!3780 = !DILocalVariable(name: "e", arg: 1, scope: !3776, file: !1, line: 266, type: !867)
!3781 = !DILocalVariable(name: "dest", arg: 2, scope: !3776, file: !1, line: 266, type: !460)
!3782 = !DILocalVariable(name: "src", arg: 3, scope: !3776, file: !1, line: 266, type: !467)
!3783 = !DILocalVariable(name: "unsignedsrcp", arg: 4, scope: !3776, file: !1, line: 266, type: !460)
!3784 = !DILocalVariable(name: "locus", arg: 5, scope: !3776, file: !1, line: 267, type: !706)
!3785 = !DILocalVariable(name: "seq", scope: !3776, file: !1, line: 269, type: !467)
!3786 = !DILocation(line: 0, scope: !3776)
!3787 = !DILocation(line: 270, column: 7, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3776, file: !1, line: 270, column: 7)
!3789 = !DILocation(line: 270, column: 17, scope: !3788)
!3790 = !DILocation(line: 270, column: 21, scope: !3788)
!3791 = !DILocation(line: 270, column: 32, scope: !3788)
!3792 = !DILocation(line: 270, column: 7, scope: !3776)
!3793 = !DILocation(line: 274, column: 12, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3788, file: !1, line: 271, column: 5)
!3795 = !DILocation(line: 274, column: 17, scope: !3794)
!3796 = !DILocation(line: 275, column: 12, scope: !3794)
!3797 = !DILocation(line: 275, column: 18, scope: !3794)
!3798 = !DILocation(line: 272, column: 7, scope: !3794)
!3799 = !DILocation(line: 276, column: 25, scope: !3794)
!3800 = !DILocation(line: 276, column: 7, scope: !3794)
!3801 = !DILocation(line: 277, column: 16, scope: !3794)
!3802 = !DILocation(line: 277, column: 7, scope: !3794)
!3803 = !DILocation(line: 278, column: 5, scope: !3794)
!3804 = !DILocation(line: 280, column: 3, scope: !3776)
!3805 = !DILocation(line: 282, column: 3, scope: !3776)
!3806 = !DILocation(line: 284, column: 7, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3776, file: !1, line: 284, column: 7)
!3808 = !DILocation(line: 284, column: 7, scope: !3776)
!3809 = !DILocation(line: 285, column: 5, scope: !3807)
!3810 = !DILocation(line: 291, column: 33, scope: !3776)
!3811 = !DILocation(line: 291, column: 30, scope: !3776)
!3812 = !DILocation(line: 293, column: 30, scope: !3776)
!3813 = !DILocation(line: 293, column: 9, scope: !3776)
!3814 = !DILocation(line: 291, column: 9, scope: !3776)
!3815 = !DILocation(line: 295, column: 3, scope: !3776)
!3816 = !DILocation(line: 296, column: 1, scope: !3776)
!3817 = distinct !DISubprogram(name: "elim_graph_remove_succ_edge", scope: !1, file: !1, line: 423, type: !3818, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!460, !1761, !460, !3422}
!3820 = !{!3821, !3822, !3823, !3824, !3825}
!3821 = !DILocalVariable(name: "g", arg: 1, scope: !3817, file: !1, line: 423, type: !1761)
!3822 = !DILocalVariable(name: "node", arg: 2, scope: !3817, file: !1, line: 423, type: !460)
!3823 = !DILocalVariable(name: "locus", arg: 3, scope: !3817, file: !1, line: 423, type: !3422)
!3824 = !DILocalVariable(name: "y", scope: !3817, file: !1, line: 425, type: !460)
!3825 = !DILocalVariable(name: "x", scope: !3817, file: !1, line: 426, type: !5)
!3826 = !DILocation(line: 0, scope: !3817)
!3827 = !DILocation(line: 0, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !1, line: 427, column: 3)
!3829 = distinct !DILexicalBlock(scope: !3817, file: !1, line: 427, column: 3)
!3830 = !DILocation(line: 427, column: 8, scope: !3829)
!3831 = !DILocation(line: 0, scope: !3829)
!3832 = !DILocation(line: 427, column: 19, scope: !3828)
!3833 = !DILocation(line: 427, column: 17, scope: !3828)
!3834 = !DILocation(line: 427, column: 3, scope: !3829)
!3835 = !DILocation(line: 428, column: 9, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3828, file: !1, line: 428, column: 9)
!3837 = !DILocation(line: 428, column: 42, scope: !3836)
!3838 = !DILocation(line: 428, column: 9, scope: !3828)
!3839 = !DILocation(line: 430, column: 9, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3836, file: !1, line: 429, column: 7)
!3841 = !DILocation(line: 431, column: 6, scope: !3840)
!3842 = !DILocation(line: 432, column: 2, scope: !3840)
!3843 = !DILocation(line: 433, column: 11, scope: !3840)
!3844 = !DILocation(line: 433, column: 9, scope: !3840)
!3845 = !DILocation(line: 434, column: 2, scope: !3840)
!3846 = !DILocation(line: 435, column: 2, scope: !3840)
!3847 = !DILocation(line: 427, column: 53, scope: !3828)
!3848 = !DILocation(line: 427, column: 3, scope: !3828)
!3849 = distinct !{!3849, !3834, !3850}
!3850 = !DILocation(line: 436, column: 7, scope: !3829)
!3851 = !DILocation(line: 437, column: 10, scope: !3817)
!3852 = !DILocation(line: 438, column: 3, scope: !3817)
!3853 = !DILocation(line: 439, column: 1, scope: !3817)
!3854 = distinct !DISubprogram(name: "insert_partition_copy_on_edge", scope: !1, file: !1, line: 173, type: !3855, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !867, !460, !460, !706}
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863}
!3858 = !DILocalVariable(name: "e", arg: 1, scope: !3854, file: !1, line: 173, type: !867)
!3859 = !DILocalVariable(name: "dest", arg: 2, scope: !3854, file: !1, line: 173, type: !460)
!3860 = !DILocalVariable(name: "src", arg: 3, scope: !3854, file: !1, line: 173, type: !460)
!3861 = !DILocalVariable(name: "locus", arg: 4, scope: !3854, file: !1, line: 173, type: !706)
!3862 = !DILocalVariable(name: "var", scope: !3854, file: !1, line: 175, type: !584)
!3863 = !DILocalVariable(name: "seq", scope: !3854, file: !1, line: 176, type: !467)
!3864 = !DILocation(line: 0, scope: !3854)
!3865 = !DILocation(line: 177, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3854, file: !1, line: 177, column: 7)
!3867 = !DILocation(line: 177, column: 17, scope: !3866)
!3868 = !DILocation(line: 177, column: 21, scope: !3866)
!3869 = !DILocation(line: 177, column: 32, scope: !3866)
!3870 = !DILocation(line: 177, column: 7, scope: !3854)
!3871 = !DILocation(line: 182, column: 12, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3866, file: !1, line: 178, column: 5)
!3873 = !DILocation(line: 182, column: 17, scope: !3872)
!3874 = !DILocation(line: 183, column: 12, scope: !3872)
!3875 = !DILocation(line: 183, column: 18, scope: !3872)
!3876 = !DILocation(line: 179, column: 7, scope: !3872)
!3877 = !DILocation(line: 184, column: 16, scope: !3872)
!3878 = !DILocation(line: 184, column: 7, scope: !3872)
!3879 = !DILocation(line: 185, column: 5, scope: !3872)
!3880 = !DILocation(line: 187, column: 3, scope: !3854)
!3881 = !DILocation(line: 188, column: 3, scope: !3854)
!3882 = !DILocation(line: 190, column: 3, scope: !3854)
!3883 = !DILocation(line: 192, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3854, file: !1, line: 192, column: 7)
!3885 = !DILocation(line: 192, column: 7, scope: !3854)
!3886 = !DILocation(line: 193, column: 5, scope: !3884)
!3887 = !DILocation(line: 195, column: 30, scope: !3854)
!3888 = !DILocation(line: 195, column: 9, scope: !3854)
!3889 = !DILocation(line: 196, column: 33, scope: !3854)
!3890 = !DILocation(line: 196, column: 30, scope: !3854)
!3891 = !DILocation(line: 197, column: 9, scope: !3854)
!3892 = !DILocation(line: 198, column: 9, scope: !3854)
!3893 = !DILocation(line: 196, column: 9, scope: !3854)
!3894 = !DILocation(line: 201, column: 3, scope: !3854)
!3895 = !DILocation(line: 202, column: 1, scope: !3854)
!3896 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !133, file: !133, line: 182, type: !3897, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!584, !2988, !5}
!3899 = !{!3900, !3901}
!3900 = !DILocalVariable(name: "vec_", arg: 1, scope: !3896, file: !133, line: 182, type: !2988)
!3901 = !DILocalVariable(name: "ix_", arg: 2, scope: !3896, file: !133, line: 182, type: !5)
!3902 = !DILocation(line: 0, scope: !3896)
!3903 = !DILocation(line: 182, column: 1, scope: !3896)
!3904 = distinct !DISubprogram(name: "set_location_for_edge", scope: !1, file: !1, line: 106, type: !3905, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !867}
!3907 = !{!3908, !3909, !3912, !3913}
!3908 = !DILocalVariable(name: "e", arg: 1, scope: !3904, file: !1, line: 106, type: !867)
!3909 = !DILocalVariable(name: "bb", scope: !3910, file: !1, line: 115, type: !850)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !1, line: 114, column: 5)
!3911 = distinct !DILexicalBlock(scope: !3904, file: !1, line: 108, column: 7)
!3912 = !DILocalVariable(name: "gsi", scope: !3910, file: !1, line: 116, type: !2583)
!3913 = !DILocalVariable(name: "stmt", scope: !3914, file: !1, line: 122, type: !887)
!3914 = distinct !DILexicalBlock(scope: !3915, file: !1, line: 121, column: 6)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !1, line: 120, column: 4)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !1, line: 120, column: 4)
!3917 = distinct !DILexicalBlock(scope: !3910, file: !1, line: 119, column: 2)
!3918 = !DILocation(line: 0, scope: !3904)
!3919 = !DILocation(line: 108, column: 10, scope: !3911)
!3920 = !DILocation(line: 108, column: 7, scope: !3911)
!3921 = !DILocation(line: 108, column: 7, scope: !3904)
!3922 = !DILocation(line: 110, column: 7, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3911, file: !1, line: 109, column: 5)
!3924 = !DILocation(line: 111, column: 31, scope: !3923)
!3925 = !DILocation(line: 111, column: 7, scope: !3923)
!3926 = !DILocation(line: 141, column: 1, scope: !3904)
!3927 = !DILocation(line: 115, column: 27, scope: !3910)
!3928 = !DILocation(line: 0, scope: !3910)
!3929 = !DILocation(line: 116, column: 7, scope: !3910)
!3930 = !DILocation(line: 0, scope: !3916)
!3931 = !DILocation(line: 118, column: 7, scope: !3910)
!3932 = !DILocation(line: 120, column: 15, scope: !3916)
!3933 = !DILocation(line: 120, column: 9, scope: !3916)
!3934 = !DILocation(line: 120, column: 34, scope: !3915)
!3935 = !DILocation(line: 120, column: 33, scope: !3915)
!3936 = !DILocation(line: 120, column: 4, scope: !3916)
!3937 = !DILocation(line: 122, column: 22, scope: !3914)
!3938 = !DILocation(line: 0, scope: !3914)
!3939 = !DILocation(line: 123, column: 12, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3914, file: !1, line: 123, column: 12)
!3941 = !DILocation(line: 123, column: 12, scope: !3914)
!3942 = !DILocation(line: 125, column: 12, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3914, file: !1, line: 125, column: 12)
!3944 = !DILocation(line: 125, column: 39, scope: !3943)
!3945 = !DILocation(line: 125, column: 42, scope: !3943)
!3946 = !DILocation(line: 125, column: 12, scope: !3914)
!3947 = !DILocation(line: 127, column: 36, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3943, file: !1, line: 126, column: 3)
!3949 = !DILocation(line: 127, column: 5, scope: !3948)
!3950 = !DILocation(line: 128, column: 26, scope: !3948)
!3951 = !DILocation(line: 128, column: 5, scope: !3948)
!3952 = !DILocation(line: 129, column: 5, scope: !3948)
!3953 = !DILocation(line: 120, column: 51, scope: !3915)
!3954 = !DILocation(line: 120, column: 4, scope: !3915)
!3955 = distinct !{!3955, !3936, !3956}
!3956 = !DILocation(line: 131, column: 6, scope: !3916)
!3957 = !DILocation(line: 134, column: 8, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3917, file: !1, line: 134, column: 8)
!3959 = !DILocation(line: 134, column: 8, scope: !3917)
!3960 = !DILocation(line: 135, column: 11, scope: !3958)
!3961 = !DILocation(line: 139, column: 23, scope: !3910)
!3962 = !DILocation(line: 135, column: 6, scope: !3958)
!3963 = !DILocation(line: 137, column: 14, scope: !3958)
!3964 = !DILocation(line: 0, scope: !3958)
!3965 = !DILocation(line: 139, column: 17, scope: !3910)
!3966 = !DILocation(line: 138, column: 2, scope: !3917)
!3967 = distinct !{!3967, !3931, !3968}
!3968 = !DILocation(line: 139, column: 26, scope: !3910)
!3969 = !DILocation(line: 140, column: 5, scope: !3911)
!3970 = distinct !DISubprogram(name: "emit_partition_copy", scope: !1, file: !1, line: 148, type: !3971, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!467, !467, !467, !460, !584}
!3973 = !{!3974, !3975, !3976, !3977, !3978}
!3974 = !DILocalVariable(name: "dest", arg: 1, scope: !3970, file: !1, line: 148, type: !467)
!3975 = !DILocalVariable(name: "src", arg: 2, scope: !3970, file: !1, line: 148, type: !467)
!3976 = !DILocalVariable(name: "unsignedsrcp", arg: 3, scope: !3970, file: !1, line: 148, type: !460)
!3977 = !DILocalVariable(name: "sizeexp", arg: 4, scope: !3970, file: !1, line: 148, type: !584)
!3978 = !DILocalVariable(name: "seq", scope: !3970, file: !1, line: 150, type: !467)
!3979 = !DILocation(line: 0, scope: !3970)
!3980 = !DILocation(line: 152, column: 3, scope: !3970)
!3981 = !DILocation(line: 154, column: 7, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3970, file: !1, line: 154, column: 7)
!3983 = !DILocation(line: 154, column: 22, scope: !3982)
!3984 = !DILocation(line: 154, column: 34, scope: !3982)
!3985 = !DILocation(line: 154, column: 55, scope: !3982)
!3986 = !DILocation(line: 154, column: 52, scope: !3982)
!3987 = !DILocation(line: 154, column: 7, scope: !3970)
!3988 = !DILocation(line: 155, column: 28, scope: !3982)
!3989 = !DILocation(line: 155, column: 11, scope: !3982)
!3990 = !DILocation(line: 0, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3970, file: !1, line: 156, column: 7)
!3992 = !DILocation(line: 156, column: 7, scope: !3991)
!3993 = !DILocation(line: 155, column: 5, scope: !3982)
!3994 = !DILocation(line: 156, column: 22, scope: !3991)
!3995 = !DILocation(line: 156, column: 7, scope: !3970)
!3996 = !DILocation(line: 158, column: 7, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3991, file: !1, line: 157, column: 5)
!3998 = !DILocation(line: 159, column: 35, scope: !3997)
!3999 = !DILocation(line: 159, column: 7, scope: !3997)
!4000 = !DILocation(line: 160, column: 5, scope: !3997)
!4001 = !DILocation(line: 162, column: 5, scope: !3991)
!4002 = !DILocation(line: 164, column: 9, scope: !3970)
!4003 = !DILocation(line: 165, column: 3, scope: !3970)
!4004 = !DILocation(line: 167, column: 3, scope: !3970)
!4005 = distinct !DISubprogram(name: "gsi_last_bb", scope: !376, file: !376, line: 4450, type: !4006, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!2583, !850}
!4008 = !{!4009, !4010, !4011}
!4009 = !DILocalVariable(name: "bb", arg: 1, scope: !4005, file: !376, line: 4450, type: !850)
!4010 = !DILocalVariable(name: "i", scope: !4005, file: !376, line: 4452, type: !2583)
!4011 = !DILocalVariable(name: "seq", scope: !4005, file: !376, line: 4453, type: !877)
!4012 = !DILocation(line: 0, scope: !4005)
!4013 = !DILocation(line: 4452, column: 24, scope: !4005)
!4014 = !DILocation(line: 4455, column: 9, scope: !4005)
!4015 = !DILocation(line: 4456, column: 11, scope: !4005)
!4016 = !DILocation(line: 4456, column: 5, scope: !4005)
!4017 = !DILocation(line: 4456, column: 9, scope: !4005)
!4018 = !DILocation(line: 4457, column: 5, scope: !4005)
!4019 = !DILocation(line: 4457, column: 9, scope: !4005)
!4020 = !DILocation(line: 4458, column: 5, scope: !4005)
!4021 = !DILocation(line: 4458, column: 8, scope: !4005)
!4022 = !DILocation(line: 4461, column: 1, scope: !4005)
!4023 = distinct !DISubprogram(name: "is_gimple_debug", scope: !376, file: !376, line: 3249, type: !4024, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!459, !3349}
!4026 = !{!4027}
!4027 = !DILocalVariable(name: "gs", arg: 1, scope: !4023, file: !376, line: 3249, type: !3349)
!4028 = !DILocation(line: 0, scope: !4023)
!4029 = !DILocation(line: 3251, column: 10, scope: !4023)
!4030 = !DILocation(line: 3251, column: 27, scope: !4023)
!4031 = !DILocation(line: 3251, column: 3, scope: !4023)
!4032 = distinct !DISubprogram(name: "gimple_has_location", scope: !376, file: !376, line: 1165, type: !4024, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4033)
!4033 = !{!4034}
!4034 = !DILocalVariable(name: "g", arg: 1, scope: !4032, file: !376, line: 1165, type: !3349)
!4035 = !DILocation(line: 0, scope: !4032)
!4036 = !DILocation(line: 1167, column: 10, scope: !4032)
!4037 = !DILocation(line: 1167, column: 30, scope: !4032)
!4038 = !DILocation(line: 1167, column: 3, scope: !4032)
!4039 = distinct !DISubprogram(name: "gimple_block", scope: !376, file: !376, line: 1121, type: !3347, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4040)
!4040 = !{!4041}
!4041 = !DILocalVariable(name: "g", arg: 1, scope: !4039, file: !376, line: 1121, type: !3349)
!4042 = !DILocation(line: 0, scope: !4039)
!4043 = !DILocation(line: 1123, column: 20, scope: !4039)
!4044 = !DILocation(line: 1123, column: 3, scope: !4039)
!4045 = distinct !DISubprogram(name: "gimple_location", scope: !376, file: !376, line: 1139, type: !4046, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4048)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!704, !3349}
!4048 = !{!4049}
!4049 = !DILocalVariable(name: "g", arg: 1, scope: !4045, file: !376, line: 1139, type: !3349)
!4050 = !DILocation(line: 0, scope: !4045)
!4051 = !DILocation(line: 1141, column: 20, scope: !4045)
!4052 = !DILocation(line: 1141, column: 3, scope: !4045)
!4053 = distinct !DISubprogram(name: "gsi_prev", scope: !376, file: !376, line: 4493, type: !3451, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4054)
!4054 = !{!4055}
!4055 = !DILocalVariable(name: "i", arg: 1, scope: !4053, file: !376, line: 4493, type: !3453)
!4056 = !DILocation(line: 0, scope: !4053)
!4057 = !DILocation(line: 4495, column: 15, scope: !4053)
!4058 = !DILocation(line: 4495, column: 20, scope: !4053)
!4059 = !DILocation(line: 4495, column: 10, scope: !4053)
!4060 = !DILocation(line: 4496, column: 1, scope: !4053)
!4061 = distinct !DISubprogram(name: "single_pred", scope: !328, file: !328, line: 672, type: !4062, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!850, !2449}
!4064 = !{!4065}
!4065 = !DILocalVariable(name: "bb", arg: 1, scope: !4061, file: !328, line: 672, type: !2449)
!4066 = !DILocation(line: 0, scope: !4061)
!4067 = !DILocation(line: 674, column: 10, scope: !4061)
!4068 = !DILocation(line: 674, column: 33, scope: !4061)
!4069 = !DILocation(line: 674, column: 3, scope: !4061)
!4070 = distinct !DISubprogram(name: "bb_seq", scope: !376, file: !376, line: 237, type: !2447, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4071)
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "bb", arg: 1, scope: !4070, file: !376, line: 237, type: !2449)
!4073 = !DILocation(line: 0, scope: !4070)
!4074 = !DILocation(line: 239, column: 17, scope: !4070)
!4075 = !DILocation(line: 239, column: 23, scope: !4070)
!4076 = !DILocation(line: 239, column: 33, scope: !4070)
!4077 = !DILocation(line: 239, column: 43, scope: !4070)
!4078 = !DILocation(line: 239, column: 36, scope: !4070)
!4079 = !DILocation(line: 239, column: 10, scope: !4070)
!4080 = !DILocation(line: 239, column: 68, scope: !4070)
!4081 = !DILocation(line: 239, column: 3, scope: !4070)
!4082 = distinct !DISubprogram(name: "gimple_seq_last", scope: !376, file: !376, line: 178, type: !4083, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!882, !2434}
!4085 = !{!4086}
!4086 = !DILocalVariable(name: "s", arg: 1, scope: !4082, file: !376, line: 178, type: !2434)
!4087 = !DILocation(line: 0, scope: !4082)
!4088 = !DILocation(line: 180, column: 10, scope: !4082)
!4089 = !DILocation(line: 180, column: 17, scope: !4082)
!4090 = !DILocation(line: 180, column: 3, scope: !4082)
!4091 = distinct !DISubprogram(name: "gimple_code", scope: !376, file: !376, line: 1052, type: !4092, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!375, !3349}
!4094 = !{!4095}
!4095 = !DILocalVariable(name: "g", arg: 1, scope: !4091, file: !376, line: 1052, type: !3349)
!4096 = !DILocation(line: 0, scope: !4091)
!4097 = !DILocation(line: 1054, column: 20, scope: !4091)
!4098 = !DILocation(line: 1054, column: 3, scope: !4091)
!4099 = distinct !DISubprogram(name: "VEC_int_base_replace", scope: !1769, file: !1769, line: 31, type: !4100, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!460, !3079, !5, !460}
!4102 = !{!4103, !4104, !4105, !4106}
!4103 = !DILocalVariable(name: "vec_", arg: 1, scope: !4099, file: !1769, line: 31, type: !3079)
!4104 = !DILocalVariable(name: "ix_", arg: 2, scope: !4099, file: !1769, line: 31, type: !5)
!4105 = !DILocalVariable(name: "obj_", arg: 3, scope: !4099, file: !1769, line: 31, type: !460)
!4106 = !DILocalVariable(name: "old_obj_", scope: !4099, file: !1769, line: 31, type: !460)
!4107 = !DILocation(line: 0, scope: !4099)
!4108 = !DILocation(line: 31, column: 1, scope: !4099)
!4109 = distinct !DISubprogram(name: "VEC_source_location_base_replace", scope: !1, file: !1, line: 40, type: !4110, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!706, !3224, !5, !706}
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "vec_", arg: 1, scope: !4109, file: !1, line: 40, type: !3224)
!4114 = !DILocalVariable(name: "ix_", arg: 2, scope: !4109, file: !1, line: 40, type: !5)
!4115 = !DILocalVariable(name: "obj_", arg: 3, scope: !4109, file: !1, line: 40, type: !706)
!4116 = !DILocalVariable(name: "old_obj_", scope: !4109, file: !1, line: 40, type: !706)
!4117 = !DILocation(line: 0, scope: !4109)
!4118 = !DILocation(line: 40, column: 1, scope: !4109)
!4119 = distinct !DISubprogram(name: "expand_expr", scope: !415, file: !415, line: 555, type: !4120, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!467, !584, !467, !3, !414}
!4122 = !{!4123, !4124, !4125, !4126}
!4123 = !DILocalVariable(name: "exp", arg: 1, scope: !4119, file: !415, line: 555, type: !584)
!4124 = !DILocalVariable(name: "target", arg: 2, scope: !4119, file: !415, line: 555, type: !467)
!4125 = !DILocalVariable(name: "mode", arg: 3, scope: !4119, file: !415, line: 555, type: !3)
!4126 = !DILocalVariable(name: "modifier", arg: 4, scope: !4119, file: !415, line: 556, type: !414)
!4127 = !DILocation(line: 0, scope: !4119)
!4128 = !DILocation(line: 558, column: 10, scope: !4119)
!4129 = !DILocation(line: 558, column: 3, scope: !4119)
!4130 = distinct !DISubprogram(name: "gsi_start", scope: !376, file: !376, line: 4403, type: !4131, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!2583, !877}
!4133 = !{!4134, !4135}
!4134 = !DILocalVariable(name: "seq", arg: 1, scope: !4130, file: !376, line: 4403, type: !877)
!4135 = !DILocalVariable(name: "i", scope: !4130, file: !376, line: 4405, type: !2583)
!4136 = !DILocation(line: 0, scope: !4130)
!4137 = distinct !DISubprogram(name: "gimple_seq_first", scope: !376, file: !376, line: 159, type: !4083, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4138)
!4138 = !{!4139}
!4139 = !DILocalVariable(name: "s", arg: 1, scope: !4137, file: !376, line: 159, type: !2434)
!4140 = !DILocation(line: 0, scope: !4137)
!4141 = !DILocation(line: 161, column: 10, scope: !4137)
!4142 = !DILocation(line: 161, column: 17, scope: !4137)
!4143 = !DILocation(line: 161, column: 3, scope: !4137)
!4144 = distinct !DISubprogram(name: "gimple_bb", scope: !376, file: !376, line: 1112, type: !4145, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!851, !3349}
!4147 = !{!4148}
!4148 = !DILocalVariable(name: "g", arg: 1, scope: !4144, file: !376, line: 1112, type: !3349)
!4149 = !DILocation(line: 0, scope: !4144)
!4150 = !DILocation(line: 1114, column: 20, scope: !4144)
!4151 = !DILocation(line: 1114, column: 3, scope: !4144)
!4152 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1769, file: !1769, line: 32, type: !4153, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{null, !3403}
!4155 = !{!4156}
!4156 = !DILocalVariable(name: "vec_", arg: 1, scope: !4152, file: !1769, line: 32, type: !3403)
!4157 = !DILocation(line: 0, scope: !4152)
!4158 = !DILocation(line: 32, column: 1, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4152, file: !1769, line: 32, column: 1)
!4160 = !DILocation(line: 32, column: 1, scope: !4152)
!4161 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !133, file: !133, line: 184, type: !4162, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4164)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !3413}
!4164 = !{!4165}
!4165 = !DILocalVariable(name: "vec_", arg: 1, scope: !4161, file: !133, line: 184, type: !3413)
!4166 = !DILocation(line: 0, scope: !4161)
!4167 = !DILocation(line: 184, column: 1, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4161, file: !133, line: 184, column: 1)
!4169 = !DILocation(line: 184, column: 1, scope: !4161)
!4170 = distinct !DISubprogram(name: "VEC_source_location_heap_free", scope: !1, file: !1, line: 41, type: !4171, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !3423}
!4173 = !{!4174}
!4174 = !DILocalVariable(name: "vec_", arg: 1, scope: !4170, file: !1, line: 41, type: !3423)
!4175 = !DILocation(line: 0, scope: !4170)
!4176 = !DILocation(line: 41, column: 1, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4170, file: !1, line: 41, column: 1)
!4178 = !DILocation(line: 41, column: 1, scope: !4170)
!4179 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !376, file: !376, line: 3061, type: !4180, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!5, !3349}
!4182 = !{!4183}
!4183 = !DILocalVariable(name: "gs", arg: 1, scope: !4179, file: !376, line: 3061, type: !3349)
!4184 = !DILocation(line: 0, scope: !4179)
!4185 = !DILocation(line: 3064, column: 25, scope: !4179)
!4186 = !DILocation(line: 3064, column: 3, scope: !4179)
!4187 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !2446, file: !2446, line: 450, type: !4188, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4190)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!584, !887, !1032}
!4190 = !{!4191, !4192, !4193}
!4191 = !DILocalVariable(name: "gs", arg: 1, scope: !4187, file: !2446, line: 450, type: !887)
!4192 = !DILocalVariable(name: "index", arg: 2, scope: !4187, file: !2446, line: 450, type: !1032)
!4193 = !DILocalVariable(name: "pd", scope: !4187, file: !2446, line: 452, type: !3474)
!4194 = !DILocation(line: 0, scope: !4187)
!4195 = !DILocation(line: 452, column: 46, scope: !4187)
!4196 = !DILocation(line: 452, column: 26, scope: !4187)
!4197 = !DILocation(line: 453, column: 33, scope: !4187)
!4198 = !DILocation(line: 453, column: 10, scope: !4187)
!4199 = !DILocation(line: 453, column: 3, scope: !4187)
!4200 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !2446, file: !2446, line: 467, type: !4201, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!867, !887, !1032}
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "gs", arg: 1, scope: !4200, file: !2446, line: 467, type: !887)
!4205 = !DILocalVariable(name: "i", arg: 2, scope: !4200, file: !2446, line: 467, type: !1032)
!4206 = !DILocation(line: 0, scope: !4200)
!4207 = !DILocation(line: 469, column: 10, scope: !4200)
!4208 = !DILocation(line: 469, column: 3, scope: !4200)
!4209 = distinct !DISubprogram(name: "trivially_conflicts_p", scope: !1, file: !1, line: 966, type: !4210, scopeLine: 967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!459, !850, !584, !584}
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4225, !4226}
!4213 = !DILocalVariable(name: "bb", arg: 1, scope: !4209, file: !1, line: 966, type: !850)
!4214 = !DILocalVariable(name: "result", arg: 2, scope: !4209, file: !1, line: 966, type: !584)
!4215 = !DILocalVariable(name: "arg", arg: 3, scope: !4209, file: !1, line: 966, type: !584)
!4216 = !DILocalVariable(name: "use", scope: !4209, file: !1, line: 968, type: !1844)
!4217 = !DILocalVariable(name: "imm_iter", scope: !4209, file: !1, line: 969, type: !4218)
!4218 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !790, line: 249, baseType: !4219)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !790, line: 238, size: 448, elements: !4220)
!4220 = !{!4221, !4222, !4223, !4224}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !4219, file: !790, line: 241, baseType: !1845, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !4219, file: !790, line: 243, baseType: !1845, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !4219, file: !790, line: 245, baseType: !1846, size: 256, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !4219, file: !790, line: 248, baseType: !1845, size: 64, offset: 384)
!4225 = !DILocalVariable(name: "defa", scope: !4209, file: !1, line: 970, type: !887)
!4226 = !DILocalVariable(name: "use_stmt", scope: !4227, file: !1, line: 979, type: !887)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !1, line: 978, column: 5)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !1, line: 977, column: 3)
!4229 = distinct !DILexicalBlock(scope: !4209, file: !1, line: 977, column: 3)
!4230 = !DILocation(line: 0, scope: !4209)
!4231 = !DILocation(line: 969, column: 3, scope: !4209)
!4232 = !DILocation(line: 970, column: 17, scope: !4209)
!4233 = !DILocation(line: 974, column: 7, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4209, file: !1, line: 974, column: 7)
!4235 = !DILocation(line: 974, column: 24, scope: !4234)
!4236 = !DILocation(line: 974, column: 7, scope: !4209)
!4237 = !DILocation(line: 977, column: 3, scope: !4229)
!4238 = !DILocation(line: 0, scope: !4229)
!4239 = !DILocation(line: 977, column: 3, scope: !4228)
!4240 = !DILocation(line: 979, column: 25, scope: !4227)
!4241 = !DILocation(line: 0, scope: !4227)
!4242 = !DILocation(line: 980, column: 11, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4227, file: !1, line: 980, column: 11)
!4244 = !DILocation(line: 980, column: 11, scope: !4227)
!4245 = !DILocation(line: 984, column: 11, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4227, file: !1, line: 984, column: 11)
!4247 = !DILocation(line: 984, column: 32, scope: !4246)
!4248 = !DILocation(line: 984, column: 11, scope: !4227)
!4249 = !DILocation(line: 986, column: 11, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4227, file: !1, line: 986, column: 11)
!4251 = !DILocation(line: 986, column: 34, scope: !4250)
!4252 = !DILocation(line: 986, column: 11, scope: !4227)
!4253 = !DILocation(line: 990, column: 11, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4227, file: !1, line: 990, column: 11)
!4255 = !DILocation(line: 990, column: 30, scope: !4254)
!4256 = !DILocation(line: 990, column: 11, scope: !4227)
!4257 = !DILocation(line: 992, column: 7, scope: !4227)
!4258 = !DILocation(line: 995, column: 11, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4227, file: !1, line: 995, column: 11)
!4260 = !DILocation(line: 995, column: 31, scope: !4259)
!4261 = !DILocation(line: 995, column: 29, scope: !4259)
!4262 = !DILocation(line: 0, scope: !4228)
!4263 = distinct !{!4263, !4237, !4264}
!4264 = !DILocation(line: 997, column: 5, scope: !4229)
!4265 = !DILocation(line: 1000, column: 1, scope: !4209)
!4266 = distinct !DISubprogram(name: "make_ssa_name", scope: !2446, file: !2446, line: 1245, type: !4267, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!584, !584, !887}
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "var", arg: 1, scope: !4266, file: !2446, line: 1245, type: !584)
!4271 = !DILocalVariable(name: "stmt", arg: 2, scope: !4266, file: !2446, line: 1245, type: !887)
!4272 = !DILocation(line: 0, scope: !4266)
!4273 = !DILocation(line: 1247, column: 28, scope: !4266)
!4274 = !DILocation(line: 1247, column: 10, scope: !4266)
!4275 = !DILocation(line: 1247, column: 3, scope: !4266)
!4276 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !376, file: !376, line: 1714, type: !4277, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{null, !887, !584}
!4279 = !{!4280, !4281}
!4280 = !DILocalVariable(name: "gs", arg: 1, scope: !4276, file: !376, line: 1714, type: !887)
!4281 = !DILocalVariable(name: "lhs", arg: 2, scope: !4276, file: !376, line: 1714, type: !584)
!4282 = !DILocation(line: 0, scope: !4276)
!4283 = !DILocation(line: 1717, column: 3, scope: !4276)
!4284 = !DILocation(line: 1719, column: 7, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4276, file: !376, line: 1719, column: 7)
!4286 = !DILocation(line: 1719, column: 11, scope: !4285)
!4287 = !DILocation(line: 1719, column: 14, scope: !4285)
!4288 = !DILocation(line: 1719, column: 30, scope: !4285)
!4289 = !DILocation(line: 1719, column: 7, scope: !4276)
!4290 = !DILocation(line: 1720, column: 5, scope: !4285)
!4291 = !DILocation(line: 1720, column: 29, scope: !4285)
!4292 = !DILocation(line: 1721, column: 1, scope: !4276)
!4293 = distinct !DISubprogram(name: "gimple_phi_arg_has_location", scope: !2446, file: !2446, line: 499, type: !4294, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!459, !887, !1032}
!4296 = !{!4297, !4298}
!4297 = !DILocalVariable(name: "gs", arg: 1, scope: !4293, file: !2446, line: 499, type: !887)
!4298 = !DILocalVariable(name: "i", arg: 2, scope: !4293, file: !2446, line: 499, type: !1032)
!4299 = !DILocation(line: 0, scope: !4293)
!4300 = !DILocation(line: 501, column: 10, scope: !4293)
!4301 = !DILocation(line: 501, column: 42, scope: !4293)
!4302 = !DILocation(line: 501, column: 3, scope: !4293)
!4303 = distinct !DISubprogram(name: "gimple_set_location", scope: !376, file: !376, line: 1156, type: !4304, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !887, !704}
!4306 = !{!4307, !4308}
!4307 = !DILocalVariable(name: "g", arg: 1, scope: !4303, file: !376, line: 1156, type: !887)
!4308 = !DILocalVariable(name: "location", arg: 2, scope: !4303, file: !376, line: 1156, type: !704)
!4309 = !DILocation(line: 0, scope: !4303)
!4310 = !DILocation(line: 1158, column: 13, scope: !4303)
!4311 = !DILocation(line: 1158, column: 22, scope: !4303)
!4312 = !DILocation(line: 1159, column: 1, scope: !4303)
!4313 = distinct !DISubprogram(name: "gimple_phi_arg_location", scope: !2446, file: !2446, line: 475, type: !4314, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!706, !887, !1032}
!4316 = !{!4317, !4318}
!4317 = !DILocalVariable(name: "gs", arg: 1, scope: !4313, file: !2446, line: 475, type: !887)
!4318 = !DILocalVariable(name: "i", arg: 2, scope: !4313, file: !2446, line: 475, type: !1032)
!4319 = !DILocation(line: 0, scope: !4313)
!4320 = !DILocation(line: 477, column: 30, scope: !4313)
!4321 = !DILocation(line: 477, column: 10, scope: !4313)
!4322 = !DILocation(line: 477, column: 34, scope: !4313)
!4323 = !DILocation(line: 477, column: 3, scope: !4313)
!4324 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !2446, file: !2446, line: 233, type: !4325, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4327)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !1844, !584}
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "use", arg: 1, scope: !4324, file: !2446, line: 233, type: !1844)
!4329 = !DILocalVariable(name: "val", arg: 2, scope: !4324, file: !2446, line: 233, type: !584)
!4330 = !DILocation(line: 0, scope: !4324)
!4331 = !DILocation(line: 235, column: 3, scope: !4324)
!4332 = !DILocation(line: 236, column: 10, scope: !4324)
!4333 = !DILocation(line: 236, column: 15, scope: !4324)
!4334 = !DILocation(line: 237, column: 3, scope: !4324)
!4335 = !DILocation(line: 238, column: 1, scope: !4324)
!4336 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !2446, file: !2446, line: 292, type: !4337, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4340)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!1844, !4339, !584}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4340 = !{!4341, !4342}
!4341 = !DILocalVariable(name: "imm", arg: 1, scope: !4336, file: !2446, line: 292, type: !4339)
!4342 = !DILocalVariable(name: "var", arg: 2, scope: !4336, file: !2446, line: 292, type: !584)
!4343 = !DILocation(line: 0, scope: !4336)
!4344 = !DILocation(line: 294, column: 18, scope: !4336)
!4345 = !DILocation(line: 294, column: 8, scope: !4336)
!4346 = !DILocation(line: 294, column: 14, scope: !4336)
!4347 = !DILocation(line: 295, column: 30, scope: !4336)
!4348 = !DILocation(line: 295, column: 16, scope: !4336)
!4349 = !DILocation(line: 299, column: 7, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4336, file: !2446, line: 299, column: 7)
!4351 = !DILocation(line: 299, column: 7, scope: !4336)
!4352 = !DILocation(line: 301, column: 15, scope: !4336)
!4353 = !DILocation(line: 301, column: 3, scope: !4336)
!4354 = !DILocation(line: 302, column: 1, scope: !4336)
!4355 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !2446, file: !2446, line: 285, type: !4356, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4360)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!459, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4218)
!4360 = !{!4361}
!4361 = !DILocalVariable(name: "imm", arg: 1, scope: !4355, file: !2446, line: 285, type: !4358)
!4362 = !DILocation(line: 0, scope: !4355)
!4363 = !DILocation(line: 287, column: 16, scope: !4355)
!4364 = !DILocation(line: 287, column: 32, scope: !4355)
!4365 = !DILocation(line: 287, column: 24, scope: !4355)
!4366 = !DILocation(line: 287, column: 10, scope: !4355)
!4367 = !DILocation(line: 287, column: 3, scope: !4355)
!4368 = distinct !DISubprogram(name: "maybe_renumber_stmts_bb", scope: !1, file: !1, line: 944, type: !4369, scopeLine: 945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !850}
!4371 = !{!4372, !4373, !4374, !4375}
!4372 = !DILocalVariable(name: "bb", arg: 1, scope: !4368, file: !1, line: 944, type: !850)
!4373 = !DILocalVariable(name: "i", scope: !4368, file: !1, line: 946, type: !5)
!4374 = !DILocalVariable(name: "gsi", scope: !4368, file: !1, line: 947, type: !2583)
!4375 = !DILocalVariable(name: "stmt", scope: !4376, file: !1, line: 954, type: !887)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !1, line: 953, column: 5)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !1, line: 952, column: 3)
!4378 = distinct !DILexicalBlock(scope: !4368, file: !1, line: 952, column: 3)
!4379 = !DILocation(line: 0, scope: !4368)
!4380 = !DILocation(line: 947, column: 3, scope: !4368)
!4381 = !DILocation(line: 949, column: 12, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4368, file: !1, line: 949, column: 7)
!4383 = !DILocation(line: 949, column: 8, scope: !4382)
!4384 = !DILocation(line: 949, column: 7, scope: !4368)
!4385 = !DILocation(line: 951, column: 11, scope: !4368)
!4386 = !DILocation(line: 952, column: 14, scope: !4378)
!4387 = !DILocation(line: 952, column: 8, scope: !4378)
!4388 = !DILocation(line: 952, column: 34, scope: !4377)
!4389 = !DILocation(line: 952, column: 33, scope: !4377)
!4390 = !DILocation(line: 952, column: 3, scope: !4378)
!4391 = !DILocation(line: 954, column: 21, scope: !4376)
!4392 = !DILocation(line: 0, scope: !4376)
!4393 = !DILocation(line: 955, column: 7, scope: !4376)
!4394 = !DILocation(line: 956, column: 8, scope: !4376)
!4395 = !DILocation(line: 952, column: 51, scope: !4377)
!4396 = !DILocation(line: 952, column: 3, scope: !4377)
!4397 = distinct !{!4397, !4390, !4398}
!4398 = !DILocation(line: 957, column: 5, scope: !4378)
!4399 = !DILocation(line: 958, column: 1, scope: !4368)
!4400 = distinct !DISubprogram(name: "gimple_uid", scope: !376, file: !376, line: 1265, type: !4180, scopeLine: 1266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4401)
!4401 = !{!4402}
!4402 = !DILocalVariable(name: "g", arg: 1, scope: !4400, file: !376, line: 1265, type: !3349)
!4403 = !DILocation(line: 0, scope: !4400)
!4404 = !DILocation(line: 1267, column: 20, scope: !4400)
!4405 = !DILocation(line: 1267, column: 3, scope: !4400)
!4406 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !2446, file: !2446, line: 306, type: !4407, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!1844, !4339}
!4409 = !{!4410, !4411}
!4410 = !DILocalVariable(name: "imm", arg: 1, scope: !4406, file: !2446, line: 306, type: !4339)
!4411 = !DILocalVariable(name: "old", scope: !4406, file: !2446, line: 308, type: !1844)
!4412 = !DILocation(line: 0, scope: !4406)
!4413 = !DILocation(line: 308, column: 28, scope: !4406)
!4414 = !DILocation(line: 319, column: 23, scope: !4406)
!4415 = !DILocation(line: 319, column: 16, scope: !4406)
!4416 = !DILocation(line: 320, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4406, file: !2446, line: 320, column: 7)
!4418 = !DILocation(line: 320, column: 7, scope: !4406)
!4419 = !DILocation(line: 322, column: 15, scope: !4406)
!4420 = !DILocation(line: 322, column: 3, scope: !4406)
!4421 = !DILocation(line: 323, column: 1, scope: !4406)
!4422 = distinct !DISubprogram(name: "gsi_start_bb", scope: !376, file: !376, line: 4418, type: !4006, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4423)
!4423 = !{!4424, !4425, !4426}
!4424 = !DILocalVariable(name: "bb", arg: 1, scope: !4422, file: !376, line: 4418, type: !850)
!4425 = !DILocalVariable(name: "i", scope: !4422, file: !376, line: 4420, type: !2583)
!4426 = !DILocalVariable(name: "seq", scope: !4422, file: !376, line: 4421, type: !877)
!4427 = !DILocation(line: 0, scope: !4422)
!4428 = !DILocation(line: 4420, column: 24, scope: !4422)
!4429 = !DILocation(line: 4423, column: 9, scope: !4422)
!4430 = !DILocation(line: 4424, column: 11, scope: !4422)
!4431 = !DILocation(line: 4424, column: 5, scope: !4422)
!4432 = !DILocation(line: 4424, column: 9, scope: !4422)
!4433 = !DILocation(line: 4425, column: 5, scope: !4422)
!4434 = !DILocation(line: 4425, column: 9, scope: !4422)
!4435 = !DILocation(line: 4426, column: 5, scope: !4422)
!4436 = !DILocation(line: 4426, column: 8, scope: !4422)
!4437 = !DILocation(line: 4429, column: 1, scope: !4422)
!4438 = distinct !DISubprogram(name: "gimple_set_uid", scope: !376, file: !376, line: 1256, type: !4439, scopeLine: 1257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !887, !5}
!4441 = !{!4442, !4443}
!4442 = !DILocalVariable(name: "g", arg: 1, scope: !4438, file: !376, line: 1256, type: !887)
!4443 = !DILocalVariable(name: "uid", arg: 2, scope: !4438, file: !376, line: 1256, type: !5)
!4444 = !DILocation(line: 0, scope: !4438)
!4445 = !DILocation(line: 1258, column: 13, scope: !4438)
!4446 = !DILocation(line: 1258, column: 17, scope: !4438)
!4447 = !DILocation(line: 1259, column: 1, scope: !4438)
!4448 = distinct !DISubprogram(name: "gimple_set_op", scope: !376, file: !376, line: 1663, type: !4449, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !887, !5, !584}
!4451 = !{!4452, !4453, !4454}
!4452 = !DILocalVariable(name: "gs", arg: 1, scope: !4448, file: !376, line: 1663, type: !887)
!4453 = !DILocalVariable(name: "i", arg: 2, scope: !4448, file: !376, line: 1663, type: !5)
!4454 = !DILocalVariable(name: "op", arg: 3, scope: !4448, file: !376, line: 1663, type: !584)
!4455 = !DILocation(line: 0, scope: !4448)
!4456 = !DILocation(line: 1665, column: 3, scope: !4448)
!4457 = !DILocation(line: 1671, column: 3, scope: !4448)
!4458 = !DILocation(line: 1671, column: 22, scope: !4448)
!4459 = !DILocation(line: 1672, column: 1, scope: !4448)
!4460 = distinct !DISubprogram(name: "gimple_has_ops", scope: !376, file: !376, line: 1274, type: !4024, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4461)
!4461 = !{!4462}
!4462 = !DILocalVariable(name: "g", arg: 1, scope: !4460, file: !376, line: 1274, type: !3349)
!4463 = !DILocation(line: 0, scope: !4460)
!4464 = !DILocation(line: 1276, column: 10, scope: !4460)
!4465 = !DILocation(line: 1276, column: 26, scope: !4460)
!4466 = !DILocation(line: 1276, column: 41, scope: !4460)
!4467 = !DILocation(line: 1276, column: 44, scope: !4460)
!4468 = !DILocation(line: 1276, column: 60, scope: !4460)
!4469 = !DILocation(line: 1276, column: 3, scope: !4460)
!4470 = distinct !DISubprogram(name: "gimple_num_ops", scope: !376, file: !376, line: 1596, type: !4180, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4471)
!4471 = !{!4472}
!4472 = !DILocalVariable(name: "gs", arg: 1, scope: !4470, file: !376, line: 1596, type: !3349)
!4473 = !DILocation(line: 0, scope: !4470)
!4474 = !DILocation(line: 1598, column: 21, scope: !4470)
!4475 = !DILocation(line: 1598, column: 3, scope: !4470)
!4476 = distinct !DISubprogram(name: "gimple_ops", scope: !376, file: !376, line: 1614, type: !4477, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!921, !887}
!4479 = !{!4480, !4481}
!4480 = !DILocalVariable(name: "gs", arg: 1, scope: !4476, file: !376, line: 1614, type: !887)
!4481 = !DILocalVariable(name: "off", scope: !4476, file: !376, line: 1616, type: !1032)
!4482 = !DILocation(line: 0, scope: !4476)
!4483 = !DILocation(line: 1621, column: 28, scope: !4476)
!4484 = !DILocation(line: 1621, column: 9, scope: !4476)
!4485 = !DILocation(line: 1622, column: 3, scope: !4476)
!4486 = !DILocation(line: 1624, column: 20, scope: !4476)
!4487 = !DILocation(line: 1624, column: 32, scope: !4476)
!4488 = !DILocation(line: 1624, column: 10, scope: !4476)
!4489 = !DILocation(line: 1624, column: 3, scope: !4476)
!4490 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !376, file: !376, line: 1073, type: !4491, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!424, !887}
!4493 = !{!4494}
!4494 = !DILocalVariable(name: "gs", arg: 1, scope: !4490, file: !376, line: 1073, type: !887)
!4495 = !DILocation(line: 0, scope: !4490)
!4496 = !DILocation(line: 1075, column: 24, scope: !4490)
!4497 = !DILocation(line: 1075, column: 10, scope: !4490)
!4498 = !DILocation(line: 1075, column: 3, scope: !4490)
!4499 = distinct !DISubprogram(name: "gss_for_code", scope: !376, file: !376, line: 1061, type: !4500, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4502)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!424, !375}
!4502 = !{!4503}
!4503 = !DILocalVariable(name: "code", arg: 1, scope: !4499, file: !376, line: 1061, type: !375)
!4504 = !DILocation(line: 0, scope: !4499)
!4505 = !DILocation(line: 1066, column: 10, scope: !4499)
!4506 = !DILocation(line: 1066, column: 3, scope: !4499)
!4507 = distinct !DISubprogram(name: "delink_imm_use", scope: !2446, file: !2446, line: 188, type: !4508, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4510)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !1845}
!4510 = !{!4511}
!4511 = !DILocalVariable(name: "linknode", arg: 1, scope: !4507, file: !2446, line: 188, type: !1845)
!4512 = !DILocation(line: 0, scope: !4507)
!4513 = !DILocation(line: 191, column: 17, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !2446, line: 191, column: 7)
!4515 = !DILocation(line: 191, column: 22, scope: !4514)
!4516 = !DILocation(line: 191, column: 7, scope: !4507)
!4517 = !DILocation(line: 194, column: 36, scope: !4507)
!4518 = !DILocation(line: 194, column: 19, scope: !4507)
!4519 = !DILocation(line: 194, column: 24, scope: !4507)
!4520 = !DILocation(line: 195, column: 36, scope: !4507)
!4521 = !DILocation(line: 195, column: 13, scope: !4507)
!4522 = !DILocation(line: 195, column: 24, scope: !4507)
!4523 = !DILocation(line: 196, column: 18, scope: !4507)
!4524 = !DILocation(line: 197, column: 18, scope: !4507)
!4525 = !DILocation(line: 198, column: 1, scope: !4507)
!4526 = distinct !DISubprogram(name: "link_imm_use", scope: !2446, file: !2446, line: 214, type: !4527, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !1845, !584}
!4529 = !{!4530, !4531, !4532}
!4530 = !DILocalVariable(name: "linknode", arg: 1, scope: !4526, file: !2446, line: 214, type: !1845)
!4531 = !DILocalVariable(name: "def", arg: 2, scope: !4526, file: !2446, line: 214, type: !584)
!4532 = !DILocalVariable(name: "root", scope: !4526, file: !2446, line: 216, type: !1845)
!4533 = !DILocation(line: 0, scope: !4526)
!4534 = !DILocation(line: 218, column: 8, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4526, file: !2446, line: 218, column: 7)
!4536 = !DILocation(line: 218, column: 12, scope: !4535)
!4537 = !DILocation(line: 218, column: 15, scope: !4535)
!4538 = !DILocation(line: 218, column: 31, scope: !4535)
!4539 = !DILocation(line: 218, column: 7, scope: !4526)
!4540 = !DILocation(line: 219, column: 15, scope: !4535)
!4541 = !DILocation(line: 219, column: 20, scope: !4535)
!4542 = !DILocation(line: 219, column: 5, scope: !4535)
!4543 = !DILocation(line: 222, column: 16, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4535, file: !2446, line: 221, column: 5)
!4545 = !DILocation(line: 227, column: 7, scope: !4544)
!4546 = !DILocation(line: 229, column: 1, scope: !4526)
!4547 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2446, file: !2446, line: 202, type: !4548, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !1845, !1845}
!4550 = !{!4551, !4552}
!4551 = !DILocalVariable(name: "linknode", arg: 1, scope: !4547, file: !2446, line: 202, type: !1845)
!4552 = !DILocalVariable(name: "list", arg: 2, scope: !4547, file: !2446, line: 202, type: !1845)
!4553 = !DILocation(line: 0, scope: !4547)
!4554 = !DILocation(line: 206, column: 13, scope: !4547)
!4555 = !DILocation(line: 206, column: 18, scope: !4547)
!4556 = !DILocation(line: 207, column: 26, scope: !4547)
!4557 = !DILocation(line: 207, column: 13, scope: !4547)
!4558 = !DILocation(line: 207, column: 18, scope: !4547)
!4559 = !DILocation(line: 208, column: 9, scope: !4547)
!4560 = !DILocation(line: 208, column: 15, scope: !4547)
!4561 = !DILocation(line: 208, column: 20, scope: !4547)
!4562 = !DILocation(line: 209, column: 14, scope: !4547)
!4563 = !DILocation(line: 210, column: 1, scope: !4547)
!4564 = distinct !DISubprogram(name: "has_zero_uses", scope: !2446, file: !2446, line: 332, type: !3388, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4565)
!4565 = !{!4566, !4567}
!4566 = !DILocalVariable(name: "var", arg: 1, scope: !4564, file: !2446, line: 332, type: !3390)
!4567 = !DILocalVariable(name: "ptr", scope: !4564, file: !2446, line: 334, type: !4568)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!4571 = !DILocation(line: 0, scope: !4564)
!4572 = !DILocation(line: 334, column: 42, scope: !4564)
!4573 = !DILocation(line: 337, column: 19, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4564, file: !2446, line: 337, column: 7)
!4575 = !DILocation(line: 337, column: 11, scope: !4574)
!4576 = !DILocation(line: 337, column: 7, scope: !4564)
!4577 = !DILocation(line: 342, column: 8, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4564, file: !2446, line: 342, column: 7)
!4579 = !DILocation(line: 342, column: 7, scope: !4564)
!4580 = !DILocation(line: 345, column: 10, scope: !4564)
!4581 = !DILocation(line: 345, column: 3, scope: !4564)
!4582 = !DILocation(line: 346, column: 1, scope: !4564)
!4583 = distinct !DISubprogram(name: "remove_gimple_phi_args", scope: !1, file: !1, line: 708, type: !4584, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !887}
!4586 = !{!4587, !4588, !4589, !4602, !4606, !4611}
!4587 = !DILocalVariable(name: "phi", arg: 1, scope: !4583, file: !1, line: 708, type: !887)
!4588 = !DILocalVariable(name: "arg_p", scope: !4583, file: !1, line: 710, type: !1844)
!4589 = !DILocalVariable(name: "iter", scope: !4583, file: !1, line: 711, type: !4590)
!4590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !451, line: 140, baseType: !4591)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !451, line: 131, size: 320, elements: !4592)
!4592 = !{!4593, !4594, !4595, !4597, !4599, !4600, !4601}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4591, file: !451, line: 133, baseType: !459, size: 8)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !4591, file: !451, line: 134, baseType: !450, size: 32, offset: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !4591, file: !451, line: 135, baseType: !4596, size: 64, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !451, line: 42, baseType: !916)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !4591, file: !451, line: 136, baseType: !4598, size: 64, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !451, line: 50, baseType: !923)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !4591, file: !451, line: 137, baseType: !460, size: 32, offset: 192)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !4591, file: !451, line: 138, baseType: !460, size: 32, offset: 224)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !4591, file: !451, line: 139, baseType: !887, size: 64, offset: 256)
!4602 = !DILocalVariable(name: "arg", scope: !4603, file: !1, line: 721, type: !584)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !1, line: 720, column: 5)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !1, line: 719, column: 3)
!4605 = distinct !DILexicalBlock(scope: !4583, file: !1, line: 719, column: 3)
!4606 = !DILocalVariable(name: "stmt", scope: !4607, file: !1, line: 728, type: !887)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 727, column: 6)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !1, line: 726, column: 8)
!4609 = distinct !DILexicalBlock(scope: !4610, file: !1, line: 723, column: 9)
!4610 = distinct !DILexicalBlock(scope: !4603, file: !1, line: 722, column: 11)
!4611 = !DILocalVariable(name: "gsi", scope: !4607, file: !1, line: 729, type: !2583)
!4612 = !DILocation(line: 0, scope: !4583)
!4613 = !DILocation(line: 711, column: 3, scope: !4583)
!4614 = !DILocation(line: 713, column: 7, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4583, file: !1, line: 713, column: 7)
!4616 = !DILocation(line: 713, column: 17, scope: !4615)
!4617 = !DILocation(line: 713, column: 21, scope: !4615)
!4618 = !DILocation(line: 713, column: 32, scope: !4615)
!4619 = !DILocation(line: 713, column: 7, scope: !4583)
!4620 = !DILocation(line: 715, column: 7, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4615, file: !1, line: 714, column: 5)
!4622 = !DILocation(line: 716, column: 26, scope: !4621)
!4623 = !DILocation(line: 716, column: 7, scope: !4621)
!4624 = !DILocation(line: 717, column: 5, scope: !4621)
!4625 = !DILocation(line: 719, column: 3, scope: !4605)
!4626 = !DILocation(line: 0, scope: !4607)
!4627 = !DILocation(line: 0, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 735, column: 3)
!4629 = distinct !DILexicalBlock(scope: !4607, file: !1, line: 734, column: 12)
!4630 = !DILocation(line: 0, scope: !4605)
!4631 = !DILocation(line: 719, column: 3, scope: !4604)
!4632 = !DILocation(line: 721, column: 18, scope: !4603)
!4633 = !DILocation(line: 0, scope: !4603)
!4634 = !DILocation(line: 722, column: 11, scope: !4610)
!4635 = !DILocation(line: 722, column: 27, scope: !4610)
!4636 = !DILocation(line: 722, column: 11, scope: !4603)
!4637 = !DILocation(line: 725, column: 4, scope: !4609)
!4638 = !DILocation(line: 726, column: 8, scope: !4608)
!4639 = !DILocation(line: 726, column: 8, scope: !4609)
!4640 = !DILocation(line: 729, column: 8, scope: !4607)
!4641 = !DILocation(line: 731, column: 15, scope: !4607)
!4642 = !DILocation(line: 734, column: 12, scope: !4629)
!4643 = !DILocation(line: 734, column: 31, scope: !4629)
!4644 = !DILocation(line: 734, column: 12, scope: !4607)
!4645 = !DILocation(line: 736, column: 5, scope: !4628)
!4646 = !DILocation(line: 737, column: 11, scope: !4628)
!4647 = !DILocation(line: 738, column: 5, scope: !4628)
!4648 = !DILocation(line: 739, column: 3, scope: !4628)
!4649 = !DILocation(line: 741, column: 6, scope: !4608)
!4650 = !DILocation(line: 741, column: 6, scope: !4607)
!4651 = distinct !{!4651, !4625, !4652}
!4652 = !DILocation(line: 743, column: 5, scope: !4605)
!4653 = !DILocation(line: 744, column: 1, scope: !4583)
!4654 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !2446, file: !2446, line: 910, type: !4655, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4658)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!1844, !4657, !887, !460}
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4658 = !{!4659, !4660, !4661, !4662, !4663}
!4659 = !DILocalVariable(name: "ptr", arg: 1, scope: !4654, file: !2446, line: 910, type: !4657)
!4660 = !DILocalVariable(name: "phi", arg: 2, scope: !4654, file: !2446, line: 910, type: !887)
!4661 = !DILocalVariable(name: "flags", arg: 3, scope: !4654, file: !2446, line: 910, type: !460)
!4662 = !DILocalVariable(name: "phi_def", scope: !4654, file: !2446, line: 912, type: !584)
!4663 = !DILocalVariable(name: "comp", scope: !4654, file: !2446, line: 913, type: !460)
!4664 = !DILocation(line: 0, scope: !4654)
!4665 = !DILocation(line: 912, column: 18, scope: !4654)
!4666 = !DILocation(line: 915, column: 3, scope: !4654)
!4667 = !DILocation(line: 916, column: 8, scope: !4654)
!4668 = !DILocation(line: 916, column: 13, scope: !4654)
!4669 = !DILocation(line: 920, column: 11, scope: !4654)
!4670 = !DILocation(line: 923, column: 7, scope: !4654)
!4671 = !DILocation(line: 925, column: 17, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !2446, line: 924, column: 5)
!4673 = distinct !DILexicalBlock(scope: !4654, file: !2446, line: 923, column: 7)
!4674 = !DILocation(line: 926, column: 7, scope: !4672)
!4675 = !DILocation(line: 929, column: 8, scope: !4654)
!4676 = !DILocation(line: 929, column: 17, scope: !4654)
!4677 = !DILocation(line: 930, column: 18, scope: !4654)
!4678 = !DILocation(line: 930, column: 8, scope: !4654)
!4679 = !DILocation(line: 930, column: 16, scope: !4654)
!4680 = !DILocation(line: 931, column: 8, scope: !4654)
!4681 = !DILocation(line: 931, column: 18, scope: !4654)
!4682 = !DILocation(line: 932, column: 10, scope: !4654)
!4683 = !DILocation(line: 932, column: 3, scope: !4654)
!4684 = !DILocation(line: 933, column: 1, scope: !4654)
!4685 = distinct !DISubprogram(name: "op_iter_done", scope: !2446, file: !2446, line: 652, type: !4686, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4690)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!459, !4688}
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4690 = !{!4691}
!4691 = !DILocalVariable(name: "ptr", arg: 1, scope: !4685, file: !2446, line: 652, type: !4688)
!4692 = !DILocation(line: 0, scope: !4685)
!4693 = !DILocation(line: 654, column: 15, scope: !4685)
!4694 = !DILocation(line: 654, column: 3, scope: !4685)
!4695 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2446, file: !2446, line: 659, type: !4696, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4698)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!1844, !4657}
!4698 = !{!4699, !4700}
!4699 = !DILocalVariable(name: "ptr", arg: 1, scope: !4695, file: !2446, line: 659, type: !4657)
!4700 = !DILocalVariable(name: "use_p", scope: !4695, file: !2446, line: 661, type: !1844)
!4701 = !DILocation(line: 0, scope: !4695)
!4702 = !DILocation(line: 665, column: 12, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4695, file: !2446, line: 665, column: 7)
!4704 = !DILocation(line: 665, column: 7, scope: !4703)
!4705 = !DILocation(line: 665, column: 7, scope: !4695)
!4706 = !DILocation(line: 667, column: 15, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4703, file: !2446, line: 666, column: 5)
!4708 = !DILocation(line: 668, column: 30, scope: !4707)
!4709 = !DILocation(line: 668, column: 17, scope: !4707)
!4710 = !DILocation(line: 669, column: 7, scope: !4707)
!4711 = !DILocation(line: 671, column: 12, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4695, file: !2446, line: 671, column: 7)
!4713 = !DILocation(line: 671, column: 25, scope: !4712)
!4714 = !DILocation(line: 671, column: 18, scope: !4712)
!4715 = !DILocation(line: 671, column: 7, scope: !4695)
!4716 = !DILocation(line: 673, column: 14, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4712, file: !2446, line: 672, column: 5)
!4718 = !DILocation(line: 673, column: 7, scope: !4717)
!4719 = !DILocation(line: 675, column: 8, scope: !4695)
!4720 = !DILocation(line: 675, column: 13, scope: !4695)
!4721 = !DILocation(line: 676, column: 3, scope: !4695)
!4722 = !DILocation(line: 677, column: 1, scope: !4695)
!4723 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !2446, file: !2446, line: 729, type: !4724, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4726)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4657}
!4726 = !{!4727}
!4727 = !DILocalVariable(name: "ptr", arg: 1, scope: !4723, file: !2446, line: 729, type: !4657)
!4728 = !DILocation(line: 0, scope: !4723)
!4729 = !DILocation(line: 731, column: 8, scope: !4723)
!4730 = !DILocation(line: 731, column: 13, scope: !4723)
!4731 = !DILocation(line: 732, column: 8, scope: !4723)
!4732 = !DILocation(line: 732, column: 13, scope: !4723)
!4733 = !DILocation(line: 733, column: 8, scope: !4723)
!4734 = !DILocation(line: 733, column: 18, scope: !4723)
!4735 = !DILocation(line: 734, column: 8, scope: !4723)
!4736 = !DILocation(line: 734, column: 14, scope: !4723)
!4737 = !DILocation(line: 735, column: 8, scope: !4723)
!4738 = !DILocation(line: 735, column: 16, scope: !4723)
!4739 = !DILocation(line: 736, column: 8, scope: !4723)
!4740 = !DILocation(line: 736, column: 17, scope: !4723)
!4741 = !DILocation(line: 737, column: 8, scope: !4723)
!4742 = !DILocation(line: 737, column: 13, scope: !4723)
!4743 = !DILocation(line: 738, column: 1, scope: !4723)
!4744 = distinct !DISubprogram(name: "rewrite_trees", scope: !1, file: !1, line: 806, type: !4745, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4747)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !1807}
!4747 = !{!4748}
!4748 = !DILocalVariable(name: "map", arg: 1, scope: !4744, file: !1, line: 806, type: !1807)
!4749 = !DILocation(line: 0, scope: !4744)
!4750 = !DILocation(line: 841, column: 1, scope: !4744)
